// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Dec  3 15:45:17 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/hdl_projects/Zybo_EV_Platform/block_compile.srcs/sources_1/bd/design_1/ip/design_1_MIPI_D_PHY_RX_0_0_1/design_1_MIPI_D_PHY_RX_0_0_sim_netlist.v
// Design      : design_1_MIPI_D_PHY_RX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_MIPI_D_PHY_RX_0_0,MIPI_DPHY_Receiver,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "MIPI_DPHY_Receiver,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_MIPI_D_PHY_RX_0_0
   (dphy_clk_hs_p,
    dphy_clk_hs_n,
    dphy_clk_lp_p,
    dphy_clk_lp_n,
    dphy_data_hs_p,
    dphy_data_hs_n,
    dphy_data_lp_p,
    dphy_data_lp_n,
    RefClk,
    aRst,
    RxDDRClkHS,
    aRxClkActiveHS,
    aClkStopstate,
    aClkEnable,
    aClkUlpsActiveNot,
    aRxUlpsClkNot,
    aClkForceRxmode,
    aClkErrControl,
    RxByteClkHS,
    aD0Stopstate,
    aD0Enable,
    aD0UlpsActiveNot,
    rbD0RxDataHS,
    rbD0RxValidHS,
    rbD0RxActiveHS,
    rbD0RxSyncHS,
    rbD0ErrSotHS,
    rbD0ErrSotSyncHS,
    aD0ForceRxmode,
    D0RxClkEsc,
    aD0RxDataEsc,
    aD0RxValidEsc,
    aD0RxLpdtEsc,
    aD0RxUlpsEsc,
    aD0RxTriggerEsc,
    aD0ErrEsc,
    aD0ErrControl,
    aD1Stopstate,
    aD1Enable,
    aD1UlpsActiveNot,
    rbD1RxDataHS,
    rbD1RxValidHS,
    rbD1RxActiveHS,
    rbD1RxSyncHS,
    rbD1ErrSotHS,
    rbD1ErrSotSyncHS,
    aD1ForceRxmode,
    D1RxClkEsc,
    aD1RxDataEsc,
    aD1RxValidEsc,
    aD1RxLpdtEsc,
    aD1RxUlpsEsc,
    aD1RxTriggerEsc,
    aD1ErrEsc,
    aD1ErrControl,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_aclk,
    s_axi_lite_aresetn);
  (* x_interface_info = "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_P" *) (* x_interface_parameter = "XIL_INTERFACENAME dphy_hs_clock, CAN_DEBUG false, FREQ_HZ 100000000" *) input dphy_clk_hs_p;
  (* x_interface_info = "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_N" *) input dphy_clk_hs_n;
  input dphy_clk_lp_p;
  input dphy_clk_lp_n;
  input [1:0]dphy_data_hs_p;
  input [1:0]dphy_data_hs_n;
  input [1:0]dphy_data_lp_p;
  input [1:0]dphy_data_lp_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 RefClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME RefClk, ASSOCIATED_RESET aRst, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input RefClk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aRst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aRst, POLARITY ACTIVE_HIGH" *) input aRst;
  output RxDDRClkHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_RXCLKACTIVEHS" *) output aRxClkActiveHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_STOPSTATE" *) output aClkStopstate;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_ENABLE" *) input aClkEnable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_ULPSACTIVENOT" *) output aClkUlpsActiveNot;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_RXULPSCLKNOT" *) output aRxUlpsClkNot;
  input aClkForceRxmode;
  output aClkErrControl;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 RxByteClkHS CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME RxByteClkHS, FREQ_HZ 25000000, ASSOCIATED_BUSIF D_PHY_PPI, PHASE 0.000, CLK_DOMAIN design_1_MIPI_D_PHY_RX_0_0_RxByteClkHS" *) output RxByteClkHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_STOPSTATE" *) output aD0Stopstate;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ENABLE" *) input aD0Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ULPSACTIVENOT" *) output aD0UlpsActiveNot;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXDATAHS" *) output [7:0]rbD0RxDataHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXVALIDHS" *) output rbD0RxValidHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXACTIVEHS" *) output rbD0RxActiveHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXSYNCHS" *) output rbD0RxSyncHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRSOTHS" *) output rbD0ErrSotHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRSOTSYNCHS" *) output rbD0ErrSotSyncHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_FORCERXMODE" *) input aD0ForceRxmode;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXCLKESC" *) output D0RxClkEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXDATAESC" *) output [7:0]aD0RxDataEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXVALIDESC" *) output aD0RxValidEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXLPDTESC" *) output aD0RxLpdtEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXULPSESC" *) output aD0RxUlpsEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXTRIGGERESC" *) output [3:0]aD0RxTriggerEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRESC" *) output aD0ErrEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRCONTROL" *) output aD0ErrControl;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_STOPSTATE" *) output aD1Stopstate;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ENABLE" *) input aD1Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ULPSACTIVENOT" *) output aD1UlpsActiveNot;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXDATAHS" *) output [7:0]rbD1RxDataHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXVALIDHS" *) output rbD1RxValidHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXACTIVEHS" *) output rbD1RxActiveHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXSYNCHS" *) output rbD1RxSyncHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRSOTHS" *) output rbD1ErrSotHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRSOTSYNCHS" *) output rbD1ErrSotSyncHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_FORCERXMODE" *) input aD1ForceRxmode;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXCLKESC" *) output D1RxClkEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXDATAESC" *) output [7:0]aD1RxDataEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXVALIDESC" *) output aD1RxValidEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXLPDTESC" *) output aD1RxLpdtEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXULPSESC" *) output aD1RxUlpsEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXTRIGGERESC" *) output [3:0]aD1RxTriggerEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRESC" *) output aD1ErrEsc;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRCONTROL" *) output aD1ErrControl;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT" *) input [2:0]s_axi_lite_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input s_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]s_axi_lite_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [3:0]s_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT" *) input [2:0]s_axi_lite_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_lite_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_RESET s_axi_lite_aresetn, ASSOCIATED_BUSIF S_AXI_LITE, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2" *) input s_axi_lite_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW" *) input s_axi_lite_aresetn;

  wire D0RxClkEsc;
  wire D1RxClkEsc;
  wire RefClk;
  wire RxByteClkHS;
  wire RxDDRClkHS;
  wire aClkEnable;
  wire aClkErrControl;
  wire aClkForceRxmode;
  wire aClkStopstate;
  wire aClkUlpsActiveNot;
  wire aD0Enable;
  wire aD0ErrControl;
  wire aD0ErrEsc;
  wire aD0ForceRxmode;
  wire [7:0]aD0RxDataEsc;
  wire aD0RxLpdtEsc;
  wire [3:0]aD0RxTriggerEsc;
  wire aD0RxUlpsEsc;
  wire aD0RxValidEsc;
  wire aD0Stopstate;
  wire aD0UlpsActiveNot;
  wire aD1Enable;
  wire aD1ErrControl;
  wire aD1ErrEsc;
  wire aD1ForceRxmode;
  wire [7:0]aD1RxDataEsc;
  wire aD1RxLpdtEsc;
  wire [3:0]aD1RxTriggerEsc;
  wire aD1RxUlpsEsc;
  wire aD1RxValidEsc;
  wire aD1Stopstate;
  wire aD1UlpsActiveNot;
  wire aRst;
  wire aRxClkActiveHS;
  wire aRxUlpsClkNot;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire dphy_clk_hs_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire dphy_clk_hs_p;
  (* IBUF_LOW_PWR *) (* IOSTANDARD = "HSUL_12" *) wire dphy_clk_lp_n;
  (* IBUF_LOW_PWR *) (* IOSTANDARD = "HSUL_12" *) wire dphy_clk_lp_p;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire [1:0]dphy_data_hs_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire [1:0]dphy_data_hs_p;
  (* IBUF_LOW_PWR *) (* IOSTANDARD = "HSUL_12" *) wire [1:0]dphy_data_lp_n;
  (* IBUF_LOW_PWR *) (* IOSTANDARD = "HSUL_12" *) wire [1:0]dphy_data_lp_p;
  wire rbD0ErrSotHS;
  wire rbD0ErrSotSyncHS;
  wire rbD0RxActiveHS;
  wire [7:0]rbD0RxDataHS;
  wire rbD0RxSyncHS;
  wire rbD0RxValidHS;
  wire rbD1ErrSotHS;
  wire rbD1ErrSotSyncHS;
  wire rbD1RxActiveHS;
  wire [7:0]rbD1RxDataHS;
  wire rbD1RxSyncHS;
  wire rbD1RxValidHS;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire [2:0]s_axi_lite_arprot;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire [2:0]s_axi_lite_awprot;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire [1:0]s_axi_lite_bresp;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire [1:0]s_axi_lite_rresp;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;

  (* C_S_AXI_LITE_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
  (* C_S_AXI_LITE_FREQ_HZ = "100000000" *) 
  (* kAddDelayClk_ps = "0" *) 
  (* kAddDelayData0_ps = "0" *) 
  (* kAddDelayData1_ps = "0" *) 
  (* kDebug = "FALSE" *) 
  (* kGenerateAXIL = "TRUE" *) 
  (* kGenerateMMCM = "FALSE" *) 
  (* kLPFromLane0 = "FALSE" *) 
  (* kNoOfDataLanes = "2" *) 
  (* kRefClkFreqHz = "200000000" *) 
  (* kVersionMajor = "1" *) 
  (* kVersionMinor = "2" *) 
  design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver U0
       (.D0RxClkEsc(D0RxClkEsc),
        .D1RxClkEsc(D1RxClkEsc),
        .RefClk(RefClk),
        .RxByteClkHS(RxByteClkHS),
        .RxDDRClkHS(RxDDRClkHS),
        .aClkEnable(aClkEnable),
        .aClkErrControl(aClkErrControl),
        .aClkForceRxmode(aClkForceRxmode),
        .aClkStopstate(aClkStopstate),
        .aClkUlpsActiveNot(aClkUlpsActiveNot),
        .aD0Enable(aD0Enable),
        .aD0ErrControl(aD0ErrControl),
        .aD0ErrEsc(aD0ErrEsc),
        .aD0ForceRxmode(aD0ForceRxmode),
        .aD0RxDataEsc(aD0RxDataEsc),
        .aD0RxLpdtEsc(aD0RxLpdtEsc),
        .aD0RxTriggerEsc(aD0RxTriggerEsc),
        .aD0RxUlpsEsc(aD0RxUlpsEsc),
        .aD0RxValidEsc(aD0RxValidEsc),
        .aD0Stopstate(aD0Stopstate),
        .aD0UlpsActiveNot(aD0UlpsActiveNot),
        .aD1Enable(aD1Enable),
        .aD1ErrControl(aD1ErrControl),
        .aD1ErrEsc(aD1ErrEsc),
        .aD1ForceRxmode(aD1ForceRxmode),
        .aD1RxDataEsc(aD1RxDataEsc),
        .aD1RxLpdtEsc(aD1RxLpdtEsc),
        .aD1RxTriggerEsc(aD1RxTriggerEsc),
        .aD1RxUlpsEsc(aD1RxUlpsEsc),
        .aD1RxValidEsc(aD1RxValidEsc),
        .aD1Stopstate(aD1Stopstate),
        .aD1UlpsActiveNot(aD1UlpsActiveNot),
        .aRst(aRst),
        .aRxClkActiveHS(aRxClkActiveHS),
        .aRxUlpsClkNot(aRxUlpsClkNot),
        .dphy_clk_hs_n(dphy_clk_hs_n),
        .dphy_clk_hs_p(dphy_clk_hs_p),
        .dphy_clk_lp_n(dphy_clk_lp_n),
        .dphy_clk_lp_p(dphy_clk_lp_p),
        .dphy_data_hs_n(dphy_data_hs_n),
        .dphy_data_hs_p(dphy_data_hs_p),
        .dphy_data_lp_n(dphy_data_lp_n),
        .dphy_data_lp_p(dphy_data_lp_p),
        .rbD0ErrSotHS(rbD0ErrSotHS),
        .rbD0ErrSotSyncHS(rbD0ErrSotSyncHS),
        .rbD0RxActiveHS(rbD0RxActiveHS),
        .rbD0RxDataHS(rbD0RxDataHS),
        .rbD0RxSyncHS(rbD0RxSyncHS),
        .rbD0RxValidHS(rbD0RxValidHS),
        .rbD1ErrSotHS(rbD1ErrSotHS),
        .rbD1ErrSotSyncHS(rbD1ErrSotSyncHS),
        .rbD1RxActiveHS(rbD1RxActiveHS),
        .rbD1RxDataHS(rbD1RxDataHS),
        .rbD1RxSyncHS(rbD1RxSyncHS),
        .rbD1RxValidHS(rbD1RxValidHS),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arprot(s_axi_lite_arprot),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_awprot(s_axi_lite_awprot),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bresp(s_axi_lite_bresp),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rresp(s_axi_lite_rresp),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
endmodule

(* ORIG_REF_NAME = "DPHY_LaneSCNN" *) 
module design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSCNN
   (aRxClkActiveHS,
    RxDDRClkHS,
    CLK,
    aClkStopstate,
    aRxUlpsClkNot,
    aClkUlpsActiveNot,
    AS,
    RefClk,
    aHS,
    D,
    aLP);
  output aRxClkActiveHS;
  output RxDDRClkHS;
  output CLK;
  output aClkStopstate;
  output aRxUlpsClkNot;
  output aClkUlpsActiveNot;
  output [0:0]AS;
  input RefClk;
  input aHS;
  input [0:0]D;
  input [1:0]aLP;

  wire [0:0]AS;
  wire CLK;
  wire [0:0]D;
  wire RefClk;
  wire RxDDRClkHS;
  wire SyncAsyncEnable_n_1;
  wire SyncAsyncEnable_n_2;
  wire SyncAsyncLocked_n_0;
  wire aClkStopstate;
  wire aClkUlpsActiveNot;
  wire aHS;
  wire [1:0]aLP;
  wire aRxClkActiveHS;
  wire aRxUlpsClkNot;
  wire cDelayCntEn;
  wire \cDelayCnt[0]_i_5__1_n_0 ;
  wire \cDelayCnt[0]_i_7_n_0 ;
  wire \cDelayCnt[0]_i_8_n_0 ;
  wire \cDelayCnt[0]_i_9_n_0 ;
  wire [14:0]cDelayCnt_reg;
  wire \cDelayCnt_reg[0]_i_3_n_0 ;
  wire \cDelayCnt_reg[0]_i_3_n_1 ;
  wire \cDelayCnt_reg[0]_i_3_n_2 ;
  wire \cDelayCnt_reg[0]_i_3_n_3 ;
  wire \cDelayCnt_reg[0]_i_3_n_4 ;
  wire \cDelayCnt_reg[0]_i_3_n_5 ;
  wire \cDelayCnt_reg[0]_i_3_n_6 ;
  wire \cDelayCnt_reg[0]_i_3_n_7 ;
  wire \cDelayCnt_reg[12]_i_1_n_2 ;
  wire \cDelayCnt_reg[12]_i_1_n_3 ;
  wire \cDelayCnt_reg[12]_i_1_n_5 ;
  wire \cDelayCnt_reg[12]_i_1_n_6 ;
  wire \cDelayCnt_reg[12]_i_1_n_7 ;
  wire \cDelayCnt_reg[4]_i_1_n_0 ;
  wire \cDelayCnt_reg[4]_i_1_n_1 ;
  wire \cDelayCnt_reg[4]_i_1_n_2 ;
  wire \cDelayCnt_reg[4]_i_1_n_3 ;
  wire \cDelayCnt_reg[4]_i_1_n_4 ;
  wire \cDelayCnt_reg[4]_i_1_n_5 ;
  wire \cDelayCnt_reg[4]_i_1_n_6 ;
  wire \cDelayCnt_reg[4]_i_1_n_7 ;
  wire \cDelayCnt_reg[8]_i_1_n_0 ;
  wire \cDelayCnt_reg[8]_i_1_n_1 ;
  wire \cDelayCnt_reg[8]_i_1_n_2 ;
  wire \cDelayCnt_reg[8]_i_1_n_3 ;
  wire \cDelayCnt_reg[8]_i_1_n_4 ;
  wire \cDelayCnt_reg[8]_i_1_n_5 ;
  wire \cDelayCnt_reg[8]_i_1_n_6 ;
  wire \cDelayCnt_reg[8]_i_1_n_7 ;
  wire cEnable;
  wire cHSClkLocked_q;
  (* DONT_TOUCH *) wire [1:0]cLP;
  wire cLPGlitch_0;
  wire cLPGlitch_1;
  wire clear;
  wire [3:0]nstate;
  wire \state[0]_i_2__1_n_0 ;
  wire \state[0]_i_3__1_n_0 ;
  wire \state[0]_i_4__1_n_0 ;
  wire \state[0]_i_6__1_n_0 ;
  wire \state[0]_i_7__1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire [3:2]\NLW_cDelayCnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cDelayCnt_reg[12]_i_1_O_UNCONNECTED ;

  design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_27 \GenSyncLP[0].GlitchFilterLP 
       (.RefClk(RefClk),
        .in0(cLP[0]),
        .\oSyncStages_reg[1] (cEnable),
        .out(cLPGlitch_0));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_28 \GenSyncLP[0].SyncAsyncx 
       (.RefClk(RefClk),
        .aLP(aLP[0]),
        .out(cLPGlitch_0));
  design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_29 \GenSyncLP[1].GlitchFilterLP 
       (.RefClk(RefClk),
        .in0(cLP[1]),
        .\oSyncStages_reg[1] (cEnable),
        .out(cLPGlitch_1));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_30 \GenSyncLP[1].SyncAsyncx 
       (.RefClk(RefClk),
        .aLP(aLP[1]),
        .out(cLPGlitch_1));
  design_1_MIPI_D_PHY_RX_0_0_HS_Clocking HSClockingX
       (.AR(SyncAsyncEnable_n_2),
        .AS(AS),
        .CLK(CLK),
        .RefClk(RefClk),
        .RxDDRClkHS(RxDDRClkHS),
        .aHS(aHS),
        .aRxClkActiveHS(aRxClkActiveHS));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_31 SyncAsyncEnable
       (.AR(SyncAsyncEnable_n_2),
        .D(D),
        .Q({\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .RefClk(RefClk),
        .SR(SyncAsyncEnable_n_1),
        .out(cEnable));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_32 SyncAsyncLocked
       (.AR(SyncAsyncEnable_n_2),
        .D({nstate[2],nstate[0]}),
        .\Filter.sOut_reg (\state[0]_i_2__1_n_0 ),
        .\Filter.sOut_reg_0 (\state[0]_i_4__1_n_0 ),
        .\Filter.sOut_reg_1 (\cDelayCnt[0]_i_9_n_0 ),
        .\Filter.sOut_reg_2 (cLP),
        .\Filter.sOut_reg_3 (\state[2]_i_3_n_0 ),
        .Q({\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .RefClk(RefClk),
        .aRxClkActiveHS(aRxClkActiveHS),
        .cHSClkLocked_q(cHSClkLocked_q),
        .clear(clear),
        .out(SyncAsyncLocked_n_0),
        .\state_reg[0] (\cDelayCnt[0]_i_7_n_0 ),
        .\state_reg[1] (\state[0]_i_3__1_n_0 ),
        .\state_reg[2] (\state[2]_i_5_n_0 ),
        .\state_reg[3] (\cDelayCnt[0]_i_5__1_n_0 ),
        .\state_reg[3]_0 (\state[0]_i_6__1_n_0 ),
        .\state_reg[3]_1 (\state[0]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    aClkStopstate_INST_0
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(aClkStopstate));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    aClkUlpsActiveNot_INST_0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(aClkUlpsActiveNot));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    aRxUlpsClkNot_INST_0
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .O(aRxUlpsClkNot));
  LUT4 #(
    .INIT(16'h0400)) 
    \cDelayCnt[0]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .O(cDelayCntEn));
  LUT6 #(
    .INIT(64'h003F004000000000)) 
    \cDelayCnt[0]_i_5__1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(cLP[0]),
        .I5(cLP[1]),
        .O(\cDelayCnt[0]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000008822004F)) 
    \cDelayCnt[0]_i_7 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[0]_i_3__1_n_0 ),
        .I3(cLP[1]),
        .I4(cLP[0]),
        .I5(\state_reg_n_0_[2] ),
        .O(\cDelayCnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cDelayCnt[0]_i_8 
       (.I0(cDelayCnt_reg[0]),
        .O(\cDelayCnt[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cDelayCnt[0]_i_9 
       (.I0(cLP[0]),
        .I1(cLP[1]),
        .O(\cDelayCnt[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[0] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[0]_i_3_n_7 ),
        .Q(cDelayCnt_reg[0]),
        .R(clear));
  CARRY4 \cDelayCnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cDelayCnt_reg[0]_i_3_n_0 ,\cDelayCnt_reg[0]_i_3_n_1 ,\cDelayCnt_reg[0]_i_3_n_2 ,\cDelayCnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cDelayCnt_reg[0]_i_3_n_4 ,\cDelayCnt_reg[0]_i_3_n_5 ,\cDelayCnt_reg[0]_i_3_n_6 ,\cDelayCnt_reg[0]_i_3_n_7 }),
        .S({cDelayCnt_reg[3:1],\cDelayCnt[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[10] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[8]_i_1_n_5 ),
        .Q(cDelayCnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[11] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[8]_i_1_n_4 ),
        .Q(cDelayCnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[12] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[12]_i_1_n_7 ),
        .Q(cDelayCnt_reg[12]),
        .R(clear));
  CARRY4 \cDelayCnt_reg[12]_i_1 
       (.CI(\cDelayCnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_cDelayCnt_reg[12]_i_1_CO_UNCONNECTED [3:2],\cDelayCnt_reg[12]_i_1_n_2 ,\cDelayCnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cDelayCnt_reg[12]_i_1_O_UNCONNECTED [3],\cDelayCnt_reg[12]_i_1_n_5 ,\cDelayCnt_reg[12]_i_1_n_6 ,\cDelayCnt_reg[12]_i_1_n_7 }),
        .S({1'b0,cDelayCnt_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[13] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[12]_i_1_n_6 ),
        .Q(cDelayCnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[14] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[12]_i_1_n_5 ),
        .Q(cDelayCnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[1] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[0]_i_3_n_6 ),
        .Q(cDelayCnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[2] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[0]_i_3_n_5 ),
        .Q(cDelayCnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[3] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[0]_i_3_n_4 ),
        .Q(cDelayCnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[4] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[4]_i_1_n_7 ),
        .Q(cDelayCnt_reg[4]),
        .R(clear));
  CARRY4 \cDelayCnt_reg[4]_i_1 
       (.CI(\cDelayCnt_reg[0]_i_3_n_0 ),
        .CO({\cDelayCnt_reg[4]_i_1_n_0 ,\cDelayCnt_reg[4]_i_1_n_1 ,\cDelayCnt_reg[4]_i_1_n_2 ,\cDelayCnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cDelayCnt_reg[4]_i_1_n_4 ,\cDelayCnt_reg[4]_i_1_n_5 ,\cDelayCnt_reg[4]_i_1_n_6 ,\cDelayCnt_reg[4]_i_1_n_7 }),
        .S(cDelayCnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[5] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[4]_i_1_n_6 ),
        .Q(cDelayCnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[6] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[4]_i_1_n_5 ),
        .Q(cDelayCnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[7] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[4]_i_1_n_4 ),
        .Q(cDelayCnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[8] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[8]_i_1_n_7 ),
        .Q(cDelayCnt_reg[8]),
        .R(clear));
  CARRY4 \cDelayCnt_reg[8]_i_1 
       (.CI(\cDelayCnt_reg[4]_i_1_n_0 ),
        .CO({\cDelayCnt_reg[8]_i_1_n_0 ,\cDelayCnt_reg[8]_i_1_n_1 ,\cDelayCnt_reg[8]_i_1_n_2 ,\cDelayCnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cDelayCnt_reg[8]_i_1_n_4 ,\cDelayCnt_reg[8]_i_1_n_5 ,\cDelayCnt_reg[8]_i_1_n_6 ,\cDelayCnt_reg[8]_i_1_n_7 }),
        .S(cDelayCnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[9] 
       (.C(RefClk),
        .CE(cDelayCntEn),
        .D(\cDelayCnt_reg[8]_i_1_n_6 ),
        .Q(cDelayCnt_reg[9]),
        .R(clear));
  FDRE cHSClkLocked_q_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(SyncAsyncLocked_n_0),
        .Q(cHSClkLocked_q),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0000EE2ACC00)) 
    \state[0]_i_2__1 
       (.I0(cLP[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(cLP[0]),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[0]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \state[0]_i_3__1 
       (.I0(\state[1]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[0]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_4__1 
       (.I0(cLP[0]),
        .I1(cLP[1]),
        .O(\state[0]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00001AA000000)) 
    \state[0]_i_6__1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(cLP[0]),
        .I3(cLP[1]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_6__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \state[0]_i_7__1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[0]_i_7__1_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAAFAA)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(cLP[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(nstate[1]));
  LUT6 #(
    .INIT(64'h10F050FA00F054AA)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(cLP[0]),
        .I4(cLP[1]),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[1]_i_3 
       (.I0(\state[1]_i_4_n_0 ),
        .I1(\state[1]_i_5_n_0 ),
        .I2(cDelayCnt_reg[14]),
        .I3(cDelayCnt_reg[13]),
        .I4(cDelayCnt_reg[0]),
        .I5(\state[1]_i_6_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_4 
       (.I0(cDelayCnt_reg[6]),
        .I1(cDelayCnt_reg[5]),
        .I2(cDelayCnt_reg[8]),
        .I3(cDelayCnt_reg[7]),
        .O(\state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \state[1]_i_5 
       (.I0(cDelayCnt_reg[1]),
        .I1(cDelayCnt_reg[2]),
        .I2(cDelayCnt_reg[4]),
        .I3(cDelayCnt_reg[3]),
        .O(\state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_6 
       (.I0(cDelayCnt_reg[10]),
        .I1(cDelayCnt_reg[9]),
        .I2(cDelayCnt_reg[12]),
        .I3(cDelayCnt_reg[11]),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h111100001111F000)) 
    \state[2]_i_3 
       (.I0(cLP[0]),
        .I1(cLP[1]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \state[2]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000000020000)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(cLP[0]),
        .I4(cLP[1]),
        .I5(\state_reg_n_0_[3] ),
        .O(nstate[3]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(nstate[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(SyncAsyncEnable_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(nstate[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(SyncAsyncEnable_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(RefClk),
        .CE(1'b1),
        .D(nstate[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(SyncAsyncEnable_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(RefClk),
        .CE(1'b1),
        .D(nstate[3]),
        .Q(\state_reg_n_0_[3] ),
        .R(SyncAsyncEnable_n_1));
endmodule

(* ORIG_REF_NAME = "DPHY_LaneSFEN" *) 
module design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN
   (rbD0RxValidHS,
    aD0Stopstate,
    rbD0RxDataHS,
    rbD0RxActiveHS,
    rbD0RxSyncHS,
    rbD0ErrSotSyncHS,
    rbD0ErrSotHS,
    RefClk,
    aHS,
    dphy_clk_hs_n,
    CLKB,
    CLK,
    aLP,
    D,
    AS,
    aD0ForceRxmode);
  output rbD0RxValidHS;
  output aD0Stopstate;
  output [7:0]rbD0RxDataHS;
  output rbD0RxActiveHS;
  output rbD0RxSyncHS;
  output rbD0ErrSotSyncHS;
  output rbD0ErrSotHS;
  input RefClk;
  input aHS;
  input dphy_clk_hs_n;
  input CLKB;
  input CLK;
  input [1:0]aLP;
  input [0:0]D;
  input [0:0]AS;
  input aD0ForceRxmode;

  wire [0:0]AS;
  wire CLK;
  wire CLKB;
  wire [0:0]D;
  wire HSDeserializerX_n_2;
  wire HSDeserializerX_n_3;
  wire HSDeserializerX_n_5;
  wire RefClk;
  wire RxClkActiveHSResetBridge_n_0;
  wire SyncAsyncEnable_n_1;
  wire SyncAsyncForceRxMode_n_0;
  wire SyncAsyncValid_n_1;
  wire \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ;
  wire \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1 ;
  wire \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ;
  wire \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ;
  wire \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1 ;
  wire \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2 ;
  wire aD0ForceRxmode;
  wire aD0Stopstate;
  wire aHS;
  wire [1:0]aLP;
  wire [1:0]aLP_int;
  wire \cDelayCnt[0]_i_3__0_n_0 ;
  wire \cDelayCnt[0]_i_4__0_n_0 ;
  wire \cDelayCnt[0]_i_5__0_n_0 ;
  wire [14:0]cDelayCnt_reg;
  wire \cDelayCnt_reg[0]_i_2__0_n_0 ;
  wire \cDelayCnt_reg[0]_i_2__0_n_1 ;
  wire \cDelayCnt_reg[0]_i_2__0_n_2 ;
  wire \cDelayCnt_reg[0]_i_2__0_n_3 ;
  wire \cDelayCnt_reg[0]_i_2__0_n_4 ;
  wire \cDelayCnt_reg[0]_i_2__0_n_5 ;
  wire \cDelayCnt_reg[0]_i_2__0_n_6 ;
  wire \cDelayCnt_reg[0]_i_2__0_n_7 ;
  wire \cDelayCnt_reg[12]_i_1__1_n_2 ;
  wire \cDelayCnt_reg[12]_i_1__1_n_3 ;
  wire \cDelayCnt_reg[12]_i_1__1_n_5 ;
  wire \cDelayCnt_reg[12]_i_1__1_n_6 ;
  wire \cDelayCnt_reg[12]_i_1__1_n_7 ;
  wire \cDelayCnt_reg[4]_i_1__1_n_0 ;
  wire \cDelayCnt_reg[4]_i_1__1_n_1 ;
  wire \cDelayCnt_reg[4]_i_1__1_n_2 ;
  wire \cDelayCnt_reg[4]_i_1__1_n_3 ;
  wire \cDelayCnt_reg[4]_i_1__1_n_4 ;
  wire \cDelayCnt_reg[4]_i_1__1_n_5 ;
  wire \cDelayCnt_reg[4]_i_1__1_n_6 ;
  wire \cDelayCnt_reg[4]_i_1__1_n_7 ;
  wire \cDelayCnt_reg[8]_i_1__1_n_0 ;
  wire \cDelayCnt_reg[8]_i_1__1_n_1 ;
  wire \cDelayCnt_reg[8]_i_1__1_n_2 ;
  wire \cDelayCnt_reg[8]_i_1__1_n_3 ;
  wire \cDelayCnt_reg[8]_i_1__1_n_4 ;
  wire \cDelayCnt_reg[8]_i_1__1_n_5 ;
  wire \cDelayCnt_reg[8]_i_1__1_n_6 ;
  wire \cDelayCnt_reg[8]_i_1__1_n_7 ;
  wire cEnable;
  wire cHSReset_reg_n_0;
  wire cHSSettled_reg_n_0;
  wire cLPGlitch_0;
  wire cLPGlitch_1;
  wire cValid;
  wire dSyncErr_reg;
  wire dSyncHard_reg;
  wire dSyncSoft_reg;
  wire dphy_clk_hs_n;
  wire rbD0ErrSotHS;
  wire rbD0ErrSotSyncHS;
  wire rbD0RxActiveHS;
  wire [7:0]rbD0RxDataHS;
  wire rbD0RxSyncHS;
  wire rbD0RxValidHS;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_4__0_n_0 ;
  wire \state[0]_i_6__0_n_0 ;
  wire \state[0]_i_7__0_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire [3:2]\NLW_cDelayCnt_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cDelayCnt_reg[12]_i_1__1_O_UNCONNECTED ;

  design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer_13 HSDeserializerX
       (.AS(cHSReset_reg_n_0),
        .CLK(CLK),
        .CLKB(CLKB),
        .RefClk(RefClk),
        .aHS(aHS),
        .aLP(aLP),
        .aLP_int(aLP_int),
        .cHSSettled_reg(cHSSettled_reg_n_0),
        .dSyncErr_reg(dSyncErr_reg),
        .dSyncErr_reg_reg(HSDeserializerX_n_5),
        .dSyncHard_reg(dSyncHard_reg),
        .dSyncHard_reg_reg(HSDeserializerX_n_2),
        .dSyncSoft_reg(dSyncSoft_reg),
        .dSyncSoft_reg_reg(HSDeserializerX_n_3),
        .dphy_clk_hs_n(dphy_clk_hs_n),
        .rbD0ErrSotHS(rbD0ErrSotHS),
        .rbD0ErrSotSyncHS(rbD0ErrSotSyncHS),
        .rbD0RxActiveHS(rbD0RxActiveHS),
        .rbD0RxDataHS(rbD0RxDataHS),
        .rbD0RxSyncHS(rbD0RxSyncHS),
        .rbD0RxValidHS(rbD0RxValidHS));
  design_1_MIPI_D_PHY_RX_0_0_ResetBridge_14 RxClkActiveHSResetBridge
       (.AR(RxClkActiveHSResetBridge_n_0),
        .AS(AS),
        .RefClk(RefClk));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_15 SyncAsyncEnable
       (.AR(SyncAsyncEnable_n_1),
        .D(D),
        .RefClk(RefClk),
        .out(cEnable));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_16 SyncAsyncForceRxMode
       (.AR(SyncAsyncEnable_n_1),
        .RefClk(RefClk),
        .aD0ForceRxmode(aD0ForceRxmode),
        .out(SyncAsyncForceRxMode_n_0));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_17 SyncAsyncValid
       (.AR(RxClkActiveHSResetBridge_n_0),
        .RefClk(RefClk),
        .\cDelayCnt_reg[6] (\cDelayCnt[0]_i_3__0_n_0 ),
        .cHSSettled_reg(SyncAsyncValid_n_1),
        .cHSSettled_reg_0(cHSSettled_reg_n_0),
        .out(cValid),
        .rbD0RxValidHS(rbD0RxValidHS),
        .\state_reg[0] (\state_reg_n_0_[0] ),
        .\state_reg[1] (\state_reg_n_0_[1] ),
        .\state_reg[2] (\state_reg_n_0_[2] ));
  design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_18 \UseOwnLP.GenSyncLP[0].GlitchFilterLPC 
       (.\Filter.sOut_reg_0 (\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ),
        .\Filter.sOut_reg_1 (\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ),
        .RefClk(RefClk),
        .\cDelayCnt_reg[0] (\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ),
        .\cDelayCnt_reg[6] (\cDelayCnt[0]_i_3__0_n_0 ),
        .\oSyncStages_reg[1] (SyncAsyncForceRxMode_n_0),
        .out(cLPGlitch_0),
        .\state_reg[0] (\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1 ),
        .\state_reg[0]_0 (\state_reg_n_0_[0] ),
        .\state_reg[1] (\state_reg_n_0_[1] ),
        .\state_reg[2] (\state_reg_n_0_[2] ));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_19 \UseOwnLP.GenSyncLP[0].SyncAsyncx 
       (.D(aLP_int[0]),
        .RefClk(RefClk),
        .out(cLPGlitch_0));
  design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_20 \UseOwnLP.GenSyncLP[1].GlitchFilterLPC 
       (.AS(cHSReset_reg_n_0),
        .\Filter.sOut_reg_0 (\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ),
        .\Filter.sOut_reg_1 (\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ),
        .RefClk(RefClk),
        .cDelayCnt_reg({cDelayCnt_reg[14],cDelayCnt_reg[11:9],cDelayCnt_reg[5:4]}),
        .\cDelayCnt_reg[6] (\cDelayCnt[0]_i_3__0_n_0 ),
        .\cDelayCnt_reg[9] (\state[0]_i_6__0_n_0 ),
        .cHSReset_reg(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2 ),
        .\oSyncStages_reg[1] (cValid),
        .out(cLPGlitch_1),
        .\state_reg[0] (\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1 ),
        .\state_reg[0]_0 (\state_reg_n_0_[0] ),
        .\state_reg[1] (\state_reg_n_0_[1] ),
        .\state_reg[2] (\state_reg_n_0_[2] ));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_21 \UseOwnLP.GenSyncLP[1].SyncAsyncx 
       (.D(aLP_int[1]),
        .RefClk(RefClk),
        .out(cLPGlitch_1));
  LUT3 #(
    .INIT(8'h02)) 
    aD0Stopstate_INST_0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .O(aD0Stopstate));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cDelayCnt[0]_i_3__0 
       (.I0(\cDelayCnt[0]_i_5__0_n_0 ),
        .I1(cDelayCnt_reg[6]),
        .I2(cDelayCnt_reg[3]),
        .I3(cDelayCnt_reg[8]),
        .I4(cDelayCnt_reg[7]),
        .I5(\state[0]_i_7__0_n_0 ),
        .O(\cDelayCnt[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cDelayCnt[0]_i_4__0 
       (.I0(cDelayCnt_reg[0]),
        .O(\cDelayCnt[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \cDelayCnt[0]_i_5__0 
       (.I0(cDelayCnt_reg[11]),
        .I1(cDelayCnt_reg[14]),
        .I2(cDelayCnt_reg[9]),
        .I3(cDelayCnt_reg[10]),
        .I4(cDelayCnt_reg[4]),
        .I5(cDelayCnt_reg[5]),
        .O(\cDelayCnt[0]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[0]_i_2__0_n_7 ),
        .Q(cDelayCnt_reg[0]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  CARRY4 \cDelayCnt_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\cDelayCnt_reg[0]_i_2__0_n_0 ,\cDelayCnt_reg[0]_i_2__0_n_1 ,\cDelayCnt_reg[0]_i_2__0_n_2 ,\cDelayCnt_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cDelayCnt_reg[0]_i_2__0_n_4 ,\cDelayCnt_reg[0]_i_2__0_n_5 ,\cDelayCnt_reg[0]_i_2__0_n_6 ,\cDelayCnt_reg[0]_i_2__0_n_7 }),
        .S({cDelayCnt_reg[3:1],\cDelayCnt[0]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[10] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[8]_i_1__1_n_5 ),
        .Q(cDelayCnt_reg[10]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[11] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[8]_i_1__1_n_4 ),
        .Q(cDelayCnt_reg[11]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[12] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[12]_i_1__1_n_7 ),
        .Q(cDelayCnt_reg[12]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  CARRY4 \cDelayCnt_reg[12]_i_1__1 
       (.CI(\cDelayCnt_reg[8]_i_1__1_n_0 ),
        .CO({\NLW_cDelayCnt_reg[12]_i_1__1_CO_UNCONNECTED [3:2],\cDelayCnt_reg[12]_i_1__1_n_2 ,\cDelayCnt_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cDelayCnt_reg[12]_i_1__1_O_UNCONNECTED [3],\cDelayCnt_reg[12]_i_1__1_n_5 ,\cDelayCnt_reg[12]_i_1__1_n_6 ,\cDelayCnt_reg[12]_i_1__1_n_7 }),
        .S({1'b0,cDelayCnt_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[13] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[12]_i_1__1_n_6 ),
        .Q(cDelayCnt_reg[13]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[14] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[12]_i_1__1_n_5 ),
        .Q(cDelayCnt_reg[14]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[0]_i_2__0_n_6 ),
        .Q(cDelayCnt_reg[1]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[2] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[0]_i_2__0_n_5 ),
        .Q(cDelayCnt_reg[2]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[3] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[0]_i_2__0_n_4 ),
        .Q(cDelayCnt_reg[3]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[4] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[4]_i_1__1_n_7 ),
        .Q(cDelayCnt_reg[4]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  CARRY4 \cDelayCnt_reg[4]_i_1__1 
       (.CI(\cDelayCnt_reg[0]_i_2__0_n_0 ),
        .CO({\cDelayCnt_reg[4]_i_1__1_n_0 ,\cDelayCnt_reg[4]_i_1__1_n_1 ,\cDelayCnt_reg[4]_i_1__1_n_2 ,\cDelayCnt_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cDelayCnt_reg[4]_i_1__1_n_4 ,\cDelayCnt_reg[4]_i_1__1_n_5 ,\cDelayCnt_reg[4]_i_1__1_n_6 ,\cDelayCnt_reg[4]_i_1__1_n_7 }),
        .S(cDelayCnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[5] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[4]_i_1__1_n_6 ),
        .Q(cDelayCnt_reg[5]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[6] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[4]_i_1__1_n_5 ),
        .Q(cDelayCnt_reg[6]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[7] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[4]_i_1__1_n_4 ),
        .Q(cDelayCnt_reg[7]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[8] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[8]_i_1__1_n_7 ),
        .Q(cDelayCnt_reg[8]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  CARRY4 \cDelayCnt_reg[8]_i_1__1 
       (.CI(\cDelayCnt_reg[4]_i_1__1_n_0 ),
        .CO({\cDelayCnt_reg[8]_i_1__1_n_0 ,\cDelayCnt_reg[8]_i_1__1_n_1 ,\cDelayCnt_reg[8]_i_1__1_n_2 ,\cDelayCnt_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cDelayCnt_reg[8]_i_1__1_n_4 ,\cDelayCnt_reg[8]_i_1__1_n_5 ,\cDelayCnt_reg[8]_i_1__1_n_6 ,\cDelayCnt_reg[8]_i_1__1_n_7 }),
        .S(cDelayCnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[9] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[8]_i_1__1_n_6 ),
        .Q(cDelayCnt_reg[9]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDPE cHSReset_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2 ),
        .PRE(RxClkActiveHSResetBridge_n_0),
        .Q(cHSReset_reg_n_0));
  FDCE cHSSettled_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(RxClkActiveHSResetBridge_n_0),
        .D(SyncAsyncValid_n_1),
        .Q(cHSSettled_reg_n_0));
  FDRE dSyncErr_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(HSDeserializerX_n_5),
        .Q(dSyncErr_reg),
        .R(1'b0));
  FDRE dSyncHard_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(HSDeserializerX_n_2),
        .Q(dSyncHard_reg),
        .R(1'b0));
  FDRE dSyncSoft_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(HSDeserializerX_n_3),
        .Q(dSyncSoft_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAE00)) 
    \state[0]_i_1 
       (.I0(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1 ),
        .I1(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1 ),
        .I2(\state[0]_i_4__0_n_0 ),
        .I3(cEnable),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[0]_i_4__0 
       (.I0(\state[0]_i_7__0_n_0 ),
        .I1(cDelayCnt_reg[7]),
        .I2(cDelayCnt_reg[8]),
        .I3(cDelayCnt_reg[3]),
        .I4(cDelayCnt_reg[6]),
        .O(\state[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \state[0]_i_6__0 
       (.I0(cDelayCnt_reg[9]),
        .I1(cDelayCnt_reg[10]),
        .I2(cDelayCnt_reg[11]),
        .I3(cDelayCnt_reg[14]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[0]_i_7__0 
       (.I0(cDelayCnt_reg[0]),
        .I1(cDelayCnt_reg[12]),
        .I2(cDelayCnt_reg[13]),
        .I3(cDelayCnt_reg[2]),
        .I4(cDelayCnt_reg[1]),
        .O(\state[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDC08000000000)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ),
        .I2(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(cEnable),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8CCE8CCC00000000)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ),
        .I3(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(cEnable),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "DPHY_LaneSFEN" *) 
module design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN_0
   (rbD1RxValidHS,
    aD1Stopstate,
    rbD1RxDataHS,
    rbD1RxActiveHS,
    rbD1RxSyncHS,
    rbD1ErrSotSyncHS,
    rbD1ErrSotHS,
    RefClk,
    aHS,
    dphy_clk_hs_n,
    CLKB,
    CLK,
    aLP,
    D,
    AS,
    aD1ForceRxmode);
  output rbD1RxValidHS;
  output aD1Stopstate;
  output [7:0]rbD1RxDataHS;
  output rbD1RxActiveHS;
  output rbD1RxSyncHS;
  output rbD1ErrSotSyncHS;
  output rbD1ErrSotHS;
  input RefClk;
  input aHS;
  input dphy_clk_hs_n;
  input CLKB;
  input CLK;
  input [1:0]aLP;
  input [0:0]D;
  input [0:0]AS;
  input aD1ForceRxmode;

  wire [0:0]AS;
  wire CLK;
  wire CLKB;
  wire [0:0]D;
  wire HSDeserializerX_n_2;
  wire HSDeserializerX_n_3;
  wire HSDeserializerX_n_5;
  wire RefClk;
  wire RxClkActiveHSResetBridge_n_0;
  wire SyncAsyncForceRxMode_n_0;
  wire SyncAsyncValid_n_1;
  wire \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ;
  wire \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1 ;
  wire \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ;
  wire \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ;
  wire \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1 ;
  wire \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2 ;
  wire aD1ForceRxmode;
  wire aD1Stopstate;
  wire aHS;
  wire [1:0]aLP;
  wire [1:0]aLP_int;
  wire \cDelayCnt[0]_i_3_n_0 ;
  wire \cDelayCnt[0]_i_4_n_0 ;
  wire \cDelayCnt[0]_i_5_n_0 ;
  wire [14:0]cDelayCnt_reg;
  wire \cDelayCnt_reg[0]_i_2_n_0 ;
  wire \cDelayCnt_reg[0]_i_2_n_1 ;
  wire \cDelayCnt_reg[0]_i_2_n_2 ;
  wire \cDelayCnt_reg[0]_i_2_n_3 ;
  wire \cDelayCnt_reg[0]_i_2_n_4 ;
  wire \cDelayCnt_reg[0]_i_2_n_5 ;
  wire \cDelayCnt_reg[0]_i_2_n_6 ;
  wire \cDelayCnt_reg[0]_i_2_n_7 ;
  wire \cDelayCnt_reg[12]_i_1__0_n_2 ;
  wire \cDelayCnt_reg[12]_i_1__0_n_3 ;
  wire \cDelayCnt_reg[12]_i_1__0_n_5 ;
  wire \cDelayCnt_reg[12]_i_1__0_n_6 ;
  wire \cDelayCnt_reg[12]_i_1__0_n_7 ;
  wire \cDelayCnt_reg[4]_i_1__0_n_0 ;
  wire \cDelayCnt_reg[4]_i_1__0_n_1 ;
  wire \cDelayCnt_reg[4]_i_1__0_n_2 ;
  wire \cDelayCnt_reg[4]_i_1__0_n_3 ;
  wire \cDelayCnt_reg[4]_i_1__0_n_4 ;
  wire \cDelayCnt_reg[4]_i_1__0_n_5 ;
  wire \cDelayCnt_reg[4]_i_1__0_n_6 ;
  wire \cDelayCnt_reg[4]_i_1__0_n_7 ;
  wire \cDelayCnt_reg[8]_i_1__0_n_0 ;
  wire \cDelayCnt_reg[8]_i_1__0_n_1 ;
  wire \cDelayCnt_reg[8]_i_1__0_n_2 ;
  wire \cDelayCnt_reg[8]_i_1__0_n_3 ;
  wire \cDelayCnt_reg[8]_i_1__0_n_4 ;
  wire \cDelayCnt_reg[8]_i_1__0_n_5 ;
  wire \cDelayCnt_reg[8]_i_1__0_n_6 ;
  wire \cDelayCnt_reg[8]_i_1__0_n_7 ;
  wire cEnable;
  wire cHSReset;
  wire cHSSettled;
  wire cIntRst;
  wire cLPGlitch_0;
  wire cLPGlitch_1;
  wire cValid;
  wire dSyncErr_reg;
  wire dSyncHard_reg;
  wire dSyncSoft_reg;
  wire dphy_clk_hs_n;
  wire rbD1ErrSotHS;
  wire rbD1ErrSotSyncHS;
  wire rbD1RxActiveHS;
  wire [7:0]rbD1RxDataHS;
  wire rbD1RxSyncHS;
  wire rbD1RxValidHS;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire [3:2]\NLW_cDelayCnt_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_cDelayCnt_reg[12]_i_1__0_O_UNCONNECTED ;

  design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer HSDeserializerX
       (.AS(cHSReset),
        .CLK(CLK),
        .CLKB(CLKB),
        .RefClk(RefClk),
        .aHS(aHS),
        .aLP(aLP),
        .aLP_int(aLP_int),
        .cHSSettled(cHSSettled),
        .dSyncErr_reg(dSyncErr_reg),
        .dSyncErr_reg_reg(HSDeserializerX_n_5),
        .dSyncHard_reg(dSyncHard_reg),
        .dSyncHard_reg_reg(HSDeserializerX_n_2),
        .dSyncSoft_reg(dSyncSoft_reg),
        .dSyncSoft_reg_reg(HSDeserializerX_n_3),
        .dphy_clk_hs_n(dphy_clk_hs_n),
        .rbD1ErrSotHS(rbD1ErrSotHS),
        .rbD1ErrSotSyncHS(rbD1ErrSotSyncHS),
        .rbD1RxActiveHS(rbD1RxActiveHS),
        .rbD1RxDataHS(rbD1RxDataHS),
        .rbD1RxSyncHS(rbD1RxSyncHS),
        .rbD1RxValidHS(rbD1RxValidHS));
  design_1_MIPI_D_PHY_RX_0_0_ResetBridge_3 RxClkActiveHSResetBridge
       (.AR(RxClkActiveHSResetBridge_n_0),
        .AS(AS),
        .RefClk(RefClk));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_4 SyncAsyncEnable
       (.AR(cIntRst),
        .D(D),
        .RefClk(RefClk),
        .out(cEnable));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_5 SyncAsyncForceRxMode
       (.AR(cIntRst),
        .RefClk(RefClk),
        .aD1ForceRxmode(aD1ForceRxmode),
        .out(SyncAsyncForceRxMode_n_0));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_6 SyncAsyncValid
       (.AR(RxClkActiveHSResetBridge_n_0),
        .RefClk(RefClk),
        .\cDelayCnt_reg[6] (\cDelayCnt[0]_i_3_n_0 ),
        .cHSSettled(cHSSettled),
        .cHSSettled_reg(SyncAsyncValid_n_1),
        .out(cValid),
        .rbD1RxValidHS(rbD1RxValidHS),
        .\state_reg[0] (\state_reg_n_0_[0] ),
        .\state_reg[1] (\state_reg_n_0_[1] ),
        .\state_reg[2] (\state_reg_n_0_[2] ));
  design_1_MIPI_D_PHY_RX_0_0_GlitchFilter \UseOwnLP.GenSyncLP[0].GlitchFilterLPC 
       (.\Filter.sOut_reg_0 (\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ),
        .\Filter.sOut_reg_1 (\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ),
        .RefClk(RefClk),
        .\cDelayCnt_reg[0] (\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ),
        .\cDelayCnt_reg[6] (\cDelayCnt[0]_i_3_n_0 ),
        .\oSyncStages_reg[1] (SyncAsyncForceRxMode_n_0),
        .out(cLPGlitch_0),
        .\state_reg[0] (\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1 ),
        .\state_reg[0]_0 (\state_reg_n_0_[0] ),
        .\state_reg[1] (\state_reg_n_0_[1] ),
        .\state_reg[2] (\state_reg_n_0_[2] ));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_7 \UseOwnLP.GenSyncLP[0].SyncAsyncx 
       (.D(aLP_int[0]),
        .RefClk(RefClk),
        .out(cLPGlitch_0));
  design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_8 \UseOwnLP.GenSyncLP[1].GlitchFilterLPC 
       (.AS(cHSReset),
        .\Filter.sOut_reg_0 (\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ),
        .\Filter.sOut_reg_1 (\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ),
        .RefClk(RefClk),
        .cDelayCnt_reg({cDelayCnt_reg[14],cDelayCnt_reg[11:9],cDelayCnt_reg[5:4]}),
        .\cDelayCnt_reg[6] (\cDelayCnt[0]_i_3_n_0 ),
        .\cDelayCnt_reg[9] (\state[0]_i_6_n_0 ),
        .cHSReset_reg(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2 ),
        .\oSyncStages_reg[1] (cValid),
        .out(cLPGlitch_1),
        .\state_reg[0] (\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1 ),
        .\state_reg[0]_0 (\state_reg_n_0_[0] ),
        .\state_reg[1] (\state_reg_n_0_[1] ),
        .\state_reg[2] (\state_reg_n_0_[2] ));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_9 \UseOwnLP.GenSyncLP[1].SyncAsyncx 
       (.D(aLP_int[1]),
        .RefClk(RefClk),
        .out(cLPGlitch_1));
  LUT3 #(
    .INIT(8'h02)) 
    aD1Stopstate_INST_0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .O(aD1Stopstate));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cDelayCnt[0]_i_3 
       (.I0(\cDelayCnt[0]_i_5_n_0 ),
        .I1(cDelayCnt_reg[6]),
        .I2(cDelayCnt_reg[3]),
        .I3(cDelayCnt_reg[8]),
        .I4(cDelayCnt_reg[7]),
        .I5(\state[0]_i_7_n_0 ),
        .O(\cDelayCnt[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cDelayCnt[0]_i_4 
       (.I0(cDelayCnt_reg[0]),
        .O(\cDelayCnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \cDelayCnt[0]_i_5 
       (.I0(cDelayCnt_reg[11]),
        .I1(cDelayCnt_reg[14]),
        .I2(cDelayCnt_reg[9]),
        .I3(cDelayCnt_reg[10]),
        .I4(cDelayCnt_reg[4]),
        .I5(cDelayCnt_reg[5]),
        .O(\cDelayCnt[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[0]_i_2_n_7 ),
        .Q(cDelayCnt_reg[0]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  CARRY4 \cDelayCnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cDelayCnt_reg[0]_i_2_n_0 ,\cDelayCnt_reg[0]_i_2_n_1 ,\cDelayCnt_reg[0]_i_2_n_2 ,\cDelayCnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cDelayCnt_reg[0]_i_2_n_4 ,\cDelayCnt_reg[0]_i_2_n_5 ,\cDelayCnt_reg[0]_i_2_n_6 ,\cDelayCnt_reg[0]_i_2_n_7 }),
        .S({cDelayCnt_reg[3:1],\cDelayCnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[10] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[8]_i_1__0_n_5 ),
        .Q(cDelayCnt_reg[10]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[11] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[8]_i_1__0_n_4 ),
        .Q(cDelayCnt_reg[11]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[12] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[12]_i_1__0_n_7 ),
        .Q(cDelayCnt_reg[12]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  CARRY4 \cDelayCnt_reg[12]_i_1__0 
       (.CI(\cDelayCnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_cDelayCnt_reg[12]_i_1__0_CO_UNCONNECTED [3:2],\cDelayCnt_reg[12]_i_1__0_n_2 ,\cDelayCnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cDelayCnt_reg[12]_i_1__0_O_UNCONNECTED [3],\cDelayCnt_reg[12]_i_1__0_n_5 ,\cDelayCnt_reg[12]_i_1__0_n_6 ,\cDelayCnt_reg[12]_i_1__0_n_7 }),
        .S({1'b0,cDelayCnt_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[13] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[12]_i_1__0_n_6 ),
        .Q(cDelayCnt_reg[13]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[14] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[12]_i_1__0_n_5 ),
        .Q(cDelayCnt_reg[14]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[0]_i_2_n_6 ),
        .Q(cDelayCnt_reg[1]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[2] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[0]_i_2_n_5 ),
        .Q(cDelayCnt_reg[2]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[3] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[0]_i_2_n_4 ),
        .Q(cDelayCnt_reg[3]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[4] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[4]_i_1__0_n_7 ),
        .Q(cDelayCnt_reg[4]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  CARRY4 \cDelayCnt_reg[4]_i_1__0 
       (.CI(\cDelayCnt_reg[0]_i_2_n_0 ),
        .CO({\cDelayCnt_reg[4]_i_1__0_n_0 ,\cDelayCnt_reg[4]_i_1__0_n_1 ,\cDelayCnt_reg[4]_i_1__0_n_2 ,\cDelayCnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cDelayCnt_reg[4]_i_1__0_n_4 ,\cDelayCnt_reg[4]_i_1__0_n_5 ,\cDelayCnt_reg[4]_i_1__0_n_6 ,\cDelayCnt_reg[4]_i_1__0_n_7 }),
        .S(cDelayCnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[5] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[4]_i_1__0_n_6 ),
        .Q(cDelayCnt_reg[5]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[6] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[4]_i_1__0_n_5 ),
        .Q(cDelayCnt_reg[6]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[7] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[4]_i_1__0_n_4 ),
        .Q(cDelayCnt_reg[7]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[8] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[8]_i_1__0_n_7 ),
        .Q(cDelayCnt_reg[8]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  CARRY4 \cDelayCnt_reg[8]_i_1__0 
       (.CI(\cDelayCnt_reg[4]_i_1__0_n_0 ),
        .CO({\cDelayCnt_reg[8]_i_1__0_n_0 ,\cDelayCnt_reg[8]_i_1__0_n_1 ,\cDelayCnt_reg[8]_i_1__0_n_2 ,\cDelayCnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cDelayCnt_reg[8]_i_1__0_n_4 ,\cDelayCnt_reg[8]_i_1__0_n_5 ,\cDelayCnt_reg[8]_i_1__0_n_6 ,\cDelayCnt_reg[8]_i_1__0_n_7 }),
        .S(cDelayCnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cDelayCnt_reg[9] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\cDelayCnt_reg[8]_i_1__0_n_6 ),
        .Q(cDelayCnt_reg[9]),
        .R(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2 ));
  FDPE cHSReset_reg
       (.C(RefClk),
        .CE(1'b1),
        .D(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2 ),
        .PRE(RxClkActiveHSResetBridge_n_0),
        .Q(cHSReset));
  FDCE cHSSettled_reg
       (.C(RefClk),
        .CE(1'b1),
        .CLR(RxClkActiveHSResetBridge_n_0),
        .D(SyncAsyncValid_n_1),
        .Q(cHSSettled));
  FDRE dSyncErr_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(HSDeserializerX_n_5),
        .Q(dSyncErr_reg),
        .R(1'b0));
  FDRE dSyncHard_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(HSDeserializerX_n_2),
        .Q(dSyncHard_reg),
        .R(1'b0));
  FDRE dSyncSoft_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(HSDeserializerX_n_3),
        .Q(dSyncSoft_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAE00)) 
    \state[0]_i_1 
       (.I0(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1 ),
        .I1(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(cEnable),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[0]_i_4 
       (.I0(\state[0]_i_7_n_0 ),
        .I1(cDelayCnt_reg[7]),
        .I2(cDelayCnt_reg[8]),
        .I3(cDelayCnt_reg[3]),
        .I4(cDelayCnt_reg[6]),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \state[0]_i_6 
       (.I0(cDelayCnt_reg[9]),
        .I1(cDelayCnt_reg[10]),
        .I2(cDelayCnt_reg[11]),
        .I3(cDelayCnt_reg[14]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[0]_i_7 
       (.I0(cDelayCnt_reg[0]),
        .I1(cDelayCnt_reg[12]),
        .I2(cDelayCnt_reg[13]),
        .I3(cDelayCnt_reg[2]),
        .I4(cDelayCnt_reg[1]),
        .O(\state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDC08000000000)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ),
        .I2(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(cEnable),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8CCE8CCC00000000)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0 ),
        .I3(\UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(cEnable),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module design_1_MIPI_D_PHY_RX_0_0_GlitchFilter
   (\Filter.sOut_reg_0 ,
    \state_reg[0] ,
    \cDelayCnt_reg[0] ,
    out,
    RefClk,
    \Filter.sOut_reg_1 ,
    \state_reg[0]_0 ,
    \state_reg[1] ,
    \oSyncStages_reg[1] ,
    \state_reg[2] ,
    \cDelayCnt_reg[6] );
  output \Filter.sOut_reg_0 ;
  output \state_reg[0] ;
  output \cDelayCnt_reg[0] ;
  input [0:0]out;
  input RefClk;
  input \Filter.sOut_reg_1 ;
  input \state_reg[0]_0 ;
  input \state_reg[1] ;
  input [0:0]\oSyncStages_reg[1] ;
  input \state_reg[2] ;
  input \cDelayCnt_reg[6] ;

  wire \Filter.cntPeriods[0]_i_1_n_0 ;
  wire \Filter.cntPeriods[1]_i_1_n_0 ;
  wire \Filter.sIn_q_reg_n_0 ;
  wire \Filter.sOut_i_1__1_n_0 ;
  wire \Filter.sOut_reg_0 ;
  wire \Filter.sOut_reg_1 ;
  wire RefClk;
  wire \cDelayCnt_reg[0] ;
  wire \cDelayCnt_reg[6] ;
  wire [1:0]cntPeriods;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;

  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    \Filter.cntPeriods[0]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\Filter.sIn_q_reg_n_0 ),
        .I3(out),
        .O(\Filter.cntPeriods[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8FF8)) 
    \Filter.cntPeriods[1]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\Filter.sIn_q_reg_n_0 ),
        .I3(out),
        .O(\Filter.cntPeriods[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[0]_i_1_n_0 ),
        .Q(cntPeriods[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[1]_i_1_n_0 ),
        .Q(cntPeriods[1]),
        .R(1'b0));
  FDRE \Filter.sIn_q_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(out),
        .Q(\Filter.sIn_q_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \Filter.sOut_i_1__1 
       (.I0(\Filter.sIn_q_reg_n_0 ),
        .I1(cntPeriods[0]),
        .I2(cntPeriods[1]),
        .I3(\Filter.sOut_reg_0 ),
        .O(\Filter.sOut_i_1__1_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1__1_n_0 ),
        .Q(\Filter.sOut_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEEFFFFFFFF8F00)) 
    \cDelayCnt[0]_i_1 
       (.I0(\Filter.sOut_reg_0 ),
        .I1(\Filter.sOut_reg_1 ),
        .I2(\cDelayCnt_reg[6] ),
        .I3(\state_reg[2] ),
        .I4(\state_reg[1] ),
        .I5(\state_reg[0]_0 ),
        .O(\cDelayCnt_reg[0] ));
  LUT6 #(
    .INIT(64'hF070F070627F6270)) 
    \state[0]_i_2 
       (.I0(\Filter.sOut_reg_0 ),
        .I1(\Filter.sOut_reg_1 ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[1] ),
        .I4(\oSyncStages_reg[1] ),
        .I5(\state_reg[2] ),
        .O(\state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_18
   (\Filter.sOut_reg_0 ,
    \state_reg[0] ,
    \cDelayCnt_reg[0] ,
    out,
    RefClk,
    \Filter.sOut_reg_1 ,
    \state_reg[0]_0 ,
    \state_reg[1] ,
    \oSyncStages_reg[1] ,
    \state_reg[2] ,
    \cDelayCnt_reg[6] );
  output \Filter.sOut_reg_0 ;
  output \state_reg[0] ;
  output \cDelayCnt_reg[0] ;
  input [0:0]out;
  input RefClk;
  input \Filter.sOut_reg_1 ;
  input \state_reg[0]_0 ;
  input \state_reg[1] ;
  input [0:0]\oSyncStages_reg[1] ;
  input \state_reg[2] ;
  input \cDelayCnt_reg[6] ;

  wire \Filter.cntPeriods[0]_i_1_n_0 ;
  wire \Filter.cntPeriods[1]_i_1_n_0 ;
  wire \Filter.sIn_q_reg_n_0 ;
  wire \Filter.sOut_i_1__3_n_0 ;
  wire \Filter.sOut_reg_0 ;
  wire \Filter.sOut_reg_1 ;
  wire RefClk;
  wire \cDelayCnt_reg[0] ;
  wire \cDelayCnt_reg[6] ;
  wire [1:0]cntPeriods;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    \Filter.cntPeriods[0]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\Filter.sIn_q_reg_n_0 ),
        .I3(out),
        .O(\Filter.cntPeriods[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8FF8)) 
    \Filter.cntPeriods[1]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\Filter.sIn_q_reg_n_0 ),
        .I3(out),
        .O(\Filter.cntPeriods[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[0]_i_1_n_0 ),
        .Q(cntPeriods[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[1]_i_1_n_0 ),
        .Q(cntPeriods[1]),
        .R(1'b0));
  FDRE \Filter.sIn_q_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(out),
        .Q(\Filter.sIn_q_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \Filter.sOut_i_1__3 
       (.I0(\Filter.sIn_q_reg_n_0 ),
        .I1(cntPeriods[0]),
        .I2(cntPeriods[1]),
        .I3(\Filter.sOut_reg_0 ),
        .O(\Filter.sOut_i_1__3_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1__3_n_0 ),
        .Q(\Filter.sOut_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEEFFFFFFFF8F00)) 
    \cDelayCnt[0]_i_1__0 
       (.I0(\Filter.sOut_reg_0 ),
        .I1(\Filter.sOut_reg_1 ),
        .I2(\cDelayCnt_reg[6] ),
        .I3(\state_reg[2] ),
        .I4(\state_reg[1] ),
        .I5(\state_reg[0]_0 ),
        .O(\cDelayCnt_reg[0] ));
  LUT6 #(
    .INIT(64'hF070F070627F6270)) 
    \state[0]_i_2__0 
       (.I0(\Filter.sOut_reg_0 ),
        .I1(\Filter.sOut_reg_1 ),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg[1] ),
        .I4(\oSyncStages_reg[1] ),
        .I5(\state_reg[2] ),
        .O(\state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_20
   (\Filter.sOut_reg_0 ,
    \state_reg[0] ,
    cHSReset_reg,
    out,
    RefClk,
    cDelayCnt_reg,
    \state_reg[2] ,
    \cDelayCnt_reg[9] ,
    \state_reg[0]_0 ,
    \state_reg[1] ,
    \Filter.sOut_reg_1 ,
    \cDelayCnt_reg[6] ,
    \oSyncStages_reg[1] ,
    AS);
  output \Filter.sOut_reg_0 ;
  output \state_reg[0] ;
  output cHSReset_reg;
  input [0:0]out;
  input RefClk;
  input [5:0]cDelayCnt_reg;
  input \state_reg[2] ;
  input \cDelayCnt_reg[9] ;
  input \state_reg[0]_0 ;
  input \state_reg[1] ;
  input \Filter.sOut_reg_1 ;
  input \cDelayCnt_reg[6] ;
  input [0:0]\oSyncStages_reg[1] ;
  input [0:0]AS;

  wire [0:0]AS;
  wire \Filter.cntPeriods[0]_i_1_n_0 ;
  wire \Filter.cntPeriods[1]_i_1_n_0 ;
  wire \Filter.sIn_q_reg_n_0 ;
  wire \Filter.sOut_i_1__4_n_0 ;
  wire \Filter.sOut_reg_0 ;
  wire \Filter.sOut_reg_1 ;
  wire RefClk;
  wire [5:0]cDelayCnt_reg;
  wire \cDelayCnt_reg[6] ;
  wire \cDelayCnt_reg[9] ;
  wire cHSReset_i_2__0_n_0;
  wire cHSReset_reg;
  wire [1:0]cntPeriods;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire \state[0]_i_5_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    \Filter.cntPeriods[0]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\Filter.sIn_q_reg_n_0 ),
        .I3(out),
        .O(\Filter.cntPeriods[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8FF8)) 
    \Filter.cntPeriods[1]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\Filter.sIn_q_reg_n_0 ),
        .I3(out),
        .O(\Filter.cntPeriods[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[0]_i_1_n_0 ),
        .Q(cntPeriods[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[1]_i_1_n_0 ),
        .Q(cntPeriods[1]),
        .R(1'b0));
  FDRE \Filter.sIn_q_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(out),
        .Q(\Filter.sIn_q_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \Filter.sOut_i_1__4 
       (.I0(\Filter.sIn_q_reg_n_0 ),
        .I1(cntPeriods[0]),
        .I2(cntPeriods[1]),
        .I3(\Filter.sOut_reg_0 ),
        .O(\Filter.sOut_i_1__4_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1__4_n_0 ),
        .Q(\Filter.sOut_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555557500000030)) 
    cHSReset_i_1__0
       (.I0(cHSReset_i_2__0_n_0),
        .I1(\oSyncStages_reg[1] ),
        .I2(\state_reg[1] ),
        .I3(\state_reg[2] ),
        .I4(\state_reg[0]_0 ),
        .I5(AS),
        .O(cHSReset_reg));
  LUT6 #(
    .INIT(64'h0002024200000040)) 
    cHSReset_i_2__0
       (.I0(\state_reg[2] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1] ),
        .I3(\Filter.sOut_reg_0 ),
        .I4(\Filter.sOut_reg_1 ),
        .I5(\cDelayCnt_reg[6] ),
        .O(cHSReset_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00400F0000400000)) 
    \state[0]_i_3__0 
       (.I0(cDelayCnt_reg[2]),
        .I1(\state[0]_i_5_n_0 ),
        .I2(cDelayCnt_reg[0]),
        .I3(cDelayCnt_reg[1]),
        .I4(\state_reg[2] ),
        .I5(\cDelayCnt_reg[9] ),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \state[0]_i_5 
       (.I0(cDelayCnt_reg[3]),
        .I1(cDelayCnt_reg[4]),
        .I2(cDelayCnt_reg[5]),
        .I3(\state_reg[1] ),
        .I4(\Filter.sOut_reg_0 ),
        .I5(\Filter.sOut_reg_1 ),
        .O(\state[0]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_27
   (in0,
    out,
    RefClk,
    \oSyncStages_reg[1] );
  output [0:0]in0;
  input [0:0]out;
  input RefClk;
  input [0:0]\oSyncStages_reg[1] ;

  wire \Filter.cntPeriods[0]_i_1_n_0 ;
  wire \Filter.cntPeriods[1]_i_1_n_0 ;
  wire \Filter.sOut_i_1_n_0 ;
  wire RefClk;
  wire [1:0]cntPeriods;
  wire [0:0]in0;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire sIn_q;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4FFFFF4F)) 
    \Filter.cntPeriods[0]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\oSyncStages_reg[1] ),
        .I3(out),
        .I4(sIn_q),
        .O(\Filter.cntPeriods[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8FFFFF8F)) 
    \Filter.cntPeriods[1]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\oSyncStages_reg[1] ),
        .I3(out),
        .I4(sIn_q),
        .O(\Filter.cntPeriods[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[0]_i_1_n_0 ),
        .Q(cntPeriods[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[1]_i_1_n_0 ),
        .Q(cntPeriods[1]),
        .R(1'b0));
  FDRE \Filter.sIn_q_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(out),
        .Q(sIn_q),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE02)) 
    \Filter.sOut_i_1 
       (.I0(sIn_q),
        .I1(cntPeriods[0]),
        .I2(cntPeriods[1]),
        .I3(in0),
        .O(\Filter.sOut_i_1_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1_n_0 ),
        .Q(in0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_29
   (in0,
    out,
    RefClk,
    \oSyncStages_reg[1] );
  output [0:0]in0;
  input [0:0]out;
  input RefClk;
  input [0:0]\oSyncStages_reg[1] ;

  wire \Filter.cntPeriods[0]_i_1_n_0 ;
  wire \Filter.cntPeriods[1]_i_1_n_0 ;
  wire \Filter.sIn_q_reg_n_0 ;
  wire \Filter.sOut_i_1__0_n_0 ;
  wire RefClk;
  wire [1:0]cntPeriods;
  wire [0:0]in0;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4FFFFF4F)) 
    \Filter.cntPeriods[0]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\oSyncStages_reg[1] ),
        .I3(out),
        .I4(\Filter.sIn_q_reg_n_0 ),
        .O(\Filter.cntPeriods[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8FFFFF8F)) 
    \Filter.cntPeriods[1]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\oSyncStages_reg[1] ),
        .I3(out),
        .I4(\Filter.sIn_q_reg_n_0 ),
        .O(\Filter.cntPeriods[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[0]_i_1_n_0 ),
        .Q(cntPeriods[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[1]_i_1_n_0 ),
        .Q(cntPeriods[1]),
        .R(1'b0));
  FDRE \Filter.sIn_q_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(out),
        .Q(\Filter.sIn_q_reg_n_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE02)) 
    \Filter.sOut_i_1__0 
       (.I0(\Filter.sIn_q_reg_n_0 ),
        .I1(cntPeriods[0]),
        .I2(cntPeriods[1]),
        .I3(in0),
        .O(\Filter.sOut_i_1__0_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1__0_n_0 ),
        .Q(in0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_8
   (\Filter.sOut_reg_0 ,
    \state_reg[0] ,
    cHSReset_reg,
    out,
    RefClk,
    cDelayCnt_reg,
    \state_reg[2] ,
    \cDelayCnt_reg[9] ,
    \state_reg[0]_0 ,
    \state_reg[1] ,
    \Filter.sOut_reg_1 ,
    \cDelayCnt_reg[6] ,
    \oSyncStages_reg[1] ,
    AS);
  output \Filter.sOut_reg_0 ;
  output \state_reg[0] ;
  output cHSReset_reg;
  input [0:0]out;
  input RefClk;
  input [5:0]cDelayCnt_reg;
  input \state_reg[2] ;
  input \cDelayCnt_reg[9] ;
  input \state_reg[0]_0 ;
  input \state_reg[1] ;
  input \Filter.sOut_reg_1 ;
  input \cDelayCnt_reg[6] ;
  input [0:0]\oSyncStages_reg[1] ;
  input [0:0]AS;

  wire [0:0]AS;
  wire \Filter.cntPeriods[0]_i_1_n_0 ;
  wire \Filter.cntPeriods[1]_i_1_n_0 ;
  wire \Filter.sIn_q_reg_n_0 ;
  wire \Filter.sOut_i_1__2_n_0 ;
  wire \Filter.sOut_reg_0 ;
  wire \Filter.sOut_reg_1 ;
  wire RefClk;
  wire [5:0]cDelayCnt_reg;
  wire \cDelayCnt_reg[6] ;
  wire \cDelayCnt_reg[9] ;
  wire cHSReset_i_2_n_0;
  wire cHSReset_reg;
  wire [1:0]cntPeriods;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire \state[0]_i_5__0_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;

  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h4FF4)) 
    \Filter.cntPeriods[0]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\Filter.sIn_q_reg_n_0 ),
        .I3(out),
        .O(\Filter.cntPeriods[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8FF8)) 
    \Filter.cntPeriods[1]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .I2(\Filter.sIn_q_reg_n_0 ),
        .I3(out),
        .O(\Filter.cntPeriods[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[0]_i_1_n_0 ),
        .Q(cntPeriods[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.cntPeriods[1]_i_1_n_0 ),
        .Q(cntPeriods[1]),
        .R(1'b0));
  FDRE \Filter.sIn_q_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(out),
        .Q(\Filter.sIn_q_reg_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \Filter.sOut_i_1__2 
       (.I0(\Filter.sIn_q_reg_n_0 ),
        .I1(cntPeriods[0]),
        .I2(cntPeriods[1]),
        .I3(\Filter.sOut_reg_0 ),
        .O(\Filter.sOut_i_1__2_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1__2_n_0 ),
        .Q(\Filter.sOut_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555557500000030)) 
    cHSReset_i_1
       (.I0(cHSReset_i_2_n_0),
        .I1(\oSyncStages_reg[1] ),
        .I2(\state_reg[1] ),
        .I3(\state_reg[2] ),
        .I4(\state_reg[0]_0 ),
        .I5(AS),
        .O(cHSReset_reg));
  LUT6 #(
    .INIT(64'h0002024200000040)) 
    cHSReset_i_2
       (.I0(\state_reg[2] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg[1] ),
        .I3(\Filter.sOut_reg_0 ),
        .I4(\Filter.sOut_reg_1 ),
        .I5(\cDelayCnt_reg[6] ),
        .O(cHSReset_i_2_n_0));
  LUT6 #(
    .INIT(64'h00400F0000400000)) 
    \state[0]_i_3 
       (.I0(cDelayCnt_reg[2]),
        .I1(\state[0]_i_5__0_n_0 ),
        .I2(cDelayCnt_reg[0]),
        .I3(cDelayCnt_reg[1]),
        .I4(\state_reg[2] ),
        .I5(\cDelayCnt_reg[9] ),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \state[0]_i_5__0 
       (.I0(cDelayCnt_reg[3]),
        .I1(cDelayCnt_reg[4]),
        .I2(cDelayCnt_reg[5]),
        .I3(\state_reg[1] ),
        .I4(\Filter.sOut_reg_0 ),
        .I5(\Filter.sOut_reg_1 ),
        .O(\state[0]_i_5__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "HS_Clocking" *) 
module design_1_MIPI_D_PHY_RX_0_0_HS_Clocking
   (aRxClkActiveHS,
    RxDDRClkHS,
    CLK,
    AS,
    RefClk,
    aHS,
    AR);
  output aRxClkActiveHS;
  output RxDDRClkHS;
  output CLK;
  output [0:0]AS;
  input RefClk;
  input aHS;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]AS;
  wire CLK;
  wire \GenNoMMCM.cBUFR_Rst_reg_n_0 ;
  wire HS_ClockDly;
  wire RefClk;
  wire RxDDRClkHS;
  wire aHS;
  wire aRxClkActiveHS;
  wire [4:0]NLW_InputDelay_CNTVALUEOUT_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("4"),
    .SIM_DEVICE("7SERIES")) 
    DivClkBuffer
       (.CE(1'b1),
        .CLR(\GenNoMMCM.cBUFR_Rst_reg_n_0 ),
        .I(HS_ClockDly),
        .O(CLK));
  FDRE \GenNoMMCM.cBUFR_Rst_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(AR),
        .Q(\GenNoMMCM.cBUFR_Rst_reg_n_0 ),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("CLOCK")) 
    InputDelay
       (.C(RefClk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(NLW_InputDelay_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(HS_ClockDly),
        .IDATAIN(aHS),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* box_type = "PRIMITIVE" *) 
  BUFIO SerialClkBuffer
       (.I(HS_ClockDly),
        .O(RxDDRClkHS));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_33 SyncAsyncLocked
       (.AR(\GenNoMMCM.cBUFR_Rst_reg_n_0 ),
        .AS(AS),
        .CLK(CLK),
        .aRxClkActiveHS(aRxClkActiveHS));
endmodule

(* ORIG_REF_NAME = "HS_Deserializer" *) 
module design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer
   (aLP_int,
    dSyncHard_reg_reg,
    dSyncSoft_reg_reg,
    rbD1RxValidHS,
    dSyncErr_reg_reg,
    rbD1RxDataHS,
    rbD1RxActiveHS,
    rbD1RxSyncHS,
    rbD1ErrSotSyncHS,
    rbD1ErrSotHS,
    RefClk,
    aHS,
    dphy_clk_hs_n,
    CLKB,
    CLK,
    aLP,
    cHSSettled,
    AS,
    dSyncSoft_reg,
    dSyncHard_reg,
    dSyncErr_reg);
  output [1:0]aLP_int;
  output dSyncHard_reg_reg;
  output dSyncSoft_reg_reg;
  output rbD1RxValidHS;
  output dSyncErr_reg_reg;
  output [7:0]rbD1RxDataHS;
  output rbD1RxActiveHS;
  output rbD1RxSyncHS;
  output rbD1ErrSotSyncHS;
  output rbD1ErrSotHS;
  input RefClk;
  input aHS;
  input dphy_clk_hs_n;
  input CLKB;
  input CLK;
  input [1:0]aLP;
  input cHSSettled;
  input [0:0]AS;
  input dSyncSoft_reg;
  input dSyncHard_reg;
  input dSyncErr_reg;

  wire [0:0]AS;
  wire CLK;
  wire CLKB;
  wire DataInDly;
  wire InputDelay_n_1;
  wire InputDelay_n_2;
  wire InputDelay_n_3;
  wire InputDelay_n_4;
  wire InputDelay_n_5;
  wire RefClk;
  wire SyncAsyncSettled_n_0;
  wire aHS;
  wire [1:0]aLP;
  wire [1:0]aLP_int;
  wire [2:0]alignment;
  wire \alignment[0]_i_1_n_0 ;
  wire \alignment[1]_i_1_n_0 ;
  wire \alignment[2]_i_1_n_0 ;
  wire [2:0]alignment_out;
  wire cHSSettled;
  wire [2:0]dAlignment_int;
  wire \dAlignment_int[0]_i_10_n_0 ;
  wire \dAlignment_int[0]_i_11_n_0 ;
  wire \dAlignment_int[0]_i_12_n_0 ;
  wire \dAlignment_int[0]_i_13_n_0 ;
  wire \dAlignment_int[0]_i_14_n_0 ;
  wire \dAlignment_int[0]_i_15_n_0 ;
  wire \dAlignment_int[0]_i_16_n_0 ;
  wire \dAlignment_int[0]_i_17_n_0 ;
  wire \dAlignment_int[0]_i_18_n_0 ;
  wire \dAlignment_int[0]_i_2_n_0 ;
  wire \dAlignment_int[0]_i_3_n_0 ;
  wire \dAlignment_int[0]_i_4_n_0 ;
  wire \dAlignment_int[0]_i_5_n_0 ;
  wire \dAlignment_int[0]_i_6_n_0 ;
  wire \dAlignment_int[0]_i_7_n_0 ;
  wire \dAlignment_int[0]_i_8_n_0 ;
  wire \dAlignment_int[0]_i_9_n_0 ;
  wire \dAlignment_int[1]_i_10_n_0 ;
  wire \dAlignment_int[1]_i_11_n_0 ;
  wire \dAlignment_int[1]_i_12_n_0 ;
  wire \dAlignment_int[1]_i_13_n_0 ;
  wire \dAlignment_int[1]_i_14_n_0 ;
  wire \dAlignment_int[1]_i_15_n_0 ;
  wire \dAlignment_int[1]_i_16_n_0 ;
  wire \dAlignment_int[1]_i_17_n_0 ;
  wire \dAlignment_int[1]_i_18_n_0 ;
  wire \dAlignment_int[1]_i_2_n_0 ;
  wire \dAlignment_int[1]_i_3_n_0 ;
  wire \dAlignment_int[1]_i_4_n_0 ;
  wire \dAlignment_int[1]_i_5_n_0 ;
  wire \dAlignment_int[1]_i_6_n_0 ;
  wire \dAlignment_int[1]_i_7_n_0 ;
  wire \dAlignment_int[1]_i_8_n_0 ;
  wire \dAlignment_int[1]_i_9_n_0 ;
  wire \dAlignment_int[2]_i_2_n_0 ;
  wire \dAlignment_int[2]_i_3_n_0 ;
  wire \dAlignment_int[2]_i_4_n_0 ;
  wire \dAlignment_int[2]_i_5_n_0 ;
  wire \dAlignment_int[2]_i_6_n_0 ;
  wire [7:0]dDataIn_int;
  wire [7:0]\dDataIn_reg_reg[2] ;
  wire [6:0]\dDataIn_reg_reg[3] ;
  wire \dDataIn_reg_reg_n_0_[0][0] ;
  wire \dDataIn_reg_reg_n_0_[1][1] ;
  wire \dDataIn_reg_reg_n_0_[1][2] ;
  wire \dDataIn_reg_reg_n_0_[1][3] ;
  wire \dDataIn_reg_reg_n_0_[1][4] ;
  wire \dDataIn_reg_reg_n_0_[1][5] ;
  wire \dDataIn_reg_reg_n_0_[1][6] ;
  wire \dDataIn_reg_reg_n_0_[1][7] ;
  wire dDataOut80;
  wire \dDataOut8[0]_i_3_n_0 ;
  wire \dDataOut8[0]_i_4_n_0 ;
  wire \dDataOut8[0]_i_5_n_0 ;
  wire \dDataOut8[0]_i_6_n_0 ;
  wire \dDataOut8[1]_i_2_n_0 ;
  wire \dDataOut8[2]_i_2_n_0 ;
  wire \dDataOut8[3]_i_2_n_0 ;
  wire \dDataOut8[4]_i_2_n_0 ;
  wire \dDataOut8[5]_i_2_n_0 ;
  wire \dDataOut8[6]_i_2_n_0 ;
  wire \dDataOut8[7]_i_2_n_0 ;
  wire [7:0]dDataOut8__0;
  (* DONT_TOUCH *) wire [7:0]\dLP[0]_0 ;
  (* DONT_TOUCH *) wire [7:0]\dLP[1]_1 ;
  wire dLogicRst;
  wire dSerdesRst;
  wire dSerdesRst_q;
  wire dSyncErr_int_i_1_n_0;
  wire dSyncErr_reg;
  wire dSyncErr_reg_reg;
  wire dSyncHard_int;
  wire dSyncHard_int_i_10_n_0;
  wire dSyncHard_int_i_11_n_0;
  wire dSyncHard_int_i_12_n_0;
  wire dSyncHard_int_i_13_n_0;
  wire dSyncHard_int_i_14_n_0;
  wire dSyncHard_int_i_15_n_0;
  wire dSyncHard_int_i_16_n_0;
  wire dSyncHard_int_i_17_n_0;
  wire dSyncHard_int_i_18_n_0;
  wire dSyncHard_int_i_19_n_0;
  wire dSyncHard_int_i_2_n_0;
  wire dSyncHard_int_i_3_n_0;
  wire dSyncHard_int_i_4_n_0;
  wire dSyncHard_int_i_5_n_0;
  wire dSyncHard_int_i_6_n_0;
  wire dSyncHard_int_i_7_n_0;
  wire dSyncHard_int_i_8_n_0;
  wire dSyncHard_int_i_9_n_0;
  wire dSyncHard_reg;
  wire dSyncHard_reg_reg;
  wire dSyncSoft_int_i_10_n_0;
  wire dSyncSoft_int_i_11_n_0;
  wire dSyncSoft_int_i_12_n_0;
  wire dSyncSoft_int_i_13_n_0;
  wire dSyncSoft_int_i_14_n_0;
  wire dSyncSoft_int_i_15_n_0;
  wire dSyncSoft_int_i_16_n_0;
  wire dSyncSoft_int_i_17_n_0;
  wire dSyncSoft_int_i_18_n_0;
  wire dSyncSoft_int_i_19_n_0;
  wire dSyncSoft_int_i_20_n_0;
  wire dSyncSoft_int_i_21_n_0;
  wire dSyncSoft_int_i_22_n_0;
  wire dSyncSoft_int_i_23_n_0;
  wire dSyncSoft_int_i_24_n_0;
  wire dSyncSoft_int_i_2_n_0;
  wire dSyncSoft_int_i_3_n_0;
  wire dSyncSoft_int_i_4_n_0;
  wire dSyncSoft_int_i_5_n_0;
  wire dSyncSoft_int_i_6_n_0;
  wire dSyncSoft_int_i_7_n_0;
  wire dSyncSoft_int_i_8_n_0;
  wire dSyncSoft_int_i_9_n_0;
  wire dSyncSoft_reg;
  wire dSyncSoft_reg_reg;
  wire \dValid_reg_reg_n_0_[3] ;
  wire dphy_clk_hs_n;
  wire nextMust_i_1_n_0;
  wire nextMust_reg_n_0;
  wire p_2_in;
  wire [1:1]p_3_out;
  wire rbD1ErrSotHS;
  wire rbD1ErrSotSyncHS;
  wire rbD1RxActiveHS;
  wire [7:0]rbD1RxDataHS;
  wire rbD1RxSyncHS;
  wire rbD1RxValidHS;
  wire soft5_out;
  wire [7:7]word;
  wire [6:0]word_0;
  wire NLW_Deserializer_O_UNCONNECTED;
  wire NLW_Deserializer_SHIFTOUT1_UNCONNECTED;
  wire NLW_Deserializer_SHIFTOUT2_UNCONNECTED;
  wire \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    Deserializer
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(dphy_clk_hs_n),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(DataInDly),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_Deserializer_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(dDataIn_int[0]),
        .Q2(dDataIn_int[1]),
        .Q3(dDataIn_int[2]),
        .Q4(dDataIn_int[3]),
        .Q5(dDataIn_int[4]),
        .Q6(dDataIn_int[5]),
        .Q7(dDataIn_int[6]),
        .Q8(dDataIn_int[7]),
        .RST(dSerdesRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_Deserializer_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_Deserializer_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VARIABLE"),
    .IDELAY_VALUE(12),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    InputDelay
       (.C(RefClk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({InputDelay_n_1,InputDelay_n_2,InputDelay_n_3,InputDelay_n_4,InputDelay_n_5}),
        .DATAIN(1'b0),
        .DATAOUT(DataInDly),
        .IDATAIN(aHS),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  design_1_MIPI_D_PHY_RX_0_0_ResetBridge_11 SerdesReset
       (.AS(AS),
        .CLK(CLK),
        .out(dSerdesRst));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1 SyncAsyncSettled
       (.CLK(CLK),
        .Q(\dValid_reg_reg_n_0_[3] ),
        .cHSSettled(cHSSettled),
        .dLogicRst(dLogicRst),
        .dLogicRst_reg(SyncAsyncSettled_n_0),
        .dSerdesRst_q(dSerdesRst_q));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b1),
    .INIT_Q2(1'b1),
    .INIT_Q3(1'b1),
    .INIT_Q4(1'b1),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b1),
    .SRVAL_Q2(1'b1),
    .SRVAL_Q3(1'b1),
    .SRVAL_Q4(1'b1)) 
    \UseOwnLP.LPxx[0].LP_DeserializerX 
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(dphy_clk_hs_n),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(aLP[0]),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(aLP_int[0]),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(\dLP[0]_0 [0]),
        .Q2(\dLP[0]_0 [1]),
        .Q3(\dLP[0]_0 [2]),
        .Q4(\dLP[0]_0 [3]),
        .Q5(\dLP[0]_0 [4]),
        .Q6(\dLP[0]_0 [5]),
        .Q7(\dLP[0]_0 [6]),
        .Q8(\dLP[0]_0 [7]),
        .RST(dSerdesRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED ));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b1),
    .INIT_Q2(1'b1),
    .INIT_Q3(1'b1),
    .INIT_Q4(1'b1),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b1),
    .SRVAL_Q2(1'b1),
    .SRVAL_Q3(1'b1),
    .SRVAL_Q4(1'b1)) 
    \UseOwnLP.LPxx[1].LP_DeserializerX 
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(dphy_clk_hs_n),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(aLP[1]),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(aLP_int[1]),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(\dLP[1]_1 [0]),
        .Q2(\dLP[1]_1 [1]),
        .Q3(\dLP[1]_1 [2]),
        .Q4(\dLP[1]_1 [3]),
        .Q5(\dLP[1]_1 [4]),
        .Q6(\dLP[1]_1 [5]),
        .Q7(\dLP[1]_1 [6]),
        .Q8(\dLP[1]_1 [7]),
        .RST(dSerdesRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \alignment[0]_i_1 
       (.I0(alignment_out[0]),
        .I1(dSyncHard_int),
        .I2(dLogicRst),
        .I3(alignment[0]),
        .O(\alignment[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \alignment[1]_i_1 
       (.I0(alignment_out[1]),
        .I1(dSyncHard_int),
        .I2(dLogicRst),
        .I3(alignment[1]),
        .O(\alignment[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \alignment[2]_i_1 
       (.I0(alignment_out[2]),
        .I1(dSyncHard_int),
        .I2(dLogicRst),
        .I3(alignment[2]),
        .O(\alignment[2]_i_1_n_0 ));
  FDRE \alignment_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\alignment[0]_i_1_n_0 ),
        .Q(alignment[0]),
        .R(1'b0));
  FDRE \alignment_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\alignment[1]_i_1_n_0 ),
        .Q(alignment[1]),
        .R(1'b0));
  FDRE \alignment_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\alignment[2]_i_1_n_0 ),
        .Q(alignment[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4447444477777777)) 
    \dAlignment_int[0]_i_1 
       (.I0(\dAlignment_int[0]_i_2_n_0 ),
        .I1(dSyncHard_int_i_2_n_0),
        .I2(\dAlignment_int[0]_i_3_n_0 ),
        .I3(\dAlignment_int[0]_i_4_n_0 ),
        .I4(dSyncSoft_int_i_2_n_0),
        .I5(\dAlignment_int[0]_i_5_n_0 ),
        .O(alignment_out[0]));
  LUT5 #(
    .INIT(32'h00E0EEEE)) 
    \dAlignment_int[0]_i_10 
       (.I0(dSyncHard_int_i_17_n_0),
        .I1(\dAlignment_int[1]_i_18_n_0 ),
        .I2(\dAlignment_int[1]_i_17_n_0 ),
        .I3(dSyncHard_int_i_16_n_0),
        .I4(alignment[0]),
        .O(\dAlignment_int[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF2222)) 
    \dAlignment_int[0]_i_11 
       (.I0(dSyncHard_int_i_19_n_0),
        .I1(\dAlignment_int[0]_i_17_n_0 ),
        .I2(dSyncHard_int_i_18_n_0),
        .I3(\dAlignment_int[0]_i_18_n_0 ),
        .I4(dSyncHard_int_i_15_n_0),
        .O(\dAlignment_int[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \dAlignment_int[0]_i_12 
       (.I0(\dDataIn_reg_reg_n_0_[1][5] ),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(\dAlignment_int[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \dAlignment_int[0]_i_13 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(word),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(\dAlignment_int[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \dAlignment_int[0]_i_14 
       (.I0(word_0[6]),
        .I1(word_0[5]),
        .I2(\dDataIn_reg_reg_n_0_[1][5] ),
        .I3(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \dAlignment_int[0]_i_15 
       (.I0(\dDataIn_reg_reg_n_0_[1][4] ),
        .I1(\dDataIn_reg_reg_n_0_[1][3] ),
        .I2(word_0[5]),
        .I3(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \dAlignment_int[0]_i_16 
       (.I0(word_0[6]),
        .I1(word_0[5]),
        .I2(word_0[4]),
        .I3(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \dAlignment_int[0]_i_17 
       (.I0(word_0[6]),
        .I1(word_0[5]),
        .I2(word_0[3]),
        .I3(word_0[1]),
        .O(\dAlignment_int[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \dAlignment_int[0]_i_18 
       (.I0(word_0[3]),
        .I1(word_0[4]),
        .I2(word),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(\dAlignment_int[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF2)) 
    \dAlignment_int[0]_i_2 
       (.I0(dSyncHard_int_i_8_n_0),
        .I1(\dAlignment_int[0]_i_6_n_0 ),
        .I2(\dAlignment_int[0]_i_7_n_0 ),
        .I3(dSyncHard_int_i_6_n_0),
        .I4(dSyncHard_int_i_9_n_0),
        .I5(\dAlignment_int[0]_i_8_n_0 ),
        .O(\dAlignment_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h75575755FFFFFFFF)) 
    \dAlignment_int[0]_i_3 
       (.I0(dSyncSoft_int_i_7_n_0),
        .I1(\dAlignment_int[1]_i_8_n_0 ),
        .I2(\dAlignment_int[0]_i_9_n_0 ),
        .I3(\dAlignment_int[1]_i_7_n_0 ),
        .I4(\dAlignment_int[1]_i_6_n_0 ),
        .I5(\dAlignment_int[2]_i_3_n_0 ),
        .O(\dAlignment_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA8AAAAAAAA)) 
    \dAlignment_int[0]_i_4 
       (.I0(dSyncSoft_int_i_8_n_0),
        .I1(\dAlignment_int[0]_i_10_n_0 ),
        .I2(\dAlignment_int[0]_i_7_n_0 ),
        .I3(\dAlignment_int[0]_i_11_n_0 ),
        .I4(\dAlignment_int[0]_i_8_n_0 ),
        .I5(dSyncSoft_int_i_9_n_0),
        .O(\dAlignment_int[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \dAlignment_int[0]_i_5 
       (.I0(dSyncSoft_int_i_4_n_0),
        .I1(dSyncSoft_int_i_7_n_0),
        .I2(dSyncSoft_int_i_5_n_0),
        .I3(\dAlignment_int[1]_i_3_n_0 ),
        .O(\dAlignment_int[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \dAlignment_int[0]_i_6 
       (.I0(alignment[0]),
        .I1(dSyncHard_int_i_16_n_0),
        .I2(word_0[3]),
        .I3(word_0[2]),
        .I4(word_0[1]),
        .I5(\dDataIn_reg_reg_n_0_[0][0] ),
        .O(\dAlignment_int[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \dAlignment_int[0]_i_7 
       (.I0(\dAlignment_int[0]_i_12_n_0 ),
        .I1(dSyncHard_int_i_12_n_0),
        .I2(\dAlignment_int[0]_i_13_n_0 ),
        .I3(\dAlignment_int[0]_i_14_n_0 ),
        .I4(\dAlignment_int[2]_i_4_n_0 ),
        .I5(\dAlignment_int[0]_i_15_n_0 ),
        .O(\dAlignment_int[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \dAlignment_int[0]_i_8 
       (.I0(dSyncHard_int_i_18_n_0),
        .I1(dSyncHard_int_i_15_n_0),
        .I2(\dAlignment_int[0]_i_13_n_0 ),
        .I3(\dAlignment_int[0]_i_16_n_0 ),
        .I4(\dAlignment_int[0]_i_12_n_0 ),
        .I5(dSyncHard_int_i_12_n_0),
        .O(\dAlignment_int[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dAlignment_int[0]_i_9 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(word_0[1]),
        .O(\dAlignment_int[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F30000F2F2)) 
    \dAlignment_int[1]_i_1 
       (.I0(\dAlignment_int[1]_i_2_n_0 ),
        .I1(\dAlignment_int[1]_i_3_n_0 ),
        .I2(\dAlignment_int[1]_i_4_n_0 ),
        .I3(dSyncSoft_int_i_3_n_0),
        .I4(dSyncHard_int_i_2_n_0),
        .I5(\dAlignment_int[1]_i_5_n_0 ),
        .O(alignment_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dAlignment_int[1]_i_10 
       (.I0(\dDataIn_reg_reg_n_0_[1][3] ),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(\dAlignment_int[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFBABABAFFFFFFBA)) 
    \dAlignment_int[1]_i_11 
       (.I0(dSyncSoft_int_i_10_n_0),
        .I1(word_0[5]),
        .I2(\dDataIn_reg_reg_n_0_[1][5] ),
        .I3(\dDataIn_reg_reg_n_0_[1][4] ),
        .I4(\dDataIn_reg_reg_n_0_[1][3] ),
        .I5(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dAlignment_int[1]_i_12 
       (.I0(word_0[6]),
        .I1(\dDataIn_reg_reg_n_0_[1][1] ),
        .I2(word),
        .O(\dAlignment_int[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \dAlignment_int[1]_i_13 
       (.I0(\dDataIn_reg_reg_n_0_[1][4] ),
        .I1(\dDataIn_reg_reg_n_0_[1][3] ),
        .I2(word_0[5]),
        .I3(\dDataIn_reg_reg_n_0_[1][5] ),
        .I4(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h010001000100FFFF)) 
    \dAlignment_int[1]_i_14 
       (.I0(\dAlignment_int[1]_i_16_n_0 ),
        .I1(word_0[4]),
        .I2(word_0[0]),
        .I3(\dAlignment_int[1]_i_17_n_0 ),
        .I4(dSyncHard_int_i_17_n_0),
        .I5(\dAlignment_int[1]_i_18_n_0 ),
        .O(\dAlignment_int[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \dAlignment_int[1]_i_15 
       (.I0(word_0[5]),
        .I1(word_0[6]),
        .I2(word),
        .O(\dAlignment_int[1]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dAlignment_int[1]_i_16 
       (.I0(word_0[6]),
        .I1(word_0[5]),
        .O(\dAlignment_int[1]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \dAlignment_int[1]_i_17 
       (.I0(word_0[3]),
        .I1(word_0[2]),
        .I2(word_0[1]),
        .I3(\dDataIn_reg_reg_n_0_[0][0] ),
        .O(\dAlignment_int[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \dAlignment_int[1]_i_18 
       (.I0(word_0[2]),
        .I1(word_0[0]),
        .I2(word_0[4]),
        .I3(word_0[3]),
        .O(\dAlignment_int[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00008688FFFFFFFF)) 
    \dAlignment_int[1]_i_2 
       (.I0(\dAlignment_int[1]_i_6_n_0 ),
        .I1(\dAlignment_int[1]_i_7_n_0 ),
        .I2(\dDataIn_reg_reg_n_0_[1][1] ),
        .I3(word_0[1]),
        .I4(\dAlignment_int[1]_i_8_n_0 ),
        .I5(dSyncSoft_int_i_7_n_0),
        .O(\dAlignment_int[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00020029)) 
    \dAlignment_int[1]_i_3 
       (.I0(word_0[4]),
        .I1(\dDataIn_reg_reg_n_0_[1][4] ),
        .I2(\dAlignment_int[1]_i_7_n_0 ),
        .I3(\dAlignment_int[1]_i_9_n_0 ),
        .I4(\dAlignment_int[1]_i_10_n_0 ),
        .O(\dAlignment_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAABABABAB)) 
    \dAlignment_int[1]_i_4 
       (.I0(dSyncSoft_int_i_5_n_0),
        .I1(\dAlignment_int[1]_i_11_n_0 ),
        .I2(\dAlignment_int[1]_i_12_n_0 ),
        .I3(word_0[5]),
        .I4(\dDataIn_reg_reg_n_0_[1][5] ),
        .I5(\dAlignment_int[1]_i_13_n_0 ),
        .O(\dAlignment_int[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0100)) 
    \dAlignment_int[1]_i_5 
       (.I0(dSyncHard_int_i_5_n_0),
        .I1(dSyncHard_int_i_6_n_0),
        .I2(\dAlignment_int[1]_i_14_n_0 ),
        .I3(alignment[1]),
        .I4(dSyncHard_int_i_4_n_0),
        .I5(dSyncHard_int_i_9_n_0),
        .O(\dAlignment_int[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dAlignment_int[1]_i_6 
       (.I0(word_0[2]),
        .I1(word_0[4]),
        .I2(word_0[3]),
        .O(\dAlignment_int[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dAlignment_int[1]_i_7 
       (.I0(word),
        .I1(word_0[5]),
        .I2(word_0[6]),
        .O(\dAlignment_int[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7F7F57FF5757)) 
    \dAlignment_int[1]_i_8 
       (.I0(\dAlignment_int[1]_i_15_n_0 ),
        .I1(word_0[4]),
        .I2(word_0[3]),
        .I3(word_0[1]),
        .I4(\dDataIn_reg_reg_n_0_[1][1] ),
        .I5(word_0[2]),
        .O(\dAlignment_int[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF717171FFFFFF71)) 
    \dAlignment_int[1]_i_9 
       (.I0(word),
        .I1(word_0[6]),
        .I2(word_0[5]),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .I4(\dDataIn_reg_reg_n_0_[1][2] ),
        .I5(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(\dAlignment_int[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFFBFBF)) 
    \dAlignment_int[2]_i_1 
       (.I0(\dAlignment_int[2]_i_2_n_0 ),
        .I1(dSyncSoft_int_i_2_n_0),
        .I2(\dAlignment_int[2]_i_3_n_0 ),
        .I3(dSyncSoft_int_i_3_n_0),
        .I4(alignment[2]),
        .I5(dSyncHard_int_i_2_n_0),
        .O(alignment_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAABAA)) 
    \dAlignment_int[2]_i_2 
       (.I0(dSyncHard_int_i_6_n_0),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(word_0[5]),
        .I3(dSyncHard_int_i_14_n_0),
        .I4(\dAlignment_int[2]_i_4_n_0 ),
        .I5(dSyncHard_int_i_4_n_0),
        .O(\dAlignment_int[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hBFEB)) 
    \dAlignment_int[2]_i_3 
       (.I0(\dAlignment_int[2]_i_5_n_0 ),
        .I1(\dAlignment_int[2]_i_6_n_0 ),
        .I2(word_0[3]),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(\dAlignment_int[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \dAlignment_int[2]_i_4 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(word),
        .I2(word_0[4]),
        .I3(word_0[6]),
        .O(\dAlignment_int[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBB2FFFBFFFBFFFF)) 
    \dAlignment_int[2]_i_5 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(word),
        .I2(\dDataIn_reg_reg_n_0_[1][2] ),
        .I3(word_0[4]),
        .I4(word_0[6]),
        .I5(word_0[5]),
        .O(\dAlignment_int[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0096960096000096)) 
    \dAlignment_int[2]_i_6 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(word),
        .I3(word_0[6]),
        .I4(word_0[5]),
        .I5(word_0[4]),
        .O(\dAlignment_int[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dAlignment_int_reg[0] 
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(alignment_out[0]),
        .Q(dAlignment_int[0]),
        .R(dLogicRst));
  FDRE #(
    .INIT(1'b0)) 
    \dAlignment_int_reg[1] 
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(alignment_out[1]),
        .Q(dAlignment_int[1]),
        .R(dLogicRst));
  FDRE #(
    .INIT(1'b0)) 
    \dAlignment_int_reg[2] 
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(alignment_out[2]),
        .Q(dAlignment_int[2]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[0]),
        .Q(\dDataIn_reg_reg_n_0_[0][0] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[1]),
        .Q(word_0[0]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[2]),
        .Q(word_0[1]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[3]),
        .Q(word_0[2]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[4]),
        .Q(word_0[3]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[5]),
        .Q(word_0[4]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[6]),
        .Q(word_0[5]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[7]),
        .Q(word_0[6]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[0][0] ),
        .Q(word),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(word_0[0]),
        .Q(\dDataIn_reg_reg_n_0_[1][1] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(word_0[1]),
        .Q(\dDataIn_reg_reg_n_0_[1][2] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(word_0[2]),
        .Q(\dDataIn_reg_reg_n_0_[1][3] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(word_0[3]),
        .Q(\dDataIn_reg_reg_n_0_[1][4] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(word_0[4]),
        .Q(\dDataIn_reg_reg_n_0_[1][5] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(word_0[5]),
        .Q(\dDataIn_reg_reg_n_0_[1][6] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(word_0[6]),
        .Q(\dDataIn_reg_reg_n_0_[1][7] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(word),
        .Q(\dDataIn_reg_reg[2] [0]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][1] ),
        .Q(\dDataIn_reg_reg[2] [1]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][2] ),
        .Q(\dDataIn_reg_reg[2] [2]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][3] ),
        .Q(\dDataIn_reg_reg[2] [3]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][4] ),
        .Q(\dDataIn_reg_reg[2] [4]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][5] ),
        .Q(\dDataIn_reg_reg[2] [5]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][6] ),
        .Q(\dDataIn_reg_reg[2] [6]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][7] ),
        .Q(\dDataIn_reg_reg[2] [7]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg[2] [0]),
        .Q(\dDataIn_reg_reg[3] [0]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg[2] [1]),
        .Q(\dDataIn_reg_reg[3] [1]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg[2] [2]),
        .Q(\dDataIn_reg_reg[3] [2]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg[2] [3]),
        .Q(\dDataIn_reg_reg[3] [3]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg[2] [4]),
        .Q(\dDataIn_reg_reg[3] [4]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg[2] [5]),
        .Q(\dDataIn_reg_reg[3] [5]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg[2] [6]),
        .Q(\dDataIn_reg_reg[3] [6]),
        .R(dLogicRst));
  LUT2 #(
    .INIT(4'hB)) 
    \dDataOut8[0]_i_1 
       (.I0(dLogicRst),
        .I1(\dValid_reg_reg_n_0_[3] ),
        .O(dDataOut80));
  LUT6 #(
    .INIT(64'hFAEEFFAAFAEEAAAA)) 
    \dDataOut8[0]_i_2 
       (.I0(\dDataOut8[0]_i_3_n_0 ),
        .I1(\dDataOut8[0]_i_4_n_0 ),
        .I2(\dDataOut8[0]_i_5_n_0 ),
        .I3(dAlignment_int[0]),
        .I4(dAlignment_int[1]),
        .I5(\dDataOut8[0]_i_6_n_0 ),
        .O(dDataOut8__0[0]));
  LUT5 #(
    .INIT(32'h02020300)) 
    \dDataOut8[0]_i_3 
       (.I0(\dDataIn_reg_reg[2] [4]),
        .I1(dAlignment_int[0]),
        .I2(dAlignment_int[1]),
        .I3(\dDataIn_reg_reg[2] [0]),
        .I4(dAlignment_int[2]),
        .O(\dDataOut8[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[0]_i_4 
       (.I0(\dDataIn_reg_reg[2] [6]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[2] [2]),
        .O(\dDataOut8[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[0]_i_5 
       (.I0(\dDataIn_reg_reg[2] [7]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[2] [3]),
        .O(\dDataOut8[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[0]_i_6 
       (.I0(\dDataIn_reg_reg[2] [5]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[2] [1]),
        .O(\dDataOut8[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE3EF232CE0EC202)) 
    \dDataOut8[1]_i_1 
       (.I0(\dDataOut8[0]_i_6_n_0 ),
        .I1(dAlignment_int[1]),
        .I2(dAlignment_int[0]),
        .I3(\dDataOut8[1]_i_2_n_0 ),
        .I4(\dDataOut8[0]_i_5_n_0 ),
        .I5(\dDataOut8[0]_i_4_n_0 ),
        .O(dDataOut8__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[1]_i_2 
       (.I0(\dDataIn_reg_reg[3] [0]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[2] [4]),
        .O(\dDataOut8[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[2]_i_1 
       (.I0(\dDataOut8[2]_i_2_n_0 ),
        .I1(dAlignment_int[0]),
        .I2(dAlignment_int[1]),
        .I3(\dDataOut8[1]_i_2_n_0 ),
        .I4(\dDataOut8[0]_i_5_n_0 ),
        .I5(\dDataOut8[0]_i_4_n_0 ),
        .O(dDataOut8__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[2]_i_2 
       (.I0(\dDataIn_reg_reg[3] [1]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[2] [5]),
        .O(\dDataOut8[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[3]_i_1 
       (.I0(\dDataOut8[3]_i_2_n_0 ),
        .I1(dAlignment_int[0]),
        .I2(dAlignment_int[1]),
        .I3(\dDataOut8[2]_i_2_n_0 ),
        .I4(\dDataOut8[1]_i_2_n_0 ),
        .I5(\dDataOut8[0]_i_5_n_0 ),
        .O(dDataOut8__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[3]_i_2 
       (.I0(\dDataIn_reg_reg[3] [2]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[2] [6]),
        .O(\dDataOut8[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[4]_i_1 
       (.I0(\dDataOut8[4]_i_2_n_0 ),
        .I1(dAlignment_int[0]),
        .I2(dAlignment_int[1]),
        .I3(\dDataOut8[3]_i_2_n_0 ),
        .I4(\dDataOut8[2]_i_2_n_0 ),
        .I5(\dDataOut8[1]_i_2_n_0 ),
        .O(dDataOut8__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[4]_i_2 
       (.I0(\dDataIn_reg_reg[3] [3]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[2] [7]),
        .O(\dDataOut8[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[5]_i_1 
       (.I0(\dDataOut8[5]_i_2_n_0 ),
        .I1(dAlignment_int[0]),
        .I2(dAlignment_int[1]),
        .I3(\dDataOut8[4]_i_2_n_0 ),
        .I4(\dDataOut8[3]_i_2_n_0 ),
        .I5(\dDataOut8[2]_i_2_n_0 ),
        .O(dDataOut8__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[5]_i_2 
       (.I0(\dDataIn_reg_reg[3] [4]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[3] [0]),
        .O(\dDataOut8[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[6]_i_1 
       (.I0(\dDataOut8[6]_i_2_n_0 ),
        .I1(dAlignment_int[0]),
        .I2(dAlignment_int[1]),
        .I3(\dDataOut8[5]_i_2_n_0 ),
        .I4(\dDataOut8[4]_i_2_n_0 ),
        .I5(\dDataOut8[3]_i_2_n_0 ),
        .O(dDataOut8__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[6]_i_2 
       (.I0(\dDataIn_reg_reg[3] [5]),
        .I1(dAlignment_int[2]),
        .I2(\dDataIn_reg_reg[3] [1]),
        .O(\dDataOut8[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAFFEEAAFAAAEE)) 
    \dDataOut8[7]_i_1 
       (.I0(\dDataOut8[7]_i_2_n_0 ),
        .I1(\dDataOut8[4]_i_2_n_0 ),
        .I2(\dDataOut8[5]_i_2_n_0 ),
        .I3(dAlignment_int[1]),
        .I4(dAlignment_int[0]),
        .I5(\dDataOut8[6]_i_2_n_0 ),
        .O(dDataOut8__0[7]));
  LUT5 #(
    .INIT(32'h8080C000)) 
    \dDataOut8[7]_i_2 
       (.I0(\dDataIn_reg_reg[3] [6]),
        .I1(dAlignment_int[0]),
        .I2(dAlignment_int[1]),
        .I3(\dDataIn_reg_reg[3] [2]),
        .I4(dAlignment_int[2]),
        .O(\dDataOut8[7]_i_2_n_0 ));
  FDRE \dDataOut8_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[0]),
        .Q(rbD1RxDataHS[7]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[1]),
        .Q(rbD1RxDataHS[6]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[2]),
        .Q(rbD1RxDataHS[5]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[3]),
        .Q(rbD1RxDataHS[4]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[4]),
        .Q(rbD1RxDataHS[3]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[5]),
        .Q(rbD1RxDataHS[2]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[6]),
        .Q(rbD1RxDataHS[1]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[7]),
        .Q(rbD1RxDataHS[0]),
        .R(dDataOut80));
  FDPE dLogicRst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SyncAsyncSettled_n_0),
        .PRE(dSerdesRst),
        .Q(dLogicRst));
  FDPE dSerdesRst_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(dSerdesRst),
        .Q(dSerdesRst_q));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    dSyncErr_int_i_1
       (.I0(dSyncSoft_int_i_3_n_0),
        .I1(dSyncSoft_int_i_2_n_0),
        .I2(dSyncHard_int_i_2_n_0),
        .I3(dSyncHard_int),
        .I4(dSyncErr_reg_reg),
        .O(dSyncErr_int_i_1_n_0));
  FDRE dSyncErr_int_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dSyncErr_int_i_1_n_0),
        .Q(dSyncErr_reg_reg),
        .R(dLogicRst));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    dSyncHard_int_i_1
       (.I0(dSyncHard_int_i_3_n_0),
        .I1(nextMust_reg_n_0),
        .I2(word_0[5]),
        .I3(word_0[6]),
        .I4(word_0[3]),
        .I5(word_0[4]),
        .O(dSyncHard_int));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dSyncHard_int_i_10
       (.I0(word_0[5]),
        .I1(word_0[6]),
        .O(dSyncHard_int_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dSyncHard_int_i_11
       (.I0(word),
        .I1(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncHard_int_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    dSyncHard_int_i_12
       (.I0(\dDataIn_reg_reg_n_0_[1][6] ),
        .I1(word_0[6]),
        .I2(word),
        .I3(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncHard_int_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dSyncHard_int_i_13
       (.I0(\dDataIn_reg_reg_n_0_[1][2] ),
        .I1(\dDataIn_reg_reg_n_0_[1][5] ),
        .O(dSyncHard_int_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h1)) 
    dSyncHard_int_i_14
       (.I0(\dDataIn_reg_reg_n_0_[1][3] ),
        .I1(\dDataIn_reg_reg_n_0_[1][4] ),
        .O(dSyncHard_int_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    dSyncHard_int_i_15
       (.I0(word_0[5]),
        .I1(word_0[6]),
        .I2(\dDataIn_reg_reg_n_0_[1][2] ),
        .I3(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncHard_int_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    dSyncHard_int_i_16
       (.I0(word_0[5]),
        .I1(word_0[6]),
        .I2(word_0[4]),
        .I3(word_0[0]),
        .O(dSyncHard_int_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    dSyncHard_int_i_17
       (.I0(word_0[5]),
        .I1(word_0[1]),
        .I2(word),
        .I3(word_0[6]),
        .O(dSyncHard_int_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    dSyncHard_int_i_18
       (.I0(word_0[3]),
        .I1(word_0[4]),
        .I2(word),
        .I3(word_0[2]),
        .O(dSyncHard_int_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    dSyncHard_int_i_19
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(word),
        .I2(word_0[4]),
        .I3(word_0[2]),
        .O(dSyncHard_int_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    dSyncHard_int_i_2
       (.I0(dSyncHard_int_i_4_n_0),
        .I1(dSyncHard_int_i_5_n_0),
        .I2(dSyncHard_int_i_6_n_0),
        .I3(dSyncHard_int_i_7_n_0),
        .I4(dSyncHard_int_i_8_n_0),
        .I5(dSyncHard_int_i_9_n_0),
        .O(dSyncHard_int_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h01)) 
    dSyncHard_int_i_3
       (.I0(dSyncErr_reg_reg),
        .I1(dSyncHard_reg_reg),
        .I2(dSyncSoft_reg_reg),
        .O(dSyncHard_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000F0000008800)) 
    dSyncHard_int_i_4
       (.I0(dSyncHard_int_i_10_n_0),
        .I1(dSyncHard_int_i_11_n_0),
        .I2(dSyncHard_int_i_12_n_0),
        .I3(dSyncHard_int_i_13_n_0),
        .I4(\dDataIn_reg_reg_n_0_[1][4] ),
        .I5(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(dSyncHard_int_i_4_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    dSyncHard_int_i_5
       (.I0(\dDataIn_reg_reg_n_0_[1][2] ),
        .I1(word_0[5]),
        .I2(dSyncHard_int_i_14_n_0),
        .I3(word_0[6]),
        .I4(word_0[4]),
        .I5(dSyncHard_int_i_11_n_0),
        .O(dSyncHard_int_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    dSyncHard_int_i_6
       (.I0(dSyncHard_int_i_15_n_0),
        .I1(\dDataIn_reg_reg_n_0_[1][3] ),
        .I2(word),
        .I3(word_0[4]),
        .I4(word_0[3]),
        .O(dSyncHard_int_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    dSyncHard_int_i_7
       (.I0(\dDataIn_reg_reg_n_0_[0][0] ),
        .I1(word_0[1]),
        .I2(word_0[2]),
        .I3(word_0[3]),
        .I4(dSyncHard_int_i_16_n_0),
        .O(dSyncHard_int_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    dSyncHard_int_i_8
       (.I0(word_0[3]),
        .I1(word_0[4]),
        .I2(word_0[0]),
        .I3(word_0[2]),
        .I4(dSyncHard_int_i_17_n_0),
        .O(dSyncHard_int_i_8_n_0));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    dSyncHard_int_i_9
       (.I0(dSyncHard_int_i_18_n_0),
        .I1(dSyncHard_int_i_15_n_0),
        .I2(dSyncHard_int_i_10_n_0),
        .I3(word_0[3]),
        .I4(word_0[1]),
        .I5(dSyncHard_int_i_19_n_0),
        .O(dSyncHard_int_i_9_n_0));
  FDRE dSyncHard_int_reg
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(dSyncHard_int_i_2_n_0),
        .Q(dSyncHard_reg_reg),
        .R(dLogicRst));
  LUT3 #(
    .INIT(8'h0D)) 
    dSyncSoft_int_i_1
       (.I0(dSyncSoft_int_i_2_n_0),
        .I1(dSyncSoft_int_i_3_n_0),
        .I2(dSyncHard_int_i_2_n_0),
        .O(soft5_out));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h71)) 
    dSyncSoft_int_i_10
       (.I0(word),
        .I1(\dDataIn_reg_reg_n_0_[1][1] ),
        .I2(word_0[6]),
        .O(dSyncSoft_int_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hD4D4FFD4)) 
    dSyncSoft_int_i_11
       (.I0(\dDataIn_reg_reg_n_0_[1][2] ),
        .I1(\dDataIn_reg_reg_n_0_[1][3] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .I3(\dDataIn_reg_reg_n_0_[1][5] ),
        .I4(word_0[5]),
        .O(dSyncSoft_int_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFF0DFF0D0D0D0D)) 
    dSyncSoft_int_i_12
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(word),
        .I2(\dDataIn_reg_reg_n_0_[1][2] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .I4(\dDataIn_reg_reg_n_0_[1][4] ),
        .I5(\dDataIn_reg_reg_n_0_[1][5] ),
        .O(dSyncSoft_int_i_12_n_0));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    dSyncSoft_int_i_13
       (.I0(word_0[6]),
        .I1(\dDataIn_reg_reg_n_0_[1][6] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .I4(word),
        .I5(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncSoft_int_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h96)) 
    dSyncSoft_int_i_14
       (.I0(word),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncSoft_int_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h69)) 
    dSyncSoft_int_i_15
       (.I0(\dDataIn_reg_reg_n_0_[1][3] ),
        .I1(\dDataIn_reg_reg_n_0_[1][5] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .O(dSyncSoft_int_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hF3515100)) 
    dSyncSoft_int_i_16
       (.I0(word_0[2]),
        .I1(\dDataIn_reg_reg_n_0_[1][1] ),
        .I2(word_0[1]),
        .I3(word_0[3]),
        .I4(word_0[4]),
        .O(dSyncSoft_int_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    dSyncSoft_int_i_17
       (.I0(word_0[4]),
        .I1(word_0[3]),
        .I2(word_0[5]),
        .O(dSyncSoft_int_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h96)) 
    dSyncSoft_int_i_18
       (.I0(word_0[5]),
        .I1(word_0[4]),
        .I2(word_0[3]),
        .O(dSyncSoft_int_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h5D0CFF5D)) 
    dSyncSoft_int_i_19
       (.I0(word_0[3]),
        .I1(word),
        .I2(word_0[0]),
        .I3(word_0[1]),
        .I4(word_0[2]),
        .O(dSyncSoft_int_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h01)) 
    dSyncSoft_int_i_2
       (.I0(\dAlignment_int[1]_i_3_n_0 ),
        .I1(dSyncSoft_int_i_4_n_0),
        .I2(dSyncSoft_int_i_5_n_0),
        .O(dSyncSoft_int_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h69)) 
    dSyncSoft_int_i_20
       (.I0(word_0[3]),
        .I1(word_0[1]),
        .I2(word_0[2]),
        .O(dSyncSoft_int_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dSyncSoft_int_i_21
       (.I0(word),
        .I1(word_0[0]),
        .O(dSyncSoft_int_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h2B2BFF2B)) 
    dSyncSoft_int_i_22
       (.I0(word_0[0]),
        .I1(word_0[2]),
        .I2(word_0[1]),
        .I3(word_0[6]),
        .I4(\dDataIn_reg_reg_n_0_[0][0] ),
        .O(dSyncSoft_int_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    dSyncSoft_int_i_23
       (.I0(word_0[0]),
        .I1(word_0[1]),
        .I2(word_0[2]),
        .O(dSyncSoft_int_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dSyncSoft_int_i_24
       (.I0(word_0[6]),
        .I1(\dDataIn_reg_reg_n_0_[0][0] ),
        .O(dSyncSoft_int_i_24_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    dSyncSoft_int_i_3
       (.I0(\dAlignment_int[2]_i_3_n_0 ),
        .I1(dSyncSoft_int_i_6_n_0),
        .I2(dSyncSoft_int_i_7_n_0),
        .I3(dSyncSoft_int_i_8_n_0),
        .I4(dSyncSoft_int_i_9_n_0),
        .O(dSyncSoft_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000002055)) 
    dSyncSoft_int_i_4
       (.I0(\dAlignment_int[1]_i_13_n_0 ),
        .I1(\dDataIn_reg_reg_n_0_[1][5] ),
        .I2(word_0[5]),
        .I3(\dAlignment_int[1]_i_12_n_0 ),
        .I4(dSyncSoft_int_i_10_n_0),
        .I5(dSyncSoft_int_i_11_n_0),
        .O(dSyncSoft_int_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000001000101101)) 
    dSyncSoft_int_i_5
       (.I0(dSyncSoft_int_i_12_n_0),
        .I1(dSyncSoft_int_i_13_n_0),
        .I2(word_0[6]),
        .I3(\dDataIn_reg_reg_n_0_[1][6] ),
        .I4(dSyncSoft_int_i_14_n_0),
        .I5(dSyncSoft_int_i_15_n_0),
        .O(dSyncSoft_int_i_5_n_0));
  LUT6 #(
    .INIT(64'hFDFFD7FDFFFFFDFF)) 
    dSyncSoft_int_i_6
       (.I0(dSyncSoft_int_i_16_n_0),
        .I1(\dAlignment_int[0]_i_9_n_0 ),
        .I2(word_0[6]),
        .I3(word_0[5]),
        .I4(word),
        .I5(\dAlignment_int[1]_i_6_n_0 ),
        .O(dSyncSoft_int_i_6_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF7FF7FF7F)) 
    dSyncSoft_int_i_7
       (.I0(dSyncSoft_int_i_17_n_0),
        .I1(dSyncSoft_int_i_10_n_0),
        .I2(\dAlignment_int[1]_i_12_n_0 ),
        .I3(\dDataIn_reg_reg_n_0_[1][2] ),
        .I4(word_0[2]),
        .I5(dSyncSoft_int_i_18_n_0),
        .O(dSyncSoft_int_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFBFBBEFFFFFFFB)) 
    dSyncSoft_int_i_8
       (.I0(dSyncSoft_int_i_19_n_0),
        .I1(dSyncSoft_int_i_20_n_0),
        .I2(dSyncSoft_int_i_21_n_0),
        .I3(word_0[6]),
        .I4(word_0[5]),
        .I5(word_0[4]),
        .O(dSyncSoft_int_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFEFEFBE)) 
    dSyncSoft_int_i_9
       (.I0(dSyncSoft_int_i_22_n_0),
        .I1(dSyncSoft_int_i_23_n_0),
        .I2(word_0[3]),
        .I3(word_0[4]),
        .I4(word_0[5]),
        .I5(dSyncSoft_int_i_24_n_0),
        .O(dSyncSoft_int_i_9_n_0));
  FDRE dSyncSoft_int_reg
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(soft5_out),
        .Q(dSyncSoft_reg_reg),
        .R(dLogicRst));
  FDRE dValid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\dValid_reg_reg_n_0_[3] ),
        .Q(rbD1RxValidHS),
        .R(dDataOut80));
  LUT6 #(
    .INIT(64'h0EEEEEEEEEEEEEEE)) 
    \dValid_reg[2]_i_1 
       (.I0(dSyncHard_reg_reg),
        .I1(dSyncSoft_reg_reg),
        .I2(\dLP[0]_0 [0]),
        .I3(\dLP[1]_1 [0]),
        .I4(\dLP[0]_0 [1]),
        .I5(\dLP[1]_1 [1]),
        .O(p_3_out));
  FDRE \dValid_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_3_out),
        .Q(p_2_in),
        .R(dLogicRst));
  FDRE \dValid_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in),
        .Q(\dValid_reg_reg_n_0_[3] ),
        .R(dLogicRst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    nextMust_i_1
       (.I0(word_0[1]),
        .I1(word_0[2]),
        .I2(word_0[0]),
        .I3(\dDataIn_reg_reg_n_0_[0][0] ),
        .I4(dSyncHard_int_i_3_n_0),
        .I5(nextMust_reg_n_0),
        .O(nextMust_i_1_n_0));
  FDRE nextMust_reg
       (.C(CLK),
        .CE(1'b1),
        .D(nextMust_i_1_n_0),
        .Q(nextMust_reg_n_0),
        .R(dLogicRst));
  LUT2 #(
    .INIT(4'h2)) 
    rbD1ErrSotHS_INST_0
       (.I0(dSyncErr_reg_reg),
        .I1(dSyncErr_reg),
        .O(rbD1ErrSotHS));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rbD1ErrSotSyncHS_INST_0
       (.I0(dSyncSoft_reg_reg),
        .I1(dSyncSoft_reg),
        .O(rbD1ErrSotSyncHS));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rbD1RxActiveHS_INST_0
       (.I0(dSyncSoft_reg_reg),
        .I1(dSyncHard_reg_reg),
        .O(rbD1RxActiveHS));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    rbD1RxSyncHS_INST_0
       (.I0(dSyncSoft_reg),
        .I1(dSyncSoft_reg_reg),
        .I2(dSyncHard_reg),
        .I3(dSyncHard_reg_reg),
        .O(rbD1RxSyncHS));
endmodule

(* ORIG_REF_NAME = "HS_Deserializer" *) 
module design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer_13
   (aLP_int,
    dSyncHard_reg_reg,
    dSyncSoft_reg_reg,
    rbD0RxValidHS,
    dSyncErr_reg_reg,
    rbD0RxDataHS,
    rbD0RxActiveHS,
    rbD0RxSyncHS,
    rbD0ErrSotSyncHS,
    rbD0ErrSotHS,
    RefClk,
    aHS,
    dphy_clk_hs_n,
    CLKB,
    CLK,
    aLP,
    cHSSettled_reg,
    AS,
    dSyncSoft_reg,
    dSyncHard_reg,
    dSyncErr_reg);
  output [1:0]aLP_int;
  output dSyncHard_reg_reg;
  output dSyncSoft_reg_reg;
  output rbD0RxValidHS;
  output dSyncErr_reg_reg;
  output [7:0]rbD0RxDataHS;
  output rbD0RxActiveHS;
  output rbD0RxSyncHS;
  output rbD0ErrSotSyncHS;
  output rbD0ErrSotHS;
  input RefClk;
  input aHS;
  input dphy_clk_hs_n;
  input CLKB;
  input CLK;
  input [1:0]aLP;
  input cHSSettled_reg;
  input [0:0]AS;
  input dSyncSoft_reg;
  input dSyncHard_reg;
  input dSyncErr_reg;

  wire [0:0]AS;
  wire CLK;
  wire CLKB;
  wire DataInDly;
  wire InputDelay_n_1;
  wire InputDelay_n_2;
  wire InputDelay_n_3;
  wire InputDelay_n_4;
  wire InputDelay_n_5;
  wire RefClk;
  wire SyncAsyncSettled_n_0;
  wire aHS;
  wire [1:0]aLP;
  wire [1:0]aLP_int;
  wire \alignment[0]_i_1_n_0 ;
  wire \alignment[1]_i_1_n_0 ;
  wire \alignment[2]_i_1_n_0 ;
  wire [2:0]alignment_out;
  wire \alignment_reg_n_0_[0] ;
  wire \alignment_reg_n_0_[1] ;
  wire \alignment_reg_n_0_[2] ;
  wire cHSSettled_reg;
  wire \dAlignment_int[0]_i_10__0_n_0 ;
  wire \dAlignment_int[0]_i_11__0_n_0 ;
  wire \dAlignment_int[0]_i_12__0_n_0 ;
  wire \dAlignment_int[0]_i_13__0_n_0 ;
  wire \dAlignment_int[0]_i_14__0_n_0 ;
  wire \dAlignment_int[0]_i_15__0_n_0 ;
  wire \dAlignment_int[0]_i_16__0_n_0 ;
  wire \dAlignment_int[0]_i_17__0_n_0 ;
  wire \dAlignment_int[0]_i_18__0_n_0 ;
  wire \dAlignment_int[0]_i_2__0_n_0 ;
  wire \dAlignment_int[0]_i_3__0_n_0 ;
  wire \dAlignment_int[0]_i_4__0_n_0 ;
  wire \dAlignment_int[0]_i_5__0_n_0 ;
  wire \dAlignment_int[0]_i_6__0_n_0 ;
  wire \dAlignment_int[0]_i_7__0_n_0 ;
  wire \dAlignment_int[0]_i_8__0_n_0 ;
  wire \dAlignment_int[0]_i_9__0_n_0 ;
  wire \dAlignment_int[1]_i_10__0_n_0 ;
  wire \dAlignment_int[1]_i_11__0_n_0 ;
  wire \dAlignment_int[1]_i_12__0_n_0 ;
  wire \dAlignment_int[1]_i_13__0_n_0 ;
  wire \dAlignment_int[1]_i_14__0_n_0 ;
  wire \dAlignment_int[1]_i_15__0_n_0 ;
  wire \dAlignment_int[1]_i_16__0_n_0 ;
  wire \dAlignment_int[1]_i_17__0_n_0 ;
  wire \dAlignment_int[1]_i_18__0_n_0 ;
  wire \dAlignment_int[1]_i_2__0_n_0 ;
  wire \dAlignment_int[1]_i_3__0_n_0 ;
  wire \dAlignment_int[1]_i_4__0_n_0 ;
  wire \dAlignment_int[1]_i_5__0_n_0 ;
  wire \dAlignment_int[1]_i_6__0_n_0 ;
  wire \dAlignment_int[1]_i_7__0_n_0 ;
  wire \dAlignment_int[1]_i_8__0_n_0 ;
  wire \dAlignment_int[1]_i_9__0_n_0 ;
  wire \dAlignment_int[2]_i_2__0_n_0 ;
  wire \dAlignment_int[2]_i_3__0_n_0 ;
  wire \dAlignment_int[2]_i_4__0_n_0 ;
  wire \dAlignment_int[2]_i_5__0_n_0 ;
  wire \dAlignment_int[2]_i_6__0_n_0 ;
  wire \dAlignment_int_reg_n_0_[0] ;
  wire \dAlignment_int_reg_n_0_[1] ;
  wire \dAlignment_int_reg_n_0_[2] ;
  wire [7:0]dDataIn_int;
  wire \dDataIn_reg_reg_n_0_[0][0] ;
  wire \dDataIn_reg_reg_n_0_[1][0] ;
  wire \dDataIn_reg_reg_n_0_[1][1] ;
  wire \dDataIn_reg_reg_n_0_[1][2] ;
  wire \dDataIn_reg_reg_n_0_[1][3] ;
  wire \dDataIn_reg_reg_n_0_[1][4] ;
  wire \dDataIn_reg_reg_n_0_[1][5] ;
  wire \dDataIn_reg_reg_n_0_[1][6] ;
  wire \dDataIn_reg_reg_n_0_[1][7] ;
  wire \dDataIn_reg_reg_n_0_[2][0] ;
  wire \dDataIn_reg_reg_n_0_[2][1] ;
  wire \dDataIn_reg_reg_n_0_[2][2] ;
  wire \dDataIn_reg_reg_n_0_[2][3] ;
  wire \dDataIn_reg_reg_n_0_[2][4] ;
  wire \dDataIn_reg_reg_n_0_[2][5] ;
  wire \dDataIn_reg_reg_n_0_[2][6] ;
  wire \dDataIn_reg_reg_n_0_[2][7] ;
  wire \dDataIn_reg_reg_n_0_[3][0] ;
  wire \dDataIn_reg_reg_n_0_[3][1] ;
  wire \dDataIn_reg_reg_n_0_[3][2] ;
  wire \dDataIn_reg_reg_n_0_[3][3] ;
  wire \dDataIn_reg_reg_n_0_[3][4] ;
  wire \dDataIn_reg_reg_n_0_[3][5] ;
  wire \dDataIn_reg_reg_n_0_[3][6] ;
  wire dDataOut80;
  wire \dDataOut8[0]_i_3_n_0 ;
  wire \dDataOut8[0]_i_4_n_0 ;
  wire \dDataOut8[0]_i_5_n_0 ;
  wire \dDataOut8[0]_i_6_n_0 ;
  wire \dDataOut8[1]_i_2_n_0 ;
  wire \dDataOut8[2]_i_2_n_0 ;
  wire \dDataOut8[3]_i_2_n_0 ;
  wire \dDataOut8[4]_i_2_n_0 ;
  wire \dDataOut8[5]_i_2_n_0 ;
  wire \dDataOut8[6]_i_2_n_0 ;
  wire \dDataOut8[7]_i_2_n_0 ;
  wire [7:0]dDataOut8__0;
  (* DONT_TOUCH *) wire [7:0]\dLP[0]_0 ;
  (* DONT_TOUCH *) wire [7:0]\dLP[1]_1 ;
  wire dLogicRst;
  wire dSerdesRst;
  wire dSerdesRst_q;
  wire dSyncErr_int_i_1__0_n_0;
  wire dSyncErr_reg;
  wire dSyncErr_reg_reg;
  wire dSyncHard_int;
  wire dSyncHard_int_i_10__0_n_0;
  wire dSyncHard_int_i_11__0_n_0;
  wire dSyncHard_int_i_12__0_n_0;
  wire dSyncHard_int_i_13__0_n_0;
  wire dSyncHard_int_i_14__0_n_0;
  wire dSyncHard_int_i_15__0_n_0;
  wire dSyncHard_int_i_16__0_n_0;
  wire dSyncHard_int_i_17__0_n_0;
  wire dSyncHard_int_i_18__0_n_0;
  wire dSyncHard_int_i_19__0_n_0;
  wire dSyncHard_int_i_2__0_n_0;
  wire dSyncHard_int_i_3__0_n_0;
  wire dSyncHard_int_i_4__0_n_0;
  wire dSyncHard_int_i_5__0_n_0;
  wire dSyncHard_int_i_6__0_n_0;
  wire dSyncHard_int_i_7__0_n_0;
  wire dSyncHard_int_i_8__0_n_0;
  wire dSyncHard_int_i_9__0_n_0;
  wire dSyncHard_reg;
  wire dSyncHard_reg_reg;
  wire dSyncSoft_int_i_10__0_n_0;
  wire dSyncSoft_int_i_11__0_n_0;
  wire dSyncSoft_int_i_12__0_n_0;
  wire dSyncSoft_int_i_13__0_n_0;
  wire dSyncSoft_int_i_14__0_n_0;
  wire dSyncSoft_int_i_15__0_n_0;
  wire dSyncSoft_int_i_16__0_n_0;
  wire dSyncSoft_int_i_17__0_n_0;
  wire dSyncSoft_int_i_18__0_n_0;
  wire dSyncSoft_int_i_19__0_n_0;
  wire dSyncSoft_int_i_20__0_n_0;
  wire dSyncSoft_int_i_21__0_n_0;
  wire dSyncSoft_int_i_22__0_n_0;
  wire dSyncSoft_int_i_23__0_n_0;
  wire dSyncSoft_int_i_24__0_n_0;
  wire dSyncSoft_int_i_2__0_n_0;
  wire dSyncSoft_int_i_3__0_n_0;
  wire dSyncSoft_int_i_4__0_n_0;
  wire dSyncSoft_int_i_5__0_n_0;
  wire dSyncSoft_int_i_6__0_n_0;
  wire dSyncSoft_int_i_7__0_n_0;
  wire dSyncSoft_int_i_8__0_n_0;
  wire dSyncSoft_int_i_9__0_n_0;
  wire dSyncSoft_reg;
  wire dSyncSoft_reg_reg;
  wire \dValid_reg_reg_n_0_[3] ;
  wire dphy_clk_hs_n;
  wire nextMust_i_1__0_n_0;
  wire nextMust_reg_n_0;
  wire p_2_in;
  wire [1:1]p_3_out;
  wire rbD0ErrSotHS;
  wire rbD0ErrSotSyncHS;
  wire rbD0RxActiveHS;
  wire [7:0]rbD0RxDataHS;
  wire rbD0RxSyncHS;
  wire rbD0RxValidHS;
  wire soft5_out;
  wire [6:0]word;
  wire NLW_Deserializer_O_UNCONNECTED;
  wire NLW_Deserializer_SHIFTOUT1_UNCONNECTED;
  wire NLW_Deserializer_SHIFTOUT2_UNCONNECTED;
  wire \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    Deserializer
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(dphy_clk_hs_n),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(DataInDly),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_Deserializer_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(dDataIn_int[0]),
        .Q2(dDataIn_int[1]),
        .Q3(dDataIn_int[2]),
        .Q4(dDataIn_int[3]),
        .Q5(dDataIn_int[4]),
        .Q6(dDataIn_int[5]),
        .Q7(dDataIn_int[6]),
        .Q8(dDataIn_int[7]),
        .RST(dSerdesRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_Deserializer_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_Deserializer_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VARIABLE"),
    .IDELAY_VALUE(12),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    InputDelay
       (.C(RefClk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({InputDelay_n_1,InputDelay_n_2,InputDelay_n_3,InputDelay_n_4,InputDelay_n_5}),
        .DATAIN(1'b0),
        .DATAOUT(DataInDly),
        .IDATAIN(aHS),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  design_1_MIPI_D_PHY_RX_0_0_ResetBridge_23 SerdesReset
       (.AS(AS),
        .CLK(CLK),
        .out(dSerdesRst));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1_24 SyncAsyncSettled
       (.CLK(CLK),
        .Q(\dValid_reg_reg_n_0_[3] ),
        .cHSSettled_reg(cHSSettled_reg),
        .dLogicRst(dLogicRst),
        .dLogicRst_reg(SyncAsyncSettled_n_0),
        .dSerdesRst_q(dSerdesRst_q));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b1),
    .INIT_Q2(1'b1),
    .INIT_Q3(1'b1),
    .INIT_Q4(1'b1),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b1),
    .SRVAL_Q2(1'b1),
    .SRVAL_Q3(1'b1),
    .SRVAL_Q4(1'b1)) 
    \UseOwnLP.LPxx[0].LP_DeserializerX 
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(dphy_clk_hs_n),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(aLP[0]),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(aLP_int[0]),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(\dLP[0]_0 [0]),
        .Q2(\dLP[0]_0 [1]),
        .Q3(\dLP[0]_0 [2]),
        .Q4(\dLP[0]_0 [3]),
        .Q5(\dLP[0]_0 [4]),
        .Q6(\dLP[0]_0 [5]),
        .Q7(\dLP[0]_0 [6]),
        .Q8(\dLP[0]_0 [7]),
        .RST(dSerdesRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED ));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b1),
    .INIT_Q2(1'b1),
    .INIT_Q3(1'b1),
    .INIT_Q4(1'b1),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b1),
    .SRVAL_Q2(1'b1),
    .SRVAL_Q3(1'b1),
    .SRVAL_Q4(1'b1)) 
    \UseOwnLP.LPxx[1].LP_DeserializerX 
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(dphy_clk_hs_n),
        .CLKB(CLKB),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(aLP[1]),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(aLP_int[1]),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(\dLP[1]_1 [0]),
        .Q2(\dLP[1]_1 [1]),
        .Q3(\dLP[1]_1 [2]),
        .Q4(\dLP[1]_1 [3]),
        .Q5(\dLP[1]_1 [4]),
        .Q6(\dLP[1]_1 [5]),
        .Q7(\dLP[1]_1 [6]),
        .Q8(\dLP[1]_1 [7]),
        .RST(dSerdesRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \alignment[0]_i_1 
       (.I0(alignment_out[0]),
        .I1(dSyncHard_int),
        .I2(dLogicRst),
        .I3(\alignment_reg_n_0_[0] ),
        .O(\alignment[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \alignment[1]_i_1 
       (.I0(alignment_out[1]),
        .I1(dSyncHard_int),
        .I2(dLogicRst),
        .I3(\alignment_reg_n_0_[1] ),
        .O(\alignment[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \alignment[2]_i_1 
       (.I0(alignment_out[2]),
        .I1(dSyncHard_int),
        .I2(dLogicRst),
        .I3(\alignment_reg_n_0_[2] ),
        .O(\alignment[2]_i_1_n_0 ));
  FDRE \alignment_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\alignment[0]_i_1_n_0 ),
        .Q(\alignment_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \alignment_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\alignment[1]_i_1_n_0 ),
        .Q(\alignment_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \alignment_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\alignment[2]_i_1_n_0 ),
        .Q(\alignment_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00E0EEEE)) 
    \dAlignment_int[0]_i_10__0 
       (.I0(dSyncHard_int_i_17__0_n_0),
        .I1(\dAlignment_int[1]_i_18__0_n_0 ),
        .I2(\dAlignment_int[1]_i_17__0_n_0 ),
        .I3(dSyncHard_int_i_16__0_n_0),
        .I4(\alignment_reg_n_0_[0] ),
        .O(\dAlignment_int[0]_i_10__0_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF2222)) 
    \dAlignment_int[0]_i_11__0 
       (.I0(dSyncHard_int_i_19__0_n_0),
        .I1(\dAlignment_int[0]_i_17__0_n_0 ),
        .I2(dSyncHard_int_i_18__0_n_0),
        .I3(\dAlignment_int[0]_i_18__0_n_0 ),
        .I4(dSyncHard_int_i_15__0_n_0),
        .O(\dAlignment_int[0]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \dAlignment_int[0]_i_12__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][5] ),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(\dAlignment_int[0]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \dAlignment_int[0]_i_13__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(\dDataIn_reg_reg_n_0_[1][0] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(\dAlignment_int[0]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \dAlignment_int[0]_i_14__0 
       (.I0(word[6]),
        .I1(word[5]),
        .I2(\dDataIn_reg_reg_n_0_[1][5] ),
        .I3(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[0]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \dAlignment_int[0]_i_15__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][4] ),
        .I1(\dDataIn_reg_reg_n_0_[1][3] ),
        .I2(word[5]),
        .I3(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[0]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \dAlignment_int[0]_i_16__0 
       (.I0(word[6]),
        .I1(word[5]),
        .I2(word[4]),
        .I3(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[0]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \dAlignment_int[0]_i_17__0 
       (.I0(word[6]),
        .I1(word[5]),
        .I2(word[3]),
        .I3(word[1]),
        .O(\dAlignment_int[0]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \dAlignment_int[0]_i_18__0 
       (.I0(word[3]),
        .I1(word[4]),
        .I2(\dDataIn_reg_reg_n_0_[1][0] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(\dAlignment_int[0]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'h4447444477777777)) 
    \dAlignment_int[0]_i_1__0 
       (.I0(\dAlignment_int[0]_i_2__0_n_0 ),
        .I1(dSyncHard_int_i_2__0_n_0),
        .I2(\dAlignment_int[0]_i_3__0_n_0 ),
        .I3(\dAlignment_int[0]_i_4__0_n_0 ),
        .I4(dSyncSoft_int_i_2__0_n_0),
        .I5(\dAlignment_int[0]_i_5__0_n_0 ),
        .O(alignment_out[0]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF2)) 
    \dAlignment_int[0]_i_2__0 
       (.I0(dSyncHard_int_i_8__0_n_0),
        .I1(\dAlignment_int[0]_i_6__0_n_0 ),
        .I2(\dAlignment_int[0]_i_7__0_n_0 ),
        .I3(dSyncHard_int_i_6__0_n_0),
        .I4(dSyncHard_int_i_9__0_n_0),
        .I5(\dAlignment_int[0]_i_8__0_n_0 ),
        .O(\dAlignment_int[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h75575755FFFFFFFF)) 
    \dAlignment_int[0]_i_3__0 
       (.I0(dSyncSoft_int_i_7__0_n_0),
        .I1(\dAlignment_int[1]_i_8__0_n_0 ),
        .I2(\dAlignment_int[0]_i_9__0_n_0 ),
        .I3(\dAlignment_int[1]_i_7__0_n_0 ),
        .I4(\dAlignment_int[1]_i_6__0_n_0 ),
        .I5(\dAlignment_int[2]_i_3__0_n_0 ),
        .O(\dAlignment_int[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA8AAAAAAAA)) 
    \dAlignment_int[0]_i_4__0 
       (.I0(dSyncSoft_int_i_8__0_n_0),
        .I1(\dAlignment_int[0]_i_10__0_n_0 ),
        .I2(\dAlignment_int[0]_i_7__0_n_0 ),
        .I3(\dAlignment_int[0]_i_11__0_n_0 ),
        .I4(\dAlignment_int[0]_i_8__0_n_0 ),
        .I5(dSyncSoft_int_i_9__0_n_0),
        .O(\dAlignment_int[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \dAlignment_int[0]_i_5__0 
       (.I0(dSyncSoft_int_i_4__0_n_0),
        .I1(dSyncSoft_int_i_7__0_n_0),
        .I2(dSyncSoft_int_i_5__0_n_0),
        .I3(\dAlignment_int[1]_i_3__0_n_0 ),
        .O(\dAlignment_int[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \dAlignment_int[0]_i_6__0 
       (.I0(\alignment_reg_n_0_[0] ),
        .I1(dSyncHard_int_i_16__0_n_0),
        .I2(word[3]),
        .I3(word[2]),
        .I4(word[1]),
        .I5(\dDataIn_reg_reg_n_0_[0][0] ),
        .O(\dAlignment_int[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \dAlignment_int[0]_i_7__0 
       (.I0(\dAlignment_int[0]_i_12__0_n_0 ),
        .I1(dSyncHard_int_i_12__0_n_0),
        .I2(\dAlignment_int[0]_i_13__0_n_0 ),
        .I3(\dAlignment_int[0]_i_14__0_n_0 ),
        .I4(\dAlignment_int[2]_i_4__0_n_0 ),
        .I5(\dAlignment_int[0]_i_15__0_n_0 ),
        .O(\dAlignment_int[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \dAlignment_int[0]_i_8__0 
       (.I0(dSyncHard_int_i_18__0_n_0),
        .I1(dSyncHard_int_i_15__0_n_0),
        .I2(\dAlignment_int[0]_i_13__0_n_0 ),
        .I3(\dAlignment_int[0]_i_16__0_n_0 ),
        .I4(\dAlignment_int[0]_i_12__0_n_0 ),
        .I5(dSyncHard_int_i_12__0_n_0),
        .O(\dAlignment_int[0]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dAlignment_int[0]_i_9__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(word[1]),
        .O(\dAlignment_int[0]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dAlignment_int[1]_i_10__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][3] ),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(\dAlignment_int[1]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFBABABAFFFFFFBA)) 
    \dAlignment_int[1]_i_11__0 
       (.I0(dSyncSoft_int_i_10__0_n_0),
        .I1(word[5]),
        .I2(\dDataIn_reg_reg_n_0_[1][5] ),
        .I3(\dDataIn_reg_reg_n_0_[1][4] ),
        .I4(\dDataIn_reg_reg_n_0_[1][3] ),
        .I5(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[1]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dAlignment_int[1]_i_12__0 
       (.I0(word[6]),
        .I1(\dDataIn_reg_reg_n_0_[1][1] ),
        .I2(\dDataIn_reg_reg_n_0_[1][0] ),
        .O(\dAlignment_int[1]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \dAlignment_int[1]_i_13__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][4] ),
        .I1(\dDataIn_reg_reg_n_0_[1][3] ),
        .I2(word[5]),
        .I3(\dDataIn_reg_reg_n_0_[1][5] ),
        .I4(\dDataIn_reg_reg_n_0_[1][2] ),
        .O(\dAlignment_int[1]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'h010001000100FFFF)) 
    \dAlignment_int[1]_i_14__0 
       (.I0(\dAlignment_int[1]_i_16__0_n_0 ),
        .I1(word[4]),
        .I2(word[0]),
        .I3(\dAlignment_int[1]_i_17__0_n_0 ),
        .I4(dSyncHard_int_i_17__0_n_0),
        .I5(\dAlignment_int[1]_i_18__0_n_0 ),
        .O(\dAlignment_int[1]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \dAlignment_int[1]_i_15__0 
       (.I0(word[5]),
        .I1(word[6]),
        .I2(\dDataIn_reg_reg_n_0_[1][0] ),
        .O(\dAlignment_int[1]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dAlignment_int[1]_i_16__0 
       (.I0(word[6]),
        .I1(word[5]),
        .O(\dAlignment_int[1]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \dAlignment_int[1]_i_17__0 
       (.I0(word[3]),
        .I1(word[2]),
        .I2(word[1]),
        .I3(\dDataIn_reg_reg_n_0_[0][0] ),
        .O(\dAlignment_int[1]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \dAlignment_int[1]_i_18__0 
       (.I0(word[2]),
        .I1(word[0]),
        .I2(word[4]),
        .I3(word[3]),
        .O(\dAlignment_int[1]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F30000F2F2)) 
    \dAlignment_int[1]_i_1__0 
       (.I0(\dAlignment_int[1]_i_2__0_n_0 ),
        .I1(\dAlignment_int[1]_i_3__0_n_0 ),
        .I2(\dAlignment_int[1]_i_4__0_n_0 ),
        .I3(dSyncSoft_int_i_3__0_n_0),
        .I4(dSyncHard_int_i_2__0_n_0),
        .I5(\dAlignment_int[1]_i_5__0_n_0 ),
        .O(alignment_out[1]));
  LUT6 #(
    .INIT(64'h00008688FFFFFFFF)) 
    \dAlignment_int[1]_i_2__0 
       (.I0(\dAlignment_int[1]_i_6__0_n_0 ),
        .I1(\dAlignment_int[1]_i_7__0_n_0 ),
        .I2(\dDataIn_reg_reg_n_0_[1][1] ),
        .I3(word[1]),
        .I4(\dAlignment_int[1]_i_8__0_n_0 ),
        .I5(dSyncSoft_int_i_7__0_n_0),
        .O(\dAlignment_int[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00020029)) 
    \dAlignment_int[1]_i_3__0 
       (.I0(word[4]),
        .I1(\dDataIn_reg_reg_n_0_[1][4] ),
        .I2(\dAlignment_int[1]_i_7__0_n_0 ),
        .I3(\dAlignment_int[1]_i_9__0_n_0 ),
        .I4(\dAlignment_int[1]_i_10__0_n_0 ),
        .O(\dAlignment_int[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAABABABAB)) 
    \dAlignment_int[1]_i_4__0 
       (.I0(dSyncSoft_int_i_5__0_n_0),
        .I1(\dAlignment_int[1]_i_11__0_n_0 ),
        .I2(\dAlignment_int[1]_i_12__0_n_0 ),
        .I3(word[5]),
        .I4(\dDataIn_reg_reg_n_0_[1][5] ),
        .I5(\dAlignment_int[1]_i_13__0_n_0 ),
        .O(\dAlignment_int[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0100)) 
    \dAlignment_int[1]_i_5__0 
       (.I0(dSyncHard_int_i_5__0_n_0),
        .I1(dSyncHard_int_i_6__0_n_0),
        .I2(\dAlignment_int[1]_i_14__0_n_0 ),
        .I3(\alignment_reg_n_0_[1] ),
        .I4(dSyncHard_int_i_4__0_n_0),
        .I5(dSyncHard_int_i_9__0_n_0),
        .O(\dAlignment_int[1]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dAlignment_int[1]_i_6__0 
       (.I0(word[2]),
        .I1(word[4]),
        .I2(word[3]),
        .O(\dAlignment_int[1]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dAlignment_int[1]_i_7__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][0] ),
        .I1(word[5]),
        .I2(word[6]),
        .O(\dAlignment_int[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7F7F57FF5757)) 
    \dAlignment_int[1]_i_8__0 
       (.I0(\dAlignment_int[1]_i_15__0_n_0 ),
        .I1(word[4]),
        .I2(word[3]),
        .I3(word[1]),
        .I4(\dDataIn_reg_reg_n_0_[1][1] ),
        .I5(word[2]),
        .O(\dAlignment_int[1]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF717171FFFFFF71)) 
    \dAlignment_int[1]_i_9__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][0] ),
        .I1(word[6]),
        .I2(word[5]),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .I4(\dDataIn_reg_reg_n_0_[1][2] ),
        .I5(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(\dAlignment_int[1]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFFBFBF)) 
    \dAlignment_int[2]_i_1__0 
       (.I0(\dAlignment_int[2]_i_2__0_n_0 ),
        .I1(dSyncSoft_int_i_2__0_n_0),
        .I2(\dAlignment_int[2]_i_3__0_n_0 ),
        .I3(dSyncSoft_int_i_3__0_n_0),
        .I4(\alignment_reg_n_0_[2] ),
        .I5(dSyncHard_int_i_2__0_n_0),
        .O(alignment_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAABAA)) 
    \dAlignment_int[2]_i_2__0 
       (.I0(dSyncHard_int_i_6__0_n_0),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(word[5]),
        .I3(dSyncHard_int_i_14__0_n_0),
        .I4(\dAlignment_int[2]_i_4__0_n_0 ),
        .I5(dSyncHard_int_i_4__0_n_0),
        .O(\dAlignment_int[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hBFEB)) 
    \dAlignment_int[2]_i_3__0 
       (.I0(\dAlignment_int[2]_i_5__0_n_0 ),
        .I1(\dAlignment_int[2]_i_6__0_n_0 ),
        .I2(word[3]),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(\dAlignment_int[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \dAlignment_int[2]_i_4__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(\dDataIn_reg_reg_n_0_[1][0] ),
        .I2(word[4]),
        .I3(word[6]),
        .O(\dAlignment_int[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFBB2FFFBFFFBFFFF)) 
    \dAlignment_int[2]_i_5__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(\dDataIn_reg_reg_n_0_[1][0] ),
        .I2(\dDataIn_reg_reg_n_0_[1][2] ),
        .I3(word[4]),
        .I4(word[6]),
        .I5(word[5]),
        .O(\dAlignment_int[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0096960096000096)) 
    \dAlignment_int[2]_i_6__0 
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(\dDataIn_reg_reg_n_0_[1][0] ),
        .I3(word[6]),
        .I4(word[5]),
        .I5(word[4]),
        .O(\dAlignment_int[2]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dAlignment_int_reg[0] 
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(alignment_out[0]),
        .Q(\dAlignment_int_reg_n_0_[0] ),
        .R(dLogicRst));
  FDRE #(
    .INIT(1'b0)) 
    \dAlignment_int_reg[1] 
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(alignment_out[1]),
        .Q(\dAlignment_int_reg_n_0_[1] ),
        .R(dLogicRst));
  FDRE #(
    .INIT(1'b0)) 
    \dAlignment_int_reg[2] 
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(alignment_out[2]),
        .Q(\dAlignment_int_reg_n_0_[2] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[0]),
        .Q(\dDataIn_reg_reg_n_0_[0][0] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[1]),
        .Q(word[0]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[2]),
        .Q(word[1]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[3]),
        .Q(word[2]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[4]),
        .Q(word[3]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[5]),
        .Q(word[4]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[6]),
        .Q(word[5]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[0][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataIn_int[7]),
        .Q(word[6]),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[0][0] ),
        .Q(\dDataIn_reg_reg_n_0_[1][0] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(word[0]),
        .Q(\dDataIn_reg_reg_n_0_[1][1] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(word[1]),
        .Q(\dDataIn_reg_reg_n_0_[1][2] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(word[2]),
        .Q(\dDataIn_reg_reg_n_0_[1][3] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(word[3]),
        .Q(\dDataIn_reg_reg_n_0_[1][4] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(word[4]),
        .Q(\dDataIn_reg_reg_n_0_[1][5] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(word[5]),
        .Q(\dDataIn_reg_reg_n_0_[1][6] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[1][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(word[6]),
        .Q(\dDataIn_reg_reg_n_0_[1][7] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][0] ),
        .Q(\dDataIn_reg_reg_n_0_[2][0] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][1] ),
        .Q(\dDataIn_reg_reg_n_0_[2][1] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][2] ),
        .Q(\dDataIn_reg_reg_n_0_[2][2] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][3] ),
        .Q(\dDataIn_reg_reg_n_0_[2][3] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][4] ),
        .Q(\dDataIn_reg_reg_n_0_[2][4] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][5] ),
        .Q(\dDataIn_reg_reg_n_0_[2][5] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][6] ),
        .Q(\dDataIn_reg_reg_n_0_[2][6] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[2][7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[1][7] ),
        .Q(\dDataIn_reg_reg_n_0_[2][7] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[2][0] ),
        .Q(\dDataIn_reg_reg_n_0_[3][0] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[2][1] ),
        .Q(\dDataIn_reg_reg_n_0_[3][1] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[2][2] ),
        .Q(\dDataIn_reg_reg_n_0_[3][2] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[2][3] ),
        .Q(\dDataIn_reg_reg_n_0_[3][3] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[2][4] ),
        .Q(\dDataIn_reg_reg_n_0_[3][4] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[2][5] ),
        .Q(\dDataIn_reg_reg_n_0_[3][5] ),
        .R(dLogicRst));
  FDRE \dDataIn_reg_reg[3][6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dDataIn_reg_reg_n_0_[2][6] ),
        .Q(\dDataIn_reg_reg_n_0_[3][6] ),
        .R(dLogicRst));
  LUT2 #(
    .INIT(4'hB)) 
    \dDataOut8[0]_i_1__0 
       (.I0(dLogicRst),
        .I1(\dValid_reg_reg_n_0_[3] ),
        .O(dDataOut80));
  LUT6 #(
    .INIT(64'hFAEEFFAAFAEEAAAA)) 
    \dDataOut8[0]_i_2 
       (.I0(\dDataOut8[0]_i_3_n_0 ),
        .I1(\dDataOut8[0]_i_4_n_0 ),
        .I2(\dDataOut8[0]_i_5_n_0 ),
        .I3(\dAlignment_int_reg_n_0_[0] ),
        .I4(\dAlignment_int_reg_n_0_[1] ),
        .I5(\dDataOut8[0]_i_6_n_0 ),
        .O(dDataOut8__0[0]));
  LUT5 #(
    .INIT(32'h02020300)) 
    \dDataOut8[0]_i_3 
       (.I0(\dDataIn_reg_reg_n_0_[2][4] ),
        .I1(\dAlignment_int_reg_n_0_[0] ),
        .I2(\dAlignment_int_reg_n_0_[1] ),
        .I3(\dDataIn_reg_reg_n_0_[2][0] ),
        .I4(\dAlignment_int_reg_n_0_[2] ),
        .O(\dDataOut8[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[0]_i_4 
       (.I0(\dDataIn_reg_reg_n_0_[2][6] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[2][2] ),
        .O(\dDataOut8[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[0]_i_5 
       (.I0(\dDataIn_reg_reg_n_0_[2][7] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[2][3] ),
        .O(\dDataOut8[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[0]_i_6 
       (.I0(\dDataIn_reg_reg_n_0_[2][5] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[2][1] ),
        .O(\dDataOut8[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFE3EF232CE0EC202)) 
    \dDataOut8[1]_i_1 
       (.I0(\dDataOut8[0]_i_6_n_0 ),
        .I1(\dAlignment_int_reg_n_0_[1] ),
        .I2(\dAlignment_int_reg_n_0_[0] ),
        .I3(\dDataOut8[1]_i_2_n_0 ),
        .I4(\dDataOut8[0]_i_5_n_0 ),
        .I5(\dDataOut8[0]_i_4_n_0 ),
        .O(dDataOut8__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[1]_i_2 
       (.I0(\dDataIn_reg_reg_n_0_[3][0] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[2][4] ),
        .O(\dDataOut8[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[2]_i_1 
       (.I0(\dDataOut8[2]_i_2_n_0 ),
        .I1(\dAlignment_int_reg_n_0_[0] ),
        .I2(\dAlignment_int_reg_n_0_[1] ),
        .I3(\dDataOut8[1]_i_2_n_0 ),
        .I4(\dDataOut8[0]_i_5_n_0 ),
        .I5(\dDataOut8[0]_i_4_n_0 ),
        .O(dDataOut8__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[2]_i_2 
       (.I0(\dDataIn_reg_reg_n_0_[3][1] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[2][5] ),
        .O(\dDataOut8[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[3]_i_1 
       (.I0(\dDataOut8[3]_i_2_n_0 ),
        .I1(\dAlignment_int_reg_n_0_[0] ),
        .I2(\dAlignment_int_reg_n_0_[1] ),
        .I3(\dDataOut8[2]_i_2_n_0 ),
        .I4(\dDataOut8[1]_i_2_n_0 ),
        .I5(\dDataOut8[0]_i_5_n_0 ),
        .O(dDataOut8__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[3]_i_2 
       (.I0(\dDataIn_reg_reg_n_0_[3][2] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[2][6] ),
        .O(\dDataOut8[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[4]_i_1 
       (.I0(\dDataOut8[4]_i_2_n_0 ),
        .I1(\dAlignment_int_reg_n_0_[0] ),
        .I2(\dAlignment_int_reg_n_0_[1] ),
        .I3(\dDataOut8[3]_i_2_n_0 ),
        .I4(\dDataOut8[2]_i_2_n_0 ),
        .I5(\dDataOut8[1]_i_2_n_0 ),
        .O(dDataOut8__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[4]_i_2 
       (.I0(\dDataIn_reg_reg_n_0_[3][3] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[2][7] ),
        .O(\dDataOut8[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[5]_i_1 
       (.I0(\dDataOut8[5]_i_2_n_0 ),
        .I1(\dAlignment_int_reg_n_0_[0] ),
        .I2(\dAlignment_int_reg_n_0_[1] ),
        .I3(\dDataOut8[4]_i_2_n_0 ),
        .I4(\dDataOut8[3]_i_2_n_0 ),
        .I5(\dDataOut8[2]_i_2_n_0 ),
        .O(dDataOut8__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[5]_i_2 
       (.I0(\dDataIn_reg_reg_n_0_[3][4] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[3][0] ),
        .O(\dDataOut8[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \dDataOut8[6]_i_1 
       (.I0(\dDataOut8[6]_i_2_n_0 ),
        .I1(\dAlignment_int_reg_n_0_[0] ),
        .I2(\dAlignment_int_reg_n_0_[1] ),
        .I3(\dDataOut8[5]_i_2_n_0 ),
        .I4(\dDataOut8[4]_i_2_n_0 ),
        .I5(\dDataOut8[3]_i_2_n_0 ),
        .O(dDataOut8__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dDataOut8[6]_i_2 
       (.I0(\dDataIn_reg_reg_n_0_[3][5] ),
        .I1(\dAlignment_int_reg_n_0_[2] ),
        .I2(\dDataIn_reg_reg_n_0_[3][1] ),
        .O(\dDataOut8[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAFFEEAAFAAAEE)) 
    \dDataOut8[7]_i_1 
       (.I0(\dDataOut8[7]_i_2_n_0 ),
        .I1(\dDataOut8[4]_i_2_n_0 ),
        .I2(\dDataOut8[5]_i_2_n_0 ),
        .I3(\dAlignment_int_reg_n_0_[1] ),
        .I4(\dAlignment_int_reg_n_0_[0] ),
        .I5(\dDataOut8[6]_i_2_n_0 ),
        .O(dDataOut8__0[7]));
  LUT5 #(
    .INIT(32'h8080C000)) 
    \dDataOut8[7]_i_2 
       (.I0(\dDataIn_reg_reg_n_0_[3][6] ),
        .I1(\dAlignment_int_reg_n_0_[0] ),
        .I2(\dAlignment_int_reg_n_0_[1] ),
        .I3(\dDataIn_reg_reg_n_0_[3][2] ),
        .I4(\dAlignment_int_reg_n_0_[2] ),
        .O(\dDataOut8[7]_i_2_n_0 ));
  FDRE \dDataOut8_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[0]),
        .Q(rbD0RxDataHS[7]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[1]),
        .Q(rbD0RxDataHS[6]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[2]),
        .Q(rbD0RxDataHS[5]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[3]),
        .Q(rbD0RxDataHS[4]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[4]),
        .Q(rbD0RxDataHS[3]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[5]),
        .Q(rbD0RxDataHS[2]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[6]),
        .Q(rbD0RxDataHS[1]),
        .R(dDataOut80));
  FDRE \dDataOut8_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(dDataOut8__0[7]),
        .Q(rbD0RxDataHS[0]),
        .R(dDataOut80));
  FDPE dLogicRst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(SyncAsyncSettled_n_0),
        .PRE(dSerdesRst),
        .Q(dLogicRst));
  FDPE dSerdesRst_q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(dSerdesRst),
        .Q(dSerdesRst_q));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    dSyncErr_int_i_1__0
       (.I0(dSyncSoft_int_i_3__0_n_0),
        .I1(dSyncSoft_int_i_2__0_n_0),
        .I2(dSyncHard_int_i_2__0_n_0),
        .I3(dSyncHard_int),
        .I4(dSyncErr_reg_reg),
        .O(dSyncErr_int_i_1__0_n_0));
  FDRE dSyncErr_int_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dSyncErr_int_i_1__0_n_0),
        .Q(dSyncErr_reg_reg),
        .R(dLogicRst));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dSyncHard_int_i_10__0
       (.I0(word[5]),
        .I1(word[6]),
        .O(dSyncHard_int_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dSyncHard_int_i_11__0
       (.I0(\dDataIn_reg_reg_n_0_[1][0] ),
        .I1(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncHard_int_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    dSyncHard_int_i_12__0
       (.I0(\dDataIn_reg_reg_n_0_[1][6] ),
        .I1(word[6]),
        .I2(\dDataIn_reg_reg_n_0_[1][0] ),
        .I3(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncHard_int_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dSyncHard_int_i_13__0
       (.I0(\dDataIn_reg_reg_n_0_[1][2] ),
        .I1(\dDataIn_reg_reg_n_0_[1][5] ),
        .O(dSyncHard_int_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    dSyncHard_int_i_14__0
       (.I0(\dDataIn_reg_reg_n_0_[1][3] ),
        .I1(\dDataIn_reg_reg_n_0_[1][4] ),
        .O(dSyncHard_int_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    dSyncHard_int_i_15__0
       (.I0(word[5]),
        .I1(word[6]),
        .I2(\dDataIn_reg_reg_n_0_[1][2] ),
        .I3(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncHard_int_i_15__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    dSyncHard_int_i_16__0
       (.I0(word[5]),
        .I1(word[6]),
        .I2(word[4]),
        .I3(word[0]),
        .O(dSyncHard_int_i_16__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    dSyncHard_int_i_17__0
       (.I0(word[5]),
        .I1(word[1]),
        .I2(\dDataIn_reg_reg_n_0_[1][0] ),
        .I3(word[6]),
        .O(dSyncHard_int_i_17__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    dSyncHard_int_i_18__0
       (.I0(word[3]),
        .I1(word[4]),
        .I2(\dDataIn_reg_reg_n_0_[1][0] ),
        .I3(word[2]),
        .O(dSyncHard_int_i_18__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    dSyncHard_int_i_19__0
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(\dDataIn_reg_reg_n_0_[1][0] ),
        .I2(word[4]),
        .I3(word[2]),
        .O(dSyncHard_int_i_19__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    dSyncHard_int_i_1__0
       (.I0(dSyncHard_int_i_3__0_n_0),
        .I1(nextMust_reg_n_0),
        .I2(word[5]),
        .I3(word[6]),
        .I4(word[3]),
        .I5(word[4]),
        .O(dSyncHard_int));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    dSyncHard_int_i_2__0
       (.I0(dSyncHard_int_i_4__0_n_0),
        .I1(dSyncHard_int_i_5__0_n_0),
        .I2(dSyncHard_int_i_6__0_n_0),
        .I3(dSyncHard_int_i_7__0_n_0),
        .I4(dSyncHard_int_i_8__0_n_0),
        .I5(dSyncHard_int_i_9__0_n_0),
        .O(dSyncHard_int_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h01)) 
    dSyncHard_int_i_3__0
       (.I0(dSyncErr_reg_reg),
        .I1(dSyncHard_reg_reg),
        .I2(dSyncSoft_reg_reg),
        .O(dSyncHard_int_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00000F0000008800)) 
    dSyncHard_int_i_4__0
       (.I0(dSyncHard_int_i_10__0_n_0),
        .I1(dSyncHard_int_i_11__0_n_0),
        .I2(dSyncHard_int_i_12__0_n_0),
        .I3(dSyncHard_int_i_13__0_n_0),
        .I4(\dDataIn_reg_reg_n_0_[1][4] ),
        .I5(\dDataIn_reg_reg_n_0_[1][3] ),
        .O(dSyncHard_int_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    dSyncHard_int_i_5__0
       (.I0(\dDataIn_reg_reg_n_0_[1][2] ),
        .I1(word[5]),
        .I2(dSyncHard_int_i_14__0_n_0),
        .I3(word[6]),
        .I4(word[4]),
        .I5(dSyncHard_int_i_11__0_n_0),
        .O(dSyncHard_int_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    dSyncHard_int_i_6__0
       (.I0(dSyncHard_int_i_15__0_n_0),
        .I1(\dDataIn_reg_reg_n_0_[1][3] ),
        .I2(\dDataIn_reg_reg_n_0_[1][0] ),
        .I3(word[4]),
        .I4(word[3]),
        .O(dSyncHard_int_i_6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    dSyncHard_int_i_7__0
       (.I0(\dDataIn_reg_reg_n_0_[0][0] ),
        .I1(word[1]),
        .I2(word[2]),
        .I3(word[3]),
        .I4(dSyncHard_int_i_16__0_n_0),
        .O(dSyncHard_int_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    dSyncHard_int_i_8__0
       (.I0(word[3]),
        .I1(word[4]),
        .I2(word[0]),
        .I3(word[2]),
        .I4(dSyncHard_int_i_17__0_n_0),
        .O(dSyncHard_int_i_8__0_n_0));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    dSyncHard_int_i_9__0
       (.I0(dSyncHard_int_i_18__0_n_0),
        .I1(dSyncHard_int_i_15__0_n_0),
        .I2(dSyncHard_int_i_10__0_n_0),
        .I3(word[3]),
        .I4(word[1]),
        .I5(dSyncHard_int_i_19__0_n_0),
        .O(dSyncHard_int_i_9__0_n_0));
  FDRE dSyncHard_int_reg
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(dSyncHard_int_i_2__0_n_0),
        .Q(dSyncHard_reg_reg),
        .R(dLogicRst));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h71)) 
    dSyncSoft_int_i_10__0
       (.I0(\dDataIn_reg_reg_n_0_[1][0] ),
        .I1(\dDataIn_reg_reg_n_0_[1][1] ),
        .I2(word[6]),
        .O(dSyncSoft_int_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hD4D4FFD4)) 
    dSyncSoft_int_i_11__0
       (.I0(\dDataIn_reg_reg_n_0_[1][2] ),
        .I1(\dDataIn_reg_reg_n_0_[1][3] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .I3(\dDataIn_reg_reg_n_0_[1][5] ),
        .I4(word[5]),
        .O(dSyncSoft_int_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF0DFF0D0D0D0D)) 
    dSyncSoft_int_i_12__0
       (.I0(\dDataIn_reg_reg_n_0_[1][1] ),
        .I1(\dDataIn_reg_reg_n_0_[1][0] ),
        .I2(\dDataIn_reg_reg_n_0_[1][2] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .I4(\dDataIn_reg_reg_n_0_[1][4] ),
        .I5(\dDataIn_reg_reg_n_0_[1][5] ),
        .O(dSyncSoft_int_i_12__0_n_0));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    dSyncSoft_int_i_13__0
       (.I0(word[6]),
        .I1(\dDataIn_reg_reg_n_0_[1][6] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .I3(\dDataIn_reg_reg_n_0_[1][3] ),
        .I4(\dDataIn_reg_reg_n_0_[1][0] ),
        .I5(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncSoft_int_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    dSyncSoft_int_i_14__0
       (.I0(\dDataIn_reg_reg_n_0_[1][0] ),
        .I1(\dDataIn_reg_reg_n_0_[1][2] ),
        .I2(\dDataIn_reg_reg_n_0_[1][1] ),
        .O(dSyncSoft_int_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h69)) 
    dSyncSoft_int_i_15__0
       (.I0(\dDataIn_reg_reg_n_0_[1][3] ),
        .I1(\dDataIn_reg_reg_n_0_[1][5] ),
        .I2(\dDataIn_reg_reg_n_0_[1][4] ),
        .O(dSyncSoft_int_i_15__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF3515100)) 
    dSyncSoft_int_i_16__0
       (.I0(word[2]),
        .I1(\dDataIn_reg_reg_n_0_[1][1] ),
        .I2(word[1]),
        .I3(word[3]),
        .I4(word[4]),
        .O(dSyncSoft_int_i_16__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    dSyncSoft_int_i_17__0
       (.I0(word[4]),
        .I1(word[3]),
        .I2(word[5]),
        .O(dSyncSoft_int_i_17__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    dSyncSoft_int_i_18__0
       (.I0(word[5]),
        .I1(word[4]),
        .I2(word[3]),
        .O(dSyncSoft_int_i_18__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h5D0CFF5D)) 
    dSyncSoft_int_i_19__0
       (.I0(word[3]),
        .I1(\dDataIn_reg_reg_n_0_[1][0] ),
        .I2(word[0]),
        .I3(word[1]),
        .I4(word[2]),
        .O(dSyncSoft_int_i_19__0_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    dSyncSoft_int_i_1__0
       (.I0(dSyncSoft_int_i_2__0_n_0),
        .I1(dSyncSoft_int_i_3__0_n_0),
        .I2(dSyncHard_int_i_2__0_n_0),
        .O(soft5_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    dSyncSoft_int_i_20__0
       (.I0(word[3]),
        .I1(word[1]),
        .I2(word[2]),
        .O(dSyncSoft_int_i_20__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dSyncSoft_int_i_21__0
       (.I0(\dDataIn_reg_reg_n_0_[1][0] ),
        .I1(word[0]),
        .O(dSyncSoft_int_i_21__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h2B2BFF2B)) 
    dSyncSoft_int_i_22__0
       (.I0(word[0]),
        .I1(word[2]),
        .I2(word[1]),
        .I3(word[6]),
        .I4(\dDataIn_reg_reg_n_0_[0][0] ),
        .O(dSyncSoft_int_i_22__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    dSyncSoft_int_i_23__0
       (.I0(word[0]),
        .I1(word[1]),
        .I2(word[2]),
        .O(dSyncSoft_int_i_23__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dSyncSoft_int_i_24__0
       (.I0(word[6]),
        .I1(\dDataIn_reg_reg_n_0_[0][0] ),
        .O(dSyncSoft_int_i_24__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    dSyncSoft_int_i_2__0
       (.I0(\dAlignment_int[1]_i_3__0_n_0 ),
        .I1(dSyncSoft_int_i_4__0_n_0),
        .I2(dSyncSoft_int_i_5__0_n_0),
        .O(dSyncSoft_int_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    dSyncSoft_int_i_3__0
       (.I0(\dAlignment_int[2]_i_3__0_n_0 ),
        .I1(dSyncSoft_int_i_6__0_n_0),
        .I2(dSyncSoft_int_i_7__0_n_0),
        .I3(dSyncSoft_int_i_8__0_n_0),
        .I4(dSyncSoft_int_i_9__0_n_0),
        .O(dSyncSoft_int_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000002055)) 
    dSyncSoft_int_i_4__0
       (.I0(\dAlignment_int[1]_i_13__0_n_0 ),
        .I1(\dDataIn_reg_reg_n_0_[1][5] ),
        .I2(word[5]),
        .I3(\dAlignment_int[1]_i_12__0_n_0 ),
        .I4(dSyncSoft_int_i_10__0_n_0),
        .I5(dSyncSoft_int_i_11__0_n_0),
        .O(dSyncSoft_int_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h0000001000101101)) 
    dSyncSoft_int_i_5__0
       (.I0(dSyncSoft_int_i_12__0_n_0),
        .I1(dSyncSoft_int_i_13__0_n_0),
        .I2(word[6]),
        .I3(\dDataIn_reg_reg_n_0_[1][6] ),
        .I4(dSyncSoft_int_i_14__0_n_0),
        .I5(dSyncSoft_int_i_15__0_n_0),
        .O(dSyncSoft_int_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hFDFFD7FDFFFFFDFF)) 
    dSyncSoft_int_i_6__0
       (.I0(dSyncSoft_int_i_16__0_n_0),
        .I1(\dAlignment_int[0]_i_9__0_n_0 ),
        .I2(word[6]),
        .I3(word[5]),
        .I4(\dDataIn_reg_reg_n_0_[1][0] ),
        .I5(\dAlignment_int[1]_i_6__0_n_0 ),
        .O(dSyncSoft_int_i_6__0_n_0));
  LUT6 #(
    .INIT(64'hFF7FFFFF7FF7FF7F)) 
    dSyncSoft_int_i_7__0
       (.I0(dSyncSoft_int_i_17__0_n_0),
        .I1(dSyncSoft_int_i_10__0_n_0),
        .I2(\dAlignment_int[1]_i_12__0_n_0 ),
        .I3(\dDataIn_reg_reg_n_0_[1][2] ),
        .I4(word[2]),
        .I5(dSyncSoft_int_i_18__0_n_0),
        .O(dSyncSoft_int_i_7__0_n_0));
  LUT6 #(
    .INIT(64'hFFFBFBBEFFFFFFFB)) 
    dSyncSoft_int_i_8__0
       (.I0(dSyncSoft_int_i_19__0_n_0),
        .I1(dSyncSoft_int_i_20__0_n_0),
        .I2(dSyncSoft_int_i_21__0_n_0),
        .I3(word[6]),
        .I4(word[5]),
        .I5(word[4]),
        .O(dSyncSoft_int_i_8__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFEFEFBE)) 
    dSyncSoft_int_i_9__0
       (.I0(dSyncSoft_int_i_22__0_n_0),
        .I1(dSyncSoft_int_i_23__0_n_0),
        .I2(word[3]),
        .I3(word[4]),
        .I4(word[5]),
        .I5(dSyncSoft_int_i_24__0_n_0),
        .O(dSyncSoft_int_i_9__0_n_0));
  FDRE dSyncSoft_int_reg
       (.C(CLK),
        .CE(dSyncHard_int),
        .D(soft5_out),
        .Q(dSyncSoft_reg_reg),
        .R(dLogicRst));
  FDRE dValid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\dValid_reg_reg_n_0_[3] ),
        .Q(rbD0RxValidHS),
        .R(dDataOut80));
  LUT6 #(
    .INIT(64'h0EEEEEEEEEEEEEEE)) 
    \dValid_reg[2]_i_1__0 
       (.I0(dSyncHard_reg_reg),
        .I1(dSyncSoft_reg_reg),
        .I2(\dLP[0]_0 [0]),
        .I3(\dLP[1]_1 [0]),
        .I4(\dLP[0]_0 [1]),
        .I5(\dLP[1]_1 [1]),
        .O(p_3_out));
  FDRE \dValid_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_3_out),
        .Q(p_2_in),
        .R(dLogicRst));
  FDRE \dValid_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in),
        .Q(\dValid_reg_reg_n_0_[3] ),
        .R(dLogicRst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    nextMust_i_1__0
       (.I0(word[1]),
        .I1(word[2]),
        .I2(word[0]),
        .I3(\dDataIn_reg_reg_n_0_[0][0] ),
        .I4(dSyncHard_int_i_3__0_n_0),
        .I5(nextMust_reg_n_0),
        .O(nextMust_i_1__0_n_0));
  FDRE nextMust_reg
       (.C(CLK),
        .CE(1'b1),
        .D(nextMust_i_1__0_n_0),
        .Q(nextMust_reg_n_0),
        .R(dLogicRst));
  LUT2 #(
    .INIT(4'h2)) 
    rbD0ErrSotHS_INST_0
       (.I0(dSyncErr_reg_reg),
        .I1(dSyncErr_reg),
        .O(rbD0ErrSotHS));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rbD0ErrSotSyncHS_INST_0
       (.I0(dSyncSoft_reg_reg),
        .I1(dSyncSoft_reg),
        .O(rbD0ErrSotSyncHS));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rbD0RxActiveHS_INST_0
       (.I0(dSyncSoft_reg_reg),
        .I1(dSyncHard_reg_reg),
        .O(rbD0RxActiveHS));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    rbD0RxSyncHS_INST_0
       (.I0(dSyncSoft_reg),
        .I1(dSyncSoft_reg_reg),
        .I2(dSyncHard_reg),
        .I3(dSyncHard_reg_reg),
        .O(rbD0RxSyncHS));
endmodule

(* ORIG_REF_NAME = "InputBuffer" *) 
module design_1_MIPI_D_PHY_RX_0_0_InputBuffer
   (aHS,
    aLP,
    dphy_clk_hs_p,
    dphy_clk_hs_n,
    dphy_clk_lp_n,
    dphy_clk_lp_p);
  output aHS;
  output [1:0]aLP;
  input dphy_clk_hs_p;
  input dphy_clk_hs_n;
  input dphy_clk_lp_n;
  input dphy_clk_lp_p;

  wire aHS;
  wire [1:0]aLP;
  wire dphy_clk_hs_n;
  wire dphy_clk_hs_p;
  wire dphy_clk_lp_n;
  wire dphy_clk_lp_p;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS LaneHighSpeed
       (.I(dphy_clk_hs_p),
        .IB(dphy_clk_hs_n),
        .O(aHS));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF \LaneWithLP.LaneLowPower0 
       (.I(dphy_clk_lp_n),
        .O(aLP[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF \LaneWithLP.LaneLowPower1 
       (.I(dphy_clk_lp_p),
        .O(aLP[1]));
endmodule

(* ORIG_REF_NAME = "InputBuffer" *) 
module design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0
   (aHS,
    aLP,
    dphy_data_hs_p,
    dphy_data_hs_n,
    dphy_data_lp_n,
    dphy_data_lp_p);
  output aHS;
  output [1:0]aLP;
  input [0:0]dphy_data_hs_p;
  input [0:0]dphy_data_hs_n;
  input [0:0]dphy_data_lp_n;
  input [0:0]dphy_data_lp_p;

  wire aHS;
  wire [1:0]aLP;
  wire [0:0]dphy_data_hs_n;
  wire [0:0]dphy_data_hs_p;
  wire [0:0]dphy_data_lp_n;
  wire [0:0]dphy_data_lp_p;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS LaneHighSpeed
       (.I(dphy_data_hs_p),
        .IB(dphy_data_hs_n),
        .O(aHS));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF \LaneWithLP.LaneLowPower0 
       (.I(dphy_data_lp_n),
        .O(aLP[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF \LaneWithLP.LaneLowPower1 
       (.I(dphy_data_lp_p),
        .O(aLP[1]));
endmodule

(* ORIG_REF_NAME = "InputBuffer" *) 
module design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0_1
   (aHS,
    aLP,
    dphy_data_hs_p,
    dphy_data_hs_n,
    dphy_data_lp_n,
    dphy_data_lp_p);
  output aHS;
  output [1:0]aLP;
  input [0:0]dphy_data_hs_p;
  input [0:0]dphy_data_hs_n;
  input [0:0]dphy_data_lp_n;
  input [0:0]dphy_data_lp_p;

  wire aHS;
  wire [1:0]aLP;
  wire [0:0]dphy_data_hs_n;
  wire [0:0]dphy_data_hs_p;
  wire [0:0]dphy_data_lp_n;
  wire [0:0]dphy_data_lp_p;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS LaneHighSpeed
       (.I(dphy_data_hs_p),
        .IB(dphy_data_hs_n),
        .O(aHS));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF \LaneWithLP.LaneLowPower0 
       (.I(dphy_data_lp_n),
        .O(aLP[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF \LaneWithLP.LaneLowPower1 
       (.I(dphy_data_lp_p),
        .O(aLP[1]));
endmodule

(* C_S_AXI_LITE_ADDR_WIDTH = "4" *) (* C_S_AXI_LITE_DATA_WIDTH = "32" *) (* C_S_AXI_LITE_FREQ_HZ = "100000000" *) 
(* ORIG_REF_NAME = "MIPI_DPHY_Receiver" *) (* kAddDelayClk_ps = "0" *) (* kAddDelayData0_ps = "0" *) 
(* kAddDelayData1_ps = "0" *) (* kDebug = "FALSE" *) (* kGenerateAXIL = "TRUE" *) 
(* kGenerateMMCM = "FALSE" *) (* kLPFromLane0 = "FALSE" *) (* kNoOfDataLanes = "2" *) 
(* kRefClkFreqHz = "200000000" *) (* kVersionMajor = "1" *) (* kVersionMinor = "2" *) 
module design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver
   (dphy_clk_hs_p,
    dphy_clk_hs_n,
    dphy_clk_lp_p,
    dphy_clk_lp_n,
    dphy_data_hs_p,
    dphy_data_hs_n,
    dphy_data_lp_p,
    dphy_data_lp_n,
    RefClk,
    aRst,
    RxDDRClkHS,
    aRxClkActiveHS,
    aClkStopstate,
    aClkEnable,
    aClkUlpsActiveNot,
    aRxUlpsClkNot,
    aClkForceRxmode,
    aClkErrControl,
    RxByteClkHS,
    aD0Stopstate,
    aD0Enable,
    aD0UlpsActiveNot,
    rbD0RxDataHS,
    rbD0RxValidHS,
    rbD0RxActiveHS,
    rbD0RxSyncHS,
    rbD0ErrSotHS,
    rbD0ErrSotSyncHS,
    aD0ForceRxmode,
    D0RxClkEsc,
    aD0RxDataEsc,
    aD0RxValidEsc,
    aD0RxLpdtEsc,
    aD0RxUlpsEsc,
    aD0RxTriggerEsc,
    aD0ErrEsc,
    aD0ErrControl,
    aD1Stopstate,
    aD1Enable,
    aD1UlpsActiveNot,
    rbD1RxDataHS,
    rbD1RxValidHS,
    rbD1RxActiveHS,
    rbD1RxSyncHS,
    rbD1ErrSotHS,
    rbD1ErrSotSyncHS,
    aD1ForceRxmode,
    D1RxClkEsc,
    aD1RxDataEsc,
    aD1RxValidEsc,
    aD1RxLpdtEsc,
    aD1RxUlpsEsc,
    aD1RxTriggerEsc,
    aD1ErrEsc,
    aD1ErrControl,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready);
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
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
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

  wire \<const0> ;
  wire CoreAsyncReset_n_1;
  wire [4:0]\GenIDELAYCTRL.rDlyRstCnt_reg__0 ;
  wire HS_Clock;
  wire HS_Data_0;
  wire HS_Data_1;
  wire [1:0]LP_Clock;
  wire RST;
  wire RefClk;
  wire RxByteClkHS;
  wire RxDDRClkHS;
  wire \YesAXILITE.AXI_Lite_Control_n_5 ;
  wire aClkEnable;
  wire aClkStopstate;
  wire aClkUlpsActiveNot;
  wire aD0Enable;
  wire aD0ForceRxmode;
  wire aD0Stopstate;
  wire aD1Enable;
  wire aD1ForceRxmode;
  wire aD1Stopstate;
  wire [1:0]\aLPBuf[0] ;
  wire [1:0]\aLPBuf[1] ;
  wire aLaneSCNNEnable;
  wire aLaneSFENEnable_0;
  wire aLaneSFENEnable_1;
  wire aNotRxClkActiveHS;
  wire aReset;
  wire aRst;
  wire aRxClkActiveHS;
  wire aRxUlpsClkNot;
  wire dphy_clk_hs_n;
  wire dphy_clk_hs_p;
  wire dphy_clk_lp_n;
  wire dphy_clk_lp_p;
  wire [1:0]dphy_data_hs_n;
  wire [1:0]dphy_data_hs_p;
  wire [1:0]dphy_data_lp_n;
  wire [1:0]dphy_data_lp_p;
  wire [4:0]p_0_in;
  wire p_1_out;
  wire rDlyLckd;
  wire rExtRst;
  wire rIntRst;
  wire rbD0ErrSotHS;
  wire rbD0ErrSotSyncHS;
  wire rbD0RxActiveHS;
  wire [7:0]rbD0RxDataHS;
  wire rbD0RxSyncHS;
  wire rbD0RxValidHS;
  wire rbD1ErrSotHS;
  wire rbD1ErrSotSyncHS;
  wire rbD1RxActiveHS;
  wire [7:0]rbD1RxDataHS;
  wire rbD1RxSyncHS;
  wire rbD1RxValidHS;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire sel;

  assign D0RxClkEsc = \<const0> ;
  assign D1RxClkEsc = \<const0> ;
  assign aClkErrControl = \<const0> ;
  assign aD0ErrControl = \<const0> ;
  assign aD0ErrEsc = \<const0> ;
  assign aD0RxDataEsc[7] = \<const0> ;
  assign aD0RxDataEsc[6] = \<const0> ;
  assign aD0RxDataEsc[5] = \<const0> ;
  assign aD0RxDataEsc[4] = \<const0> ;
  assign aD0RxDataEsc[3] = \<const0> ;
  assign aD0RxDataEsc[2] = \<const0> ;
  assign aD0RxDataEsc[1] = \<const0> ;
  assign aD0RxDataEsc[0] = \<const0> ;
  assign aD0RxLpdtEsc = \<const0> ;
  assign aD0RxTriggerEsc[3] = \<const0> ;
  assign aD0RxTriggerEsc[2] = \<const0> ;
  assign aD0RxTriggerEsc[1] = \<const0> ;
  assign aD0RxTriggerEsc[0] = \<const0> ;
  assign aD0RxUlpsEsc = \<const0> ;
  assign aD0RxValidEsc = \<const0> ;
  assign aD0UlpsActiveNot = \<const0> ;
  assign aD1ErrControl = \<const0> ;
  assign aD1ErrEsc = \<const0> ;
  assign aD1RxDataEsc[7] = \<const0> ;
  assign aD1RxDataEsc[6] = \<const0> ;
  assign aD1RxDataEsc[5] = \<const0> ;
  assign aD1RxDataEsc[4] = \<const0> ;
  assign aD1RxDataEsc[3] = \<const0> ;
  assign aD1RxDataEsc[2] = \<const0> ;
  assign aD1RxDataEsc[1] = \<const0> ;
  assign aD1RxDataEsc[0] = \<const0> ;
  assign aD1RxLpdtEsc = \<const0> ;
  assign aD1RxTriggerEsc[3] = \<const0> ;
  assign aD1RxTriggerEsc[2] = \<const0> ;
  assign aD1RxTriggerEsc[1] = \<const0> ;
  assign aD1RxTriggerEsc[0] = \<const0> ;
  assign aD1RxUlpsEsc = \<const0> ;
  assign aD1RxValidEsc = \<const0> ;
  assign aD1UlpsActiveNot = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  design_1_MIPI_D_PHY_RX_0_0_InputBuffer ClockInputBuffer
       (.aHS(HS_Clock),
        .aLP(LP_Clock),
        .dphy_clk_hs_n(dphy_clk_hs_n),
        .dphy_clk_hs_p(dphy_clk_hs_p),
        .dphy_clk_lp_n(dphy_clk_lp_n),
        .dphy_clk_lp_p(dphy_clk_lp_p));
  design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSCNN ClockLane
       (.AS(aNotRxClkActiveHS),
        .CLK(RxByteClkHS),
        .D(aLaneSCNNEnable),
        .RefClk(RefClk),
        .RxDDRClkHS(RxDDRClkHS),
        .aClkStopstate(aClkStopstate),
        .aClkUlpsActiveNot(aClkUlpsActiveNot),
        .aHS(HS_Clock),
        .aLP(LP_Clock),
        .aRxClkActiveHS(aRxClkActiveHS),
        .aRxUlpsClkNot(aRxUlpsClkNot));
  design_1_MIPI_D_PHY_RX_0_0_ResetBridge CoreAsyncReset
       (.E(sel),
        .\GenIDELAYCTRL.rDlyRst_reg (CoreAsyncReset_n_1),
        .RST(RST),
        .RefClk(RefClk),
        .aRst(aRst),
        .\oSyncStages_reg[1] (p_1_out),
        .out(rExtRst));
  design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN \DataLaneGen[0].DPHY_LaneSFEN_X 
       (.AS(aNotRxClkActiveHS),
        .CLK(RxByteClkHS),
        .CLKB(RxDDRClkHS),
        .D(aLaneSFENEnable_0),
        .RefClk(RefClk),
        .aD0ForceRxmode(aD0ForceRxmode),
        .aD0Stopstate(aD0Stopstate),
        .aHS(HS_Data_0),
        .aLP(\aLPBuf[0] ),
        .dphy_clk_hs_n(RxDDRClkHS),
        .rbD0ErrSotHS(rbD0ErrSotHS),
        .rbD0ErrSotSyncHS(rbD0ErrSotSyncHS),
        .rbD0RxActiveHS(rbD0RxActiveHS),
        .rbD0RxDataHS(rbD0RxDataHS),
        .rbD0RxSyncHS(rbD0RxSyncHS),
        .rbD0RxValidHS(rbD0RxValidHS));
  design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0 \DataLaneGen[0].InputBufferDataX 
       (.aHS(HS_Data_0),
        .aLP(\aLPBuf[0] ),
        .dphy_data_hs_n(dphy_data_hs_n[0]),
        .dphy_data_hs_p(dphy_data_hs_p[0]),
        .dphy_data_lp_n(dphy_data_lp_n[0]),
        .dphy_data_lp_p(dphy_data_lp_p[0]));
  design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN_0 \DataLaneGen[1].DPHY_LaneSFEN_X 
       (.AS(aNotRxClkActiveHS),
        .CLK(RxByteClkHS),
        .CLKB(RxDDRClkHS),
        .D(aLaneSFENEnable_1),
        .RefClk(RefClk),
        .aD1ForceRxmode(aD1ForceRxmode),
        .aD1Stopstate(aD1Stopstate),
        .aHS(HS_Data_1),
        .aLP(\aLPBuf[1] ),
        .dphy_clk_hs_n(RxDDRClkHS),
        .rbD1ErrSotHS(rbD1ErrSotHS),
        .rbD1ErrSotSyncHS(rbD1ErrSotSyncHS),
        .rbD1RxActiveHS(rbD1RxActiveHS),
        .rbD1RxDataHS(rbD1RxDataHS),
        .rbD1RxSyncHS(rbD1RxSyncHS),
        .rbD1RxValidHS(rbD1RxValidHS));
  design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0_1 \DataLaneGen[1].InputBufferDataX 
       (.aHS(HS_Data_1),
        .aLP(\aLPBuf[1] ),
        .dphy_data_hs_n(dphy_data_hs_n[1]),
        .dphy_data_hs_p(dphy_data_hs_p[1]),
        .dphy_data_lp_n(dphy_data_lp_n[1]),
        .dphy_data_lp_p(dphy_data_lp_p[1]));
  GND GND
       (.G(\<const0> ));
  (* box_type = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    \GenIDELAYCTRL.IDelayCtrlX 
       (.RDY(rDlyLckd),
        .REFCLK(RefClk),
        .RST(RST));
  LUT1 #(
    .INIT(2'h1)) 
    \GenIDELAYCTRL.rDlyRstCnt[0]_i_1 
       (.I0(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \GenIDELAYCTRL.rDlyRstCnt[1]_i_1 
       (.I0(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [1]),
        .I1(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \GenIDELAYCTRL.rDlyRstCnt[2]_i_1 
       (.I0(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [2]),
        .I1(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [0]),
        .I2(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \GenIDELAYCTRL.rDlyRstCnt[3]_i_1 
       (.I0(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [3]),
        .I1(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [1]),
        .I2(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [0]),
        .I3(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [2]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \GenIDELAYCTRL.rDlyRstCnt[4]_i_2 
       (.I0(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [3]),
        .I1(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [1]),
        .I2(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [0]),
        .I3(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [2]),
        .I4(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [4]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \GenIDELAYCTRL.rDlyRstCnt[4]_i_3 
       (.I0(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [4]),
        .I1(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [2]),
        .I2(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [0]),
        .I3(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [1]),
        .I4(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [3]),
        .O(p_0_in[4]));
  FDSE #(
    .INIT(1'b1)) 
    \GenIDELAYCTRL.rDlyRstCnt_reg[0] 
       (.C(RefClk),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [0]),
        .S(rIntRst));
  FDSE #(
    .INIT(1'b1)) 
    \GenIDELAYCTRL.rDlyRstCnt_reg[1] 
       (.C(RefClk),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [1]),
        .S(rIntRst));
  FDSE #(
    .INIT(1'b1)) 
    \GenIDELAYCTRL.rDlyRstCnt_reg[2] 
       (.C(RefClk),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [2]),
        .S(rIntRst));
  FDSE #(
    .INIT(1'b1)) 
    \GenIDELAYCTRL.rDlyRstCnt_reg[3] 
       (.C(RefClk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [3]),
        .S(rIntRst));
  FDSE #(
    .INIT(1'b1)) 
    \GenIDELAYCTRL.rDlyRstCnt_reg[4] 
       (.C(RefClk),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(\GenIDELAYCTRL.rDlyRstCnt_reg__0 [4]),
        .S(rIntRst));
  FDRE \GenIDELAYCTRL.rDlyRst_reg 
       (.C(RefClk),
        .CE(1'b1),
        .D(CoreAsyncReset_n_1),
        .Q(RST),
        .R(1'b0));
  design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver_S_AXI_Lite \YesAXILITE.AXI_Lite_Control 
       (.Q({\YesAXILITE.AXI_Lite_Control_n_5 ,aReset}),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr[3:2]),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[3:2]),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
  design_1_MIPI_D_PHY_RX_0_0_ResetBridge_2 \YesAXILITE.CoreSoftReset 
       (.AS(aReset),
        .RefClk(RefClk),
        .SS(rIntRst),
        .\oSyncStages_reg[1] (rExtRst),
        .out(p_1_out));
  design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0 \YesAXILITE.SyncAsyncClkEnable 
       (.D(\YesAXILITE.AXI_Lite_Control_n_5 ),
        .RefClk(RefClk),
        .aClkEnable(aClkEnable),
        .aD0Enable(aD0Enable),
        .aD1Enable(aD1Enable),
        .\oSyncStages_reg[0]_0 (aLaneSFENEnable_0),
        .\oSyncStages_reg[0]_1 (aLaneSCNNEnable),
        .\oSyncStages_reg[0]_2 (aLaneSFENEnable_1),
        .rDlyLckd(rDlyLckd));
endmodule

(* ORIG_REF_NAME = "MIPI_DPHY_Receiver_S_AXI_Lite" *) 
module design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver_S_AXI_Lite
   (s_axi_lite_awready,
    s_axi_lite_wready,
    s_axi_lite_arready,
    s_axi_lite_bvalid,
    s_axi_lite_rvalid,
    Q,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    s_axi_lite_wvalid,
    s_axi_lite_awvalid,
    s_axi_lite_aresetn,
    s_axi_lite_bready,
    s_axi_lite_arvalid,
    s_axi_lite_rready,
    s_axi_lite_wstrb,
    s_axi_lite_araddr,
    s_axi_lite_awaddr,
    s_axi_lite_wdata);
  output s_axi_lite_awready;
  output s_axi_lite_wready;
  output s_axi_lite_arready;
  output s_axi_lite_bvalid;
  output s_axi_lite_rvalid;
  output [1:0]Q;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input s_axi_lite_wvalid;
  input s_axi_lite_awvalid;
  input s_axi_lite_aresetn;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  input s_axi_lite_rready;
  input [3:0]s_axi_lite_wstrb;
  input [1:0]s_axi_lite_araddr;
  input [1:0]s_axi_lite_awaddr;
  input [31:0]s_axi_lite_wdata;

  wire [1:0]Q;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire \control_reg[15]_i_1_n_0 ;
  wire \control_reg[23]_i_1_n_0 ;
  wire \control_reg[31]_i_1_n_0 ;
  wire \control_reg[31]_i_2_n_0 ;
  wire \control_reg[7]_i_1_n_0 ;
  wire \control_reg_reg_n_0_[10] ;
  wire \control_reg_reg_n_0_[11] ;
  wire \control_reg_reg_n_0_[12] ;
  wire \control_reg_reg_n_0_[13] ;
  wire \control_reg_reg_n_0_[14] ;
  wire \control_reg_reg_n_0_[15] ;
  wire \control_reg_reg_n_0_[16] ;
  wire \control_reg_reg_n_0_[17] ;
  wire \control_reg_reg_n_0_[18] ;
  wire \control_reg_reg_n_0_[19] ;
  wire \control_reg_reg_n_0_[20] ;
  wire \control_reg_reg_n_0_[21] ;
  wire \control_reg_reg_n_0_[22] ;
  wire \control_reg_reg_n_0_[23] ;
  wire \control_reg_reg_n_0_[24] ;
  wire \control_reg_reg_n_0_[25] ;
  wire \control_reg_reg_n_0_[26] ;
  wire \control_reg_reg_n_0_[27] ;
  wire \control_reg_reg_n_0_[28] ;
  wire \control_reg_reg_n_0_[29] ;
  wire \control_reg_reg_n_0_[2] ;
  wire \control_reg_reg_n_0_[30] ;
  wire \control_reg_reg_n_0_[31] ;
  wire \control_reg_reg_n_0_[3] ;
  wire \control_reg_reg_n_0_[4] ;
  wire \control_reg_reg_n_0_[5] ;
  wire \control_reg_reg_n_0_[6] ;
  wire \control_reg_reg_n_0_[7] ;
  wire \control_reg_reg_n_0_[8] ;
  wire \control_reg_reg_n_0_[9] ;
  wire [31:0]reg_data_out;
  wire s_axi_lite_aclk;
  wire [1:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [1:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_lite_araddr[0]),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_lite_araddr[1]),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(s_axi_lite_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s_axi_lite_arready),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_wvalid),
        .I2(s_axi_lite_awvalid),
        .I3(s_axi_lite_awready),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_wvalid),
        .I2(s_axi_lite_awvalid),
        .I3(s_axi_lite_awready),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_lite_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(s_axi_lite_awready),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(s_axi_lite_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(s_axi_lite_awready),
        .I3(s_axi_lite_wready),
        .I4(s_axi_lite_bready),
        .I5(s_axi_lite_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_lite_bvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[10]_i_1 
       (.I0(\control_reg_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[11]_i_1 
       (.I0(\control_reg_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[12]_i_1 
       (.I0(\control_reg_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[13]_i_1 
       (.I0(\control_reg_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[14]_i_1 
       (.I0(\control_reg_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[15]_i_1 
       (.I0(\control_reg_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\control_reg_reg_n_0_[16] ),
        .I2(axi_araddr[3]),
        .O(reg_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[17]_i_1 
       (.I0(\control_reg_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[18]_i_1 
       (.I0(\control_reg_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[19]_i_1 
       (.I0(\control_reg_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \axi_rdata[1]_i_1 
       (.I0(axi_araddr[2]),
        .I1(Q[1]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[20]_i_1 
       (.I0(\control_reg_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[21]_i_1 
       (.I0(\control_reg_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[22]_i_1 
       (.I0(\control_reg_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[23]_i_1 
       (.I0(\control_reg_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[24]_i_1 
       (.I0(\control_reg_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[25]_i_1 
       (.I0(\control_reg_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[26]_i_1 
       (.I0(\control_reg_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[27]_i_1 
       (.I0(\control_reg_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[28]_i_1 
       (.I0(\control_reg_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[29]_i_1 
       (.I0(\control_reg_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[2]_i_1 
       (.I0(\control_reg_reg_n_0_[2] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[30]_i_1 
       (.I0(\control_reg_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s_axi_lite_arready),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[31]_i_2 
       (.I0(\control_reg_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[3]_i_1 
       (.I0(\control_reg_reg_n_0_[3] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[4]_i_1 
       (.I0(\control_reg_reg_n_0_[4] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[5]_i_1 
       (.I0(\control_reg_reg_n_0_[5] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[6]_i_1 
       (.I0(\control_reg_reg_n_0_[6] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[7]_i_1 
       (.I0(\control_reg_reg_n_0_[7] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[8]_i_1 
       (.I0(\control_reg_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[9]_i_1 
       (.I0(\control_reg_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[0]),
        .Q(s_axi_lite_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[10]),
        .Q(s_axi_lite_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[11]),
        .Q(s_axi_lite_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[12]),
        .Q(s_axi_lite_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(s_axi_lite_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(s_axi_lite_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(s_axi_lite_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(s_axi_lite_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[17]),
        .Q(s_axi_lite_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(s_axi_lite_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[19]),
        .Q(s_axi_lite_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[1]),
        .Q(s_axi_lite_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(s_axi_lite_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(s_axi_lite_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(s_axi_lite_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(s_axi_lite_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(s_axi_lite_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[25]),
        .Q(s_axi_lite_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(s_axi_lite_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[27]),
        .Q(s_axi_lite_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[28]),
        .Q(s_axi_lite_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[29]),
        .Q(s_axi_lite_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[2]),
        .Q(s_axi_lite_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[30]),
        .Q(s_axi_lite_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[31]),
        .Q(s_axi_lite_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[3]),
        .Q(s_axi_lite_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[4]),
        .Q(s_axi_lite_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[5]),
        .Q(s_axi_lite_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[6]),
        .Q(s_axi_lite_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[7]),
        .Q(s_axi_lite_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(s_axi_lite_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[9]),
        .Q(s_axi_lite_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(s_axi_lite_arready),
        .I2(s_axi_lite_rvalid),
        .I3(s_axi_lite_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_lite_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(s_axi_lite_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s_axi_lite_wready),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    \control_reg[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s_axi_lite_wstrb[1]),
        .I3(\control_reg[31]_i_2_n_0 ),
        .O(\control_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \control_reg[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s_axi_lite_wstrb[2]),
        .I3(\control_reg[31]_i_2_n_0 ),
        .O(\control_reg[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \control_reg[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s_axi_lite_wstrb[3]),
        .I3(\control_reg[31]_i_2_n_0 ),
        .O(\control_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \control_reg[31]_i_2 
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(s_axi_lite_awready),
        .I3(s_axi_lite_wready),
        .O(\control_reg[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \control_reg[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s_axi_lite_wstrb[0]),
        .I3(\control_reg[31]_i_2_n_0 ),
        .O(\control_reg[7]_i_1_n_0 ));
  FDRE \control_reg_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(\control_reg_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(\control_reg_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(\control_reg_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(\control_reg_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(\control_reg_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(\control_reg_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(\control_reg_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(\control_reg_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(\control_reg_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(\control_reg_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDSE \control_reg_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(Q[1]),
        .S(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(\control_reg_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(\control_reg_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(\control_reg_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(\control_reg_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(\control_reg_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(\control_reg_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(\control_reg_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(\control_reg_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(\control_reg_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(\control_reg_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(\control_reg_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(\control_reg_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(\control_reg_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(\control_reg_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(\control_reg_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(\control_reg_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(\control_reg_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(\control_reg_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(\control_reg_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(\control_reg_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module design_1_MIPI_D_PHY_RX_0_0_ResetBridge
   (out,
    \GenIDELAYCTRL.rDlyRst_reg ,
    E,
    RST,
    \oSyncStages_reg[1] ,
    RefClk,
    aRst);
  output [0:0]out;
  output \GenIDELAYCTRL.rDlyRst_reg ;
  input [0:0]E;
  input RST;
  input [0:0]\oSyncStages_reg[1] ;
  input RefClk;
  input aRst;

  wire [0:0]E;
  wire \GenIDELAYCTRL.rDlyRst_reg ;
  wire RST;
  wire RefClk;
  wire aRst;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;

  design_1_MIPI_D_PHY_RX_0_0_SyncAsync_26 SyncAsyncx
       (.E(E),
        .\GenIDELAYCTRL.rDlyRst_reg (\GenIDELAYCTRL.rDlyRst_reg ),
        .RST(RST),
        .RefClk(RefClk),
        .aRst(aRst),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module design_1_MIPI_D_PHY_RX_0_0_ResetBridge_11
   (out,
    CLK,
    AS);
  output [0:0]out;
  input CLK;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK;
  wire [0:0]out;

  design_1_MIPI_D_PHY_RX_0_0_SyncAsync_12 SyncAsyncx
       (.AS(AS),
        .CLK(CLK),
        .out(out));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module design_1_MIPI_D_PHY_RX_0_0_ResetBridge_14
   (AR,
    RefClk,
    AS);
  output [0:0]AR;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AR;
  wire [0:0]AS;
  wire RefClk;

  design_1_MIPI_D_PHY_RX_0_0_SyncAsync_22 SyncAsyncx
       (.AR(AR),
        .AS(AS),
        .RefClk(RefClk));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module design_1_MIPI_D_PHY_RX_0_0_ResetBridge_2
   (out,
    SS,
    \oSyncStages_reg[1] ,
    RefClk,
    AS);
  output [0:0]out;
  output [0:0]SS;
  input [0:0]\oSyncStages_reg[1] ;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire RefClk;
  wire [0:0]SS;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;

  design_1_MIPI_D_PHY_RX_0_0_SyncAsync SyncAsyncx
       (.AS(AS),
        .RefClk(RefClk),
        .SS(SS),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module design_1_MIPI_D_PHY_RX_0_0_ResetBridge_23
   (out,
    CLK,
    AS);
  output [0:0]out;
  input CLK;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK;
  wire [0:0]out;

  design_1_MIPI_D_PHY_RX_0_0_SyncAsync_25 SyncAsyncx
       (.AS(AS),
        .CLK(CLK),
        .out(out));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module design_1_MIPI_D_PHY_RX_0_0_ResetBridge_3
   (AR,
    RefClk,
    AS);
  output [0:0]AR;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AR;
  wire [0:0]AS;
  wire RefClk;

  design_1_MIPI_D_PHY_RX_0_0_SyncAsync_10 SyncAsyncx
       (.AR(AR),
        .AS(AS),
        .RefClk(RefClk));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync
   (out,
    SS,
    \oSyncStages_reg[1]_0 ,
    RefClk,
    AS);
  output [0:0]out;
  output [0:0]SS;
  input [0:0]\oSyncStages_reg[1]_0 ;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire RefClk;
  wire [0:0]SS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[1]_0 ;

  assign out[0] = oSyncStages[1];
  LUT2 #(
    .INIT(4'hE)) 
    \GenIDELAYCTRL.rDlyRstCnt[4]_i_1 
       (.I0(oSyncStages[1]),
        .I1(\oSyncStages_reg[1]_0 ),
        .O(SS));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync_10
   (AR,
    RefClk,
    AS);
  output [0:0]AR;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign AR[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync_12
   (out,
    CLK,
    AS);
  output [0:0]out;
  input CLK;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync_22
   (AR,
    RefClk,
    AS);
  output [0:0]AR;
  input RefClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign AR[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync_25
   (out,
    CLK,
    AS);
  output [0:0]out;
  input CLK;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync_26
   (out,
    \GenIDELAYCTRL.rDlyRst_reg ,
    E,
    RST,
    \oSyncStages_reg[1]_0 ,
    RefClk,
    aRst);
  output [0:0]out;
  output \GenIDELAYCTRL.rDlyRst_reg ;
  input [0:0]E;
  input RST;
  input [0:0]\oSyncStages_reg[1]_0 ;
  input RefClk;
  input aRst;

  wire [0:0]E;
  wire \GenIDELAYCTRL.rDlyRst_reg ;
  wire RST;
  wire RefClk;
  wire aRst;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[1]_0 ;

  assign out[0] = oSyncStages[1];
  LUT4 #(
    .INIT(16'hFFF8)) 
    \GenIDELAYCTRL.rDlyRst_i_1 
       (.I0(E),
        .I1(RST),
        .I2(oSyncStages[1]),
        .I3(\oSyncStages_reg[1]_0 ),
        .O(\GenIDELAYCTRL.rDlyRst_reg ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(aRst),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(aRst),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0
   (\oSyncStages_reg[0]_0 ,
    \oSyncStages_reg[0]_1 ,
    \oSyncStages_reg[0]_2 ,
    RefClk,
    D,
    rDlyLckd,
    aD0Enable,
    aClkEnable,
    aD1Enable);
  output [0:0]\oSyncStages_reg[0]_0 ;
  output [0:0]\oSyncStages_reg[0]_1 ;
  output [0:0]\oSyncStages_reg[0]_2 ;
  input RefClk;
  input [0:0]D;
  input rDlyLckd;
  input aD0Enable;
  input aClkEnable;
  input aD1Enable;

  wire [0:0]D;
  wire RefClk;
  wire aClkEnable;
  wire aD0Enable;
  wire aD1Enable;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[0]_0 ;
  wire [0:0]\oSyncStages_reg[0]_1 ;
  wire [0:0]\oSyncStages_reg[0]_2 ;
  wire rDlyLckd;

  LUT3 #(
    .INIT(8'h80)) 
    \oSyncStages[0]_i_1 
       (.I0(oSyncStages[1]),
        .I1(rDlyLckd),
        .I2(aD0Enable),
        .O(\oSyncStages_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \oSyncStages[0]_i_1__0 
       (.I0(oSyncStages[1]),
        .I1(rDlyLckd),
        .I2(aClkEnable),
        .O(\oSyncStages_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \oSyncStages[0]_i_1__1 
       (.I0(oSyncStages[1]),
        .I1(rDlyLckd),
        .I2(aD1Enable),
        .O(\oSyncStages_reg[0]_2 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_15
   (out,
    AR,
    RefClk,
    D);
  output [0:0]out;
  output [0:0]AR;
  input RefClk;
  input [0:0]D;

  wire [0:0]AR;
  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  LUT1 #(
    .INIT(2'h1)) 
    \oSyncStages[1]_i_1__1 
       (.I0(oSyncStages[1]),
        .O(AR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_16
   (out,
    RefClk,
    AR,
    aD0ForceRxmode);
  output [0:0]out;
  input RefClk;
  input [0:0]AR;
  input aD0ForceRxmode;

  wire [0:0]AR;
  wire RefClk;
  wire aD0ForceRxmode;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(aD0ForceRxmode),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_17
   (out,
    cHSSettled_reg,
    \cDelayCnt_reg[6] ,
    \state_reg[1] ,
    \state_reg[0] ,
    \state_reg[2] ,
    cHSSettled_reg_0,
    RefClk,
    AR,
    rbD0RxValidHS);
  output [0:0]out;
  output cHSSettled_reg;
  input \cDelayCnt_reg[6] ;
  input \state_reg[1] ;
  input \state_reg[0] ;
  input \state_reg[2] ;
  input cHSSettled_reg_0;
  input RefClk;
  input [0:0]AR;
  input rbD0RxValidHS;

  wire [0:0]AR;
  wire RefClk;
  wire \cDelayCnt_reg[6] ;
  wire cHSSettled_reg;
  wire cHSSettled_reg_0;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire rbD0RxValidHS;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;

  assign out[0] = oSyncStages[1];
  LUT6 #(
    .INIT(64'hFFFFFFAF00030000)) 
    cHSSettled_i_1__0
       (.I0(oSyncStages[1]),
        .I1(\cDelayCnt_reg[6] ),
        .I2(\state_reg[1] ),
        .I3(\state_reg[0] ),
        .I4(\state_reg[2] ),
        .I5(cHSSettled_reg_0),
        .O(cHSSettled_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(rbD0RxValidHS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_19
   (out,
    RefClk,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]D;

  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_21
   (out,
    RefClk,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]D;

  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_28
   (out,
    RefClk,
    aLP);
  output [0:0]out;
  input RefClk;
  input [0:0]aLP;

  wire RefClk;
  wire [0:0]aLP;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(aLP),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_30
   (out,
    RefClk,
    aLP);
  output [0:0]out;
  input RefClk;
  input [0:0]aLP;

  wire RefClk;
  wire [0:0]aLP;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(aLP),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_31
   (out,
    SR,
    AR,
    Q,
    RefClk,
    D);
  output [0:0]out;
  output [0:0]SR;
  output [0:0]AR;
  input [3:0]Q;
  input RefClk;
  input [0:0]D;

  wire [0:0]AR;
  wire [0:0]D;
  wire [3:0]Q;
  wire RefClk;
  wire [0:0]SR;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \GenNoMMCM.cBUFR_Rst_i_1 
       (.I0(oSyncStages[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(AR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \state[3]_i_1 
       (.I0(oSyncStages[1]),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_32
   (out,
    D,
    clear,
    \Filter.sOut_reg ,
    \state_reg[1] ,
    \Filter.sOut_reg_0 ,
    Q,
    \state_reg[3] ,
    \state_reg[0] ,
    \Filter.sOut_reg_1 ,
    \state_reg[3]_0 ,
    \state_reg[3]_1 ,
    \Filter.sOut_reg_2 ,
    \Filter.sOut_reg_3 ,
    \state_reg[2] ,
    cHSClkLocked_q,
    RefClk,
    AR,
    aRxClkActiveHS);
  output [0:0]out;
  output [1:0]D;
  output clear;
  input \Filter.sOut_reg ;
  input \state_reg[1] ;
  input \Filter.sOut_reg_0 ;
  input [3:0]Q;
  input \state_reg[3] ;
  input \state_reg[0] ;
  input \Filter.sOut_reg_1 ;
  input \state_reg[3]_0 ;
  input \state_reg[3]_1 ;
  input [1:0]\Filter.sOut_reg_2 ;
  input \Filter.sOut_reg_3 ;
  input \state_reg[2] ;
  input cHSClkLocked_q;
  input RefClk;
  input [0:0]AR;
  input aRxClkActiveHS;

  wire [0:0]AR;
  wire [1:0]D;
  wire \Filter.sOut_reg ;
  wire \Filter.sOut_reg_0 ;
  wire \Filter.sOut_reg_1 ;
  wire [1:0]\Filter.sOut_reg_2 ;
  wire \Filter.sOut_reg_3 ;
  wire [3:0]Q;
  wire RefClk;
  wire aRxClkActiveHS;
  wire \cDelayCnt[0]_i_4__1_n_0 ;
  wire \cDelayCnt[0]_i_6_n_0 ;
  wire cHSClkLocked_q;
  wire clear;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \state[0]_i_5__1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire \state_reg[3] ;
  wire \state_reg[3]_0 ;
  wire \state_reg[3]_1 ;

  assign out[0] = oSyncStages[1];
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cDelayCnt[0]_i_1__1 
       (.I0(\cDelayCnt[0]_i_4__1_n_0 ),
        .I1(\state_reg[3] ),
        .I2(\cDelayCnt[0]_i_6_n_0 ),
        .I3(\state_reg[0] ),
        .O(clear));
  LUT6 #(
    .INIT(64'hFFFF000000001C10)) 
    \cDelayCnt[0]_i_4__1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\state[2]_i_4_n_0 ),
        .I4(\Filter.sOut_reg_1 ),
        .I5(Q[3]),
        .O(\cDelayCnt[0]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \cDelayCnt[0]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\Filter.sOut_reg_2 [1]),
        .I3(Q[0]),
        .I4(oSyncStages[1]),
        .I5(cHSClkLocked_q),
        .O(\cDelayCnt[0]_i_6_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(aRxClkActiveHS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAEAA)) 
    \state[0]_i_1 
       (.I0(\Filter.sOut_reg ),
        .I1(\state_reg[1] ),
        .I2(\Filter.sOut_reg_0 ),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\state[0]_i_5__1_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAFAEAEAAAAAEAE)) 
    \state[0]_i_5__1 
       (.I0(\state_reg[3]_0 ),
        .I1(\state[2]_i_4_n_0 ),
        .I2(\state_reg[3]_1 ),
        .I3(\Filter.sOut_reg_2 [0]),
        .I4(Q[1]),
        .I5(\Filter.sOut_reg_2 [1]),
        .O(\state[0]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'hABFFAAAA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\Filter.sOut_reg_2 [1]),
        .I3(\Filter.sOut_reg_2 [0]),
        .I4(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFFAEAE)) 
    \state[2]_i_2 
       (.I0(\Filter.sOut_reg_3 ),
        .I1(\state[2]_i_4_n_0 ),
        .I2(\state_reg[2] ),
        .I3(\state_reg[1] ),
        .I4(Q[0]),
        .I5(\Filter.sOut_reg_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_4 
       (.I0(cHSClkLocked_q),
        .I1(oSyncStages[1]),
        .O(\state[2]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_33
   (aRxClkActiveHS,
    AS,
    CLK,
    AR);
  output aRxClkActiveHS;
  output [0:0]AS;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]AS;
  wire CLK;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign aRxClkActiveHS = oSyncStages[1];
  LUT1 #(
    .INIT(2'h1)) 
    \oSyncStages[1]_i_1 
       (.I0(oSyncStages[1]),
        .O(AS));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(1'b1),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_4
   (out,
    AR,
    RefClk,
    D);
  output [0:0]out;
  output [0:0]AR;
  input RefClk;
  input [0:0]D;

  wire [0:0]AR;
  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  LUT1 #(
    .INIT(2'h1)) 
    \oSyncStages[1]_i_1__0 
       (.I0(oSyncStages[1]),
        .O(AR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_5
   (out,
    RefClk,
    AR,
    aD1ForceRxmode);
  output [0:0]out;
  input RefClk;
  input [0:0]AR;
  input aD1ForceRxmode;

  wire [0:0]AR;
  wire RefClk;
  wire aD1ForceRxmode;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(aD1ForceRxmode),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_6
   (out,
    cHSSettled_reg,
    \cDelayCnt_reg[6] ,
    \state_reg[1] ,
    \state_reg[0] ,
    \state_reg[2] ,
    cHSSettled,
    RefClk,
    AR,
    rbD1RxValidHS);
  output [0:0]out;
  output cHSSettled_reg;
  input \cDelayCnt_reg[6] ;
  input \state_reg[1] ;
  input \state_reg[0] ;
  input \state_reg[2] ;
  input cHSSettled;
  input RefClk;
  input [0:0]AR;
  input rbD1RxValidHS;

  wire [0:0]AR;
  wire RefClk;
  wire \cDelayCnt_reg[6] ;
  wire cHSSettled;
  wire cHSSettled_reg;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire rbD1RxValidHS;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire \state_reg[2] ;

  assign out[0] = oSyncStages[1];
  LUT6 #(
    .INIT(64'hFFFFFFAF00030000)) 
    cHSSettled_i_1
       (.I0(oSyncStages[1]),
        .I1(\cDelayCnt_reg[6] ),
        .I2(\state_reg[1] ),
        .I3(\state_reg[0] ),
        .I4(\state_reg[2] ),
        .I5(cHSSettled),
        .O(cHSSettled_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(rbD1RxValidHS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .CLR(AR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_7
   (out,
    RefClk,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]D;

  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_9
   (out,
    RefClk,
    D);
  output [0:0]out;
  input RefClk;
  input [0:0]D;

  wire [0:0]D;
  wire RefClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RefClk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RefClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1
   (dLogicRst_reg,
    CLK,
    cHSSettled,
    dSerdesRst_q,
    Q,
    dLogicRst);
  output dLogicRst_reg;
  input CLK;
  input cHSSettled;
  input dSerdesRst_q;
  input [0:0]Q;
  input dLogicRst;

  wire CLK;
  wire [0:0]Q;
  wire aReset0;
  wire cHSSettled;
  wire dLogicRst;
  wire dLogicRst_reg;
  wire dSerdesRst_q;
  (* async_reg = "true" *) wire oSyncStages;

  LUT4 #(
    .INIT(16'hBB0B)) 
    dLogicRst_i_1
       (.I0(dSerdesRst_q),
        .I1(oSyncStages),
        .I2(Q),
        .I3(dLogicRst),
        .O(dLogicRst_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \oSyncStages[0]_i_1__2 
       (.I0(cHSSettled),
        .O(aReset0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(aReset0),
        .D(1'b1),
        .Q(oSyncStages));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1_24
   (dLogicRst_reg,
    CLK,
    cHSSettled_reg,
    dSerdesRst_q,
    Q,
    dLogicRst);
  output dLogicRst_reg;
  input CLK;
  input cHSSettled_reg;
  input dSerdesRst_q;
  input [0:0]Q;
  input dLogicRst;

  wire CLK;
  wire [0:0]Q;
  wire cHSSettled_reg;
  wire dLogicRst;
  wire dLogicRst_reg;
  wire dSerdesRst_q;
  (* async_reg = "true" *) wire oSyncStages;
  wire \oSyncStages[0]_i_1__3_n_0 ;

  LUT4 #(
    .INIT(16'hBB0B)) 
    dLogicRst_i_1__0
       (.I0(dSerdesRst_q),
        .I1(oSyncStages),
        .I2(Q),
        .I3(dLogicRst),
        .O(dLogicRst_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \oSyncStages[0]_i_1__3 
       (.I0(cHSSettled_reg),
        .O(\oSyncStages[0]_i_1__3_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oSyncStages[0]_i_1__3_n_0 ),
        .D(1'b1),
        .Q(oSyncStages));
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
