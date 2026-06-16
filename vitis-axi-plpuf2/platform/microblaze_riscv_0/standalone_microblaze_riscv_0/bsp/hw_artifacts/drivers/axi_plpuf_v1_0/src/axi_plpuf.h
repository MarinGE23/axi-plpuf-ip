/**
 * @file axi_plpuf.h
 * @brief Driver for AXI PLPUF (Pseudo-LFSR Physical Unclonable Function) IP Core
 *
 * This driver provides an interface to control and evaluate the AXI PLPUF
 * IP core from the MicroBlaze V processor via AXI4-Lite registers.
 *
 * The PLPUF generates device-unique 128-bit responses from 128-bit challenges
 * by exploiting manufacturing variations in a combinational inverter loop.
 *
 * Typical usage:
 *   1. Initialize the driver with Plpuf_Initialize()
 *   2. Set the activation duration with Plpuf_SetDuration()
 *   3. Use Plpuf_Evaluate() to perform a full challenge-response evaluation,
 *      or use the individual functions for finer control.
 *
 * Project: TFG - Design and Integration of a Programmable PLPUF Module
 *          for Embedded Systems
 * Author:  Emanuel Antonio Marin Gutierrez
 */

#ifndef AXI_PLPUF_H
#define AXI_PLPUF_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions *****************************/

/**
 * PLPUF response width in 32-bit words (128 bits / 32 = 4 words)
 */
#define PLPUF_RESPONSE_WORDS  4

/**
 * Register map (byte offsets from base address)
 */
enum {
    PLPUF_REG_CTRL   = 0x00u,  /**< Control register (R/W)                 */
    PLPUF_REG_STATUS = 0x04u,  /**< Status register (R)                    */
    PLPUF_REG_DUR    = 0x08u,  /**< Activation duration [15:0] (R/W)       */
    PLPUF_REG_CHAL0  = 0x0Cu,  /**< Challenge bits  [31:0]  (R/W)          */
    PLPUF_REG_CHAL1  = 0x10u,  /**< Challenge bits  [63:32] (R/W)          */
    PLPUF_REG_CHAL2  = 0x14u,  /**< Challenge bits  [95:64] (R/W)          */
    PLPUF_REG_CHAL3  = 0x18u,  /**< Challenge bits [127:96] (R/W)          */
    PLPUF_REG_RESP0  = 0x1Cu,  /**< Response bits   [31:0]  (R)            */
    PLPUF_REG_RESP1  = 0x20u,  /**< Response bits   [63:32] (R)            */
    PLPUF_REG_RESP2  = 0x24u,  /**< Response bits   [95:64] (R)            */
    PLPUF_REG_RESP3  = 0x28u   /**< Response bits  [127:96] (R)            */
};

/**
 * CTRL register bits
 */
#define PLPUF_CTRL_START_BIT      0x01u  /**< Trigger evaluation (auto-clears) */
#define PLPUF_CTRL_SOFT_RST_BIT   0x02u  /**< Reset PLPUF core (auto-clears)   */

/**
 * STATUS register bits
 */
#define PLPUF_STATUS_BUSY_BIT     0x01u  /**< Core is evaluating               */
#define PLPUF_STATUS_DONE_BIT     0x02u  /**< Evaluation complete (sticky)     */

/**
 * Default activation duration (clock cycles).
 * A value of 5 offers a good balance between uniqueness and reliability
 * for device identification.
 */
#define PLPUF_DEFAULT_DURATION    5u

/**************************** Type Definitions *******************************/

/**
 * AXI PLPUF driver instance data
 */
typedef struct {
    u32 BaseAddress;    /**< Base address of the device */
    u32 IsReady;        /**< Device is initialized and ready */
} axi_plpuf_t;

/***************** Macros (Inline Functions) Definitions *********************/

/**
 * Read a PLPUF register
 */
#define PLPUF_READ_REG(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/**
 * Write to a PLPUF register
 */
#define PLPUF_WRITE_REG(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (Data))

/************************** Function Prototypes ******************************/

/* --- Initialization and reset --- */
void Plpuf_Initialize(axi_plpuf_t *InstancePtr, u32 BaseAddress);
void Plpuf_SoftReset(axi_plpuf_t *InstancePtr);

/* --- Configuration --- */
void Plpuf_SetDuration(axi_plpuf_t *InstancePtr, u16 Duration);
void Plpuf_SetChallenge(axi_plpuf_t *InstancePtr,
                        u32 C0, u32 C1, u32 C2, u32 C3);

/* --- Evaluation control --- */
void Plpuf_Start(axi_plpuf_t *InstancePtr);
int  Plpuf_IsBusy(axi_plpuf_t *InstancePtr);
int  Plpuf_IsDone(axi_plpuf_t *InstancePtr);
void Plpuf_WaitDone(axi_plpuf_t *InstancePtr);

/* --- Response readback --- */
void Plpuf_GetResponse(axi_plpuf_t *InstancePtr, u32 Response[PLPUF_RESPONSE_WORDS]);

/* --- Convenience: full evaluation in one call --- */
void Plpuf_Evaluate(axi_plpuf_t *InstancePtr,
                    u32 C0, u32 C1, u32 C2, u32 C3,
                    u32 Response[PLPUF_RESPONSE_WORDS]);

/* --- Status --- */
u32  Plpuf_GetStatus(axi_plpuf_t *InstancePtr);

/* --- Legacy self-test (kept for IP Packager compatibility) --- */
XStatus AXI_PLPUF_Reg_SelfTest(void *baseaddr_p);

#ifdef __cplusplus
}
#endif

#endif /* AXI_PLPUF_H */
