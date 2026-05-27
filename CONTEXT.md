# AXI PLPUF IP — Development Context & Reference

> This document summarizes the full design, implementation, integration, and
> validation work done on the AXI PLPUF IP core for Emanuel's TFG (Trabajo
> Final de Graduación — Bachelor's thesis in Computer Engineering).
>
> Use it as a bootstrap for any new Cursor session working on this repo.

---

## 1. Project Overview

**Title:** Design and Integration of a Programmable PLPUF Module for Embedded Systems

**Goal:** Implement, package, and evaluate a Pseudo-LFSR Physical Unclonable
Function (PLPUF) as a reusable AXI4-Lite IP core for Xilinx FPGAs, targeting
the Basys 3 board (Artix-7 XC7A35T) with a MicroBlaze V soft processor.

**Repository:** `axi-plpuf-ip` (GitHub, MIT License)

**Key references (PDFs converted to .md in `TFG/`):**
- `Guia_PLPUF_Profunda.md` — Comprehensive PLPUF theory, metrics, and
  implementation guide (created during this project).
- `Anteproyecto_PLPUF_EmanuelMarin.md` — Formal thesis proposal.

---

## 2. Repository Structure

```
axi-plpuf-ip/
├── ip_repo/axi_plpuf_1_0/          # Vivado IP core (packaged)
│   ├── hdl/
│   │   ├── plpuf_core.v            # PLPUF core (inverter chain + FSM)
│   │   ├── axi_plpuf_slave_lite_v1_0_S00_AXI.v  # AXI slave + register map
│   │   └── axi_plpuf.v             # Top-level wrapper
│   ├── drivers/axi_plpuf_v1_0/src/
│   │   ├── axi_plpuf.h             # C driver header
│   │   ├── axi_plpuf.c             # C driver implementation
│   │   └── axi_plpuf_selftest.c    # Legacy self-test
│   ├── component.xml               # IP-XACT descriptor
│   ├── xgui/                       # Vivado GUI customization
│   ├── bd/                         # Block diagram automation
│   └── example_designs/            # BFM testbench, debug
├── vivado-axi-plpuf/               # Vivado project (block design + bitstream)
│   └── vivado-axi-plpuf.srcs/constrs_1/new/plpuf.xdc  # Constraints
├── vitis-axi-plpuf/                # Vitis workspace
│   ├── plpuf_test_app1/src/main.c  # Basic validation test
│   ├── plpuf_test_app2/src/main.c  # Exhaustive intra-device validation
│   └── platform/                   # Hardware platform (from .xsa)
└── tcl_script/
    └── mbv_axi_base.tcl            # Block design automation script
```

---

## 3. PLPUF Architecture

### 3.1. Core Design (`plpuf_core.v`)

- **Width:** 128 bits (parameterizable)
- **Primitive polynomial:** x^128 + x^126 + x^102 + x^99 + 1
- **XOR tap positions (0-indexed):** 125, 101, 98
- **Structure:** 128 cells, each containing:
  - A MUX (selects challenge bit or feedback)
  - An inverter (`~`) with `DONT_TOUCH = "TRUE"` attribute
- **Feedback:** Fibonacci LFSR topology — each cell receives the output
  of its neighbor; tap positions XOR with bit 0.
- **FSM states:** `IDLE → LOAD → ACTIVE → DONE`
  - LOAD: challenge propagates through inverters (enable=0, 1 cycle)
  - ACTIVE: loop oscillates freely (enable=1, `activation_duration` cycles)
  - DONE: response captured, `done` pulses for 1 cycle

### 3.2. AXI Register Map (`axi_plpuf_slave_lite_v1_0_S00_AXI.v`)

| Offset | Name     | R/W | Description                                    |
|--------|----------|-----|------------------------------------------------|
| 0x00   | CTRL     | R/W | [0] start (auto-clear) [1] soft_reset (auto-clear) |
| 0x04   | STATUS   | R   | [0] busy [1] done (sticky)                     |
| 0x08   | DURATION | R/W | [15:0] activation duration in clock cycles     |
| 0x0C   | CHAL_0   | R/W | Challenge bits [31:0]                          |
| 0x10   | CHAL_1   | R/W | Challenge bits [63:32]                         |
| 0x14   | CHAL_2   | R/W | Challenge bits [95:64]                         |
| 0x18   | CHAL_3   | R/W | Challenge bits [127:96]                        |
| 0x1C   | RESP_0   | R   | Response bits [31:0]                           |
| 0x20   | RESP_1   | R   | Response bits [63:32]                          |
| 0x24   | RESP_2   | R   | Response bits [95:64]                          |
| 0x28   | RESP_3   | R   | Response bits [127:96]                         |

**Address width:** `C_S_AXI_ADDR_WIDTH = 6` (16 register slots × 4 bytes)

**Key design decisions in the register logic:**
- Three priority layers in a single `always` block (non-blocking assigns):
  1. Auto-clear `CTRL[1:0]` (lowest priority)
  2. AXI write from master (middle)
  3. Hardware-driven STATUS and RESP registers (highest priority)
- `done_flag` is a sticky bit: set by `plpuf_done` pulse, cleared by
  `start` or `soft_reset`.
- Write state machine follows the Vivado AXI-Lite template unchanged.

### 3.3. Top-Level Wrapper (`axi_plpuf.v`)

Simple passthrough of all AXI signals to the `_S00_AXI` submodule.
`C_S00_AXI_ADDR_WIDTH` defaults to 6.

---

## 4. C Driver API

**Header:** `axi_plpuf.h` | **Source:** `axi_plpuf.c`

```c
// Initialization
void Plpuf_Initialize(axi_plpuf_t *inst, u32 BaseAddress);
void Plpuf_SoftReset(axi_plpuf_t *inst);

// Configuration
void Plpuf_SetDuration(axi_plpuf_t *inst, u16 Duration);
void Plpuf_SetChallenge(axi_plpuf_t *inst, u32 C0, u32 C1, u32 C2, u32 C3);

// Evaluation
void Plpuf_Start(axi_plpuf_t *inst);
int  Plpuf_IsBusy(axi_plpuf_t *inst);
int  Plpuf_IsDone(axi_plpuf_t *inst);
void Plpuf_WaitDone(axi_plpuf_t *inst);
void Plpuf_GetResponse(axi_plpuf_t *inst, u32 Response[4]);

// Convenience (full CRP in one call)
void Plpuf_Evaluate(axi_plpuf_t *inst, u32 C0, u32 C1, u32 C2, u32 C3,
                    u32 Response[4]);

u32  Plpuf_GetStatus(axi_plpuf_t *inst);
```

**Base address:** `XPAR_AXI_PLPUF_0_BASEADDR` (0x44A00000 on current design)

---

## 5. FPGA Constraints (`plpuf.xdc`)

```tcl
# Clock
set_property -dict { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports sys_clock]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clock]

# PLPUF combinational loop (post-synthesis net names)
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -hier -filter {NAME =~ *plpuf_core_inst/core_in*}]
set_property DONT_TOUCH TRUE [get_cells -hier -filter {NAME =~ *plpuf_core_inst*}]
set_false_path -through [get_nets -hier -filter {NAME =~ *plpuf_core_inst/core_in*}]

# Reset button
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports reset]

# Board config
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
```

**Important:** The wildcard `*plpuf_core_inst/core_in*` matches the
post-synthesis net names (`core_in[N]`, `core_in_inferred_i_N`), NOT the
generate block names (`gen_core`). Using `gen_core` will fail.

---

## 6. IP Packager Notes

### 6.1. component.xml — Clock Interface Parameters

The `S00_AXI_CLK` bus interface **must** have these parameters:

| Parameter        | Value            |
|------------------|------------------|
| ASSOCIATED_BUSIF | S00_AXI          |
| ASSOCIATED_RESET | s00_axi_aresetn  |
| FREQ_HZ          | 100000000        |

**Tcl to set them (in IP Packager console):**

```tcl
# Verify current parameters
ipx::get_bus_parameters -of_objects [ipx::get_bus_interfaces S00_AXI_CLK -of_objects [ipx::current_core]]

# Set FREQ_HZ (if empty or missing)
set_property value 100000000 [ipx::get_bus_parameters FREQ_HZ -of_objects [ipx::get_bus_interfaces S00_AXI_CLK -of_objects [ipx::current_core]]]
ipx::merge_project_changes busifportref [ipx::current_core]
ipx::save_core [ipx::current_core]
```

**Root cause of SmartConnect warning:** When Vivado creates a new IP,
`FREQ_HZ` is added with an **empty value** (`<spirit:value .../>`). The
SmartConnect cannot verify clock domain compatibility without this value.

### 6.2. Known Harmless Warnings

| Warning ID | Message | Action |
|---|---|---|
| IP_Flow 19-11889 | HDL Parameter Order is obsolete | Ignore |
| IP_Flow 19-5905 | Files not below IP definition | Ensure `plpuf_core.v` is in `hdl/` |
| IP_Flow 19-11770 | Clock interface has no FREQ_HZ | Set FREQ_HZ per §6.1 |

### 6.3. File References

All HDL files must be inside `axi_plpuf_1_0/hdl/`:
- `plpuf_core.v` (NOT in `edit_*.srcs/sim_1/new/`)
- `axi_plpuf_slave_lite_v1_0_S00_AXI.v`
- `axi_plpuf.v`

---

## 7. Validation Results (Basys 3, Artix-7)

### 7.1. test_app1 — Basic Validation

| Test | Result |
|------|--------|
| Register R/W (DURATION, CHAL) | PASS |
| RESP registers are read-only | PASS |
| Single evaluation (non-zero response) | PASS |
| Repeatability (same challenge, c=5) | FAIL (expected — BER ~5%) |
| Different challenge → different response | PASS |
| Duration sweep (c=1..10) | Responses vary with c |

### 7.2. test_app2 — Exhaustive Intra-Device Validation

**Configuration:** 20 challenges × 50 repetitions × 10 durations

#### Duration Sweep Results

| c  | Uniformity | Reliability | BER    | Intra-HD | Inter-HD  |
|----|-----------|-------------|--------|----------|-----------|
| 1  | 47.10%    | 99.06%      | 0.94%  | 1.36     | 48.51%    |
| 2  | 48.78%    | 97.78%      | 2.22%  | 3.76     | 45.99%    |
| 3  | 47.77%    | 97.18%      | 2.82%  | 4.50     | 45.62%    |
| 4  | 49.25%    | 94.99%      | 5.01%  | 6.70     | 44.23%    |
| 5  | 49.92%    | 94.35%      | 5.65%  | 8.92     | 42.61%    |
| 6  | 50.97%    | 93.94%      | 6.06%  | 9.28     | 41.94%    |
| 7  | 47.53%    | 92.95%      | 7.05%  | 11.11    | 40.88%    |
| 8  | 50.00%    | 90.60%      | 9.40%  | 12.51    | 39.37%    |
| 9  | 48.63%    | 90.29%      | 9.71%  | 14.74    | 39.46%    |
| 10 | 49.72%    | 88.65%      | 11.35% | 16.28    | 37.84%    |

#### Key Metrics Summary

| Metric | Value | Assessment |
|--------|-------|-----------|
| Uniformity | 47–51% across all c | Excellent (ideal 50%) |
| Reliability (c=3) | 97.18% | Very good |
| BER (c=3) | 2.82% | Consistent with literature |
| Stable bits (c=5) | 56/128 (≥95% reliable) | Good core for fingerprinting |
| Noisy bits (c=5) | 1/128 (<80% reliable) | Minimal |
| Avalanche effect | 5.05% | Low (known PLPUF limitation) |

#### Key Observations

1. **Uniformity** is near-ideal across all durations.
2. **Reliability decreases** as duration increases (trade-off with uniqueness).
3. **Inter-challenge HD decreases** with duration — the PLPUF "forgets" the
   challenge and converges toward a device-specific pattern.
4. **Avalanche is low** (5%) — expected for LFSR-based structure with limited
   diffusion at c=5. The PLPUF is not a hash function.
5. **Recommended operating point:** c=3–5 for device identification.

---

## 8. Vivado Build Flow

1. Open `vivado-axi-plpuf/vivado-axi-plpuf.xpr`
2. IP Catalog should find `ip_repo/axi_plpuf_1_0` automatically
3. Block Design: MicroBlaze V + SmartConnect + PLPUF + UART + ClkWiz + BRAM
4. Generate Block Design → Run Synthesis → Run Implementation → Generate Bitstream
5. Export Hardware (.xsa) for Vitis

**DRC note:** The combinational loop DRC (`LUTLP-1`) is expected and resolved
by the XDC constraints. The bitstream generates successfully.

---

## 9. Vitis Build Flow

1. Create platform from `.xsa` file
2. Create application project targeting MicroBlaze V
3. Copy `axi_plpuf.h` and `axi_plpuf.c` to the app's `src/` folder
4. Build and program FPGA
5. Open serial terminal at 9600 baud

---

## 10. Pending / Future Work

- [ ] Inter-device evaluation (run same tests on additional Basys 3 boards)
- [ ] Majority voting implementation for stable key extraction
- [ ] Fuzzy extractor (BCH code + helper data) for cryptographic key generation
- [ ] FAR/FRR analysis with intra-device + inter-device HD distributions
- [ ] Placement constraints (`pblock`) for reproducibility across compilations
- [ ] Python analysis scripts for offline statistical processing of UART data
- [ ] README.md for the GitHub repository
