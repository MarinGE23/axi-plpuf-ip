/**
 * @file main.c
 * @brief Basic validation test for the AXI PLPUF IP core
 *
 * Tests performed:
 *   1. Register read/write sanity check
 *   2. Single challenge-response evaluation
 *   3. Repeatability: same challenge must produce the same response
 *   4. Uniqueness:    different challenge must produce a different response
 *   5. Activation duration sweep (c = 1..10)
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

#define PLPUF_BASE  XPAR_AXI_PLPUF_0_BASEADDR
#define NUM_REPEAT  5

static void print_response(const char *label, const u32 resp[PLPUF_RESPONSE_WORDS])
{
    xil_printf("%s: %08x_%08x_%08x_%08x\r\n",
               label, resp[3], resp[2], resp[1], resp[0]);
}

static int responses_equal(const u32 a[PLPUF_RESPONSE_WORDS],
                           const u32 b[PLPUF_RESPONSE_WORDS])
{
    int i;
    for (i = 0; i < PLPUF_RESPONSE_WORDS; i++)
        if (a[i] != b[i]) return 0;
    return 1;
}

static int response_is_zero(const u32 r[PLPUF_RESPONSE_WORDS])
{
    int i;
    for (i = 0; i < PLPUF_RESPONSE_WORDS; i++)
        if (r[i] != 0) return 0;
    return 1;
}

int main()
{
    axi_plpuf_t puf;
    u32 resp[PLPUF_RESPONSE_WORDS];
    u32 ref[PLPUF_RESPONSE_WORDS];
    u32 alt[PLPUF_RESPONSE_WORDS];
    int pass, i;

    init_platform();

    xil_printf("\r\n========================================\r\n");
    xil_printf("   PLPUF Basic Validation Test\r\n");
    xil_printf("========================================\r\n\r\n");

    /* ---- Initialize ---- */
    Plpuf_Initialize(&puf, PLPUF_BASE);
    xil_printf("[INIT] Driver initialized, base = 0x%08x\r\n", PLPUF_BASE);

    /* ---- Test 1: Register sanity ---- */
    xil_printf("\r\n--- Test 1: Register read/write ---\r\n");
    Plpuf_SetDuration(&puf, 100);
    u32 dur_read = PLPUF_READ_REG(PLPUF_BASE, PLPUF_REG_DUR);
    xil_printf("  Wrote duration = 100, read back = %u  %s\r\n",
               (unsigned)dur_read, (dur_read == 100) ? "[PASS]" : "[FAIL]");

    Plpuf_SetChallenge(&puf, 0xAAAAAAAA, 0xBBBBBBBB, 0xCCCCCCCC, 0xDDDDDDDD);
    u32 c0 = PLPUF_READ_REG(PLPUF_BASE, PLPUF_REG_CHAL0);
    u32 c1 = PLPUF_READ_REG(PLPUF_BASE, PLPUF_REG_CHAL1);
    xil_printf("  Wrote CHAL0=0xAAAAAAAA, read=0x%08x  %s\r\n",
               c0, (c0 == 0xAAAAAAAA) ? "[PASS]" : "[FAIL]");
    xil_printf("  Wrote CHAL1=0xBBBBBBBB, read=0x%08x  %s\r\n",
               c1, (c1 == 0xBBBBBBBB) ? "[PASS]" : "[FAIL]");

    /* ---- Test 2: Single evaluation ---- */
    xil_printf("\r\n--- Test 2: Single evaluation ---\r\n");
    Plpuf_SetDuration(&puf, PLPUF_DEFAULT_DURATION);
    Plpuf_Evaluate(&puf, 0x12345678, 0x9ABCDEF0, 0x0FEDCBA9, 0x87654321, ref);
    print_response("  Response", ref);
    xil_printf("  Non-zero response: %s\r\n",
               response_is_zero(ref) ? "[FAIL]" : "[PASS]");

    /* ---- Test 3: Repeatability (same challenge, same duration) ---- */
    xil_printf("\r\n--- Test 3: Repeatability (%d runs, same challenge) ---\r\n",
               NUM_REPEAT);
    pass = 1;
    for (i = 0; i < NUM_REPEAT; i++) {
        Plpuf_Evaluate(&puf, 0x12345678, 0x9ABCDEF0, 0x0FEDCBA9, 0x87654321, resp);
        print_response("  Run", resp);
        if (!responses_equal(resp, ref))
            pass = 0;
    }
    xil_printf("  Repeatability: %s\r\n", pass ? "[PASS]" : "[FAIL - responses differ]");

    /* ---- Test 4: Uniqueness (different challenge) ---- */
    xil_printf("\r\n--- Test 4: Different challenge ---\r\n");
    Plpuf_Evaluate(&puf, 0xFFFFFFFF, 0x00000000, 0xFFFFFFFF, 0x00000000, alt);
    print_response("  Challenge A resp", ref);
    print_response("  Challenge B resp", alt);
    xil_printf("  Different responses: %s\r\n",
               responses_equal(ref, alt) ? "[FAIL - identical]" : "[PASS]");

    /* ---- Test 5: Duration sweep ---- */
    xil_printf("\r\n--- Test 5: Duration sweep (c = 1..10) ---\r\n");
    for (i = 1; i <= 10; i++) {
        Plpuf_SetDuration(&puf, (u16)i);
        Plpuf_Evaluate(&puf, 0x12345678, 0x9ABCDEF0, 0x0FEDCBA9, 0x87654321, resp);
        xil_printf("  c=%2d: %08x_%08x_%08x_%08x\r\n",
                   i, resp[3], resp[2], resp[1], resp[0]);
    }

    /* ---- Summary ---- */
    xil_printf("\r\n========================================\r\n");
    xil_printf("   Test complete\r\n");
    xil_printf("========================================\r\n");

    cleanup_platform();
    return 0;
}
