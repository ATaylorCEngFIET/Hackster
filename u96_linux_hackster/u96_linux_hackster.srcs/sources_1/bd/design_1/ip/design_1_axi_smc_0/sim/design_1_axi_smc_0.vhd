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

-- IP VLNV: xilinx.com:ip:smartconnect:1.0
-- IP Revision: 8

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_axi_smc_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    S00_AXI_awid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S00_AXI_awaddr : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    S00_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S00_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_awuser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S00_AXI_awvalid : IN STD_LOGIC;
    S00_AXI_awready : OUT STD_LOGIC;
    S00_AXI_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    S00_AXI_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S00_AXI_wlast : IN STD_LOGIC;
    S00_AXI_wvalid : IN STD_LOGIC;
    S00_AXI_wready : OUT STD_LOGIC;
    S00_AXI_bid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    S00_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_bvalid : OUT STD_LOGIC;
    S00_AXI_bready : IN STD_LOGIC;
    S00_AXI_arid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S00_AXI_araddr : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    S00_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S00_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S00_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_aruser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S00_AXI_arvalid : IN STD_LOGIC;
    S00_AXI_arready : OUT STD_LOGIC;
    S00_AXI_rid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    S00_AXI_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    S00_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_rlast : OUT STD_LOGIC;
    S00_AXI_rvalid : OUT STD_LOGIC;
    S00_AXI_rready : IN STD_LOGIC;
    M00_AXI_awaddr : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    M00_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M00_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_awuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    M00_AXI_awvalid : OUT STD_LOGIC;
    M00_AXI_awready : IN STD_LOGIC;
    M00_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M00_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_wlast : OUT STD_LOGIC;
    M00_AXI_wvalid : OUT STD_LOGIC;
    M00_AXI_wready : IN STD_LOGIC;
    M00_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_bvalid : IN STD_LOGIC;
    M00_AXI_bready : OUT STD_LOGIC;
    M00_AXI_araddr : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    M00_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M00_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_aruser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    M00_AXI_arvalid : OUT STD_LOGIC;
    M00_AXI_arready : IN STD_LOGIC;
    M00_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    M00_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_rlast : IN STD_LOGIC;
    M00_AXI_rvalid : IN STD_LOGIC;
    M00_AXI_rready : OUT STD_LOGIC;
    M01_AXI_awaddr : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    M01_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_awvalid : OUT STD_LOGIC;
    M01_AXI_awready : IN STD_LOGIC;
    M01_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M01_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M01_AXI_wvalid : OUT STD_LOGIC;
    M01_AXI_wready : IN STD_LOGIC;
    M01_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_bvalid : IN STD_LOGIC;
    M01_AXI_bready : OUT STD_LOGIC;
    M01_AXI_araddr : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    M01_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M01_AXI_arvalid : OUT STD_LOGIC;
    M01_AXI_arready : IN STD_LOGIC;
    M01_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    M01_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M01_AXI_rvalid : IN STD_LOGIC;
    M01_AXI_rready : OUT STD_LOGIC
  );
END design_1_axi_smc_0;

ARCHITECTURE design_1_axi_smc_0_arch OF design_1_axi_smc_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_axi_smc_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_afc3 IS
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      S00_AXI_awid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      S00_AXI_awaddr : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
      S00_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S00_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S00_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_awuser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      S00_AXI_awvalid : IN STD_LOGIC;
      S00_AXI_awready : OUT STD_LOGIC;
      S00_AXI_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      S00_AXI_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      S00_AXI_wlast : IN STD_LOGIC;
      S00_AXI_wvalid : IN STD_LOGIC;
      S00_AXI_wready : OUT STD_LOGIC;
      S00_AXI_bid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      S00_AXI_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_bvalid : OUT STD_LOGIC;
      S00_AXI_bready : IN STD_LOGIC;
      S00_AXI_arid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      S00_AXI_araddr : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
      S00_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S00_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S00_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_aruser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      S00_AXI_arvalid : IN STD_LOGIC;
      S00_AXI_arready : OUT STD_LOGIC;
      S00_AXI_rid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      S00_AXI_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      S00_AXI_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_rlast : OUT STD_LOGIC;
      S00_AXI_rvalid : OUT STD_LOGIC;
      S00_AXI_rready : IN STD_LOGIC;
      M00_AXI_awaddr : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      M00_AXI_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M00_AXI_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_awlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M00_AXI_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_awuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      M00_AXI_awvalid : OUT STD_LOGIC;
      M00_AXI_awready : IN STD_LOGIC;
      M00_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M00_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_wlast : OUT STD_LOGIC;
      M00_AXI_wvalid : OUT STD_LOGIC;
      M00_AXI_wready : IN STD_LOGIC;
      M00_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_bvalid : IN STD_LOGIC;
      M00_AXI_bready : OUT STD_LOGIC;
      M00_AXI_araddr : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      M00_AXI_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M00_AXI_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_arlock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M00_AXI_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_aruser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      M00_AXI_arvalid : OUT STD_LOGIC;
      M00_AXI_arready : IN STD_LOGIC;
      M00_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      M00_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_rlast : IN STD_LOGIC;
      M00_AXI_rvalid : IN STD_LOGIC;
      M00_AXI_rready : OUT STD_LOGIC;
      M01_AXI_awaddr : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      M01_AXI_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M01_AXI_awvalid : OUT STD_LOGIC;
      M01_AXI_awready : IN STD_LOGIC;
      M01_AXI_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M01_AXI_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M01_AXI_wvalid : OUT STD_LOGIC;
      M01_AXI_wready : IN STD_LOGIC;
      M01_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M01_AXI_bvalid : IN STD_LOGIC;
      M01_AXI_bready : OUT STD_LOGIC;
      M01_AXI_araddr : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      M01_AXI_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M01_AXI_arvalid : OUT STD_LOGIC;
      M01_AXI_arready : IN STD_LOGIC;
      M01_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      M01_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M01_AXI_rvalid : IN STD_LOGIC;
      M01_AXI_rready : OUT STD_LOGIC
    );
  END COMPONENT bd_afc3;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M01_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999999, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, " & 
"NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF M01_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M00_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 99999999, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1," & 
" NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S00_AXI_awid: SIGNAL IS "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999999, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS " & 
"4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 99999999, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF M00_AXI:M01_AXI:S00_AXI, ASSOCIATED_CLKEN m_sc_aclken";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.aclk CLK";
BEGIN
  U0 : bd_afc3
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      S00_AXI_awid => S00_AXI_awid,
      S00_AXI_awaddr => S00_AXI_awaddr,
      S00_AXI_awlen => S00_AXI_awlen,
      S00_AXI_awsize => S00_AXI_awsize,
      S00_AXI_awburst => S00_AXI_awburst,
      S00_AXI_awlock => S00_AXI_awlock,
      S00_AXI_awcache => S00_AXI_awcache,
      S00_AXI_awprot => S00_AXI_awprot,
      S00_AXI_awqos => S00_AXI_awqos,
      S00_AXI_awuser => S00_AXI_awuser,
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_wdata => S00_AXI_wdata,
      S00_AXI_wstrb => S00_AXI_wstrb,
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wvalid => S00_AXI_wvalid,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_bid => S00_AXI_bid,
      S00_AXI_bresp => S00_AXI_bresp,
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_arid => S00_AXI_arid,
      S00_AXI_araddr => S00_AXI_araddr,
      S00_AXI_arlen => S00_AXI_arlen,
      S00_AXI_arsize => S00_AXI_arsize,
      S00_AXI_arburst => S00_AXI_arburst,
      S00_AXI_arlock => S00_AXI_arlock,
      S00_AXI_arcache => S00_AXI_arcache,
      S00_AXI_arprot => S00_AXI_arprot,
      S00_AXI_arqos => S00_AXI_arqos,
      S00_AXI_aruser => S00_AXI_aruser,
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_rid => S00_AXI_rid,
      S00_AXI_rdata => S00_AXI_rdata,
      S00_AXI_rresp => S00_AXI_rresp,
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_rready => S00_AXI_rready,
      M00_AXI_awaddr => M00_AXI_awaddr,
      M00_AXI_awlen => M00_AXI_awlen,
      M00_AXI_awsize => M00_AXI_awsize,
      M00_AXI_awburst => M00_AXI_awburst,
      M00_AXI_awlock => M00_AXI_awlock,
      M00_AXI_awcache => M00_AXI_awcache,
      M00_AXI_awprot => M00_AXI_awprot,
      M00_AXI_awqos => M00_AXI_awqos,
      M00_AXI_awuser => M00_AXI_awuser,
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_wdata => M00_AXI_wdata,
      M00_AXI_wstrb => M00_AXI_wstrb,
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wvalid => M00_AXI_wvalid,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_bresp => M00_AXI_bresp,
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_araddr => M00_AXI_araddr,
      M00_AXI_arlen => M00_AXI_arlen,
      M00_AXI_arsize => M00_AXI_arsize,
      M00_AXI_arburst => M00_AXI_arburst,
      M00_AXI_arlock => M00_AXI_arlock,
      M00_AXI_arcache => M00_AXI_arcache,
      M00_AXI_arprot => M00_AXI_arprot,
      M00_AXI_arqos => M00_AXI_arqos,
      M00_AXI_aruser => M00_AXI_aruser,
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_rdata => M00_AXI_rdata,
      M00_AXI_rresp => M00_AXI_rresp,
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_rready => M00_AXI_rready,
      M01_AXI_awaddr => M01_AXI_awaddr,
      M01_AXI_awprot => M01_AXI_awprot,
      M01_AXI_awvalid => M01_AXI_awvalid,
      M01_AXI_awready => M01_AXI_awready,
      M01_AXI_wdata => M01_AXI_wdata,
      M01_AXI_wstrb => M01_AXI_wstrb,
      M01_AXI_wvalid => M01_AXI_wvalid,
      M01_AXI_wready => M01_AXI_wready,
      M01_AXI_bresp => M01_AXI_bresp,
      M01_AXI_bvalid => M01_AXI_bvalid,
      M01_AXI_bready => M01_AXI_bready,
      M01_AXI_araddr => M01_AXI_araddr,
      M01_AXI_arprot => M01_AXI_arprot,
      M01_AXI_arvalid => M01_AXI_arvalid,
      M01_AXI_arready => M01_AXI_arready,
      M01_AXI_rdata => M01_AXI_rdata,
      M01_AXI_rresp => M01_AXI_rresp,
      M01_AXI_rvalid => M01_AXI_rvalid,
      M01_AXI_rready => M01_AXI_rready
    );
END design_1_axi_smc_0_arch;
