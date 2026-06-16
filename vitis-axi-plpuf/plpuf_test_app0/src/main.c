/**
 * @file main.c
 * @brief Bare-metal validation test for the AXI PLPUF IP core.
 *
 * GOAL
 * ----
 * This program demonstrates that the PLPUF peripheral works as a plain
 * memory-mapped AXI4-Lite slave, independently of any vendor software stack.
 * Unlike plpuf_test_app1 / plpuf_test_app2, it deliberately AVOIDS:
 *   - the Xilinx BSP driver (axi_plpuf.h / Plpuf_*),
 *   - the Xilinx I/O helpers (Xil_In32 / Xil_Out32 / xil_printf),
 *   - platform.h (init_platform / cleanup_platform),
 *   - any Xil_* type or function.
 *
 * Everything is done with portable C (<stdint.h>) and raw memory-mapped
 * register accesses through volatile pointers. The only platform-specific
 * information is the two base addresses of the AXI address map below. Any bus
 * master able to issue 32-bit reads/writes at those addresses -- MicroBlaze,
 * an Arm Cortex, a RISC-V core, or even a custom hardware FSM -- could drive
 * the PLPUF with the exact same register sequence used here.
 *
 * It also includes a minimal, self-contained AXI UART Lite transmitter so the
 * results are printed over the serial console (9600-8-N-1) without relying on
 * stdio or the BSP.
 *
 * Project: TFG - Design and Integration of a Programmable PLPUF Module
 *          for Embedded Systems
 * Author:  Emanuel Antonio Marin Gutierrez
 */

#include <stdint.h>

/* =========================================================================
 *  Address map (the ONLY platform-specific constants)
 *  Taken from the AXI4-Lite address map of the SoC (see xparameters.h):
 *      AXI PLPUF      -> 0x44A00000
 *      AXI UART Lite  -> 0x40600000  (fixed 9600-8-N-1 in hardware)
 * ========================================================================= */
#define PLPUF_BASE   0x44A00000u
#define UART_BASE    0x40600000u

/* =========================================================================
 *  Generic 32-bit memory-mapped I/O (no Xil_In32 / Xil_Out32)
 * ========================================================================= */
static inline void mmio_write32(uint32_t addr, uint32_t value)
{
    *(volatile uint32_t *)(uintptr_t)addr = value;
}

static inline uint32_t mmio_read32(uint32_t addr)
{
    return *(volatile uint32_t *)(uintptr_t)addr;
}

/* =========================================================================
 *  AXI PLPUF register map (byte offsets from PLPUF_BASE)
 * =========================================================================    */
#define PLPUF_REG_CTRL    0x00u   /* [0] start (self-clearing), [1] soft reset  */
#define PLPUF_REG_STATUS  0x04u   /* [0] busy, [1] done (sticky)                */
#define PLPUF_REG_DUR     0x08u   /* [15:0] activation duration                 */
#define PLPUF_REG_CHAL0   0x0Cu   /* challenge  [31:0]                          */
#define PLPUF_REG_CHAL1   0x10u   /* challenge  [63:32]                         */
#define PLPUF_REG_CHAL2   0x14u   /* challenge  [95:64]                         */
#define PLPUF_REG_CHAL3   0x18u   /* challenge  [127:96]                        */
#define PLPUF_REG_RESP0   0x1Cu   /* response   [31:0]                          */
#define PLPUF_REG_RESP1   0x20u   /* response   [63:32]                         */
#define PLPUF_REG_RESP2   0x24u   /* response   [95:64]                         */
#define PLPUF_REG_RESP3   0x28u   /* response   [127:96]                        */

#define PLPUF_CTRL_START      0x1u
#define PLPUF_CTRL_SOFT_RST   0x2u
#define PLPUF_STATUS_BUSY     0x1u
#define PLPUF_STATUS_DONE     0x2u

#define PLPUF_RESP_WORDS      4
#define PLPUF_RESP_BITS       (PLPUF_RESP_WORDS * 32)   /* 128 */
#define PLPUF_DEFAULT_DUR     5u
#define PLPUF_WAIT_TIMEOUT    1000000u   /* poll iterations before giving up */

/* A PUF is NOT bit-exact across evaluations: it has intrinsic noise. We
 * therefore measure repeatability by SIMILARITY, not equality. We take an
 * odd number of runs, derive a golden response by per-bit majority vote and
 * report the reliability (1 - average bit-error-rate). The core is considered
 * repeatable if reliability stays at or above the threshold below. */
#define PLPUF_REPEAT_RUNS     5
#define PLPUF_MIN_RELIABILITY 90u         /* percent */

/* =========================================================================
 *  AXI UART Lite register map and bits
 *  (Standard Xilinx AXI UART Lite layout.)
 * ========================================================================= */
#define UART_REG_RX_FIFO   0x00u
#define UART_REG_TX_FIFO   0x04u
#define UART_REG_STATUS    0x08u
#define UART_REG_CTRL      0x0Cu

#define UART_STATUS_TX_FULL  0x08u
#define UART_CTRL_RST_TX     0x01u
#define UART_CTRL_RST_RX     0x02u

/* =========================================================================
 *  Minimal bare-metal UART Lite console (transmit only)
 * ========================================================================= */
static void uart_init(void)
{
    /* Flush both FIFOs. Baud rate is fixed in hardware, so nothing else
     * needs configuring. */
    mmio_write32(UART_BASE + UART_REG_CTRL, UART_CTRL_RST_TX | UART_CTRL_RST_RX);
}

static void uart_putc(char c)
{
    /* Block while the transmit FIFO is full, then push the byte. */
    while (mmio_read32(UART_BASE + UART_REG_STATUS) & UART_STATUS_TX_FULL)
        ;
    mmio_write32(UART_BASE + UART_REG_TX_FIFO, (uint32_t)(uint8_t)c);
}

static void uart_puts(const char *s)
{
    while (*s) {
        if (*s == '\n')
            uart_putc('\r');
        uart_putc(*s++);
    }
}

static void uart_put_hex32(uint32_t value)
{
    static const char hex[] = "0123456789abcdef";
    int i;
    for (i = 28; i >= 0; i -= 4)
        uart_putc(hex[(value >> i) & 0xF]);
}

static void uart_put_u32(uint32_t value)
{
    char buf[10];
    int i = 0;
    if (value == 0) {
        uart_putc('0');
        return;
    }
    while (value > 0) {
        buf[i++] = (char)('0' + (value % 10u));
        value /= 10u;
    }
    while (i > 0)
        uart_putc(buf[--i]);
}

/* =========================================================================
 *  Bare-metal PLPUF access routines (raw register sequence)
 * ========================================================================= */
static void plpuf_soft_reset(void)
{
    mmio_write32(PLPUF_BASE + PLPUF_REG_CTRL, PLPUF_CTRL_SOFT_RST);
}

static void plpuf_set_duration(uint16_t duration)
{
    if (duration == 0)
        duration = 1;
    mmio_write32(PLPUF_BASE + PLPUF_REG_DUR, (uint32_t)duration);
}

static void plpuf_set_challenge(uint32_t c0, uint32_t c1, uint32_t c2, uint32_t c3)
{
    mmio_write32(PLPUF_BASE + PLPUF_REG_CHAL0, c0);
    mmio_write32(PLPUF_BASE + PLPUF_REG_CHAL1, c1);
    mmio_write32(PLPUF_BASE + PLPUF_REG_CHAL2, c2);
    mmio_write32(PLPUF_BASE + PLPUF_REG_CHAL3, c3);
}

static void plpuf_get_response(uint32_t resp[PLPUF_RESP_WORDS])
{
    resp[0] = mmio_read32(PLPUF_BASE + PLPUF_REG_RESP0);
    resp[1] = mmio_read32(PLPUF_BASE + PLPUF_REG_RESP1);
    resp[2] = mmio_read32(PLPUF_BASE + PLPUF_REG_RESP2);
    resp[3] = mmio_read32(PLPUF_BASE + PLPUF_REG_RESP3);
}

/* Returns 1 on success, 0 on timeout (done flag never asserted). */
static int plpuf_evaluate(uint32_t c0, uint32_t c1, uint32_t c2, uint32_t c3,
                          uint32_t resp[PLPUF_RESP_WORDS])
{
    uint32_t guard;

    plpuf_set_challenge(c0, c1, c2, c3);
    mmio_write32(PLPUF_BASE + PLPUF_REG_CTRL, PLPUF_CTRL_START);

    /* Poll the sticky done flag with a bounded timeout. */
    guard = PLPUF_WAIT_TIMEOUT;
    while (!(mmio_read32(PLPUF_BASE + PLPUF_REG_STATUS) & PLPUF_STATUS_DONE)) {
        if (--guard == 0)
            return 0;
    }

    plpuf_get_response(resp);
    return 1;
}

/* =========================================================================
 *  Small helpers
 * ========================================================================= */
static void print_response(const char *label, const uint32_t r[PLPUF_RESP_WORDS])
{
    uart_puts(label);
    uart_puts(": ");
    uart_put_hex32(r[3]); uart_putc('_');
    uart_put_hex32(r[2]); uart_putc('_');
    uart_put_hex32(r[1]); uart_putc('_');
    uart_put_hex32(r[0]);
    uart_puts("\n");
}

static void print_result(const char *label, int pass)
{
    uart_puts(label);
    uart_puts(pass ? " [PASS]\n" : " [FAIL]\n");
}

static int responses_equal(const uint32_t a[PLPUF_RESP_WORDS],
                           const uint32_t b[PLPUF_RESP_WORDS])
{
    int i;
    for (i = 0; i < PLPUF_RESP_WORDS; i++)
        if (a[i] != b[i])
            return 0;
    return 1;
}

static int response_is_zero(const uint32_t r[PLPUF_RESP_WORDS])
{
    int i;
    for (i = 0; i < PLPUF_RESP_WORDS; i++)
        if (r[i] != 0)
            return 0;
    return 1;
}

/* Number of bits set in a 32-bit word (Brian Kernighan). */
static uint32_t popcount32(uint32_t w)
{
    uint32_t count = 0;
    while (w) {
        w &= (w - 1u);
        count++;
    }
    return count;
}

/* Hamming weight of the 128-bit response (number of bits set). A balanced
 * value near 64 is evidence that the core is extracting real entropy rather
 * than collapsing to a constant. */
static uint32_t response_weight(const uint32_t r[PLPUF_RESP_WORDS])
{
    uint32_t total = 0;
    int i;
    for (i = 0; i < PLPUF_RESP_WORDS; i++)
        total += popcount32(r[i]);
    return total;
}

/* Hamming distance (number of differing bits) between two 128-bit responses. */
static uint32_t hamming_distance(const uint32_t a[PLPUF_RESP_WORDS],
                                 const uint32_t b[PLPUF_RESP_WORDS])
{
    uint32_t total = 0;
    int i;
    for (i = 0; i < PLPUF_RESP_WORDS; i++)
        total += popcount32(a[i] ^ b[i]);
    return total;
}

/* =========================================================================
 *  Main: bare-metal demonstration
 * ========================================================================= */
int main(void)
{
    uint32_t ref[PLPUF_RESP_WORDS];
    uint32_t resp[PLPUF_RESP_WORDS];
    uint32_t alt[PLPUF_RESP_WORDS];
    uint32_t dur_read, c0_read, c1_read;
    int pass, ok, i;

    uart_init();

    uart_puts("\n========================================\n");
    uart_puts("   PLPUF Bare-Metal Validation Test\n");
    uart_puts("   (raw MMIO, no BSP / no Xil_* / no stdio)\n");
    uart_puts("========================================\n\n");

    uart_puts("PLPUF base = 0x"); uart_put_hex32(PLPUF_BASE); uart_puts("\n");
    uart_puts("UART  base = 0x"); uart_put_hex32(UART_BASE);  uart_puts("\n");

    /* ---- Reset core and set a sensible default duration ---- */
    plpuf_soft_reset();
    plpuf_set_duration(PLPUF_DEFAULT_DUR);

    /* ---- Test 1: register read/write sanity ---- */
    uart_puts("\n--- Test 1: Register read/write ---\n");
    plpuf_set_duration(100);
    dur_read = mmio_read32(PLPUF_BASE + PLPUF_REG_DUR);
    uart_puts("  Wrote DURATION=100, read back="); uart_put_u32(dur_read);
    print_result("", dur_read == 100u);

    plpuf_set_challenge(0xAAAAAAAAu, 0xBBBBBBBBu, 0xCCCCCCCCu, 0xDDDDDDDDu);
    c0_read = mmio_read32(PLPUF_BASE + PLPUF_REG_CHAL0);
    c1_read = mmio_read32(PLPUF_BASE + PLPUF_REG_CHAL1);
    uart_puts("  Wrote CHAL0=0xAAAAAAAA, read=0x"); uart_put_hex32(c0_read);
    print_result("", c0_read == 0xAAAAAAAAu);
    uart_puts("  Wrote CHAL1=0xBBBBBBBB, read=0x"); uart_put_hex32(c1_read);
    print_result("", c1_read == 0xBBBBBBBBu);

    /* ---- Test 2: single evaluation produces a non-zero response ---- */
    uart_puts("\n--- Test 2: Single evaluation ---\n");
    plpuf_set_duration(PLPUF_DEFAULT_DUR);
    ok = plpuf_evaluate(0x12345678u, 0x9ABCDEF0u, 0x0FEDCBA9u, 0x87654321u, ref);
    if (!ok) {
        uart_puts("  ERROR: done flag timeout (no AXI response?)\n");
    } else {
        print_response("  Response", ref);
        uart_puts("  Hamming weight = "); uart_put_u32(response_weight(ref));
        uart_puts(" / 128\n");
        print_result("  Non-zero response", !response_is_zero(ref));
    }

    /* ---- Test 3: repeatability by similarity (majority-vote golden) ----
     * A PUF response is noisy by design, so bit-exact equality is the wrong
     * metric (it would fail on any real PUF, including this one). Instead we
     * run the SAME challenge several times, build a golden response by per-bit
     * majority vote and measure how far each run drifts from it. */
    uart_puts("\n--- Test 3: Repeatability (");
    uart_put_u32(PLPUF_REPEAT_RUNS);
    uart_puts(" runs, same challenge) ---\n");
    {
        uint32_t runs[PLPUF_REPEAT_RUNS][PLPUF_RESP_WORDS];
        uint32_t golden[PLPUF_RESP_WORDS];
        uint32_t total_diff = 0, max_hd = 0;
        int word, bit, k;

        pass = 1;
        for (i = 0; i < PLPUF_REPEAT_RUNS; i++) {
            ok = plpuf_evaluate(0x12345678u, 0x9ABCDEF0u,
                                0x0FEDCBA9u, 0x87654321u, runs[i]);
            print_response("  Run", runs[i]);
            if (!ok)
                pass = 0;
        }

        /* Per-bit majority vote across the runs -> golden reference. */
        for (word = 0; word < PLPUF_RESP_WORDS; word++) {
            golden[word] = 0;
            for (bit = 0; bit < 32; bit++) {
                uint32_t ones = 0;
                for (k = 0; k < PLPUF_REPEAT_RUNS; k++)
                    ones += (runs[k][word] >> bit) & 1u;
                if (ones * 2u > (uint32_t)PLPUF_REPEAT_RUNS)
                    golden[word] |= (1u << bit);
            }
        }
        print_response("  Golden (majority)", golden);

        /* Hamming distance of each run to the golden reference. */
        for (k = 0; k < PLPUF_REPEAT_RUNS; k++) {
            uint32_t hd = hamming_distance(runs[k], golden);
            total_diff += hd;
            if (hd > max_hd)
                max_hd = hd;
        }

        {
            uint32_t total_bits = (uint32_t)PLPUF_REPEAT_RUNS * PLPUF_RESP_BITS;
            uint32_t reliability = 100u - (total_diff * 100u) / total_bits;
            uart_puts("  Max bit drift = "); uart_put_u32(max_hd);
            uart_puts(" / "); uart_put_u32(PLPUF_RESP_BITS); uart_puts(" bits\n");
            uart_puts("  Reliability   = "); uart_put_u32(reliability);
            uart_puts(" %\n");
            if (reliability < PLPUF_MIN_RELIABILITY)
                pass = 0;
        }
        print_result("  Repeatability (similarity)", pass);
    }

    /* ---- Test 4: uniqueness (different challenge -> different response) ---- */
    uart_puts("\n--- Test 4: Different challenge ---\n");
    ok = plpuf_evaluate(0xFFFFFFFFu, 0x00000000u, 0xFFFFFFFFu, 0x00000000u, alt);
    print_response("  Challenge A resp", ref);
    print_response("  Challenge B resp", alt);
    print_result("  Different responses", ok && !responses_equal(ref, alt));

    /* ---- Test 5: activation-duration sweep ---- */
    uart_puts("\n--- Test 5: Duration sweep (c = 1..10) ---\n");
    for (i = 1; i <= 10; i++) {
        plpuf_set_duration((uint16_t)i);
        ok = plpuf_evaluate(0x12345678u, 0x9ABCDEF0u, 0x0FEDCBA9u, 0x87654321u, resp);
        uart_puts("  c=");
        if (i < 10) uart_putc(' ');
        uart_put_u32((uint32_t)i);
        uart_puts(": ");
        if (!ok) {
            uart_puts("timeout\n");
        } else {
            uart_put_hex32(resp[3]); uart_putc('_');
            uart_put_hex32(resp[2]); uart_putc('_');
            uart_put_hex32(resp[1]); uart_putc('_');
            uart_put_hex32(resp[0]);
            uart_puts("\n");
        }
    }

    /* ---- Summary ---- */
    uart_puts("\n========================================\n");
    uart_puts("   Bare-metal test complete\n");
    uart_puts("   PLPUF driven purely via AXI4-Lite MMIO\n");
    uart_puts("========================================\n");

    /* Bare-metal programs do not return to an OS: spin forever. */
    for (;;)
        ;

    return 0;
}
