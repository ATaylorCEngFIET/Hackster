-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: avnet.com:ip:zed_ali3_controller:1.7
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_zed_ali3_controller_0_0 IS
  PORT (
    reset_in : IN STD_LOGIC;
    clk_in : IN STD_LOGIC;
    pll_locked : OUT STD_LOGIC;
    reset_out : OUT STD_LOGIC;
    clk_out : OUT STD_LOGIC;
    video_de : IN STD_LOGIC;
    video_vsync : IN STD_LOGIC;
    video_hsync : IN STD_LOGIC;
    video_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ALI_RST_N : OUT STD_LOGIC;
    ALI_CLK_N : OUT STD_LOGIC;
    ALI_CLK_P : OUT STD_LOGIC;
    ALI_DATA_N : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ALI_DATA_P : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END design_1_zed_ali3_controller_0_0;

ARCHITECTURE design_1_zed_ali3_controller_0_0_arch OF design_1_zed_ali3_controller_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_zed_ali3_controller_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT zed_ali3_controller IS
    GENERIC (
      C_PIXEL_CLOCK_RATE : INTEGER;
      C_FAMILY : STRING
    );
    PORT (
      reset_in : IN STD_LOGIC;
      clk_in : IN STD_LOGIC;
      pll_locked : OUT STD_LOGIC;
      reset_out : OUT STD_LOGIC;
      clk_out : OUT STD_LOGIC;
      video_de : IN STD_LOGIC;
      video_vsync : IN STD_LOGIC;
      video_hsync : IN STD_LOGIC;
      video_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ALI_RST_N : OUT STD_LOGIC;
      ALI_CLK_N : OUT STD_LOGIC;
      ALI_CLK_P : OUT STD_LOGIC;
      ALI_DATA_N : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ALI_DATA_P : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT zed_ali3_controller;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_zed_ali3_controller_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ALI_DATA_P: SIGNAL IS "avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_DATA_P";
  ATTRIBUTE X_INTERFACE_INFO OF ALI_DATA_N: SIGNAL IS "avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_DATA_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ALI_CLK_P: SIGNAL IS "XIL_INTERFACENAME ALI_CLK_P, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF ALI_CLK_P: SIGNAL IS "xilinx.com:signal:clock:1.0 ALI_CLK_P CLK, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_CLK_P";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ALI_CLK_N: SIGNAL IS "XIL_INTERFACENAME ALI_CLK_N, ASSOCIATED_RESET ALI_RST_N, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF ALI_CLK_N: SIGNAL IS "xilinx.com:signal:clock:1.0 ALI_CLK_N CLK, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_CLK_N";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ALI_RST_N: SIGNAL IS "XIL_INTERFACENAME ALI_RST_N, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF ALI_RST_N: SIGNAL IS "xilinx.com:signal:reset:1.0 ALI_RST_N RST, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_RST_N";
  ATTRIBUTE X_INTERFACE_INFO OF video_data: SIGNAL IS "xilinx.com:interface:vid_io:1.0 VID_IO_IN DATA";
  ATTRIBUTE X_INTERFACE_INFO OF video_hsync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 VID_IO_IN HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF video_vsync: SIGNAL IS "xilinx.com:interface:vid_io:1.0 VID_IO_IN VSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF video_de: SIGNAL IS "xilinx.com:interface:vid_io:1.0 VID_IO_IN ACTIVE_VIDEO";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_out: SIGNAL IS "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF reset_out: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_out RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_in: SIGNAL IS "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF reset_in: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_in RST";
BEGIN
  U0 : zed_ali3_controller
    GENERIC MAP (
      C_PIXEL_CLOCK_RATE => 0,
      C_FAMILY => "spartan7"
    )
    PORT MAP (
      reset_in => reset_in,
      clk_in => clk_in,
      pll_locked => pll_locked,
      reset_out => reset_out,
      clk_out => clk_out,
      video_de => video_de,
      video_vsync => video_vsync,
      video_hsync => video_hsync,
      video_data => video_data,
      ALI_RST_N => ALI_RST_N,
      ALI_CLK_N => ALI_CLK_N,
      ALI_CLK_P => ALI_CLK_P,
      ALI_DATA_N => ALI_DATA_N,
      ALI_DATA_P => ALI_DATA_P
    );
END design_1_zed_ali3_controller_0_0_arch;
