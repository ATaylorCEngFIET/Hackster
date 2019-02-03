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

-- IP VLNV: digilentinc.com:ip:dvi2rgb:1.9
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_dvi2rgb_1_0 IS
  PORT (
    TMDS_Clk_p : IN STD_LOGIC;
    TMDS_Clk_n : IN STD_LOGIC;
    TMDS_Data_p : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    TMDS_Data_n : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    RefClk : IN STD_LOGIC;
    aRst_n : IN STD_LOGIC;
    vid_pData : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    vid_pVDE : OUT STD_LOGIC;
    vid_pHSync : OUT STD_LOGIC;
    vid_pVSync : OUT STD_LOGIC;
    PixelClk : OUT STD_LOGIC;
    aPixelClkLckd : OUT STD_LOGIC;
    SDA_I : IN STD_LOGIC;
    SDA_O : OUT STD_LOGIC;
    SDA_T : OUT STD_LOGIC;
    SCL_I : IN STD_LOGIC;
    SCL_O : OUT STD_LOGIC;
    SCL_T : OUT STD_LOGIC;
    pRst_n : IN STD_LOGIC
  );
END design_1_dvi2rgb_1_0;

ARCHITECTURE design_1_dvi2rgb_1_0_arch OF design_1_dvi2rgb_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_dvi2rgb_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT dvi2rgb IS
    GENERIC (
      kEmulateDDC : BOOLEAN;
      kRstActiveHigh : BOOLEAN;
      kClkRange : INTEGER;
      kIDLY_TapValuePs : INTEGER;
      kIDLY_TapWidth : INTEGER;
      kAddBUFG : BOOLEAN;
      kEdidFileName : STRING;
      kDebug : BOOLEAN
    );
    PORT (
      TMDS_Clk_p : IN STD_LOGIC;
      TMDS_Clk_n : IN STD_LOGIC;
      TMDS_Data_p : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      TMDS_Data_n : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      RefClk : IN STD_LOGIC;
      aRst : IN STD_LOGIC;
      aRst_n : IN STD_LOGIC;
      vid_pData : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      vid_pVDE : OUT STD_LOGIC;
      vid_pHSync : OUT STD_LOGIC;
      vid_pVSync : OUT STD_LOGIC;
      PixelClk : OUT STD_LOGIC;
      SerialClk : OUT STD_LOGIC;
      aPixelClkLckd : OUT STD_LOGIC;
      SDA_I : IN STD_LOGIC;
      SDA_O : OUT STD_LOGIC;
      SDA_T : OUT STD_LOGIC;
      SCL_I : IN STD_LOGIC;
      SCL_O : OUT STD_LOGIC;
      SCL_T : OUT STD_LOGIC;
      pRst : IN STD_LOGIC;
      pRst_n : IN STD_LOGIC
    );
  END COMPONENT dvi2rgb;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_dvi2rgb_1_0_arch: ARCHITECTURE IS "dvi2rgb,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_dvi2rgb_1_0_arch : ARCHITECTURE IS "design_1_dvi2rgb_1_0,dvi2rgb,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF pRst_n: SIGNAL IS "XIL_INTERFACENAME SyncRst_n, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF pRst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 SyncRst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF SCL_T: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC SCL_T";
  ATTRIBUTE X_INTERFACE_INFO OF SCL_O: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC SCL_O";
  ATTRIBUTE X_INTERFACE_INFO OF SCL_I: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC SCL_I";
  ATTRIBUTE X_INTERFACE_INFO OF SDA_T: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC SDA_T";
  ATTRIBUTE X_INTERFACE_INFO OF SDA_O: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC SDA_O";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SDA_I: SIGNAL IS "XIL_INTERFACENAME DDC, BOARD.ASSOCIATED_PARAM IIC_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF SDA_I: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC SDA_I";
  ATTRIBUTE X_INTERFACE_PARAMETER OF PixelClk: SIGNAL IS "XIL_INTERFACENAME PixelClk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_dvi2rgb_1_0_PixelClk";
  ATTRIBUTE X_INTERFACE_INFO OF PixelClk: SIGNAL IS "xilinx.com:signal:clock:1.0 PixelClk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pVSync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB VSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pHSync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pVDE: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO";
  ATTRIBUTE X_INTERFACE_INFO OF vid_pData: SIGNAL IS "xilinx.com:interface:vid_io:1.0 RGB DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aRst_n: SIGNAL IS "XIL_INTERFACENAME AsyncRst_n, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF aRst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 AsyncRst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RefClk: SIGNAL IS "XIL_INTERFACENAME RefClk, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF RefClk: SIGNAL IS "xilinx.com:signal:clock:1.0 RefClk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF TMDS_Data_n: SIGNAL IS "digilentinc.com:interface:tmds:1.0 TMDS DATA_N";
  ATTRIBUTE X_INTERFACE_INFO OF TMDS_Data_p: SIGNAL IS "digilentinc.com:interface:tmds:1.0 TMDS DATA_P";
  ATTRIBUTE X_INTERFACE_PARAMETER OF TMDS_Clk_n: SIGNAL IS "XIL_INTERFACENAME TMDS_Clk_n, ASSOCIATED_RESET aRst_n, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF TMDS_Clk_n: SIGNAL IS "digilentinc.com:interface:tmds:1.0 TMDS CLK_N, xilinx.com:signal:clock:1.0 TMDS_Clk_n CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF TMDS_Clk_p: SIGNAL IS "XIL_INTERFACENAME TMDS, BOARD.ASSOCIATED_PARAM TMDS_BOARD_INTERFACE, XIL_INTERFACENAME TMDS_Clk_p, ASSOCIATED_RESET pRst, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF TMDS_Clk_p: SIGNAL IS "digilentinc.com:interface:tmds:1.0 TMDS CLK_P, xilinx.com:signal:clock:1.0 TMDS_Clk_p CLK";
BEGIN
  U0 : dvi2rgb
    GENERIC MAP (
      kEmulateDDC => true,
      kRstActiveHigh => false,
      kClkRange => 1,
      kIDLY_TapValuePs => 78,
      kIDLY_TapWidth => 5,
      kAddBUFG => false,
      kEdidFileName => "dgl_720p_cea.data",
      kDebug => false
    )
    PORT MAP (
      TMDS_Clk_p => TMDS_Clk_p,
      TMDS_Clk_n => TMDS_Clk_n,
      TMDS_Data_p => TMDS_Data_p,
      TMDS_Data_n => TMDS_Data_n,
      RefClk => RefClk,
      aRst => '0',
      aRst_n => aRst_n,
      vid_pData => vid_pData,
      vid_pVDE => vid_pVDE,
      vid_pHSync => vid_pHSync,
      vid_pVSync => vid_pVSync,
      PixelClk => PixelClk,
      aPixelClkLckd => aPixelClkLckd,
      SDA_I => SDA_I,
      SDA_O => SDA_O,
      SDA_T => SDA_T,
      SCL_I => SCL_I,
      SCL_O => SCL_O,
      SCL_T => SCL_T,
      pRst => '0',
      pRst_n => pRst_n
    );
END design_1_dvi2rgb_1_0_arch;
