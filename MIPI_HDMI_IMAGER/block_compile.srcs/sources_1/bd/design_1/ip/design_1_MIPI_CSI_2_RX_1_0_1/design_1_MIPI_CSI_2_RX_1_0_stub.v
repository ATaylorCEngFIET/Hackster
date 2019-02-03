// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Dec  3 15:48:48 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/hdl_projects/Zybo_EV_Platform/block_compile.srcs/sources_1/bd/design_1/ip/design_1_MIPI_CSI_2_RX_1_0_1/design_1_MIPI_CSI_2_RX_1_0_stub.v
// Design      : design_1_MIPI_CSI_2_RX_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mipi_csi2_rx_top,Vivado 2017.4" *)
module design_1_MIPI_CSI_2_RX_1_0(RxByteClkHS, aClkStopstate, aRxClkActiveHS, 
  RxDataHSD0, RxSyncHSD0, RxValidHSD0, RxActiveHSD0, aD0Enable, RxDataHSD1, RxSyncHSD1, 
  RxValidHSD1, RxActiveHSD1, aD1Enable, RxDataHSD2, RxSyncHSD2, RxValidHSD2, RxActiveHSD2, 
  aD2Enable, RxDataHSD3, RxSyncHSD3, RxValidHSD3, RxActiveHSD3, aD3Enable, aClkEnable, 
  m_axis_video_tdata, m_axis_video_tvalid, m_axis_video_tready, m_axis_video_tlast, 
  m_axis_video_tuser, video_aclk, s_axi_lite_awaddr, s_axi_lite_awprot, s_axi_lite_awvalid, 
  s_axi_lite_awready, s_axi_lite_wdata, s_axi_lite_wstrb, s_axi_lite_wvalid, 
  s_axi_lite_wready, s_axi_lite_bresp, s_axi_lite_bvalid, s_axi_lite_bready, 
  s_axi_lite_araddr, s_axi_lite_arprot, s_axi_lite_arvalid, s_axi_lite_arready, 
  s_axi_lite_rdata, s_axi_lite_rresp, s_axi_lite_rvalid, s_axi_lite_rready, 
  s_axi_lite_aclk, s_axi_lite_aresetn)
/* synthesis syn_black_box black_box_pad_pin="RxByteClkHS,aClkStopstate,aRxClkActiveHS,RxDataHSD0[7:0],RxSyncHSD0,RxValidHSD0,RxActiveHSD0,aD0Enable,RxDataHSD1[7:0],RxSyncHSD1,RxValidHSD1,RxActiveHSD1,aD1Enable,RxDataHSD2[7:0],RxSyncHSD2,RxValidHSD2,RxActiveHSD2,aD2Enable,RxDataHSD3[7:0],RxSyncHSD3,RxValidHSD3,RxActiveHSD3,aD3Enable,aClkEnable,m_axis_video_tdata[39:0],m_axis_video_tvalid,m_axis_video_tready,m_axis_video_tlast,m_axis_video_tuser[0:0],video_aclk,s_axi_lite_awaddr[3:0],s_axi_lite_awprot[2:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[3:0],s_axi_lite_arprot[2:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready,s_axi_lite_aclk,s_axi_lite_aresetn" */;
  input RxByteClkHS;
  input aClkStopstate;
  input aRxClkActiveHS;
  input [7:0]RxDataHSD0;
  input RxSyncHSD0;
  input RxValidHSD0;
  input RxActiveHSD0;
  output aD0Enable;
  input [7:0]RxDataHSD1;
  input RxSyncHSD1;
  input RxValidHSD1;
  input RxActiveHSD1;
  output aD1Enable;
  input [7:0]RxDataHSD2;
  input RxSyncHSD2;
  input RxValidHSD2;
  input RxActiveHSD2;
  output aD2Enable;
  input [7:0]RxDataHSD3;
  input RxSyncHSD3;
  input RxValidHSD3;
  input RxActiveHSD3;
  output aD3Enable;
  output aClkEnable;
  output [39:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  input video_aclk;
  input [3:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [3:0]s_axi_lite_araddr;
  input [2:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
endmodule
