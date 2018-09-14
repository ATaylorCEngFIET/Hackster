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

-- IP VLNV: xilinx.com:ip:axi_uartlite:2.0
-- IP Revision: 21

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_uartlite_v2_0_21;
USE axi_uartlite_v2_0_21.axi_uartlite;

ENTITY design_1_axi_uartlite_0_0 IS
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    rx : IN STD_LOGIC;
    tx : OUT STD_LOGIC
  );
END design_1_axi_uartlite_0_0;

ARCHITECTURE design_1_axi_uartlite_0_0_arch OF design_1_axi_uartlite_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_axi_uartlite_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_uartlite IS
    GENERIC (
      C_FAMILY : STRING;
      C_S_AXI_ACLK_FREQ_HZ : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_BAUDRATE : INTEGER;
      C_DATA_BITS : INTEGER;
      C_USE_PARITY : INTEGER;
      C_ODD_PARITY : INTEGER
    );
    PORT (
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      rx : IN STD_LOGIC;
      tx : OUT STD_LOGIC
    );
  END COMPONENT axi_uartlite;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_axi_uartlite_0_0_arch: ARCHITECTURE IS "axi_uartlite,Vivado 2018.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_axi_uartlite_0_0_arch : ARCHITECTURE IS "design_1_axi_uartlite_0_0,axi_uartlite,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_axi_uartlite_0_0_arch: ARCHITECTURE IS "design_1_axi_uartlite_0_0,axi_uartlite,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_uartlite,x_ipVersion=2.0,x_ipCoreRevision=21,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=spartan7,C_S_AXI_ACLK_FREQ_HZ=81247969,C_S_AXI_ADDR_WIDTH=4,C_S_AXI_DATA_WIDTH=32,C_BAUDRATE=115200,C_DATA_BITS=8,C_USE_PARITY=0,C_ODD_PARITY=0}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF tx: SIGNAL IS "xilinx.com:interface:uart:1.0 UART TxD";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rx: SIGNAL IS "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UARTLITE_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF rx: SIGNAL IS "xilinx.com:interface:uart:1.0 UART RxD";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_T" & 
"HREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME INTERRUPT, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 ARESETN RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aclk: SIGNAL IS "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 ACLK CLK";
BEGIN
  U0 : axi_uartlite
    GENERIC MAP (
      C_FAMILY => "spartan7",
      C_S_AXI_ACLK_FREQ_HZ => 81247969,
      C_S_AXI_ADDR_WIDTH => 4,
      C_S_AXI_DATA_WIDTH => 32,
      C_BAUDRATE => 115200,
      C_DATA_BITS => 8,
      C_USE_PARITY => 0,
      C_ODD_PARITY => 0
    )
    PORT MAP (
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      interrupt => interrupt,
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
      rx => rx,
      tx => tx
    );
END design_1_axi_uartlite_0_0_arch;
