-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Sep  9 16:06:17 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_dlmb_v10_0 -prefix
--               design_1_dlmb_v10_0_ design_1_dlmb_v10_0_sim_netlist.vhdl
-- Design      : design_1_dlmb_v10_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dlmb_v10_0_lmb_v10 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute C_EXT_RESET_HIGH : integer;
  attribute C_EXT_RESET_HIGH of design_1_dlmb_v10_0_lmb_v10 : entity is 1;
  attribute C_LMB_AWIDTH : integer;
  attribute C_LMB_AWIDTH of design_1_dlmb_v10_0_lmb_v10 : entity is 32;
  attribute C_LMB_DWIDTH : integer;
  attribute C_LMB_DWIDTH of design_1_dlmb_v10_0_lmb_v10 : entity is 32;
  attribute C_LMB_NUM_SLAVES : integer;
  attribute C_LMB_NUM_SLAVES of design_1_dlmb_v10_0_lmb_v10 : entity is 1;
end design_1_dlmb_v10_0_lmb_v10;

architecture STRUCTURE of design_1_dlmb_v10_0_lmb_v10 is
  signal \^m_abus\ : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \^m_addrstrobe\ : STD_LOGIC;
  signal \^m_be\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^m_dbus\ : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \^m_readstrobe\ : STD_LOGIC;
  signal \^m_writestrobe\ : STD_LOGIC;
  signal \^sl_ce\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sl_dbus\ : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \^sl_ready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sl_ue\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sl_wait\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of POR_FF_I : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of POR_FF_I : label is "FDS";
begin
  LMB_ABus(0 to 31) <= \^m_abus\(0 to 31);
  LMB_AddrStrobe <= \^m_addrstrobe\;
  LMB_BE(0 to 3) <= \^m_be\(0 to 3);
  LMB_CE <= \^sl_ce\(0);
  LMB_ReadDBus(0 to 31) <= \^sl_dbus\(0 to 31);
  LMB_ReadStrobe <= \^m_readstrobe\;
  LMB_Ready <= \^sl_ready\(0);
  LMB_UE <= \^sl_ue\(0);
  LMB_Wait <= \^sl_wait\(0);
  LMB_WriteDBus(0 to 31) <= \^m_dbus\(0 to 31);
  LMB_WriteStrobe <= \^m_writestrobe\;
  \^m_abus\(0 to 31) <= M_ABus(0 to 31);
  \^m_addrstrobe\ <= M_AddrStrobe;
  \^m_be\(0 to 3) <= M_BE(0 to 3);
  \^m_dbus\(0 to 31) <= M_DBus(0 to 31);
  \^m_readstrobe\ <= M_ReadStrobe;
  \^m_writestrobe\ <= M_WriteStrobe;
  \^sl_ce\(0) <= Sl_CE(0);
  \^sl_dbus\(0 to 31) <= Sl_DBus(0 to 31);
  \^sl_ready\(0) <= Sl_Ready(0);
  \^sl_ue\(0) <= Sl_UE(0);
  \^sl_wait\(0) <= Sl_Wait(0);
POR_FF_I: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => LMB_Clk,
      CE => '1',
      D => '0',
      Q => LMB_Rst,
      S => SYS_Rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_dlmb_v10_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dlmb_v10_0 : entity is "design_1_dlmb_v10_0,lmb_v10,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_dlmb_v10_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_dlmb_v10_0 : entity is "lmb_v10,Vivado 2018.2";
end design_1_dlmb_v10_0;

architecture STRUCTURE of design_1_dlmb_v10_0 is
  attribute C_EXT_RESET_HIGH : integer;
  attribute C_EXT_RESET_HIGH of U0 : label is 1;
  attribute C_LMB_AWIDTH : integer;
  attribute C_LMB_AWIDTH of U0 : label is 32;
  attribute C_LMB_DWIDTH : integer;
  attribute C_LMB_DWIDTH of U0 : label is 32;
  attribute C_LMB_NUM_SLAVES : integer;
  attribute C_LMB_NUM_SLAVES of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of LMB_AddrStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 ADDRSTROBE";
  attribute x_interface_info of LMB_CE : signal is "xilinx.com:interface:lmb:1.0 LMB_M CE";
  attribute x_interface_info of LMB_Clk : signal is "xilinx.com:signal:clock:1.0 CLK.LMB_Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of LMB_Clk : signal is "XIL_INTERFACENAME CLK.LMB_Clk, ASSOCIATED_BUSIF LMB_Sl_0:LMB_Sl_1:LMB_Sl_2:LMB_Sl_3:LMB_Sl_4:LMB_Sl_5:LMB_Sl_6:LMB_Sl_7:LMB_Sl_8:LMB_Sl_9:LMB_Sl_10:LMB_Sl_11:LMB_Sl_12:LMB_Sl_13:LMB_Sl_14:LMB_Sl_15:LMB_M, ASSOCIATED_RESET SYS_Rst, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk";
  attribute x_interface_info of LMB_ReadStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READSTROBE";
  attribute x_interface_info of LMB_Ready : signal is "xilinx.com:interface:lmb:1.0 LMB_M READY";
  attribute x_interface_info of LMB_Rst : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 RST, xilinx.com:interface:lmb:1.0 LMB_M RST";
  attribute x_interface_parameter of LMB_Rst : signal is "XIL_INTERFACENAME LMB_Sl_0, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, XIL_INTERFACENAME LMB_M, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of LMB_UE : signal is "xilinx.com:interface:lmb:1.0 LMB_M UE";
  attribute x_interface_info of LMB_Wait : signal is "xilinx.com:interface:lmb:1.0 LMB_M WAIT";
  attribute x_interface_info of LMB_WriteStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WRITESTROBE";
  attribute x_interface_info of M_AddrStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_M ADDRSTROBE";
  attribute x_interface_info of M_ReadStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_M READSTROBE";
  attribute x_interface_info of M_WriteStrobe : signal is "xilinx.com:interface:lmb:1.0 LMB_M WRITESTROBE";
  attribute x_interface_info of SYS_Rst : signal is "xilinx.com:signal:reset:1.0 RST.SYS_Rst RST";
  attribute x_interface_parameter of SYS_Rst : signal is "XIL_INTERFACENAME RST.SYS_Rst, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT";
  attribute x_interface_info of LMB_ABus : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 ABUS";
  attribute x_interface_info of LMB_BE : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 BE";
  attribute x_interface_info of LMB_ReadDBus : signal is "xilinx.com:interface:lmb:1.0 LMB_M READDBUS";
  attribute x_interface_info of LMB_WriteDBus : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WRITEDBUS";
  attribute x_interface_info of M_ABus : signal is "xilinx.com:interface:lmb:1.0 LMB_M ABUS";
  attribute x_interface_info of M_BE : signal is "xilinx.com:interface:lmb:1.0 LMB_M BE";
  attribute x_interface_info of M_DBus : signal is "xilinx.com:interface:lmb:1.0 LMB_M WRITEDBUS";
  attribute x_interface_info of Sl_CE : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 CE";
  attribute x_interface_info of Sl_DBus : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READDBUS";
  attribute x_interface_info of Sl_Ready : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READY";
  attribute x_interface_info of Sl_UE : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 UE";
  attribute x_interface_info of Sl_Wait : signal is "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WAIT";
begin
U0: entity work.design_1_dlmb_v10_0_lmb_v10
     port map (
      LMB_ABus(0 to 31) => LMB_ABus(0 to 31),
      LMB_AddrStrobe => LMB_AddrStrobe,
      LMB_BE(0 to 3) => LMB_BE(0 to 3),
      LMB_CE => LMB_CE,
      LMB_Clk => LMB_Clk,
      LMB_ReadDBus(0 to 31) => LMB_ReadDBus(0 to 31),
      LMB_ReadStrobe => LMB_ReadStrobe,
      LMB_Ready => LMB_Ready,
      LMB_Rst => LMB_Rst,
      LMB_UE => LMB_UE,
      LMB_Wait => LMB_Wait,
      LMB_WriteDBus(0 to 31) => LMB_WriteDBus(0 to 31),
      LMB_WriteStrobe => LMB_WriteStrobe,
      M_ABus(0 to 31) => M_ABus(0 to 31),
      M_AddrStrobe => M_AddrStrobe,
      M_BE(0 to 3) => M_BE(0 to 3),
      M_DBus(0 to 31) => M_DBus(0 to 31),
      M_ReadStrobe => M_ReadStrobe,
      M_WriteStrobe => M_WriteStrobe,
      SYS_Rst => SYS_Rst,
      Sl_CE(0) => Sl_CE(0),
      Sl_DBus(0 to 31) => Sl_DBus(0 to 31),
      Sl_Ready(0) => Sl_Ready(0),
      Sl_UE(0) => Sl_UE(0),
      Sl_Wait(0) => Sl_Wait(0)
    );
end STRUCTURE;
