-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Apr  7 14:16:24 2019
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/hdl_projects/i2s_snickerdoodle/i2s_snickerdoodle.srcs/sources_1/bd/design_1/ip/design_1_audio_top_0_0/design_1_audio_top_0_0_stub.vhdl
-- Design      : design_1_audio_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_audio_top_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    AudioA_TVALID : in STD_LOGIC;
    AudioA_TREADY : out STD_LOGIC;
    AudioA_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AudioA_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioA_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioA_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TVALID : out STD_LOGIC;
    AudioB_TREADY : in STD_LOGIC;
    AudioB_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AudioB_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioB_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioB_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TID : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_audio_top_0_0;

architecture stub of design_1_audio_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,AudioA_TVALID,AudioA_TREADY,AudioA_TDATA[31:0],AudioA_TDEST[0:0],AudioA_TKEEP[3:0],AudioA_TSTRB[3:0],AudioA_TUSER[0:0],AudioA_TLAST[0:0],AudioA_TID[0:0],AudioB_TVALID,AudioB_TREADY,AudioB_TDATA[31:0],AudioB_TDEST[0:0],AudioB_TKEEP[3:0],AudioB_TSTRB[3:0],AudioB_TUSER[0:0],AudioB_TLAST[0:0],AudioB_TID[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "audio_top,Vivado 2018.3";
begin
end;
