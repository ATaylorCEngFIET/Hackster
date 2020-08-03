-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
-- Date        : Fri Mar  6 19:21:28 2020
-- Host        : DESKTOP-L3OMJC1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tpg_0_1_stub.vhdl
-- Design      : design_1_tpg_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_cmd_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_cmd_AWVALID : in STD_LOGIC;
    s_axi_cmd_AWREADY : out STD_LOGIC;
    s_axi_cmd_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_cmd_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_cmd_WVALID : in STD_LOGIC;
    s_axi_cmd_WREADY : out STD_LOGIC;
    s_axi_cmd_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_cmd_BVALID : out STD_LOGIC;
    s_axi_cmd_BREADY : in STD_LOGIC;
    s_axi_cmd_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_cmd_ARVALID : in STD_LOGIC;
    s_axi_cmd_ARREADY : out STD_LOGIC;
    s_axi_cmd_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_cmd_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_cmd_RVALID : out STD_LOGIC;
    s_axi_cmd_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    OUTPUT_STREAM_TVALID : out STD_LOGIC;
    OUTPUT_STREAM_TREADY : in STD_LOGIC;
    OUTPUT_STREAM_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    OUTPUT_STREAM_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    OUTPUT_STREAM_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    OUTPUT_STREAM_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_STREAM_TID : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_cmd_AWADDR[4:0],s_axi_cmd_AWVALID,s_axi_cmd_AWREADY,s_axi_cmd_WDATA[31:0],s_axi_cmd_WSTRB[3:0],s_axi_cmd_WVALID,s_axi_cmd_WREADY,s_axi_cmd_BRESP[1:0],s_axi_cmd_BVALID,s_axi_cmd_BREADY,s_axi_cmd_ARADDR[4:0],s_axi_cmd_ARVALID,s_axi_cmd_ARREADY,s_axi_cmd_RDATA[31:0],s_axi_cmd_RRESP[1:0],s_axi_cmd_RVALID,s_axi_cmd_RREADY,ap_clk,ap_rst_n,interrupt,OUTPUT_STREAM_TVALID,OUTPUT_STREAM_TREADY,OUTPUT_STREAM_TDATA[23:0],OUTPUT_STREAM_TDEST[0:0],OUTPUT_STREAM_TKEEP[2:0],OUTPUT_STREAM_TSTRB[2:0],OUTPUT_STREAM_TUSER[0:0],OUTPUT_STREAM_TLAST[0:0],OUTPUT_STREAM_TID[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tpg,Vivado 2019.1.1";
begin
end;
