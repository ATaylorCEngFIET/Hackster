// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  9 16:54:13 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_auto_cc_0 -prefix
//               design_1_auto_cc_0_ design_1_auto_cc_0_sim_netlist.v
// Design      : design_1_auto_cc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ARADDR_RIGHT = "3" *) (* C_ARADDR_WIDTH = "6" *) (* C_ARBURST_RIGHT = "3" *) 
(* C_ARBURST_WIDTH = "0" *) (* C_ARCACHE_RIGHT = "3" *) (* C_ARCACHE_WIDTH = "0" *) 
(* C_ARID_RIGHT = "9" *) (* C_ARID_WIDTH = "0" *) (* C_ARLEN_RIGHT = "3" *) 
(* C_ARLEN_WIDTH = "0" *) (* C_ARLOCK_RIGHT = "3" *) (* C_ARLOCK_WIDTH = "0" *) 
(* C_ARPROT_RIGHT = "0" *) (* C_ARPROT_WIDTH = "3" *) (* C_ARQOS_RIGHT = "0" *) 
(* C_ARQOS_WIDTH = "0" *) (* C_ARREGION_RIGHT = "0" *) (* C_ARREGION_WIDTH = "0" *) 
(* C_ARSIZE_RIGHT = "3" *) (* C_ARSIZE_WIDTH = "0" *) (* C_ARUSER_RIGHT = "0" *) 
(* C_ARUSER_WIDTH = "0" *) (* C_AR_WIDTH = "9" *) (* C_AWADDR_RIGHT = "3" *) 
(* C_AWADDR_WIDTH = "6" *) (* C_AWBURST_RIGHT = "3" *) (* C_AWBURST_WIDTH = "0" *) 
(* C_AWCACHE_RIGHT = "3" *) (* C_AWCACHE_WIDTH = "0" *) (* C_AWID_RIGHT = "9" *) 
(* C_AWID_WIDTH = "0" *) (* C_AWLEN_RIGHT = "3" *) (* C_AWLEN_WIDTH = "0" *) 
(* C_AWLOCK_RIGHT = "3" *) (* C_AWLOCK_WIDTH = "0" *) (* C_AWPROT_RIGHT = "0" *) 
(* C_AWPROT_WIDTH = "3" *) (* C_AWQOS_RIGHT = "0" *) (* C_AWQOS_WIDTH = "0" *) 
(* C_AWREGION_RIGHT = "0" *) (* C_AWREGION_WIDTH = "0" *) (* C_AWSIZE_RIGHT = "3" *) 
(* C_AWSIZE_WIDTH = "0" *) (* C_AWUSER_RIGHT = "0" *) (* C_AWUSER_WIDTH = "0" *) 
(* C_AW_WIDTH = "9" *) (* C_AXI_ADDR_WIDTH = "6" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) 
(* C_AXI_ID_WIDTH = "1" *) (* C_AXI_IS_ACLK_ASYNC = "1" *) (* C_AXI_PROTOCOL = "2" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_BID_RIGHT = "2" *) 
(* C_BID_WIDTH = "0" *) (* C_BRESP_RIGHT = "0" *) (* C_BRESP_WIDTH = "2" *) 
(* C_BUSER_RIGHT = "0" *) (* C_BUSER_WIDTH = "0" *) (* C_B_WIDTH = "2" *) 
(* C_FAMILY = "spartan7" *) (* C_FIFO_AR_WIDTH = "9" *) (* C_FIFO_AW_WIDTH = "9" *) 
(* C_FIFO_B_WIDTH = "2" *) (* C_FIFO_R_WIDTH = "34" *) (* C_FIFO_W_WIDTH = "36" *) 
(* C_M_AXI_ACLK_RATIO = "2" *) (* C_RDATA_RIGHT = "2" *) (* C_RDATA_WIDTH = "32" *) 
(* C_RID_RIGHT = "34" *) (* C_RID_WIDTH = "0" *) (* C_RLAST_RIGHT = "0" *) 
(* C_RLAST_WIDTH = "0" *) (* C_RRESP_RIGHT = "0" *) (* C_RRESP_WIDTH = "2" *) 
(* C_RUSER_RIGHT = "0" *) (* C_RUSER_WIDTH = "0" *) (* C_R_WIDTH = "34" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_WDATA_RIGHT = "4" *) 
(* C_WDATA_WIDTH = "32" *) (* C_WID_RIGHT = "36" *) (* C_WID_WIDTH = "0" *) 
(* C_WLAST_RIGHT = "0" *) (* C_WLAST_WIDTH = "0" *) (* C_WSTRB_RIGHT = "0" *) 
(* C_WSTRB_WIDTH = "4" *) (* C_WUSER_RIGHT = "0" *) (* C_WUSER_WIDTH = "0" *) 
(* C_W_WIDTH = "36" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ACLK_RATIO = "2" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_FULLY_REG = "1" *) (* P_LIGHT_WT = "0" *) (* P_LUTRAM_ASYNC = "12" *) 
(* P_ROUNDING_OFFSET = "0" *) (* P_SI_LT_MI = "1'b1" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_16_axi_clock_converter
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [5:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [5:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [0:0]m_axi_awid;
  output [5:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [5:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire [3:3]m_areset_dly;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  wire [5:0]m_axi_araddr;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [5:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [3:3]s_areset_dly;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async \gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_ar 
       (.dest_out({m_axi_arprot,m_axi_araddr}),
        .m_areset_dly(m_areset_dly),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .out(s_axi_aclk),
        .s_areset_dly(s_areset_dly),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .src_in({s_axi_arprot,s_axi_araddr}));
  design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async__xdcDup__1 \gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_aw 
       (.\FSM_sequential_dest_state_reg[1]_0 (m_areset_dly),
        .\FSM_sequential_src_state_reg[1]_0 (s_areset_dly),
        .dest_out({m_axi_awprot,m_axi_awaddr}),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .out(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .src_in({s_axi_awprot,s_axi_awaddr}));
  design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async__parameterized0 \gen_clock_conv.gen_async_lite_conv.clock_conv_lite_fwd_w 
       (.dest_out({m_axi_wstrb,m_axi_wdata}),
        .\m_areset_dly_reg[3] (m_areset_dly),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .out(s_axi_aclk),
        .\s_areset_dly_reg[3] (s_areset_dly),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .src_in({s_axi_wstrb,s_axi_wdata}));
  design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async__parameterized1 \gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_b 
       (.\m_areset_dly_reg[3] (m_areset_dly),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(m_axi_aclk),
        .\s_areset_dly_reg[3] (s_areset_dly),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
  design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async__parameterized2 \gen_clock_conv.gen_async_lite_conv.clock_conv_lite_resp_r 
       (.dest_out({s_axi_rresp,s_axi_rdata}),
        .\m_areset_dly_reg[3] (m_areset_dly),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(m_axi_aclk),
        .\s_areset_dly_reg[3] (s_areset_dly),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .src_in({m_axi_rresp,m_axi_rdata}));
endmodule

module design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async
   (dest_out,
    s_axi_arready,
    m_axi_arvalid,
    out,
    src_in,
    m_axi_aclk,
    s_areset_dly,
    m_areset_dly,
    m_axi_arready,
    s_axi_arvalid);
  output [8:0]dest_out;
  output s_axi_arready;
  output m_axi_arvalid;
  input out;
  input [8:0]src_in;
  input m_axi_aclk;
  input [0:0]s_areset_dly;
  input [0:0]m_areset_dly;
  input m_axi_arready;
  input s_axi_arvalid;

  wire \FSM_sequential_dest_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_dest_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_src_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_src_state[1]_i_1__0_n_0 ;
  wire dest_ack_i_1__0_n_0;
  wire dest_ack_reg_n_0;
  wire [8:0]dest_out;
  wire dest_req;
  (* RTL_KEEP = "yes" *) wire [1:0]dest_state;
  wire [0:0]m_areset_dly;
  wire m_axi_aclk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_valid_i_i_1__0_n_0;
  wire out;
  wire [0:0]s_areset_dly;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_ready_i_i_1__0_n_0;
  wire [8:0]src_in;
  wire src_rcv;
  wire src_send_i_1__0_n_0;
  wire src_send_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [1:0]src_state;

  LUT6 #(
    .INIT(64'h0D5D5D5D04040404)) 
    \FSM_sequential_dest_state[0]_i_1__0 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(m_axi_arready),
        .I4(m_axi_arvalid),
        .I5(dest_state[0]),
        .O(\FSM_sequential_dest_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5959595950000000)) 
    \FSM_sequential_dest_state[1]_i_1__0 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(m_axi_arready),
        .I4(m_axi_arvalid),
        .I5(dest_state[1]),
        .O(\FSM_sequential_dest_state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[0]_i_1__0_n_0 ),
        .Q(dest_state[0]),
        .R(m_areset_dly));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[1]_i_1__0_n_0 ),
        .Q(dest_state[1]),
        .R(m_areset_dly));
  LUT5 #(
    .INIT(32'h0F5D040C)) 
    \FSM_sequential_src_state[0]_i_1__0 
       (.I0(src_state[1]),
        .I1(s_axi_arvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[0]),
        .O(\FSM_sequential_src_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h5B515000)) 
    \FSM_sequential_src_state[1]_i_1__0 
       (.I0(src_state[1]),
        .I1(s_axi_arvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[1]),
        .O(\FSM_sequential_src_state[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[0]_i_1__0_n_0 ),
        .Q(src_state[0]),
        .R(s_areset_dly));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[1]_i_1__0_n_0 ),
        .Q(src_state[1]),
        .R(s_areset_dly));
  LUT6 #(
    .INIT(64'h55FF550040004000)) 
    dest_ack_i_1__0
       (.I0(dest_state[1]),
        .I1(m_axi_arvalid),
        .I2(m_axi_arready),
        .I3(dest_state[0]),
        .I4(dest_req),
        .I5(dest_ack_reg_n_0),
        .O(dest_ack_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_ack_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(dest_ack_i_1__0_n_0),
        .Q(dest_ack_reg_n_0),
        .R(m_areset_dly));
  (* DEST_EXT_HSK = "1" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "3" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_handshake handshake
       (.dest_ack(dest_ack_reg_n_0),
        .dest_clk(m_axi_aclk),
        .dest_out(dest_out),
        .dest_req(dest_req),
        .src_clk(out),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send_reg_n_0));
  LUT5 #(
    .INIT(32'h0030F0AA)) 
    m_valid_i_i_1__0
       (.I0(dest_req),
        .I1(m_axi_arready),
        .I2(m_axi_arvalid),
        .I3(dest_state[1]),
        .I4(dest_state[0]),
        .O(m_valid_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(m_axi_arvalid),
        .R(m_areset_dly));
  LUT4 #(
    .INIT(16'h5540)) 
    s_ready_i_i_1__0
       (.I0(src_state[1]),
        .I1(src_rcv),
        .I2(src_state[0]),
        .I3(s_axi_arready),
        .O(s_ready_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(s_axi_arready),
        .R(s_areset_dly));
  LUT5 #(
    .INIT(32'h0F5F040C)) 
    src_send_i_1__0
       (.I0(src_state[1]),
        .I1(s_axi_arvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_send_reg_n_0),
        .O(src_send_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_send_reg
       (.C(out),
        .CE(1'b1),
        .D(src_send_i_1__0_n_0),
        .Q(src_send_reg_n_0),
        .R(s_areset_dly));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_16_lite_async" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async__parameterized0
   (dest_out,
    s_axi_wready,
    m_axi_wvalid,
    out,
    src_in,
    m_axi_aclk,
    \s_areset_dly_reg[3] ,
    \m_areset_dly_reg[3] ,
    m_axi_wready,
    s_axi_wvalid);
  output [35:0]dest_out;
  output s_axi_wready;
  output m_axi_wvalid;
  input out;
  input [35:0]src_in;
  input m_axi_aclk;
  input [0:0]\s_areset_dly_reg[3] ;
  input [0:0]\m_areset_dly_reg[3] ;
  input m_axi_wready;
  input s_axi_wvalid;

  wire \FSM_sequential_dest_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_dest_state[1]_i_1__1_n_0 ;
  wire \FSM_sequential_src_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_src_state[1]_i_1__1_n_0 ;
  wire dest_ack_i_1__1_n_0;
  wire dest_ack_reg_n_0;
  wire [35:0]dest_out;
  wire dest_req;
  (* RTL_KEEP = "yes" *) wire [1:0]dest_state;
  wire [0:0]\m_areset_dly_reg[3] ;
  wire m_axi_aclk;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire m_valid_i_i_1__1_n_0;
  wire out;
  wire [0:0]\s_areset_dly_reg[3] ;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_ready_i_i_1__1_n_0;
  wire [35:0]src_in;
  wire src_rcv;
  wire src_send_i_1__1_n_0;
  wire src_send_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [1:0]src_state;

  LUT6 #(
    .INIT(64'h0D5D5D5D04040404)) 
    \FSM_sequential_dest_state[0]_i_1__1 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(m_axi_wready),
        .I4(m_axi_wvalid),
        .I5(dest_state[0]),
        .O(\FSM_sequential_dest_state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h5959595950000000)) 
    \FSM_sequential_dest_state[1]_i_1__1 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(m_axi_wready),
        .I4(m_axi_wvalid),
        .I5(dest_state[1]),
        .O(\FSM_sequential_dest_state[1]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[0]_i_1__1_n_0 ),
        .Q(dest_state[0]),
        .R(\m_areset_dly_reg[3] ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[1]_i_1__1_n_0 ),
        .Q(dest_state[1]),
        .R(\m_areset_dly_reg[3] ));
  LUT5 #(
    .INIT(32'h0F5D040C)) 
    \FSM_sequential_src_state[0]_i_1__1 
       (.I0(src_state[1]),
        .I1(s_axi_wvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[0]),
        .O(\FSM_sequential_src_state[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h5B515000)) 
    \FSM_sequential_src_state[1]_i_1__1 
       (.I0(src_state[1]),
        .I1(s_axi_wvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[1]),
        .O(\FSM_sequential_src_state[1]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[0]_i_1__1_n_0 ),
        .Q(src_state[0]),
        .R(\s_areset_dly_reg[3] ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[1]_i_1__1_n_0 ),
        .Q(src_state[1]),
        .R(\s_areset_dly_reg[3] ));
  LUT6 #(
    .INIT(64'h55FF550040004000)) 
    dest_ack_i_1__1
       (.I0(dest_state[1]),
        .I1(m_axi_wvalid),
        .I2(m_axi_wready),
        .I3(dest_state[0]),
        .I4(dest_req),
        .I5(dest_ack_reg_n_0),
        .O(dest_ack_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_ack_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(dest_ack_i_1__1_n_0),
        .Q(dest_ack_reg_n_0),
        .R(\m_areset_dly_reg[3] ));
  (* DEST_EXT_HSK = "1" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "3" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "36" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_handshake__parameterized0 handshake
       (.dest_ack(dest_ack_reg_n_0),
        .dest_clk(m_axi_aclk),
        .dest_out(dest_out),
        .dest_req(dest_req),
        .src_clk(out),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send_reg_n_0));
  LUT5 #(
    .INIT(32'h0030F0AA)) 
    m_valid_i_i_1__1
       (.I0(dest_req),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(dest_state[1]),
        .I4(dest_state[0]),
        .O(m_valid_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__1_n_0),
        .Q(m_axi_wvalid),
        .R(\m_areset_dly_reg[3] ));
  LUT4 #(
    .INIT(16'h5540)) 
    s_ready_i_i_1__1
       (.I0(src_state[1]),
        .I1(src_rcv),
        .I2(src_state[0]),
        .I3(s_axi_wready),
        .O(s_ready_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1__1_n_0),
        .Q(s_axi_wready),
        .R(\s_areset_dly_reg[3] ));
  LUT5 #(
    .INIT(32'h0F5F040C)) 
    src_send_i_1__1
       (.I0(src_state[1]),
        .I1(s_axi_wvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_send_reg_n_0),
        .O(src_send_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_send_reg
       (.C(out),
        .CE(1'b1),
        .D(src_send_i_1__1_n_0),
        .Q(src_send_reg_n_0),
        .R(\s_areset_dly_reg[3] ));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_16_lite_async" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async__parameterized1
   (s_axi_bresp,
    m_axi_bready,
    s_axi_bvalid,
    out,
    m_axi_bresp,
    s_axi_aclk,
    \m_areset_dly_reg[3] ,
    \s_areset_dly_reg[3] ,
    s_axi_bready,
    m_axi_bvalid);
  output [1:0]s_axi_bresp;
  output m_axi_bready;
  output s_axi_bvalid;
  input out;
  input [1:0]m_axi_bresp;
  input s_axi_aclk;
  input [0:0]\m_areset_dly_reg[3] ;
  input [0:0]\s_areset_dly_reg[3] ;
  input s_axi_bready;
  input m_axi_bvalid;

  wire \FSM_sequential_dest_state[0]_i_1__2_n_0 ;
  wire \FSM_sequential_dest_state[1]_i_1__2_n_0 ;
  wire \FSM_sequential_src_state[0]_i_1__2_n_0 ;
  wire \FSM_sequential_src_state[1]_i_1__2_n_0 ;
  wire dest_ack_i_1__2_n_0;
  wire dest_ack_reg_n_0;
  wire dest_req;
  (* RTL_KEEP = "yes" *) wire [1:0]dest_state;
  wire [0:0]\m_areset_dly_reg[3] ;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_valid_i_i_1__2_n_0;
  wire out;
  wire [0:0]\s_areset_dly_reg[3] ;
  wire s_axi_aclk;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_ready_i_i_1__2_n_0;
  wire src_rcv;
  wire src_send_i_1__2_n_0;
  wire src_send_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [1:0]src_state;

  LUT6 #(
    .INIT(64'h0D5D5D5D04040404)) 
    \FSM_sequential_dest_state[0]_i_1__2 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .I5(dest_state[0]),
        .O(\FSM_sequential_dest_state[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h5959595950000000)) 
    \FSM_sequential_dest_state[1]_i_1__2 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .I5(dest_state[1]),
        .O(\FSM_sequential_dest_state[1]_i_1__2_n_0 ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[0]_i_1__2_n_0 ),
        .Q(dest_state[0]),
        .R(\s_areset_dly_reg[3] ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[1]_i_1__2_n_0 ),
        .Q(dest_state[1]),
        .R(\s_areset_dly_reg[3] ));
  LUT5 #(
    .INIT(32'h0F5D040C)) 
    \FSM_sequential_src_state[0]_i_1__2 
       (.I0(src_state[1]),
        .I1(m_axi_bvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[0]),
        .O(\FSM_sequential_src_state[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h5B515000)) 
    \FSM_sequential_src_state[1]_i_1__2 
       (.I0(src_state[1]),
        .I1(m_axi_bvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[1]),
        .O(\FSM_sequential_src_state[1]_i_1__2_n_0 ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[0]_i_1__2_n_0 ),
        .Q(src_state[0]),
        .R(\m_areset_dly_reg[3] ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[1]_i_1__2_n_0 ),
        .Q(src_state[1]),
        .R(\m_areset_dly_reg[3] ));
  LUT6 #(
    .INIT(64'h55FF550040004000)) 
    dest_ack_i_1__2
       (.I0(dest_state[1]),
        .I1(s_axi_bvalid),
        .I2(s_axi_bready),
        .I3(dest_state[0]),
        .I4(dest_req),
        .I5(dest_ack_reg_n_0),
        .O(dest_ack_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_ack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dest_ack_i_1__2_n_0),
        .Q(dest_ack_reg_n_0),
        .R(\s_areset_dly_reg[3] ));
  (* DEST_EXT_HSK = "1" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "3" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "2" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_handshake__parameterized1 handshake
       (.dest_ack(dest_ack_reg_n_0),
        .dest_clk(s_axi_aclk),
        .dest_out(s_axi_bresp),
        .dest_req(dest_req),
        .src_clk(out),
        .src_in(m_axi_bresp),
        .src_rcv(src_rcv),
        .src_send(src_send_reg_n_0));
  LUT5 #(
    .INIT(32'h0030F0AA)) 
    m_valid_i_i_1__2
       (.I0(dest_req),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(dest_state[1]),
        .I4(dest_state[0]),
        .O(m_valid_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__2_n_0),
        .Q(s_axi_bvalid),
        .R(\s_areset_dly_reg[3] ));
  LUT4 #(
    .INIT(16'h5540)) 
    s_ready_i_i_1__2
       (.I0(src_state[1]),
        .I1(src_rcv),
        .I2(src_state[0]),
        .I3(m_axi_bready),
        .O(s_ready_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1__2_n_0),
        .Q(m_axi_bready),
        .R(\m_areset_dly_reg[3] ));
  LUT5 #(
    .INIT(32'h0F5F040C)) 
    src_send_i_1__2
       (.I0(src_state[1]),
        .I1(m_axi_bvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_send_reg_n_0),
        .O(src_send_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_send_reg
       (.C(out),
        .CE(1'b1),
        .D(src_send_i_1__2_n_0),
        .Q(src_send_reg_n_0),
        .R(\m_areset_dly_reg[3] ));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_16_lite_async" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async__parameterized2
   (dest_out,
    m_axi_rready,
    s_axi_rvalid,
    out,
    src_in,
    s_axi_aclk,
    \m_areset_dly_reg[3] ,
    \s_areset_dly_reg[3] ,
    s_axi_rready,
    m_axi_rvalid);
  output [33:0]dest_out;
  output m_axi_rready;
  output s_axi_rvalid;
  input out;
  input [33:0]src_in;
  input s_axi_aclk;
  input [0:0]\m_areset_dly_reg[3] ;
  input [0:0]\s_areset_dly_reg[3] ;
  input s_axi_rready;
  input m_axi_rvalid;

  wire \FSM_sequential_dest_state[0]_i_1__3_n_0 ;
  wire \FSM_sequential_dest_state[1]_i_1__3_n_0 ;
  wire \FSM_sequential_src_state[0]_i_1__3_n_0 ;
  wire \FSM_sequential_src_state[1]_i_1__3_n_0 ;
  wire dest_ack_i_1__3_n_0;
  wire dest_ack_reg_n_0;
  wire [33:0]dest_out;
  wire dest_req;
  (* RTL_KEEP = "yes" *) wire [1:0]dest_state;
  wire [0:0]\m_areset_dly_reg[3] ;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire m_valid_i_i_1__3_n_0;
  wire out;
  wire [0:0]\s_areset_dly_reg[3] ;
  wire s_axi_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_ready_i_i_1__3_n_0;
  wire [33:0]src_in;
  wire src_rcv;
  wire src_send_i_1__3_n_0;
  wire src_send_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [1:0]src_state;

  LUT6 #(
    .INIT(64'h0D5D5D5D04040404)) 
    \FSM_sequential_dest_state[0]_i_1__3 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(dest_state[0]),
        .O(\FSM_sequential_dest_state[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h5959595950000000)) 
    \FSM_sequential_dest_state[1]_i_1__3 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .I5(dest_state[1]),
        .O(\FSM_sequential_dest_state[1]_i_1__3_n_0 ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[0]_i_1__3_n_0 ),
        .Q(dest_state[0]),
        .R(\s_areset_dly_reg[3] ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[1]_i_1__3_n_0 ),
        .Q(dest_state[1]),
        .R(\s_areset_dly_reg[3] ));
  LUT5 #(
    .INIT(32'h0F5D040C)) 
    \FSM_sequential_src_state[0]_i_1__3 
       (.I0(src_state[1]),
        .I1(m_axi_rvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[0]),
        .O(\FSM_sequential_src_state[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h5B515000)) 
    \FSM_sequential_src_state[1]_i_1__3 
       (.I0(src_state[1]),
        .I1(m_axi_rvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[1]),
        .O(\FSM_sequential_src_state[1]_i_1__3_n_0 ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[0]_i_1__3_n_0 ),
        .Q(src_state[0]),
        .R(\m_areset_dly_reg[3] ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[1]_i_1__3_n_0 ),
        .Q(src_state[1]),
        .R(\m_areset_dly_reg[3] ));
  LUT6 #(
    .INIT(64'h55FF550040004000)) 
    dest_ack_i_1__3
       (.I0(dest_state[1]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(dest_state[0]),
        .I4(dest_req),
        .I5(dest_ack_reg_n_0),
        .O(dest_ack_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_ack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dest_ack_i_1__3_n_0),
        .Q(dest_ack_reg_n_0),
        .R(\s_areset_dly_reg[3] ));
  (* DEST_EXT_HSK = "1" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "3" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "34" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_handshake__parameterized2 handshake
       (.dest_ack(dest_ack_reg_n_0),
        .dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .dest_req(dest_req),
        .src_clk(out),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send_reg_n_0));
  LUT5 #(
    .INIT(32'h0030F0AA)) 
    m_valid_i_i_1__3
       (.I0(dest_req),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(dest_state[1]),
        .I4(dest_state[0]),
        .O(m_valid_i_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__3_n_0),
        .Q(s_axi_rvalid),
        .R(\s_areset_dly_reg[3] ));
  LUT4 #(
    .INIT(16'h5540)) 
    s_ready_i_i_1__3
       (.I0(src_state[1]),
        .I1(src_rcv),
        .I2(src_state[0]),
        .I3(m_axi_rready),
        .O(s_ready_i_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1__3_n_0),
        .Q(m_axi_rready),
        .R(\m_areset_dly_reg[3] ));
  LUT5 #(
    .INIT(32'h0F5F040C)) 
    src_send_i_1__3
       (.I0(src_state[1]),
        .I1(m_axi_rvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_send_reg_n_0),
        .O(src_send_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_send_reg
       (.C(out),
        .CE(1'b1),
        .D(src_send_i_1__3_n_0),
        .Q(src_send_reg_n_0),
        .R(\m_areset_dly_reg[3] ));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_16_lite_async" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_16_lite_async__xdcDup__1
   (dest_out,
    \FSM_sequential_dest_state_reg[1]_0 ,
    \FSM_sequential_src_state_reg[1]_0 ,
    s_axi_awready,
    m_axi_awvalid,
    out,
    src_in,
    m_axi_aclk,
    m_axi_awready,
    s_axi_awvalid,
    s_axi_aresetn,
    m_axi_aresetn);
  output [8:0]dest_out;
  output [0:0]\FSM_sequential_dest_state_reg[1]_0 ;
  output [0:0]\FSM_sequential_src_state_reg[1]_0 ;
  output s_axi_awready;
  output m_axi_awvalid;
  input out;
  input [8:0]src_in;
  input m_axi_aclk;
  input m_axi_awready;
  input s_axi_awvalid;
  input s_axi_aresetn;
  input m_axi_aresetn;

  wire \FSM_sequential_dest_state[0]_i_1_n_0 ;
  wire \FSM_sequential_dest_state[1]_i_1_n_0 ;
  wire [0:0]\FSM_sequential_dest_state_reg[1]_0 ;
  wire \FSM_sequential_src_state[0]_i_1_n_0 ;
  wire \FSM_sequential_src_state[1]_i_1_n_0 ;
  wire [0:0]\FSM_sequential_src_state_reg[1]_0 ;
  wire dest_ack_i_1_n_0;
  wire dest_ack_reg_n_0;
  wire [8:0]dest_out;
  wire dest_req;
  (* RTL_KEEP = "yes" *) wire [1:0]dest_state;
  wire [2:0]m_areset_dly;
  wire \m_areset_dly[0]_i_1_n_0 ;
  wire \m_areset_dly[1]_i_1_n_0 ;
  wire \m_areset_dly[2]_i_1_n_0 ;
  wire \m_areset_dly[3]_i_1_n_0 ;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_valid_i_i_1_n_0;
  wire out;
  wire [2:0]s_areset_dly;
  wire \s_areset_dly[0]_i_1_n_0 ;
  wire \s_areset_dly[1]_i_1_n_0 ;
  wire \s_areset_dly[2]_i_1_n_0 ;
  wire \s_areset_dly[3]_i_1_n_0 ;
  wire s_axi_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_ready_i_i_1_n_0;
  wire [8:0]src_in;
  wire src_rcv;
  wire src_send_i_1_n_0;
  wire src_send_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [1:0]src_state;

  LUT6 #(
    .INIT(64'h0D5D5D5D04040404)) 
    \FSM_sequential_dest_state[0]_i_1 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(m_axi_awready),
        .I4(m_axi_awvalid),
        .I5(dest_state[0]),
        .O(\FSM_sequential_dest_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5959595950000000)) 
    \FSM_sequential_dest_state[1]_i_1 
       (.I0(dest_state[1]),
        .I1(dest_req),
        .I2(dest_state[0]),
        .I3(m_axi_awready),
        .I4(m_axi_awvalid),
        .I5(dest_state[1]),
        .O(\FSM_sequential_dest_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[0]_i_1_n_0 ),
        .Q(dest_state[0]),
        .R(\FSM_sequential_dest_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "DEST_DRV_VALID:01,DEST_DRV_ACK:10,DEST_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dest_state_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dest_state[1]_i_1_n_0 ),
        .Q(dest_state[1]),
        .R(\FSM_sequential_dest_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0F5D040C)) 
    \FSM_sequential_src_state[0]_i_1 
       (.I0(src_state[1]),
        .I1(s_axi_awvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[0]),
        .O(\FSM_sequential_src_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5B515000)) 
    \FSM_sequential_src_state[1]_i_1 
       (.I0(src_state[1]),
        .I1(s_axi_awvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_state[1]),
        .O(\FSM_sequential_src_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[0]_i_1_n_0 ),
        .Q(src_state[0]),
        .R(\FSM_sequential_src_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "SRC_WAIT_RCV_DONE:10,SRC_DRV_SEND:01,SRC_IDLE:00,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_src_state_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_src_state[1]_i_1_n_0 ),
        .Q(src_state[1]),
        .R(\FSM_sequential_src_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h55FF550040004000)) 
    dest_ack_i_1
       (.I0(dest_state[1]),
        .I1(m_axi_awvalid),
        .I2(m_axi_awready),
        .I3(dest_state[0]),
        .I4(dest_req),
        .I5(dest_ack_reg_n_0),
        .O(dest_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_ack_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(dest_ack_i_1_n_0),
        .Q(dest_ack_reg_n_0),
        .R(\FSM_sequential_dest_state_reg[1]_0 ));
  (* DEST_EXT_HSK = "1" *) 
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "3" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_handshake__xdcDup__1 handshake
       (.dest_ack(dest_ack_reg_n_0),
        .dest_clk(m_axi_aclk),
        .dest_out(dest_out),
        .dest_req(dest_req),
        .src_clk(out),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \m_areset_dly[0]_i_1 
       (.I0(m_axi_aresetn),
        .O(\m_areset_dly[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_areset_dly[1]_i_1 
       (.I0(m_areset_dly[0]),
        .I1(m_axi_aresetn),
        .O(\m_areset_dly[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_areset_dly[2]_i_1 
       (.I0(m_areset_dly[1]),
        .I1(m_axi_aresetn),
        .O(\m_areset_dly[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_areset_dly[3]_i_1 
       (.I0(m_areset_dly[2]),
        .I1(m_axi_aresetn),
        .O(\m_areset_dly[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_areset_dly_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\m_areset_dly[0]_i_1_n_0 ),
        .Q(m_areset_dly[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_areset_dly_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\m_areset_dly[1]_i_1_n_0 ),
        .Q(m_areset_dly[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_areset_dly_reg[2] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\m_areset_dly[2]_i_1_n_0 ),
        .Q(m_areset_dly[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_areset_dly_reg[3] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\m_areset_dly[3]_i_1_n_0 ),
        .Q(\FSM_sequential_dest_state_reg[1]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0030F0AA)) 
    m_valid_i_i_1
       (.I0(dest_req),
        .I1(m_axi_awready),
        .I2(m_axi_awvalid),
        .I3(dest_state[1]),
        .I4(dest_state[0]),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(m_axi_awvalid),
        .R(\FSM_sequential_dest_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_areset_dly[0]_i_1 
       (.I0(s_axi_aresetn),
        .O(\s_areset_dly[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_areset_dly[1]_i_1 
       (.I0(s_areset_dly[0]),
        .I1(s_axi_aresetn),
        .O(\s_areset_dly[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_areset_dly[2]_i_1 
       (.I0(s_areset_dly[1]),
        .I1(s_axi_aresetn),
        .O(\s_areset_dly[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_areset_dly[3]_i_1 
       (.I0(s_areset_dly[2]),
        .I1(s_axi_aresetn),
        .O(\s_areset_dly[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_areset_dly_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\s_areset_dly[0]_i_1_n_0 ),
        .Q(s_areset_dly[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_areset_dly_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\s_areset_dly[1]_i_1_n_0 ),
        .Q(s_areset_dly[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_areset_dly_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(\s_areset_dly[2]_i_1_n_0 ),
        .Q(s_areset_dly[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_areset_dly_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(\s_areset_dly[3]_i_1_n_0 ),
        .Q(\FSM_sequential_src_state_reg[1]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5540)) 
    s_ready_i_i_1
       (.I0(src_state[1]),
        .I1(src_rcv),
        .I2(src_state[0]),
        .I3(s_axi_awready),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_axi_awready),
        .R(\FSM_sequential_src_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0F5F040C)) 
    src_send_i_1
       (.I0(src_state[1]),
        .I1(s_axi_awvalid),
        .I2(src_state[0]),
        .I3(src_rcv),
        .I4(src_send_reg_n_0),
        .O(src_send_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_send_reg
       (.C(out),
        .CE(1'b1),
        .D(src_send_i_1_n_0),
        .Q(src_send_reg_n_0),
        .R(\FSM_sequential_src_state_reg[1]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_auto_cc_0,axi_clock_converter_v2_1_16_axi_clock_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_clock_converter_v2_1_16_axi_clock_converter,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_CLK, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 MI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input m_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [5:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [5:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 24000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_rready;

  wire m_axi_aclk;
  wire [5:0]m_axi_araddr;
  wire m_axi_aresetn;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [5:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_ARADDR_RIGHT = "3" *) 
  (* C_ARADDR_WIDTH = "6" *) 
  (* C_ARBURST_RIGHT = "3" *) 
  (* C_ARBURST_WIDTH = "0" *) 
  (* C_ARCACHE_RIGHT = "3" *) 
  (* C_ARCACHE_WIDTH = "0" *) 
  (* C_ARID_RIGHT = "9" *) 
  (* C_ARID_WIDTH = "0" *) 
  (* C_ARLEN_RIGHT = "3" *) 
  (* C_ARLEN_WIDTH = "0" *) 
  (* C_ARLOCK_RIGHT = "3" *) 
  (* C_ARLOCK_WIDTH = "0" *) 
  (* C_ARPROT_RIGHT = "0" *) 
  (* C_ARPROT_WIDTH = "3" *) 
  (* C_ARQOS_RIGHT = "0" *) 
  (* C_ARQOS_WIDTH = "0" *) 
  (* C_ARREGION_RIGHT = "0" *) 
  (* C_ARREGION_WIDTH = "0" *) 
  (* C_ARSIZE_RIGHT = "3" *) 
  (* C_ARSIZE_WIDTH = "0" *) 
  (* C_ARUSER_RIGHT = "0" *) 
  (* C_ARUSER_WIDTH = "0" *) 
  (* C_AR_WIDTH = "9" *) 
  (* C_AWADDR_RIGHT = "3" *) 
  (* C_AWADDR_WIDTH = "6" *) 
  (* C_AWBURST_RIGHT = "3" *) 
  (* C_AWBURST_WIDTH = "0" *) 
  (* C_AWCACHE_RIGHT = "3" *) 
  (* C_AWCACHE_WIDTH = "0" *) 
  (* C_AWID_RIGHT = "9" *) 
  (* C_AWID_WIDTH = "0" *) 
  (* C_AWLEN_RIGHT = "3" *) 
  (* C_AWLEN_WIDTH = "0" *) 
  (* C_AWLOCK_RIGHT = "3" *) 
  (* C_AWLOCK_WIDTH = "0" *) 
  (* C_AWPROT_RIGHT = "0" *) 
  (* C_AWPROT_WIDTH = "3" *) 
  (* C_AWQOS_RIGHT = "0" *) 
  (* C_AWQOS_WIDTH = "0" *) 
  (* C_AWREGION_RIGHT = "0" *) 
  (* C_AWREGION_WIDTH = "0" *) 
  (* C_AWSIZE_RIGHT = "3" *) 
  (* C_AWSIZE_WIDTH = "0" *) 
  (* C_AWUSER_RIGHT = "0" *) 
  (* C_AWUSER_WIDTH = "0" *) 
  (* C_AW_WIDTH = "9" *) 
  (* C_AXI_ADDR_WIDTH = "6" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_IS_ACLK_ASYNC = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BID_RIGHT = "2" *) 
  (* C_BID_WIDTH = "0" *) 
  (* C_BRESP_RIGHT = "0" *) 
  (* C_BRESP_WIDTH = "2" *) 
  (* C_BUSER_RIGHT = "0" *) 
  (* C_BUSER_WIDTH = "0" *) 
  (* C_B_WIDTH = "2" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FIFO_AR_WIDTH = "9" *) 
  (* C_FIFO_AW_WIDTH = "9" *) 
  (* C_FIFO_B_WIDTH = "2" *) 
  (* C_FIFO_R_WIDTH = "34" *) 
  (* C_FIFO_W_WIDTH = "36" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_RDATA_RIGHT = "2" *) 
  (* C_RDATA_WIDTH = "32" *) 
  (* C_RID_RIGHT = "34" *) 
  (* C_RID_WIDTH = "0" *) 
  (* C_RLAST_RIGHT = "0" *) 
  (* C_RLAST_WIDTH = "0" *) 
  (* C_RRESP_RIGHT = "0" *) 
  (* C_RRESP_WIDTH = "2" *) 
  (* C_RUSER_RIGHT = "0" *) 
  (* C_RUSER_WIDTH = "0" *) 
  (* C_R_WIDTH = "34" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_WDATA_RIGHT = "4" *) 
  (* C_WDATA_WIDTH = "32" *) 
  (* C_WID_RIGHT = "36" *) 
  (* C_WID_WIDTH = "0" *) 
  (* C_WLAST_RIGHT = "0" *) 
  (* C_WLAST_WIDTH = "0" *) 
  (* C_WSTRB_RIGHT = "0" *) 
  (* C_WSTRB_WIDTH = "4" *) 
  (* C_WUSER_RIGHT = "0" *) 
  (* C_WUSER_WIDTH = "0" *) 
  (* C_W_WIDTH = "36" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ACLK_RATIO = "2" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_FULLY_REG = "1" *) 
  (* P_LIGHT_WT = "0" *) 
  (* P_LUTRAM_ASYNC = "12" *) 
  (* P_ROUNDING_OFFSET = "0" *) 
  (* P_SI_LT_MI = "1'b1" *) 
  design_1_auto_cc_0_axi_clock_converter_v2_1_16_axi_clock_converter inst
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEST_EXT_HSK = "1" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "3" *) (* VERSION = "0" *) 
(* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "HANDSHAKE" *) 
module design_1_auto_cc_0_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [8:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [8:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_ack;
  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [8:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [8:0]src_hsdata_ff;
  wire [8:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[8:0] = dest_hsdata_ff;
  LUT2 #(
    .INIT(4'h2)) 
    dest_hsdata_en_inferred_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req),
        .O(dest_hsdata_en));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[8]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__5 xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_ack));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__4 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_EXT_HSK = "1" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "3" *) 
(* VERSION = "0" *) (* WIDTH = "36" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "HANDSHAKE" *) 
module design_1_auto_cc_0_xpm_cdc_handshake__parameterized0
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [35:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [35:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_ack;
  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [35:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [35:0]src_hsdata_ff;
  wire [35:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[35:0] = dest_hsdata_ff;
  LUT2 #(
    .INIT(4'h2)) 
    dest_hsdata_en_inferred_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req),
        .O(dest_hsdata_en));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[30] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[30]),
        .Q(dest_hsdata_ff[30]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[31] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[31]),
        .Q(dest_hsdata_ff[31]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[32] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[32]),
        .Q(dest_hsdata_ff[32]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[33] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[33]),
        .Q(dest_hsdata_ff[33]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[34] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[34]),
        .Q(dest_hsdata_ff[34]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[35] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[35]),
        .Q(dest_hsdata_ff[35]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[9] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[9]),
        .Q(dest_hsdata_ff[9]),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[35]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[19] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[19]),
        .Q(src_hsdata_ff[19]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[22] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[22]),
        .Q(src_hsdata_ff[22]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[23] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[23]),
        .Q(src_hsdata_ff[23]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[24] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[24]),
        .Q(src_hsdata_ff[24]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[25] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[25]),
        .Q(src_hsdata_ff[25]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[26] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[26]),
        .Q(src_hsdata_ff[26]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[27] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[27]),
        .Q(src_hsdata_ff[27]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[28] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[28]),
        .Q(src_hsdata_ff[28]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[29] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[29]),
        .Q(src_hsdata_ff[29]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[30] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[30]),
        .Q(src_hsdata_ff[30]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[31] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[31]),
        .Q(src_hsdata_ff[31]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[32] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[32]),
        .Q(src_hsdata_ff[32]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[33] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[33]),
        .Q(src_hsdata_ff[33]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[34] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[34]),
        .Q(src_hsdata_ff[34]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[35] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[35]),
        .Q(src_hsdata_ff[35]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[9] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[9]),
        .Q(src_hsdata_ff[9]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__7 xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_ack));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__6 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_EXT_HSK = "1" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "3" *) 
(* VERSION = "0" *) (* WIDTH = "2" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "HANDSHAKE" *) 
module design_1_auto_cc_0_xpm_cdc_handshake__parameterized1
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [1:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [1:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_ack;
  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [1:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_nxt;
  wire src_clk;
  wire [1:0]src_hsdata_ff;
  wire \src_hsdata_ff[0]_i_1_n_0 ;
  wire \src_hsdata_ff[1]_i_1_n_0 ;
  wire [1:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[1:0] = dest_hsdata_ff;
  LUT2 #(
    .INIT(4'h2)) 
    dest_hsdata_en_inferred_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req),
        .O(dest_hsdata_en));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE2)) 
    \src_hsdata_ff[0]_i_1 
       (.I0(src_in[0]),
        .I1(src_sendd_ff),
        .I2(src_hsdata_ff[0]),
        .O(\src_hsdata_ff[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \src_hsdata_ff[1]_i_1 
       (.I0(src_in[1]),
        .I1(src_sendd_ff),
        .I2(src_hsdata_ff[1]),
        .O(\src_hsdata_ff[1]_i_1_n_0 ));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(\src_hsdata_ff[0]_i_1_n_0 ),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(\src_hsdata_ff[1]_i_1_n_0 ),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__9 xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_ack));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__8 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_EXT_HSK = "1" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "3" *) 
(* VERSION = "0" *) (* WIDTH = "34" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "HANDSHAKE" *) 
module design_1_auto_cc_0_xpm_cdc_handshake__parameterized2
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [33:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [33:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_ack;
  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [33:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [33:0]src_hsdata_ff;
  wire [33:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[33:0] = dest_hsdata_ff;
  LUT2 #(
    .INIT(4'h2)) 
    dest_hsdata_en_inferred_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req),
        .O(dest_hsdata_en));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[30] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[30]),
        .Q(dest_hsdata_ff[30]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[31] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[31]),
        .Q(dest_hsdata_ff[31]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[32] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[32]),
        .Q(dest_hsdata_ff[32]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[33] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[33]),
        .Q(dest_hsdata_ff[33]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[9] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[9]),
        .Q(dest_hsdata_ff[9]),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[33]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[19] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[19]),
        .Q(src_hsdata_ff[19]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[22] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[22]),
        .Q(src_hsdata_ff[22]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[23] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[23]),
        .Q(src_hsdata_ff[23]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[24] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[24]),
        .Q(src_hsdata_ff[24]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[25] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[25]),
        .Q(src_hsdata_ff[25]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[26] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[26]),
        .Q(src_hsdata_ff[26]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[27] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[27]),
        .Q(src_hsdata_ff[27]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[28] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[28]),
        .Q(src_hsdata_ff[28]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[29] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[29]),
        .Q(src_hsdata_ff[29]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[30] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[30]),
        .Q(src_hsdata_ff[30]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[31] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[31]),
        .Q(src_hsdata_ff[31]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[32] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[32]),
        .Q(src_hsdata_ff[32]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[33] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[33]),
        .Q(src_hsdata_ff[33]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[9] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[9]),
        .Q(src_hsdata_ff[9]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_ack));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__10 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_EXT_HSK = "1" *) (* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "3" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "HANDSHAKE" *) 
module design_1_auto_cc_0_xpm_cdc_handshake__xdcDup__1
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [8:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [8:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_ack;
  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [8:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [8:0]src_hsdata_ff;
  wire [8:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[8:0] = dest_hsdata_ff;
  LUT2 #(
    .INIT(4'h2)) 
    dest_hsdata_en_inferred_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req),
        .O(dest_hsdata_en));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[8]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__3 xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_ack));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__2 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__10
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__5
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__7
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__8
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__9
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
