// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Apr  7 14:16:24 2019
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_audio_top_0_0_stub.v
// Design      : design_1_audio_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "audio_top,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, AudioA_TVALID, AudioA_TREADY, AudioA_TDATA, AudioA_TDEST, AudioA_TKEEP, 
  AudioA_TSTRB, AudioA_TUSER, AudioA_TLAST, AudioA_TID, AudioB_TVALID, AudioB_TREADY, 
  AudioB_TDATA, AudioB_TDEST, AudioB_TKEEP, AudioB_TSTRB, AudioB_TUSER, AudioB_TLAST, 
  AudioB_TID)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,AudioA_TVALID,AudioA_TREADY,AudioA_TDATA[31:0],AudioA_TDEST[0:0],AudioA_TKEEP[3:0],AudioA_TSTRB[3:0],AudioA_TUSER[0:0],AudioA_TLAST[0:0],AudioA_TID[0:0],AudioB_TVALID,AudioB_TREADY,AudioB_TDATA[31:0],AudioB_TDEST[0:0],AudioB_TKEEP[3:0],AudioB_TSTRB[3:0],AudioB_TUSER[0:0],AudioB_TLAST[0:0],AudioB_TID[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input AudioA_TVALID;
  output AudioA_TREADY;
  input [31:0]AudioA_TDATA;
  input [0:0]AudioA_TDEST;
  input [3:0]AudioA_TKEEP;
  input [3:0]AudioA_TSTRB;
  input [0:0]AudioA_TUSER;
  input [0:0]AudioA_TLAST;
  input [0:0]AudioA_TID;
  output AudioB_TVALID;
  input AudioB_TREADY;
  output [31:0]AudioB_TDATA;
  output [0:0]AudioB_TDEST;
  output [3:0]AudioB_TKEEP;
  output [3:0]AudioB_TSTRB;
  output [0:0]AudioB_TUSER;
  output [0:0]AudioB_TLAST;
  output [0:0]AudioB_TID;
endmodule
