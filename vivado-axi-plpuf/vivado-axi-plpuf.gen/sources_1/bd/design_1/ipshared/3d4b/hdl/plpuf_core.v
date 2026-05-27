`timescale 1 ns / 1 ps

// ============================================================================
// Module:  plpuf_core
// Project: TFG - Design and Integration of a Programmable PLPUF Module
//          for Embedded Systems
// Author:  Emanuel Antonio Marin Gutierrez
//
// Description:
//   Pseudo-LFSR Physical Unclonable Function (PLPUF) core module.
//
//   Implements a combinational inverter chain arranged in a feedback loop
//   topology inspired by a Fibonacci LFSR. When activated, the loop
//   oscillates freely at a frequency determined by the cumulative
//   propagation delays of each inverter and XOR gate - delays that are
//   unique to each fabricated chip due to manufacturing variations.
//
//   Default primitive polynomial: x^128 + x^126 + x^102 + x^99 + 1
//   XOR tap positions (0-indexed): 125, 101, 98
//
//   Operation cycle:
//     1. Software writes a 128-bit challenge and an activation duration.
//     2. A single-cycle start pulse initiates the evaluation.
//     3. The FSM loads the challenge (enable=0), activates the
//        combinational loop (enable=1) for 'activation_duration' clock
//        cycles, then captures the oscillating state into flip-flops.
//     4. The 'done' output pulses for one cycle; 'response' holds the
//        captured 128-bit value until the next evaluation.
//
//   IMPORTANT - FPGA constraints required for correct synthesis:
//     - ALLOW_COMBINATORIAL_LOOPS on core_out nets
//     - DONT_TOUCH on gen_core cells
//     - set_false_path through core_out nets
//
// Parameters:
//   WIDTH         - PLPUF bit width (default 128)
//   DURATION_BITS - Counter width for activation duration (default 16)
//   TAP_1/2/3     - Polynomial tap positions (0-indexed)
// ============================================================================

(* DONT_TOUCH = "TRUE" *)
module plpuf_core #(
    parameter integer WIDTH         = 128,
    parameter integer DURATION_BITS = 16,
    parameter integer TAP_1         = 125,  // x^126 tap
    parameter integer TAP_2         = 101,  // x^102 tap
    parameter integer TAP_3         = 98    // x^99  tap
)(
    input  wire                      clk,
    input  wire                      rst_n,
    input  wire [WIDTH-1:0]          challenge,
    input  wire [DURATION_BITS-1:0]  activation_duration,
    input  wire                      start,
    output reg  [WIDTH-1:0]          response,
    output reg                       done,
    output reg                       busy
);

    // =========================================================================
    // FSM States
    // =========================================================================
    localparam [1:0] S_IDLE   = 2'd0;
    localparam [1:0] S_LOAD   = 2'd1;
    localparam [1:0] S_ACTIVE = 2'd2;
    localparam [1:0] S_DONE   = 2'd3;

    reg [1:0]               state;
    reg                     enable;   // MUX select: 0 = challenge, 1 = feedback
    reg [DURATION_BITS-1:0] counter;

    // =========================================================================
    // Combinational Core - 128 inverter + MUX cells with feedback
    //
    // Signal flow when enable = 1:
    //
    //   core_out[0] -> core_in[127] -> INV -> core_out[127] ->
    //   core_in[126] -> INV -> core_out[126] -> ... ->
    //   core_in[0] -> INV -> core_out[0]   (loop closes)
    //
    // At tap positions the feedback is XOR'd with core_out[0].
    // =========================================================================

    (* DONT_TOUCH = "TRUE" *)
    wire [WIDTH-1:0] core_in;

    (* DONT_TOUCH = "TRUE" *)
    wire [WIDTH-1:0] core_out;

    genvar gi;
    generate
        for (gi = 0; gi < WIDTH; gi = gi + 1) begin : gen_core

            // ----- Feedback routing -----
            wire feedback;

            if (gi == WIDTH - 1) begin : fb_main
                // Bit 127 receives the main feedback from bit 0 (closes loop)
                assign feedback = core_out[0];
            end
            else if (gi == TAP_1 || gi == TAP_2 || gi == TAP_3) begin : fb_tap
                // Polynomial tap: XOR the upper neighbor with bit 0
                assign feedback = core_out[gi + 1] ^ core_out[0];
            end
            else begin : fb_std
                // Standard connection: receive output of upper neighbor
                assign feedback = core_out[gi + 1];
            end

            // ----- MUX: select challenge (load phase) or feedback (run phase)
            assign core_in[gi] = enable ? feedback : challenge[gi];

            // ----- Inverter: the PUF-critical element -----
            // Manufacturing variations in each inverter's propagation delay
            // produce a device-unique response when the loop is sampled.
            (* DONT_TOUCH = "TRUE" *)
            assign core_out[gi] = ~core_in[gi];

        end
    endgenerate

    // =========================================================================
    // FSM - Controls the three-phase operation cycle
    //
    //   IDLE --(start)-> LOAD -> ACTIVE --(counter done)-> DONE -> IDLE
    //
    // The response is sampled during S_ACTIVE on the last oscillation cycle,
    // while enable is still 1.  Because non-blocking assignments read the
    // CURRENT combinational value of core_out before enable transitions to 0,
    // the captured state correctly reflects the oscillating loop.
    // =========================================================================

    always @(posedge clk) begin
        if (!rst_n) begin
            state    <= S_IDLE;
            enable   <= 1'b0;
            counter  <= {DURATION_BITS{1'b0}};
            response <= {WIDTH{1'b0}};
            done     <= 1'b0;
            busy     <= 1'b0;
        end
        else begin
            done <= 1'b0;  // 'done' is a single-cycle pulse

            case (state)
                // ---------------------------------------------------------
                S_IDLE: begin
                    if (start) begin
                        busy    <= 1'b1;
                        enable  <= 1'b0;
                        counter <= {DURATION_BITS{1'b0}};
                        state   <= S_LOAD;
                    end
                end

                // ---------------------------------------------------------
                // One cycle with enable = 0 so the challenge propagates
                // through the inverters and the core settles.
                S_LOAD: begin
                    enable <= 1'b1;
                    state  <= S_ACTIVE;
                end

                // ---------------------------------------------------------
                // Oscillation phase.  The loop runs for exactly
                // 'activation_duration' clock cycles.
                S_ACTIVE: begin
                    if (counter == activation_duration - 1'b1) begin
                        response <= core_out;  // sample while enable = 1
                        enable   <= 1'b0;
                        state    <= S_DONE;
                    end
                    else begin
                        counter <= counter + 1'b1;
                    end
                end

                // ---------------------------------------------------------
                S_DONE: begin
                    done  <= 1'b1;
                    busy  <= 1'b0;
                    state <= S_IDLE;
                end
            endcase
        end
    end

endmodule
