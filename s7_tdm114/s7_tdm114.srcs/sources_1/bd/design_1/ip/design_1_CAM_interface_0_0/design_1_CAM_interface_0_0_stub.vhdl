-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Sep  9 15:56:53 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_CAM_interface_0_0 -prefix
--               design_1_CAM_interface_0_0_ design_1_CAM_interface_0_0_stub.vhdl
-- Design      : design_1_CAM_interface_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_CAM_interface_0_0 is
  Port ( 
    pclk : in STD_LOGIC;
    pixel_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    line_valid_in : in STD_LOGIC;
    frame_valid_in : in STD_LOGIC;
    pclk_out : out STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    line_valid_out : out STD_LOGIC;
    frame_valid_out : out STD_LOGIC
  );

end design_1_CAM_interface_0_0;

architecture stub of design_1_CAM_interface_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pclk,pixel_in[9:0],line_valid_in,frame_valid_in,pclk_out,Dout[7:0],line_valid_out,frame_valid_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CAM_interface,Vivado 2018.2";
begin
end;
