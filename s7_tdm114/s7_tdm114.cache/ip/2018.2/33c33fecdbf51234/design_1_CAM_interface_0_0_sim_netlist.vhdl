-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Sep  9 15:56:53 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CAM_interface_0_0_sim_netlist.vhdl
-- Design      : design_1_CAM_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAM_interface is
  port (
    pclk_out : out STD_LOGIC;
    pclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAM_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAM_interface is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFG_PixelClk : label is "PRIMITIVE";
begin
BUFG_PixelClk: unisim.vcomponents.BUFG
     port map (
      I => pclk,
      O => pclk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pclk : in STD_LOGIC;
    pixel_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    line_valid_in : in STD_LOGIC;
    frame_valid_in : in STD_LOGIC;
    pclk_out : out STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    line_valid_out : out STD_LOGIC;
    frame_valid_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_CAM_interface_0_0,CAM_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "CAM_interface,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^frame_valid_in\ : STD_LOGIC;
  signal \^line_valid_in\ : STD_LOGIC;
  signal \^pixel_in\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  Dout(7 downto 0) <= \^pixel_in\(9 downto 2);
  \^frame_valid_in\ <= frame_valid_in;
  \^line_valid_in\ <= line_valid_in;
  \^pixel_in\(9 downto 2) <= pixel_in(9 downto 2);
  frame_valid_out <= \^frame_valid_in\;
  line_valid_out <= \^line_valid_in\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAM_interface
     port map (
      pclk => pclk,
      pclk_out => pclk_out
    );
end STRUCTURE;
