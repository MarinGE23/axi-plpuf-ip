`timescale 1 ns / 1 ps

// ============================================================================
// Module:  axi_plpuf_slave_lite_v1_0_S00_AXI
// Project: TFG - Design and Integration of a Programmable PLPUF Module
//          for Embedded Systems
// Author:  Emanuel Antonio Marin Gutierrez
//
// Description:
//   AXI4-Lite slave interface for the PLPUF IP core.
//   Instantiates the plpuf_core and maps its I/O to memory-mapped registers
//   accessible by the MicroBlaze V processor.
//
// Register Map (active registers - 11 of 16 slots used):
//
//   Offset  Name      R/W   Description
//   ------  --------  ----  -----------------------------------------------
//   0x00    CTRL      R/W   [0] start (auto-clear)  [1] soft_reset (auto-clear)
//   0x04    STATUS    R     [0] busy                 [1] done (sticky)
//   0x08    DURATION  R/W   [15:0] activation duration in clock cycles
//   0x0C    CHAL_0    R/W   Challenge bits  [31:0]
//   0x10    CHAL_1    R/W   Challenge bits  [63:32]
//   0x14    CHAL_2    R/W   Challenge bits  [95:64]
//   0x18    CHAL_3    R/W   Challenge bits [127:96]
//   0x1C    RESP_0    R     Response  bits  [31:0]
//   0x20    RESP_1    R     Response  bits  [63:32]
//   0x24    RESP_2    R     Response  bits  [95:64]
//   0x28    RESP_3    R     Response  bits [127:96]
//   0x2C-   (spare)   R/W   Reserved for future use
//   0x3C
//
// Software usage flow:
//   1. Write challenge to CHAL_0 .. CHAL_3
//   2. Write activation duration to DURATION
//   3. Write 0x01 to CTRL (triggers start, auto-clears)
//   4. Poll STATUS until bit 1 (done) == 1
//   5. Read RESP_0 .. RESP_3
// ============================================================================

module axi_plpuf_slave_lite_v1_0_S00_AXI #(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 6
)(
    input  wire                                S_AXI_ACLK,
    input  wire                                S_AXI_ARESETN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0]       S_AXI_AWADDR,
    input  wire [2:0]                          S_AXI_AWPROT,
    input  wire                                S_AXI_AWVALID,
    output wire                                S_AXI_AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0]       S_AXI_WDATA,
    input  wire [(C_S_AXI_DATA_WIDTH/8)-1:0]   S_AXI_WSTRB,
    input  wire                                S_AXI_WVALID,
    output wire                                S_AXI_WREADY,
    output wire [1:0]                          S_AXI_BRESP,
    output wire                                S_AXI_BVALID,
    input  wire                                S_AXI_BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0]       S_AXI_ARADDR,
    input  wire [2:0]                          S_AXI_ARPROT,
    input  wire                                S_AXI_ARVALID,
    output wire                                S_AXI_ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0]       S_AXI_RDATA,
    output wire [1:0]                          S_AXI_RRESP,
    output wire                                S_AXI_RVALID,
    input  wire                                S_AXI_RREADY
);

    // =========================================================================
    // Address decoding constants
    // =========================================================================
    localparam integer ADDR_LSB          = (C_S_AXI_DATA_WIDTH / 32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 3;

    // =========================================================================
    // AXI handshake registers
    // =========================================================================
    reg [C_S_AXI_ADDR_WIDTH-1:0] axi_awaddr;
    reg                          axi_awready;
    reg                          axi_wready;
    reg [1:0]                    axi_bresp;
    reg                          axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1:0] axi_araddr;
    reg                          axi_arready;
    reg [1:0]                    axi_rresp;
    reg                          axi_rvalid;

    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;

    // =========================================================================
    // Slave registers (16 x 32-bit)
    //
    //  Reg   Offset  Name      Access
    //  0     0x00    CTRL      R/W   bit0=start(auto-clear) bit1=soft_rst(auto-clear)
    //  1     0x04    STATUS    R     bit0=busy, bit1=done(sticky)
    //  2     0x08    DURATION  R/W   [15:0] activation duration
    //  3     0x0C    CHAL_0    R/W   challenge[ 31: 0]
    //  4     0x10    CHAL_1    R/W   challenge[ 63:32]
    //  5     0x14    CHAL_2    R/W   challenge[ 95:64]
    //  6     0x18    CHAL_3    R/W   challenge[127:96]
    //  7     0x1C    RESP_0    R     response [ 31: 0]
    //  8     0x20    RESP_1    R     response [ 63:32]
    //  9     0x24    RESP_2    R     response [ 95:64]
    //  10    0x28    RESP_3    R     response [127:96]
    //  11-15 0x2C+   (spare)   R/W
    // =========================================================================
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg1;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg2;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg3;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg4;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg5;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg6;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg7;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg8;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg9;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg10;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg11;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg12;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg13;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg14;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg15;
    integer byte_index;

    // =========================================================================
    // PLPUF core signals
    // =========================================================================
    wire [127:0] plpuf_challenge;
    wire [15:0]  plpuf_duration;
    wire         plpuf_start;
    wire         plpuf_rst_n;
    wire [127:0] plpuf_response;
    wire         plpuf_busy;
    wire         plpuf_done;
    reg          done_flag;

    assign plpuf_challenge = {slv_reg6, slv_reg5, slv_reg4, slv_reg3};
    assign plpuf_duration  = slv_reg2[15:0];
    assign plpuf_start     = slv_reg0[0];
    assign plpuf_rst_n     = S_AXI_ARESETN & ~slv_reg0[1];

    // =========================================================================
    // PLPUF core instance
    // =========================================================================
    plpuf_core #(
        .WIDTH         (128),
        .DURATION_BITS (16),
        .TAP_1         (125),
        .TAP_2         (101),
        .TAP_3         (98)
    ) plpuf_core_inst (
        .clk                 (S_AXI_ACLK),
       .rst_n               (plpuf_rst_n),
        .challenge           (plpuf_challenge),
        .activation_duration (plpuf_duration),
        .start               (plpuf_start),
        .response            (plpuf_response),
       .done                (plpuf_done),
        .busy                (plpuf_busy)
    );

    // =========================================================================
    // Sticky done flag
    // Set when plpuf_done pulses; cleared when a new start is issued.
    // =========================================================================
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN)
            done_flag <= 1'b0;
        else if (slv_reg0[0] || slv_reg0[1])
            done_flag <= 1'b0;
        else if (plpuf_done)
            done_flag <= 1'b1;
    end

    // =========================================================================
    // Write state machine (from Vivado template - unchanged)
    // =========================================================================
    reg [1:0] state_write;
    reg [1:0] state_read;
    localparam Idle = 2'b00, Raddr = 2'b10, Rdata = 2'b11,
               Waddr = 2'b10, Wdata = 2'b11;

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_awready  <= 0;
            axi_wready   <= 0;
            axi_bvalid   <= 0;
            axi_bresp    <= 0;
            axi_awaddr   <= 0;
            state_write  <= Idle;
        end
        else begin
            case (state_write)
                Idle: begin
                    if (S_AXI_ARESETN == 1'b1) begin
                        axi_awready <= 1'b1;
                        axi_wready  <= 1'b1;
                        state_write <= Waddr;
                    end
                end
                Waddr: begin
                    if (S_AXI_AWVALID && S_AXI_AWREADY) begin
                        axi_awaddr <= S_AXI_AWADDR;
                        if (S_AXI_WVALID) begin
                            axi_awready <= 1'b1;
                            state_write <= Waddr;
                            axi_bvalid  <= 1'b1;
                        end
                        else begin
                            axi_awready <= 1'b0;
                            state_write <= Wdata;
                            if (S_AXI_BREADY && axi_bvalid)
                                axi_bvalid <= 1'b0;
                        end
                    end
                    else begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid)
                            axi_bvalid <= 1'b0;
                    end
                end
                Wdata: begin
                    if (S_AXI_WVALID) begin
                        state_write <= Waddr;
                        axi_bvalid  <= 1'b1;
                        axi_awready <= 1'b1;
                    end
                    else begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid)
                            axi_bvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    // =========================================================================
    // Register write logic
    //
    // Three priority layers applied sequentially via non-blocking assigns:
    //   1. Auto-clear CTRL bits [1:0]          (lowest - applied first)
    //   2. AXI write from master               (middle - overrides 1)
    //   3. Hardware-driven STATUS & RESP regs   (highest - applied last)
    // =========================================================================
    wire [OPT_MEM_ADDR_BITS:0] wr_addr;
    assign wr_addr = (S_AXI_AWVALID)
        ? S_AXI_AWADDR[ADDR_LSB + OPT_MEM_ADDR_BITS : ADDR_LSB]
        : axi_awaddr[ADDR_LSB + OPT_MEM_ADDR_BITS : ADDR_LSB];

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg0  <= 0;  slv_reg1  <= 0;  slv_reg2  <= 0;  slv_reg3  <= 0;
            slv_reg4  <= 0;  slv_reg5  <= 0;  slv_reg6  <= 0;  slv_reg7  <= 0;
            slv_reg8  <= 0;  slv_reg9  <= 0;  slv_reg10 <= 0;  slv_reg11 <= 0;
            slv_reg12 <= 0;  slv_reg13 <= 0;  slv_reg14 <= 0;  slv_reg15 <= 0;
        end
        else begin
            // --- Layer 1: auto-clear start & soft_reset bits ---
            slv_reg0[1:0] <= 2'b00;

            // --- Layer 2: AXI master writes ---
            if (S_AXI_WVALID) begin
                case (wr_addr)
                    4'h0: // CTRL - auto-clear overridden by this write for 1 cycle
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    // 4'h1: STATUS - read-only (driven by Layer 3)
                    4'h2: // DURATION
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    4'h3: // CHAL_0
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    4'h4: // CHAL_1
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    4'h5: // CHAL_2
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    4'h6: // CHAL_3
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    // 4'h7-4'hA: RESP_0..3 - read-only (driven by Layer 3)
                    4'hB:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    4'hC:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    4'hD:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    4'hE:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    4'hF:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    default: ;
                endcase
            end

            // --- Layer 3: hardware-driven registers (highest priority) ---
            slv_reg1  <= {30'b0, done_flag, plpuf_busy};
            slv_reg7  <= plpuf_response[31:0];
            slv_reg8  <= plpuf_response[63:32];
            slv_reg9  <= plpuf_response[95:64];
            slv_reg10 <= plpuf_response[127:96];
        end
    end

    // =========================================================================
    // Read state machine (from Vivado template - unchanged)
    // =========================================================================
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_arready <= 1'b0;
            axi_rvalid  <= 1'b0;
            axi_rresp   <= 1'b0;
            state_read  <= Idle;
        end
        else begin
            case (state_read)
                Idle: begin
                    if (S_AXI_ARESETN == 1'b1) begin
                        state_read  <= Raddr;
                        axi_arready <= 1'b1;
                    end
                end
                Raddr: begin
                    if (S_AXI_ARVALID && S_AXI_ARREADY) begin
                        state_read  <= Rdata;
                        axi_araddr  <= S_AXI_ARADDR;
                        axi_rvalid  <= 1'b1;
                        axi_arready <= 1'b0;
                    end
                end
                Rdata: begin
                    if (S_AXI_RVALID && S_AXI_RREADY) begin
                        axi_rvalid  <= 1'b0;
                        axi_arready <= 1'b1;
                        state_read  <= Raddr;
                    end
                end
            endcase
        end
    end

    // =========================================================================
    // Read data mux - returns register value based on read address
    // =========================================================================
    wire [OPT_MEM_ADDR_BITS:0] rd_addr;
    assign rd_addr = axi_araddr[ADDR_LSB + OPT_MEM_ADDR_BITS : ADDR_LSB];

    assign S_AXI_RDATA =
        (rd_addr == 4'h0) ? slv_reg0  :
        (rd_addr == 4'h1) ? slv_reg1  :
        (rd_addr == 4'h2) ? slv_reg2  :
        (rd_addr == 4'h3) ? slv_reg3  :
        (rd_addr == 4'h4) ? slv_reg4  :
        (rd_addr == 4'h5) ? slv_reg5  :
        (rd_addr == 4'h6) ? slv_reg6  :
        (rd_addr == 4'h7) ? slv_reg7  :
        (rd_addr == 4'h8) ? slv_reg8  :
        (rd_addr == 4'h9) ? slv_reg9  :
        (rd_addr == 4'hA) ? slv_reg10 :
        (rd_addr == 4'hB) ? slv_reg11 :
        (rd_addr == 4'hC) ? slv_reg12 :
        (rd_addr == 4'hD) ? slv_reg13 :
        (rd_addr == 4'hE) ? slv_reg14 :
        (rd_addr == 4'hF) ? slv_reg15 :
        32'h0;

endmodule
