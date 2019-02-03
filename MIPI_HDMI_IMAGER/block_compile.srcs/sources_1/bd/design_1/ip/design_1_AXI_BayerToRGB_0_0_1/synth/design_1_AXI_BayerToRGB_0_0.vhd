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

-- IP VLNV: digilentinc.com:user:AXI_BayerToRGB:1.0
-- IP Revision: 13

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_AXI_BayerToRGB_0_0 IS
  PORT (
    StreamClk : IN STD_LOGIC;
    sStreamReset_n : IN STD_LOGIC;
    s_axis_video_tready : OUT STD_LOGIC;
    s_axis_video_tdata : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    s_axis_video_tvalid : IN STD_LOGIC;
    s_axis_video_tuser : IN STD_LOGIC;
    s_axis_video_tlast : IN STD_LOGIC;
    m_axis_video_tready : IN STD_LOGIC;
    m_axis_video_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_video_tvalid : OUT STD_LOGIC;
    m_axis_video_tuser : OUT STD_LOGIC;
    m_axis_video_tlast : OUT STD_LOGIC
  );
END design_1_AXI_BayerToRGB_0_0;

ARCHITECTURE design_1_AXI_BayerToRGB_0_0_arch OF design_1_AXI_BayerToRGB_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_AXI_BayerToRGB_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AXI_BayerToRGB IS
    GENERIC (
      kBayerWidth : INTEGER;
      kMaxSamplesPerClock : INTEGER;
      kAXI_InputDataWidth : INTEGER;
      kAXI_OutputDataWidth : INTEGER
    );
    PORT (
      StreamClk : IN STD_LOGIC;
      sStreamReset_n : IN STD_LOGIC;
      s_axis_video_tready : OUT STD_LOGIC;
      s_axis_video_tdata : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
      s_axis_video_tvalid : IN STD_LOGIC;
      s_axis_video_tuser : IN STD_LOGIC;
      s_axis_video_tlast : IN STD_LOGIC;
      m_axis_video_tready : IN STD_LOGIC;
      m_axis_video_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_video_tvalid : OUT STD_LOGIC;
      m_axis_video_tuser : OUT STD_LOGIC;
      m_axis_video_tlast : OUT STD_LOGIC
    );
  END COMPONENT AXI_BayerToRGB;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_AXI_BayerToRGB_0_0_arch: ARCHITECTURE IS "AXI_BayerToRGB,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_AXI_BayerToRGB_0_0_arch : ARCHITECTURE IS "design_1_AXI_BayerToRGB_0_0,AXI_BayerToRGB,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_video_tready: SIGNAL IS "XIL_INTERFACENAME AXI_Stream_Master, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_video_tready: SIGNAL IS "XIL_INTERFACENAME AXI_Slave_Interface, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF sStreamReset_n: SIGNAL IS "XIL_INTERFACENAME AXI_Stream_Reset_n, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF sStreamReset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 AXI_Stream_Reset_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF StreamClk: SIGNAL IS "XIL_INTERFACENAME AXI_Stream_Clk, ASSOCIATED_BUSIF AXI_Stream_Master:AXI_Slave_Interface, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF StreamClk: SIGNAL IS "xilinx.com:signal:clock:1.0 AXI_Stream_Clk CLK";
BEGIN
  U0 : AXI_BayerToRGB
    GENERIC MAP (
      kBayerWidth => 10,
      kMaxSamplesPerClock => 4,
      kAXI_InputDataWidth => 40,
      kAXI_OutputDataWidth => 32
    )
    PORT MAP (
      StreamClk => StreamClk,
      sStreamReset_n => sStreamReset_n,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tlast => s_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tlast => m_axis_video_tlast
    );
END design_1_AXI_BayerToRGB_0_0_arch;
