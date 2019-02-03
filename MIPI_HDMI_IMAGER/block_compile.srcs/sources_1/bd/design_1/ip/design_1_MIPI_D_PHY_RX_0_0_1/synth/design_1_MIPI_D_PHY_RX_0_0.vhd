-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: digilentinc.com:ip:MIPI_D_PHY_RX:1.2
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_MIPI_D_PHY_RX_0_0 IS
  PORT (
    dphy_clk_hs_p : IN STD_LOGIC;
    dphy_clk_hs_n : IN STD_LOGIC;
    dphy_clk_lp_p : IN STD_LOGIC;
    dphy_clk_lp_n : IN STD_LOGIC;
    dphy_data_hs_p : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dphy_data_hs_n : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dphy_data_lp_p : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dphy_data_lp_n : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    RefClk : IN STD_LOGIC;
    aRst : IN STD_LOGIC;
    RxDDRClkHS : OUT STD_LOGIC;
    aRxClkActiveHS : OUT STD_LOGIC;
    aClkStopstate : OUT STD_LOGIC;
    aClkEnable : IN STD_LOGIC;
    aClkUlpsActiveNot : OUT STD_LOGIC;
    aRxUlpsClkNot : OUT STD_LOGIC;
    aClkForceRxmode : IN STD_LOGIC;
    aClkErrControl : OUT STD_LOGIC;
    RxByteClkHS : OUT STD_LOGIC;
    aD0Stopstate : OUT STD_LOGIC;
    aD0Enable : IN STD_LOGIC;
    aD0UlpsActiveNot : OUT STD_LOGIC;
    rbD0RxDataHS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rbD0RxValidHS : OUT STD_LOGIC;
    rbD0RxActiveHS : OUT STD_LOGIC;
    rbD0RxSyncHS : OUT STD_LOGIC;
    rbD0ErrSotHS : OUT STD_LOGIC;
    rbD0ErrSotSyncHS : OUT STD_LOGIC;
    aD0ForceRxmode : IN STD_LOGIC;
    D0RxClkEsc : OUT STD_LOGIC;
    aD0RxDataEsc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    aD0RxValidEsc : OUT STD_LOGIC;
    aD0RxLpdtEsc : OUT STD_LOGIC;
    aD0RxUlpsEsc : OUT STD_LOGIC;
    aD0RxTriggerEsc : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    aD0ErrEsc : OUT STD_LOGIC;
    aD0ErrControl : OUT STD_LOGIC;
    aD1Stopstate : OUT STD_LOGIC;
    aD1Enable : IN STD_LOGIC;
    aD1UlpsActiveNot : OUT STD_LOGIC;
    rbD1RxDataHS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rbD1RxValidHS : OUT STD_LOGIC;
    rbD1RxActiveHS : OUT STD_LOGIC;
    rbD1RxSyncHS : OUT STD_LOGIC;
    rbD1ErrSotHS : OUT STD_LOGIC;
    rbD1ErrSotSyncHS : OUT STD_LOGIC;
    aD1ForceRxmode : IN STD_LOGIC;
    D1RxClkEsc : OUT STD_LOGIC;
    aD1RxDataEsc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    aD1RxValidEsc : OUT STD_LOGIC;
    aD1RxLpdtEsc : OUT STD_LOGIC;
    aD1RxUlpsEsc : OUT STD_LOGIC;
    aD1RxTriggerEsc : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    aD1ErrEsc : OUT STD_LOGIC;
    aD1ErrControl : OUT STD_LOGIC;
    s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_awvalid : IN STD_LOGIC;
    s_axi_lite_awready : OUT STD_LOGIC;
    s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_wvalid : IN STD_LOGIC;
    s_axi_lite_wready : OUT STD_LOGIC;
    s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_bvalid : OUT STD_LOGIC;
    s_axi_lite_bready : IN STD_LOGIC;
    s_axi_lite_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_arvalid : IN STD_LOGIC;
    s_axi_lite_arready : OUT STD_LOGIC;
    s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_rvalid : OUT STD_LOGIC;
    s_axi_lite_rready : IN STD_LOGIC;
    s_axi_lite_aclk : IN STD_LOGIC;
    s_axi_lite_aresetn : IN STD_LOGIC
  );
END design_1_MIPI_D_PHY_RX_0_0;

ARCHITECTURE design_1_MIPI_D_PHY_RX_0_0_arch OF design_1_MIPI_D_PHY_RX_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_MIPI_D_PHY_RX_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT MIPI_DPHY_Receiver IS
    GENERIC (
      C_S_AXI_LITE_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S_AXI_LITE_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      kVersionMajor : INTEGER;
      kVersionMinor : INTEGER;
      kNoOfDataLanes : INTEGER;
      kGenerateMMCM : BOOLEAN;
      kGenerateAXIL : BOOLEAN;
      kAddDelayClk_ps : INTEGER;
      kAddDelayData0_ps : INTEGER;
      kAddDelayData1_ps : INTEGER;
      kRefClkFreqHz : INTEGER;
      kDebug : BOOLEAN;
      C_S_AXI_LITE_FREQ_HZ : INTEGER;
      kLPFromLane0 : BOOLEAN
    );
    PORT (
      dphy_clk_hs_p : IN STD_LOGIC;
      dphy_clk_hs_n : IN STD_LOGIC;
      dphy_clk_lp_p : IN STD_LOGIC;
      dphy_clk_lp_n : IN STD_LOGIC;
      dphy_data_hs_p : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      dphy_data_hs_n : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      dphy_data_lp_p : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      dphy_data_lp_n : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      RefClk : IN STD_LOGIC;
      aRst : IN STD_LOGIC;
      RxDDRClkHS : OUT STD_LOGIC;
      aRxClkActiveHS : OUT STD_LOGIC;
      aClkStopstate : OUT STD_LOGIC;
      aClkEnable : IN STD_LOGIC;
      aClkUlpsActiveNot : OUT STD_LOGIC;
      aRxUlpsClkNot : OUT STD_LOGIC;
      aClkForceRxmode : IN STD_LOGIC;
      aClkErrControl : OUT STD_LOGIC;
      RxByteClkHS : OUT STD_LOGIC;
      aD0Stopstate : OUT STD_LOGIC;
      aD0Enable : IN STD_LOGIC;
      aD0UlpsActiveNot : OUT STD_LOGIC;
      rbD0RxDataHS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rbD0RxValidHS : OUT STD_LOGIC;
      rbD0RxActiveHS : OUT STD_LOGIC;
      rbD0RxSyncHS : OUT STD_LOGIC;
      rbD0ErrSotHS : OUT STD_LOGIC;
      rbD0ErrSotSyncHS : OUT STD_LOGIC;
      aD0ForceRxmode : IN STD_LOGIC;
      D0RxClkEsc : OUT STD_LOGIC;
      aD0RxDataEsc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      aD0RxValidEsc : OUT STD_LOGIC;
      aD0RxLpdtEsc : OUT STD_LOGIC;
      aD0RxUlpsEsc : OUT STD_LOGIC;
      aD0RxTriggerEsc : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      aD0ErrEsc : OUT STD_LOGIC;
      aD0ErrControl : OUT STD_LOGIC;
      aD1Stopstate : OUT STD_LOGIC;
      aD1Enable : IN STD_LOGIC;
      aD1UlpsActiveNot : OUT STD_LOGIC;
      rbD1RxDataHS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rbD1RxValidHS : OUT STD_LOGIC;
      rbD1RxActiveHS : OUT STD_LOGIC;
      rbD1RxSyncHS : OUT STD_LOGIC;
      rbD1ErrSotHS : OUT STD_LOGIC;
      rbD1ErrSotSyncHS : OUT STD_LOGIC;
      aD1ForceRxmode : IN STD_LOGIC;
      D1RxClkEsc : OUT STD_LOGIC;
      aD1RxDataEsc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      aD1RxValidEsc : OUT STD_LOGIC;
      aD1RxLpdtEsc : OUT STD_LOGIC;
      aD1RxUlpsEsc : OUT STD_LOGIC;
      aD1RxTriggerEsc : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      aD1ErrEsc : OUT STD_LOGIC;
      aD1ErrControl : OUT STD_LOGIC;
      s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lite_awvalid : IN STD_LOGIC;
      s_axi_lite_awready : OUT STD_LOGIC;
      s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lite_wvalid : IN STD_LOGIC;
      s_axi_lite_wready : OUT STD_LOGIC;
      s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_bvalid : OUT STD_LOGIC;
      s_axi_lite_bready : IN STD_LOGIC;
      s_axi_lite_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lite_arvalid : IN STD_LOGIC;
      s_axi_lite_arready : OUT STD_LOGIC;
      s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_rvalid : OUT STD_LOGIC;
      s_axi_lite_rready : IN STD_LOGIC;
      s_axi_lite_aclk : IN STD_LOGIC;
      s_axi_lite_aresetn : IN STD_LOGIC
    );
  END COMPONENT MIPI_DPHY_Receiver;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_MIPI_D_PHY_RX_0_0_arch: ARCHITECTURE IS "MIPI_DPHY_Receiver,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_MIPI_D_PHY_RX_0_0_arch : ARCHITECTURE IS "design_1_MIPI_D_PHY_RX_0_0,MIPI_DPHY_Receiver,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aresetn: SIGNAL IS "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aclk: SIGNAL IS "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_RESET s_axi_lite_aresetn, ASSOCIATED_BUSIF S_AXI_LITE, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_awaddr: SIGNAL IS "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF aD1ErrControl: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRCONTROL";
  ATTRIBUTE X_INTERFACE_INFO OF aD1ErrEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD1RxTriggerEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXTRIGGERESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD1RxUlpsEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXULPSESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD1RxLpdtEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXLPDTESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD1RxValidEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXVALIDESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD1RxDataEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXDATAESC";
  ATTRIBUTE X_INTERFACE_INFO OF D1RxClkEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXCLKESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD1ForceRxmode: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_FORCERXMODE";
  ATTRIBUTE X_INTERFACE_INFO OF rbD1ErrSotSyncHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRSOTSYNCHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD1ErrSotHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRSOTHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD1RxSyncHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXSYNCHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD1RxActiveHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXACTIVEHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD1RxValidHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXVALIDHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD1RxDataHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXDATAHS";
  ATTRIBUTE X_INTERFACE_INFO OF aD1UlpsActiveNot: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ULPSACTIVENOT";
  ATTRIBUTE X_INTERFACE_INFO OF aD1Enable: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF aD1Stopstate: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_STOPSTATE";
  ATTRIBUTE X_INTERFACE_INFO OF aD0ErrControl: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRCONTROL";
  ATTRIBUTE X_INTERFACE_INFO OF aD0ErrEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD0RxTriggerEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXTRIGGERESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD0RxUlpsEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXULPSESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD0RxLpdtEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXLPDTESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD0RxValidEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXVALIDESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD0RxDataEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXDATAESC";
  ATTRIBUTE X_INTERFACE_INFO OF D0RxClkEsc: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXCLKESC";
  ATTRIBUTE X_INTERFACE_INFO OF aD0ForceRxmode: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_FORCERXMODE";
  ATTRIBUTE X_INTERFACE_INFO OF rbD0ErrSotSyncHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRSOTSYNCHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD0ErrSotHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRSOTHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD0RxSyncHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXSYNCHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD0RxActiveHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXACTIVEHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD0RxValidHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXVALIDHS";
  ATTRIBUTE X_INTERFACE_INFO OF rbD0RxDataHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXDATAHS";
  ATTRIBUTE X_INTERFACE_INFO OF aD0UlpsActiveNot: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ULPSACTIVENOT";
  ATTRIBUTE X_INTERFACE_INFO OF aD0Enable: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF aD0Stopstate: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_STOPSTATE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RxByteClkHS: SIGNAL IS "XIL_INTERFACENAME RxByteClkHS, FREQ_HZ 25000000, ASSOCIATED_BUSIF D_PHY_PPI, PHASE 0.000, CLK_DOMAIN design_1_MIPI_D_PHY_RX_0_0_RxByteClkHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxByteClkHS: SIGNAL IS "xilinx.com:signal:clock:1.0 RxByteClkHS CLK";
  ATTRIBUTE X_INTERFACE_INFO OF aRxUlpsClkNot: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_RXULPSCLKNOT";
  ATTRIBUTE X_INTERFACE_INFO OF aClkUlpsActiveNot: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_ULPSACTIVENOT";
  ATTRIBUTE X_INTERFACE_INFO OF aClkEnable: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF aClkStopstate: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_STOPSTATE";
  ATTRIBUTE X_INTERFACE_INFO OF aRxClkActiveHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_RXCLKACTIVEHS";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aRst: SIGNAL IS "XIL_INTERFACENAME aRst, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF aRst: SIGNAL IS "xilinx.com:signal:reset:1.0 aRst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RefClk: SIGNAL IS "XIL_INTERFACENAME RefClk, ASSOCIATED_RESET aRst, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF RefClk: SIGNAL IS "xilinx.com:signal:clock:1.0 RefClk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF dphy_clk_hs_n: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dphy_clk_hs_p: SIGNAL IS "XIL_INTERFACENAME dphy_hs_clock, CAN_DEBUG false, FREQ_HZ 100000000";
  ATTRIBUTE X_INTERFACE_INFO OF dphy_clk_hs_p: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_P";
BEGIN
  U0 : MIPI_DPHY_Receiver
    GENERIC MAP (
      C_S_AXI_LITE_DATA_WIDTH => 32,
      C_S_AXI_LITE_ADDR_WIDTH => 4,
      kVersionMajor => 1,
      kVersionMinor => 2,
      kNoOfDataLanes => 2,
      kGenerateMMCM => false,
      kGenerateAXIL => true,
      kAddDelayClk_ps => 0,
      kAddDelayData0_ps => 0,
      kAddDelayData1_ps => 0,
      kRefClkFreqHz => 200000000,
      kDebug => false,
      C_S_AXI_LITE_FREQ_HZ => 100000000,
      kLPFromLane0 => false
    )
    PORT MAP (
      dphy_clk_hs_p => dphy_clk_hs_p,
      dphy_clk_hs_n => dphy_clk_hs_n,
      dphy_clk_lp_p => dphy_clk_lp_p,
      dphy_clk_lp_n => dphy_clk_lp_n,
      dphy_data_hs_p => dphy_data_hs_p,
      dphy_data_hs_n => dphy_data_hs_n,
      dphy_data_lp_p => dphy_data_lp_p,
      dphy_data_lp_n => dphy_data_lp_n,
      RefClk => RefClk,
      aRst => aRst,
      RxDDRClkHS => RxDDRClkHS,
      aRxClkActiveHS => aRxClkActiveHS,
      aClkStopstate => aClkStopstate,
      aClkEnable => aClkEnable,
      aClkUlpsActiveNot => aClkUlpsActiveNot,
      aRxUlpsClkNot => aRxUlpsClkNot,
      aClkForceRxmode => aClkForceRxmode,
      aClkErrControl => aClkErrControl,
      RxByteClkHS => RxByteClkHS,
      aD0Stopstate => aD0Stopstate,
      aD0Enable => aD0Enable,
      aD0UlpsActiveNot => aD0UlpsActiveNot,
      rbD0RxDataHS => rbD0RxDataHS,
      rbD0RxValidHS => rbD0RxValidHS,
      rbD0RxActiveHS => rbD0RxActiveHS,
      rbD0RxSyncHS => rbD0RxSyncHS,
      rbD0ErrSotHS => rbD0ErrSotHS,
      rbD0ErrSotSyncHS => rbD0ErrSotSyncHS,
      aD0ForceRxmode => aD0ForceRxmode,
      D0RxClkEsc => D0RxClkEsc,
      aD0RxDataEsc => aD0RxDataEsc,
      aD0RxValidEsc => aD0RxValidEsc,
      aD0RxLpdtEsc => aD0RxLpdtEsc,
      aD0RxUlpsEsc => aD0RxUlpsEsc,
      aD0RxTriggerEsc => aD0RxTriggerEsc,
      aD0ErrEsc => aD0ErrEsc,
      aD0ErrControl => aD0ErrControl,
      aD1Stopstate => aD1Stopstate,
      aD1Enable => aD1Enable,
      aD1UlpsActiveNot => aD1UlpsActiveNot,
      rbD1RxDataHS => rbD1RxDataHS,
      rbD1RxValidHS => rbD1RxValidHS,
      rbD1RxActiveHS => rbD1RxActiveHS,
      rbD1RxSyncHS => rbD1RxSyncHS,
      rbD1ErrSotHS => rbD1ErrSotHS,
      rbD1ErrSotSyncHS => rbD1ErrSotSyncHS,
      aD1ForceRxmode => aD1ForceRxmode,
      D1RxClkEsc => D1RxClkEsc,
      aD1RxDataEsc => aD1RxDataEsc,
      aD1RxValidEsc => aD1RxValidEsc,
      aD1RxLpdtEsc => aD1RxLpdtEsc,
      aD1RxUlpsEsc => aD1RxUlpsEsc,
      aD1RxTriggerEsc => aD1RxTriggerEsc,
      aD1ErrEsc => aD1ErrEsc,
      aD1ErrControl => aD1ErrControl,
      s_axi_lite_awaddr => s_axi_lite_awaddr,
      s_axi_lite_awprot => s_axi_lite_awprot,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_wdata => s_axi_lite_wdata,
      s_axi_lite_wstrb => s_axi_lite_wstrb,
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_bresp => s_axi_lite_bresp,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_araddr => s_axi_lite_araddr,
      s_axi_lite_arprot => s_axi_lite_arprot,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_rdata => s_axi_lite_rdata,
      s_axi_lite_rresp => s_axi_lite_rresp,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_aresetn => s_axi_lite_aresetn
    );
END design_1_MIPI_D_PHY_RX_0_0_arch;
