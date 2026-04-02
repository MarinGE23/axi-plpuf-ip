/**
 * @file axi_plpuf.c
 * @brief Implementation of AXI PLPUF driver functions
 *
 * Project: TFG - Design and Integration of a Programmable PLPUF Module
 *          for Embedded Systems
 * Author:  Emanuel Antonio Marin Gutierrez
 */

#include "axi_plpuf.h"

/************************** Function Definitions *****************************/

/**
 * Initialize the AXI PLPUF driver instance.
 *
 * Configures the instance structure, issues a soft reset to the core,
 * and sets the activation duration to PLPUF_DEFAULT_DURATION.
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 * @param BaseAddress  Base address of the PLPUF peripheral.
 */
void Plpuf_Initialize(axi_plpuf_t *InstancePtr, u32 BaseAddress)
{
    Xil_AssertVoid(InstancePtr != NULL);

    InstancePtr->BaseAddress = BaseAddress;
    InstancePtr->IsReady     = XIL_COMPONENT_IS_READY;

    /* Reset the core and apply a sensible default duration */
    Plpuf_SoftReset(InstancePtr);
    Plpuf_SetDuration(InstancePtr, PLPUF_DEFAULT_DURATION);
}

/**
 * Issue a soft reset to the PLPUF core.
 *
 * Resets the internal FSM and clears any in-progress evaluation.
 * The soft-reset bit auto-clears in hardware after one clock cycle.
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 */
void Plpuf_SoftReset(axi_plpuf_t *InstancePtr)
{
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    PLPUF_WRITE_REG(InstancePtr->BaseAddress, PLPUF_REG_CTRL,
                     PLPUF_CTRL_SOFT_RST_BIT);
}

/**
 * Set the activation duration (number of clock cycles the combinational
 * loop oscillates before the response is sampled).
 *
 * Recommended ranges:
 *   - c = 2..4  for cryptographic key generation   (low BER)
 *   - c = 5..7  for device identification          (good uniqueness)
 *   - c >= 8    high randomness but lower reliability
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 * @param Duration     Number of clock cycles (must be >= 1).
 */
void Plpuf_SetDuration(axi_plpuf_t *InstancePtr, u16 Duration)
{
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    if (Duration == 0)
        Duration = 1;

    PLPUF_WRITE_REG(InstancePtr->BaseAddress, PLPUF_REG_DUR, (u32)Duration);
}

/**
 * Load a 128-bit challenge into the PLPUF challenge registers.
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 * @param C0  Challenge word 0 - bits  [31:0]   (least significant)
 * @param C1  Challenge word 1 - bits  [63:32]
 * @param C2  Challenge word 2 - bits  [95:64]
 * @param C3  Challenge word 3 - bits  [127:96] (most significant)
 */
void Plpuf_SetChallenge(axi_plpuf_t *InstancePtr,
                        u32 C0, u32 C1, u32 C2, u32 C3)
{
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    PLPUF_WRITE_REG(InstancePtr->BaseAddress, PLPUF_REG_CHAL0, C0);
    PLPUF_WRITE_REG(InstancePtr->BaseAddress, PLPUF_REG_CHAL1, C1);
    PLPUF_WRITE_REG(InstancePtr->BaseAddress, PLPUF_REG_CHAL2, C2);
    PLPUF_WRITE_REG(InstancePtr->BaseAddress, PLPUF_REG_CHAL3, C3);
}

/**
 * Trigger a PLPUF evaluation.
 *
 * The start bit auto-clears in hardware.  The challenge and duration
 * must have been configured beforehand.
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 */
void Plpuf_Start(axi_plpuf_t *InstancePtr)
{
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    PLPUF_WRITE_REG(InstancePtr->BaseAddress, PLPUF_REG_CTRL,
                     PLPUF_CTRL_START_BIT);
}

/**
 * Check whether the PLPUF core is currently evaluating.
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 * @return 1 if busy, 0 if idle.
 */
int Plpuf_IsBusy(axi_plpuf_t *InstancePtr)
{
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    u32 status = PLPUF_READ_REG(InstancePtr->BaseAddress, PLPUF_REG_STATUS);
    return (status & PLPUF_STATUS_BUSY_BIT) ? 1 : 0;
}

/**
 * Check whether the most recent evaluation has completed.
 *
 * The done flag is sticky: it remains set until a new start is issued.
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 * @return 1 if done, 0 if not yet complete.
 */
int Plpuf_IsDone(axi_plpuf_t *InstancePtr)
{
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    u32 status = PLPUF_READ_REG(InstancePtr->BaseAddress, PLPUF_REG_STATUS);
    return (status & PLPUF_STATUS_DONE_BIT) ? 1 : 0;
}

/**
 * Block until the current evaluation completes.
 *
 * Polls the STATUS register in a tight loop.  This is appropriate for
 * short evaluations (activation_duration is typically < 32 cycles).
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 */
void Plpuf_WaitDone(axi_plpuf_t *InstancePtr)
{
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    while (!Plpuf_IsDone(InstancePtr))
        ;  /* spin */
}

/**
 * Read the 128-bit response from the PLPUF.
 *
 * Must be called after the evaluation is complete (Plpuf_IsDone() == 1).
 * The response remains valid until a new evaluation is started.
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 * @param Response     Output array of 4 × u32 words.
 *                     Response[0] = bits  [31:0]   (least significant)
 *                     Response[1] = bits  [63:32]
 *                     Response[2] = bits  [95:64]
 *                     Response[3] = bits [127:96]  (most significant)
 */
void Plpuf_GetResponse(axi_plpuf_t *InstancePtr, u32 Response[PLPUF_RESPONSE_WORDS])
{
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    Xil_AssertVoid(Response != NULL);

    Response[0] = PLPUF_READ_REG(InstancePtr->BaseAddress, PLPUF_REG_RESP0);
    Response[1] = PLPUF_READ_REG(InstancePtr->BaseAddress, PLPUF_REG_RESP1);
    Response[2] = PLPUF_READ_REG(InstancePtr->BaseAddress, PLPUF_REG_RESP2);
    Response[3] = PLPUF_READ_REG(InstancePtr->BaseAddress, PLPUF_REG_RESP3);
}

/**
 * Perform a complete challenge-response evaluation in a single call.
 *
 * Convenience wrapper that sets the challenge, triggers the evaluation,
 * waits for completion, and reads the response.  The activation duration
 * must have been configured beforehand with Plpuf_SetDuration().
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 * @param C0..C3       128-bit challenge (same layout as Plpuf_SetChallenge).
 * @param Response     Output array of 4 × u32 words (same layout as
 *                     Plpuf_GetResponse).
 */
void Plpuf_Evaluate(axi_plpuf_t *InstancePtr,
                    u32 C0, u32 C1, u32 C2, u32 C3,
                    u32 Response[PLPUF_RESPONSE_WORDS])
{
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
    Xil_AssertVoid(Response != NULL);

    Plpuf_SetChallenge(InstancePtr, C0, C1, C2, C3);
    Plpuf_Start(InstancePtr);
    Plpuf_WaitDone(InstancePtr);
    Plpuf_GetResponse(InstancePtr, Response);
}

/**
 * Read the raw STATUS register value.
 *
 * @param InstancePtr  Pointer to the axi_plpuf_t instance.
 * @return 32-bit STATUS register value.
 */
u32 Plpuf_GetStatus(axi_plpuf_t *InstancePtr)
{
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return PLPUF_READ_REG(InstancePtr->BaseAddress, PLPUF_REG_STATUS);
}
