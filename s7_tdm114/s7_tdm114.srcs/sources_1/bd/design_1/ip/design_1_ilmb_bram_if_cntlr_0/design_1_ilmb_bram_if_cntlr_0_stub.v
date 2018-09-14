// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  9 16:06:19 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_ilmb_bram_if_cntlr_0 -prefix
//               design_1_ilmb_bram_if_cntlr_0_ design_1_ilmb_bram_if_cntlr_0_stub.v
// Design      : design_1_ilmb_bram_if_cntlr_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lmb_bram_if_cntlr,Vivado 2018.2" *)
module design_1_ilmb_bram_if_cntlr_0(LMB_Clk, LMB_Rst, LMB_ABus, LMB_WriteDBus, 
  LMB_AddrStrobe, LMB_ReadStrobe, LMB_WriteStrobe, LMB_BE, Sl_DBus, Sl_Ready, Sl_Wait, Sl_UE, 
  Sl_CE, BRAM_Rst_A, BRAM_Clk_A, BRAM_Addr_A, BRAM_EN_A, BRAM_WEN_A, BRAM_Dout_A, BRAM_Din_A)
/* synthesis syn_black_box black_box_pad_pin="LMB_Clk,LMB_Rst,LMB_ABus[0:31],LMB_WriteDBus[0:31],LMB_AddrStrobe,LMB_ReadStrobe,LMB_WriteStrobe,LMB_BE[0:3],Sl_DBus[0:31],Sl_Ready,Sl_Wait,Sl_UE,Sl_CE,BRAM_Rst_A,BRAM_Clk_A,BRAM_Addr_A[0:31],BRAM_EN_A,BRAM_WEN_A[0:3],BRAM_Dout_A[0:31],BRAM_Din_A[0:31]" */;
  input LMB_Clk;
  input LMB_Rst;
  input [0:31]LMB_ABus;
  input [0:31]LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3]LMB_BE;
  output [0:31]Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;
  output BRAM_Rst_A;
  output BRAM_Clk_A;
  output [0:31]BRAM_Addr_A;
  output BRAM_EN_A;
  output [0:3]BRAM_WEN_A;
  output [0:31]BRAM_Dout_A;
  input [0:31]BRAM_Din_A;
endmodule
