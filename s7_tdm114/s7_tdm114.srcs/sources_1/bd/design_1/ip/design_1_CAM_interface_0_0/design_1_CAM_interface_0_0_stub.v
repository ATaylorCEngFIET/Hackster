// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  9 15:56:53 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_CAM_interface_0_0 -prefix
//               design_1_CAM_interface_0_0_ design_1_CAM_interface_0_0_stub.v
// Design      : design_1_CAM_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CAM_interface,Vivado 2018.2" *)
module design_1_CAM_interface_0_0(pclk, pixel_in, line_valid_in, frame_valid_in, 
  pclk_out, Dout, line_valid_out, frame_valid_out)
/* synthesis syn_black_box black_box_pad_pin="pclk,pixel_in[9:0],line_valid_in,frame_valid_in,pclk_out,Dout[7:0],line_valid_out,frame_valid_out" */;
  input pclk;
  input [9:0]pixel_in;
  input line_valid_in;
  input frame_valid_in;
  output pclk_out;
  output [7:0]Dout;
  output line_valid_out;
  output frame_valid_out;
endmodule
