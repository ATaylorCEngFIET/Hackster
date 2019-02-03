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

-- IP VLNV: digilentinc.com:ip:MIPI_CSI_2_RX:1.1
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_MIPI_CSI_2_RX_1_0 IS
  PORT (
    RxByteClkHS : IN STD_LOGIC;
    aClkStopstate : IN STD_LOGIC;
    aRxClkActiveHS : IN STD_LOGIC;
    RxDataHSD0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    RxSyncHSD0 : IN STD_LOGIC;
    RxValidHSD0 : IN STD_LOGIC;
    RxActiveHSD0 : IN STD_LOGIC;
    aD0Enable : OUT STD_LOGIC;
    RxDataHSD1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    RxSyncHSD1 : IN STD_LOGIC;
    RxValidHSD1 : IN STD_LOGIC;
    RxActiveHSD1 : IN STD_LOGIC;
    aD1Enable : OUT STD_LOGIC;
    RxDataHSD2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    RxSyncHSD2 : IN STD_LOGIC;
    RxValidHSD2 : IN STD_LOGIC;
    RxActiveHSD2 : IN STD_LOGIC;
    aD2Enable : OUT STD_LOGIC;
    RxDataHSD3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    RxSyncHSD3 : IN STD_LOGIC;
    RxValidHSD3 : IN STD_LOGIC;
    RxActiveHSD3 : IN STD_LOGIC;
    aD3Enable : OUT STD_LOGIC;
    aClkEnable : OUT STD_LOGIC;
    m_axis_video_tdata : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
    m_axis_video_tvalid : OUT STD_LOGIC;
    m_axis_video_tready : IN STD_LOGIC;
    m_axis_video_tlast : OUT STD_LOGIC;
    m_axis_video_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    video_aclk : IN STD_LOGIC;
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
END design_1_MIPI_CSI_2_RX_1_0;

ARCHITECTURE design_1_MIPI_CSI_2_RX_1_0_arch OF design_1_MIPI_CSI_2_RX_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_MIPI_CSI_2_RX_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mipi_csi2_rx_top IS
    GENERIC (
      C_S_AXI_LITE_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S_AXI_LITE_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      kVersionMajor : INTEGER;
      kVersionMinor : INTEGER;
      kTargetDT : STRING;
      kGenerateAXIL : BOOLEAN;
      kDebug : BOOLEAN;
      kLaneCount : INTEGER;
      C_M_AXIS_COMPONENT_WIDTH : INTEGER;
      C_M_AXIS_TDATA_WIDTH : INTEGER;
      C_M_MAX_SAMPLES_PER_CLOCK : INTEGER
    );
    PORT (
      RxByteClkHS : IN STD_LOGIC;
      aClkStopstate : IN STD_LOGIC;
      aRxClkActiveHS : IN STD_LOGIC;
      RxDataHSD0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      RxSyncHSD0 : IN STD_LOGIC;
      RxValidHSD0 : IN STD_LOGIC;
      RxActiveHSD0 : IN STD_LOGIC;
      aD0Enable : OUT STD_LOGIC;
      RxDataHSD1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      RxSyncHSD1 : IN STD_LOGIC;
      RxValidHSD1 : IN STD_LOGIC;
      RxActiveHSD1 : IN STD_LOGIC;
      aD1Enable : OUT STD_LOGIC;
      RxDataHSD2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      RxSyncHSD2 : IN STD_LOGIC;
      RxValidHSD2 : IN STD_LOGIC;
      RxActiveHSD2 : IN STD_LOGIC;
      aD2Enable : OUT STD_LOGIC;
      RxDataHSD3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      RxSyncHSD3 : IN STD_LOGIC;
      RxValidHSD3 : IN STD_LOGIC;
      RxActiveHSD3 : IN STD_LOGIC;
      aD3Enable : OUT STD_LOGIC;
      aClkEnable : OUT STD_LOGIC;
      m_axis_video_tdata : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      m_axis_video_tvalid : OUT STD_LOGIC;
      m_axis_video_tready : IN STD_LOGIC;
      m_axis_video_tlast : OUT STD_LOGIC;
      m_axis_video_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      video_aresetn : IN STD_LOGIC;
      video_aclk : IN STD_LOGIC;
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
  END COMPONENT mipi_csi2_rx_top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_MIPI_CSI_2_RX_1_0_arch: ARCHITECTURE IS "mipi_csi2_rx_top,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_MIPI_CSI_2_RX_1_0_arch : ARCHITECTURE IS "design_1_MIPI_CSI_2_RX_1_0,mipi_csi2_rx_top,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aresetn: SIGNAL IS "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aclk: SIGNAL IS "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF S_AXI_LITE, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2";
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
  ATTRIBUTE X_INTERFACE_PARAMETER OF video_aclk: SIGNAL IS "XIL_INTERFACENAME video_aclk, ASSOCIATED_RESET video_aresetn, ASSOCIATED_BUSIF m_axis_video, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF video_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 video_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_video_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF aClkEnable: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF aD3Enable: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF RxActiveHSD3: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXACTIVEHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxValidHSD3: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXVALIDHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxSyncHSD3: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXSYNCHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxDataHSD3: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXDATAHS";
  ATTRIBUTE X_INTERFACE_INFO OF aD2Enable: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF RxActiveHSD2: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXACTIVEHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxValidHSD2: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXVALIDHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxSyncHSD2: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXSYNCHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxDataHSD2: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXDATAHS";
  ATTRIBUTE X_INTERFACE_INFO OF aD1Enable: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF RxActiveHSD1: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXACTIVEHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxValidHSD1: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXVALIDHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxSyncHSD1: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXSYNCHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxDataHSD1: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXDATAHS";
  ATTRIBUTE X_INTERFACE_INFO OF aD0Enable: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_ENABLE";
  ATTRIBUTE X_INTERFACE_INFO OF RxActiveHSD0: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXACTIVEHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxValidHSD0: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXVALIDHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxSyncHSD0: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXSYNCHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxDataHSD0: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXDATAHS";
  ATTRIBUTE X_INTERFACE_INFO OF aRxClkActiveHS: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_RXCLKACTIVEHS";
  ATTRIBUTE X_INTERFACE_INFO OF aClkStopstate: SIGNAL IS "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_STOPSTATE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RxByteClkHS: SIGNAL IS "XIL_INTERFACENAME RxByteClkHS, ASSOCIATED_BUSIF rx_mipi_ppi, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN design_1_MIPI_D_PHY_RX_0_0_RxByteClkHS";
  ATTRIBUTE X_INTERFACE_INFO OF RxByteClkHS: SIGNAL IS "xilinx.com:signal:clock:1.0 RxByteClkHS CLK";
BEGIN
  U0 : mipi_csi2_rx_top
    GENERIC MAP (
      C_S_AXI_LITE_DATA_WIDTH => 32,
      C_S_AXI_LITE_ADDR_WIDTH => 4,
      kVersionMajor => 1,
      kVersionMinor => 1,
      kTargetDT => "RAW10",
      kGenerateAXIL => true,
      kDebug => false,
      kLaneCount => 2,
      C_M_AXIS_COMPONENT_WIDTH => 10,
      C_M_AXIS_TDATA_WIDTH => 40,
      C_M_MAX_SAMPLES_PER_CLOCK => 4
    )
    PORT MAP (
      RxByteClkHS => RxByteClkHS,
      aClkStopstate => aClkStopstate,
      aRxClkActiveHS => aRxClkActiveHS,
      RxDataHSD0 => RxDataHSD0,
      RxSyncHSD0 => RxSyncHSD0,
      RxValidHSD0 => RxValidHSD0,
      RxActiveHSD0 => RxActiveHSD0,
      aD0Enable => aD0Enable,
      RxDataHSD1 => RxDataHSD1,
      RxSyncHSD1 => RxSyncHSD1,
      RxValidHSD1 => RxValidHSD1,
      RxActiveHSD1 => RxActiveHSD1,
      aD1Enable => aD1Enable,
      RxDataHSD2 => RxDataHSD2,
      RxSyncHSD2 => RxSyncHSD2,
      RxValidHSD2 => RxValidHSD2,
      RxActiveHSD2 => RxActiveHSD2,
      aD2Enable => aD2Enable,
      RxDataHSD3 => RxDataHSD3,
      RxSyncHSD3 => RxSyncHSD3,
      RxValidHSD3 => RxValidHSD3,
      RxActiveHSD3 => RxActiveHSD3,
      aD3Enable => aD3Enable,
      aClkEnable => aClkEnable,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tuser => m_axis_video_tuser,
      video_aresetn => '1',
      video_aclk => video_aclk,
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
END design_1_MIPI_CSI_2_RX_1_0_arch;
