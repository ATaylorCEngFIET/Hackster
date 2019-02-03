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

-- IP VLNV: xilinx.com:ip:axi_vdma:6.3
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_vdma_v6_3_3;
USE axi_vdma_v6_3_3.axi_vdma;

ENTITY design_1_axi_vdma_0_0 IS
  PORT (
    s_axi_lite_aclk : IN STD_LOGIC;
    m_axi_mm2s_aclk : IN STD_LOGIC;
    m_axis_mm2s_aclk : IN STD_LOGIC;
    m_axi_s2mm_aclk : IN STD_LOGIC;
    s_axis_s2mm_aclk : IN STD_LOGIC;
    axi_resetn : IN STD_LOGIC;
    s_axi_lite_awvalid : IN STD_LOGIC;
    s_axi_lite_awready : OUT STD_LOGIC;
    s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_lite_wvalid : IN STD_LOGIC;
    s_axi_lite_wready : OUT STD_LOGIC;
    s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_bvalid : OUT STD_LOGIC;
    s_axi_lite_bready : IN STD_LOGIC;
    s_axi_lite_arvalid : IN STD_LOGIC;
    s_axi_lite_arready : OUT STD_LOGIC;
    s_axi_lite_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_lite_rvalid : OUT STD_LOGIC;
    s_axi_lite_rready : IN STD_LOGIC;
    s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    mm2s_frame_ptr_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    s2mm_frame_ptr_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    m_axi_mm2s_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mm2s_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_mm2s_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mm2s_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mm2s_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mm2s_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mm2s_arvalid : OUT STD_LOGIC;
    m_axi_mm2s_arready : IN STD_LOGIC;
    m_axi_mm2s_rdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_mm2s_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mm2s_rlast : IN STD_LOGIC;
    m_axi_mm2s_rvalid : IN STD_LOGIC;
    m_axi_mm2s_rready : OUT STD_LOGIC;
    m_axis_mm2s_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_mm2s_tkeep : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axis_mm2s_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_mm2s_tvalid : OUT STD_LOGIC;
    m_axis_mm2s_tready : IN STD_LOGIC;
    m_axis_mm2s_tlast : OUT STD_LOGIC;
    m_axi_s2mm_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_s2mm_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_s2mm_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_s2mm_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_s2mm_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_s2mm_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_s2mm_awvalid : OUT STD_LOGIC;
    m_axi_s2mm_awready : IN STD_LOGIC;
    m_axi_s2mm_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_s2mm_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_s2mm_wlast : OUT STD_LOGIC;
    m_axi_s2mm_wvalid : OUT STD_LOGIC;
    m_axi_s2mm_wready : IN STD_LOGIC;
    m_axi_s2mm_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_s2mm_bvalid : IN STD_LOGIC;
    m_axi_s2mm_bready : OUT STD_LOGIC;
    s_axis_s2mm_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_axis_s2mm_tkeep : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axis_s2mm_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axis_s2mm_tvalid : IN STD_LOGIC;
    s_axis_s2mm_tready : OUT STD_LOGIC;
    s_axis_s2mm_tlast : IN STD_LOGIC;
    mm2s_introut : OUT STD_LOGIC;
    s2mm_introut : OUT STD_LOGIC
  );
END design_1_axi_vdma_0_0;

ARCHITECTURE design_1_axi_vdma_0_0_arch OF design_1_axi_vdma_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_axi_vdma_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_vdma IS
    GENERIC (
      C_S_AXI_LITE_ADDR_WIDTH : INTEGER;
      C_S_AXI_LITE_DATA_WIDTH : INTEGER;
      C_DLYTMR_RESOLUTION : INTEGER;
      C_PRMRY_IS_ACLK_ASYNC : INTEGER;
      C_ENABLE_VIDPRMTR_READS : INTEGER;
      C_DYNAMIC_RESOLUTION : INTEGER;
      C_NUM_FSTORES : INTEGER;
      C_USE_FSYNC : INTEGER;
      C_USE_MM2S_FSYNC : INTEGER;
      C_USE_S2MM_FSYNC : INTEGER;
      C_FLUSH_ON_FSYNC : INTEGER;
      C_INCLUDE_INTERNAL_GENLOCK : INTEGER;
      C_INCLUDE_SG : INTEGER;
      C_M_AXI_SG_ADDR_WIDTH : INTEGER;
      C_M_AXI_SG_DATA_WIDTH : INTEGER;
      C_INCLUDE_MM2S : INTEGER;
      C_MM2S_GENLOCK_MODE : INTEGER;
      C_MM2S_GENLOCK_NUM_MASTERS : INTEGER;
      C_MM2S_GENLOCK_REPEAT_EN : INTEGER;
      C_MM2S_SOF_ENABLE : INTEGER;
      C_INCLUDE_MM2S_DRE : INTEGER;
      C_INCLUDE_MM2S_SF : INTEGER;
      C_MM2S_LINEBUFFER_DEPTH : INTEGER;
      C_MM2S_LINEBUFFER_THRESH : INTEGER;
      C_MM2S_MAX_BURST_LENGTH : INTEGER;
      C_M_AXI_MM2S_ADDR_WIDTH : INTEGER;
      C_M_AXI_MM2S_DATA_WIDTH : INTEGER;
      C_M_AXIS_MM2S_TDATA_WIDTH : INTEGER;
      C_M_AXIS_MM2S_TUSER_BITS : INTEGER;
      C_INCLUDE_S2MM : INTEGER;
      C_S2MM_GENLOCK_MODE : INTEGER;
      C_S2MM_GENLOCK_NUM_MASTERS : INTEGER;
      C_S2MM_GENLOCK_REPEAT_EN : INTEGER;
      C_S2MM_SOF_ENABLE : INTEGER;
      C_INCLUDE_S2MM_DRE : INTEGER;
      C_INCLUDE_S2MM_SF : INTEGER;
      C_S2MM_LINEBUFFER_DEPTH : INTEGER;
      C_S2MM_LINEBUFFER_THRESH : INTEGER;
      C_S2MM_MAX_BURST_LENGTH : INTEGER;
      C_M_AXI_S2MM_ADDR_WIDTH : INTEGER;
      C_M_AXI_S2MM_DATA_WIDTH : INTEGER;
      C_S_AXIS_S2MM_TDATA_WIDTH : INTEGER;
      C_S_AXIS_S2MM_TUSER_BITS : INTEGER;
      C_ENABLE_DEBUG_ALL : INTEGER;
      C_ENABLE_DEBUG_INFO_0 : INTEGER;
      C_ENABLE_DEBUG_INFO_1 : INTEGER;
      C_ENABLE_DEBUG_INFO_2 : INTEGER;
      C_ENABLE_DEBUG_INFO_3 : INTEGER;
      C_ENABLE_DEBUG_INFO_4 : INTEGER;
      C_ENABLE_DEBUG_INFO_5 : INTEGER;
      C_ENABLE_DEBUG_INFO_6 : INTEGER;
      C_ENABLE_DEBUG_INFO_7 : INTEGER;
      C_ENABLE_DEBUG_INFO_8 : INTEGER;
      C_ENABLE_DEBUG_INFO_9 : INTEGER;
      C_ENABLE_DEBUG_INFO_10 : INTEGER;
      C_ENABLE_DEBUG_INFO_11 : INTEGER;
      C_ENABLE_DEBUG_INFO_12 : INTEGER;
      C_ENABLE_DEBUG_INFO_13 : INTEGER;
      C_ENABLE_DEBUG_INFO_14 : INTEGER;
      C_ENABLE_DEBUG_INFO_15 : INTEGER;
      C_INSTANCE : STRING;
      C_SELECT_XPM : INTEGER;
      C_ENABLE_VERT_FLIP : INTEGER;
      C_FAMILY : STRING
    );
    PORT (
      s_axi_lite_aclk : IN STD_LOGIC;
      m_axi_sg_aclk : IN STD_LOGIC;
      m_axi_mm2s_aclk : IN STD_LOGIC;
      m_axis_mm2s_aclk : IN STD_LOGIC;
      m_axi_s2mm_aclk : IN STD_LOGIC;
      s_axis_s2mm_aclk : IN STD_LOGIC;
      axi_resetn : IN STD_LOGIC;
      s_axi_lite_awvalid : IN STD_LOGIC;
      s_axi_lite_awready : OUT STD_LOGIC;
      s_axi_lite_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_lite_wvalid : IN STD_LOGIC;
      s_axi_lite_wready : OUT STD_LOGIC;
      s_axi_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lite_bvalid : OUT STD_LOGIC;
      s_axi_lite_bready : IN STD_LOGIC;
      s_axi_lite_arvalid : IN STD_LOGIC;
      s_axi_lite_arready : OUT STD_LOGIC;
      s_axi_lite_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_lite_rvalid : OUT STD_LOGIC;
      s_axi_lite_rready : IN STD_LOGIC;
      s_axi_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      mm2s_fsync : IN STD_LOGIC;
      mm2s_frame_ptr_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      mm2s_frame_ptr_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s2mm_fsync : IN STD_LOGIC;
      s2mm_frame_ptr_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s2mm_frame_ptr_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      mm2s_buffer_empty : OUT STD_LOGIC;
      mm2s_buffer_almost_empty : OUT STD_LOGIC;
      s2mm_buffer_full : OUT STD_LOGIC;
      s2mm_buffer_almost_full : OUT STD_LOGIC;
      mm2s_fsync_out : OUT STD_LOGIC;
      s2mm_fsync_out : OUT STD_LOGIC;
      mm2s_prmtr_update : OUT STD_LOGIC;
      s2mm_prmtr_update : OUT STD_LOGIC;
      m_axi_sg_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_sg_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_sg_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_sg_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_sg_arvalid : OUT STD_LOGIC;
      m_axi_sg_arready : IN STD_LOGIC;
      m_axi_sg_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_sg_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_sg_rlast : IN STD_LOGIC;
      m_axi_sg_rvalid : IN STD_LOGIC;
      m_axi_sg_rready : OUT STD_LOGIC;
      m_axi_mm2s_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_mm2s_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_mm2s_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_mm2s_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mm2s_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_mm2s_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mm2s_arvalid : OUT STD_LOGIC;
      m_axi_mm2s_arready : IN STD_LOGIC;
      m_axi_mm2s_rdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_mm2s_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mm2s_rlast : IN STD_LOGIC;
      m_axi_mm2s_rvalid : IN STD_LOGIC;
      m_axi_mm2s_rready : OUT STD_LOGIC;
      mm2s_prmry_reset_out_n : OUT STD_LOGIC;
      m_axis_mm2s_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      m_axis_mm2s_tkeep : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axis_mm2s_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_mm2s_tvalid : OUT STD_LOGIC;
      m_axis_mm2s_tready : IN STD_LOGIC;
      m_axis_mm2s_tlast : OUT STD_LOGIC;
      m_axi_s2mm_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_s2mm_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_s2mm_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_s2mm_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_s2mm_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_s2mm_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_s2mm_awvalid : OUT STD_LOGIC;
      m_axi_s2mm_awready : IN STD_LOGIC;
      m_axi_s2mm_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_s2mm_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_s2mm_wlast : OUT STD_LOGIC;
      m_axi_s2mm_wvalid : OUT STD_LOGIC;
      m_axi_s2mm_wready : IN STD_LOGIC;
      m_axi_s2mm_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_s2mm_bvalid : IN STD_LOGIC;
      m_axi_s2mm_bready : OUT STD_LOGIC;
      s2mm_prmry_reset_out_n : OUT STD_LOGIC;
      s_axis_s2mm_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_axis_s2mm_tkeep : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axis_s2mm_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axis_s2mm_tvalid : IN STD_LOGIC;
      s_axis_s2mm_tready : OUT STD_LOGIC;
      s_axis_s2mm_tlast : IN STD_LOGIC;
      mm2s_introut : OUT STD_LOGIC;
      s2mm_introut : OUT STD_LOGIC;
      axi_vdma_tstvec : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
    );
  END COMPONENT axi_vdma;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_axi_vdma_0_0_arch: ARCHITECTURE IS "axi_vdma,Vivado 2017.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_axi_vdma_0_0_arch : ARCHITECTURE IS "design_1_axi_vdma_0_0,axi_vdma,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_axi_vdma_0_0_arch: ARCHITECTURE IS "design_1_axi_vdma_0_0,axi_vdma,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_vdma,x_ipVersion=6.3,x_ipCoreRevision=3,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S_AXI_LITE_ADDR_WIDTH=9,C_S_AXI_LITE_DATA_WIDTH=32,C_DLYTMR_RESOLUTION=125,C_PRMRY_IS_ACLK_ASYNC=0,C_ENABLE_VIDPRMTR_READS=1,C_DYNAMIC_RESOLUTION=1,C_NUM_FSTORES=3,C_USE_FSYNC=1,C_USE_MM2S_FSYNC=0,C_USE_S2MM_FSYNC=2,C_FLUSH_ON_FSYNC=1,C_INCLUDE_INTERNAL_GENLOCK=1,C_INCLUDE_SG=0,C_M_AXI_SG_ADDR_WIDTH=32,C_M_AX" & 
"I_SG_DATA_WIDTH=32,C_INCLUDE_MM2S=1,C_MM2S_GENLOCK_MODE=3,C_MM2S_GENLOCK_NUM_MASTERS=1,C_MM2S_GENLOCK_REPEAT_EN=0,C_MM2S_SOF_ENABLE=1,C_INCLUDE_MM2S_DRE=1,C_INCLUDE_MM2S_SF=0,C_MM2S_LINEBUFFER_DEPTH=512,C_MM2S_LINEBUFFER_THRESH=4,C_MM2S_MAX_BURST_LENGTH=8,C_M_AXI_MM2S_ADDR_WIDTH=32,C_M_AXI_MM2S_DATA_WIDTH=64,C_M_AXIS_MM2S_TDATA_WIDTH=24,C_M_AXIS_MM2S_TUSER_BITS=1,C_INCLUDE_S2MM=1,C_S2MM_GENLOCK_MODE=2,C_S2MM_GENLOCK_NUM_MASTERS=1,C_S2MM_GENLOCK_REPEAT_EN=1,C_S2MM_SOF_ENABLE=1,C_INCLUDE_S2MM_DRE=" & 
"1,C_INCLUDE_S2MM_SF=1,C_S2MM_LINEBUFFER_DEPTH=512,C_S2MM_LINEBUFFER_THRESH=4,C_S2MM_MAX_BURST_LENGTH=8,C_M_AXI_S2MM_ADDR_WIDTH=32,C_M_AXI_S2MM_DATA_WIDTH=64,C_S_AXIS_S2MM_TDATA_WIDTH=24,C_S_AXIS_S2MM_TUSER_BITS=1,C_ENABLE_DEBUG_ALL=0,C_ENABLE_DEBUG_INFO_0=0,C_ENABLE_DEBUG_INFO_1=0,C_ENABLE_DEBUG_INFO_2=0,C_ENABLE_DEBUG_INFO_3=0,C_ENABLE_DEBUG_INFO_4=0,C_ENABLE_DEBUG_INFO_5=0,C_ENABLE_DEBUG_INFO_6=1,C_ENABLE_DEBUG_INFO_7=1,C_ENABLE_DEBUG_INFO_8=0,C_ENABLE_DEBUG_INFO_9=0,C_ENABLE_DEBUG_INFO_10=0,C" & 
"_ENABLE_DEBUG_INFO_11=0,C_ENABLE_DEBUG_INFO_12=0,C_ENABLE_DEBUG_INFO_13=0,C_ENABLE_DEBUG_INFO_14=1,C_ENABLE_DEBUG_INFO_15=1,C_INSTANCE=axi_vdma,C_SELECT_XPM=0,C_ENABLE_VERT_FLIP=0,C_FAMILY=zynq}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s2mm_introut: SIGNAL IS "XIL_INTERFACENAME S2MM_INTROUT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF s2mm_introut: SIGNAL IS "xilinx.com:signal:interrupt:1.0 S2MM_INTROUT INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mm2s_introut: SIGNAL IS "XIL_INTERFACENAME MM2S_INTROUT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF mm2s_introut: SIGNAL IS "xilinx.com:signal:interrupt:1.0 MM2S_INTROUT INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_s2mm_tdata: SIGNAL IS "XIL_INTERFACENAME S_AXIS_S2MM, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_s2mm_awaddr: SIGNAL IS "XIL_INTERFACENAME M_AXI_S2MM, SUPPORTS_NARROW_BURST 0, NUM_WRITE_OUTSTANDING 2, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, NUM_READ_OUTSTANDING 2, MAX_BURST_LENGTH 8, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_mm2s_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_mm2s_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_mm2s_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_mm2s_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_mm2s_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_mm2s_tdata: SIGNAL IS "XIL_INTERFACENAME M_AXIS_MM2S, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_mm2s_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_mm2s_araddr: SIGNAL IS "XIL_INTERFACENAME M_AXI_MM2S, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 8, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s2mm_frame_ptr_out: SIGNAL IS "xilinx.com:signal:video_frame_ptr:1.0 S2MM_FRAME_PTR_OUT FRAME_PTR";
  ATTRIBUTE X_INTERFACE_INFO OF mm2s_frame_ptr_out: SIGNAL IS "xilinx.com:signal:video_frame_ptr:1.0 MM2S_FRAME_PTR_OUT FRAME_PTR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_awvalid: SIGNAL IS "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_resetn: SIGNAL IS "XIL_INTERFACENAME AXI_RESETN, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF axi_resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXI_RESETN RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_s2mm_aclk: SIGNAL IS "XIL_INTERFACENAME S_AXIS_S2MM_ACLK, ASSOCIATED_BUSIF S_AXIS_S2MM, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_s2mm_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXIS_S2MM_ACLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_s2mm_aclk: SIGNAL IS "XIL_INTERFACENAME M_AXI_S2MM_ACLK, ASSOCIATED_BUSIF M_AXI_S2MM, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_s2mm_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M_AXI_S2MM_ACLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_mm2s_aclk: SIGNAL IS "XIL_INTERFACENAME M_AXIS_MM2S_ACLK, ASSOCIATED_BUSIF M_AXIS_MM2S, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_mm2s_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M_AXIS_MM2S_ACLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_mm2s_aclk: SIGNAL IS "XIL_INTERFACENAME M_AXI_MM2S_ACLK, ASSOCIATED_BUSIF M_AXI_MM2S, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mm2s_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M_AXI_MM2S_ACLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_aclk: SIGNAL IS "XIL_INTERFACENAME S_AXI_LITE_ACLK, ASSOCIATED_BUSIF S_AXI_LITE:M_AXI, ASSOCIATED_RESET axi_resetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_LITE_ACLK CLK";
BEGIN
  U0 : axi_vdma
    GENERIC MAP (
      C_S_AXI_LITE_ADDR_WIDTH => 9,
      C_S_AXI_LITE_DATA_WIDTH => 32,
      C_DLYTMR_RESOLUTION => 125,
      C_PRMRY_IS_ACLK_ASYNC => 0,
      C_ENABLE_VIDPRMTR_READS => 1,
      C_DYNAMIC_RESOLUTION => 1,
      C_NUM_FSTORES => 3,
      C_USE_FSYNC => 1,
      C_USE_MM2S_FSYNC => 0,
      C_USE_S2MM_FSYNC => 2,
      C_FLUSH_ON_FSYNC => 1,
      C_INCLUDE_INTERNAL_GENLOCK => 1,
      C_INCLUDE_SG => 0,
      C_M_AXI_SG_ADDR_WIDTH => 32,
      C_M_AXI_SG_DATA_WIDTH => 32,
      C_INCLUDE_MM2S => 1,
      C_MM2S_GENLOCK_MODE => 3,
      C_MM2S_GENLOCK_NUM_MASTERS => 1,
      C_MM2S_GENLOCK_REPEAT_EN => 0,
      C_MM2S_SOF_ENABLE => 1,
      C_INCLUDE_MM2S_DRE => 1,
      C_INCLUDE_MM2S_SF => 0,
      C_MM2S_LINEBUFFER_DEPTH => 512,
      C_MM2S_LINEBUFFER_THRESH => 4,
      C_MM2S_MAX_BURST_LENGTH => 8,
      C_M_AXI_MM2S_ADDR_WIDTH => 32,
      C_M_AXI_MM2S_DATA_WIDTH => 64,
      C_M_AXIS_MM2S_TDATA_WIDTH => 24,
      C_M_AXIS_MM2S_TUSER_BITS => 1,
      C_INCLUDE_S2MM => 1,
      C_S2MM_GENLOCK_MODE => 2,
      C_S2MM_GENLOCK_NUM_MASTERS => 1,
      C_S2MM_GENLOCK_REPEAT_EN => 1,
      C_S2MM_SOF_ENABLE => 1,
      C_INCLUDE_S2MM_DRE => 1,
      C_INCLUDE_S2MM_SF => 1,
      C_S2MM_LINEBUFFER_DEPTH => 512,
      C_S2MM_LINEBUFFER_THRESH => 4,
      C_S2MM_MAX_BURST_LENGTH => 8,
      C_M_AXI_S2MM_ADDR_WIDTH => 32,
      C_M_AXI_S2MM_DATA_WIDTH => 64,
      C_S_AXIS_S2MM_TDATA_WIDTH => 24,
      C_S_AXIS_S2MM_TUSER_BITS => 1,
      C_ENABLE_DEBUG_ALL => 0,
      C_ENABLE_DEBUG_INFO_0 => 0,
      C_ENABLE_DEBUG_INFO_1 => 0,
      C_ENABLE_DEBUG_INFO_2 => 0,
      C_ENABLE_DEBUG_INFO_3 => 0,
      C_ENABLE_DEBUG_INFO_4 => 0,
      C_ENABLE_DEBUG_INFO_5 => 0,
      C_ENABLE_DEBUG_INFO_6 => 1,
      C_ENABLE_DEBUG_INFO_7 => 1,
      C_ENABLE_DEBUG_INFO_8 => 0,
      C_ENABLE_DEBUG_INFO_9 => 0,
      C_ENABLE_DEBUG_INFO_10 => 0,
      C_ENABLE_DEBUG_INFO_11 => 0,
      C_ENABLE_DEBUG_INFO_12 => 0,
      C_ENABLE_DEBUG_INFO_13 => 0,
      C_ENABLE_DEBUG_INFO_14 => 1,
      C_ENABLE_DEBUG_INFO_15 => 1,
      C_INSTANCE => "axi_vdma",
      C_SELECT_XPM => 0,
      C_ENABLE_VERT_FLIP => 0,
      C_FAMILY => "zynq"
    )
    PORT MAP (
      s_axi_lite_aclk => s_axi_lite_aclk,
      m_axi_sg_aclk => '0',
      m_axi_mm2s_aclk => m_axi_mm2s_aclk,
      m_axis_mm2s_aclk => m_axis_mm2s_aclk,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      s_axis_s2mm_aclk => s_axis_s2mm_aclk,
      axi_resetn => axi_resetn,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awaddr => s_axi_lite_awaddr,
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wdata => s_axi_lite_wdata,
      s_axi_lite_bresp => s_axi_lite_bresp,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_araddr => s_axi_lite_araddr,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rdata => s_axi_lite_rdata,
      s_axi_lite_rresp => s_axi_lite_rresp,
      mm2s_fsync => '0',
      mm2s_frame_ptr_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      mm2s_frame_ptr_out => mm2s_frame_ptr_out,
      s2mm_fsync => '0',
      s2mm_frame_ptr_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s2mm_frame_ptr_out => s2mm_frame_ptr_out,
      m_axi_sg_arready => '0',
      m_axi_sg_rdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      m_axi_sg_rresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      m_axi_sg_rlast => '0',
      m_axi_sg_rvalid => '0',
      m_axi_mm2s_araddr => m_axi_mm2s_araddr,
      m_axi_mm2s_arlen => m_axi_mm2s_arlen,
      m_axi_mm2s_arsize => m_axi_mm2s_arsize,
      m_axi_mm2s_arburst => m_axi_mm2s_arburst,
      m_axi_mm2s_arprot => m_axi_mm2s_arprot,
      m_axi_mm2s_arcache => m_axi_mm2s_arcache,
      m_axi_mm2s_arvalid => m_axi_mm2s_arvalid,
      m_axi_mm2s_arready => m_axi_mm2s_arready,
      m_axi_mm2s_rdata => m_axi_mm2s_rdata,
      m_axi_mm2s_rresp => m_axi_mm2s_rresp,
      m_axi_mm2s_rlast => m_axi_mm2s_rlast,
      m_axi_mm2s_rvalid => m_axi_mm2s_rvalid,
      m_axi_mm2s_rready => m_axi_mm2s_rready,
      m_axis_mm2s_tdata => m_axis_mm2s_tdata,
      m_axis_mm2s_tkeep => m_axis_mm2s_tkeep,
      m_axis_mm2s_tuser => m_axis_mm2s_tuser,
      m_axis_mm2s_tvalid => m_axis_mm2s_tvalid,
      m_axis_mm2s_tready => m_axis_mm2s_tready,
      m_axis_mm2s_tlast => m_axis_mm2s_tlast,
      m_axi_s2mm_awaddr => m_axi_s2mm_awaddr,
      m_axi_s2mm_awlen => m_axi_s2mm_awlen,
      m_axi_s2mm_awsize => m_axi_s2mm_awsize,
      m_axi_s2mm_awburst => m_axi_s2mm_awburst,
      m_axi_s2mm_awprot => m_axi_s2mm_awprot,
      m_axi_s2mm_awcache => m_axi_s2mm_awcache,
      m_axi_s2mm_awvalid => m_axi_s2mm_awvalid,
      m_axi_s2mm_awready => m_axi_s2mm_awready,
      m_axi_s2mm_wdata => m_axi_s2mm_wdata,
      m_axi_s2mm_wstrb => m_axi_s2mm_wstrb,
      m_axi_s2mm_wlast => m_axi_s2mm_wlast,
      m_axi_s2mm_wvalid => m_axi_s2mm_wvalid,
      m_axi_s2mm_wready => m_axi_s2mm_wready,
      m_axi_s2mm_bresp => m_axi_s2mm_bresp,
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      s_axis_s2mm_tdata => s_axis_s2mm_tdata,
      s_axis_s2mm_tkeep => s_axis_s2mm_tkeep,
      s_axis_s2mm_tuser => s_axis_s2mm_tuser,
      s_axis_s2mm_tvalid => s_axis_s2mm_tvalid,
      s_axis_s2mm_tready => s_axis_s2mm_tready,
      s_axis_s2mm_tlast => s_axis_s2mm_tlast,
      mm2s_introut => mm2s_introut,
      s2mm_introut => s2mm_introut
    );
END design_1_axi_vdma_0_0_arch;
