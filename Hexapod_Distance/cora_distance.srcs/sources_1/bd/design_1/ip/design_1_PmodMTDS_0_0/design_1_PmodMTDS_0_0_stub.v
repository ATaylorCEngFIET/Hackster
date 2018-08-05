// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug  1 11:40:26 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_PmodMTDS_0_0 -prefix
//               design_1_PmodMTDS_0_0_ design_1_PmodMTDS_0_0_stub.v
// Design      : design_1_PmodMTDS_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PmodMTDS,Vivado 2018.2" *)
module design_1_PmodMTDS_0_0(AXI_LITE_GPIO_araddr, 
  AXI_LITE_GPIO_arready, AXI_LITE_GPIO_arvalid, AXI_LITE_GPIO_awaddr, 
  AXI_LITE_GPIO_awready, AXI_LITE_GPIO_awvalid, AXI_LITE_GPIO_bready, 
  AXI_LITE_GPIO_bresp, AXI_LITE_GPIO_bvalid, AXI_LITE_GPIO_rdata, AXI_LITE_GPIO_rready, 
  AXI_LITE_GPIO_rresp, AXI_LITE_GPIO_rvalid, AXI_LITE_GPIO_wdata, AXI_LITE_GPIO_wready, 
  AXI_LITE_GPIO_wstrb, AXI_LITE_GPIO_wvalid, AXI_LITE_SPI_araddr, AXI_LITE_SPI_arready, 
  AXI_LITE_SPI_arvalid, AXI_LITE_SPI_awaddr, AXI_LITE_SPI_awready, AXI_LITE_SPI_awvalid, 
  AXI_LITE_SPI_bready, AXI_LITE_SPI_bresp, AXI_LITE_SPI_bvalid, AXI_LITE_SPI_rdata, 
  AXI_LITE_SPI_rready, AXI_LITE_SPI_rresp, AXI_LITE_SPI_rvalid, AXI_LITE_SPI_wdata, 
  AXI_LITE_SPI_wready, AXI_LITE_SPI_wstrb, AXI_LITE_SPI_wvalid, AXI_LITE_TIMER_araddr, 
  AXI_LITE_TIMER_arready, AXI_LITE_TIMER_arvalid, AXI_LITE_TIMER_awaddr, 
  AXI_LITE_TIMER_awready, AXI_LITE_TIMER_awvalid, AXI_LITE_TIMER_bready, 
  AXI_LITE_TIMER_bresp, AXI_LITE_TIMER_bvalid, AXI_LITE_TIMER_rdata, 
  AXI_LITE_TIMER_rready, AXI_LITE_TIMER_rresp, AXI_LITE_TIMER_rvalid, 
  AXI_LITE_TIMER_wdata, AXI_LITE_TIMER_wready, AXI_LITE_TIMER_wstrb, 
  AXI_LITE_TIMER_wvalid, SPI_SS_I, SPI_SS_O, SPI_SS_T, SPI_IO0_I, SPI_IO0_O, SPI_IO0_T, 
  SPI_IO1_I, SPI_IO1_O, SPI_IO1_T, SPI_CLK_I, SPI_CLK_O, SPI_CLK_T, SPI_Interrupt, 
  GPIO_Interrupt, s_axi_aclk, s_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="AXI_LITE_GPIO_araddr[8:0],AXI_LITE_GPIO_arready,AXI_LITE_GPIO_arvalid,AXI_LITE_GPIO_awaddr[8:0],AXI_LITE_GPIO_awready,AXI_LITE_GPIO_awvalid,AXI_LITE_GPIO_bready,AXI_LITE_GPIO_bresp[1:0],AXI_LITE_GPIO_bvalid,AXI_LITE_GPIO_rdata[31:0],AXI_LITE_GPIO_rready,AXI_LITE_GPIO_rresp[1:0],AXI_LITE_GPIO_rvalid,AXI_LITE_GPIO_wdata[31:0],AXI_LITE_GPIO_wready,AXI_LITE_GPIO_wstrb[3:0],AXI_LITE_GPIO_wvalid,AXI_LITE_SPI_araddr[6:0],AXI_LITE_SPI_arready,AXI_LITE_SPI_arvalid,AXI_LITE_SPI_awaddr[6:0],AXI_LITE_SPI_awready,AXI_LITE_SPI_awvalid,AXI_LITE_SPI_bready,AXI_LITE_SPI_bresp[1:0],AXI_LITE_SPI_bvalid,AXI_LITE_SPI_rdata[31:0],AXI_LITE_SPI_rready,AXI_LITE_SPI_rresp[1:0],AXI_LITE_SPI_rvalid,AXI_LITE_SPI_wdata[31:0],AXI_LITE_SPI_wready,AXI_LITE_SPI_wstrb[3:0],AXI_LITE_SPI_wvalid,AXI_LITE_TIMER_araddr[4:0],AXI_LITE_TIMER_arready,AXI_LITE_TIMER_arvalid,AXI_LITE_TIMER_awaddr[4:0],AXI_LITE_TIMER_awready,AXI_LITE_TIMER_awvalid,AXI_LITE_TIMER_bready,AXI_LITE_TIMER_bresp[1:0],AXI_LITE_TIMER_bvalid,AXI_LITE_TIMER_rdata[31:0],AXI_LITE_TIMER_rready,AXI_LITE_TIMER_rresp[1:0],AXI_LITE_TIMER_rvalid,AXI_LITE_TIMER_wdata[31:0],AXI_LITE_TIMER_wready,AXI_LITE_TIMER_wstrb[3:0],AXI_LITE_TIMER_wvalid,SPI_SS_I,SPI_SS_O,SPI_SS_T,SPI_IO0_I,SPI_IO0_O,SPI_IO0_T,SPI_IO1_I,SPI_IO1_O,SPI_IO1_T,SPI_CLK_I,SPI_CLK_O,SPI_CLK_T,SPI_Interrupt,GPIO_Interrupt,s_axi_aclk,s_axi_aresetn" */;
  input [8:0]AXI_LITE_GPIO_araddr;
  output AXI_LITE_GPIO_arready;
  input AXI_LITE_GPIO_arvalid;
  input [8:0]AXI_LITE_GPIO_awaddr;
  output AXI_LITE_GPIO_awready;
  input AXI_LITE_GPIO_awvalid;
  input AXI_LITE_GPIO_bready;
  output [1:0]AXI_LITE_GPIO_bresp;
  output AXI_LITE_GPIO_bvalid;
  output [31:0]AXI_LITE_GPIO_rdata;
  input AXI_LITE_GPIO_rready;
  output [1:0]AXI_LITE_GPIO_rresp;
  output AXI_LITE_GPIO_rvalid;
  input [31:0]AXI_LITE_GPIO_wdata;
  output AXI_LITE_GPIO_wready;
  input [3:0]AXI_LITE_GPIO_wstrb;
  input AXI_LITE_GPIO_wvalid;
  input [6:0]AXI_LITE_SPI_araddr;
  output AXI_LITE_SPI_arready;
  input AXI_LITE_SPI_arvalid;
  input [6:0]AXI_LITE_SPI_awaddr;
  output AXI_LITE_SPI_awready;
  input AXI_LITE_SPI_awvalid;
  input AXI_LITE_SPI_bready;
  output [1:0]AXI_LITE_SPI_bresp;
  output AXI_LITE_SPI_bvalid;
  output [31:0]AXI_LITE_SPI_rdata;
  input AXI_LITE_SPI_rready;
  output [1:0]AXI_LITE_SPI_rresp;
  output AXI_LITE_SPI_rvalid;
  input [31:0]AXI_LITE_SPI_wdata;
  output AXI_LITE_SPI_wready;
  input [3:0]AXI_LITE_SPI_wstrb;
  input AXI_LITE_SPI_wvalid;
  input [4:0]AXI_LITE_TIMER_araddr;
  output AXI_LITE_TIMER_arready;
  input AXI_LITE_TIMER_arvalid;
  input [4:0]AXI_LITE_TIMER_awaddr;
  output AXI_LITE_TIMER_awready;
  input AXI_LITE_TIMER_awvalid;
  input AXI_LITE_TIMER_bready;
  output [1:0]AXI_LITE_TIMER_bresp;
  output AXI_LITE_TIMER_bvalid;
  output [31:0]AXI_LITE_TIMER_rdata;
  input AXI_LITE_TIMER_rready;
  output [1:0]AXI_LITE_TIMER_rresp;
  output AXI_LITE_TIMER_rvalid;
  input [31:0]AXI_LITE_TIMER_wdata;
  output AXI_LITE_TIMER_wready;
  input [3:0]AXI_LITE_TIMER_wstrb;
  input AXI_LITE_TIMER_wvalid;
  input SPI_SS_I;
  output SPI_SS_O;
  output SPI_SS_T;
  input SPI_IO0_I;
  output SPI_IO0_O;
  output SPI_IO0_T;
  input SPI_IO1_I;
  output SPI_IO1_O;
  output SPI_IO1_T;
  input SPI_CLK_I;
  output SPI_CLK_O;
  output SPI_CLK_T;
  output SPI_Interrupt;
  output GPIO_Interrupt;
  input s_axi_aclk;
  input s_axi_aresetn;
endmodule
