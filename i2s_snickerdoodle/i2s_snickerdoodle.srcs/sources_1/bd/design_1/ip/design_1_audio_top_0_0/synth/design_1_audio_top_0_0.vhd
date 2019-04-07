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

-- IP VLNV: adiuvo:hls:audio_top:1.0
-- IP Revision: 1904071400

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_audio_top_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    AudioA_TVALID : IN STD_LOGIC;
    AudioA_TREADY : OUT STD_LOGIC;
    AudioA_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    AudioA_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    AudioA_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    AudioA_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    AudioA_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    AudioA_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    AudioA_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    AudioB_TVALID : OUT STD_LOGIC;
    AudioB_TREADY : IN STD_LOGIC;
    AudioB_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    AudioB_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    AudioB_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    AudioB_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    AudioB_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    AudioB_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    AudioB_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_1_audio_top_0_0;

ARCHITECTURE design_1_audio_top_0_0_arch OF design_1_audio_top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_audio_top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT audio_top IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      AudioA_TVALID : IN STD_LOGIC;
      AudioA_TREADY : OUT STD_LOGIC;
      AudioA_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      AudioA_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      AudioA_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      AudioA_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      AudioA_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      AudioA_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      AudioA_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      AudioB_TVALID : OUT STD_LOGIC;
      AudioB_TREADY : IN STD_LOGIC;
      AudioB_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      AudioB_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      AudioB_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      AudioB_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      AudioB_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      AudioB_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      AudioB_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT audio_top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_audio_top_0_0_arch: ARCHITECTURE IS "audio_top,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_audio_top_0_0_arch : ARCHITECTURE IS "design_1_audio_top_0_0,audio_top,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_audio_top_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TID";
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF AudioB_TVALID: SIGNAL IS "XIL_INTERFACENAME AudioB, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_ty" & 
"pe immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} m" & 
"aximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP" & 
" 0";
  ATTRIBUTE X_INTERFACE_INFO OF AudioB_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioB TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TID";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF AudioA_TVALID: SIGNAL IS "XIL_INTERFACENAME AudioA, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF AudioA_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 AudioA TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_start: SIGNAL IS "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum " & 
"{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long" & 
" minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF AudioA:AudioB, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN d" & 
"esign_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : audio_top
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      AudioA_TVALID => AudioA_TVALID,
      AudioA_TREADY => AudioA_TREADY,
      AudioA_TDATA => AudioA_TDATA,
      AudioA_TDEST => AudioA_TDEST,
      AudioA_TKEEP => AudioA_TKEEP,
      AudioA_TSTRB => AudioA_TSTRB,
      AudioA_TUSER => AudioA_TUSER,
      AudioA_TLAST => AudioA_TLAST,
      AudioA_TID => AudioA_TID,
      AudioB_TVALID => AudioB_TVALID,
      AudioB_TREADY => AudioB_TREADY,
      AudioB_TDATA => AudioB_TDATA,
      AudioB_TDEST => AudioB_TDEST,
      AudioB_TKEEP => AudioB_TKEEP,
      AudioB_TSTRB => AudioB_TSTRB,
      AudioB_TUSER => AudioB_TUSER,
      AudioB_TLAST => AudioB_TLAST,
      AudioB_TID => AudioB_TID
    );
END design_1_audio_top_0_0_arch;
