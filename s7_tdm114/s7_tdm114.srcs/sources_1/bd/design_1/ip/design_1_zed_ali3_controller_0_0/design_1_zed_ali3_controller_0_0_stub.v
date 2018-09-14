// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  9 19:49:14 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/hdl_projects/s7_tdm114/s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_zed_ali3_controller_0_0/design_1_zed_ali3_controller_0_0_stub.v
// Design      : design_1_zed_ali3_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "zed_ali3_controller,Vivado 2018.2" *)
module design_1_zed_ali3_controller_0_0(reset_in, clk_in, pll_locked, reset_out, clk_out, 
  video_de, video_vsync, video_hsync, video_data, ALI_RST_N, ALI_CLK_N, ALI_CLK_P, ALI_DATA_N, 
  ALI_DATA_P)
/* synthesis syn_black_box black_box_pad_pin="reset_in,clk_in,pll_locked,reset_out,clk_out,video_de,video_vsync,video_hsync,video_data[31:0],ALI_RST_N,ALI_CLK_N,ALI_CLK_P,ALI_DATA_N[3:0],ALI_DATA_P[3:0]" */;
  input reset_in;
  input clk_in;
  output pll_locked;
  output reset_out;
  output clk_out;
  input video_de;
  input video_vsync;
  input video_hsync;
  input [31:0]video_data;
  output ALI_RST_N;
  output ALI_CLK_N;
  output ALI_CLK_P;
  output [3:0]ALI_DATA_N;
  output [3:0]ALI_DATA_P;
endmodule
