-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Sep  9 16:00:23 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_microblaze_0_0_stub.vhdl
-- Design      : design_1_microblaze_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC;
    M_AXI_IC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_AWLOCK : out STD_LOGIC;
    M_AXI_IC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_AWVALID : out STD_LOGIC;
    M_AXI_IC_AWREADY : in STD_LOGIC;
    M_AXI_IC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_WLAST : out STD_LOGIC;
    M_AXI_IC_WVALID : out STD_LOGIC;
    M_AXI_IC_WREADY : in STD_LOGIC;
    M_AXI_IC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_BVALID : in STD_LOGIC;
    M_AXI_IC_BREADY : out STD_LOGIC;
    M_AXI_IC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_IC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_ARLOCK : out STD_LOGIC;
    M_AXI_IC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IC_ARVALID : out STD_LOGIC;
    M_AXI_IC_ARREADY : in STD_LOGIC;
    M_AXI_IC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_IC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IC_RLAST : in STD_LOGIC;
    M_AXI_IC_RVALID : in STD_LOGIC;
    M_AXI_IC_RREADY : out STD_LOGIC;
    M_AXI_DC_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_AWLOCK : out STD_LOGIC;
    M_AXI_DC_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_AWVALID : out STD_LOGIC;
    M_AXI_DC_AWREADY : in STD_LOGIC;
    M_AXI_DC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_WLAST : out STD_LOGIC;
    M_AXI_DC_WVALID : out STD_LOGIC;
    M_AXI_DC_WREADY : in STD_LOGIC;
    M_AXI_DC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_BVALID : in STD_LOGIC;
    M_AXI_DC_BREADY : out STD_LOGIC;
    M_AXI_DC_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DC_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_ARLOCK : out STD_LOGIC;
    M_AXI_DC_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DC_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DC_ARVALID : out STD_LOGIC;
    M_AXI_DC_ARREADY : in STD_LOGIC;
    M_AXI_DC_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_DC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DC_RLAST : in STD_LOGIC;
    M_AXI_DC_RVALID : in STD_LOGIC;
    M_AXI_DC_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,Interrupt,Interrupt_Address[0:31],Interrupt_Ack[0:1],Instr_Addr[0:31],Instr[0:31],IFetch,I_AS,IReady,IWAIT,ICE,IUE,Data_Addr[0:31],Data_Read[0:31],Data_Write[0:31],D_AS,Read_Strobe,Write_Strobe,DReady,DWait,DCE,DUE,Byte_Enable[0:3],M_AXI_DP_AWADDR[31:0],M_AXI_DP_AWPROT[2:0],M_AXI_DP_AWVALID,M_AXI_DP_AWREADY,M_AXI_DP_WDATA[31:0],M_AXI_DP_WSTRB[3:0],M_AXI_DP_WVALID,M_AXI_DP_WREADY,M_AXI_DP_BRESP[1:0],M_AXI_DP_BVALID,M_AXI_DP_BREADY,M_AXI_DP_ARADDR[31:0],M_AXI_DP_ARPROT[2:0],M_AXI_DP_ARVALID,M_AXI_DP_ARREADY,M_AXI_DP_RDATA[31:0],M_AXI_DP_RRESP[1:0],M_AXI_DP_RVALID,M_AXI_DP_RREADY,Dbg_Clk,Dbg_TDI,Dbg_TDO,Dbg_Reg_En[0:7],Dbg_Shift,Dbg_Capture,Dbg_Update,Debug_Rst,Dbg_Disable,M_AXI_IC_AWID[0:0],M_AXI_IC_AWADDR[31:0],M_AXI_IC_AWLEN[7:0],M_AXI_IC_AWSIZE[2:0],M_AXI_IC_AWBURST[1:0],M_AXI_IC_AWLOCK,M_AXI_IC_AWCACHE[3:0],M_AXI_IC_AWPROT[2:0],M_AXI_IC_AWQOS[3:0],M_AXI_IC_AWVALID,M_AXI_IC_AWREADY,M_AXI_IC_WDATA[31:0],M_AXI_IC_WSTRB[3:0],M_AXI_IC_WLAST,M_AXI_IC_WVALID,M_AXI_IC_WREADY,M_AXI_IC_BID[0:0],M_AXI_IC_BRESP[1:0],M_AXI_IC_BVALID,M_AXI_IC_BREADY,M_AXI_IC_ARID[0:0],M_AXI_IC_ARADDR[31:0],M_AXI_IC_ARLEN[7:0],M_AXI_IC_ARSIZE[2:0],M_AXI_IC_ARBURST[1:0],M_AXI_IC_ARLOCK,M_AXI_IC_ARCACHE[3:0],M_AXI_IC_ARPROT[2:0],M_AXI_IC_ARQOS[3:0],M_AXI_IC_ARVALID,M_AXI_IC_ARREADY,M_AXI_IC_RID[0:0],M_AXI_IC_RDATA[31:0],M_AXI_IC_RRESP[1:0],M_AXI_IC_RLAST,M_AXI_IC_RVALID,M_AXI_IC_RREADY,M_AXI_DC_AWID[0:0],M_AXI_DC_AWADDR[31:0],M_AXI_DC_AWLEN[7:0],M_AXI_DC_AWSIZE[2:0],M_AXI_DC_AWBURST[1:0],M_AXI_DC_AWLOCK,M_AXI_DC_AWCACHE[3:0],M_AXI_DC_AWPROT[2:0],M_AXI_DC_AWQOS[3:0],M_AXI_DC_AWVALID,M_AXI_DC_AWREADY,M_AXI_DC_WDATA[31:0],M_AXI_DC_WSTRB[3:0],M_AXI_DC_WLAST,M_AXI_DC_WVALID,M_AXI_DC_WREADY,M_AXI_DC_BRESP[1:0],M_AXI_DC_BID[0:0],M_AXI_DC_BVALID,M_AXI_DC_BREADY,M_AXI_DC_ARID[0:0],M_AXI_DC_ARADDR[31:0],M_AXI_DC_ARLEN[7:0],M_AXI_DC_ARSIZE[2:0],M_AXI_DC_ARBURST[1:0],M_AXI_DC_ARLOCK,M_AXI_DC_ARCACHE[3:0],M_AXI_DC_ARPROT[2:0],M_AXI_DC_ARQOS[3:0],M_AXI_DC_ARVALID,M_AXI_DC_ARREADY,M_AXI_DC_RID[0:0],M_AXI_DC_RDATA[31:0],M_AXI_DC_RRESP[1:0],M_AXI_DC_RLAST,M_AXI_DC_RVALID,M_AXI_DC_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "MicroBlaze,Vivado 2018.2";
begin
end;
