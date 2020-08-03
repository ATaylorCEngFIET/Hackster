-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:ip:v_tc:6.1
-- IP Revision: 10

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY v_tc_v6_1_10;
USE v_tc_v6_1_10.v_tc;

ENTITY design_1_v_tc_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    clken : IN STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aclken : IN STD_LOGIC;
    det_clken : IN STD_LOGIC;
    intc_if : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    hsync_in : IN STD_LOGIC;
    vsync_in : IN STD_LOGIC;
    active_video_in : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    irq : OUT STD_LOGIC
  );
END design_1_v_tc_0_0;

ARCHITECTURE design_1_v_tc_0_0_arch OF design_1_v_tc_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_v_tc_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT v_tc IS
    GENERIC (
      C_HAS_AXI4_LITE : INTEGER;
      C_HAS_INTC_IF : INTEGER;
      C_GEN_INTERLACED : INTEGER;
      C_GEN_HACTIVE_SIZE : INTEGER;
      C_GEN_VACTIVE_SIZE : INTEGER;
      C_GEN_CPARITY : INTEGER;
      C_GEN_FIELDID_POLARITY : INTEGER;
      C_GEN_VBLANK_POLARITY : INTEGER;
      C_GEN_HBLANK_POLARITY : INTEGER;
      C_GEN_VSYNC_POLARITY : INTEGER;
      C_GEN_HSYNC_POLARITY : INTEGER;
      C_GEN_AVIDEO_POLARITY : INTEGER;
      C_GEN_ACHROMA_POLARITY : INTEGER;
      C_GEN_VIDEO_FORMAT : INTEGER;
      C_GEN_HFRAME_SIZE : INTEGER;
      C_GEN_F0_VFRAME_SIZE : INTEGER;
      C_GEN_F1_VFRAME_SIZE : INTEGER;
      C_GEN_HSYNC_START : INTEGER;
      C_GEN_HSYNC_END : INTEGER;
      C_GEN_F0_VBLANK_HSTART : INTEGER;
      C_GEN_F0_VBLANK_HEND : INTEGER;
      C_GEN_F0_VSYNC_VSTART : INTEGER;
      C_GEN_F0_VSYNC_VEND : INTEGER;
      C_GEN_F0_VSYNC_HSTART : INTEGER;
      C_GEN_F0_VSYNC_HEND : INTEGER;
      C_GEN_F1_VBLANK_HSTART : INTEGER;
      C_GEN_F1_VBLANK_HEND : INTEGER;
      C_GEN_F1_VSYNC_VSTART : INTEGER;
      C_GEN_F1_VSYNC_VEND : INTEGER;
      C_GEN_F1_VSYNC_HSTART : INTEGER;
      C_GEN_F1_VSYNC_HEND : INTEGER;
      C_FSYNC_HSTART0 : INTEGER;
      C_FSYNC_VSTART0 : INTEGER;
      C_FSYNC_HSTART1 : INTEGER;
      C_FSYNC_VSTART1 : INTEGER;
      C_FSYNC_HSTART2 : INTEGER;
      C_FSYNC_VSTART2 : INTEGER;
      C_FSYNC_HSTART3 : INTEGER;
      C_FSYNC_VSTART3 : INTEGER;
      C_FSYNC_HSTART4 : INTEGER;
      C_FSYNC_VSTART4 : INTEGER;
      C_FSYNC_HSTART5 : INTEGER;
      C_FSYNC_VSTART5 : INTEGER;
      C_FSYNC_HSTART6 : INTEGER;
      C_FSYNC_VSTART6 : INTEGER;
      C_FSYNC_HSTART7 : INTEGER;
      C_FSYNC_VSTART7 : INTEGER;
      C_FSYNC_HSTART8 : INTEGER;
      C_FSYNC_VSTART8 : INTEGER;
      C_FSYNC_HSTART9 : INTEGER;
      C_FSYNC_VSTART9 : INTEGER;
      C_FSYNC_HSTART10 : INTEGER;
      C_FSYNC_VSTART10 : INTEGER;
      C_FSYNC_HSTART11 : INTEGER;
      C_FSYNC_VSTART11 : INTEGER;
      C_FSYNC_HSTART12 : INTEGER;
      C_FSYNC_VSTART12 : INTEGER;
      C_FSYNC_HSTART13 : INTEGER;
      C_FSYNC_VSTART13 : INTEGER;
      C_FSYNC_HSTART14 : INTEGER;
      C_FSYNC_VSTART14 : INTEGER;
      C_FSYNC_HSTART15 : INTEGER;
      C_FSYNC_VSTART15 : INTEGER;
      C_MAX_PIXELS : INTEGER;
      C_MAX_LINES : INTEGER;
      C_NUM_FSYNCS : INTEGER;
      C_INTERLACE_EN : INTEGER;
      C_GEN_AUTO_SWITCH : INTEGER;
      C_DETECT_EN : INTEGER;
      C_SYNC_EN : INTEGER;
      C_GENERATE_EN : INTEGER;
      C_DET_HSYNC_EN : INTEGER;
      C_DET_VSYNC_EN : INTEGER;
      C_DET_HBLANK_EN : INTEGER;
      C_DET_VBLANK_EN : INTEGER;
      C_DET_AVIDEO_EN : INTEGER;
      C_DET_ACHROMA_EN : INTEGER;
      C_GEN_HSYNC_EN : INTEGER;
      C_GEN_VSYNC_EN : INTEGER;
      C_GEN_HBLANK_EN : INTEGER;
      C_GEN_VBLANK_EN : INTEGER;
      C_GEN_AVIDEO_EN : INTEGER;
      C_GEN_ACHROMA_EN : INTEGER;
      C_GEN_FIELDID_EN : INTEGER;
      C_DET_FIELDID_EN : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      clken : IN STD_LOGIC;
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aclken : IN STD_LOGIC;
      det_clken : IN STD_LOGIC;
      gen_clken : IN STD_LOGIC;
      intc_if : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      field_id_in : IN STD_LOGIC;
      hsync_in : IN STD_LOGIC;
      hblank_in : IN STD_LOGIC;
      vsync_in : IN STD_LOGIC;
      vblank_in : IN STD_LOGIC;
      active_video_in : IN STD_LOGIC;
      active_chroma_in : IN STD_LOGIC;
      field_id_out : OUT STD_LOGIC;
      hsync_out : OUT STD_LOGIC;
      hblank_out : OUT STD_LOGIC;
      vsync_out : OUT STD_LOGIC;
      vblank_out : OUT STD_LOGIC;
      active_video_out : OUT STD_LOGIC;
      active_chroma_out : OUT STD_LOGIC;
      resetn : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      irq : OUT STD_LOGIC;
      fsync_in : IN STD_LOGIC;
      fsync_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT v_tc;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_intf CLK";
  ATTRIBUTE X_INTERFACE_INFO OF clken: SIGNAL IS "xilinx.com:signal:clockenable:1.0 clken_intf CE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclken: SIGNAL IS "xilinx.com:signal:clockenable:1.0 s_axi_aclken_intf CE";
  ATTRIBUTE X_INTERFACE_INFO OF hsync_in: SIGNAL IS "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF vsync_in: SIGNAL IS "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC";
  ATTRIBUTE X_INTERFACE_INFO OF active_video_in: SIGNAL IS "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 resetn_intf RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_aresetn_intf RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT";
BEGIN
  U0 : v_tc
    GENERIC MAP (
      C_HAS_AXI4_LITE => 1,
      C_HAS_INTC_IF => 1,
      C_GEN_INTERLACED => 0,
      C_GEN_HACTIVE_SIZE => 1280,
      C_GEN_VACTIVE_SIZE => 720,
      C_GEN_CPARITY => 0,
      C_GEN_FIELDID_POLARITY => 1,
      C_GEN_VBLANK_POLARITY => 1,
      C_GEN_HBLANK_POLARITY => 1,
      C_GEN_VSYNC_POLARITY => 1,
      C_GEN_HSYNC_POLARITY => 1,
      C_GEN_AVIDEO_POLARITY => 1,
      C_GEN_ACHROMA_POLARITY => 1,
      C_GEN_VIDEO_FORMAT => 2,
      C_GEN_HFRAME_SIZE => 1650,
      C_GEN_F0_VFRAME_SIZE => 750,
      C_GEN_F1_VFRAME_SIZE => 750,
      C_GEN_HSYNC_START => 1390,
      C_GEN_HSYNC_END => 1430,
      C_GEN_F0_VBLANK_HSTART => 1280,
      C_GEN_F0_VBLANK_HEND => 1280,
      C_GEN_F0_VSYNC_VSTART => 724,
      C_GEN_F0_VSYNC_VEND => 729,
      C_GEN_F0_VSYNC_HSTART => 1280,
      C_GEN_F0_VSYNC_HEND => 1280,
      C_GEN_F1_VBLANK_HSTART => 1280,
      C_GEN_F1_VBLANK_HEND => 1280,
      C_GEN_F1_VSYNC_VSTART => 724,
      C_GEN_F1_VSYNC_VEND => 729,
      C_GEN_F1_VSYNC_HSTART => 1280,
      C_GEN_F1_VSYNC_HEND => 1280,
      C_FSYNC_HSTART0 => 0,
      C_FSYNC_VSTART0 => 0,
      C_FSYNC_HSTART1 => 0,
      C_FSYNC_VSTART1 => 0,
      C_FSYNC_HSTART2 => 0,
      C_FSYNC_VSTART2 => 0,
      C_FSYNC_HSTART3 => 0,
      C_FSYNC_VSTART3 => 0,
      C_FSYNC_HSTART4 => 0,
      C_FSYNC_VSTART4 => 0,
      C_FSYNC_HSTART5 => 0,
      C_FSYNC_VSTART5 => 0,
      C_FSYNC_HSTART6 => 0,
      C_FSYNC_VSTART6 => 0,
      C_FSYNC_HSTART7 => 0,
      C_FSYNC_VSTART7 => 0,
      C_FSYNC_HSTART8 => 0,
      C_FSYNC_VSTART8 => 0,
      C_FSYNC_HSTART9 => 0,
      C_FSYNC_VSTART9 => 0,
      C_FSYNC_HSTART10 => 0,
      C_FSYNC_VSTART10 => 0,
      C_FSYNC_HSTART11 => 0,
      C_FSYNC_VSTART11 => 0,
      C_FSYNC_HSTART12 => 0,
      C_FSYNC_VSTART12 => 0,
      C_FSYNC_HSTART13 => 0,
      C_FSYNC_VSTART13 => 0,
      C_FSYNC_HSTART14 => 0,
      C_FSYNC_VSTART14 => 0,
      C_FSYNC_HSTART15 => 0,
      C_FSYNC_VSTART15 => 0,
      C_MAX_PIXELS => 4096,
      C_MAX_LINES => 4096,
      C_NUM_FSYNCS => 1,
      C_INTERLACE_EN => 0,
      C_GEN_AUTO_SWITCH => 0,
      C_DETECT_EN => 1,
      C_SYNC_EN => 0,
      C_GENERATE_EN => 0,
      C_DET_HSYNC_EN => 1,
      C_DET_VSYNC_EN => 1,
      C_DET_HBLANK_EN => 0,
      C_DET_VBLANK_EN => 0,
      C_DET_AVIDEO_EN => 1,
      C_DET_ACHROMA_EN => 0,
      C_GEN_HSYNC_EN => 1,
      C_GEN_VSYNC_EN => 1,
      C_GEN_HBLANK_EN => 1,
      C_GEN_VBLANK_EN => 1,
      C_GEN_AVIDEO_EN => 1,
      C_GEN_ACHROMA_EN => 0,
      C_GEN_FIELDID_EN => 0,
      C_DET_FIELDID_EN => 0
    )
    PORT MAP (
      clk => clk,
      clken => clken,
      s_axi_aclk => s_axi_aclk,
      s_axi_aclken => s_axi_aclken,
      det_clken => det_clken,
      gen_clken => '1',
      intc_if => intc_if,
      field_id_in => '0',
      hsync_in => hsync_in,
      hblank_in => '0',
      vsync_in => vsync_in,
      vblank_in => '0',
      active_video_in => active_video_in,
      active_chroma_in => '0',
      resetn => resetn,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      irq => irq,
      fsync_in => '0'
    );
END design_1_v_tc_0_0_arch;
