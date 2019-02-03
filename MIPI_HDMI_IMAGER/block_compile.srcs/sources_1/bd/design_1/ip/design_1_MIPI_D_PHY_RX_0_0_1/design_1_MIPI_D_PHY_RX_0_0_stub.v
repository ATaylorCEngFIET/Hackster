// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Dec  3 15:45:17 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/hdl_projects/Zybo_EV_Platform/block_compile.srcs/sources_1/bd/design_1/ip/design_1_MIPI_D_PHY_RX_0_0_1/design_1_MIPI_D_PHY_RX_0_0_stub.v
// Design      : design_1_MIPI_D_PHY_RX_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MIPI_DPHY_Receiver,Vivado 2017.4" *)
module design_1_MIPI_D_PHY_RX_0_0(dphy_clk_hs_p, dphy_clk_hs_n, dphy_clk_lp_p, 
  dphy_clk_lp_n, dphy_data_hs_p, dphy_data_hs_n, dphy_data_lp_p, dphy_data_lp_n, RefClk, aRst, 
  RxDDRClkHS, aRxClkActiveHS, aClkStopstate, aClkEnable, aClkUlpsActiveNot, aRxUlpsClkNot, 
  aClkForceRxmode, aClkErrControl, RxByteClkHS, aD0Stopstate, aD0Enable, aD0UlpsActiveNot, 
  rbD0RxDataHS, rbD0RxValidHS, rbD0RxActiveHS, rbD0RxSyncHS, rbD0ErrSotHS, rbD0ErrSotSyncHS, 
  aD0ForceRxmode, D0RxClkEsc, aD0RxDataEsc, aD0RxValidEsc, aD0RxLpdtEsc, aD0RxUlpsEsc, 
  aD0RxTriggerEsc, aD0ErrEsc, aD0ErrControl, aD1Stopstate, aD1Enable, aD1UlpsActiveNot, 
  rbD1RxDataHS, rbD1RxValidHS, rbD1RxActiveHS, rbD1RxSyncHS, rbD1ErrSotHS, rbD1ErrSotSyncHS, 
  aD1ForceRxmode, D1RxClkEsc, aD1RxDataEsc, aD1RxValidEsc, aD1RxLpdtEsc, aD1RxUlpsEsc, 
  aD1RxTriggerEsc, aD1ErrEsc, aD1ErrControl, s_axi_lite_awaddr, s_axi_lite_awprot, 
  s_axi_lite_awvalid, s_axi_lite_awready, s_axi_lite_wdata, s_axi_lite_wstrb, 
  s_axi_lite_wvalid, s_axi_lite_wready, s_axi_lite_bresp, s_axi_lite_bvalid, 
  s_axi_lite_bready, s_axi_lite_araddr, s_axi_lite_arprot, s_axi_lite_arvalid, 
  s_axi_lite_arready, s_axi_lite_rdata, s_axi_lite_rresp, s_axi_lite_rvalid, 
  s_axi_lite_rready, s_axi_lite_aclk, s_axi_lite_aresetn)
/* synthesis syn_black_box black_box_pad_pin="dphy_clk_hs_p,dphy_clk_hs_n,dphy_clk_lp_p,dphy_clk_lp_n,dphy_data_hs_p[1:0],dphy_data_hs_n[1:0],dphy_data_lp_p[1:0],dphy_data_lp_n[1:0],RefClk,aRst,RxDDRClkHS,aRxClkActiveHS,aClkStopstate,aClkEnable,aClkUlpsActiveNot,aRxUlpsClkNot,aClkForceRxmode,aClkErrControl,RxByteClkHS,aD0Stopstate,aD0Enable,aD0UlpsActiveNot,rbD0RxDataHS[7:0],rbD0RxValidHS,rbD0RxActiveHS,rbD0RxSyncHS,rbD0ErrSotHS,rbD0ErrSotSyncHS,aD0ForceRxmode,D0RxClkEsc,aD0RxDataEsc[7:0],aD0RxValidEsc,aD0RxLpdtEsc,aD0RxUlpsEsc,aD0RxTriggerEsc[3:0],aD0ErrEsc,aD0ErrControl,aD1Stopstate,aD1Enable,aD1UlpsActiveNot,rbD1RxDataHS[7:0],rbD1RxValidHS,rbD1RxActiveHS,rbD1RxSyncHS,rbD1ErrSotHS,rbD1ErrSotSyncHS,aD1ForceRxmode,D1RxClkEsc,aD1RxDataEsc[7:0],aD1RxValidEsc,aD1RxLpdtEsc,aD1RxUlpsEsc,aD1RxTriggerEsc[3:0],aD1ErrEsc,aD1ErrControl,s_axi_lite_awaddr[3:0],s_axi_lite_awprot[2:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[3:0],s_axi_lite_arprot[2:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready,s_axi_lite_aclk,s_axi_lite_aresetn" */;
  input dphy_clk_hs_p;
  input dphy_clk_hs_n;
  input dphy_clk_lp_p;
  input dphy_clk_lp_n;
  input [1:0]dphy_data_hs_p;
  input [1:0]dphy_data_hs_n;
  input [1:0]dphy_data_lp_p;
  input [1:0]dphy_data_lp_n;
  input RefClk;
  input aRst;
  output RxDDRClkHS;
  output aRxClkActiveHS;
  output aClkStopstate;
  input aClkEnable;
  output aClkUlpsActiveNot;
  output aRxUlpsClkNot;
  input aClkForceRxmode;
  output aClkErrControl;
  output RxByteClkHS;
  output aD0Stopstate;
  input aD0Enable;
  output aD0UlpsActiveNot;
  output [7:0]rbD0RxDataHS;
  output rbD0RxValidHS;
  output rbD0RxActiveHS;
  output rbD0RxSyncHS;
  output rbD0ErrSotHS;
  output rbD0ErrSotSyncHS;
  input aD0ForceRxmode;
  output D0RxClkEsc;
  output [7:0]aD0RxDataEsc;
  output aD0RxValidEsc;
  output aD0RxLpdtEsc;
  output aD0RxUlpsEsc;
  output [3:0]aD0RxTriggerEsc;
  output aD0ErrEsc;
  output aD0ErrControl;
  output aD1Stopstate;
  input aD1Enable;
  output aD1UlpsActiveNot;
  output [7:0]rbD1RxDataHS;
  output rbD1RxValidHS;
  output rbD1RxActiveHS;
  output rbD1RxSyncHS;
  output rbD1ErrSotHS;
  output rbD1ErrSotSyncHS;
  input aD1ForceRxmode;
  output D1RxClkEsc;
  output [7:0]aD1RxDataEsc;
  output aD1RxValidEsc;
  output aD1RxLpdtEsc;
  output aD1RxUlpsEsc;
  output [3:0]aD1RxTriggerEsc;
  output aD1ErrEsc;
  output aD1ErrControl;
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
