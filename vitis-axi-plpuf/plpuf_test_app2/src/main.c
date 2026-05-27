/**
 * @file main.c
 * @brief Exhaustive intra-device validation of the AXI PLPUF IP core
 *
 * Performs a comprehensive single-FPGA evaluation following standard PUF
 * metrics from the literature (DAC-LBR, DPReF, Pseudo-LFSR PUF papers).
 *
 * Tests performed:
 *   1. Register read/write and read-only verification
 *   2. Soft reset functionality
 *   3. Duration sweep (c = 1..10): uniformity, reliability, BER,
 *      intra-device HD, inter-challenge HD
 *   4. Detailed analysis at c = 5: sample responses, bit stability
 *      map, intra-HD histogram
 *   5. Avalanche effect: single-bit challenge sensitivity
 *
 * All metrics are computed on-device and printed via UART.
 * For inter-device (multi-FPGA) evaluation, run this same test on
 * additional boards and compare golden responses offline.
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
 *
 * Adjust these to trade off thoroughness vs. execution time.
 * Current settings yield ~14 000 PLPUF evaluations.
 * ================================================================= */
#define PLPUF_BASE        XPAR_AXI_PLPUF_0_BASEADDR

#define NUM_CHALLENGES    20      /* Distinct challenges per duration      */
#define NUM_REPEATS       50      /* Repetitions per CRP (majority voting) */
#define HD_SAMPLE_REPS    10      /* Extra evals for HD distribution       */
#define DUR_MIN           1       /* Minimum activation duration           */
#define DUR_MAX           10      /* Maximum activation duration           */
#define AVALANCHE_BITS    32      /* Bit positions tested for avalanche    */
#define AVALANCHE_VOTES   9       /* Majority-vote depth for avalanche     */
#define DETAIL_DUR        5       /* Duration used for detailed analysis   */

#define PUF_BITS          128
#define PUF_WORDS         4
#define HD_BIN_W          5       /* Histogram bin width                   */
#define HD_BINS           ((PUF_BITS / HD_BIN_W) + 1)  /* 26 bins        */

/* =================================================================
 * Static storage (avoids stack overflow on MicroBlaze)
 * ================================================================= */
static u32 s_challenges[NUM_CHALLENGES][PUF_WORDS];
static u32 s_golden[NUM_CHALLENGES][PUF_WORDS];
static u16 s_bit_errors[PUF_BITS];
static u16 s_hd_hist[HD_BINS];

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
 * Main
 * ================================================================= */
int main()
{
    axi_plpuf_t puf;
    u32 resp[PUF_WORDS];
    u8  bcnt[PUF_BITS];
    int dur, ch, rep, i, j;

    init_platform();

    /* ---- Banner ---- */
    xil_printf("\r\n");
    xil_printf("================================================================\r\n");
    xil_printf("  PLPUF Exhaustive Intra-Device Validation\r\n");
    xil_printf("  TFG - Emanuel Antonio Marin Gutierrez\r\n");
    xil_printf("================================================================\r\n");
    xil_printf("  Challenges : %d\r\n", NUM_CHALLENGES);
    xil_printf("  Repetitions: %d\r\n", NUM_REPEATS);
    xil_printf("  Durations  : c = %d .. %d\r\n", DUR_MIN, DUR_MAX);
    xil_printf("  PUF width  : %d bits\r\n", PUF_BITS);
    xil_printf("================================================================\r\n\r\n");

    Plpuf_Initialize(&puf, PLPUF_BASE);
    xil_printf("[INIT] Base = 0x%08x\r\n\r\n", PLPUF_BASE);

    /* ==============================================================
     * TEST 1 : Register read/write verification
     * ============================================================== */
    xil_printf("==== Test 1: Register Read/Write ====\r\n");
    {
        u32 v;
        int ok = 1;

        Plpuf_SetDuration(&puf, 12345);
        v = PLPUF_READ_REG(PLPUF_BASE, PLPUF_REG_DUR);
        xil_printf("  DURATION  wrote 12345  read %u  %s\r\n",
                   (unsigned)v, v == 12345 ? "[PASS]" : "[FAIL]");
        if (v != 12345) ok = 0;

        Plpuf_SetChallenge(&puf, 0xDEADBEEF, 0xCAFEBABE,
                                  0x12345678, 0x9ABCDEF0);
        v = PLPUF_READ_REG(PLPUF_BASE, PLPUF_REG_CHAL0);
        xil_printf("  CHAL_0    wrote 0xDEADBEEF  read 0x%08x  %s\r\n",
                   v, v == 0xDEADBEEF ? "[PASS]" : "[FAIL]");
        if (v != 0xDEADBEEF) ok = 0;

        v = PLPUF_READ_REG(PLPUF_BASE, PLPUF_REG_CHAL3);
        xil_printf("  CHAL_3    wrote 0x9ABCDEF0  read 0x%08x  %s\r\n",
                   v, v == 0x9ABCDEF0 ? "[PASS]" : "[FAIL]");
        if (v != 0x9ABCDEF0) ok = 0;

        PLPUF_WRITE_REG(PLPUF_BASE, PLPUF_REG_RESP0, 0xFFFFFFFF);
        v = PLPUF_READ_REG(PLPUF_BASE, PLPUF_REG_RESP0);
        xil_printf("  RESP_0    wrote 0xFFFFFFFF  read 0x%08x  %s\r\n",
                   v, v != 0xFFFFFFFF ? "[PASS read-only]" : "[WARN]");

        xil_printf("  Result: %s\r\n\r\n", ok ? "ALL PASS" : "FAIL");
    }

    /* ==============================================================
     * TEST 2 : Soft reset
     * ============================================================== */
    xil_printf("==== Test 2: Soft Reset ====\r\n");
    {
        u32 st;
        Plpuf_SetDuration(&puf, 5);
        Plpuf_Evaluate(&puf, 0xFFFFFFFF, 0, 0, 0, resp);
        st = Plpuf_GetStatus(&puf);
        xil_printf("  After eval : STATUS=0x%02x  busy=%d done=%d\r\n",
                   st, st & 1, (st >> 1) & 1);

        Plpuf_SoftReset(&puf);
        st = Plpuf_GetStatus(&puf);
        xil_printf("  After reset: STATUS=0x%02x  busy=%d done=%d\r\n",
                   st, st & 1, (st >> 1) & 1);
        xil_printf("  Done cleared: %s\r\n\r\n",
                   !(st & PLPUF_STATUS_DONE_BIT) ? "[PASS]" : "[FAIL]");
    }

    /* ---- Generate reproducible challenges ---- */
    s_prng = 0xDEADBEEFu;
    for (ch = 0; ch < NUM_CHALLENGES; ch++)
        for (j = 0; j < PUF_WORDS; j++)
            s_challenges[ch][j] = xorshift32();

    /* ==============================================================
     * TEST 3 : Duration sweep
     *
     * For each activation duration c, compute:
     *   - Uniformity     (ideal 50 %)
     *   - Reliability     (ideal 100 %)
     *   - BER             (ideal 0 %)
     *   - Avg intra-HD    (ideal 0 bits)
     *   - Avg inter-HD    (ideal 50 % = 64 bits)
     * ============================================================== */
    xil_printf("==== Test 3: Duration Sweep ====\r\n");
    xil_printf("  %d challenges x %d reps per duration\r\n\r\n",
               NUM_CHALLENGES, NUM_REPEATS);
    xil_printf("   c | Uniform. | Reliab.  |  BER    | IntraHD  | InterHD\r\n");
    xil_printf("  ---+----------+----------+---------+----------+----------\r\n");

    for (dur = DUR_MIN; dur <= DUR_MAX; dur++) {
        u32 sum_ones = 0, sum_ber = 0;
        u32 sum_intra = 0, n_intra = 0;
        u32 sum_inter = 0, n_inter = 0;

        Plpuf_SetDuration(&puf, (u16)dur);

        /* ---- Phase 1: majority voting + BER ---- */
        for (ch = 0; ch < NUM_CHALLENGES; ch++) {
            for (j = 0; j < PUF_BITS; j++) bcnt[j] = 0;

            for (rep = 0; rep < NUM_REPEATS; rep++) {
                Plpuf_Evaluate(&puf,
                    s_challenges[ch][0], s_challenges[ch][1],
                    s_challenges[ch][2], s_challenges[ch][3], resp);
                for (j = 0; j < PUF_BITS; j++)
                    if (get_bit(resp, j)) bcnt[j]++;
            }

            golden_from_counts(s_golden[ch], bcnt, NUM_REPEATS / 2);
            sum_ones += hw128(s_golden[ch]);

            for (j = 0; j < PUF_BITS; j++) {
                int gv = get_bit(s_golden[ch], j);
                sum_ber += gv ? (u32)(NUM_REPEATS - bcnt[j])
                              : (u32)bcnt[j];
            }

            /* Phase 2: fresh evals for intra-HD sampling */
            for (rep = 0; rep < HD_SAMPLE_REPS; rep++) {
                Plpuf_Evaluate(&puf,
                    s_challenges[ch][0], s_challenges[ch][1],
                    s_challenges[ch][2], s_challenges[ch][3], resp);
                sum_intra += hd128(resp, s_golden[ch]);
                n_intra++;
            }
        }

        /* Inter-challenge HD (all pairs of golden responses) */
        for (i = 0; i < NUM_CHALLENGES; i++)
            for (j = i + 1; j < NUM_CHALLENGES; j++) {
                sum_inter += hd128(s_golden[i], s_golden[j]);
                n_inter++;
            }

        /* Compute metrics (fixed-point ×100 for 2-decimal printing) */
        {
            u32 total_bits = (u32)NUM_CHALLENGES * NUM_REPEATS * PUF_BITS;
            u32 unif  = sum_ones  * 10000 / (NUM_CHALLENGES * PUF_BITS);
            u32 ber   = sum_ber   * 10000 / total_bits;
            u32 rel   = 10000 - ber;
            u32 intra = sum_intra * 100 / n_intra;
            u32 inter = sum_inter * 100 / n_inter;
            u32 ipct  = sum_inter * 10000 / ((u32)n_inter * PUF_BITS);

            xil_printf("  %2d |  %2d.%02d%%  |  %2d.%02d%%  | %2d.%02d%% "
                       "|  %2d.%02d   | %2d.%02d (%2d.%02d%%)\r\n",
                dur,
                unif/100, unif%100,
                rel/100,  rel%100,
                ber/100,  ber%100,
                intra/100, intra%100,
                inter/100, inter%100,
                ipct/100,  ipct%100);
        }
    }
    xil_printf("\r\n");
    xil_printf("  Uniformity : %% of 1s in golden response (ideal 50%%)\r\n");
    xil_printf("  Reliability: 1 - BER (ideal 100%%)\r\n");
    xil_printf("  BER        : avg bit-flip rate vs golden (ideal 0%%)\r\n");
    xil_printf("  IntraHD    : avg HD of fresh eval vs golden (ideal 0)\r\n");
    xil_printf("  InterHD    : avg HD between different challenges' "
               "golden (ideal 50%%)\r\n\r\n");

    /* ==============================================================
     * TEST 4 : Detailed analysis at c = DETAIL_DUR
     *
     *   a) Sample raw responses for one challenge
     *   b) Bit stability map (per-bit reliability)
     *   c) Intra-HD histogram
     * ============================================================== */
    xil_printf("==== Test 4: Detailed Analysis at c = %d ====\r\n\r\n",
               DETAIL_DUR);

    Plpuf_SetDuration(&puf, DETAIL_DUR);

    /* Clear accumulators */
    for (j = 0; j < PUF_BITS; j++) s_bit_errors[j] = 0;
    for (j = 0; j < HD_BINS; j++)  s_hd_hist[j] = 0;

    for (ch = 0; ch < NUM_CHALLENGES; ch++) {
        for (j = 0; j < PUF_BITS; j++) bcnt[j] = 0;

        for (rep = 0; rep < NUM_REPEATS; rep++) {
            Plpuf_Evaluate(&puf,
                s_challenges[ch][0], s_challenges[ch][1],
                s_challenges[ch][2], s_challenges[ch][3], resp);

            for (j = 0; j < PUF_BITS; j++)
                if (get_bit(resp, j)) bcnt[j]++;

            /* Print raw responses for first challenge */
            if (ch == 0) {
                xil_printf("  [C0 R%02d] ", rep);
                print_hex128(resp);
                xil_printf("\r\n");
            }
        }

        golden_from_counts(s_golden[ch], bcnt, NUM_REPEATS / 2);

        /* Per-bit error accumulation */
        for (j = 0; j < PUF_BITS; j++) {
            int gv = get_bit(s_golden[ch], j);
            s_bit_errors[j] += (u16)(gv ? (NUM_REPEATS - bcnt[j])
                                        : bcnt[j]);
        }

        /* HD histogram: fresh evaluations */
        for (rep = 0; rep < HD_SAMPLE_REPS; rep++) {
            u32 d;
            Plpuf_Evaluate(&puf,
                s_challenges[ch][0], s_challenges[ch][1],
                s_challenges[ch][2], s_challenges[ch][3], resp);
            d = hd128(resp, s_golden[ch]);
            if (d / HD_BIN_W < (u32)HD_BINS)
                s_hd_hist[d / HD_BIN_W]++;
        }
    }

    /* Golden response for challenge 0 */
    xil_printf("\r\n  Golden[C0]: ");
    print_hex128(s_golden[0]);
    xil_printf("  (majority vote of %d evals)\r\n\r\n", NUM_REPEATS);

    /* ---- 4b: Bit stability map ---- */
    {
        u32 total = (u32)NUM_CHALLENGES * NUM_REPEATS;
        u32 stable = 0, noisy = 0;

        xil_printf("  --- Bit Stability Map ---\r\n");
        xil_printf("  Per-bit reliability grade (9=stable, 0=noisy):\r\n\r\n");

        for (j = 0; j < PUF_BITS; j++) {
            u32 errs = s_bit_errors[j];
            u32 rel_pct = (total - errs) * 100 / total;
            int grade = (int)(rel_pct - 50) * 9 / 50;

            if (grade < 0) grade = 0;
            if (grade > 9) grade = 9;
            if (j % 32 == 0) xil_printf("  [%3d] ", j);
            xil_printf("%d", grade);
            if ((j + 1) % 32 == 0) {
                xil_printf("  bits %d-%d\r\n", j - 31, j);
            }
        }

        for (j = 0; j < PUF_BITS; j++) {
            u32 errs = s_bit_errors[j];
            u32 rel_pct = (total - errs) * 100 / total;
            if (rel_pct >= 95) stable++;
            if (rel_pct <  80) noisy++;
        }
        xil_printf("\r\n  Stable bits (>=95%% reliable): %d / %d\r\n",
                   (int)stable, PUF_BITS);
        xil_printf("  Noisy  bits (<80%% reliable) : %d / %d\r\n\r\n",
                   (int)noisy, PUF_BITS);
    }

    /* ---- 4c: Intra-HD histogram ---- */
    {
        u32 max_count = 0;

        xil_printf("  --- Intra-HD Histogram (c=%d) ---\r\n", DETAIL_DUR);
        xil_printf("  %d challenges x %d samples = %d total\r\n\r\n",
                   NUM_CHALLENGES, HD_SAMPLE_REPS,
                   NUM_CHALLENGES * HD_SAMPLE_REPS);

        for (j = 0; j < HD_BINS; j++)
            if (s_hd_hist[j] > max_count)
                max_count = s_hd_hist[j];

        for (j = 0; j < HD_BINS; j++) {
            u32 lo = (u32)j * HD_BIN_W;
            u32 hi = lo + HD_BIN_W - 1;
            u32 bar;

            if (hi > PUF_BITS) hi = PUF_BITS;
            xil_printf("  %3d-%3d |", (int)lo, (int)hi);

            bar = (max_count > 0)
                ? (s_hd_hist[j] * 40 / max_count) : 0;
            for (i = 0; i < (int)bar; i++)
                xil_printf("#");
            xil_printf(" %d\r\n", s_hd_hist[j]);
        }
        xil_printf("\r\n");
    }

    /* ==============================================================
     * TEST 5 : Avalanche effect (challenge sensitivity)
     *
     * Flip one bit of the challenge and measure the Hamming distance
     * between the resulting golden responses.
     * Ideal avalanche criterion: ~50 %% of response bits change.
     * ============================================================== */
    xil_printf("==== Test 5: Avalanche Effect (c=%d) ====\r\n", DETAIL_DUR);
    {
        u32 base_chal[PUF_WORDS] = {0x12345678,0x9ABCDEF0,
                                     0x0FEDCBA9,0x87654321};
        u32 base_g[PUF_WORDS], flip_g[PUF_WORDS], flip_c[PUF_WORDS];
        u32 total_aval = 0;

        Plpuf_SetDuration(&puf, DETAIL_DUR);

        /* Base golden via majority vote */
        for (j = 0; j < PUF_BITS; j++) bcnt[j] = 0;
        for (rep = 0; rep < AVALANCHE_VOTES; rep++) {
            Plpuf_Evaluate(&puf, base_chal[0], base_chal[1],
                                  base_chal[2], base_chal[3], resp);
            for (j = 0; j < PUF_BITS; j++)
                if (get_bit(resp, j)) bcnt[j]++;
        }
        golden_from_counts(base_g, bcnt, AVALANCHE_VOTES / 2);

        xil_printf("  Base challenge: ");
        print_hex128(base_chal);
        xil_printf("\r\n  Base golden   : ");
        print_hex128(base_g);
        xil_printf("\r\n\r\n");
        xil_printf("  Bit |   HD | HD%%\r\n");
        xil_printf("  ----+------+-------\r\n");

        for (i = 0; i < AVALANCHE_BITS; i++) {
            u32 d, pct;

            for (j = 0; j < PUF_WORDS; j++)
                flip_c[j] = base_chal[j];
            flip_c[i >> 5] ^= (1u << (i & 31));

            for (j = 0; j < PUF_BITS; j++) bcnt[j] = 0;
            for (rep = 0; rep < AVALANCHE_VOTES; rep++) {
                Plpuf_Evaluate(&puf, flip_c[0], flip_c[1],
                                      flip_c[2], flip_c[3], resp);
                for (j = 0; j < PUF_BITS; j++)
                    if (get_bit(resp, j)) bcnt[j]++;
            }
            golden_from_counts(flip_g, bcnt, AVALANCHE_VOTES / 2);

            d = hd128(base_g, flip_g);
            pct = d * 10000 / PUF_BITS;
            total_aval += d;

            xil_printf("  %3d | %4d | %2d.%02d%%\r\n",
                       i, (int)d, pct/100, pct%100);
        }

        {
            u32 avg = total_aval * 10000 / (AVALANCHE_BITS * PUF_BITS);
            xil_printf("\r\n  Average avalanche: %d.%02d%% (ideal 50%%)\r\n",
                       avg/100, avg%100);
        }
    }

    /* ==============================================================
     * Summary
     * ============================================================== */
    xil_printf("\r\n");
    xil_printf("================================================================\r\n");
    xil_printf("  Validation Complete\r\n");
    xil_printf("================================================================\r\n");
    xil_printf("  All intra-device metrics computed successfully.\r\n\r\n");
    xil_printf("  Key observations to look for:\r\n");
    xil_printf("    - Uniformity close to 50%% across all durations\r\n");
    xil_printf("    - Reliability > 95%% for small c (2-4)\r\n");
    xil_printf("    - Inter-challenge HD close to 50%% (good uniqueness)\r\n");
    xil_printf("    - Intra-HD histogram concentrated near 0\r\n");
    xil_printf("    - Avalanche effect approaching 50%%\r\n\r\n");
    xil_printf("  For inter-device evaluation, run this test on\r\n");
    xil_printf("  additional FPGA boards and compare golden responses.\r\n");
    xil_printf("================================================================\r\n");

    cleanup_platform();
    return 0;
}
