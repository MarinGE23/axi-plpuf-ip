// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Apr  2 01:10:21 2026
// Host        : Emanuel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/emari/Desktop/axi-plpuf-ip/vivado-axi-plpuf/vivado-axi-plpuf.gen/sources_1/bd/design_1/ip/design_1_axi_plpuf_0_0/design_1_axi_plpuf_0_0_sim_netlist.v
// Design      : design_1_axi_plpuf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_plpuf_0_0,axi_plpuf,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_plpuf,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_axi_plpuf_0_0
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_plpuf_0_0_axi_plpuf inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_plpuf" *) 
module design_1_axi_plpuf_0_0_axi_plpuf
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input [3:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire axi_arready_i_1_n_0;
  wire axi_arready_reg;
  wire axi_awready0__0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg;
  wire axi_wready_i_1_n_0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]state_read;
  wire [1:0]state_write;

  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  LUT5 #(
    .INIT(32'hCCC4FFCF)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_2_n_0));
  LUT6 #(
    .INIT(64'hFBFF3838C3FF0000)) 
    axi_bvalid_i_1
       (.I0(axi_awready0__0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  design_1_axi_plpuf_0_0_axi_plpuf_slave_lite_v1_0_S00_AXI axi_plpuf_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_arready_reg_1(axi_arready_i_1_n_0),
        .axi_awready0__0(axi_awready0__0),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_awready_reg_1(axi_awready_i_2_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(axi_wready_i_1_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .state_read(state_read),
        .state_write(state_write));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg),
        .O(axi_rvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "axi_plpuf_slave_lite_v1_0_S00_AXI" *) 
module design_1_axi_plpuf_0_0_axi_plpuf_slave_lite_v1_0_S00_AXI
   (s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    state_write,
    state_read,
    axi_awready0__0,
    s00_axi_rdata,
    s00_axi_aclk,
    axi_bvalid_reg_0,
    axi_awready_reg_1,
    axi_wready_reg_0,
    axi_rvalid_reg_1,
    axi_arready_reg_1,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_araddr,
    s00_axi_aresetn);
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [1:0]state_write;
  output [1:0]state_read;
  output axi_awready0__0;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input axi_bvalid_reg_0;
  input axi_awready_reg_1;
  input axi_wready_reg_0;
  input axi_rvalid_reg_1;
  input axi_arready_reg_1;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input [3:0]s00_axi_araddr;
  input s00_axi_aresetn;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire axi_arready_reg_0;
  wire axi_arready_reg_1;
  wire axi_awaddr;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_awready_reg_1;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_reg_0;
  wire axi_rvalid_reg_1;
  wire axi_wready_reg_0;
  wire done_flag;
  wire done_flag_i_1_n_0;
  wire p_0_in;
  wire plpuf_busy;
  wire [127:0]plpuf_challenge;
  wire plpuf_done;
  wire [127:0]plpuf_response;
  wire plpuf_rst_n;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_6_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]sel0;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[1]_i_1_n_0 ;
  wire \slv_reg0[1]_i_2_n_0 ;
  wire \slv_reg0[1]_i_3_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg10;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:0]slv_reg12;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire [31:0]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire [15:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:16]slv_reg2__0;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire [31:0]slv_reg8;
  wire [31:0]slv_reg9;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire [3:0]wr_addr__3;

  LUT6 #(
    .INIT(64'hF0FFFFFF8F8F8F8F)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(state_read[1]),
        .I3(axi_arready_reg_0),
        .I4(s00_axi_arvalid),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F800F0F0F0)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Raddr:01,Rdata:10" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Raddr:01,Rdata:10" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[5]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[5]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[5]_i_1_n_0 ),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_1),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_awaddr[5]_i_1 
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .O(axi_awaddr));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[0]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[1]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[2]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[3]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_reg_1),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_1),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h000000E0)) 
    done_flag_i_1
       (.I0(done_flag),
        .I1(plpuf_done),
        .I2(s00_axi_aresetn),
        .I3(\slv_reg0_reg_n_0_[0] ),
        .I4(p_0_in),
        .O(done_flag_i_1_n_0));
  FDRE done_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(done_flag_i_1_n_0),
        .Q(done_flag),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* DURATION_BITS = "16" *) 
  (* S_ACTIVE = "2'b10" *) 
  (* S_DONE = "2'b11" *) 
  (* S_IDLE = "2'b00" *) 
  (* S_LOAD = "2'b01" *) 
  (* TAP_1 = "125" *) 
  (* TAP_2 = "101" *) 
  (* TAP_3 = "98" *) 
  (* WIDTH = "128" *) 
  design_1_axi_plpuf_0_0_plpuf_core plpuf_core_inst
       (.activation_duration(slv_reg2),
        .busy(plpuf_busy),
        .challenge(plpuf_challenge),
        .clk(s00_axi_aclk),
        .done(plpuf_done),
        .response(plpuf_response),
        .rst_n(plpuf_rst_n),
        .start(\slv_reg0_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    plpuf_core_inst_i_1
       (.I0(s00_axi_aresetn),
        .I1(p_0_in),
        .O(plpuf_rst_n));
  MUXF8 \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[0]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\s00_axi_rdata[0]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(plpuf_challenge[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_4 
       (.I0(slv_reg7[0]),
        .I1(plpuf_challenge[96]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[64]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[32]),
        .O(\s00_axi_rdata[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_5 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(sel0[1]),
        .I3(slv_reg9[0]),
        .I4(sel0[0]),
        .I5(slv_reg8[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_6 
       (.I0(slv_reg15[0]),
        .I1(slv_reg14[0]),
        .I2(sel0[1]),
        .I3(slv_reg13[0]),
        .I4(sel0[0]),
        .I5(slv_reg12[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[10]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(\s00_axi_rdata[10]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\s00_axi_rdata[10]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[10]_INST_0_i_3 
       (.I0(plpuf_challenge[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[10] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_4 
       (.I0(slv_reg7[10]),
        .I1(plpuf_challenge[106]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[74]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[42]),
        .O(\s00_axi_rdata[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_5 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_6 
       (.I0(slv_reg15[10]),
        .I1(slv_reg14[10]),
        .I2(sel0[1]),
        .I3(slv_reg13[10]),
        .I4(sel0[0]),
        .I5(slv_reg12[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[11]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(\s00_axi_rdata[11]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(\s00_axi_rdata[11]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[11]_INST_0_i_3 
       (.I0(plpuf_challenge[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[11] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_4 
       (.I0(slv_reg7[11]),
        .I1(plpuf_challenge[107]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[75]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[43]),
        .O(\s00_axi_rdata[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_5 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_6 
       (.I0(slv_reg15[11]),
        .I1(slv_reg14[11]),
        .I2(sel0[1]),
        .I3(slv_reg13[11]),
        .I4(sel0[0]),
        .I5(slv_reg12[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[12]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(\s00_axi_rdata[12]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(\s00_axi_rdata[12]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[12]_INST_0_i_3 
       (.I0(plpuf_challenge[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[12] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_4 
       (.I0(slv_reg7[12]),
        .I1(plpuf_challenge[108]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[76]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[44]),
        .O(\s00_axi_rdata[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_5 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_6 
       (.I0(slv_reg15[12]),
        .I1(slv_reg14[12]),
        .I2(sel0[1]),
        .I3(slv_reg13[12]),
        .I4(sel0[0]),
        .I5(slv_reg12[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[13]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(\s00_axi_rdata[13]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(\s00_axi_rdata[13]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[13]_INST_0_i_3 
       (.I0(plpuf_challenge[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_4 
       (.I0(slv_reg7[13]),
        .I1(plpuf_challenge[109]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[77]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[45]),
        .O(\s00_axi_rdata[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_5 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_6 
       (.I0(slv_reg15[13]),
        .I1(slv_reg14[13]),
        .I2(sel0[1]),
        .I3(slv_reg13[13]),
        .I4(sel0[0]),
        .I5(slv_reg12[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[14]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\s00_axi_rdata[14]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(\s00_axi_rdata[14]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[14]_INST_0_i_3 
       (.I0(plpuf_challenge[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[14] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_4 
       (.I0(slv_reg7[14]),
        .I1(plpuf_challenge[110]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[78]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[46]),
        .O(\s00_axi_rdata[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_5 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_6 
       (.I0(slv_reg15[14]),
        .I1(slv_reg14[14]),
        .I2(sel0[1]),
        .I3(slv_reg13[14]),
        .I4(sel0[0]),
        .I5(slv_reg12[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[15]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(\s00_axi_rdata[15]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(\s00_axi_rdata[15]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[15]_INST_0_i_3 
       (.I0(plpuf_challenge[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[15] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_4 
       (.I0(slv_reg7[15]),
        .I1(plpuf_challenge[111]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[79]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[47]),
        .O(\s00_axi_rdata[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_5 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_6 
       (.I0(slv_reg15[15]),
        .I1(slv_reg14[15]),
        .I2(sel0[1]),
        .I3(slv_reg13[15]),
        .I4(sel0[0]),
        .I5(slv_reg12[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[16]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(\s00_axi_rdata[16]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(\s00_axi_rdata[16]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[16]_INST_0_i_3 
       (.I0(plpuf_challenge[16]),
        .I1(slv_reg2__0[16]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[16] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_4 
       (.I0(slv_reg7[16]),
        .I1(plpuf_challenge[112]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[80]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[48]),
        .O(\s00_axi_rdata[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_5 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_6 
       (.I0(slv_reg15[16]),
        .I1(slv_reg14[16]),
        .I2(sel0[1]),
        .I3(slv_reg13[16]),
        .I4(sel0[0]),
        .I5(slv_reg12[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[17]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(\s00_axi_rdata[17]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(\s00_axi_rdata[17]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[17]_INST_0_i_3 
       (.I0(plpuf_challenge[17]),
        .I1(slv_reg2__0[17]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[17] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_4 
       (.I0(slv_reg7[17]),
        .I1(plpuf_challenge[113]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[81]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[49]),
        .O(\s00_axi_rdata[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_5 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_6 
       (.I0(slv_reg15[17]),
        .I1(slv_reg14[17]),
        .I2(sel0[1]),
        .I3(slv_reg13[17]),
        .I4(sel0[0]),
        .I5(slv_reg12[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[18]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(\s00_axi_rdata[18]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(\s00_axi_rdata[18]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[18]_INST_0_i_3 
       (.I0(plpuf_challenge[18]),
        .I1(slv_reg2__0[18]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[18] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_4 
       (.I0(slv_reg7[18]),
        .I1(plpuf_challenge[114]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[82]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[50]),
        .O(\s00_axi_rdata[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_5 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_6 
       (.I0(slv_reg15[18]),
        .I1(slv_reg14[18]),
        .I2(sel0[1]),
        .I3(slv_reg13[18]),
        .I4(sel0[0]),
        .I5(slv_reg12[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[19]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(\s00_axi_rdata[19]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[19]_INST_0_i_3 
       (.I0(plpuf_challenge[19]),
        .I1(slv_reg2__0[19]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[19] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_4 
       (.I0(slv_reg7[19]),
        .I1(plpuf_challenge[115]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[83]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[51]),
        .O(\s00_axi_rdata[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_5 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_6 
       (.I0(slv_reg15[19]),
        .I1(slv_reg14[19]),
        .I2(sel0[1]),
        .I3(slv_reg13[19]),
        .I4(sel0[0]),
        .I5(slv_reg12[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[1]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\s00_axi_rdata[1]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_3 
       (.I0(plpuf_challenge[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(sel0[0]),
        .I5(p_0_in),
        .O(\s00_axi_rdata[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_4 
       (.I0(slv_reg7[1]),
        .I1(plpuf_challenge[97]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[65]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[33]),
        .O(\s00_axi_rdata[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_5 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(sel0[1]),
        .I3(slv_reg9[1]),
        .I4(sel0[0]),
        .I5(slv_reg8[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_6 
       (.I0(slv_reg15[1]),
        .I1(slv_reg14[1]),
        .I2(sel0[1]),
        .I3(slv_reg13[1]),
        .I4(sel0[0]),
        .I5(slv_reg12[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[20]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(\s00_axi_rdata[20]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[20]_INST_0_i_3 
       (.I0(plpuf_challenge[20]),
        .I1(slv_reg2__0[20]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[20] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_4 
       (.I0(slv_reg7[20]),
        .I1(plpuf_challenge[116]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[84]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[52]),
        .O(\s00_axi_rdata[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_5 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_6 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(slv_reg13[20]),
        .I4(sel0[0]),
        .I5(slv_reg12[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[21]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(\s00_axi_rdata[21]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(\s00_axi_rdata[21]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[21]_INST_0_i_3 
       (.I0(plpuf_challenge[21]),
        .I1(slv_reg2__0[21]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[21] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_4 
       (.I0(slv_reg7[21]),
        .I1(plpuf_challenge[117]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[85]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[53]),
        .O(\s00_axi_rdata[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_5 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_6 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(slv_reg13[21]),
        .I4(sel0[0]),
        .I5(slv_reg12[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[22]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(\s00_axi_rdata[22]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(\s00_axi_rdata[22]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[22]_INST_0_i_3 
       (.I0(plpuf_challenge[22]),
        .I1(slv_reg2__0[22]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[22] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_4 
       (.I0(slv_reg7[22]),
        .I1(plpuf_challenge[118]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[86]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[54]),
        .O(\s00_axi_rdata[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_5 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_6 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(slv_reg13[22]),
        .I4(sel0[0]),
        .I5(slv_reg12[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[23]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(\s00_axi_rdata[23]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(\s00_axi_rdata[23]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[23]_INST_0_i_3 
       (.I0(plpuf_challenge[23]),
        .I1(slv_reg2__0[23]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[23] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_4 
       (.I0(slv_reg7[23]),
        .I1(plpuf_challenge[119]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[87]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[55]),
        .O(\s00_axi_rdata[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_5 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_6 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(slv_reg13[23]),
        .I4(sel0[0]),
        .I5(slv_reg12[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[24]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(\s00_axi_rdata[24]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(\s00_axi_rdata[24]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[24]_INST_0_i_3 
       (.I0(plpuf_challenge[24]),
        .I1(slv_reg2__0[24]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[24] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_4 
       (.I0(slv_reg7[24]),
        .I1(plpuf_challenge[120]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[88]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[56]),
        .O(\s00_axi_rdata[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_5 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_6 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(slv_reg13[24]),
        .I4(sel0[0]),
        .I5(slv_reg12[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[25]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(\s00_axi_rdata[25]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(\s00_axi_rdata[25]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[25]_INST_0_i_3 
       (.I0(plpuf_challenge[25]),
        .I1(slv_reg2__0[25]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[25] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_4 
       (.I0(slv_reg7[25]),
        .I1(plpuf_challenge[121]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[89]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[57]),
        .O(\s00_axi_rdata[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_5 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_6 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(slv_reg13[25]),
        .I4(sel0[0]),
        .I5(slv_reg12[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[26]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(\s00_axi_rdata[26]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[26]_INST_0_i_3 
       (.I0(plpuf_challenge[26]),
        .I1(slv_reg2__0[26]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[26] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_4 
       (.I0(slv_reg7[26]),
        .I1(plpuf_challenge[122]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[90]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[58]),
        .O(\s00_axi_rdata[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_5 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_6 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(slv_reg13[26]),
        .I4(sel0[0]),
        .I5(slv_reg12[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[27]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(\s00_axi_rdata[27]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(\s00_axi_rdata[27]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[27]_INST_0_i_3 
       (.I0(plpuf_challenge[27]),
        .I1(slv_reg2__0[27]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[27] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_4 
       (.I0(slv_reg7[27]),
        .I1(plpuf_challenge[123]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[91]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[59]),
        .O(\s00_axi_rdata[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_5 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_6 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(slv_reg13[27]),
        .I4(sel0[0]),
        .I5(slv_reg12[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[28]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(\s00_axi_rdata[28]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(\s00_axi_rdata[28]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[28]_INST_0_i_3 
       (.I0(plpuf_challenge[28]),
        .I1(slv_reg2__0[28]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[28] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_4 
       (.I0(slv_reg7[28]),
        .I1(plpuf_challenge[124]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[92]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[60]),
        .O(\s00_axi_rdata[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_5 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_6 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(slv_reg13[28]),
        .I4(sel0[0]),
        .I5(slv_reg12[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[29]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(\s00_axi_rdata[29]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(\s00_axi_rdata[29]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[29]_INST_0_i_3 
       (.I0(plpuf_challenge[29]),
        .I1(slv_reg2__0[29]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[29] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_4 
       (.I0(slv_reg7[29]),
        .I1(plpuf_challenge[125]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[93]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[61]),
        .O(\s00_axi_rdata[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_5 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_6 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(slv_reg13[29]),
        .I4(sel0[0]),
        .I5(slv_reg12[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[2]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\s00_axi_rdata[2]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[2]_INST_0_i_3 
       (.I0(plpuf_challenge[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[2] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_4 
       (.I0(slv_reg7[2]),
        .I1(plpuf_challenge[98]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[66]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[34]),
        .O(\s00_axi_rdata[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_5 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(sel0[1]),
        .I3(slv_reg9[2]),
        .I4(sel0[0]),
        .I5(slv_reg8[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_6 
       (.I0(slv_reg15[2]),
        .I1(slv_reg14[2]),
        .I2(sel0[1]),
        .I3(slv_reg13[2]),
        .I4(sel0[0]),
        .I5(slv_reg12[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[30]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(\s00_axi_rdata[30]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(\s00_axi_rdata[30]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[30]_INST_0_i_3 
       (.I0(plpuf_challenge[30]),
        .I1(slv_reg2__0[30]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[30] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_4 
       (.I0(slv_reg7[30]),
        .I1(plpuf_challenge[126]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[94]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[62]),
        .O(\s00_axi_rdata[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_5 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_6 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(slv_reg13[30]),
        .I4(sel0[0]),
        .I5(slv_reg12[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[31]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[31]_INST_0_i_3 
       (.I0(plpuf_challenge[31]),
        .I1(slv_reg2__0[31]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[31] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_4 
       (.I0(slv_reg7[31]),
        .I1(plpuf_challenge[127]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[95]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[63]),
        .O(\s00_axi_rdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_5 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_6 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(slv_reg13[31]),
        .I4(sel0[0]),
        .I5(slv_reg12[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[3]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\s00_axi_rdata[3]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[3]_INST_0_i_3 
       (.I0(plpuf_challenge[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[3] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_4 
       (.I0(slv_reg7[3]),
        .I1(plpuf_challenge[99]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[67]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[35]),
        .O(\s00_axi_rdata[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_5 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(sel0[1]),
        .I3(slv_reg9[3]),
        .I4(sel0[0]),
        .I5(slv_reg8[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_6 
       (.I0(slv_reg15[3]),
        .I1(slv_reg14[3]),
        .I2(sel0[1]),
        .I3(slv_reg13[3]),
        .I4(sel0[0]),
        .I5(slv_reg12[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[4]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\s00_axi_rdata[4]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[4]_INST_0_i_3 
       (.I0(plpuf_challenge[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[4] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_4 
       (.I0(slv_reg7[4]),
        .I1(plpuf_challenge[100]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[68]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[36]),
        .O(\s00_axi_rdata[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_5 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(sel0[1]),
        .I3(slv_reg9[4]),
        .I4(sel0[0]),
        .I5(slv_reg8[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_6 
       (.I0(slv_reg15[4]),
        .I1(slv_reg14[4]),
        .I2(sel0[1]),
        .I3(slv_reg13[4]),
        .I4(sel0[0]),
        .I5(slv_reg12[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[5]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(\s00_axi_rdata[5]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[5]_INST_0_i_3 
       (.I0(plpuf_challenge[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[5] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_4 
       (.I0(slv_reg7[5]),
        .I1(plpuf_challenge[101]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[69]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[37]),
        .O(\s00_axi_rdata[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_5 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(sel0[1]),
        .I3(slv_reg9[5]),
        .I4(sel0[0]),
        .I5(slv_reg8[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_6 
       (.I0(slv_reg15[5]),
        .I1(slv_reg14[5]),
        .I2(sel0[1]),
        .I3(slv_reg13[5]),
        .I4(sel0[0]),
        .I5(slv_reg12[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[6]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(\s00_axi_rdata[6]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[6]_INST_0_i_3 
       (.I0(plpuf_challenge[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[6] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_4 
       (.I0(slv_reg7[6]),
        .I1(plpuf_challenge[102]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[70]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[38]),
        .O(\s00_axi_rdata[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_5 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(sel0[1]),
        .I3(slv_reg9[6]),
        .I4(sel0[0]),
        .I5(slv_reg8[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_6 
       (.I0(slv_reg15[6]),
        .I1(slv_reg14[6]),
        .I2(sel0[1]),
        .I3(slv_reg13[6]),
        .I4(sel0[0]),
        .I5(slv_reg12[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[7]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[7]_INST_0_i_3 
       (.I0(plpuf_challenge[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[7] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_4 
       (.I0(slv_reg7[7]),
        .I1(plpuf_challenge[103]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[71]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[39]),
        .O(\s00_axi_rdata[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_5 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(sel0[1]),
        .I3(slv_reg9[7]),
        .I4(sel0[0]),
        .I5(slv_reg8[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_6 
       (.I0(slv_reg15[7]),
        .I1(slv_reg14[7]),
        .I2(sel0[1]),
        .I3(slv_reg13[7]),
        .I4(sel0[0]),
        .I5(slv_reg12[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[8]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\s00_axi_rdata[8]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\s00_axi_rdata[8]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[8]_INST_0_i_3 
       (.I0(plpuf_challenge[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[8] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_4 
       (.I0(slv_reg7[8]),
        .I1(plpuf_challenge[104]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[72]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[40]),
        .O(\s00_axi_rdata[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_5 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(sel0[1]),
        .I3(slv_reg9[8]),
        .I4(sel0[0]),
        .I5(slv_reg8[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_6 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(sel0[1]),
        .I3(slv_reg13[8]),
        .I4(sel0[0]),
        .I5(slv_reg12[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_6_n_0 ));
  MUXF8 \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .O(s00_axi_rdata[9]),
        .S(sel0[3]));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\s00_axi_rdata[9]_INST_0_i_3_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_4_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\s00_axi_rdata[9]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s00_axi_rdata[9]_INST_0_i_3 
       (.I0(plpuf_challenge[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(sel0[0]),
        .O(\s00_axi_rdata[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_4 
       (.I0(slv_reg7[9]),
        .I1(plpuf_challenge[105]),
        .I2(sel0[1]),
        .I3(plpuf_challenge[73]),
        .I4(sel0[0]),
        .I5(plpuf_challenge[41]),
        .O(\s00_axi_rdata[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_5 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(sel0[1]),
        .I3(slv_reg9[9]),
        .I4(sel0[0]),
        .I5(slv_reg8[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_6 
       (.I0(slv_reg15[9]),
        .I1(slv_reg14[9]),
        .I2(sel0[1]),
        .I3(slv_reg13[9]),
        .I4(sel0[0]),
        .I5(slv_reg12[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \slv_reg0[0]_i_1 
       (.I0(wr_addr__3[0]),
        .I1(wr_addr__3[3]),
        .I2(\slv_reg0[1]_i_2_n_0 ),
        .I3(s00_axi_wstrb[0]),
        .I4(s00_axi_wdata[0]),
        .I5(\slv_reg0[1]_i_3_n_0 ),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[0]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \slv_reg0[1]_i_1 
       (.I0(wr_addr__3[0]),
        .I1(wr_addr__3[3]),
        .I2(\slv_reg0[1]_i_2_n_0 ),
        .I3(s00_axi_wstrb[0]),
        .I4(s00_axi_wdata[1]),
        .I5(\slv_reg0[1]_i_3_n_0 ),
        .O(\slv_reg0[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \slv_reg0[1]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(s00_axi_awaddr[2]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg0[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \slv_reg0[1]_i_3 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_aresetn),
        .O(\slv_reg0[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[0]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[0]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(wr_addr__3[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_3 
       (.I0(s00_axi_awaddr[3]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[5] ),
        .O(wr_addr__3[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_4 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(wr_addr__3[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[31]_i_5 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .O(wr_addr__3[2]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[0]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[0]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[96]),
        .Q(slv_reg10[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[106]),
        .Q(slv_reg10[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[107]),
        .Q(slv_reg10[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[108]),
        .Q(slv_reg10[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[109]),
        .Q(slv_reg10[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[110]),
        .Q(slv_reg10[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[111]),
        .Q(slv_reg10[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[112]),
        .Q(slv_reg10[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[113]),
        .Q(slv_reg10[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[114]),
        .Q(slv_reg10[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[115]),
        .Q(slv_reg10[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[97]),
        .Q(slv_reg10[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[116]),
        .Q(slv_reg10[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[117]),
        .Q(slv_reg10[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[118]),
        .Q(slv_reg10[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[119]),
        .Q(slv_reg10[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[120]),
        .Q(slv_reg10[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[121]),
        .Q(slv_reg10[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[122]),
        .Q(slv_reg10[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[123]),
        .Q(slv_reg10[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[124]),
        .Q(slv_reg10[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[125]),
        .Q(slv_reg10[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[98]),
        .Q(slv_reg10[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[126]),
        .Q(slv_reg10[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[127]),
        .Q(slv_reg10[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[99]),
        .Q(slv_reg10[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[100]),
        .Q(slv_reg10[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[101]),
        .Q(slv_reg10[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[102]),
        .Q(slv_reg10[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[103]),
        .Q(slv_reg10[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[104]),
        .Q(slv_reg10[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[105]),
        .Q(slv_reg10[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[2]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[2]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[2]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(wr_addr__3[2]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(wr_addr__3[2]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(wr_addr__3[2]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(wr_addr__3[2]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg12[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg12[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg12[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg12[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg12[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg12[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg12[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg12[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg12[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg12[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg12[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg12[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg12[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg12[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg12[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg12[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg12[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg12[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg12[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg12[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg12[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg12[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg12[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg12[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg12[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg12[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg12[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg12[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg12[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg12[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg12[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg12_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg12[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(s00_axi_wstrb[1]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(s00_axi_wstrb[2]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(s00_axi_wstrb[3]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg13[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg13[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg13[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg13[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg13[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg13[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg13[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg13[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg13[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg13[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg13[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg13[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg13[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg13[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg13[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg13[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg13[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg13[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg13[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg13_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg13[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(wr_addr__3[3]),
        .I3(s00_axi_wstrb[1]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[0]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(wr_addr__3[3]),
        .I3(s00_axi_wstrb[2]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[0]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(wr_addr__3[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[0]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(wr_addr__3[3]),
        .I3(s00_axi_wstrb[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[0]),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg14[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg14[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg14[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg14[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg14[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg14[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg14[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg14[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg14[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg14[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg14[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg14[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg14[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg14[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg14[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg14[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg14[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg14[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg14[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg14_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg14[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(wr_addr__3[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg15_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_busy),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(done_flag),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[2]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[2]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[2]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[0]),
        .I4(wr_addr__3[2]),
        .I5(wr_addr__3[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(wr_addr__3[0]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[2]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(wr_addr__3[0]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[2]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(wr_addr__3[0]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[2]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(wr_addr__3[0]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[2]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(plpuf_challenge[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(plpuf_challenge[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(plpuf_challenge[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(plpuf_challenge[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(plpuf_challenge[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(plpuf_challenge[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(plpuf_challenge[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(plpuf_challenge[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(plpuf_challenge[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(plpuf_challenge[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(plpuf_challenge[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(plpuf_challenge[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(plpuf_challenge[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(plpuf_challenge[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(plpuf_challenge[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(plpuf_challenge[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(plpuf_challenge[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(plpuf_challenge[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(plpuf_challenge[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(plpuf_challenge[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(plpuf_challenge[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(plpuf_challenge[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(plpuf_challenge[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(plpuf_challenge[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(plpuf_challenge[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(plpuf_challenge[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(plpuf_challenge[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(plpuf_challenge[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(plpuf_challenge[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(plpuf_challenge[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(plpuf_challenge[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(plpuf_challenge[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[2]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[2]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(wr_addr__3[3]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[2]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(plpuf_challenge[32]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(plpuf_challenge[42]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(plpuf_challenge[43]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(plpuf_challenge[44]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(plpuf_challenge[45]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(plpuf_challenge[46]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(plpuf_challenge[47]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(plpuf_challenge[48]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(plpuf_challenge[49]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(plpuf_challenge[50]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(plpuf_challenge[51]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(plpuf_challenge[33]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(plpuf_challenge[52]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(plpuf_challenge[53]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(plpuf_challenge[54]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(plpuf_challenge[55]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(plpuf_challenge[56]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(plpuf_challenge[57]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(plpuf_challenge[58]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(plpuf_challenge[59]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(plpuf_challenge[60]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(plpuf_challenge[61]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(plpuf_challenge[34]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(plpuf_challenge[62]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(plpuf_challenge[63]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(plpuf_challenge[35]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(plpuf_challenge[36]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(plpuf_challenge[37]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(plpuf_challenge[38]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(plpuf_challenge[39]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(plpuf_challenge[40]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(plpuf_challenge[41]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(wr_addr__3[0]),
        .I3(wr_addr__3[2]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(wr_addr__3[0]),
        .I3(wr_addr__3[2]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(wr_addr__3[0]),
        .I3(wr_addr__3[2]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(wr_addr__3[0]),
        .I3(wr_addr__3[2]),
        .I4(wr_addr__3[1]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(plpuf_challenge[64]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(plpuf_challenge[74]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(plpuf_challenge[75]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(plpuf_challenge[76]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(plpuf_challenge[77]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(plpuf_challenge[78]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(plpuf_challenge[79]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(plpuf_challenge[80]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(plpuf_challenge[81]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(plpuf_challenge[82]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(plpuf_challenge[83]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(plpuf_challenge[65]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(plpuf_challenge[84]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(plpuf_challenge[85]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(plpuf_challenge[86]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(plpuf_challenge[87]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(plpuf_challenge[88]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(plpuf_challenge[89]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(plpuf_challenge[90]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(plpuf_challenge[91]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(plpuf_challenge[92]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(plpuf_challenge[93]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(plpuf_challenge[66]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(plpuf_challenge[94]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(plpuf_challenge[95]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(plpuf_challenge[67]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(plpuf_challenge[68]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(plpuf_challenge[69]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(plpuf_challenge[70]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(plpuf_challenge[71]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(plpuf_challenge[72]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(plpuf_challenge[73]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(wr_addr__3[2]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(wr_addr__3[2]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(wr_addr__3[2]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(wr_addr__3[2]),
        .I3(wr_addr__3[1]),
        .I4(wr_addr__3[0]),
        .I5(wr_addr__3[3]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(plpuf_challenge[96]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(plpuf_challenge[106]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(plpuf_challenge[107]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(plpuf_challenge[108]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(plpuf_challenge[109]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(plpuf_challenge[110]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(plpuf_challenge[111]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(plpuf_challenge[112]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(plpuf_challenge[113]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(plpuf_challenge[114]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(plpuf_challenge[115]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(plpuf_challenge[97]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(plpuf_challenge[116]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(plpuf_challenge[117]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(plpuf_challenge[118]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(plpuf_challenge[119]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(plpuf_challenge[120]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(plpuf_challenge[121]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(plpuf_challenge[122]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(plpuf_challenge[123]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(plpuf_challenge[124]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(plpuf_challenge[125]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(plpuf_challenge[98]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(plpuf_challenge[126]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(plpuf_challenge[127]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(plpuf_challenge[99]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(plpuf_challenge[100]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(plpuf_challenge[101]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(plpuf_challenge[102]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(plpuf_challenge[103]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(plpuf_challenge[104]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(plpuf_challenge[105]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[0]),
        .Q(slv_reg7[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[10]),
        .Q(slv_reg7[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[11]),
        .Q(slv_reg7[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[12]),
        .Q(slv_reg7[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[13]),
        .Q(slv_reg7[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[14]),
        .Q(slv_reg7[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[15]),
        .Q(slv_reg7[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[16]),
        .Q(slv_reg7[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[17]),
        .Q(slv_reg7[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[18]),
        .Q(slv_reg7[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[19]),
        .Q(slv_reg7[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[1]),
        .Q(slv_reg7[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[20]),
        .Q(slv_reg7[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[21]),
        .Q(slv_reg7[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[22]),
        .Q(slv_reg7[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[23]),
        .Q(slv_reg7[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[24]),
        .Q(slv_reg7[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[25]),
        .Q(slv_reg7[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[26]),
        .Q(slv_reg7[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[27]),
        .Q(slv_reg7[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[28]),
        .Q(slv_reg7[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[29]),
        .Q(slv_reg7[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[2]),
        .Q(slv_reg7[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[30]),
        .Q(slv_reg7[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[31]),
        .Q(slv_reg7[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[3]),
        .Q(slv_reg7[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[4]),
        .Q(slv_reg7[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[5]),
        .Q(slv_reg7[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[6]),
        .Q(slv_reg7[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[7]),
        .Q(slv_reg7[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[8]),
        .Q(slv_reg7[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[9]),
        .Q(slv_reg7[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[32]),
        .Q(slv_reg8[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[42]),
        .Q(slv_reg8[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[43]),
        .Q(slv_reg8[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[44]),
        .Q(slv_reg8[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[45]),
        .Q(slv_reg8[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[46]),
        .Q(slv_reg8[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[47]),
        .Q(slv_reg8[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[48]),
        .Q(slv_reg8[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[49]),
        .Q(slv_reg8[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[50]),
        .Q(slv_reg8[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[51]),
        .Q(slv_reg8[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[33]),
        .Q(slv_reg8[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[52]),
        .Q(slv_reg8[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[53]),
        .Q(slv_reg8[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[54]),
        .Q(slv_reg8[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[55]),
        .Q(slv_reg8[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[56]),
        .Q(slv_reg8[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[57]),
        .Q(slv_reg8[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[58]),
        .Q(slv_reg8[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[59]),
        .Q(slv_reg8[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[60]),
        .Q(slv_reg8[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[61]),
        .Q(slv_reg8[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[34]),
        .Q(slv_reg8[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[62]),
        .Q(slv_reg8[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[63]),
        .Q(slv_reg8[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[35]),
        .Q(slv_reg8[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[36]),
        .Q(slv_reg8[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[37]),
        .Q(slv_reg8[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[38]),
        .Q(slv_reg8[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[39]),
        .Q(slv_reg8[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[40]),
        .Q(slv_reg8[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[41]),
        .Q(slv_reg8[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[64]),
        .Q(slv_reg9[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[74]),
        .Q(slv_reg9[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[75]),
        .Q(slv_reg9[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[76]),
        .Q(slv_reg9[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[77]),
        .Q(slv_reg9[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[78]),
        .Q(slv_reg9[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[79]),
        .Q(slv_reg9[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[80]),
        .Q(slv_reg9[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[81]),
        .Q(slv_reg9[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[82]),
        .Q(slv_reg9[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[83]),
        .Q(slv_reg9[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[65]),
        .Q(slv_reg9[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[84]),
        .Q(slv_reg9[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[85]),
        .Q(slv_reg9[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[86]),
        .Q(slv_reg9[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[87]),
        .Q(slv_reg9[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[88]),
        .Q(slv_reg9[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[89]),
        .Q(slv_reg9[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[90]),
        .Q(slv_reg9[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[91]),
        .Q(slv_reg9[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[92]),
        .Q(slv_reg9[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[93]),
        .Q(slv_reg9[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[66]),
        .Q(slv_reg9[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[94]),
        .Q(slv_reg9[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[95]),
        .Q(slv_reg9[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[67]),
        .Q(slv_reg9[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[68]),
        .Q(slv_reg9[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[69]),
        .Q(slv_reg9[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[70]),
        .Q(slv_reg9[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[71]),
        .Q(slv_reg9[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[72]),
        .Q(slv_reg9[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(plpuf_response[73]),
        .Q(slv_reg9[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* DURATION_BITS = "16" *) (* ORIG_REF_NAME = "plpuf_core" *) (* S_ACTIVE = "2'b10" *) 
(* S_DONE = "2'b11" *) (* S_IDLE = "2'b00" *) (* S_LOAD = "2'b01" *) 
(* TAP_1 = "125" *) (* TAP_2 = "101" *) (* TAP_3 = "98" *) 
(* WIDTH = "128" *) (* dont_touch = "true" *) 
module design_1_axi_plpuf_0_0_plpuf_core
   (clk,
    rst_n,
    challenge,
    activation_duration,
    start,
    response,
    done,
    busy);
  input clk;
  input rst_n;
  input [127:0]challenge;
  input [15:0]activation_duration;
  input start;
  output [127:0]response;
  output done;
  output busy;

  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [15:0]activation_duration;
  wire busy;
  wire busy_i_1_n_0;
  wire [127:0]challenge;
  wire clk;
  (* DONT_TOUCH *) wire [127:0]core_in;
  (* DONT_TOUCH *) wire [127:0]core_out;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_2_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_2_n_1 ;
  wire \counter_reg[12]_i_2_n_2 ;
  wire \counter_reg[12]_i_2_n_3 ;
  wire \counter_reg[15]_i_3_n_2 ;
  wire \counter_reg[15]_i_3_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire done;
  wire done_i_1_n_0;
  wire enable;
  wire enable_i_1_n_0;
  wire [15:1]in5;
  wire [127:0]response;
  wire \response[127]_i_10_n_0 ;
  wire \response[127]_i_11_n_0 ;
  wire \response[127]_i_16_n_0 ;
  wire \response[127]_i_17_n_0 ;
  wire \response[127]_i_18_n_0 ;
  wire \response[127]_i_19_n_0 ;
  wire \response[127]_i_1_n_0 ;
  wire \response[127]_i_20_n_0 ;
  wire \response[127]_i_21_n_0 ;
  wire \response[127]_i_22_n_0 ;
  wire \response[127]_i_23_n_0 ;
  wire \response[127]_i_24_n_0 ;
  wire \response[127]_i_25_n_0 ;
  wire \response[127]_i_26_n_0 ;
  wire \response[127]_i_27_n_0 ;
  wire \response[127]_i_28_n_0 ;
  wire \response[127]_i_29_n_0 ;
  wire \response[127]_i_2_n_0 ;
  wire \response[127]_i_30_n_0 ;
  wire \response[127]_i_6_n_0 ;
  wire \response[127]_i_7_n_0 ;
  wire \response[127]_i_8_n_0 ;
  wire \response[127]_i_9_n_0 ;
  wire \response_reg[127]_i_12_n_2 ;
  wire \response_reg[127]_i_12_n_3 ;
  wire \response_reg[127]_i_13_n_0 ;
  wire \response_reg[127]_i_13_n_1 ;
  wire \response_reg[127]_i_13_n_2 ;
  wire \response_reg[127]_i_13_n_3 ;
  wire \response_reg[127]_i_14_n_0 ;
  wire \response_reg[127]_i_14_n_1 ;
  wire \response_reg[127]_i_14_n_2 ;
  wire \response_reg[127]_i_14_n_3 ;
  wire \response_reg[127]_i_15_n_0 ;
  wire \response_reg[127]_i_15_n_1 ;
  wire \response_reg[127]_i_15_n_2 ;
  wire \response_reg[127]_i_15_n_3 ;
  wire \response_reg[127]_i_4_n_2 ;
  wire \response_reg[127]_i_4_n_3 ;
  wire \response_reg[127]_i_5_n_0 ;
  wire \response_reg[127]_i_5_n_1 ;
  wire \response_reg[127]_i_5_n_2 ;
  wire \response_reg[127]_i_5_n_3 ;
  wire rst_n;
  wire start;
  wire [15:1]state2;
  wire [3:2]\NLW_counter_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_response_reg[127]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_response_reg[127]_i_12_O_UNCONNECTED ;
  wire [3:2]\NLW_response_reg[127]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_response_reg[127]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_response_reg[127]_i_5_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(start),
        .I4(\response[127]_i_2_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0001,S_LOAD:0010,S_ACTIVE:0100,S_DONE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\response[127]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0001,S_LOAD:0010,S_ACTIVE:0100,S_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\response[127]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0001,S_LOAD:0010,S_ACTIVE:0100,S_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\response[127]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0001,S_LOAD:0010,S_ACTIVE:0100,S_DONE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\response[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC0EA0000)) 
    busy_i_1
       (.I0(busy),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(start),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(rst_n),
        .O(busy_i_1_n_0));
  FDRE busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_1
       (.I0(core_out[0]),
        .I1(enable),
        .I2(challenge[127]),
        .O(core_in[127]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_10
       (.I0(core_out[119]),
        .I1(enable),
        .I2(challenge[118]),
        .O(core_in[118]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_100
       (.I0(core_out[29]),
        .I1(enable),
        .I2(challenge[28]),
        .O(core_in[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_101
       (.I0(core_out[28]),
        .I1(enable),
        .I2(challenge[27]),
        .O(core_in[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_102
       (.I0(core_out[27]),
        .I1(enable),
        .I2(challenge[26]),
        .O(core_in[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_103
       (.I0(core_out[26]),
        .I1(enable),
        .I2(challenge[25]),
        .O(core_in[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_104
       (.I0(core_out[25]),
        .I1(enable),
        .I2(challenge[24]),
        .O(core_in[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_105
       (.I0(core_out[24]),
        .I1(enable),
        .I2(challenge[23]),
        .O(core_in[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_106
       (.I0(core_out[23]),
        .I1(enable),
        .I2(challenge[22]),
        .O(core_in[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_107
       (.I0(core_out[22]),
        .I1(enable),
        .I2(challenge[21]),
        .O(core_in[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_108
       (.I0(core_out[21]),
        .I1(enable),
        .I2(challenge[20]),
        .O(core_in[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_109
       (.I0(core_out[20]),
        .I1(enable),
        .I2(challenge[19]),
        .O(core_in[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_11
       (.I0(core_out[118]),
        .I1(enable),
        .I2(challenge[117]),
        .O(core_in[117]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_110
       (.I0(core_out[19]),
        .I1(enable),
        .I2(challenge[18]),
        .O(core_in[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_111
       (.I0(core_out[18]),
        .I1(enable),
        .I2(challenge[17]),
        .O(core_in[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_112
       (.I0(core_out[17]),
        .I1(enable),
        .I2(challenge[16]),
        .O(core_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_113
       (.I0(core_out[16]),
        .I1(enable),
        .I2(challenge[15]),
        .O(core_in[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_114
       (.I0(core_out[15]),
        .I1(enable),
        .I2(challenge[14]),
        .O(core_in[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_115
       (.I0(core_out[14]),
        .I1(enable),
        .I2(challenge[13]),
        .O(core_in[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_116
       (.I0(core_out[13]),
        .I1(enable),
        .I2(challenge[12]),
        .O(core_in[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_117
       (.I0(core_out[12]),
        .I1(enable),
        .I2(challenge[11]),
        .O(core_in[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_118
       (.I0(core_out[11]),
        .I1(enable),
        .I2(challenge[10]),
        .O(core_in[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_119
       (.I0(core_out[10]),
        .I1(enable),
        .I2(challenge[9]),
        .O(core_in[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_12
       (.I0(core_out[117]),
        .I1(enable),
        .I2(challenge[116]),
        .O(core_in[116]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_120
       (.I0(core_out[9]),
        .I1(enable),
        .I2(challenge[8]),
        .O(core_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_121
       (.I0(core_out[8]),
        .I1(enable),
        .I2(challenge[7]),
        .O(core_in[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_122
       (.I0(core_out[7]),
        .I1(enable),
        .I2(challenge[6]),
        .O(core_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_123
       (.I0(core_out[6]),
        .I1(enable),
        .I2(challenge[5]),
        .O(core_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_124
       (.I0(core_out[5]),
        .I1(enable),
        .I2(challenge[4]),
        .O(core_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_125
       (.I0(core_out[4]),
        .I1(enable),
        .I2(challenge[3]),
        .O(core_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_126
       (.I0(core_out[3]),
        .I1(enable),
        .I2(challenge[2]),
        .O(core_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_127
       (.I0(core_out[2]),
        .I1(enable),
        .I2(challenge[1]),
        .O(core_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_128
       (.I0(core_out[1]),
        .I1(enable),
        .I2(challenge[0]),
        .O(core_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_13
       (.I0(core_out[116]),
        .I1(enable),
        .I2(challenge[115]),
        .O(core_in[115]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_14
       (.I0(core_out[115]),
        .I1(enable),
        .I2(challenge[114]),
        .O(core_in[114]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_15
       (.I0(core_out[114]),
        .I1(enable),
        .I2(challenge[113]),
        .O(core_in[113]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_16
       (.I0(core_out[113]),
        .I1(enable),
        .I2(challenge[112]),
        .O(core_in[112]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_17
       (.I0(core_out[112]),
        .I1(enable),
        .I2(challenge[111]),
        .O(core_in[111]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_18
       (.I0(core_out[111]),
        .I1(enable),
        .I2(challenge[110]),
        .O(core_in[110]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_19
       (.I0(core_out[110]),
        .I1(enable),
        .I2(challenge[109]),
        .O(core_in[109]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_2
       (.I0(core_out[127]),
        .I1(enable),
        .I2(challenge[126]),
        .O(core_in[126]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_20
       (.I0(core_out[109]),
        .I1(enable),
        .I2(challenge[108]),
        .O(core_in[108]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_21
       (.I0(core_out[108]),
        .I1(enable),
        .I2(challenge[107]),
        .O(core_in[107]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_22
       (.I0(core_out[107]),
        .I1(enable),
        .I2(challenge[106]),
        .O(core_in[106]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_23
       (.I0(core_out[106]),
        .I1(enable),
        .I2(challenge[105]),
        .O(core_in[105]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_24
       (.I0(core_out[105]),
        .I1(enable),
        .I2(challenge[104]),
        .O(core_in[104]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_25
       (.I0(core_out[104]),
        .I1(enable),
        .I2(challenge[103]),
        .O(core_in[103]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_26
       (.I0(core_out[103]),
        .I1(enable),
        .I2(challenge[102]),
        .O(core_in[102]));
  LUT4 #(
    .INIT(16'h6F60)) 
    core_in_inferred_i_27
       (.I0(core_out[0]),
        .I1(core_out[102]),
        .I2(enable),
        .I3(challenge[101]),
        .O(core_in[101]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_28
       (.I0(core_out[101]),
        .I1(enable),
        .I2(challenge[100]),
        .O(core_in[100]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_29
       (.I0(core_out[100]),
        .I1(enable),
        .I2(challenge[99]),
        .O(core_in[99]));
  LUT4 #(
    .INIT(16'h6F60)) 
    core_in_inferred_i_3
       (.I0(core_out[0]),
        .I1(core_out[126]),
        .I2(enable),
        .I3(challenge[125]),
        .O(core_in[125]));
  LUT4 #(
    .INIT(16'h6F60)) 
    core_in_inferred_i_30
       (.I0(core_out[0]),
        .I1(core_out[99]),
        .I2(enable),
        .I3(challenge[98]),
        .O(core_in[98]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_31
       (.I0(core_out[98]),
        .I1(enable),
        .I2(challenge[97]),
        .O(core_in[97]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_32
       (.I0(core_out[97]),
        .I1(enable),
        .I2(challenge[96]),
        .O(core_in[96]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_33
       (.I0(core_out[96]),
        .I1(enable),
        .I2(challenge[95]),
        .O(core_in[95]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_34
       (.I0(core_out[95]),
        .I1(enable),
        .I2(challenge[94]),
        .O(core_in[94]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_35
       (.I0(core_out[94]),
        .I1(enable),
        .I2(challenge[93]),
        .O(core_in[93]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_36
       (.I0(core_out[93]),
        .I1(enable),
        .I2(challenge[92]),
        .O(core_in[92]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_37
       (.I0(core_out[92]),
        .I1(enable),
        .I2(challenge[91]),
        .O(core_in[91]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_38
       (.I0(core_out[91]),
        .I1(enable),
        .I2(challenge[90]),
        .O(core_in[90]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_39
       (.I0(core_out[90]),
        .I1(enable),
        .I2(challenge[89]),
        .O(core_in[89]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_4
       (.I0(core_out[125]),
        .I1(enable),
        .I2(challenge[124]),
        .O(core_in[124]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_40
       (.I0(core_out[89]),
        .I1(enable),
        .I2(challenge[88]),
        .O(core_in[88]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_41
       (.I0(core_out[88]),
        .I1(enable),
        .I2(challenge[87]),
        .O(core_in[87]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_42
       (.I0(core_out[87]),
        .I1(enable),
        .I2(challenge[86]),
        .O(core_in[86]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_43
       (.I0(core_out[86]),
        .I1(enable),
        .I2(challenge[85]),
        .O(core_in[85]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_44
       (.I0(core_out[85]),
        .I1(enable),
        .I2(challenge[84]),
        .O(core_in[84]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_45
       (.I0(core_out[84]),
        .I1(enable),
        .I2(challenge[83]),
        .O(core_in[83]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_46
       (.I0(core_out[83]),
        .I1(enable),
        .I2(challenge[82]),
        .O(core_in[82]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_47
       (.I0(core_out[82]),
        .I1(enable),
        .I2(challenge[81]),
        .O(core_in[81]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_48
       (.I0(core_out[81]),
        .I1(enable),
        .I2(challenge[80]),
        .O(core_in[80]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_49
       (.I0(core_out[80]),
        .I1(enable),
        .I2(challenge[79]),
        .O(core_in[79]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_5
       (.I0(core_out[124]),
        .I1(enable),
        .I2(challenge[123]),
        .O(core_in[123]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_50
       (.I0(core_out[79]),
        .I1(enable),
        .I2(challenge[78]),
        .O(core_in[78]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_51
       (.I0(core_out[78]),
        .I1(enable),
        .I2(challenge[77]),
        .O(core_in[77]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_52
       (.I0(core_out[77]),
        .I1(enable),
        .I2(challenge[76]),
        .O(core_in[76]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_53
       (.I0(core_out[76]),
        .I1(enable),
        .I2(challenge[75]),
        .O(core_in[75]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_54
       (.I0(core_out[75]),
        .I1(enable),
        .I2(challenge[74]),
        .O(core_in[74]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_55
       (.I0(core_out[74]),
        .I1(enable),
        .I2(challenge[73]),
        .O(core_in[73]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_56
       (.I0(core_out[73]),
        .I1(enable),
        .I2(challenge[72]),
        .O(core_in[72]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_57
       (.I0(core_out[72]),
        .I1(enable),
        .I2(challenge[71]),
        .O(core_in[71]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_58
       (.I0(core_out[71]),
        .I1(enable),
        .I2(challenge[70]),
        .O(core_in[70]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_59
       (.I0(core_out[70]),
        .I1(enable),
        .I2(challenge[69]),
        .O(core_in[69]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_6
       (.I0(core_out[123]),
        .I1(enable),
        .I2(challenge[122]),
        .O(core_in[122]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_60
       (.I0(core_out[69]),
        .I1(enable),
        .I2(challenge[68]),
        .O(core_in[68]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_61
       (.I0(core_out[68]),
        .I1(enable),
        .I2(challenge[67]),
        .O(core_in[67]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_62
       (.I0(core_out[67]),
        .I1(enable),
        .I2(challenge[66]),
        .O(core_in[66]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_63
       (.I0(core_out[66]),
        .I1(enable),
        .I2(challenge[65]),
        .O(core_in[65]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_64
       (.I0(core_out[65]),
        .I1(enable),
        .I2(challenge[64]),
        .O(core_in[64]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_65
       (.I0(core_out[64]),
        .I1(enable),
        .I2(challenge[63]),
        .O(core_in[63]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_66
       (.I0(core_out[63]),
        .I1(enable),
        .I2(challenge[62]),
        .O(core_in[62]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_67
       (.I0(core_out[62]),
        .I1(enable),
        .I2(challenge[61]),
        .O(core_in[61]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_68
       (.I0(core_out[61]),
        .I1(enable),
        .I2(challenge[60]),
        .O(core_in[60]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_69
       (.I0(core_out[60]),
        .I1(enable),
        .I2(challenge[59]),
        .O(core_in[59]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_7
       (.I0(core_out[122]),
        .I1(enable),
        .I2(challenge[121]),
        .O(core_in[121]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_70
       (.I0(core_out[59]),
        .I1(enable),
        .I2(challenge[58]),
        .O(core_in[58]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_71
       (.I0(core_out[58]),
        .I1(enable),
        .I2(challenge[57]),
        .O(core_in[57]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_72
       (.I0(core_out[57]),
        .I1(enable),
        .I2(challenge[56]),
        .O(core_in[56]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_73
       (.I0(core_out[56]),
        .I1(enable),
        .I2(challenge[55]),
        .O(core_in[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_74
       (.I0(core_out[55]),
        .I1(enable),
        .I2(challenge[54]),
        .O(core_in[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_75
       (.I0(core_out[54]),
        .I1(enable),
        .I2(challenge[53]),
        .O(core_in[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_76
       (.I0(core_out[53]),
        .I1(enable),
        .I2(challenge[52]),
        .O(core_in[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_77
       (.I0(core_out[52]),
        .I1(enable),
        .I2(challenge[51]),
        .O(core_in[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_78
       (.I0(core_out[51]),
        .I1(enable),
        .I2(challenge[50]),
        .O(core_in[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_79
       (.I0(core_out[50]),
        .I1(enable),
        .I2(challenge[49]),
        .O(core_in[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_8
       (.I0(core_out[121]),
        .I1(enable),
        .I2(challenge[120]),
        .O(core_in[120]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_80
       (.I0(core_out[49]),
        .I1(enable),
        .I2(challenge[48]),
        .O(core_in[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_81
       (.I0(core_out[48]),
        .I1(enable),
        .I2(challenge[47]),
        .O(core_in[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_82
       (.I0(core_out[47]),
        .I1(enable),
        .I2(challenge[46]),
        .O(core_in[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_83
       (.I0(core_out[46]),
        .I1(enable),
        .I2(challenge[45]),
        .O(core_in[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_84
       (.I0(core_out[45]),
        .I1(enable),
        .I2(challenge[44]),
        .O(core_in[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_85
       (.I0(core_out[44]),
        .I1(enable),
        .I2(challenge[43]),
        .O(core_in[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_86
       (.I0(core_out[43]),
        .I1(enable),
        .I2(challenge[42]),
        .O(core_in[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_87
       (.I0(core_out[42]),
        .I1(enable),
        .I2(challenge[41]),
        .O(core_in[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_88
       (.I0(core_out[41]),
        .I1(enable),
        .I2(challenge[40]),
        .O(core_in[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_89
       (.I0(core_out[40]),
        .I1(enable),
        .I2(challenge[39]),
        .O(core_in[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_9
       (.I0(core_out[120]),
        .I1(enable),
        .I2(challenge[119]),
        .O(core_in[119]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_90
       (.I0(core_out[39]),
        .I1(enable),
        .I2(challenge[38]),
        .O(core_in[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_91
       (.I0(core_out[38]),
        .I1(enable),
        .I2(challenge[37]),
        .O(core_in[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_92
       (.I0(core_out[37]),
        .I1(enable),
        .I2(challenge[36]),
        .O(core_in[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_93
       (.I0(core_out[36]),
        .I1(enable),
        .I2(challenge[35]),
        .O(core_in[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_94
       (.I0(core_out[35]),
        .I1(enable),
        .I2(challenge[34]),
        .O(core_in[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_95
       (.I0(core_out[34]),
        .I1(enable),
        .I2(challenge[33]),
        .O(core_in[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_96
       (.I0(core_out[33]),
        .I1(enable),
        .I2(challenge[32]),
        .O(core_in[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_97
       (.I0(core_out[32]),
        .I1(enable),
        .I2(challenge[31]),
        .O(core_in[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_98
       (.I0(core_out[31]),
        .I1(enable),
        .I2(challenge[30]),
        .O(core_in[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    core_in_inferred_i_99
       (.I0(core_out[30]),
        .I1(enable),
        .I2(challenge[29]),
        .O(core_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[10]),
        .O(\counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[11]),
        .O(\counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[12]),
        .O(\counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[13]),
        .O(\counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[14]),
        .O(\counter[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \counter[15]_i_1 
       (.I0(start),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\response_reg[127]_i_4_n_2 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(counter));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[15]),
        .O(\counter[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[3]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[4]),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[5]),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[6]),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[7]),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[8]),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in5[9]),
        .O(\counter[9]_i_1_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(counter),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(counter),
        .D(\counter[10]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[10] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(counter),
        .D(\counter[11]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[11] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(counter),
        .D(\counter[12]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[12] ),
        .R(\response[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(counter),
        .D(\counter[13]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[13] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(counter),
        .D(\counter[14]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[14] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(counter),
        .D(\counter[15]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[15] ),
        .R(\response[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[15]_i_3 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\NLW_counter_reg[15]_i_3_CO_UNCONNECTED [3:2],\counter_reg[15]_i_3_n_2 ,\counter_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[15]_i_3_O_UNCONNECTED [3],in5[15:13]}),
        .S({1'b0,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(counter),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(counter),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(counter),
        .D(\counter[3]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(counter),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(\response[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(counter),
        .D(\counter[5]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(counter),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(counter),
        .D(\counter[7]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(\response[127]_i_1_n_0 ));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(counter),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[8] ),
        .R(\response[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(counter),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[9] ),
        .R(\response[127]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    done_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(rst_n),
        .O(done_i_1_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF002A00000000)) 
    enable_i_1
       (.I0(enable),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\response[127]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(rst_n),
        .O(enable_i_1_n_0));
  FDRE enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(enable_i_1_n_0),
        .Q(enable),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \response[0]_i_1 
       (.I0(core_in[0]),
        .O(core_out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[100]_i_1 
       (.I0(core_in[100]),
        .O(core_out[100]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[101]_i_1 
       (.I0(core_in[101]),
        .O(core_out[101]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[102]_i_1 
       (.I0(core_in[102]),
        .O(core_out[102]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[103]_i_1 
       (.I0(core_in[103]),
        .O(core_out[103]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[104]_i_1 
       (.I0(core_in[104]),
        .O(core_out[104]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[105]_i_1 
       (.I0(core_in[105]),
        .O(core_out[105]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[106]_i_1 
       (.I0(core_in[106]),
        .O(core_out[106]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[107]_i_1 
       (.I0(core_in[107]),
        .O(core_out[107]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[108]_i_1 
       (.I0(core_in[108]),
        .O(core_out[108]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[109]_i_1 
       (.I0(core_in[109]),
        .O(core_out[109]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[10]_i_1 
       (.I0(core_in[10]),
        .O(core_out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[110]_i_1 
       (.I0(core_in[110]),
        .O(core_out[110]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[111]_i_1 
       (.I0(core_in[111]),
        .O(core_out[111]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[112]_i_1 
       (.I0(core_in[112]),
        .O(core_out[112]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[113]_i_1 
       (.I0(core_in[113]),
        .O(core_out[113]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[114]_i_1 
       (.I0(core_in[114]),
        .O(core_out[114]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[115]_i_1 
       (.I0(core_in[115]),
        .O(core_out[115]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[116]_i_1 
       (.I0(core_in[116]),
        .O(core_out[116]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[117]_i_1 
       (.I0(core_in[117]),
        .O(core_out[117]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[118]_i_1 
       (.I0(core_in[118]),
        .O(core_out[118]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[119]_i_1 
       (.I0(core_in[119]),
        .O(core_out[119]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[11]_i_1 
       (.I0(core_in[11]),
        .O(core_out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[120]_i_1 
       (.I0(core_in[120]),
        .O(core_out[120]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[121]_i_1 
       (.I0(core_in[121]),
        .O(core_out[121]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[122]_i_1 
       (.I0(core_in[122]),
        .O(core_out[122]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[123]_i_1 
       (.I0(core_in[123]),
        .O(core_out[123]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[124]_i_1 
       (.I0(core_in[124]),
        .O(core_out[124]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[125]_i_1 
       (.I0(core_in[125]),
        .O(core_out[125]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[126]_i_1 
       (.I0(core_in[126]),
        .O(core_out[126]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_1 
       (.I0(rst_n),
        .O(\response[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \response[127]_i_10 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(state2[3]),
        .I2(state2[5]),
        .I3(\counter_reg_n_0_[5] ),
        .I4(state2[4]),
        .I5(\counter_reg_n_0_[4] ),
        .O(\response[127]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \response[127]_i_11 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(activation_duration[0]),
        .I2(state2[2]),
        .I3(\counter_reg_n_0_[2] ),
        .I4(state2[1]),
        .I5(\counter_reg_n_0_[1] ),
        .O(\response[127]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_16 
       (.I0(activation_duration[15]),
        .O(\response[127]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_17 
       (.I0(activation_duration[14]),
        .O(\response[127]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_18 
       (.I0(activation_duration[13]),
        .O(\response[127]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_19 
       (.I0(activation_duration[12]),
        .O(\response[127]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \response[127]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\response_reg[127]_i_4_n_2 ),
        .O(\response[127]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_20 
       (.I0(activation_duration[11]),
        .O(\response[127]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_21 
       (.I0(activation_duration[10]),
        .O(\response[127]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_22 
       (.I0(activation_duration[9]),
        .O(\response[127]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_23 
       (.I0(activation_duration[8]),
        .O(\response[127]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_24 
       (.I0(activation_duration[7]),
        .O(\response[127]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_25 
       (.I0(activation_duration[6]),
        .O(\response[127]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_26 
       (.I0(activation_duration[5]),
        .O(\response[127]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_27 
       (.I0(activation_duration[4]),
        .O(\response[127]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_28 
       (.I0(activation_duration[3]),
        .O(\response[127]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_29 
       (.I0(activation_duration[2]),
        .O(\response[127]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_3 
       (.I0(core_in[127]),
        .O(core_out[127]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[127]_i_30 
       (.I0(activation_duration[1]),
        .O(\response[127]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \response[127]_i_6 
       (.I0(state2[15]),
        .I1(\counter_reg_n_0_[15] ),
        .O(\response[127]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \response[127]_i_7 
       (.I0(\counter_reg_n_0_[12] ),
        .I1(state2[12]),
        .I2(state2[14]),
        .I3(\counter_reg_n_0_[14] ),
        .I4(state2[13]),
        .I5(\counter_reg_n_0_[13] ),
        .O(\response[127]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \response[127]_i_8 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(state2[9]),
        .I2(state2[11]),
        .I3(\counter_reg_n_0_[11] ),
        .I4(state2[10]),
        .I5(\counter_reg_n_0_[10] ),
        .O(\response[127]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \response[127]_i_9 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(state2[6]),
        .I2(state2[8]),
        .I3(\counter_reg_n_0_[8] ),
        .I4(state2[7]),
        .I5(\counter_reg_n_0_[7] ),
        .O(\response[127]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \response[12]_i_1 
       (.I0(core_in[12]),
        .O(core_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[13]_i_1 
       (.I0(core_in[13]),
        .O(core_out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[14]_i_1 
       (.I0(core_in[14]),
        .O(core_out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[15]_i_1 
       (.I0(core_in[15]),
        .O(core_out[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[16]_i_1 
       (.I0(core_in[16]),
        .O(core_out[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[17]_i_1 
       (.I0(core_in[17]),
        .O(core_out[17]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[18]_i_1 
       (.I0(core_in[18]),
        .O(core_out[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[19]_i_1 
       (.I0(core_in[19]),
        .O(core_out[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[1]_i_1 
       (.I0(core_in[1]),
        .O(core_out[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[20]_i_1 
       (.I0(core_in[20]),
        .O(core_out[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[21]_i_1 
       (.I0(core_in[21]),
        .O(core_out[21]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[22]_i_1 
       (.I0(core_in[22]),
        .O(core_out[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[23]_i_1 
       (.I0(core_in[23]),
        .O(core_out[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[24]_i_1 
       (.I0(core_in[24]),
        .O(core_out[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[25]_i_1 
       (.I0(core_in[25]),
        .O(core_out[25]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[26]_i_1 
       (.I0(core_in[26]),
        .O(core_out[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[27]_i_1 
       (.I0(core_in[27]),
        .O(core_out[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[28]_i_1 
       (.I0(core_in[28]),
        .O(core_out[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[29]_i_1 
       (.I0(core_in[29]),
        .O(core_out[29]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[2]_i_1 
       (.I0(core_in[2]),
        .O(core_out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[30]_i_1 
       (.I0(core_in[30]),
        .O(core_out[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[31]_i_1 
       (.I0(core_in[31]),
        .O(core_out[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[32]_i_1 
       (.I0(core_in[32]),
        .O(core_out[32]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[33]_i_1 
       (.I0(core_in[33]),
        .O(core_out[33]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[34]_i_1 
       (.I0(core_in[34]),
        .O(core_out[34]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[35]_i_1 
       (.I0(core_in[35]),
        .O(core_out[35]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[36]_i_1 
       (.I0(core_in[36]),
        .O(core_out[36]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[37]_i_1 
       (.I0(core_in[37]),
        .O(core_out[37]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[38]_i_1 
       (.I0(core_in[38]),
        .O(core_out[38]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[39]_i_1 
       (.I0(core_in[39]),
        .O(core_out[39]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[3]_i_1 
       (.I0(core_in[3]),
        .O(core_out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[40]_i_1 
       (.I0(core_in[40]),
        .O(core_out[40]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[41]_i_1 
       (.I0(core_in[41]),
        .O(core_out[41]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[42]_i_1 
       (.I0(core_in[42]),
        .O(core_out[42]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[43]_i_1 
       (.I0(core_in[43]),
        .O(core_out[43]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[44]_i_1 
       (.I0(core_in[44]),
        .O(core_out[44]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[45]_i_1 
       (.I0(core_in[45]),
        .O(core_out[45]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[46]_i_1 
       (.I0(core_in[46]),
        .O(core_out[46]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[47]_i_1 
       (.I0(core_in[47]),
        .O(core_out[47]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[48]_i_1 
       (.I0(core_in[48]),
        .O(core_out[48]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[49]_i_1 
       (.I0(core_in[49]),
        .O(core_out[49]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[4]_i_1 
       (.I0(core_in[4]),
        .O(core_out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[50]_i_1 
       (.I0(core_in[50]),
        .O(core_out[50]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[51]_i_1 
       (.I0(core_in[51]),
        .O(core_out[51]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[52]_i_1 
       (.I0(core_in[52]),
        .O(core_out[52]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[53]_i_1 
       (.I0(core_in[53]),
        .O(core_out[53]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[54]_i_1 
       (.I0(core_in[54]),
        .O(core_out[54]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[55]_i_1 
       (.I0(core_in[55]),
        .O(core_out[55]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[56]_i_1 
       (.I0(core_in[56]),
        .O(core_out[56]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[57]_i_1 
       (.I0(core_in[57]),
        .O(core_out[57]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[58]_i_1 
       (.I0(core_in[58]),
        .O(core_out[58]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[59]_i_1 
       (.I0(core_in[59]),
        .O(core_out[59]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[5]_i_1 
       (.I0(core_in[5]),
        .O(core_out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[60]_i_1 
       (.I0(core_in[60]),
        .O(core_out[60]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[61]_i_1 
       (.I0(core_in[61]),
        .O(core_out[61]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[62]_i_1 
       (.I0(core_in[62]),
        .O(core_out[62]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[63]_i_1 
       (.I0(core_in[63]),
        .O(core_out[63]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[64]_i_1 
       (.I0(core_in[64]),
        .O(core_out[64]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[65]_i_1 
       (.I0(core_in[65]),
        .O(core_out[65]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[66]_i_1 
       (.I0(core_in[66]),
        .O(core_out[66]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[67]_i_1 
       (.I0(core_in[67]),
        .O(core_out[67]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[68]_i_1 
       (.I0(core_in[68]),
        .O(core_out[68]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[69]_i_1 
       (.I0(core_in[69]),
        .O(core_out[69]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[6]_i_1 
       (.I0(core_in[6]),
        .O(core_out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[70]_i_1 
       (.I0(core_in[70]),
        .O(core_out[70]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[71]_i_1 
       (.I0(core_in[71]),
        .O(core_out[71]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[72]_i_1 
       (.I0(core_in[72]),
        .O(core_out[72]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[73]_i_1 
       (.I0(core_in[73]),
        .O(core_out[73]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[74]_i_1 
       (.I0(core_in[74]),
        .O(core_out[74]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[75]_i_1 
       (.I0(core_in[75]),
        .O(core_out[75]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[76]_i_1 
       (.I0(core_in[76]),
        .O(core_out[76]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[77]_i_1 
       (.I0(core_in[77]),
        .O(core_out[77]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[78]_i_1 
       (.I0(core_in[78]),
        .O(core_out[78]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[79]_i_1 
       (.I0(core_in[79]),
        .O(core_out[79]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[7]_i_1 
       (.I0(core_in[7]),
        .O(core_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[80]_i_1 
       (.I0(core_in[80]),
        .O(core_out[80]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[81]_i_1 
       (.I0(core_in[81]),
        .O(core_out[81]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[82]_i_1 
       (.I0(core_in[82]),
        .O(core_out[82]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[83]_i_1 
       (.I0(core_in[83]),
        .O(core_out[83]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[84]_i_1 
       (.I0(core_in[84]),
        .O(core_out[84]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[85]_i_1 
       (.I0(core_in[85]),
        .O(core_out[85]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[86]_i_1 
       (.I0(core_in[86]),
        .O(core_out[86]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[87]_i_1 
       (.I0(core_in[87]),
        .O(core_out[87]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[88]_i_1 
       (.I0(core_in[88]),
        .O(core_out[88]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[89]_i_1 
       (.I0(core_in[89]),
        .O(core_out[89]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[8]_i_1 
       (.I0(core_in[8]),
        .O(core_out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[90]_i_1 
       (.I0(core_in[90]),
        .O(core_out[90]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[91]_i_1 
       (.I0(core_in[91]),
        .O(core_out[91]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[92]_i_1 
       (.I0(core_in[92]),
        .O(core_out[92]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[93]_i_1 
       (.I0(core_in[93]),
        .O(core_out[93]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[94]_i_1 
       (.I0(core_in[94]),
        .O(core_out[94]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[95]_i_1 
       (.I0(core_in[95]),
        .O(core_out[95]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[96]_i_1 
       (.I0(core_in[96]),
        .O(core_out[96]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[97]_i_1 
       (.I0(core_in[97]),
        .O(core_out[97]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[98]_i_1 
       (.I0(core_in[98]),
        .O(core_out[98]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[99]_i_1 
       (.I0(core_in[99]),
        .O(core_out[99]));
  LUT1 #(
    .INIT(2'h1)) 
    \response[9]_i_1 
       (.I0(core_in[9]),
        .O(core_out[9]));
  FDRE \response_reg[0] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[0]),
        .Q(response[0]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[100] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[100]),
        .Q(response[100]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[101] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[101]),
        .Q(response[101]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[102] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[102]),
        .Q(response[102]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[103] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[103]),
        .Q(response[103]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[104] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[104]),
        .Q(response[104]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[105] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[105]),
        .Q(response[105]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[106] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[106]),
        .Q(response[106]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[107] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[107]),
        .Q(response[107]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[108] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[108]),
        .Q(response[108]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[109] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[109]),
        .Q(response[109]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[10] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[10]),
        .Q(response[10]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[110] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[110]),
        .Q(response[110]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[111] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[111]),
        .Q(response[111]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[112] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[112]),
        .Q(response[112]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[113] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[113]),
        .Q(response[113]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[114] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[114]),
        .Q(response[114]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[115] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[115]),
        .Q(response[115]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[116] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[116]),
        .Q(response[116]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[117] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[117]),
        .Q(response[117]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[118] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[118]),
        .Q(response[118]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[119] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[119]),
        .Q(response[119]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[11] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[11]),
        .Q(response[11]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[120] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[120]),
        .Q(response[120]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[121] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[121]),
        .Q(response[121]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[122] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[122]),
        .Q(response[122]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[123] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[123]),
        .Q(response[123]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[124] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[124]),
        .Q(response[124]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[125] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[125]),
        .Q(response[125]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[126] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[126]),
        .Q(response[126]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[127] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[127]),
        .Q(response[127]),
        .R(\response[127]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \response_reg[127]_i_12 
       (.CI(\response_reg[127]_i_13_n_0 ),
        .CO({\NLW_response_reg[127]_i_12_CO_UNCONNECTED [3:2],\response_reg[127]_i_12_n_2 ,\response_reg[127]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,activation_duration[14:13]}),
        .O({\NLW_response_reg[127]_i_12_O_UNCONNECTED [3],state2[15:13]}),
        .S({1'b0,\response[127]_i_16_n_0 ,\response[127]_i_17_n_0 ,\response[127]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \response_reg[127]_i_13 
       (.CI(\response_reg[127]_i_14_n_0 ),
        .CO({\response_reg[127]_i_13_n_0 ,\response_reg[127]_i_13_n_1 ,\response_reg[127]_i_13_n_2 ,\response_reg[127]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI(activation_duration[12:9]),
        .O(state2[12:9]),
        .S({\response[127]_i_19_n_0 ,\response[127]_i_20_n_0 ,\response[127]_i_21_n_0 ,\response[127]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \response_reg[127]_i_14 
       (.CI(\response_reg[127]_i_15_n_0 ),
        .CO({\response_reg[127]_i_14_n_0 ,\response_reg[127]_i_14_n_1 ,\response_reg[127]_i_14_n_2 ,\response_reg[127]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(activation_duration[8:5]),
        .O(state2[8:5]),
        .S({\response[127]_i_23_n_0 ,\response[127]_i_24_n_0 ,\response[127]_i_25_n_0 ,\response[127]_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \response_reg[127]_i_15 
       (.CI(1'b0),
        .CO({\response_reg[127]_i_15_n_0 ,\response_reg[127]_i_15_n_1 ,\response_reg[127]_i_15_n_2 ,\response_reg[127]_i_15_n_3 }),
        .CYINIT(activation_duration[0]),
        .DI(activation_duration[4:1]),
        .O(state2[4:1]),
        .S({\response[127]_i_27_n_0 ,\response[127]_i_28_n_0 ,\response[127]_i_29_n_0 ,\response[127]_i_30_n_0 }));
  CARRY4 \response_reg[127]_i_4 
       (.CI(\response_reg[127]_i_5_n_0 ),
        .CO({\NLW_response_reg[127]_i_4_CO_UNCONNECTED [3:2],\response_reg[127]_i_4_n_2 ,\response_reg[127]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_response_reg[127]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\response[127]_i_6_n_0 ,\response[127]_i_7_n_0 }));
  CARRY4 \response_reg[127]_i_5 
       (.CI(1'b0),
        .CO({\response_reg[127]_i_5_n_0 ,\response_reg[127]_i_5_n_1 ,\response_reg[127]_i_5_n_2 ,\response_reg[127]_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_response_reg[127]_i_5_O_UNCONNECTED [3:0]),
        .S({\response[127]_i_8_n_0 ,\response[127]_i_9_n_0 ,\response[127]_i_10_n_0 ,\response[127]_i_11_n_0 }));
  FDRE \response_reg[12] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[12]),
        .Q(response[12]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[13] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[13]),
        .Q(response[13]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[14] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[14]),
        .Q(response[14]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[15] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[15]),
        .Q(response[15]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[16] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[16]),
        .Q(response[16]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[17] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[17]),
        .Q(response[17]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[18] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[18]),
        .Q(response[18]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[19] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[19]),
        .Q(response[19]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[1] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[1]),
        .Q(response[1]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[20] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[20]),
        .Q(response[20]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[21] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[21]),
        .Q(response[21]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[22] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[22]),
        .Q(response[22]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[23] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[23]),
        .Q(response[23]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[24] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[24]),
        .Q(response[24]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[25] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[25]),
        .Q(response[25]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[26] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[26]),
        .Q(response[26]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[27] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[27]),
        .Q(response[27]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[28] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[28]),
        .Q(response[28]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[29] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[29]),
        .Q(response[29]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[2] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[2]),
        .Q(response[2]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[30] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[30]),
        .Q(response[30]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[31] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[31]),
        .Q(response[31]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[32] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[32]),
        .Q(response[32]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[33] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[33]),
        .Q(response[33]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[34] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[34]),
        .Q(response[34]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[35] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[35]),
        .Q(response[35]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[36] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[36]),
        .Q(response[36]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[37] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[37]),
        .Q(response[37]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[38] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[38]),
        .Q(response[38]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[39] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[39]),
        .Q(response[39]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[3] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[3]),
        .Q(response[3]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[40] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[40]),
        .Q(response[40]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[41] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[41]),
        .Q(response[41]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[42] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[42]),
        .Q(response[42]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[43] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[43]),
        .Q(response[43]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[44] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[44]),
        .Q(response[44]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[45] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[45]),
        .Q(response[45]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[46] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[46]),
        .Q(response[46]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[47] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[47]),
        .Q(response[47]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[48] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[48]),
        .Q(response[48]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[49] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[49]),
        .Q(response[49]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[4] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[4]),
        .Q(response[4]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[50] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[50]),
        .Q(response[50]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[51] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[51]),
        .Q(response[51]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[52] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[52]),
        .Q(response[52]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[53] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[53]),
        .Q(response[53]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[54] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[54]),
        .Q(response[54]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[55] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[55]),
        .Q(response[55]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[56] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[56]),
        .Q(response[56]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[57] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[57]),
        .Q(response[57]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[58] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[58]),
        .Q(response[58]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[59] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[59]),
        .Q(response[59]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[5] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[5]),
        .Q(response[5]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[60] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[60]),
        .Q(response[60]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[61] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[61]),
        .Q(response[61]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[62] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[62]),
        .Q(response[62]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[63] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[63]),
        .Q(response[63]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[64] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[64]),
        .Q(response[64]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[65] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[65]),
        .Q(response[65]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[66] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[66]),
        .Q(response[66]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[67] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[67]),
        .Q(response[67]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[68] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[68]),
        .Q(response[68]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[69] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[69]),
        .Q(response[69]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[6] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[6]),
        .Q(response[6]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[70] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[70]),
        .Q(response[70]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[71] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[71]),
        .Q(response[71]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[72] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[72]),
        .Q(response[72]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[73] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[73]),
        .Q(response[73]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[74] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[74]),
        .Q(response[74]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[75] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[75]),
        .Q(response[75]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[76] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[76]),
        .Q(response[76]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[77] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[77]),
        .Q(response[77]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[78] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[78]),
        .Q(response[78]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[79] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[79]),
        .Q(response[79]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[7] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[7]),
        .Q(response[7]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[80] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[80]),
        .Q(response[80]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[81] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[81]),
        .Q(response[81]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[82] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[82]),
        .Q(response[82]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[83] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[83]),
        .Q(response[83]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[84] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[84]),
        .Q(response[84]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[85] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[85]),
        .Q(response[85]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[86] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[86]),
        .Q(response[86]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[87] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[87]),
        .Q(response[87]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[88] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[88]),
        .Q(response[88]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[89] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[89]),
        .Q(response[89]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[8] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[8]),
        .Q(response[8]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[90] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[90]),
        .Q(response[90]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[91] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[91]),
        .Q(response[91]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[92] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[92]),
        .Q(response[92]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[93] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[93]),
        .Q(response[93]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[94] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[94]),
        .Q(response[94]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[95] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[95]),
        .Q(response[95]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[96] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[96]),
        .Q(response[96]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[97] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[97]),
        .Q(response[97]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[98] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[98]),
        .Q(response[98]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[99] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[99]),
        .Q(response[99]),
        .R(\response[127]_i_1_n_0 ));
  FDRE \response_reg[9] 
       (.C(clk),
        .CE(\response[127]_i_2_n_0 ),
        .D(core_out[9]),
        .Q(response[9]),
        .R(\response[127]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
