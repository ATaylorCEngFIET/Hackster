// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
// Date        : Fri Mar  6 18:37:32 2020
// Host        : DESKTOP-L3OMJC1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tpg_0_1_stub.v
// Design      : design_1_tpg_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tpg,Vivado 2019.1.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_cmd_AWADDR, s_axi_cmd_AWVALID, 
  s_axi_cmd_AWREADY, s_axi_cmd_WDATA, s_axi_cmd_WSTRB, s_axi_cmd_WVALID, s_axi_cmd_WREADY, 
  s_axi_cmd_BRESP, s_axi_cmd_BVALID, s_axi_cmd_BREADY, s_axi_cmd_ARADDR, s_axi_cmd_ARVALID, 
  s_axi_cmd_ARREADY, s_axi_cmd_RDATA, s_axi_cmd_RRESP, s_axi_cmd_RVALID, s_axi_cmd_RREADY, 
  ap_clk, ap_rst_n, interrupt, OUTPUT_STREAM_TVALID, OUTPUT_STREAM_TREADY, 
  OUTPUT_STREAM_TDATA, OUTPUT_STREAM_TDEST, OUTPUT_STREAM_TKEEP, OUTPUT_STREAM_TSTRB, 
  OUTPUT_STREAM_TUSER, OUTPUT_STREAM_TLAST, OUTPUT_STREAM_TID)
/* synthesis syn_black_box black_box_pad_pin="s_axi_cmd_AWADDR[4:0],s_axi_cmd_AWVALID,s_axi_cmd_AWREADY,s_axi_cmd_WDATA[31:0],s_axi_cmd_WSTRB[3:0],s_axi_cmd_WVALID,s_axi_cmd_WREADY,s_axi_cmd_BRESP[1:0],s_axi_cmd_BVALID,s_axi_cmd_BREADY,s_axi_cmd_ARADDR[4:0],s_axi_cmd_ARVALID,s_axi_cmd_ARREADY,s_axi_cmd_RDATA[31:0],s_axi_cmd_RRESP[1:0],s_axi_cmd_RVALID,s_axi_cmd_RREADY,ap_clk,ap_rst_n,interrupt,OUTPUT_STREAM_TVALID,OUTPUT_STREAM_TREADY,OUTPUT_STREAM_TDATA[23:0],OUTPUT_STREAM_TDEST[0:0],OUTPUT_STREAM_TKEEP[2:0],OUTPUT_STREAM_TSTRB[2:0],OUTPUT_STREAM_TUSER[0:0],OUTPUT_STREAM_TLAST[0:0],OUTPUT_STREAM_TID[0:0]" */;
  input [4:0]s_axi_cmd_AWADDR;
  input s_axi_cmd_AWVALID;
  output s_axi_cmd_AWREADY;
  input [31:0]s_axi_cmd_WDATA;
  input [3:0]s_axi_cmd_WSTRB;
  input s_axi_cmd_WVALID;
  output s_axi_cmd_WREADY;
  output [1:0]s_axi_cmd_BRESP;
  output s_axi_cmd_BVALID;
  input s_axi_cmd_BREADY;
  input [4:0]s_axi_cmd_ARADDR;
  input s_axi_cmd_ARVALID;
  output s_axi_cmd_ARREADY;
  output [31:0]s_axi_cmd_RDATA;
  output [1:0]s_axi_cmd_RRESP;
  output s_axi_cmd_RVALID;
  input s_axi_cmd_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output OUTPUT_STREAM_TVALID;
  input OUTPUT_STREAM_TREADY;
  output [23:0]OUTPUT_STREAM_TDATA;
  output [0:0]OUTPUT_STREAM_TDEST;
  output [2:0]OUTPUT_STREAM_TKEEP;
  output [2:0]OUTPUT_STREAM_TSTRB;
  output [0:0]OUTPUT_STREAM_TUSER;
  output [0:0]OUTPUT_STREAM_TLAST;
  output [0:0]OUTPUT_STREAM_TID;
endmodule
