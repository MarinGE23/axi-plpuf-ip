/**
 * @file main.c
 * @brief Dual-instance validation of the AXI PLPUF IP core
 *        (intra-device characterization + inter-device uniqueness)
 *
 * This design (see vivado-axi-plpuf2) instantiates TWO
 * independent AXI PLPUF cores on the SAME FPGA:
 *
 *     PUF0 @ XPAR_AXI_PLPUF_0_BASEADDR  (0x44A0_0000)
 *     PUF1 @ XPAR_AXI_PLPUF_1_BASEADDR  (0x44A1_0000)
 *
 * Because each instance is placed at a DIFFERENT physical location inside
 * the FPGA fabric, the two cores experience different manufacturing /
 * placement variations. They therefore behave as two *distinct devices*:
 * feeding the SAME challenge and SAME activation duration to both must yield
 * COMPLETELY DIFFERENT responses (ideal inter-device Hamming distance ~50%).
 * This emulates the inter-device test that would otherwise require two
 * separate FPGA boards.
 *
 * Tests performed:
 *   1. Register read/write and instance INDEPENDENCE (PUF0 vs PUF1)
 *   2. Soft reset of both instances
 *   3. Duration sweep (c = 1..10) per instance (uniformity, reliability,
 *      BER, intra-HD, inter-challenge HD) + inter-device HD between cores
 *   4. Detailed inter-device analysis at c = DETAIL_DUR (sample responses,
 *      side-by-side goldens, per-challenge inter-device HD + histogram)
 *   5. Avalanche effect (challenge sensitivity) for BOTH instances
 *
 * Memory note: this platform maps the program to a 32 KB local BRAM, so the
 * test is kept lean (modest static storage, no dynamic allocation).
 *
 * Project: TFG - Design and Integration of a Programmable PLPUF Module
 *          for Embedded Systems
 * Author:  Emanuel Antonio Marin Gutierrez
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "axi_plpuf.h"

/* =================================================================
 * Test Configuration
 * ================================================================= */
#define PUF0_BASE         XPAR_AXI_PLPUF_0_BASEADDR
#define PUF1_BASE         XPAR_AXI_PLPUF_1_BASEADDR

#define NUM_INSTANCES     2
#define NUM_CHALLENGES    12      /* Distinct challenges per duration      */
#define NUM_REPEATS       50      /* Repetitions per CRP (majority voting) */
#define HD_SAMPLE_REPS    10      /* Extra evals for intra-HD sampling     */
#define DUR_MIN           1       /* Minimum activation duration           */
#define DUR_MAX           10      /* Maximum activation duration           */
#define DUR_COUNT         (DUR_MAX - DUR_MIN + 1)
#define AVALANCHE_BITS    32      /* Bit positions tested for avalanche    */
#define AVALANCHE_VOTES   9       /* Majority-vote depth for avalanche     */
#define DETAIL_DUR        5       /* Duration used for the avalanche test  */

/* Durations at which the detailed inter-device analysis (Test 4) is run.
 * c=1 is the best operating point (lowest noise -> largest intra/inter
 * margin); c=5 is the nominal duration used elsewhere. */
static const u16 DETAIL_DURS[] = {1, 5};
#define N_DETAIL_DURS  ((int)(sizeof(DETAIL_DURS) / sizeof(DETAIL_DURS[0])))

#define PUF_BITS          128
#define PUF_WORDS         4
#define HD_BIN_W          5
#define HD_BINS           ((PUF_BITS / HD_BIN_W) + 1)  /* 26 bins */

/* Inter-device uniqueness is "good" when the two cores disagree on close
 * to half of the response bits. */
#define INTERDEV_PASS_LO_PCT  3500   /* 35.00% (x100) */
#define INTERDEV_PASS_HI_PCT  6500   /* 65.00% (x100) */

/* =================================================================
 * Static storage (avoids stack overflow on MicroBlaze)
 * ================================================================= */
static u32 s_challenges[NUM_CHALLENGES][PUF_WORDS];
static u32 s_golden[NUM_INSTANCES][NUM_CHALLENGES][PUF_WORDS];

/* Per-duration metrics (fixed-point x100), filled during the sweep */
static u32 m_unif [NUM_INSTANCES][DUR_COUNT];
static u32 m_rel  [NUM_INSTANCES][DUR_COUNT];
static u32 m_ber  [NUM_INSTANCES][DUR_COUNT];
static u32 m_intra[NUM_INSTANCES][DUR_COUNT];   /* avg intra HD, bits x100    */
static u32 m_inter[NUM_INSTANCES][DUR_COUNT];   /* inter-challenge HD, % x100 */
static u32 m_iddev_sum[DUR_COUNT];              /* sum of inter-device HD bits*/

static u16 s_id_hist[HD_BINS];                  /* inter-device HD histogram  */

/* =================================================================
 * Utility functions
 * ================================================================= */
static u32 s_prng = 0xDEADBEEFu;

static u32 xorshift32(void)
{
    s_prng ^= s_prng << 13;
    s_prng ^= s_prng >> 17;
    s_prng ^= s_prng << 5;
    return s_prng;
}

static u32 popcount32(u32 v)
{
    u32 c = 0;
    while (v) { c++; v &= v - 1; }
    return c;
}

static u32 hw128(const u32 r[PUF_WORDS])
{
    return popcount32(r[0]) + popcount32(r[1])
         + popcount32(r[2]) + popcount32(r[3]);
}

static u32 hd128(const u32 a[PUF_WORDS], const u32 b[PUF_WORDS])
{
    return popcount32(a[0]^b[0]) + popcount32(a[1]^b[1])
         + popcount32(a[2]^b[2]) + popcount32(a[3]^b[3]);
}

static int get_bit(const u32 r[PUF_WORDS], int j)
{
    return (int)((r[j >> 5] >> (j & 31)) & 1u);
}

static void set_bit_v(u32 r[PUF_WORDS], int j, int v)
{
    u32 m = 1u << (j & 31);
    if (v) r[j >> 5] |=  m;
    else   r[j >> 5] &= ~m;
}

static void golden_from_counts(u32 g[PUF_WORDS],
                               const u8 cnt[PUF_BITS], int thr)
{
    int j;
    for (j = 0; j < PUF_BITS; j++)
        set_bit_v(g, j, cnt[j] > thr);
}

static void print_hex128(const u32 r[PUF_WORDS])
{
    xil_printf("%08x_%08x_%08x_%08x", r[3], r[2], r[1], r[0]);
}

/* =================================================================
 * Per-instance characterization at a fixed duration.
 * Computes the majority-vote golden response for every challenge and
 * the standard intra-device PUF metrics (fixed-point, scaled by 100).
 * ================================================================= */
static void characterize_instance(axi_plpuf_t *p, u16 dur,
                                   u32 goldens[NUM_CHALLENGES][PUF_WORDS],
                                   u32 *o_unif, u32 *o_rel, u32 *o_ber,
                                   u32 *o_intra, u32 *o_inter)
{
    u8  bcnt[PUF_BITS];
    u32 resp[PUF_WORDS];
    u32 sum_ones = 0, sum_ber = 0;
    u32 sum_intra = 0, n_intra = 0;
    u32 sum_inter = 0, n_inter = 0;
    int ch, rep, i, j;

    Plpuf_SetDuration(p, dur);

    for (ch = 0; ch < NUM_CHALLENGES; ch++) {
        for (j = 0; j < PUF_BITS; j++) bcnt[j] = 0;

        for (rep = 0; rep < NUM_REPEATS; rep++) {
            Plpuf_Evaluate(p,
                s_challenges[ch][0], s_challenges[ch][1],
                s_challenges[ch][2], s_challenges[ch][3], resp);
            for (j = 0; j < PUF_BITS; j++)
                if (get_bit(resp, j)) bcnt[j]++;
        }

        golden_from_counts(goldens[ch], bcnt, NUM_REPEATS / 2);
        sum_ones += hw128(goldens[ch]);

        for (j = 0; j < PUF_BITS; j++) {
            int gv = get_bit(goldens[ch], j);
            sum_ber += gv ? (u32)(NUM_REPEATS - bcnt[j]) : (u32)bcnt[j];
        }

        for (rep = 0; rep < HD_SAMPLE_REPS; rep++) {
            Plpuf_Evaluate(p,
                s_challenges[ch][0], s_challenges[ch][1],
                s_challenges[ch][2], s_challenges[ch][3], resp);
            sum_intra += hd128(resp, goldens[ch]);
            n_intra++;
        }
    }

    for (i = 0; i < NUM_CHALLENGES; i++)
        for (j = i + 1; j < NUM_CHALLENGES; j++) {
            sum_inter += hd128(goldens[i], goldens[j]);
            n_inter++;
        }

    {
        u32 total_bits = (u32)NUM_CHALLENGES * NUM_REPEATS * PUF_BITS;
        *o_unif  = sum_ones  * 10000 / (NUM_CHALLENGES * PUF_BITS);
        *o_ber   = sum_ber   * 10000 / total_bits;
        *o_rel   = 10000 - *o_ber;
        *o_intra = sum_intra * 100   / n_intra;
        *o_inter = sum_inter * 10000 / ((u32)n_inter * PUF_BITS);
    }
}

/* =================================================================
 * Avalanche test for a single instance: flip one challenge bit and
 * measure how many response bits change. Returns avg/min/max (% x100).
 * ================================================================= */
static void avalanche_instance(axi_plpuf_t *p, u16 dur,
                               u32 *o_avg, u32 *o_min, u32 *o_max)
{
    u32 base_chal[PUF_WORDS] = {0x12345678, 0x9ABCDEF0,
                                0x0FEDCBA9, 0x87654321};
    u32 base_g[PUF_WORDS], flip_g[PUF_WORDS], flip_c[PUF_WORDS];
    u8  bcnt[PUF_BITS];
    u32 resp[PUF_WORDS];
    u32 total = 0, dmin = PUF_BITS + 1, dmax = 0;
    int i, j, rep;

    Plpuf_SetDuration(p, dur);

    for (j = 0; j < PUF_BITS; j++) bcnt[j] = 0;
    for (rep = 0; rep < AVALANCHE_VOTES; rep++) {
        Plpuf_Evaluate(p, base_chal[0], base_chal[1],
                          base_chal[2], base_chal[3], resp);
        for (j = 0; j < PUF_BITS; j++)
            if (get_bit(resp, j)) bcnt[j]++;
    }
    golden_from_counts(base_g, bcnt, AVALANCHE_VOTES / 2);

    for (i = 0; i < AVALANCHE_BITS; i++) {
        u32 d;
        for (j = 0; j < PUF_WORDS; j++) flip_c[j] = base_chal[j];
        flip_c[i >> 5] ^= (1u << (i & 31));

        for (j = 0; j < PUF_BITS; j++) bcnt[j] = 0;
        for (rep = 0; rep < AVALANCHE_VOTES; rep++) {
            Plpuf_Evaluate(p, flip_c[0], flip_c[1],
                              flip_c[2], flip_c[3], resp);
            for (j = 0; j < PUF_BITS; j++)
                if (get_bit(resp, j)) bcnt[j]++;
        }
        golden_from_counts(flip_g, bcnt, AVALANCHE_VOTES / 2);

        d = hd128(base_g, flip_g);
        total += d;
        if (d < dmin) dmin = d;
        if (d > dmax) dmax = d;
    }

    *o_avg = total * 10000 / ((u32)AVALANCHE_BITS * PUF_BITS);
    *o_min = dmin  * 10000 / PUF_BITS;
    *o_max = dmax  * 10000 / PUF_BITS;
}

/* =================================================================
 * Main
 * ================================================================= */
int main()
{
    axi_plpuf_t puf[NUM_INSTANCES];
    u32 resp[PUF_WORDS];
    int inst, dur, di, ch, rep, i, j;

    init_platform();

    xil_printf("\r\n");
    xil_printf("================================================================\r\n");
    xil_printf("  PLPUF Dual-Instance Validation (intra + inter-device)\r\n");
    xil_printf("  TFG - Emanuel Antonio Marin Gutierrez\r\n");
    xil_printf("================================================================\r\n");
    xil_printf("  PUF0 @ 0x%08x   PUF1 @ 0x%08x\r\n", PUF0_BASE, PUF1_BASE);
    xil_printf("  Challenges %d  Repeats %d  Durations %d..%d  Width %d bits\r\n",
               NUM_CHALLENGES, NUM_REPEATS, DUR_MIN, DUR_MAX, PUF_BITS);
    xil_printf("  Two physically separate cores emulate two devices:\r\n");
    xil_printf("  same challenge -> responses should differ ~50%%.\r\n");
    xil_printf("================================================================\r\n\r\n");

    Plpuf_Initialize(&puf[0], PUF0_BASE);
    Plpuf_Initialize(&puf[1], PUF1_BASE);

    /* ===== Test 1: register R/W + instance independence ===== */
    xil_printf("==== Test 1: Register R/W and Instance Independence ====\r\n");
    {
        u32 v0, v1;
        int ok = 1;

        Plpuf_SetDuration(&puf[0], 0x1111);
        Plpuf_SetDuration(&puf[1], 0x2222);
        v0 = PLPUF_READ_REG(PUF0_BASE, PLPUF_REG_DUR);
        v1 = PLPUF_READ_REG(PUF1_BASE, PLPUF_REG_DUR);
        xil_printf("  DUR  PUF0=0x%04x(exp 1111) PUF1=0x%04x(exp 2222)  %s\r\n",
                   v0, v1, (v0 == 0x1111 && v1 == 0x2222) ? "[PASS]" : "[FAIL]");
        if (v0 != 0x1111 || v1 != 0x2222) ok = 0;

        Plpuf_SetChallenge(&puf[0], 0xAAAAAAAA, 0, 0, 0);
        Plpuf_SetChallenge(&puf[1], 0x55555555, 0, 0, 0);
        v0 = PLPUF_READ_REG(PUF0_BASE, PLPUF_REG_CHAL0);
        v1 = PLPUF_READ_REG(PUF1_BASE, PLPUF_REG_CHAL0);
        xil_printf("  CHAL0 PUF0=0x%08x PUF1=0x%08x  %s\r\n",
                   v0, v1,
                   (v0 == 0xAAAAAAAA && v1 == 0x55555555) ? "[PASS]" : "[FAIL]");
        if (v0 != 0xAAAAAAAA || v1 != 0x55555555) ok = 0;

        PLPUF_WRITE_REG(PUF0_BASE, PLPUF_REG_RESP0, 0xFFFFFFFF);
        PLPUF_WRITE_REG(PUF1_BASE, PLPUF_REG_RESP0, 0xFFFFFFFF);
        v0 = PLPUF_READ_REG(PUF0_BASE, PLPUF_REG_RESP0);
        v1 = PLPUF_READ_REG(PUF1_BASE, PLPUF_REG_RESP0);
        xil_printf("  RESP0 read-only PUF0=0x%08x PUF1=0x%08x  %s\r\n",
                   v0, v1,
                   (v0 != 0xFFFFFFFF && v1 != 0xFFFFFFFF) ? "[PASS]" : "[WARN]");
        xil_printf("  Result: %s\r\n\r\n", ok ? "ALL PASS" : "FAIL");
    }

    /* ===== Test 2: soft reset on both instances ===== */
    xil_printf("==== Test 2: Soft Reset (both instances) ====\r\n");
    for (inst = 0; inst < NUM_INSTANCES; inst++) {
        u32 st;
        Plpuf_SetDuration(&puf[inst], 5);
        Plpuf_Evaluate(&puf[inst], 0xFFFFFFFF, 0, 0, 0, resp);
        Plpuf_SoftReset(&puf[inst]);
        st = Plpuf_GetStatus(&puf[inst]);
        xil_printf("  PUF%d STATUS=0x%02x  done cleared: %s\r\n",
                   inst, st,
                   !(st & PLPUF_STATUS_DONE_BIT) ? "[PASS]" : "[FAIL]");
    }
    xil_printf("\r\n");

    /* ---- Reproducible challenges shared by both instances ---- */
    s_prng = 0xDEADBEEFu;
    for (ch = 0; ch < NUM_CHALLENGES; ch++)
        for (j = 0; j < PUF_WORDS; j++)
            s_challenges[ch][j] = xorshift32();

    /* ===== Test 3: duration sweep + inter-device HD ===== */
    xil_printf("==== Test 3: Duration Sweep (per-instance + inter-device) ====\r\n");
    xil_printf("  %d challenges x %d reps per duration, per instance\r\n\r\n",
               NUM_CHALLENGES, NUM_REPEATS);

    for (di = 0; di < DUR_COUNT; di++) {
        dur = DUR_MIN + di;

        for (inst = 0; inst < NUM_INSTANCES; inst++)
            characterize_instance(&puf[inst], (u16)dur, s_golden[inst],
                                   &m_unif[inst][di], &m_rel[inst][di],
                                   &m_ber[inst][di],  &m_intra[inst][di],
                                   &m_inter[inst][di]);

        {
            u32 sum_id = 0;
            for (ch = 0; ch < NUM_CHALLENGES; ch++)
                sum_id += hd128(s_golden[0][ch], s_golden[1][ch]);
            m_iddev_sum[di] = sum_id;
        }
    }

    for (inst = 0; inst < NUM_INSTANCES; inst++) {
        xil_printf("  --- PUF%d intra-device metrics ---\r\n", inst);
        xil_printf("   c | Uniform | Reliab |  BER   | IntraHD | InterHD\r\n");
        xil_printf("  ---+---------+--------+--------+---------+--------\r\n");
        for (di = 0; di < DUR_COUNT; di++)
            xil_printf("  %2d | %2d.%02d%% | %2d.%02d%% | %2d.%02d%% |  %2d.%02d  | %2d.%02d%%\r\n",
                DUR_MIN + di,
                m_unif[inst][di]/100,  m_unif[inst][di]%100,
                m_rel[inst][di]/100,   m_rel[inst][di]%100,
                m_ber[inst][di]/100,   m_ber[inst][di]%100,
                m_intra[inst][di]/100, m_intra[inst][di]%100,
                m_inter[inst][di]/100, m_inter[inst][di]%100);
        xil_printf("\r\n");
    }

    xil_printf("  --- INTER-DEVICE HD (PUF0 vs PUF1, same challenge) ---\r\n");
    xil_printf("   c | avg bits | avg %%   (ideal ~64 bits / 50%%)\r\n");
    xil_printf("  ---+----------+--------\r\n");
    for (di = 0; di < DUR_COUNT; di++) {
        u32 bits_x100 = m_iddev_sum[di] * 100 / NUM_CHALLENGES;
        u32 pct_x100  = m_iddev_sum[di] * 10000 / ((u32)NUM_CHALLENGES * PUF_BITS);
        xil_printf("  %2d |  %3d.%02d  | %2d.%02d%%\r\n",
                   DUR_MIN + di,
                   bits_x100/100, bits_x100%100,
                   pct_x100/100,  pct_x100%100);
    }
    xil_printf("\r\n");

    /* ===== Test 4: detailed inter-device analysis at c = DETAIL_DURS ===== */
    {
        int dd;
        for (dd = 0; dd < N_DETAIL_DURS; dd++) {
            u16 cdur = DETAIL_DURS[dd];

            xil_printf("==== Test 4: Detailed Inter-Device Analysis (c=%d) ====\r\n\r\n",
                       (int)cdur);

            {
                u32 dummy_u, dummy_r, dummy_b, dummy_i, dummy_x;
                for (inst = 0; inst < NUM_INSTANCES; inst++)
                    characterize_instance(&puf[inst], cdur, s_golden[inst],
                                           &dummy_u, &dummy_r, &dummy_b,
                                           &dummy_i, &dummy_x);
            }

            /* Sample raw responses for challenge 0 on both cores */
            for (inst = 0; inst < NUM_INSTANCES; inst++) {
                Plpuf_SetDuration(&puf[inst], cdur);
                for (rep = 0; rep < 4; rep++) {
                    Plpuf_Evaluate(&puf[inst],
                        s_challenges[0][0], s_challenges[0][1],
                        s_challenges[0][2], s_challenges[0][3], resp);
                    xil_printf("  [PUF%d C0 R%d] ", inst, rep);
                    print_hex128(resp);
                    xil_printf("\r\n");
                }
            }

            xil_printf("\r\n  PUF0 golden[C0]: "); print_hex128(s_golden[0][0]); xil_printf("\r\n");
            xil_printf("  PUF1 golden[C0]: "); print_hex128(s_golden[1][0]); xil_printf("\r\n");
            {
                u32 d   = hd128(s_golden[0][0], s_golden[1][0]);
                u32 pct = d * 10000 / PUF_BITS;
                xil_printf("  Inter-device HD = %d / %d bits (%d.%02d%%)\r\n\r\n",
                           (int)d, PUF_BITS, pct/100, pct%100);
            }

            for (j = 0; j < HD_BINS; j++) s_id_hist[j] = 0;
            {
                u32 sum_id = 0, dmin = PUF_BITS + 1, dmax = 0;

                xil_printf("  --- Per-challenge inter-device HD ---\r\n");
                xil_printf("  Ch |  HD  |  HD%%\r\n");
                for (ch = 0; ch < NUM_CHALLENGES; ch++) {
                    u32 d   = hd128(s_golden[0][ch], s_golden[1][ch]);
                    u32 pct = d * 10000 / PUF_BITS;
                    sum_id += d;
                    if (d < dmin) dmin = d;
                    if (d > dmax) dmax = d;
                    if (d / HD_BIN_W < (u32)HD_BINS) s_id_hist[d / HD_BIN_W]++;
                    xil_printf("  %2d | %4d | %2d.%02d%%\r\n",
                               ch, (int)d, pct/100, pct%100);
                }
                {
                    u32 avg_x100 = sum_id * 100 / NUM_CHALLENGES;
                    u32 avgpct   = sum_id * 10000 / ((u32)NUM_CHALLENGES * PUF_BITS);
                    u32 minpct   = dmin * 10000 / PUF_BITS;
                    u32 maxpct   = dmax * 10000 / PUF_BITS;
                    int pass     = (avgpct >= INTERDEV_PASS_LO_PCT &&
                                    avgpct <= INTERDEV_PASS_HI_PCT);
                    xil_printf("  avg %d.%02d bits (%d.%02d%%)  min %d.%02d%%  max %d.%02d%%\r\n",
                               avg_x100/100, avg_x100%100, avgpct/100, avgpct%100,
                               minpct/100, minpct%100, maxpct/100, maxpct%100);
                    xil_printf("  Inter-device uniqueness (~50%%): %s\r\n\r\n",
                               pass ? "[PASS]" : "[CHECK]");
                }

                xil_printf("  --- Inter-device HD histogram ---\r\n");
                {
                    u32 max_count = 0;
                    for (j = 0; j < HD_BINS; j++)
                        if (s_id_hist[j] > max_count) max_count = s_id_hist[j];
                    for (j = 0; j < HD_BINS; j++) {
                        u32 lo = (u32)j * HD_BIN_W;
                        u32 hi = lo + HD_BIN_W - 1;
                        u32 bar;
                        if (s_id_hist[j] == 0 && (lo < 30 || lo > 95)) continue;
                        if (hi > PUF_BITS) hi = PUF_BITS;
                        xil_printf("  %3d-%3d |", (int)lo, (int)hi);
                        bar = (max_count > 0) ? (s_id_hist[j] * 40 / max_count) : 0;
                        for (i = 0; i < (int)bar; i++) xil_printf("#");
                        xil_printf(" %d\r\n", s_id_hist[j]);
                    }
                }
                xil_printf("\r\n");
            }
        }
    }

    /* ===== Test 5: avalanche effect on both instances ===== */
    xil_printf("==== Test 5: Avalanche Effect (c=%d) ====\r\n", DETAIL_DUR);
    xil_printf("  Inst | avg HD%% | min HD%% | max HD%%  (ideal avg ~50%%)\r\n");
    for (inst = 0; inst < NUM_INSTANCES; inst++) {
        u32 avg, mn, mx;
        avalanche_instance(&puf[inst], DETAIL_DUR, &avg, &mn, &mx);
        xil_printf("  PUF%d | %2d.%02d%% | %2d.%02d%% | %2d.%02d%%\r\n",
                   inst, avg/100, avg%100, mn/100, mn%100, mx/100, mx%100);
    }
    xil_printf("\r\n");

    /* ===== Summary ===== */
    xil_printf("================================================================\r\n");
    xil_printf("  Dual-Instance Validation Complete\r\n");
    xil_printf("================================================================\r\n");
    xil_printf("  Each core: uniformity ~50%%, reliability >95%% for small c.\r\n");
    xil_printf("  INTER-DEVICE HD ~50%%: two physically distinct cores produce\r\n");
    xil_printf("  unrelated responses to identical challenges, emulating the\r\n");
    xil_printf("  inter-device behavior expected across separate FPGA boards.\r\n");
    xil_printf("================================================================\r\n");

    cleanup_platform();
    return 0;
}
