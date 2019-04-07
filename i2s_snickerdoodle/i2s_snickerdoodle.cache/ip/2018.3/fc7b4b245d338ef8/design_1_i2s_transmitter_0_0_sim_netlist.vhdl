-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Apr  4 17:58:40 2019
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_i2s_transmitter_0_0_sim_netlist.vhdl
-- Design      : design_1_i2s_transmitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
begin
  dest_out(2 downto 0) <= \syncstages_ff[1]\(2 downto 0);
\src_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(0),
      Q => async_path_bit(0),
      R => '0'
    );
\src_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(1),
      Q => async_path_bit(1),
      R => '0'
    );
\src_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(2),
      Q => async_path_bit(2),
      R => '0'
    );
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ : entity is "ARRAY_SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
begin
  dest_out(7 downto 0) <= \syncstages_ff[1]\(7 downto 0);
\src_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(0),
      Q => async_path_bit(0),
      R => '0'
    );
\src_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(1),
      Q => async_path_bit(1),
      R => '0'
    );
\src_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(2),
      Q => async_path_bit(2),
      R => '0'
    );
\src_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(3),
      Q => async_path_bit(3),
      R => '0'
    );
\src_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(4),
      Q => async_path_bit(4),
      R => '0'
    );
\src_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(5),
      Q => async_path_bit(5),
      R => '0'
    );
\src_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(6),
      Q => async_path_bit(6),
      R => '0'
    );
\src_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(7),
      Q => async_path_bit(7),
      R => '0'
    );
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 191 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 191 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is 192;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ : entity is "ARRAY_SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 191 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 191 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][100]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][100]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][100]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][101]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][101]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][101]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][102]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][102]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][102]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][103]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][103]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][103]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][104]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][104]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][104]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][105]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][105]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][105]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][106]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][106]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][106]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][107]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][107]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][107]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][108]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][108]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][108]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][109]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][109]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][109]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][110]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][110]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][110]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][111]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][111]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][111]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][112]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][112]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][112]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][113]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][113]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][113]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][114]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][114]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][114]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][115]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][115]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][115]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][116]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][116]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][116]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][117]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][117]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][117]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][118]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][118]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][118]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][119]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][119]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][119]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][120]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][120]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][120]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][121]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][121]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][121]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][122]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][122]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][122]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][123]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][123]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][123]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][124]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][124]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][124]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][125]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][125]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][125]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][126]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][126]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][126]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][127]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][127]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][127]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][128]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][128]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][128]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][129]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][129]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][129]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][130]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][130]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][130]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][131]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][131]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][131]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][132]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][132]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][132]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][133]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][133]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][133]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][134]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][134]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][134]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][135]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][135]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][135]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][136]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][136]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][136]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][137]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][137]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][137]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][138]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][138]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][138]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][139]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][139]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][139]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][140]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][140]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][140]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][141]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][141]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][141]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][142]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][142]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][142]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][143]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][143]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][143]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][144]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][144]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][144]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][145]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][145]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][145]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][146]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][146]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][146]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][147]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][147]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][147]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][148]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][148]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][148]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][149]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][149]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][149]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][150]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][150]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][150]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][151]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][151]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][151]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][152]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][152]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][152]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][153]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][153]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][153]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][154]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][154]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][154]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][155]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][155]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][155]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][156]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][156]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][156]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][157]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][157]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][157]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][158]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][158]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][158]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][159]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][159]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][159]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][160]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][160]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][160]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][161]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][161]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][161]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][162]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][162]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][162]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][163]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][163]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][163]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][164]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][164]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][164]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][165]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][165]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][165]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][166]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][166]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][166]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][167]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][167]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][167]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][168]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][168]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][168]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][169]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][169]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][169]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][170]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][170]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][170]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][171]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][171]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][171]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][172]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][172]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][172]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][173]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][173]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][173]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][174]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][174]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][174]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][175]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][175]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][175]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][176]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][176]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][176]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][177]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][177]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][177]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][178]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][178]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][178]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][179]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][179]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][179]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][180]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][180]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][180]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][181]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][181]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][181]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][182]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][182]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][182]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][183]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][183]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][183]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][184]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][184]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][184]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][185]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][185]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][185]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][186]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][186]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][186]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][187]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][187]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][187]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][188]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][188]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][188]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][189]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][189]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][189]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][190]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][190]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][190]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][191]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][191]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][191]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][32]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][32]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][32]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][33]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][33]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][33]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][34]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][34]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][34]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][35]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][35]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][35]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][36]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][36]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][36]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][37]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][37]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][37]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][38]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][38]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][38]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][39]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][39]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][39]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][40]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][40]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][40]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][41]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][41]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][41]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][42]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][42]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][42]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][43]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][43]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][43]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][44]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][44]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][44]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][45]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][45]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][45]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][46]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][46]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][46]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][47]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][47]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][47]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][48]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][48]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][48]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][49]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][49]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][49]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][50]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][50]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][50]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][51]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][51]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][51]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][52]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][52]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][52]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][53]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][53]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][53]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][54]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][54]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][54]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][55]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][55]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][55]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][56]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][56]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][56]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][57]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][57]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][57]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][58]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][58]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][58]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][59]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][59]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][59]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][60]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][60]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][60]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][61]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][61]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][61]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][62]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][62]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][62]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][63]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][63]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][63]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][64]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][64]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][64]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][65]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][65]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][65]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][66]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][66]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][66]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][67]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][67]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][67]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][68]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][68]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][68]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][69]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][69]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][69]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][70]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][70]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][70]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][71]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][71]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][71]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][72]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][72]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][72]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][73]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][73]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][73]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][74]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][74]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][74]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][75]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][75]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][75]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][76]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][76]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][76]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][77]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][77]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][77]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][78]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][78]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][78]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][79]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][79]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][79]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][80]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][80]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][80]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][81]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][81]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][81]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][82]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][82]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][82]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][83]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][83]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][83]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][84]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][84]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][84]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][85]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][85]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][85]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][86]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][86]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][86]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][87]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][87]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][87]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][88]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][88]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][88]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][89]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][89]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][89]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][90]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][90]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][90]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][91]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][91]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][91]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][92]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][92]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][92]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][93]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][93]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][93]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][94]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][94]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][94]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][95]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][95]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][95]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][96]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][96]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][96]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][97]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][97]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][97]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][98]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][98]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][98]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][99]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][99]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][99]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][100]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][100]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][100]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][101]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][101]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][101]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][102]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][102]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][102]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][103]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][103]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][103]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][104]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][104]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][104]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][105]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][105]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][105]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][106]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][106]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][106]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][107]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][107]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][107]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][108]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][108]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][108]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][109]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][109]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][109]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][110]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][110]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][110]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][111]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][111]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][111]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][112]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][112]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][112]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][113]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][113]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][113]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][114]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][114]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][114]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][115]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][115]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][115]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][116]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][116]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][116]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][117]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][117]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][117]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][118]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][118]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][118]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][119]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][119]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][119]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][120]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][120]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][120]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][121]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][121]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][121]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][122]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][122]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][122]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][123]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][123]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][123]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][124]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][124]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][124]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][125]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][125]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][125]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][126]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][126]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][126]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][127]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][127]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][127]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][128]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][128]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][128]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][129]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][129]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][129]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][130]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][130]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][130]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][131]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][131]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][131]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][132]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][132]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][132]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][133]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][133]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][133]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][134]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][134]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][134]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][135]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][135]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][135]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][136]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][136]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][136]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][137]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][137]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][137]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][138]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][138]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][138]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][139]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][139]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][139]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][140]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][140]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][140]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][141]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][141]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][141]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][142]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][142]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][142]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][143]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][143]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][143]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][144]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][144]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][144]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][145]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][145]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][145]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][146]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][146]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][146]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][147]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][147]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][147]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][148]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][148]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][148]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][149]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][149]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][149]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][150]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][150]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][150]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][151]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][151]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][151]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][152]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][152]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][152]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][153]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][153]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][153]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][154]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][154]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][154]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][155]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][155]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][155]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][156]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][156]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][156]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][157]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][157]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][157]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][158]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][158]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][158]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][159]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][159]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][159]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][160]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][160]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][160]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][161]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][161]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][161]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][162]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][162]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][162]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][163]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][163]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][163]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][164]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][164]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][164]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][165]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][165]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][165]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][166]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][166]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][166]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][167]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][167]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][167]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][168]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][168]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][168]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][169]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][169]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][169]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][170]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][170]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][170]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][171]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][171]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][171]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][172]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][172]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][172]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][173]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][173]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][173]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][174]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][174]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][174]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][175]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][175]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][175]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][176]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][176]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][176]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][177]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][177]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][177]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][178]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][178]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][178]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][179]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][179]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][179]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][180]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][180]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][180]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][181]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][181]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][181]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][182]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][182]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][182]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][183]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][183]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][183]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][184]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][184]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][184]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][185]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][185]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][185]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][186]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][186]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][186]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][187]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][187]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][187]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][188]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][188]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][188]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][189]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][189]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][189]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][190]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][190]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][190]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][191]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][191]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][191]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][32]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][32]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][32]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][33]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][33]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][33]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][34]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][34]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][34]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][35]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][35]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][35]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][36]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][36]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][36]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][37]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][37]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][37]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][38]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][38]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][38]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][39]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][39]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][39]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][40]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][40]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][40]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][41]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][41]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][41]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][42]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][42]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][42]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][43]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][43]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][43]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][44]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][44]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][44]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][45]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][45]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][45]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][46]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][46]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][46]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][47]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][47]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][47]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][48]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][48]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][48]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][49]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][49]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][49]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][50]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][50]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][50]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][51]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][51]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][51]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][52]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][52]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][52]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][53]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][53]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][53]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][54]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][54]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][54]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][55]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][55]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][55]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][56]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][56]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][56]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][57]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][57]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][57]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][58]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][58]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][58]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][59]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][59]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][59]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][60]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][60]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][60]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][61]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][61]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][61]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][62]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][62]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][62]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][63]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][63]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][63]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][64]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][64]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][64]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][65]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][65]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][65]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][66]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][66]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][66]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][67]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][67]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][67]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][68]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][68]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][68]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][69]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][69]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][69]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][70]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][70]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][70]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][71]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][71]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][71]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][72]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][72]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][72]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][73]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][73]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][73]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][74]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][74]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][74]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][75]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][75]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][75]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][76]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][76]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][76]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][77]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][77]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][77]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][78]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][78]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][78]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][79]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][79]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][79]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][80]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][80]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][80]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][81]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][81]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][81]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][82]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][82]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][82]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][83]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][83]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][83]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][84]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][84]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][84]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][85]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][85]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][85]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][86]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][86]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][86]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][87]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][87]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][87]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][88]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][88]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][88]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][89]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][89]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][89]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][90]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][90]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][90]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][91]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][91]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][91]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][92]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][92]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][92]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][93]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][93]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][93]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][94]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][94]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][94]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][95]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][95]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][95]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][96]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][96]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][96]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][97]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][97]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][97]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][98]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][98]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][98]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][99]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][99]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][99]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][9]\ : label is "ARRAY_SINGLE";
begin
  dest_out(191 downto 0) <= \syncstages_ff[1]\(191 downto 0);
\src_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(0),
      Q => async_path_bit(0),
      R => '0'
    );
\src_ff_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(100),
      Q => async_path_bit(100),
      R => '0'
    );
\src_ff_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(101),
      Q => async_path_bit(101),
      R => '0'
    );
\src_ff_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(102),
      Q => async_path_bit(102),
      R => '0'
    );
\src_ff_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(103),
      Q => async_path_bit(103),
      R => '0'
    );
\src_ff_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(104),
      Q => async_path_bit(104),
      R => '0'
    );
\src_ff_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(105),
      Q => async_path_bit(105),
      R => '0'
    );
\src_ff_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(106),
      Q => async_path_bit(106),
      R => '0'
    );
\src_ff_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(107),
      Q => async_path_bit(107),
      R => '0'
    );
\src_ff_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(108),
      Q => async_path_bit(108),
      R => '0'
    );
\src_ff_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(109),
      Q => async_path_bit(109),
      R => '0'
    );
\src_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(10),
      Q => async_path_bit(10),
      R => '0'
    );
\src_ff_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(110),
      Q => async_path_bit(110),
      R => '0'
    );
\src_ff_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(111),
      Q => async_path_bit(111),
      R => '0'
    );
\src_ff_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(112),
      Q => async_path_bit(112),
      R => '0'
    );
\src_ff_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(113),
      Q => async_path_bit(113),
      R => '0'
    );
\src_ff_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(114),
      Q => async_path_bit(114),
      R => '0'
    );
\src_ff_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(115),
      Q => async_path_bit(115),
      R => '0'
    );
\src_ff_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(116),
      Q => async_path_bit(116),
      R => '0'
    );
\src_ff_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(117),
      Q => async_path_bit(117),
      R => '0'
    );
\src_ff_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(118),
      Q => async_path_bit(118),
      R => '0'
    );
\src_ff_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(119),
      Q => async_path_bit(119),
      R => '0'
    );
\src_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(11),
      Q => async_path_bit(11),
      R => '0'
    );
\src_ff_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(120),
      Q => async_path_bit(120),
      R => '0'
    );
\src_ff_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(121),
      Q => async_path_bit(121),
      R => '0'
    );
\src_ff_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(122),
      Q => async_path_bit(122),
      R => '0'
    );
\src_ff_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(123),
      Q => async_path_bit(123),
      R => '0'
    );
\src_ff_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(124),
      Q => async_path_bit(124),
      R => '0'
    );
\src_ff_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(125),
      Q => async_path_bit(125),
      R => '0'
    );
\src_ff_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(126),
      Q => async_path_bit(126),
      R => '0'
    );
\src_ff_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(127),
      Q => async_path_bit(127),
      R => '0'
    );
\src_ff_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(128),
      Q => async_path_bit(128),
      R => '0'
    );
\src_ff_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(129),
      Q => async_path_bit(129),
      R => '0'
    );
\src_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(12),
      Q => async_path_bit(12),
      R => '0'
    );
\src_ff_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(130),
      Q => async_path_bit(130),
      R => '0'
    );
\src_ff_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(131),
      Q => async_path_bit(131),
      R => '0'
    );
\src_ff_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(132),
      Q => async_path_bit(132),
      R => '0'
    );
\src_ff_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(133),
      Q => async_path_bit(133),
      R => '0'
    );
\src_ff_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(134),
      Q => async_path_bit(134),
      R => '0'
    );
\src_ff_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(135),
      Q => async_path_bit(135),
      R => '0'
    );
\src_ff_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(136),
      Q => async_path_bit(136),
      R => '0'
    );
\src_ff_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(137),
      Q => async_path_bit(137),
      R => '0'
    );
\src_ff_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(138),
      Q => async_path_bit(138),
      R => '0'
    );
\src_ff_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(139),
      Q => async_path_bit(139),
      R => '0'
    );
\src_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(13),
      Q => async_path_bit(13),
      R => '0'
    );
\src_ff_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(140),
      Q => async_path_bit(140),
      R => '0'
    );
\src_ff_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(141),
      Q => async_path_bit(141),
      R => '0'
    );
\src_ff_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(142),
      Q => async_path_bit(142),
      R => '0'
    );
\src_ff_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(143),
      Q => async_path_bit(143),
      R => '0'
    );
\src_ff_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(144),
      Q => async_path_bit(144),
      R => '0'
    );
\src_ff_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(145),
      Q => async_path_bit(145),
      R => '0'
    );
\src_ff_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(146),
      Q => async_path_bit(146),
      R => '0'
    );
\src_ff_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(147),
      Q => async_path_bit(147),
      R => '0'
    );
\src_ff_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(148),
      Q => async_path_bit(148),
      R => '0'
    );
\src_ff_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(149),
      Q => async_path_bit(149),
      R => '0'
    );
\src_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(14),
      Q => async_path_bit(14),
      R => '0'
    );
\src_ff_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(150),
      Q => async_path_bit(150),
      R => '0'
    );
\src_ff_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(151),
      Q => async_path_bit(151),
      R => '0'
    );
\src_ff_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(152),
      Q => async_path_bit(152),
      R => '0'
    );
\src_ff_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(153),
      Q => async_path_bit(153),
      R => '0'
    );
\src_ff_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(154),
      Q => async_path_bit(154),
      R => '0'
    );
\src_ff_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(155),
      Q => async_path_bit(155),
      R => '0'
    );
\src_ff_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(156),
      Q => async_path_bit(156),
      R => '0'
    );
\src_ff_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(157),
      Q => async_path_bit(157),
      R => '0'
    );
\src_ff_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(158),
      Q => async_path_bit(158),
      R => '0'
    );
\src_ff_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(159),
      Q => async_path_bit(159),
      R => '0'
    );
\src_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(15),
      Q => async_path_bit(15),
      R => '0'
    );
\src_ff_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(160),
      Q => async_path_bit(160),
      R => '0'
    );
\src_ff_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(161),
      Q => async_path_bit(161),
      R => '0'
    );
\src_ff_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(162),
      Q => async_path_bit(162),
      R => '0'
    );
\src_ff_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(163),
      Q => async_path_bit(163),
      R => '0'
    );
\src_ff_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(164),
      Q => async_path_bit(164),
      R => '0'
    );
\src_ff_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(165),
      Q => async_path_bit(165),
      R => '0'
    );
\src_ff_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(166),
      Q => async_path_bit(166),
      R => '0'
    );
\src_ff_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(167),
      Q => async_path_bit(167),
      R => '0'
    );
\src_ff_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(168),
      Q => async_path_bit(168),
      R => '0'
    );
\src_ff_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(169),
      Q => async_path_bit(169),
      R => '0'
    );
\src_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(16),
      Q => async_path_bit(16),
      R => '0'
    );
\src_ff_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(170),
      Q => async_path_bit(170),
      R => '0'
    );
\src_ff_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(171),
      Q => async_path_bit(171),
      R => '0'
    );
\src_ff_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(172),
      Q => async_path_bit(172),
      R => '0'
    );
\src_ff_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(173),
      Q => async_path_bit(173),
      R => '0'
    );
\src_ff_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(174),
      Q => async_path_bit(174),
      R => '0'
    );
\src_ff_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(175),
      Q => async_path_bit(175),
      R => '0'
    );
\src_ff_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(176),
      Q => async_path_bit(176),
      R => '0'
    );
\src_ff_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(177),
      Q => async_path_bit(177),
      R => '0'
    );
\src_ff_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(178),
      Q => async_path_bit(178),
      R => '0'
    );
\src_ff_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(179),
      Q => async_path_bit(179),
      R => '0'
    );
\src_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(17),
      Q => async_path_bit(17),
      R => '0'
    );
\src_ff_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(180),
      Q => async_path_bit(180),
      R => '0'
    );
\src_ff_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(181),
      Q => async_path_bit(181),
      R => '0'
    );
\src_ff_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(182),
      Q => async_path_bit(182),
      R => '0'
    );
\src_ff_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(183),
      Q => async_path_bit(183),
      R => '0'
    );
\src_ff_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(184),
      Q => async_path_bit(184),
      R => '0'
    );
\src_ff_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(185),
      Q => async_path_bit(185),
      R => '0'
    );
\src_ff_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(186),
      Q => async_path_bit(186),
      R => '0'
    );
\src_ff_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(187),
      Q => async_path_bit(187),
      R => '0'
    );
\src_ff_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(188),
      Q => async_path_bit(188),
      R => '0'
    );
\src_ff_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(189),
      Q => async_path_bit(189),
      R => '0'
    );
\src_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(18),
      Q => async_path_bit(18),
      R => '0'
    );
\src_ff_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(190),
      Q => async_path_bit(190),
      R => '0'
    );
\src_ff_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(191),
      Q => async_path_bit(191),
      R => '0'
    );
\src_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(19),
      Q => async_path_bit(19),
      R => '0'
    );
\src_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(1),
      Q => async_path_bit(1),
      R => '0'
    );
\src_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(20),
      Q => async_path_bit(20),
      R => '0'
    );
\src_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(21),
      Q => async_path_bit(21),
      R => '0'
    );
\src_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(22),
      Q => async_path_bit(22),
      R => '0'
    );
\src_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(23),
      Q => async_path_bit(23),
      R => '0'
    );
\src_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(24),
      Q => async_path_bit(24),
      R => '0'
    );
\src_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(25),
      Q => async_path_bit(25),
      R => '0'
    );
\src_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(26),
      Q => async_path_bit(26),
      R => '0'
    );
\src_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(27),
      Q => async_path_bit(27),
      R => '0'
    );
\src_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(28),
      Q => async_path_bit(28),
      R => '0'
    );
\src_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(29),
      Q => async_path_bit(29),
      R => '0'
    );
\src_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(2),
      Q => async_path_bit(2),
      R => '0'
    );
\src_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(30),
      Q => async_path_bit(30),
      R => '0'
    );
\src_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(31),
      Q => async_path_bit(31),
      R => '0'
    );
\src_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(32),
      Q => async_path_bit(32),
      R => '0'
    );
\src_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(33),
      Q => async_path_bit(33),
      R => '0'
    );
\src_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(34),
      Q => async_path_bit(34),
      R => '0'
    );
\src_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(35),
      Q => async_path_bit(35),
      R => '0'
    );
\src_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(36),
      Q => async_path_bit(36),
      R => '0'
    );
\src_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(37),
      Q => async_path_bit(37),
      R => '0'
    );
\src_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(38),
      Q => async_path_bit(38),
      R => '0'
    );
\src_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(39),
      Q => async_path_bit(39),
      R => '0'
    );
\src_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(3),
      Q => async_path_bit(3),
      R => '0'
    );
\src_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(40),
      Q => async_path_bit(40),
      R => '0'
    );
\src_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(41),
      Q => async_path_bit(41),
      R => '0'
    );
\src_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(42),
      Q => async_path_bit(42),
      R => '0'
    );
\src_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(43),
      Q => async_path_bit(43),
      R => '0'
    );
\src_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(44),
      Q => async_path_bit(44),
      R => '0'
    );
\src_ff_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(45),
      Q => async_path_bit(45),
      R => '0'
    );
\src_ff_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(46),
      Q => async_path_bit(46),
      R => '0'
    );
\src_ff_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(47),
      Q => async_path_bit(47),
      R => '0'
    );
\src_ff_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(48),
      Q => async_path_bit(48),
      R => '0'
    );
\src_ff_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(49),
      Q => async_path_bit(49),
      R => '0'
    );
\src_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(4),
      Q => async_path_bit(4),
      R => '0'
    );
\src_ff_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(50),
      Q => async_path_bit(50),
      R => '0'
    );
\src_ff_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(51),
      Q => async_path_bit(51),
      R => '0'
    );
\src_ff_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(52),
      Q => async_path_bit(52),
      R => '0'
    );
\src_ff_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(53),
      Q => async_path_bit(53),
      R => '0'
    );
\src_ff_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(54),
      Q => async_path_bit(54),
      R => '0'
    );
\src_ff_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(55),
      Q => async_path_bit(55),
      R => '0'
    );
\src_ff_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(56),
      Q => async_path_bit(56),
      R => '0'
    );
\src_ff_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(57),
      Q => async_path_bit(57),
      R => '0'
    );
\src_ff_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(58),
      Q => async_path_bit(58),
      R => '0'
    );
\src_ff_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(59),
      Q => async_path_bit(59),
      R => '0'
    );
\src_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(5),
      Q => async_path_bit(5),
      R => '0'
    );
\src_ff_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(60),
      Q => async_path_bit(60),
      R => '0'
    );
\src_ff_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(61),
      Q => async_path_bit(61),
      R => '0'
    );
\src_ff_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(62),
      Q => async_path_bit(62),
      R => '0'
    );
\src_ff_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(63),
      Q => async_path_bit(63),
      R => '0'
    );
\src_ff_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(64),
      Q => async_path_bit(64),
      R => '0'
    );
\src_ff_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(65),
      Q => async_path_bit(65),
      R => '0'
    );
\src_ff_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(66),
      Q => async_path_bit(66),
      R => '0'
    );
\src_ff_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(67),
      Q => async_path_bit(67),
      R => '0'
    );
\src_ff_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(68),
      Q => async_path_bit(68),
      R => '0'
    );
\src_ff_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(69),
      Q => async_path_bit(69),
      R => '0'
    );
\src_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(6),
      Q => async_path_bit(6),
      R => '0'
    );
\src_ff_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(70),
      Q => async_path_bit(70),
      R => '0'
    );
\src_ff_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(71),
      Q => async_path_bit(71),
      R => '0'
    );
\src_ff_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(72),
      Q => async_path_bit(72),
      R => '0'
    );
\src_ff_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(73),
      Q => async_path_bit(73),
      R => '0'
    );
\src_ff_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(74),
      Q => async_path_bit(74),
      R => '0'
    );
\src_ff_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(75),
      Q => async_path_bit(75),
      R => '0'
    );
\src_ff_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(76),
      Q => async_path_bit(76),
      R => '0'
    );
\src_ff_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(77),
      Q => async_path_bit(77),
      R => '0'
    );
\src_ff_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(78),
      Q => async_path_bit(78),
      R => '0'
    );
\src_ff_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(79),
      Q => async_path_bit(79),
      R => '0'
    );
\src_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(7),
      Q => async_path_bit(7),
      R => '0'
    );
\src_ff_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(80),
      Q => async_path_bit(80),
      R => '0'
    );
\src_ff_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(81),
      Q => async_path_bit(81),
      R => '0'
    );
\src_ff_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(82),
      Q => async_path_bit(82),
      R => '0'
    );
\src_ff_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(83),
      Q => async_path_bit(83),
      R => '0'
    );
\src_ff_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(84),
      Q => async_path_bit(84),
      R => '0'
    );
\src_ff_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(85),
      Q => async_path_bit(85),
      R => '0'
    );
\src_ff_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(86),
      Q => async_path_bit(86),
      R => '0'
    );
\src_ff_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(87),
      Q => async_path_bit(87),
      R => '0'
    );
\src_ff_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(88),
      Q => async_path_bit(88),
      R => '0'
    );
\src_ff_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(89),
      Q => async_path_bit(89),
      R => '0'
    );
\src_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(8),
      Q => async_path_bit(8),
      R => '0'
    );
\src_ff_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(90),
      Q => async_path_bit(90),
      R => '0'
    );
\src_ff_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(91),
      Q => async_path_bit(91),
      R => '0'
    );
\src_ff_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(92),
      Q => async_path_bit(92),
      R => '0'
    );
\src_ff_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(93),
      Q => async_path_bit(93),
      R => '0'
    );
\src_ff_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(94),
      Q => async_path_bit(94),
      R => '0'
    );
\src_ff_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(95),
      Q => async_path_bit(95),
      R => '0'
    );
\src_ff_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(96),
      Q => async_path_bit(96),
      R => '0'
    );
\src_ff_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(97),
      Q => async_path_bit(97),
      R => '0'
    );
\src_ff_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(98),
      Q => async_path_bit(98),
      R => '0'
    );
\src_ff_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(99),
      Q => async_path_bit(99),
      R => '0'
    );
\src_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in(9),
      Q => async_path_bit(9),
      R => '0'
    );
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][100]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(100),
      Q => \syncstages_ff[0]\(100),
      R => '0'
    );
\syncstages_ff_reg[0][101]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(101),
      Q => \syncstages_ff[0]\(101),
      R => '0'
    );
\syncstages_ff_reg[0][102]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(102),
      Q => \syncstages_ff[0]\(102),
      R => '0'
    );
\syncstages_ff_reg[0][103]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(103),
      Q => \syncstages_ff[0]\(103),
      R => '0'
    );
\syncstages_ff_reg[0][104]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(104),
      Q => \syncstages_ff[0]\(104),
      R => '0'
    );
\syncstages_ff_reg[0][105]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(105),
      Q => \syncstages_ff[0]\(105),
      R => '0'
    );
\syncstages_ff_reg[0][106]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(106),
      Q => \syncstages_ff[0]\(106),
      R => '0'
    );
\syncstages_ff_reg[0][107]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(107),
      Q => \syncstages_ff[0]\(107),
      R => '0'
    );
\syncstages_ff_reg[0][108]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(108),
      Q => \syncstages_ff[0]\(108),
      R => '0'
    );
\syncstages_ff_reg[0][109]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(109),
      Q => \syncstages_ff[0]\(109),
      R => '0'
    );
\syncstages_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(10),
      Q => \syncstages_ff[0]\(10),
      R => '0'
    );
\syncstages_ff_reg[0][110]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(110),
      Q => \syncstages_ff[0]\(110),
      R => '0'
    );
\syncstages_ff_reg[0][111]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(111),
      Q => \syncstages_ff[0]\(111),
      R => '0'
    );
\syncstages_ff_reg[0][112]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(112),
      Q => \syncstages_ff[0]\(112),
      R => '0'
    );
\syncstages_ff_reg[0][113]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(113),
      Q => \syncstages_ff[0]\(113),
      R => '0'
    );
\syncstages_ff_reg[0][114]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(114),
      Q => \syncstages_ff[0]\(114),
      R => '0'
    );
\syncstages_ff_reg[0][115]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(115),
      Q => \syncstages_ff[0]\(115),
      R => '0'
    );
\syncstages_ff_reg[0][116]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(116),
      Q => \syncstages_ff[0]\(116),
      R => '0'
    );
\syncstages_ff_reg[0][117]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(117),
      Q => \syncstages_ff[0]\(117),
      R => '0'
    );
\syncstages_ff_reg[0][118]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(118),
      Q => \syncstages_ff[0]\(118),
      R => '0'
    );
\syncstages_ff_reg[0][119]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(119),
      Q => \syncstages_ff[0]\(119),
      R => '0'
    );
\syncstages_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(11),
      Q => \syncstages_ff[0]\(11),
      R => '0'
    );
\syncstages_ff_reg[0][120]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(120),
      Q => \syncstages_ff[0]\(120),
      R => '0'
    );
\syncstages_ff_reg[0][121]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(121),
      Q => \syncstages_ff[0]\(121),
      R => '0'
    );
\syncstages_ff_reg[0][122]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(122),
      Q => \syncstages_ff[0]\(122),
      R => '0'
    );
\syncstages_ff_reg[0][123]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(123),
      Q => \syncstages_ff[0]\(123),
      R => '0'
    );
\syncstages_ff_reg[0][124]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(124),
      Q => \syncstages_ff[0]\(124),
      R => '0'
    );
\syncstages_ff_reg[0][125]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(125),
      Q => \syncstages_ff[0]\(125),
      R => '0'
    );
\syncstages_ff_reg[0][126]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(126),
      Q => \syncstages_ff[0]\(126),
      R => '0'
    );
\syncstages_ff_reg[0][127]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(127),
      Q => \syncstages_ff[0]\(127),
      R => '0'
    );
\syncstages_ff_reg[0][128]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(128),
      Q => \syncstages_ff[0]\(128),
      R => '0'
    );
\syncstages_ff_reg[0][129]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(129),
      Q => \syncstages_ff[0]\(129),
      R => '0'
    );
\syncstages_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(12),
      Q => \syncstages_ff[0]\(12),
      R => '0'
    );
\syncstages_ff_reg[0][130]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(130),
      Q => \syncstages_ff[0]\(130),
      R => '0'
    );
\syncstages_ff_reg[0][131]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(131),
      Q => \syncstages_ff[0]\(131),
      R => '0'
    );
\syncstages_ff_reg[0][132]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(132),
      Q => \syncstages_ff[0]\(132),
      R => '0'
    );
\syncstages_ff_reg[0][133]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(133),
      Q => \syncstages_ff[0]\(133),
      R => '0'
    );
\syncstages_ff_reg[0][134]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(134),
      Q => \syncstages_ff[0]\(134),
      R => '0'
    );
\syncstages_ff_reg[0][135]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(135),
      Q => \syncstages_ff[0]\(135),
      R => '0'
    );
\syncstages_ff_reg[0][136]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(136),
      Q => \syncstages_ff[0]\(136),
      R => '0'
    );
\syncstages_ff_reg[0][137]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(137),
      Q => \syncstages_ff[0]\(137),
      R => '0'
    );
\syncstages_ff_reg[0][138]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(138),
      Q => \syncstages_ff[0]\(138),
      R => '0'
    );
\syncstages_ff_reg[0][139]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(139),
      Q => \syncstages_ff[0]\(139),
      R => '0'
    );
\syncstages_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(13),
      Q => \syncstages_ff[0]\(13),
      R => '0'
    );
\syncstages_ff_reg[0][140]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(140),
      Q => \syncstages_ff[0]\(140),
      R => '0'
    );
\syncstages_ff_reg[0][141]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(141),
      Q => \syncstages_ff[0]\(141),
      R => '0'
    );
\syncstages_ff_reg[0][142]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(142),
      Q => \syncstages_ff[0]\(142),
      R => '0'
    );
\syncstages_ff_reg[0][143]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(143),
      Q => \syncstages_ff[0]\(143),
      R => '0'
    );
\syncstages_ff_reg[0][144]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(144),
      Q => \syncstages_ff[0]\(144),
      R => '0'
    );
\syncstages_ff_reg[0][145]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(145),
      Q => \syncstages_ff[0]\(145),
      R => '0'
    );
\syncstages_ff_reg[0][146]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(146),
      Q => \syncstages_ff[0]\(146),
      R => '0'
    );
\syncstages_ff_reg[0][147]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(147),
      Q => \syncstages_ff[0]\(147),
      R => '0'
    );
\syncstages_ff_reg[0][148]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(148),
      Q => \syncstages_ff[0]\(148),
      R => '0'
    );
\syncstages_ff_reg[0][149]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(149),
      Q => \syncstages_ff[0]\(149),
      R => '0'
    );
\syncstages_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(14),
      Q => \syncstages_ff[0]\(14),
      R => '0'
    );
\syncstages_ff_reg[0][150]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(150),
      Q => \syncstages_ff[0]\(150),
      R => '0'
    );
\syncstages_ff_reg[0][151]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(151),
      Q => \syncstages_ff[0]\(151),
      R => '0'
    );
\syncstages_ff_reg[0][152]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(152),
      Q => \syncstages_ff[0]\(152),
      R => '0'
    );
\syncstages_ff_reg[0][153]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(153),
      Q => \syncstages_ff[0]\(153),
      R => '0'
    );
\syncstages_ff_reg[0][154]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(154),
      Q => \syncstages_ff[0]\(154),
      R => '0'
    );
\syncstages_ff_reg[0][155]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(155),
      Q => \syncstages_ff[0]\(155),
      R => '0'
    );
\syncstages_ff_reg[0][156]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(156),
      Q => \syncstages_ff[0]\(156),
      R => '0'
    );
\syncstages_ff_reg[0][157]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(157),
      Q => \syncstages_ff[0]\(157),
      R => '0'
    );
\syncstages_ff_reg[0][158]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(158),
      Q => \syncstages_ff[0]\(158),
      R => '0'
    );
\syncstages_ff_reg[0][159]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(159),
      Q => \syncstages_ff[0]\(159),
      R => '0'
    );
\syncstages_ff_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(15),
      Q => \syncstages_ff[0]\(15),
      R => '0'
    );
\syncstages_ff_reg[0][160]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(160),
      Q => \syncstages_ff[0]\(160),
      R => '0'
    );
\syncstages_ff_reg[0][161]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(161),
      Q => \syncstages_ff[0]\(161),
      R => '0'
    );
\syncstages_ff_reg[0][162]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(162),
      Q => \syncstages_ff[0]\(162),
      R => '0'
    );
\syncstages_ff_reg[0][163]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(163),
      Q => \syncstages_ff[0]\(163),
      R => '0'
    );
\syncstages_ff_reg[0][164]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(164),
      Q => \syncstages_ff[0]\(164),
      R => '0'
    );
\syncstages_ff_reg[0][165]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(165),
      Q => \syncstages_ff[0]\(165),
      R => '0'
    );
\syncstages_ff_reg[0][166]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(166),
      Q => \syncstages_ff[0]\(166),
      R => '0'
    );
\syncstages_ff_reg[0][167]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(167),
      Q => \syncstages_ff[0]\(167),
      R => '0'
    );
\syncstages_ff_reg[0][168]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(168),
      Q => \syncstages_ff[0]\(168),
      R => '0'
    );
\syncstages_ff_reg[0][169]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(169),
      Q => \syncstages_ff[0]\(169),
      R => '0'
    );
\syncstages_ff_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(16),
      Q => \syncstages_ff[0]\(16),
      R => '0'
    );
\syncstages_ff_reg[0][170]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(170),
      Q => \syncstages_ff[0]\(170),
      R => '0'
    );
\syncstages_ff_reg[0][171]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(171),
      Q => \syncstages_ff[0]\(171),
      R => '0'
    );
\syncstages_ff_reg[0][172]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(172),
      Q => \syncstages_ff[0]\(172),
      R => '0'
    );
\syncstages_ff_reg[0][173]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(173),
      Q => \syncstages_ff[0]\(173),
      R => '0'
    );
\syncstages_ff_reg[0][174]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(174),
      Q => \syncstages_ff[0]\(174),
      R => '0'
    );
\syncstages_ff_reg[0][175]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(175),
      Q => \syncstages_ff[0]\(175),
      R => '0'
    );
\syncstages_ff_reg[0][176]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(176),
      Q => \syncstages_ff[0]\(176),
      R => '0'
    );
\syncstages_ff_reg[0][177]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(177),
      Q => \syncstages_ff[0]\(177),
      R => '0'
    );
\syncstages_ff_reg[0][178]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(178),
      Q => \syncstages_ff[0]\(178),
      R => '0'
    );
\syncstages_ff_reg[0][179]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(179),
      Q => \syncstages_ff[0]\(179),
      R => '0'
    );
\syncstages_ff_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(17),
      Q => \syncstages_ff[0]\(17),
      R => '0'
    );
\syncstages_ff_reg[0][180]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(180),
      Q => \syncstages_ff[0]\(180),
      R => '0'
    );
\syncstages_ff_reg[0][181]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(181),
      Q => \syncstages_ff[0]\(181),
      R => '0'
    );
\syncstages_ff_reg[0][182]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(182),
      Q => \syncstages_ff[0]\(182),
      R => '0'
    );
\syncstages_ff_reg[0][183]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(183),
      Q => \syncstages_ff[0]\(183),
      R => '0'
    );
\syncstages_ff_reg[0][184]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(184),
      Q => \syncstages_ff[0]\(184),
      R => '0'
    );
\syncstages_ff_reg[0][185]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(185),
      Q => \syncstages_ff[0]\(185),
      R => '0'
    );
\syncstages_ff_reg[0][186]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(186),
      Q => \syncstages_ff[0]\(186),
      R => '0'
    );
\syncstages_ff_reg[0][187]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(187),
      Q => \syncstages_ff[0]\(187),
      R => '0'
    );
\syncstages_ff_reg[0][188]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(188),
      Q => \syncstages_ff[0]\(188),
      R => '0'
    );
\syncstages_ff_reg[0][189]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(189),
      Q => \syncstages_ff[0]\(189),
      R => '0'
    );
\syncstages_ff_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(18),
      Q => \syncstages_ff[0]\(18),
      R => '0'
    );
\syncstages_ff_reg[0][190]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(190),
      Q => \syncstages_ff[0]\(190),
      R => '0'
    );
\syncstages_ff_reg[0][191]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(191),
      Q => \syncstages_ff[0]\(191),
      R => '0'
    );
\syncstages_ff_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(19),
      Q => \syncstages_ff[0]\(19),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(20),
      Q => \syncstages_ff[0]\(20),
      R => '0'
    );
\syncstages_ff_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(21),
      Q => \syncstages_ff[0]\(21),
      R => '0'
    );
\syncstages_ff_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(22),
      Q => \syncstages_ff[0]\(22),
      R => '0'
    );
\syncstages_ff_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(23),
      Q => \syncstages_ff[0]\(23),
      R => '0'
    );
\syncstages_ff_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(24),
      Q => \syncstages_ff[0]\(24),
      R => '0'
    );
\syncstages_ff_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(25),
      Q => \syncstages_ff[0]\(25),
      R => '0'
    );
\syncstages_ff_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(26),
      Q => \syncstages_ff[0]\(26),
      R => '0'
    );
\syncstages_ff_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(27),
      Q => \syncstages_ff[0]\(27),
      R => '0'
    );
\syncstages_ff_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(28),
      Q => \syncstages_ff[0]\(28),
      R => '0'
    );
\syncstages_ff_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(29),
      Q => \syncstages_ff[0]\(29),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(30),
      Q => \syncstages_ff[0]\(30),
      R => '0'
    );
\syncstages_ff_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(31),
      Q => \syncstages_ff[0]\(31),
      R => '0'
    );
\syncstages_ff_reg[0][32]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(32),
      Q => \syncstages_ff[0]\(32),
      R => '0'
    );
\syncstages_ff_reg[0][33]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(33),
      Q => \syncstages_ff[0]\(33),
      R => '0'
    );
\syncstages_ff_reg[0][34]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(34),
      Q => \syncstages_ff[0]\(34),
      R => '0'
    );
\syncstages_ff_reg[0][35]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(35),
      Q => \syncstages_ff[0]\(35),
      R => '0'
    );
\syncstages_ff_reg[0][36]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(36),
      Q => \syncstages_ff[0]\(36),
      R => '0'
    );
\syncstages_ff_reg[0][37]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(37),
      Q => \syncstages_ff[0]\(37),
      R => '0'
    );
\syncstages_ff_reg[0][38]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(38),
      Q => \syncstages_ff[0]\(38),
      R => '0'
    );
\syncstages_ff_reg[0][39]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(39),
      Q => \syncstages_ff[0]\(39),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][40]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(40),
      Q => \syncstages_ff[0]\(40),
      R => '0'
    );
\syncstages_ff_reg[0][41]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(41),
      Q => \syncstages_ff[0]\(41),
      R => '0'
    );
\syncstages_ff_reg[0][42]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(42),
      Q => \syncstages_ff[0]\(42),
      R => '0'
    );
\syncstages_ff_reg[0][43]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(43),
      Q => \syncstages_ff[0]\(43),
      R => '0'
    );
\syncstages_ff_reg[0][44]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(44),
      Q => \syncstages_ff[0]\(44),
      R => '0'
    );
\syncstages_ff_reg[0][45]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(45),
      Q => \syncstages_ff[0]\(45),
      R => '0'
    );
\syncstages_ff_reg[0][46]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(46),
      Q => \syncstages_ff[0]\(46),
      R => '0'
    );
\syncstages_ff_reg[0][47]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(47),
      Q => \syncstages_ff[0]\(47),
      R => '0'
    );
\syncstages_ff_reg[0][48]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(48),
      Q => \syncstages_ff[0]\(48),
      R => '0'
    );
\syncstages_ff_reg[0][49]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(49),
      Q => \syncstages_ff[0]\(49),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][50]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(50),
      Q => \syncstages_ff[0]\(50),
      R => '0'
    );
\syncstages_ff_reg[0][51]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(51),
      Q => \syncstages_ff[0]\(51),
      R => '0'
    );
\syncstages_ff_reg[0][52]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(52),
      Q => \syncstages_ff[0]\(52),
      R => '0'
    );
\syncstages_ff_reg[0][53]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(53),
      Q => \syncstages_ff[0]\(53),
      R => '0'
    );
\syncstages_ff_reg[0][54]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(54),
      Q => \syncstages_ff[0]\(54),
      R => '0'
    );
\syncstages_ff_reg[0][55]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(55),
      Q => \syncstages_ff[0]\(55),
      R => '0'
    );
\syncstages_ff_reg[0][56]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(56),
      Q => \syncstages_ff[0]\(56),
      R => '0'
    );
\syncstages_ff_reg[0][57]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(57),
      Q => \syncstages_ff[0]\(57),
      R => '0'
    );
\syncstages_ff_reg[0][58]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(58),
      Q => \syncstages_ff[0]\(58),
      R => '0'
    );
\syncstages_ff_reg[0][59]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(59),
      Q => \syncstages_ff[0]\(59),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][60]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(60),
      Q => \syncstages_ff[0]\(60),
      R => '0'
    );
\syncstages_ff_reg[0][61]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(61),
      Q => \syncstages_ff[0]\(61),
      R => '0'
    );
\syncstages_ff_reg[0][62]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(62),
      Q => \syncstages_ff[0]\(62),
      R => '0'
    );
\syncstages_ff_reg[0][63]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(63),
      Q => \syncstages_ff[0]\(63),
      R => '0'
    );
\syncstages_ff_reg[0][64]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(64),
      Q => \syncstages_ff[0]\(64),
      R => '0'
    );
\syncstages_ff_reg[0][65]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(65),
      Q => \syncstages_ff[0]\(65),
      R => '0'
    );
\syncstages_ff_reg[0][66]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(66),
      Q => \syncstages_ff[0]\(66),
      R => '0'
    );
\syncstages_ff_reg[0][67]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(67),
      Q => \syncstages_ff[0]\(67),
      R => '0'
    );
\syncstages_ff_reg[0][68]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(68),
      Q => \syncstages_ff[0]\(68),
      R => '0'
    );
\syncstages_ff_reg[0][69]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(69),
      Q => \syncstages_ff[0]\(69),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][70]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(70),
      Q => \syncstages_ff[0]\(70),
      R => '0'
    );
\syncstages_ff_reg[0][71]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(71),
      Q => \syncstages_ff[0]\(71),
      R => '0'
    );
\syncstages_ff_reg[0][72]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(72),
      Q => \syncstages_ff[0]\(72),
      R => '0'
    );
\syncstages_ff_reg[0][73]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(73),
      Q => \syncstages_ff[0]\(73),
      R => '0'
    );
\syncstages_ff_reg[0][74]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(74),
      Q => \syncstages_ff[0]\(74),
      R => '0'
    );
\syncstages_ff_reg[0][75]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(75),
      Q => \syncstages_ff[0]\(75),
      R => '0'
    );
\syncstages_ff_reg[0][76]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(76),
      Q => \syncstages_ff[0]\(76),
      R => '0'
    );
\syncstages_ff_reg[0][77]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(77),
      Q => \syncstages_ff[0]\(77),
      R => '0'
    );
\syncstages_ff_reg[0][78]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(78),
      Q => \syncstages_ff[0]\(78),
      R => '0'
    );
\syncstages_ff_reg[0][79]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(79),
      Q => \syncstages_ff[0]\(79),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[0][80]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(80),
      Q => \syncstages_ff[0]\(80),
      R => '0'
    );
\syncstages_ff_reg[0][81]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(81),
      Q => \syncstages_ff[0]\(81),
      R => '0'
    );
\syncstages_ff_reg[0][82]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(82),
      Q => \syncstages_ff[0]\(82),
      R => '0'
    );
\syncstages_ff_reg[0][83]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(83),
      Q => \syncstages_ff[0]\(83),
      R => '0'
    );
\syncstages_ff_reg[0][84]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(84),
      Q => \syncstages_ff[0]\(84),
      R => '0'
    );
\syncstages_ff_reg[0][85]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(85),
      Q => \syncstages_ff[0]\(85),
      R => '0'
    );
\syncstages_ff_reg[0][86]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(86),
      Q => \syncstages_ff[0]\(86),
      R => '0'
    );
\syncstages_ff_reg[0][87]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(87),
      Q => \syncstages_ff[0]\(87),
      R => '0'
    );
\syncstages_ff_reg[0][88]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(88),
      Q => \syncstages_ff[0]\(88),
      R => '0'
    );
\syncstages_ff_reg[0][89]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(89),
      Q => \syncstages_ff[0]\(89),
      R => '0'
    );
\syncstages_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(8),
      Q => \syncstages_ff[0]\(8),
      R => '0'
    );
\syncstages_ff_reg[0][90]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(90),
      Q => \syncstages_ff[0]\(90),
      R => '0'
    );
\syncstages_ff_reg[0][91]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(91),
      Q => \syncstages_ff[0]\(91),
      R => '0'
    );
\syncstages_ff_reg[0][92]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(92),
      Q => \syncstages_ff[0]\(92),
      R => '0'
    );
\syncstages_ff_reg[0][93]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(93),
      Q => \syncstages_ff[0]\(93),
      R => '0'
    );
\syncstages_ff_reg[0][94]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(94),
      Q => \syncstages_ff[0]\(94),
      R => '0'
    );
\syncstages_ff_reg[0][95]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(95),
      Q => \syncstages_ff[0]\(95),
      R => '0'
    );
\syncstages_ff_reg[0][96]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(96),
      Q => \syncstages_ff[0]\(96),
      R => '0'
    );
\syncstages_ff_reg[0][97]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(97),
      Q => \syncstages_ff[0]\(97),
      R => '0'
    );
\syncstages_ff_reg[0][98]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(98),
      Q => \syncstages_ff[0]\(98),
      R => '0'
    );
\syncstages_ff_reg[0][99]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(99),
      Q => \syncstages_ff[0]\(99),
      R => '0'
    );
\syncstages_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(9),
      Q => \syncstages_ff[0]\(9),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][100]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(100),
      Q => \syncstages_ff[1]\(100),
      R => '0'
    );
\syncstages_ff_reg[1][101]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(101),
      Q => \syncstages_ff[1]\(101),
      R => '0'
    );
\syncstages_ff_reg[1][102]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(102),
      Q => \syncstages_ff[1]\(102),
      R => '0'
    );
\syncstages_ff_reg[1][103]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(103),
      Q => \syncstages_ff[1]\(103),
      R => '0'
    );
\syncstages_ff_reg[1][104]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(104),
      Q => \syncstages_ff[1]\(104),
      R => '0'
    );
\syncstages_ff_reg[1][105]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(105),
      Q => \syncstages_ff[1]\(105),
      R => '0'
    );
\syncstages_ff_reg[1][106]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(106),
      Q => \syncstages_ff[1]\(106),
      R => '0'
    );
\syncstages_ff_reg[1][107]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(107),
      Q => \syncstages_ff[1]\(107),
      R => '0'
    );
\syncstages_ff_reg[1][108]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(108),
      Q => \syncstages_ff[1]\(108),
      R => '0'
    );
\syncstages_ff_reg[1][109]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(109),
      Q => \syncstages_ff[1]\(109),
      R => '0'
    );
\syncstages_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(10),
      Q => \syncstages_ff[1]\(10),
      R => '0'
    );
\syncstages_ff_reg[1][110]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(110),
      Q => \syncstages_ff[1]\(110),
      R => '0'
    );
\syncstages_ff_reg[1][111]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(111),
      Q => \syncstages_ff[1]\(111),
      R => '0'
    );
\syncstages_ff_reg[1][112]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(112),
      Q => \syncstages_ff[1]\(112),
      R => '0'
    );
\syncstages_ff_reg[1][113]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(113),
      Q => \syncstages_ff[1]\(113),
      R => '0'
    );
\syncstages_ff_reg[1][114]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(114),
      Q => \syncstages_ff[1]\(114),
      R => '0'
    );
\syncstages_ff_reg[1][115]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(115),
      Q => \syncstages_ff[1]\(115),
      R => '0'
    );
\syncstages_ff_reg[1][116]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(116),
      Q => \syncstages_ff[1]\(116),
      R => '0'
    );
\syncstages_ff_reg[1][117]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(117),
      Q => \syncstages_ff[1]\(117),
      R => '0'
    );
\syncstages_ff_reg[1][118]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(118),
      Q => \syncstages_ff[1]\(118),
      R => '0'
    );
\syncstages_ff_reg[1][119]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(119),
      Q => \syncstages_ff[1]\(119),
      R => '0'
    );
\syncstages_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(11),
      Q => \syncstages_ff[1]\(11),
      R => '0'
    );
\syncstages_ff_reg[1][120]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(120),
      Q => \syncstages_ff[1]\(120),
      R => '0'
    );
\syncstages_ff_reg[1][121]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(121),
      Q => \syncstages_ff[1]\(121),
      R => '0'
    );
\syncstages_ff_reg[1][122]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(122),
      Q => \syncstages_ff[1]\(122),
      R => '0'
    );
\syncstages_ff_reg[1][123]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(123),
      Q => \syncstages_ff[1]\(123),
      R => '0'
    );
\syncstages_ff_reg[1][124]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(124),
      Q => \syncstages_ff[1]\(124),
      R => '0'
    );
\syncstages_ff_reg[1][125]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(125),
      Q => \syncstages_ff[1]\(125),
      R => '0'
    );
\syncstages_ff_reg[1][126]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(126),
      Q => \syncstages_ff[1]\(126),
      R => '0'
    );
\syncstages_ff_reg[1][127]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(127),
      Q => \syncstages_ff[1]\(127),
      R => '0'
    );
\syncstages_ff_reg[1][128]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(128),
      Q => \syncstages_ff[1]\(128),
      R => '0'
    );
\syncstages_ff_reg[1][129]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(129),
      Q => \syncstages_ff[1]\(129),
      R => '0'
    );
\syncstages_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(12),
      Q => \syncstages_ff[1]\(12),
      R => '0'
    );
\syncstages_ff_reg[1][130]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(130),
      Q => \syncstages_ff[1]\(130),
      R => '0'
    );
\syncstages_ff_reg[1][131]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(131),
      Q => \syncstages_ff[1]\(131),
      R => '0'
    );
\syncstages_ff_reg[1][132]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(132),
      Q => \syncstages_ff[1]\(132),
      R => '0'
    );
\syncstages_ff_reg[1][133]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(133),
      Q => \syncstages_ff[1]\(133),
      R => '0'
    );
\syncstages_ff_reg[1][134]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(134),
      Q => \syncstages_ff[1]\(134),
      R => '0'
    );
\syncstages_ff_reg[1][135]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(135),
      Q => \syncstages_ff[1]\(135),
      R => '0'
    );
\syncstages_ff_reg[1][136]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(136),
      Q => \syncstages_ff[1]\(136),
      R => '0'
    );
\syncstages_ff_reg[1][137]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(137),
      Q => \syncstages_ff[1]\(137),
      R => '0'
    );
\syncstages_ff_reg[1][138]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(138),
      Q => \syncstages_ff[1]\(138),
      R => '0'
    );
\syncstages_ff_reg[1][139]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(139),
      Q => \syncstages_ff[1]\(139),
      R => '0'
    );
\syncstages_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(13),
      Q => \syncstages_ff[1]\(13),
      R => '0'
    );
\syncstages_ff_reg[1][140]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(140),
      Q => \syncstages_ff[1]\(140),
      R => '0'
    );
\syncstages_ff_reg[1][141]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(141),
      Q => \syncstages_ff[1]\(141),
      R => '0'
    );
\syncstages_ff_reg[1][142]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(142),
      Q => \syncstages_ff[1]\(142),
      R => '0'
    );
\syncstages_ff_reg[1][143]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(143),
      Q => \syncstages_ff[1]\(143),
      R => '0'
    );
\syncstages_ff_reg[1][144]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(144),
      Q => \syncstages_ff[1]\(144),
      R => '0'
    );
\syncstages_ff_reg[1][145]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(145),
      Q => \syncstages_ff[1]\(145),
      R => '0'
    );
\syncstages_ff_reg[1][146]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(146),
      Q => \syncstages_ff[1]\(146),
      R => '0'
    );
\syncstages_ff_reg[1][147]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(147),
      Q => \syncstages_ff[1]\(147),
      R => '0'
    );
\syncstages_ff_reg[1][148]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(148),
      Q => \syncstages_ff[1]\(148),
      R => '0'
    );
\syncstages_ff_reg[1][149]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(149),
      Q => \syncstages_ff[1]\(149),
      R => '0'
    );
\syncstages_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(14),
      Q => \syncstages_ff[1]\(14),
      R => '0'
    );
\syncstages_ff_reg[1][150]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(150),
      Q => \syncstages_ff[1]\(150),
      R => '0'
    );
\syncstages_ff_reg[1][151]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(151),
      Q => \syncstages_ff[1]\(151),
      R => '0'
    );
\syncstages_ff_reg[1][152]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(152),
      Q => \syncstages_ff[1]\(152),
      R => '0'
    );
\syncstages_ff_reg[1][153]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(153),
      Q => \syncstages_ff[1]\(153),
      R => '0'
    );
\syncstages_ff_reg[1][154]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(154),
      Q => \syncstages_ff[1]\(154),
      R => '0'
    );
\syncstages_ff_reg[1][155]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(155),
      Q => \syncstages_ff[1]\(155),
      R => '0'
    );
\syncstages_ff_reg[1][156]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(156),
      Q => \syncstages_ff[1]\(156),
      R => '0'
    );
\syncstages_ff_reg[1][157]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(157),
      Q => \syncstages_ff[1]\(157),
      R => '0'
    );
\syncstages_ff_reg[1][158]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(158),
      Q => \syncstages_ff[1]\(158),
      R => '0'
    );
\syncstages_ff_reg[1][159]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(159),
      Q => \syncstages_ff[1]\(159),
      R => '0'
    );
\syncstages_ff_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(15),
      Q => \syncstages_ff[1]\(15),
      R => '0'
    );
\syncstages_ff_reg[1][160]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(160),
      Q => \syncstages_ff[1]\(160),
      R => '0'
    );
\syncstages_ff_reg[1][161]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(161),
      Q => \syncstages_ff[1]\(161),
      R => '0'
    );
\syncstages_ff_reg[1][162]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(162),
      Q => \syncstages_ff[1]\(162),
      R => '0'
    );
\syncstages_ff_reg[1][163]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(163),
      Q => \syncstages_ff[1]\(163),
      R => '0'
    );
\syncstages_ff_reg[1][164]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(164),
      Q => \syncstages_ff[1]\(164),
      R => '0'
    );
\syncstages_ff_reg[1][165]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(165),
      Q => \syncstages_ff[1]\(165),
      R => '0'
    );
\syncstages_ff_reg[1][166]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(166),
      Q => \syncstages_ff[1]\(166),
      R => '0'
    );
\syncstages_ff_reg[1][167]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(167),
      Q => \syncstages_ff[1]\(167),
      R => '0'
    );
\syncstages_ff_reg[1][168]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(168),
      Q => \syncstages_ff[1]\(168),
      R => '0'
    );
\syncstages_ff_reg[1][169]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(169),
      Q => \syncstages_ff[1]\(169),
      R => '0'
    );
\syncstages_ff_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(16),
      Q => \syncstages_ff[1]\(16),
      R => '0'
    );
\syncstages_ff_reg[1][170]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(170),
      Q => \syncstages_ff[1]\(170),
      R => '0'
    );
\syncstages_ff_reg[1][171]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(171),
      Q => \syncstages_ff[1]\(171),
      R => '0'
    );
\syncstages_ff_reg[1][172]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(172),
      Q => \syncstages_ff[1]\(172),
      R => '0'
    );
\syncstages_ff_reg[1][173]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(173),
      Q => \syncstages_ff[1]\(173),
      R => '0'
    );
\syncstages_ff_reg[1][174]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(174),
      Q => \syncstages_ff[1]\(174),
      R => '0'
    );
\syncstages_ff_reg[1][175]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(175),
      Q => \syncstages_ff[1]\(175),
      R => '0'
    );
\syncstages_ff_reg[1][176]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(176),
      Q => \syncstages_ff[1]\(176),
      R => '0'
    );
\syncstages_ff_reg[1][177]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(177),
      Q => \syncstages_ff[1]\(177),
      R => '0'
    );
\syncstages_ff_reg[1][178]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(178),
      Q => \syncstages_ff[1]\(178),
      R => '0'
    );
\syncstages_ff_reg[1][179]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(179),
      Q => \syncstages_ff[1]\(179),
      R => '0'
    );
\syncstages_ff_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(17),
      Q => \syncstages_ff[1]\(17),
      R => '0'
    );
\syncstages_ff_reg[1][180]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(180),
      Q => \syncstages_ff[1]\(180),
      R => '0'
    );
\syncstages_ff_reg[1][181]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(181),
      Q => \syncstages_ff[1]\(181),
      R => '0'
    );
\syncstages_ff_reg[1][182]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(182),
      Q => \syncstages_ff[1]\(182),
      R => '0'
    );
\syncstages_ff_reg[1][183]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(183),
      Q => \syncstages_ff[1]\(183),
      R => '0'
    );
\syncstages_ff_reg[1][184]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(184),
      Q => \syncstages_ff[1]\(184),
      R => '0'
    );
\syncstages_ff_reg[1][185]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(185),
      Q => \syncstages_ff[1]\(185),
      R => '0'
    );
\syncstages_ff_reg[1][186]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(186),
      Q => \syncstages_ff[1]\(186),
      R => '0'
    );
\syncstages_ff_reg[1][187]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(187),
      Q => \syncstages_ff[1]\(187),
      R => '0'
    );
\syncstages_ff_reg[1][188]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(188),
      Q => \syncstages_ff[1]\(188),
      R => '0'
    );
\syncstages_ff_reg[1][189]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(189),
      Q => \syncstages_ff[1]\(189),
      R => '0'
    );
\syncstages_ff_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(18),
      Q => \syncstages_ff[1]\(18),
      R => '0'
    );
\syncstages_ff_reg[1][190]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(190),
      Q => \syncstages_ff[1]\(190),
      R => '0'
    );
\syncstages_ff_reg[1][191]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(191),
      Q => \syncstages_ff[1]\(191),
      R => '0'
    );
\syncstages_ff_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(19),
      Q => \syncstages_ff[1]\(19),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(20),
      Q => \syncstages_ff[1]\(20),
      R => '0'
    );
\syncstages_ff_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(21),
      Q => \syncstages_ff[1]\(21),
      R => '0'
    );
\syncstages_ff_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(22),
      Q => \syncstages_ff[1]\(22),
      R => '0'
    );
\syncstages_ff_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(23),
      Q => \syncstages_ff[1]\(23),
      R => '0'
    );
\syncstages_ff_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(24),
      Q => \syncstages_ff[1]\(24),
      R => '0'
    );
\syncstages_ff_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(25),
      Q => \syncstages_ff[1]\(25),
      R => '0'
    );
\syncstages_ff_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(26),
      Q => \syncstages_ff[1]\(26),
      R => '0'
    );
\syncstages_ff_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(27),
      Q => \syncstages_ff[1]\(27),
      R => '0'
    );
\syncstages_ff_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(28),
      Q => \syncstages_ff[1]\(28),
      R => '0'
    );
\syncstages_ff_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(29),
      Q => \syncstages_ff[1]\(29),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(30),
      Q => \syncstages_ff[1]\(30),
      R => '0'
    );
\syncstages_ff_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(31),
      Q => \syncstages_ff[1]\(31),
      R => '0'
    );
\syncstages_ff_reg[1][32]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(32),
      Q => \syncstages_ff[1]\(32),
      R => '0'
    );
\syncstages_ff_reg[1][33]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(33),
      Q => \syncstages_ff[1]\(33),
      R => '0'
    );
\syncstages_ff_reg[1][34]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(34),
      Q => \syncstages_ff[1]\(34),
      R => '0'
    );
\syncstages_ff_reg[1][35]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(35),
      Q => \syncstages_ff[1]\(35),
      R => '0'
    );
\syncstages_ff_reg[1][36]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(36),
      Q => \syncstages_ff[1]\(36),
      R => '0'
    );
\syncstages_ff_reg[1][37]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(37),
      Q => \syncstages_ff[1]\(37),
      R => '0'
    );
\syncstages_ff_reg[1][38]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(38),
      Q => \syncstages_ff[1]\(38),
      R => '0'
    );
\syncstages_ff_reg[1][39]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(39),
      Q => \syncstages_ff[1]\(39),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][40]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(40),
      Q => \syncstages_ff[1]\(40),
      R => '0'
    );
\syncstages_ff_reg[1][41]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(41),
      Q => \syncstages_ff[1]\(41),
      R => '0'
    );
\syncstages_ff_reg[1][42]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(42),
      Q => \syncstages_ff[1]\(42),
      R => '0'
    );
\syncstages_ff_reg[1][43]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(43),
      Q => \syncstages_ff[1]\(43),
      R => '0'
    );
\syncstages_ff_reg[1][44]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(44),
      Q => \syncstages_ff[1]\(44),
      R => '0'
    );
\syncstages_ff_reg[1][45]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(45),
      Q => \syncstages_ff[1]\(45),
      R => '0'
    );
\syncstages_ff_reg[1][46]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(46),
      Q => \syncstages_ff[1]\(46),
      R => '0'
    );
\syncstages_ff_reg[1][47]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(47),
      Q => \syncstages_ff[1]\(47),
      R => '0'
    );
\syncstages_ff_reg[1][48]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(48),
      Q => \syncstages_ff[1]\(48),
      R => '0'
    );
\syncstages_ff_reg[1][49]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(49),
      Q => \syncstages_ff[1]\(49),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][50]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(50),
      Q => \syncstages_ff[1]\(50),
      R => '0'
    );
\syncstages_ff_reg[1][51]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(51),
      Q => \syncstages_ff[1]\(51),
      R => '0'
    );
\syncstages_ff_reg[1][52]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(52),
      Q => \syncstages_ff[1]\(52),
      R => '0'
    );
\syncstages_ff_reg[1][53]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(53),
      Q => \syncstages_ff[1]\(53),
      R => '0'
    );
\syncstages_ff_reg[1][54]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(54),
      Q => \syncstages_ff[1]\(54),
      R => '0'
    );
\syncstages_ff_reg[1][55]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(55),
      Q => \syncstages_ff[1]\(55),
      R => '0'
    );
\syncstages_ff_reg[1][56]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(56),
      Q => \syncstages_ff[1]\(56),
      R => '0'
    );
\syncstages_ff_reg[1][57]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(57),
      Q => \syncstages_ff[1]\(57),
      R => '0'
    );
\syncstages_ff_reg[1][58]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(58),
      Q => \syncstages_ff[1]\(58),
      R => '0'
    );
\syncstages_ff_reg[1][59]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(59),
      Q => \syncstages_ff[1]\(59),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][60]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(60),
      Q => \syncstages_ff[1]\(60),
      R => '0'
    );
\syncstages_ff_reg[1][61]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(61),
      Q => \syncstages_ff[1]\(61),
      R => '0'
    );
\syncstages_ff_reg[1][62]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(62),
      Q => \syncstages_ff[1]\(62),
      R => '0'
    );
\syncstages_ff_reg[1][63]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(63),
      Q => \syncstages_ff[1]\(63),
      R => '0'
    );
\syncstages_ff_reg[1][64]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(64),
      Q => \syncstages_ff[1]\(64),
      R => '0'
    );
\syncstages_ff_reg[1][65]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(65),
      Q => \syncstages_ff[1]\(65),
      R => '0'
    );
\syncstages_ff_reg[1][66]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(66),
      Q => \syncstages_ff[1]\(66),
      R => '0'
    );
\syncstages_ff_reg[1][67]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(67),
      Q => \syncstages_ff[1]\(67),
      R => '0'
    );
\syncstages_ff_reg[1][68]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(68),
      Q => \syncstages_ff[1]\(68),
      R => '0'
    );
\syncstages_ff_reg[1][69]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(69),
      Q => \syncstages_ff[1]\(69),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][70]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(70),
      Q => \syncstages_ff[1]\(70),
      R => '0'
    );
\syncstages_ff_reg[1][71]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(71),
      Q => \syncstages_ff[1]\(71),
      R => '0'
    );
\syncstages_ff_reg[1][72]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(72),
      Q => \syncstages_ff[1]\(72),
      R => '0'
    );
\syncstages_ff_reg[1][73]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(73),
      Q => \syncstages_ff[1]\(73),
      R => '0'
    );
\syncstages_ff_reg[1][74]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(74),
      Q => \syncstages_ff[1]\(74),
      R => '0'
    );
\syncstages_ff_reg[1][75]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(75),
      Q => \syncstages_ff[1]\(75),
      R => '0'
    );
\syncstages_ff_reg[1][76]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(76),
      Q => \syncstages_ff[1]\(76),
      R => '0'
    );
\syncstages_ff_reg[1][77]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(77),
      Q => \syncstages_ff[1]\(77),
      R => '0'
    );
\syncstages_ff_reg[1][78]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(78),
      Q => \syncstages_ff[1]\(78),
      R => '0'
    );
\syncstages_ff_reg[1][79]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(79),
      Q => \syncstages_ff[1]\(79),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][80]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(80),
      Q => \syncstages_ff[1]\(80),
      R => '0'
    );
\syncstages_ff_reg[1][81]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(81),
      Q => \syncstages_ff[1]\(81),
      R => '0'
    );
\syncstages_ff_reg[1][82]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(82),
      Q => \syncstages_ff[1]\(82),
      R => '0'
    );
\syncstages_ff_reg[1][83]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(83),
      Q => \syncstages_ff[1]\(83),
      R => '0'
    );
\syncstages_ff_reg[1][84]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(84),
      Q => \syncstages_ff[1]\(84),
      R => '0'
    );
\syncstages_ff_reg[1][85]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(85),
      Q => \syncstages_ff[1]\(85),
      R => '0'
    );
\syncstages_ff_reg[1][86]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(86),
      Q => \syncstages_ff[1]\(86),
      R => '0'
    );
\syncstages_ff_reg[1][87]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(87),
      Q => \syncstages_ff[1]\(87),
      R => '0'
    );
\syncstages_ff_reg[1][88]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(88),
      Q => \syncstages_ff[1]\(88),
      R => '0'
    );
\syncstages_ff_reg[1][89]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(89),
      Q => \syncstages_ff[1]\(89),
      R => '0'
    );
\syncstages_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(8),
      Q => \syncstages_ff[1]\(8),
      R => '0'
    );
\syncstages_ff_reg[1][90]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(90),
      Q => \syncstages_ff[1]\(90),
      R => '0'
    );
\syncstages_ff_reg[1][91]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(91),
      Q => \syncstages_ff[1]\(91),
      R => '0'
    );
\syncstages_ff_reg[1][92]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(92),
      Q => \syncstages_ff[1]\(92),
      R => '0'
    );
\syncstages_ff_reg[1][93]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(93),
      Q => \syncstages_ff[1]\(93),
      R => '0'
    );
\syncstages_ff_reg[1][94]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(94),
      Q => \syncstages_ff[1]\(94),
      R => '0'
    );
\syncstages_ff_reg[1][95]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(95),
      Q => \syncstages_ff[1]\(95),
      R => '0'
    );
\syncstages_ff_reg[1][96]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(96),
      Q => \syncstages_ff[1]\(96),
      R => '0'
    );
\syncstages_ff_reg[1][97]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(97),
      Q => \syncstages_ff[1]\(97),
      R => '0'
    );
\syncstages_ff_reg[1][98]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(98),
      Q => \syncstages_ff[1]\(98),
      R => '0'
    );
\syncstages_ff_reg[1][99]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(99),
      Q => \syncstages_ff[1]\(99),
      R => '0'
    );
\syncstages_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(9),
      Q => \syncstages_ff[1]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "ASYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 7;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "GRAY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair9";
begin
  dest_out_bin(6) <= \dest_graysync_ff[1]\(6);
  dest_out_bin(5 downto 0) <= \^dest_out_bin\(5 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(6),
      Q => async_path(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 7;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair3";
begin
  dest_out_bin(6) <= \dest_graysync_ff[1]\(6);
  dest_out_bin(5 downto 0) <= \^dest_out_bin\(5 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(6),
      Q => async_path(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair6";
begin
  dest_out_bin(7) <= \dest_graysync_ff[3]\(7);
  dest_out_bin(6 downto 0) <= \^dest_out_bin\(6 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(5),
      Q => \dest_graysync_ff[2]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => \dest_graysync_ff[2]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => \dest_graysync_ff[2]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(5),
      Q => \dest_graysync_ff[3]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(6),
      Q => \dest_graysync_ff[3]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(7),
      Q => \dest_graysync_ff[3]\(7),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \^dest_out_bin\(2),
      I2 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \^dest_out_bin\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(6),
      I3 => \dest_graysync_ff[3]\(7),
      I4 => \dest_graysync_ff[3]\(5),
      I5 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(5),
      I2 => \dest_graysync_ff[3]\(7),
      I3 => \dest_graysync_ff[3]\(6),
      I4 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(6),
      I2 => \dest_graysync_ff[3]\(7),
      I3 => \dest_graysync_ff[3]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(5),
      I1 => \dest_graysync_ff[3]\(7),
      I2 => \dest_graysync_ff[3]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(6),
      I1 => \dest_graysync_ff[3]\(7),
      O => \^dest_out_bin\(6)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair11";
begin
  dest_out_bin(7) <= \dest_graysync_ff[1]\(7);
  dest_out_bin(6 downto 0) <= \^dest_out_bin\(6 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(2),
      I2 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "SYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair13";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair28";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_1\ : in STD_LOGIC;
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_7_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_8_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \grdc.rd_data_count_i[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \grdc.rd_data_count_i[3]_i_8\ : label is "lutpair0";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06060A00090A0505"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => rd_en,
      I2 => \count_value_i_reg[1]_1\,
      I3 => \count_value_i_reg[1]_2\(0),
      I4 => \count_value_i_reg[1]_2\(1),
      I5 => ram_empty_i,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22202222"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_1\,
      I2 => \count_value_i_reg[1]_2\(0),
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDBFF5F542400A0A"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => rd_en,
      I2 => ram_empty_i,
      I3 => \count_value_i_reg[1]_2\(0),
      I4 => \count_value_i_reg[1]_2\(1),
      I5 => \^count_value_i_reg[1]_0\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_0\,
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      I2 => \^count_value_i_reg[1]_0\,
      I3 => Q(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \^count_value_i_reg[1]_0\,
      I1 => Q(1),
      I2 => \grdc.rd_data_count_i_reg[3]\(0),
      O => \grdc.rd_data_count_i[3]_i_3_n_0\
    );
\grdc.rd_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      O => \grdc.rd_data_count_i[3]_i_4_n_0\
    );
\grdc.rd_data_count_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \grdc.rd_data_count_i[3]_i_4_n_0\,
      I1 => \^count_value_i_reg[1]_0\,
      I2 => Q(1),
      I3 => \grdc.rd_data_count_i_reg[3]\(0),
      O => \grdc.rd_data_count_i[3]_i_7_n_0\
    );
\grdc.rd_data_count_i[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      I2 => DI(0),
      O => \grdc.rd_data_count_i[3]_i_8_n_0\
    );
\grdc.rd_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \grdc.rd_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => DI(1),
      DI(2) => \grdc.rd_data_count_i[3]_i_3_n_0\,
      DI(1) => \grdc.rd_data_count_i[3]_i_4_n_0\,
      DI(0) => DI(0),
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 2) => S(1 downto 0),
      S(1) => \grdc.rd_data_count_i[3]_i_7_n_0\,
      S(0) => \grdc.rd_data_count_i[3]_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    p_1_in : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_out_i_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \src_gray_ff_reg[2]\ : in STD_LOGIC;
    \src_gray_ff_reg[2]_0\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[7]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_grdc.rd_data_count_i_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1__4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_2__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\ : label is "soft_lutpair19";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  E(0) <= \^e\(0);
  \count_value_i_reg[6]_0\(6 downto 0) <= \^count_value_i_reg[6]_0\(6 downto 0);
  p_1_in <= \^p_1_in\;
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0200FD"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => \^count_value_i_reg[6]_0\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFEF00"
    )
        port map (
      I0 => rd_en,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^count_value_i_reg[6]_0\(0),
      I4 => \^count_value_i_reg[6]_0\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(1),
      I1 => \^count_value_i_reg[6]_0\(0),
      I2 => \^p_1_in\,
      I3 => \^count_value_i_reg[6]_0\(2),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(2),
      I1 => \^p_1_in\,
      I2 => \^count_value_i_reg[6]_0\(0),
      I3 => \^count_value_i_reg[6]_0\(1),
      I4 => \^count_value_i_reg[6]_0\(3),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(3),
      I1 => \^count_value_i_reg[6]_0\(1),
      I2 => \^count_value_i_reg[6]_0\(0),
      I3 => \^p_1_in\,
      I4 => \^count_value_i_reg[6]_0\(2),
      I5 => \^count_value_i_reg[6]_0\(4),
      O => \count_value_i[4]_i_1__4_n_0\
    );
\count_value_i[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => Q(0),
      I3 => Q(1),
      O => \^p_1_in\
    );
\count_value_i[5]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(4),
      I1 => \count_value_i[7]_i_2__0_n_0\,
      I2 => \^count_value_i_reg[6]_0\(5),
      O => \count_value_i[5]_i_1__4_n_0\
    );
\count_value_i[6]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i[7]_i_2__0_n_0\,
      I1 => \^count_value_i_reg[6]_0\(4),
      I2 => \^count_value_i_reg[6]_0\(5),
      I3 => \^count_value_i_reg[6]_0\(6),
      O => \count_value_i[6]_i_1__4_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i[7]_i_2__0_n_0\,
      I1 => \^count_value_i_reg[6]_0\(6),
      I2 => \^count_value_i_reg[6]_0\(5),
      I3 => \^count_value_i_reg[6]_0\(4),
      I4 => \count_value_i_reg_n_0_[7]\,
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(2),
      I1 => \^p_1_in\,
      I2 => \^count_value_i_reg[6]_0\(0),
      I3 => \^count_value_i_reg[6]_0\(1),
      I4 => \^count_value_i_reg[6]_0\(3),
      O => \count_value_i[7]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^count_value_i_reg[6]_0\(0),
      R => \count_value_i_reg[7]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^count_value_i_reg[6]_0\(1),
      R => \count_value_i_reg[7]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^count_value_i_reg[6]_0\(2),
      R => \count_value_i_reg[7]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^count_value_i_reg[6]_0\(3),
      R => \count_value_i_reg[7]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[4]_i_1__4_n_0\,
      Q => \^count_value_i_reg[6]_0\(4),
      R => \count_value_i_reg[7]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[5]_i_1__4_n_0\,
      Q => \^count_value_i_reg[6]_0\(5),
      R => \count_value_i_reg[7]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[6]_i_1__4_n_0\,
      Q => \^count_value_i_reg[6]_0\(6),
      R => \count_value_i_reg[7]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[7]\,
      R => \count_value_i_reg[7]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\,
      I1 => \^count_value_i_reg[6]_0\(4),
      I2 => \^count_value_i_reg[6]_0\(5),
      I3 => \^count_value_i_reg[6]_0\(6),
      I4 => \count_value_i_reg_n_0_[7]\,
      O => src_in_bin(6)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(5),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\,
      I2 => \^count_value_i_reg[6]_0\(4),
      I3 => \^count_value_i_reg[6]_0\(6),
      O => src_in_bin(5)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(4),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\,
      I2 => \^count_value_i_reg[6]_0\(5),
      O => src_in_bin(4)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\,
      I1 => \^count_value_i_reg[6]_0\(4),
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFEFAFF15010500"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(2),
      I1 => \^count_value_i_reg[6]_0\(0),
      I2 => \^count_value_i_reg[6]_0\(1),
      I3 => \src_gray_ff_reg[2]\,
      I4 => \src_gray_ff_reg[2]_0\,
      I5 => \^count_value_i_reg[6]_0\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3710C8E"
    )
        port map (
      I0 => \src_gray_ff_reg[2]_0\,
      I1 => \src_gray_ff_reg[2]\,
      I2 => \^count_value_i_reg[6]_0\(1),
      I3 => \^count_value_i_reg[6]_0\(0),
      I4 => \^count_value_i_reg[6]_0\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(0),
      I1 => \src_gray_ff_reg[2]_0\,
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAFEFAFF"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(2),
      I1 => \^count_value_i_reg[6]_0\(0),
      I2 => \^count_value_i_reg[6]_0\(1),
      I3 => \src_gray_ff_reg[2]\,
      I4 => \src_gray_ff_reg[2]_0\,
      I5 => \^count_value_i_reg[6]_0\(3),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(3),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(2),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(1),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0200FD"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => \^count_value_i_reg[6]_0\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(5),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(4),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(6),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(6),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(5),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(5),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_5_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(4),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(4),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\,
      CYINIT => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(0),
      DI(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      DI(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\,
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\,
      DI(0) => DI(0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0\,
      S(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0\,
      S(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0\,
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(3 downto 2) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_2_n_0\,
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_3_n_0\,
      O(3) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => D(6 downto 4),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_4_n_0\,
      S(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_5_n_0\,
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_6_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^e\(0)
    );
\grdc.rd_data_count_i[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(2),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \^count_value_i_reg[6]_0\(3),
      I3 => \grdc.rd_data_count_i_reg[7]\(1),
      O => S(0)
    );
\grdc.rd_data_count_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(6),
      I1 => \grdc.rd_data_count_i_reg[7]\(4),
      I2 => \count_value_i_reg_n_0_[7]\,
      I3 => \grdc.rd_data_count_i_reg[7]\(5),
      O => \grdc.rd_data_count_i[7]_i_6_n_0\
    );
\grdc.rd_data_count_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(5),
      I1 => \grdc.rd_data_count_i_reg[7]\(3),
      I2 => \^count_value_i_reg[6]_0\(6),
      I3 => \grdc.rd_data_count_i_reg[7]\(4),
      O => \grdc.rd_data_count_i[7]_i_7_n_0\
    );
\grdc.rd_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(4),
      I1 => \grdc.rd_data_count_i_reg[7]\(2),
      I2 => \^count_value_i_reg[6]_0\(5),
      I3 => \grdc.rd_data_count_i_reg[7]\(3),
      O => \grdc.rd_data_count_i[7]_i_8_n_0\
    );
\grdc.rd_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^count_value_i_reg[6]_0\(3),
      I1 => \grdc.rd_data_count_i_reg[7]\(1),
      I2 => \^count_value_i_reg[6]_0\(4),
      I3 => \grdc.rd_data_count_i_reg[7]\(2),
      O => \grdc.rd_data_count_i[7]_i_9_n_0\
    );
\grdc.rd_data_count_i_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3) => \NLW_grdc.rd_data_count_i_reg[7]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \grdc.rd_data_count_i_reg[7]_i_2_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[7]_i_2_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \grdc.rd_data_count_i_reg[7]_0\(2 downto 0),
      O(3 downto 0) => \reg_out_i_reg[0]\(3 downto 0),
      S(3) => \grdc.rd_data_count_i[7]_i_6_n_0\,
      S(2) => \grdc.rd_data_count_i[7]_i_7_n_0\,
      S(1) => \grdc.rd_data_count_i[7]_i_8_n_0\,
      S(0) => \grdc.rd_data_count_i[7]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwdc.wr_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair24";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gwdc.wr_data_count_i_reg[7]\(3),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[7]\(2),
      O => \gwdc.wr_data_count_i[3]_i_3_n_0\
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gwdc.wr_data_count_i_reg[7]\(1),
      O => \gwdc.wr_data_count_i[3]_i_4_n_0\
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[7]\(0),
      O => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gwdc.wr_data_count_i_reg[7]\(7),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gwdc.wr_data_count_i_reg[7]\(6),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gwdc.wr_data_count_i_reg[7]\(5),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gwdc.wr_data_count_i_reg[7]\(4),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[3]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[3]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(6 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    p_1_in : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_2__3\ : label is "soft_lutpair22";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FD"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FFEF00"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => p_1_in,
      I3 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \^q\(2),
      I1 => p_1_in,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => p_1_in,
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i[6]_i_2__3_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i[6]_i_2__3_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(6),
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[6]_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => p_1_in,
      I3 => \^q\(2),
      O => \count_value_i[6]_i_2__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[2]_0\ : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair26";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => wr_pntr_plus1_pf(3),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => wr_pntr_plus1_pf(3),
      I3 => \^q\(2),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus1_pf(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => wr_pntr_plus1_pf(3),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => wr_pntr_plus1_pf(3),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[5]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => wr_pntr_plus1_pf(3),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus1_pf(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(2),
      O => \count_value_i_reg[2]_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(3),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus1_pf(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(2),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(1),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(6),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(5),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(4),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => wr_pntr_plus1_pf_carry,
      DI(3) => \^q\(2),
      DI(2) => wr_pntr_plus1_pf(3),
      DI(1 downto 0) => \^q\(1 downto 0),
      O(3) => D(0),
      O(2 downto 0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3 downto 2) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^q\(4 downto 3),
      O(3) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => D(3 downto 1),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_2_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_3_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    d_out_reg_0 : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \gof.overflow_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair23";
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => wrst_busy,
      O => clr_full
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3A200A2"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I1 => \^rst_d1\,
      I2 => rst,
      I3 => \gof.overflow_i_reg\,
      I4 => prog_full,
      O => d_out_reg_0
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gof.overflow_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec is
  port (
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \reg_out_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_out_i_reg[6]_1\ : out STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec is
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  signal going_afull : STD_LOGIC;
  signal leaving_afull : STD_LOGIC;
  signal \^reg_out_i_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  \reg_out_i_reg[6]_0\(6 downto 0) <= \^reg_out_i_reg[6]_0\(6 downto 0);
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFE0000000E"
    )
        port map (
      I0 => leaving_afull,
      I1 => going_afull,
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I3 => rst,
      I4 => clr_full,
      I5 => almost_full,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\,
      I2 => Q(6),
      I3 => \^reg_out_i_reg[6]_0\(6),
      I4 => wr_pntr_plus1_pf_carry,
      O => going_afull
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^reg_out_i_reg[6]_0\(2),
      I4 => Q(1),
      I5 => \^reg_out_i_reg[6]_0\(1),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(3),
      I1 => Q(3),
      I2 => Q(5),
      I3 => \^reg_out_i_reg[6]_0\(5),
      I4 => Q(4),
      I5 => \^reg_out_i_reg[6]_0\(4),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF909090"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(6),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\(5),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\,
      I3 => leaving_afull,
      I4 => wr_pntr_plus1_pf_carry,
      I5 => clr_full,
      O => \reg_out_i_reg[6]_1\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009000000000"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(1),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\(1),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2\,
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\(0),
      I4 => \^reg_out_i_reg[6]_0\(0),
      I5 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(6),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(6),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\,
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\,
      O => leaving_afull
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(3),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\(2),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\(4),
      I3 => \^reg_out_i_reg[6]_0\(5),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\(3),
      I5 => \^reg_out_i_reg[6]_0\(4),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(3),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(5),
      I3 => \^reg_out_i_reg[6]_0\(5),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(4),
      I5 => \^reg_out_i_reg[6]_0\(4),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(0),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(2),
      I3 => \^reg_out_i_reg[6]_0\(2),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(1),
      I5 => \^reg_out_i_reg[6]_0\(1),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^reg_out_i_reg[6]_0\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^reg_out_i_reg[6]_0\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^reg_out_i_reg[6]_0\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^reg_out_i_reg[6]_0\(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => \^reg_out_i_reg[6]_0\(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => \^reg_out_i_reg[6]_0\(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => \^reg_out_i_reg[6]_0\(6),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0 is
  port (
    ram_empty_i0 : out STD_LOGIC;
    \reg_out_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rd_en : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0 : entity is "xpm_fifo_reg_vec";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0 is
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal \^reg_out_i_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  \reg_out_i_reg[6]_0\(6 downto 0) <= \^reg_out_i_reg[6]_0\(6 downto 0);
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF90909090909090"
    )
        port map (
      I0 => Q(0),
      I1 => \^reg_out_i_reg[6]_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      I4 => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\,
      I5 => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\,
      I1 => \^reg_out_i_reg[6]_0\(1),
      I2 => Q(1),
      I3 => \^reg_out_i_reg[6]_0\(2),
      I4 => Q(2),
      I5 => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\,
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EF0000000000EF"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I3 => ram_empty_i,
      I4 => \^reg_out_i_reg[6]_0\(6),
      I5 => \gen_pf_ic_rc.ram_empty_i_reg_0\(6),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(5),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(5),
      I2 => \^reg_out_i_reg[6]_0\(4),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg_0\(4),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(3),
      I5 => \^reg_out_i_reg[6]_0\(3),
      O => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(2),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(2),
      I2 => \^reg_out_i_reg[6]_0\(1),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg_0\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(0),
      I5 => \^reg_out_i_reg[6]_0\(0),
      O => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(3),
      I1 => Q(3),
      I2 => \^reg_out_i_reg[6]_0\(4),
      I3 => Q(4),
      O => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_out_i_reg[6]_0\(5),
      I1 => Q(5),
      I2 => \^reg_out_i_reg[6]_0\(6),
      I3 => Q(6),
      O => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => \^reg_out_i_reg[6]_0\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \^reg_out_i_reg[6]_0\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \^reg_out_i_reg[6]_0\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \^reg_out_i_reg[6]_0\(3),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \^reg_out_i_reg[6]_0\(4),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \^reg_out_i_reg[6]_0\(5),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \^reg_out_i_reg[6]_0\(6),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ is
begin
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_out_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \reg_out_i_reg[7]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\grdc.rd_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[7]\(1),
      O => DI(1)
    );
\grdc.rd_data_count_i[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[7]\(0),
      I2 => \grdc.rd_data_count_i_reg[3]\,
      I3 => \grdc.rd_data_count_i_reg[7]\(1),
      I4 => \^q\(1),
      O => S(0)
    );
\grdc.rd_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[7]\(4),
      O => \reg_out_i_reg[5]_0\(2)
    );
\grdc.rd_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[7]\(3),
      O => \reg_out_i_reg[5]_0\(1)
    );
\grdc.rd_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[7]\(2),
      O => \reg_out_i_reg[5]_0\(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => DI(0),
      R => \reg_out_i_reg[7]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(0),
      R => \reg_out_i_reg[7]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(1),
      R => \reg_out_i_reg[7]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(2),
      R => \reg_out_i_reg[7]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(3),
      R => \reg_out_i_reg[7]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(4),
      R => \reg_out_i_reg[7]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(5),
      R => \reg_out_i_reg[7]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(6),
      R => \reg_out_i_reg[7]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 34 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 34 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 34 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 34 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4480;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 35;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p3_d32";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 34;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p3_d32";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 34;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 4480;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 34;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 34;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 5) => addrb(6 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 5) => addra(6 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => clkb,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => dina(15 downto 0),
      DIBDI(15 downto 0) => dina(31 downto 16),
      DIPADIP(1 downto 0) => dina(33 downto 32),
      DIPBDIP(1) => '1',
      DIPBDIP(0) => dina(34),
      DOADO(15 downto 0) => doutb(15 downto 0),
      DOBDO(15 downto 0) => doutb(31 downto 16),
      DOPADOP(1 downto 0) => doutb(33 downto 32),
      DOPBDOP(1) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\(1),
      DOPBDOP(0) => doutb(34),
      ENARDEN => enb,
      ENBWREN => ena,
      REGCEAREGCE => regceb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => rstb,
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => ena,
      WEBWE(2) => ena,
      WEBWE(1) => ena,
      WEBWE(0) => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_aes_dec is
  port (
    src_pulse : out STD_LOGIC;
    rAesBlockSyncError_reg_0 : out STD_LOGIC;
    pre_check_mode_reg_0 : out STD_LOGIC;
    id_check : out STD_LOGIC;
    rAesChannelStatusChange_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axis_aud_aclk : in STD_LOGIC;
    id_check_reg_0 : in STD_LOGIC;
    s_axis_aud_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    id_miss_reg_0 : in STD_LOGIC;
    pre_check_mode_reg_1 : in STD_LOGIC;
    s_axis_aud_tdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rAesBlockSyncError_other_reg_0 : in STD_LOGIC;
    dest_pulse : in STD_LOGIC;
    dest_out : in STD_LOGIC;
    s_axis_aud_aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rChannelStatusIn_reg[191]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_aes_dec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_aes_dec is
  signal FSM_sequential_stmAesDecode_i_1_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal iRst0 : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \^id_check\ : STD_LOGIC;
  signal id_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal id_count1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \id_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \id_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \id_count[2]_i_2_n_0\ : STD_LOGIC;
  signal id_miss_i_1_n_0 : STD_LOGIC;
  signal id_miss_i_2_n_0 : STD_LOGIC;
  signal id_miss_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal p_0_in4_in : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal p_4_out : STD_LOGIC;
  signal pre_check_mode_i_1_n_0 : STD_LOGIC;
  signal \^pre_check_mode_reg_0\ : STD_LOGIC;
  signal rAesBlockSyncError0 : STD_LOGIC;
  signal rAesBlockSyncError_int : STD_LOGIC;
  signal rAesBlockSyncError_int_reg_n_0 : STD_LOGIC;
  signal rAesBlockSyncError_other_i_1_n_0 : STD_LOGIC;
  signal rAesBlockSyncError_other_i_2_n_0 : STD_LOGIC;
  signal rAesBlockSyncError_other_i_3_n_0 : STD_LOGIC;
  signal rAesBlockSyncError_other_reg_n_0 : STD_LOGIC;
  signal rAesChannelStatusChange_i_1_n_0 : STD_LOGIC;
  signal rAesLastFrame : STD_LOGIC;
  signal rAesLastFrame_i_1_n_0 : STD_LOGIC;
  signal rAudioFrameCount0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rAudioFrameCount[3]_i_2_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[4]_i_2_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[5]_i_2_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[5]_i_3_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[5]_i_4_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[6]_i_2_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[6]_i_3_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[7]_i_2_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[7]_i_5_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount[7]_i_6_n_0\ : STD_LOGIC;
  signal \rAudioFrameCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \rAudioFrameCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \rAudioFrameCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \rAudioFrameCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \rAudioFrameCount_reg_n_0_[4]\ : STD_LOGIC;
  signal \rAudioFrameCount_reg_n_0_[5]\ : STD_LOGIC;
  signal \rAudioFrameCount_reg_n_0_[6]\ : STD_LOGIC;
  signal \rAudioFrameCount_reg_n_0_[7]\ : STD_LOGIC;
  signal rChannelStatusCapt0 : STD_LOGIC;
  signal rChannelStatusDiff : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rChannelStatusDiff0 : STD_LOGIC;
  signal rChannelStatusDiff00_out : STD_LOGIC;
  signal rChannelStatusDiff03_out : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__0_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__0_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__0_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__0_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__1_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__1_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__1_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__2_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__2_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_carry__2_n_3\ : STD_LOGIC;
  signal rChannelStatusDiff0_carry_i_1_n_0 : STD_LOGIC;
  signal rChannelStatusDiff0_carry_i_2_n_0 : STD_LOGIC;
  signal rChannelStatusDiff0_carry_i_3_n_0 : STD_LOGIC;
  signal rChannelStatusDiff0_carry_i_4_n_0 : STD_LOGIC;
  signal rChannelStatusDiff0_carry_n_0 : STD_LOGIC;
  signal rChannelStatusDiff0_carry_n_1 : STD_LOGIC;
  signal rChannelStatusDiff0_carry_n_2 : STD_LOGIC;
  signal rChannelStatusDiff0_carry_n_3 : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal rChannelStatusDiff1 : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__0_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__0_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__0_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__0_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__1_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__1_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__1_n_3\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__2_n_1\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__2_n_2\ : STD_LOGIC;
  signal \rChannelStatusDiff1_carry__2_n_3\ : STD_LOGIC;
  signal rChannelStatusDiff1_carry_i_1_n_0 : STD_LOGIC;
  signal rChannelStatusDiff1_carry_i_2_n_0 : STD_LOGIC;
  signal rChannelStatusDiff1_carry_i_3_n_0 : STD_LOGIC;
  signal rChannelStatusDiff1_carry_i_4_n_0 : STD_LOGIC;
  signal rChannelStatusDiff1_carry_n_0 : STD_LOGIC;
  signal rChannelStatusDiff1_carry_n_1 : STD_LOGIC;
  signal rChannelStatusDiff1_carry_n_2 : STD_LOGIC;
  signal rChannelStatusDiff1_carry_n_3 : STD_LOGIC;
  signal \rChannelStatusDiff[0]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff[1]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff[2]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelStatusDiff_reg_n_0_[0]\ : STD_LOGIC;
  signal \rChannelStatusDiff_reg_n_0_[1]\ : STD_LOGIC;
  signal \rChannelStatusDiff_reg_n_0_[2]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[0]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[10]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[11]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[12]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[13]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[14]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[15]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[16]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[17]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[18]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[19]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[1]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[20]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[21]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[22]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[23]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[24]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[25]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[26]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[27]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[28]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[29]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[2]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[30]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[31]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[32]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[33]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[34]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[35]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[36]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[37]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[38]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[39]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[3]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[40]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[41]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[42]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[43]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[44]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[45]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[46]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[47]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[4]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[5]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[6]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[7]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[8]\ : STD_LOGIC;
  signal \rChannelStatusIn_reg_n_0_[9]\ : STD_LOGIC;
  signal \stmAesDecode__0\ : STD_LOGIC;
  signal NLW_rChannelStatusDiff0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff0_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rChannelStatusDiff1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rChannelStatusDiff1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_stmAesDecode_reg : label is "sWaitForBlockStart:0,sRun:1,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rAesBlockSyncError_other_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of rAesBlockSyncError_other_i_3 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rAudioFrameCount[5]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rAudioFrameCount[5]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rAudioFrameCount[6]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rAudioFrameCount[7]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rChannelStatusDiff[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rChannelStatusDiff[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rChannelStatusDiff[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rChannelStatusDiff[3]_i_1\ : label is "soft_lutpair46";
begin
  Q(191 downto 0) <= \^q\(191 downto 0);
  id_check <= \^id_check\;
  pre_check_mode_reg_0 <= \^pre_check_mode_reg_0\;
FSM_sequential_stmAesDecode_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FE4444"
    )
        port map (
      I0 => pre_check_mode_reg_1,
      I1 => \rAudioFrameCount[5]_i_2_n_0\,
      I2 => \rAudioFrameCount[6]_i_2_n_0\,
      I3 => rAesBlockSyncError_other_reg_n_0,
      I4 => \stmAesDecode__0\,
      O => FSM_sequential_stmAesDecode_i_1_n_0
    );
FSM_sequential_stmAesDecode_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => FSM_sequential_stmAesDecode_i_1_n_0,
      Q => \stmAesDecode__0\,
      R => iRst0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(69),
      I1 => p_0_in(21),
      I2 => p_0_in(23),
      I3 => \^q\(71),
      I4 => p_0_in(22),
      I5 => \^q\(70),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(117),
      I1 => p_0_in1_in(21),
      I2 => p_0_in1_in(23),
      I3 => \^q\(119),
      I4 => p_0_in1_in(22),
      I5 => \^q\(118),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(66),
      I1 => p_0_in(18),
      I2 => p_0_in(20),
      I3 => \^q\(68),
      I4 => p_0_in(19),
      I5 => \^q\(67),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(114),
      I1 => p_0_in1_in(18),
      I2 => p_0_in1_in(20),
      I3 => \^q\(116),
      I4 => p_0_in1_in(19),
      I5 => \^q\(115),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(63),
      I1 => p_0_in(15),
      I2 => p_0_in(17),
      I3 => \^q\(65),
      I4 => p_0_in(16),
      I5 => \^q\(64),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(111),
      I1 => p_0_in1_in(15),
      I2 => p_0_in1_in(17),
      I3 => \^q\(113),
      I4 => p_0_in1_in(16),
      I5 => \^q\(112),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(60),
      I1 => p_0_in(12),
      I2 => p_0_in(14),
      I3 => \^q\(62),
      I4 => p_0_in(13),
      I5 => \^q\(61),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(108),
      I1 => p_0_in1_in(12),
      I2 => p_0_in1_in(14),
      I3 => \^q\(110),
      I4 => p_0_in1_in(13),
      I5 => \^q\(109),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(81),
      I1 => p_0_in(33),
      I2 => p_0_in(35),
      I3 => \^q\(83),
      I4 => p_0_in(34),
      I5 => \^q\(82),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(129),
      I1 => p_0_in1_in(33),
      I2 => p_0_in1_in(35),
      I3 => \^q\(131),
      I4 => p_0_in1_in(34),
      I5 => \^q\(130),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(78),
      I1 => p_0_in(30),
      I2 => p_0_in(32),
      I3 => \^q\(80),
      I4 => p_0_in(31),
      I5 => \^q\(79),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(126),
      I1 => p_0_in1_in(30),
      I2 => p_0_in1_in(32),
      I3 => \^q\(128),
      I4 => p_0_in1_in(31),
      I5 => \^q\(127),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(75),
      I1 => p_0_in(27),
      I2 => p_0_in(29),
      I3 => \^q\(77),
      I4 => p_0_in(28),
      I5 => \^q\(76),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(123),
      I1 => p_0_in1_in(27),
      I2 => p_0_in1_in(29),
      I3 => \^q\(125),
      I4 => p_0_in1_in(28),
      I5 => \^q\(124),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(72),
      I1 => p_0_in(24),
      I2 => p_0_in(26),
      I3 => \^q\(74),
      I4 => p_0_in(25),
      I5 => \^q\(73),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(120),
      I1 => p_0_in1_in(24),
      I2 => p_0_in1_in(26),
      I3 => \^q\(122),
      I4 => p_0_in1_in(25),
      I5 => \^q\(121),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(93),
      I1 => p_0_in(45),
      I2 => p_0_in(47),
      I3 => \^q\(95),
      I4 => p_0_in(46),
      I5 => \^q\(94),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(141),
      I1 => p_0_in1_in(45),
      I2 => p_0_in1_in(47),
      I3 => \^q\(143),
      I4 => p_0_in1_in(46),
      I5 => \^q\(142),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(90),
      I1 => p_0_in(42),
      I2 => p_0_in(44),
      I3 => \^q\(92),
      I4 => p_0_in(43),
      I5 => \^q\(91),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(138),
      I1 => p_0_in1_in(42),
      I2 => p_0_in1_in(44),
      I3 => \^q\(140),
      I4 => p_0_in1_in(43),
      I5 => \^q\(139),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(87),
      I1 => p_0_in(39),
      I2 => p_0_in(41),
      I3 => \^q\(89),
      I4 => p_0_in(40),
      I5 => \^q\(88),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(135),
      I1 => p_0_in1_in(39),
      I2 => p_0_in1_in(41),
      I3 => \^q\(137),
      I4 => p_0_in1_in(40),
      I5 => \^q\(136),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(84),
      I1 => p_0_in(36),
      I2 => p_0_in(38),
      I3 => \^q\(86),
      I4 => p_0_in(37),
      I5 => \^q\(85),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(132),
      I1 => p_0_in1_in(36),
      I2 => p_0_in1_in(38),
      I3 => \^q\(134),
      I4 => p_0_in1_in(37),
      I5 => \^q\(133),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(57),
      I1 => p_0_in(9),
      I2 => p_0_in(11),
      I3 => \^q\(59),
      I4 => p_0_in(10),
      I5 => \^q\(58),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(105),
      I1 => p_0_in1_in(9),
      I2 => p_0_in1_in(11),
      I3 => \^q\(107),
      I4 => p_0_in1_in(10),
      I5 => \^q\(106),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(54),
      I1 => p_0_in(6),
      I2 => p_0_in(8),
      I3 => \^q\(56),
      I4 => p_0_in(7),
      I5 => \^q\(55),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(102),
      I1 => p_0_in1_in(6),
      I2 => p_0_in1_in(8),
      I3 => \^q\(104),
      I4 => p_0_in1_in(7),
      I5 => \^q\(103),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(51),
      I1 => p_0_in(3),
      I2 => p_0_in(5),
      I3 => \^q\(53),
      I4 => p_0_in(4),
      I5 => \^q\(52),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(99),
      I1 => p_0_in1_in(3),
      I2 => p_0_in1_in(5),
      I3 => \^q\(101),
      I4 => p_0_in1_in(4),
      I5 => \^q\(100),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(48),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => \^q\(50),
      I4 => p_0_in(1),
      I5 => \^q\(49),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(96),
      I1 => p_0_in1_in(0),
      I2 => p_0_in1_in(2),
      I3 => \^q\(98),
      I4 => p_0_in1_in(1),
      I5 => \^q\(97),
      O => \i__carry_i_4__0_n_0\
    );
id_check_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => id_check_reg_0,
      Q => \^id_check\,
      R => iRst0
    );
\id_count1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => E(0),
      D => s_axis_aud_tid(0),
      Q => id_count1(0),
      R => iRst0
    );
\id_count1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => E(0),
      D => s_axis_aud_tid(1),
      Q => id_count1(1),
      R => iRst0
    );
\id_count1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => E(0),
      D => s_axis_aud_tid(2),
      Q => id_count1(2),
      R => iRst0
    );
\id_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FE"
    )
        port map (
      I0 => s_axis_aud_tid(0),
      I1 => \^id_check\,
      I2 => id_miss_reg_0,
      I3 => id_count(0),
      O => \id_count[0]_i_1_n_0\
    );
\id_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FE0202FE02FE02"
    )
        port map (
      I0 => s_axis_aud_tid(1),
      I1 => \^id_check\,
      I2 => id_miss_reg_0,
      I3 => id_count(1),
      I4 => id_count(2),
      I5 => id_count(0),
      O => \id_count[1]_i_1_n_0\
    );
\id_count[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FEFE02FE02FE02"
    )
        port map (
      I0 => s_axis_aud_tid(2),
      I1 => \^id_check\,
      I2 => id_miss_reg_0,
      I3 => id_count(2),
      I4 => id_count(0),
      I5 => id_count(1),
      O => \id_count[2]_i_2_n_0\
    );
\id_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => E(0),
      D => \id_count[0]_i_1_n_0\,
      Q => id_count(0),
      R => iRst0
    );
\id_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => E(0),
      D => \id_count[1]_i_1_n_0\,
      Q => id_count(1),
      R => iRst0
    );
\id_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => E(0),
      D => \id_count[2]_i_2_n_0\,
      Q => id_count(2),
      R => iRst0
    );
id_miss_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => \^id_check\,
      I1 => id_miss_reg_0,
      I2 => id_miss_i_2_n_0,
      I3 => id_miss_reg_n_0,
      O => id_miss_i_1_n_0
    );
id_miss_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => id_count1(2),
      I1 => id_count(2),
      I2 => id_count(1),
      I3 => id_count1(1),
      I4 => id_count(0),
      I5 => id_count1(0),
      O => id_miss_i_2_n_0
    );
id_miss_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => id_miss_i_1_n_0,
      Q => id_miss_reg_n_0,
      R => iRst0
    );
pre_check_mode_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F4F00000F00"
    )
        port map (
      I0 => rAesBlockSyncError_other_reg_n_0,
      I1 => \rAudioFrameCount[6]_i_2_n_0\,
      I2 => \stmAesDecode__0\,
      I3 => \rAudioFrameCount[5]_i_2_n_0\,
      I4 => pre_check_mode_reg_1,
      I5 => \^pre_check_mode_reg_0\,
      O => pre_check_mode_i_1_n_0
    );
pre_check_mode_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => pre_check_mode_i_1_n_0,
      Q => \^pre_check_mode_reg_0\,
      R => iRst0
    );
rAesBlockComplete_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => rAesLastFrame,
      Q => src_pulse,
      R => '0'
    );
rAesBlockSyncError_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rAesBlockSyncError_int_reg_n_0,
      I1 => id_miss_reg_n_0,
      I2 => rAesBlockSyncError_other_reg_n_0,
      O => rAesBlockSyncError0
    );
rAesBlockSyncError_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000004"
    )
        port map (
      I0 => pre_check_mode_reg_1,
      I1 => \stmAesDecode__0\,
      I2 => rAesBlockSyncError_other_reg_n_0,
      I3 => \rAudioFrameCount[5]_i_2_n_0\,
      I4 => \rAudioFrameCount[6]_i_2_n_0\,
      O => rAesBlockSyncError_int
    );
rAesBlockSyncError_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => rAesBlockSyncError_int,
      Q => rAesBlockSyncError_int_reg_n_0,
      R => '0'
    );
rAesBlockSyncError_other_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003FFFEF7F"
    )
        port map (
      I0 => rAesBlockSyncError_other_i_2_n_0,
      I1 => s_axis_aud_tdata(1),
      I2 => rAesBlockSyncError_other_i_3_n_0,
      I3 => s_axis_aud_tdata(0),
      I4 => s_axis_aud_tid(0),
      I5 => rAesBlockSyncError_other_reg_0,
      O => rAesBlockSyncError_other_i_1_n_0
    );
rAesBlockSyncError_other_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \rAudioFrameCount[6]_i_3_n_0\,
      I1 => \rAudioFrameCount_reg_n_0_[1]\,
      I2 => \rAudioFrameCount_reg_n_0_[0]\,
      I3 => \rAudioFrameCount_reg_n_0_[2]\,
      I4 => \rAudioFrameCount_reg_n_0_[3]\,
      O => rAesBlockSyncError_other_i_2_n_0
    );
rAesBlockSyncError_other_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_aud_tdata(3),
      I1 => s_axis_aud_tdata(2),
      O => rAesBlockSyncError_other_i_3_n_0
    );
rAesBlockSyncError_other_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => rAesBlockSyncError_other_i_1_n_0,
      Q => rAesBlockSyncError_other_reg_n_0,
      R => '0'
    );
rAesBlockSyncError_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => rAesBlockSyncError0,
      Q => rAesBlockSyncError_reg_0,
      R => iRst0
    );
rAesChannelStatusChange_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_4_out,
      I1 => \rChannelStatusDiff_reg_n_0_[1]\,
      I2 => \rChannelStatusDiff_reg_n_0_[2]\,
      I3 => \rChannelStatusDiff_reg_n_0_[0]\,
      O => rAesChannelStatusChange_i_1_n_0
    );
rAesChannelStatusChange_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => rAesChannelStatusChange_i_1_n_0,
      Q => rAesChannelStatusChange_reg_0,
      R => '0'
    );
rAesLastFrame_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \rAudioFrameCount_reg_n_0_[6]\,
      I1 => \rAudioFrameCount[7]_i_5_n_0\,
      I2 => \rAudioFrameCount_reg_n_0_[7]\,
      I3 => pre_check_mode_reg_1,
      O => rAesLastFrame_i_1_n_0
    );
rAesLastFrame_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => rAesLastFrame_i_1_n_0,
      Q => rAesLastFrame,
      R => '0'
    );
\rAudioFrameCount[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4F4FFF"
    )
        port map (
      I0 => \rAudioFrameCount[7]_i_6_n_0\,
      I1 => \rAudioFrameCount[6]_i_2_n_0\,
      I2 => \stmAesDecode__0\,
      I3 => \rAudioFrameCount_reg_n_0_[0]\,
      I4 => \rAudioFrameCount[3]_i_2_n_0\,
      O => rAudioFrameCount0_in(0)
    );
\rAudioFrameCount[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D000D00000"
    )
        port map (
      I0 => \rAudioFrameCount[6]_i_2_n_0\,
      I1 => \rAudioFrameCount[7]_i_6_n_0\,
      I2 => \stmAesDecode__0\,
      I3 => \rAudioFrameCount[3]_i_2_n_0\,
      I4 => \rAudioFrameCount_reg_n_0_[0]\,
      I5 => \rAudioFrameCount_reg_n_0_[1]\,
      O => rAudioFrameCount0_in(1)
    );
\rAudioFrameCount[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D0D0D0D0000000"
    )
        port map (
      I0 => \rAudioFrameCount[6]_i_2_n_0\,
      I1 => \rAudioFrameCount[7]_i_6_n_0\,
      I2 => \rAudioFrameCount[5]_i_3_n_0\,
      I3 => \rAudioFrameCount_reg_n_0_[1]\,
      I4 => \rAudioFrameCount_reg_n_0_[0]\,
      I5 => \rAudioFrameCount_reg_n_0_[2]\,
      O => rAudioFrameCount0_in(2)
    );
\rAudioFrameCount[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D000D00000"
    )
        port map (
      I0 => \rAudioFrameCount[6]_i_2_n_0\,
      I1 => \rAudioFrameCount[7]_i_6_n_0\,
      I2 => \stmAesDecode__0\,
      I3 => \rAudioFrameCount[3]_i_2_n_0\,
      I4 => \rAudioFrameCount[4]_i_2_n_0\,
      I5 => \rAudioFrameCount_reg_n_0_[3]\,
      O => rAudioFrameCount0_in(3)
    );
\rAudioFrameCount[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA80000000"
    )
        port map (
      I0 => \rAudioFrameCount_reg_n_0_[7]\,
      I1 => \rAudioFrameCount[4]_i_2_n_0\,
      I2 => \rAudioFrameCount_reg_n_0_[5]\,
      I3 => \rAudioFrameCount_reg_n_0_[3]\,
      I4 => \rAudioFrameCount_reg_n_0_[4]\,
      I5 => \rAudioFrameCount_reg_n_0_[6]\,
      O => \rAudioFrameCount[3]_i_2_n_0\
    );
\rAudioFrameCount[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D0D0D0D0000000"
    )
        port map (
      I0 => \rAudioFrameCount[6]_i_2_n_0\,
      I1 => \rAudioFrameCount[7]_i_6_n_0\,
      I2 => \rAudioFrameCount[5]_i_3_n_0\,
      I3 => \rAudioFrameCount_reg_n_0_[3]\,
      I4 => \rAudioFrameCount[4]_i_2_n_0\,
      I5 => \rAudioFrameCount_reg_n_0_[4]\,
      O => rAudioFrameCount0_in(4)
    );
\rAudioFrameCount[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \rAudioFrameCount_reg_n_0_[2]\,
      I1 => \rAudioFrameCount_reg_n_0_[0]\,
      I2 => \rAudioFrameCount_reg_n_0_[1]\,
      O => \rAudioFrameCount[4]_i_2_n_0\
    );
\rAudioFrameCount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDFF0000"
    )
        port map (
      I0 => \rAudioFrameCount[6]_i_2_n_0\,
      I1 => pre_check_mode_reg_1,
      I2 => rAesBlockSyncError_other_reg_n_0,
      I3 => \rAudioFrameCount[5]_i_2_n_0\,
      I4 => \rAudioFrameCount[5]_i_3_n_0\,
      I5 => \rAudioFrameCount[5]_i_4_n_0\,
      O => rAudioFrameCount0_in(5)
    );
\rAudioFrameCount[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axis_aud_tdata(1),
      I1 => s_axis_aud_tdata(3),
      I2 => s_axis_aud_tdata(2),
      I3 => s_axis_aud_tdata(0),
      O => \rAudioFrameCount[5]_i_2_n_0\
    );
\rAudioFrameCount[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => \stmAesDecode__0\,
      I1 => \rAudioFrameCount_reg_n_0_[6]\,
      I2 => \rAudioFrameCount[7]_i_5_n_0\,
      I3 => \rAudioFrameCount_reg_n_0_[7]\,
      O => \rAudioFrameCount[5]_i_3_n_0\
    );
\rAudioFrameCount[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555555"
    )
        port map (
      I0 => \rAudioFrameCount_reg_n_0_[5]\,
      I1 => \rAudioFrameCount_reg_n_0_[3]\,
      I2 => \rAudioFrameCount_reg_n_0_[4]\,
      I3 => \rAudioFrameCount_reg_n_0_[2]\,
      I4 => \rAudioFrameCount_reg_n_0_[0]\,
      I5 => \rAudioFrameCount_reg_n_0_[1]\,
      O => \rAudioFrameCount[5]_i_4_n_0\
    );
\rAudioFrameCount[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D000D00000"
    )
        port map (
      I0 => \rAudioFrameCount[6]_i_2_n_0\,
      I1 => \rAudioFrameCount[7]_i_6_n_0\,
      I2 => \stmAesDecode__0\,
      I3 => \rAudioFrameCount_reg_n_0_[7]\,
      I4 => \rAudioFrameCount[7]_i_5_n_0\,
      I5 => \rAudioFrameCount_reg_n_0_[6]\,
      O => rAudioFrameCount0_in(6)
    );
\rAudioFrameCount[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rAudioFrameCount[6]_i_3_n_0\,
      I1 => \rAudioFrameCount_reg_n_0_[1]\,
      I2 => \rAudioFrameCount_reg_n_0_[0]\,
      I3 => \rAudioFrameCount_reg_n_0_[2]\,
      I4 => \rAudioFrameCount_reg_n_0_[3]\,
      O => \rAudioFrameCount[6]_i_2_n_0\
    );
\rAudioFrameCount[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rAudioFrameCount_reg_n_0_[7]\,
      I1 => \rAudioFrameCount_reg_n_0_[6]\,
      I2 => \rAudioFrameCount_reg_n_0_[5]\,
      I3 => \rAudioFrameCount_reg_n_0_[4]\,
      O => \rAudioFrameCount[6]_i_3_n_0\
    );
\rAudioFrameCount[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axis_aud_aresetn,
      I1 => dest_out,
      O => iRst0
    );
\rAudioFrameCount[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \stmAesDecode__0\,
      I1 => pre_check_mode_reg_1,
      O => \rAudioFrameCount[7]_i_2_n_0\
    );
\rAudioFrameCount[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02800000"
    )
        port map (
      I0 => \stmAesDecode__0\,
      I1 => \rAudioFrameCount[7]_i_5_n_0\,
      I2 => \rAudioFrameCount_reg_n_0_[6]\,
      I3 => \rAudioFrameCount_reg_n_0_[7]\,
      I4 => \rAudioFrameCount[7]_i_6_n_0\,
      O => rAudioFrameCount0_in(7)
    );
\rAudioFrameCount[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rAudioFrameCount_reg_n_0_[1]\,
      I1 => \rAudioFrameCount_reg_n_0_[0]\,
      I2 => \rAudioFrameCount_reg_n_0_[2]\,
      I3 => \rAudioFrameCount_reg_n_0_[5]\,
      I4 => \rAudioFrameCount_reg_n_0_[3]\,
      I5 => \rAudioFrameCount_reg_n_0_[4]\,
      O => \rAudioFrameCount[7]_i_5_n_0\
    );
\rAudioFrameCount[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \rAudioFrameCount[5]_i_2_n_0\,
      I1 => rAesBlockSyncError_other_reg_n_0,
      I2 => s_axis_aud_tid(1),
      I3 => s_axis_aud_tid(2),
      I4 => s_axis_aud_tid(0),
      I5 => id_miss_reg_0,
      O => \rAudioFrameCount[7]_i_6_n_0\
    );
\rAudioFrameCount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rAudioFrameCount[7]_i_2_n_0\,
      D => rAudioFrameCount0_in(0),
      Q => \rAudioFrameCount_reg_n_0_[0]\,
      R => iRst0
    );
\rAudioFrameCount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rAudioFrameCount[7]_i_2_n_0\,
      D => rAudioFrameCount0_in(1),
      Q => \rAudioFrameCount_reg_n_0_[1]\,
      R => iRst0
    );
\rAudioFrameCount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rAudioFrameCount[7]_i_2_n_0\,
      D => rAudioFrameCount0_in(2),
      Q => \rAudioFrameCount_reg_n_0_[2]\,
      R => iRst0
    );
\rAudioFrameCount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rAudioFrameCount[7]_i_2_n_0\,
      D => rAudioFrameCount0_in(3),
      Q => \rAudioFrameCount_reg_n_0_[3]\,
      R => iRst0
    );
\rAudioFrameCount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rAudioFrameCount[7]_i_2_n_0\,
      D => rAudioFrameCount0_in(4),
      Q => \rAudioFrameCount_reg_n_0_[4]\,
      R => iRst0
    );
\rAudioFrameCount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rAudioFrameCount[7]_i_2_n_0\,
      D => rAudioFrameCount0_in(5),
      Q => \rAudioFrameCount_reg_n_0_[5]\,
      R => iRst0
    );
\rAudioFrameCount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rAudioFrameCount[7]_i_2_n_0\,
      D => rAudioFrameCount0_in(6),
      Q => \rAudioFrameCount_reg_n_0_[6]\,
      R => iRst0
    );
\rAudioFrameCount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rAudioFrameCount[7]_i_2_n_0\,
      D => rAudioFrameCount0_in(7),
      Q => \rAudioFrameCount_reg_n_0_[7]\,
      R => iRst0
    );
\rChannelStatusCapt[191]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => dest_pulse,
      I1 => dest_out,
      I2 => s_axis_aud_aresetn,
      O => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[0]\,
      Q => \^q\(0),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(4),
      Q => \^q\(100),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(5),
      Q => \^q\(101),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(6),
      Q => \^q\(102),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(7),
      Q => \^q\(103),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(8),
      Q => \^q\(104),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(9),
      Q => \^q\(105),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(10),
      Q => \^q\(106),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(11),
      Q => \^q\(107),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(12),
      Q => \^q\(108),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(13),
      Q => \^q\(109),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[10]\,
      Q => \^q\(10),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(14),
      Q => \^q\(110),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(15),
      Q => \^q\(111),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(16),
      Q => \^q\(112),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(17),
      Q => \^q\(113),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(18),
      Q => \^q\(114),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(19),
      Q => \^q\(115),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(20),
      Q => \^q\(116),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(21),
      Q => \^q\(117),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(22),
      Q => \^q\(118),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(23),
      Q => \^q\(119),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[11]\,
      Q => \^q\(11),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(24),
      Q => \^q\(120),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(25),
      Q => \^q\(121),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(26),
      Q => \^q\(122),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(27),
      Q => \^q\(123),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(28),
      Q => \^q\(124),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(29),
      Q => \^q\(125),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(30),
      Q => \^q\(126),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(31),
      Q => \^q\(127),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(32),
      Q => \^q\(128),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(33),
      Q => \^q\(129),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[12]\,
      Q => \^q\(12),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(34),
      Q => \^q\(130),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(35),
      Q => \^q\(131),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(36),
      Q => \^q\(132),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(37),
      Q => \^q\(133),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(38),
      Q => \^q\(134),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(39),
      Q => \^q\(135),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(40),
      Q => \^q\(136),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(41),
      Q => \^q\(137),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(42),
      Q => \^q\(138),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(43),
      Q => \^q\(139),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[13]\,
      Q => \^q\(13),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(44),
      Q => \^q\(140),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(45),
      Q => \^q\(141),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(46),
      Q => \^q\(142),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(47),
      Q => \^q\(143),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(0),
      Q => \^q\(144),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(1),
      Q => \^q\(145),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(2),
      Q => \^q\(146),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(3),
      Q => \^q\(147),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(4),
      Q => \^q\(148),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(5),
      Q => \^q\(149),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[14]\,
      Q => \^q\(14),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(6),
      Q => \^q\(150),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(7),
      Q => \^q\(151),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(8),
      Q => \^q\(152),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(9),
      Q => \^q\(153),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(10),
      Q => \^q\(154),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(11),
      Q => \^q\(155),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(12),
      Q => \^q\(156),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(13),
      Q => \^q\(157),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(14),
      Q => \^q\(158),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(15),
      Q => \^q\(159),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[15]\,
      Q => \^q\(15),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(16),
      Q => \^q\(160),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(17),
      Q => \^q\(161),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(18),
      Q => \^q\(162),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(19),
      Q => \^q\(163),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(20),
      Q => \^q\(164),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(21),
      Q => \^q\(165),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(22),
      Q => \^q\(166),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(23),
      Q => \^q\(167),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(24),
      Q => \^q\(168),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(25),
      Q => \^q\(169),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[16]\,
      Q => \^q\(16),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(26),
      Q => \^q\(170),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(27),
      Q => \^q\(171),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(28),
      Q => \^q\(172),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(29),
      Q => \^q\(173),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(30),
      Q => \^q\(174),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(31),
      Q => \^q\(175),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(32),
      Q => \^q\(176),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(33),
      Q => \^q\(177),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(34),
      Q => \^q\(178),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(35),
      Q => \^q\(179),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[17]\,
      Q => \^q\(17),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(36),
      Q => \^q\(180),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(37),
      Q => \^q\(181),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(38),
      Q => \^q\(182),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(39),
      Q => \^q\(183),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(40),
      Q => \^q\(184),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(41),
      Q => \^q\(185),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(42),
      Q => \^q\(186),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(43),
      Q => \^q\(187),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(44),
      Q => \^q\(188),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(45),
      Q => \^q\(189),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[18]\,
      Q => \^q\(18),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(46),
      Q => \^q\(190),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in4_in(47),
      Q => \^q\(191),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[19]\,
      Q => \^q\(19),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[1]\,
      Q => \^q\(1),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[20]\,
      Q => \^q\(20),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[21]\,
      Q => \^q\(21),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[22]\,
      Q => \^q\(22),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[23]\,
      Q => \^q\(23),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[24]\,
      Q => \^q\(24),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[25]\,
      Q => \^q\(25),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[26]\,
      Q => \^q\(26),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[27]\,
      Q => \^q\(27),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[28]\,
      Q => \^q\(28),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[29]\,
      Q => \^q\(29),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[2]\,
      Q => \^q\(2),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[30]\,
      Q => \^q\(30),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[31]\,
      Q => \^q\(31),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[32]\,
      Q => \^q\(32),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[33]\,
      Q => \^q\(33),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[34]\,
      Q => \^q\(34),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[35]\,
      Q => \^q\(35),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[36]\,
      Q => \^q\(36),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[37]\,
      Q => \^q\(37),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[38]\,
      Q => \^q\(38),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[39]\,
      Q => \^q\(39),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[3]\,
      Q => \^q\(3),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[40]\,
      Q => \^q\(40),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[41]\,
      Q => \^q\(41),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[42]\,
      Q => \^q\(42),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[43]\,
      Q => \^q\(43),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[44]\,
      Q => \^q\(44),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[45]\,
      Q => \^q\(45),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[46]\,
      Q => \^q\(46),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[47]\,
      Q => \^q\(47),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(0),
      Q => \^q\(48),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(1),
      Q => \^q\(49),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[4]\,
      Q => \^q\(4),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(2),
      Q => \^q\(50),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(3),
      Q => \^q\(51),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(4),
      Q => \^q\(52),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(5),
      Q => \^q\(53),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(6),
      Q => \^q\(54),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(7),
      Q => \^q\(55),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(8),
      Q => \^q\(56),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(9),
      Q => \^q\(57),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(10),
      Q => \^q\(58),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(11),
      Q => \^q\(59),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[5]\,
      Q => \^q\(5),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(12),
      Q => \^q\(60),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(13),
      Q => \^q\(61),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(14),
      Q => \^q\(62),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(15),
      Q => \^q\(63),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(16),
      Q => \^q\(64),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(17),
      Q => \^q\(65),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(18),
      Q => \^q\(66),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(19),
      Q => \^q\(67),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(20),
      Q => \^q\(68),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(21),
      Q => \^q\(69),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[6]\,
      Q => \^q\(6),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(22),
      Q => \^q\(70),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(23),
      Q => \^q\(71),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(24),
      Q => \^q\(72),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(25),
      Q => \^q\(73),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(26),
      Q => \^q\(74),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(27),
      Q => \^q\(75),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(28),
      Q => \^q\(76),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(29),
      Q => \^q\(77),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(30),
      Q => \^q\(78),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(31),
      Q => \^q\(79),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[7]\,
      Q => \^q\(7),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(32),
      Q => \^q\(80),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(33),
      Q => \^q\(81),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(34),
      Q => \^q\(82),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(35),
      Q => \^q\(83),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(36),
      Q => \^q\(84),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(37),
      Q => \^q\(85),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(38),
      Q => \^q\(86),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(39),
      Q => \^q\(87),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(40),
      Q => \^q\(88),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(41),
      Q => \^q\(89),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[8]\,
      Q => \^q\(8),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(42),
      Q => \^q\(90),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(43),
      Q => \^q\(91),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(44),
      Q => \^q\(92),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(45),
      Q => \^q\(93),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(46),
      Q => \^q\(94),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in(47),
      Q => \^q\(95),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(0),
      Q => \^q\(96),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(1),
      Q => \^q\(97),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(2),
      Q => \^q\(98),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => p_0_in1_in(3),
      Q => \^q\(99),
      R => rChannelStatusCapt0
    );
\rChannelStatusCapt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => rAesLastFrame,
      D => \rChannelStatusIn_reg_n_0_[9]\,
      Q => \^q\(9),
      R => rChannelStatusCapt0
    );
rChannelStatusDiff0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rChannelStatusDiff0_carry_n_0,
      CO(2) => rChannelStatusDiff0_carry_n_1,
      CO(1) => rChannelStatusDiff0_carry_n_2,
      CO(0) => rChannelStatusDiff0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_rChannelStatusDiff0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rChannelStatusDiff0_carry_i_1_n_0,
      S(2) => rChannelStatusDiff0_carry_i_2_n_0,
      S(1) => rChannelStatusDiff0_carry_i_3_n_0,
      S(0) => rChannelStatusDiff0_carry_i_4_n_0
    );
\rChannelStatusDiff0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rChannelStatusDiff0_carry_n_0,
      CO(3) => \rChannelStatusDiff0_carry__0_n_0\,
      CO(2) => \rChannelStatusDiff0_carry__0_n_1\,
      CO(1) => \rChannelStatusDiff0_carry__0_n_2\,
      CO(0) => \rChannelStatusDiff0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rChannelStatusDiff0_carry__0_i_1_n_0\,
      S(2) => \rChannelStatusDiff0_carry__0_i_2_n_0\,
      S(1) => \rChannelStatusDiff0_carry__0_i_3_n_0\,
      S(0) => \rChannelStatusDiff0_carry__0_i_4_n_0\
    );
\rChannelStatusDiff0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(21),
      I1 => \rChannelStatusIn_reg_n_0_[21]\,
      I2 => \rChannelStatusIn_reg_n_0_[23]\,
      I3 => \^q\(23),
      I4 => \rChannelStatusIn_reg_n_0_[22]\,
      I5 => \^q\(22),
      O => \rChannelStatusDiff0_carry__0_i_1_n_0\
    );
\rChannelStatusDiff0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(18),
      I1 => \rChannelStatusIn_reg_n_0_[18]\,
      I2 => \rChannelStatusIn_reg_n_0_[20]\,
      I3 => \^q\(20),
      I4 => \rChannelStatusIn_reg_n_0_[19]\,
      I5 => \^q\(19),
      O => \rChannelStatusDiff0_carry__0_i_2_n_0\
    );
\rChannelStatusDiff0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(15),
      I1 => \rChannelStatusIn_reg_n_0_[15]\,
      I2 => \rChannelStatusIn_reg_n_0_[17]\,
      I3 => \^q\(17),
      I4 => \rChannelStatusIn_reg_n_0_[16]\,
      I5 => \^q\(16),
      O => \rChannelStatusDiff0_carry__0_i_3_n_0\
    );
\rChannelStatusDiff0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(12),
      I1 => \rChannelStatusIn_reg_n_0_[12]\,
      I2 => \rChannelStatusIn_reg_n_0_[14]\,
      I3 => \^q\(14),
      I4 => \rChannelStatusIn_reg_n_0_[13]\,
      I5 => \^q\(13),
      O => \rChannelStatusDiff0_carry__0_i_4_n_0\
    );
\rChannelStatusDiff0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff0_carry__0_n_0\,
      CO(3) => \rChannelStatusDiff0_carry__1_n_0\,
      CO(2) => \rChannelStatusDiff0_carry__1_n_1\,
      CO(1) => \rChannelStatusDiff0_carry__1_n_2\,
      CO(0) => \rChannelStatusDiff0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rChannelStatusDiff0_carry__1_i_1_n_0\,
      S(2) => \rChannelStatusDiff0_carry__1_i_2_n_0\,
      S(1) => \rChannelStatusDiff0_carry__1_i_3_n_0\,
      S(0) => \rChannelStatusDiff0_carry__1_i_4_n_0\
    );
\rChannelStatusDiff0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(33),
      I1 => \rChannelStatusIn_reg_n_0_[33]\,
      I2 => \rChannelStatusIn_reg_n_0_[35]\,
      I3 => \^q\(35),
      I4 => \rChannelStatusIn_reg_n_0_[34]\,
      I5 => \^q\(34),
      O => \rChannelStatusDiff0_carry__1_i_1_n_0\
    );
\rChannelStatusDiff0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(30),
      I1 => \rChannelStatusIn_reg_n_0_[30]\,
      I2 => \rChannelStatusIn_reg_n_0_[32]\,
      I3 => \^q\(32),
      I4 => \rChannelStatusIn_reg_n_0_[31]\,
      I5 => \^q\(31),
      O => \rChannelStatusDiff0_carry__1_i_2_n_0\
    );
\rChannelStatusDiff0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(27),
      I1 => \rChannelStatusIn_reg_n_0_[27]\,
      I2 => \rChannelStatusIn_reg_n_0_[29]\,
      I3 => \^q\(29),
      I4 => \rChannelStatusIn_reg_n_0_[28]\,
      I5 => \^q\(28),
      O => \rChannelStatusDiff0_carry__1_i_3_n_0\
    );
\rChannelStatusDiff0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(24),
      I1 => \rChannelStatusIn_reg_n_0_[24]\,
      I2 => \rChannelStatusIn_reg_n_0_[26]\,
      I3 => \^q\(26),
      I4 => \rChannelStatusIn_reg_n_0_[25]\,
      I5 => \^q\(25),
      O => \rChannelStatusDiff0_carry__1_i_4_n_0\
    );
\rChannelStatusDiff0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff0_carry__1_n_0\,
      CO(3) => rChannelStatusDiff0,
      CO(2) => \rChannelStatusDiff0_carry__2_n_1\,
      CO(1) => \rChannelStatusDiff0_carry__2_n_2\,
      CO(0) => \rChannelStatusDiff0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rChannelStatusDiff0_carry__2_i_1_n_0\,
      S(2) => \rChannelStatusDiff0_carry__2_i_2_n_0\,
      S(1) => \rChannelStatusDiff0_carry__2_i_3_n_0\,
      S(0) => \rChannelStatusDiff0_carry__2_i_4_n_0\
    );
\rChannelStatusDiff0_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(45),
      I1 => \rChannelStatusIn_reg_n_0_[45]\,
      I2 => \rChannelStatusIn_reg_n_0_[47]\,
      I3 => \^q\(47),
      I4 => \rChannelStatusIn_reg_n_0_[46]\,
      I5 => \^q\(46),
      O => \rChannelStatusDiff0_carry__2_i_1_n_0\
    );
\rChannelStatusDiff0_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(42),
      I1 => \rChannelStatusIn_reg_n_0_[42]\,
      I2 => \rChannelStatusIn_reg_n_0_[44]\,
      I3 => \^q\(44),
      I4 => \rChannelStatusIn_reg_n_0_[43]\,
      I5 => \^q\(43),
      O => \rChannelStatusDiff0_carry__2_i_2_n_0\
    );
\rChannelStatusDiff0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(39),
      I1 => \rChannelStatusIn_reg_n_0_[39]\,
      I2 => \rChannelStatusIn_reg_n_0_[41]\,
      I3 => \^q\(41),
      I4 => \rChannelStatusIn_reg_n_0_[40]\,
      I5 => \^q\(40),
      O => \rChannelStatusDiff0_carry__2_i_3_n_0\
    );
\rChannelStatusDiff0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(36),
      I1 => \rChannelStatusIn_reg_n_0_[36]\,
      I2 => \rChannelStatusIn_reg_n_0_[38]\,
      I3 => \^q\(38),
      I4 => \rChannelStatusIn_reg_n_0_[37]\,
      I5 => \^q\(37),
      O => \rChannelStatusDiff0_carry__2_i_4_n_0\
    );
rChannelStatusDiff0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \rChannelStatusIn_reg_n_0_[9]\,
      I2 => \rChannelStatusIn_reg_n_0_[11]\,
      I3 => \^q\(11),
      I4 => \rChannelStatusIn_reg_n_0_[10]\,
      I5 => \^q\(10),
      O => rChannelStatusDiff0_carry_i_1_n_0
    );
rChannelStatusDiff0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \rChannelStatusIn_reg_n_0_[6]\,
      I2 => \rChannelStatusIn_reg_n_0_[8]\,
      I3 => \^q\(8),
      I4 => \rChannelStatusIn_reg_n_0_[7]\,
      I5 => \^q\(7),
      O => rChannelStatusDiff0_carry_i_2_n_0
    );
rChannelStatusDiff0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \rChannelStatusIn_reg_n_0_[3]\,
      I2 => \rChannelStatusIn_reg_n_0_[5]\,
      I3 => \^q\(5),
      I4 => \rChannelStatusIn_reg_n_0_[4]\,
      I5 => \^q\(4),
      O => rChannelStatusDiff0_carry_i_3_n_0
    );
rChannelStatusDiff0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \rChannelStatusIn_reg_n_0_[0]\,
      I2 => \rChannelStatusIn_reg_n_0_[2]\,
      I3 => \^q\(2),
      I4 => \rChannelStatusIn_reg_n_0_[1]\,
      I5 => \^q\(1),
      O => rChannelStatusDiff0_carry_i_4_n_0
    );
\rChannelStatusDiff0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rChannelStatusDiff0_inferred__0/i__carry_n_0\,
      CO(2) => \rChannelStatusDiff0_inferred__0/i__carry_n_1\,
      CO(1) => \rChannelStatusDiff0_inferred__0/i__carry_n_2\,
      CO(0) => \rChannelStatusDiff0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\rChannelStatusDiff0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff0_inferred__0/i__carry_n_0\,
      CO(3) => \rChannelStatusDiff0_inferred__0/i__carry__0_n_0\,
      CO(2) => \rChannelStatusDiff0_inferred__0/i__carry__0_n_1\,
      CO(1) => \rChannelStatusDiff0_inferred__0/i__carry__0_n_2\,
      CO(0) => \rChannelStatusDiff0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\rChannelStatusDiff0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff0_inferred__0/i__carry__0_n_0\,
      CO(3) => \rChannelStatusDiff0_inferred__0/i__carry__1_n_0\,
      CO(2) => \rChannelStatusDiff0_inferred__0/i__carry__1_n_1\,
      CO(1) => \rChannelStatusDiff0_inferred__0/i__carry__1_n_2\,
      CO(0) => \rChannelStatusDiff0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\rChannelStatusDiff0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff0_inferred__0/i__carry__1_n_0\,
      CO(3) => rChannelStatusDiff00_out,
      CO(2) => \rChannelStatusDiff0_inferred__0/i__carry__2_n_1\,
      CO(1) => \rChannelStatusDiff0_inferred__0/i__carry__2_n_2\,
      CO(0) => \rChannelStatusDiff0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\rChannelStatusDiff0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rChannelStatusDiff0_inferred__1/i__carry_n_0\,
      CO(2) => \rChannelStatusDiff0_inferred__1/i__carry_n_1\,
      CO(1) => \rChannelStatusDiff0_inferred__1/i__carry_n_2\,
      CO(0) => \rChannelStatusDiff0_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\rChannelStatusDiff0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff0_inferred__1/i__carry_n_0\,
      CO(3) => \rChannelStatusDiff0_inferred__1/i__carry__0_n_0\,
      CO(2) => \rChannelStatusDiff0_inferred__1/i__carry__0_n_1\,
      CO(1) => \rChannelStatusDiff0_inferred__1/i__carry__0_n_2\,
      CO(0) => \rChannelStatusDiff0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\rChannelStatusDiff0_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff0_inferred__1/i__carry__0_n_0\,
      CO(3) => \rChannelStatusDiff0_inferred__1/i__carry__1_n_0\,
      CO(2) => \rChannelStatusDiff0_inferred__1/i__carry__1_n_1\,
      CO(1) => \rChannelStatusDiff0_inferred__1/i__carry__1_n_2\,
      CO(0) => \rChannelStatusDiff0_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\rChannelStatusDiff0_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff0_inferred__1/i__carry__1_n_0\,
      CO(3) => rChannelStatusDiff03_out,
      CO(2) => \rChannelStatusDiff0_inferred__1/i__carry__2_n_1\,
      CO(1) => \rChannelStatusDiff0_inferred__1/i__carry__2_n_2\,
      CO(0) => \rChannelStatusDiff0_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff0_inferred__1/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
rChannelStatusDiff1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rChannelStatusDiff1_carry_n_0,
      CO(2) => rChannelStatusDiff1_carry_n_1,
      CO(1) => rChannelStatusDiff1_carry_n_2,
      CO(0) => rChannelStatusDiff1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_rChannelStatusDiff1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rChannelStatusDiff1_carry_i_1_n_0,
      S(2) => rChannelStatusDiff1_carry_i_2_n_0,
      S(1) => rChannelStatusDiff1_carry_i_3_n_0,
      S(0) => rChannelStatusDiff1_carry_i_4_n_0
    );
\rChannelStatusDiff1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rChannelStatusDiff1_carry_n_0,
      CO(3) => \rChannelStatusDiff1_carry__0_n_0\,
      CO(2) => \rChannelStatusDiff1_carry__0_n_1\,
      CO(1) => \rChannelStatusDiff1_carry__0_n_2\,
      CO(0) => \rChannelStatusDiff1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rChannelStatusDiff1_carry__0_i_1_n_0\,
      S(2) => \rChannelStatusDiff1_carry__0_i_2_n_0\,
      S(1) => \rChannelStatusDiff1_carry__0_i_3_n_0\,
      S(0) => \rChannelStatusDiff1_carry__0_i_4_n_0\
    );
\rChannelStatusDiff1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(165),
      I1 => p_0_in4_in(21),
      I2 => p_0_in4_in(23),
      I3 => \^q\(167),
      I4 => p_0_in4_in(22),
      I5 => \^q\(166),
      O => \rChannelStatusDiff1_carry__0_i_1_n_0\
    );
\rChannelStatusDiff1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(162),
      I1 => p_0_in4_in(18),
      I2 => p_0_in4_in(20),
      I3 => \^q\(164),
      I4 => p_0_in4_in(19),
      I5 => \^q\(163),
      O => \rChannelStatusDiff1_carry__0_i_2_n_0\
    );
\rChannelStatusDiff1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(159),
      I1 => p_0_in4_in(15),
      I2 => p_0_in4_in(17),
      I3 => \^q\(161),
      I4 => p_0_in4_in(16),
      I5 => \^q\(160),
      O => \rChannelStatusDiff1_carry__0_i_3_n_0\
    );
\rChannelStatusDiff1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(156),
      I1 => p_0_in4_in(12),
      I2 => p_0_in4_in(14),
      I3 => \^q\(158),
      I4 => p_0_in4_in(13),
      I5 => \^q\(157),
      O => \rChannelStatusDiff1_carry__0_i_4_n_0\
    );
\rChannelStatusDiff1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff1_carry__0_n_0\,
      CO(3) => \rChannelStatusDiff1_carry__1_n_0\,
      CO(2) => \rChannelStatusDiff1_carry__1_n_1\,
      CO(1) => \rChannelStatusDiff1_carry__1_n_2\,
      CO(0) => \rChannelStatusDiff1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rChannelStatusDiff1_carry__1_i_1_n_0\,
      S(2) => \rChannelStatusDiff1_carry__1_i_2_n_0\,
      S(1) => \rChannelStatusDiff1_carry__1_i_3_n_0\,
      S(0) => \rChannelStatusDiff1_carry__1_i_4_n_0\
    );
\rChannelStatusDiff1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(177),
      I1 => p_0_in4_in(33),
      I2 => p_0_in4_in(35),
      I3 => \^q\(179),
      I4 => p_0_in4_in(34),
      I5 => \^q\(178),
      O => \rChannelStatusDiff1_carry__1_i_1_n_0\
    );
\rChannelStatusDiff1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(174),
      I1 => p_0_in4_in(30),
      I2 => p_0_in4_in(32),
      I3 => \^q\(176),
      I4 => p_0_in4_in(31),
      I5 => \^q\(175),
      O => \rChannelStatusDiff1_carry__1_i_2_n_0\
    );
\rChannelStatusDiff1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(171),
      I1 => p_0_in4_in(27),
      I2 => p_0_in4_in(29),
      I3 => \^q\(173),
      I4 => p_0_in4_in(28),
      I5 => \^q\(172),
      O => \rChannelStatusDiff1_carry__1_i_3_n_0\
    );
\rChannelStatusDiff1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(168),
      I1 => p_0_in4_in(24),
      I2 => p_0_in4_in(26),
      I3 => \^q\(170),
      I4 => p_0_in4_in(25),
      I5 => \^q\(169),
      O => \rChannelStatusDiff1_carry__1_i_4_n_0\
    );
\rChannelStatusDiff1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rChannelStatusDiff1_carry__1_n_0\,
      CO(3) => rChannelStatusDiff1,
      CO(2) => \rChannelStatusDiff1_carry__2_n_1\,
      CO(1) => \rChannelStatusDiff1_carry__2_n_2\,
      CO(0) => \rChannelStatusDiff1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rChannelStatusDiff1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rChannelStatusDiff1_carry__2_i_1_n_0\,
      S(2) => \rChannelStatusDiff1_carry__2_i_2_n_0\,
      S(1) => \rChannelStatusDiff1_carry__2_i_3_n_0\,
      S(0) => \rChannelStatusDiff1_carry__2_i_4_n_0\
    );
\rChannelStatusDiff1_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(189),
      I1 => p_0_in4_in(45),
      I2 => p_0_in4_in(47),
      I3 => \^q\(191),
      I4 => p_0_in4_in(46),
      I5 => \^q\(190),
      O => \rChannelStatusDiff1_carry__2_i_1_n_0\
    );
\rChannelStatusDiff1_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(186),
      I1 => p_0_in4_in(42),
      I2 => p_0_in4_in(44),
      I3 => \^q\(188),
      I4 => p_0_in4_in(43),
      I5 => \^q\(187),
      O => \rChannelStatusDiff1_carry__2_i_2_n_0\
    );
\rChannelStatusDiff1_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(183),
      I1 => p_0_in4_in(39),
      I2 => p_0_in4_in(41),
      I3 => \^q\(185),
      I4 => p_0_in4_in(40),
      I5 => \^q\(184),
      O => \rChannelStatusDiff1_carry__2_i_3_n_0\
    );
\rChannelStatusDiff1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(180),
      I1 => p_0_in4_in(36),
      I2 => p_0_in4_in(38),
      I3 => \^q\(182),
      I4 => p_0_in4_in(37),
      I5 => \^q\(181),
      O => \rChannelStatusDiff1_carry__2_i_4_n_0\
    );
rChannelStatusDiff1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(153),
      I1 => p_0_in4_in(9),
      I2 => p_0_in4_in(11),
      I3 => \^q\(155),
      I4 => p_0_in4_in(10),
      I5 => \^q\(154),
      O => rChannelStatusDiff1_carry_i_1_n_0
    );
rChannelStatusDiff1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(150),
      I1 => p_0_in4_in(6),
      I2 => p_0_in4_in(8),
      I3 => \^q\(152),
      I4 => p_0_in4_in(7),
      I5 => \^q\(151),
      O => rChannelStatusDiff1_carry_i_2_n_0
    );
rChannelStatusDiff1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(147),
      I1 => p_0_in4_in(3),
      I2 => p_0_in4_in(5),
      I3 => \^q\(149),
      I4 => p_0_in4_in(4),
      I5 => \^q\(148),
      O => rChannelStatusDiff1_carry_i_3_n_0
    );
rChannelStatusDiff1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(144),
      I1 => p_0_in4_in(0),
      I2 => p_0_in4_in(2),
      I3 => \^q\(146),
      I4 => p_0_in4_in(1),
      I5 => \^q\(145),
      O => rChannelStatusDiff1_carry_i_4_n_0
    );
\rChannelStatusDiff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rAesLastFrame,
      I1 => rChannelStatusDiff0,
      O => \rChannelStatusDiff[0]_i_1_n_0\
    );
\rChannelStatusDiff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rAesLastFrame,
      I1 => rChannelStatusDiff00_out,
      O => \rChannelStatusDiff[1]_i_1_n_0\
    );
\rChannelStatusDiff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rAesLastFrame,
      I1 => rChannelStatusDiff03_out,
      O => \rChannelStatusDiff[2]_i_1_n_0\
    );
\rChannelStatusDiff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rAesLastFrame,
      I1 => rChannelStatusDiff1,
      O => rChannelStatusDiff(3)
    );
\rChannelStatusDiff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => \rChannelStatusDiff[0]_i_1_n_0\,
      Q => \rChannelStatusDiff_reg_n_0_[0]\,
      R => '0'
    );
\rChannelStatusDiff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => \rChannelStatusDiff[1]_i_1_n_0\,
      Q => \rChannelStatusDiff_reg_n_0_[1]\,
      R => '0'
    );
\rChannelStatusDiff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => \rChannelStatusDiff[2]_i_1_n_0\,
      Q => \rChannelStatusDiff_reg_n_0_[2]\,
      R => '0'
    );
\rChannelStatusDiff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => rChannelStatusDiff(3),
      Q => p_4_out,
      R => '0'
    );
\rChannelStatusIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[1]\,
      Q => \rChannelStatusIn_reg_n_0_[0]\,
      R => '0'
    );
\rChannelStatusIn_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(5),
      Q => p_0_in1_in(4),
      R => '0'
    );
\rChannelStatusIn_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(6),
      Q => p_0_in1_in(5),
      R => '0'
    );
\rChannelStatusIn_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(7),
      Q => p_0_in1_in(6),
      R => '0'
    );
\rChannelStatusIn_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(8),
      Q => p_0_in1_in(7),
      R => '0'
    );
\rChannelStatusIn_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(9),
      Q => p_0_in1_in(8),
      R => '0'
    );
\rChannelStatusIn_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(10),
      Q => p_0_in1_in(9),
      R => '0'
    );
\rChannelStatusIn_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(11),
      Q => p_0_in1_in(10),
      R => '0'
    );
\rChannelStatusIn_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(12),
      Q => p_0_in1_in(11),
      R => '0'
    );
\rChannelStatusIn_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(13),
      Q => p_0_in1_in(12),
      R => '0'
    );
\rChannelStatusIn_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(14),
      Q => p_0_in1_in(13),
      R => '0'
    );
\rChannelStatusIn_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[11]\,
      Q => \rChannelStatusIn_reg_n_0_[10]\,
      R => '0'
    );
\rChannelStatusIn_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(15),
      Q => p_0_in1_in(14),
      R => '0'
    );
\rChannelStatusIn_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(16),
      Q => p_0_in1_in(15),
      R => '0'
    );
\rChannelStatusIn_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(17),
      Q => p_0_in1_in(16),
      R => '0'
    );
\rChannelStatusIn_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(18),
      Q => p_0_in1_in(17),
      R => '0'
    );
\rChannelStatusIn_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(19),
      Q => p_0_in1_in(18),
      R => '0'
    );
\rChannelStatusIn_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(20),
      Q => p_0_in1_in(19),
      R => '0'
    );
\rChannelStatusIn_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(21),
      Q => p_0_in1_in(20),
      R => '0'
    );
\rChannelStatusIn_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(22),
      Q => p_0_in1_in(21),
      R => '0'
    );
\rChannelStatusIn_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(23),
      Q => p_0_in1_in(22),
      R => '0'
    );
\rChannelStatusIn_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(24),
      Q => p_0_in1_in(23),
      R => '0'
    );
\rChannelStatusIn_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[12]\,
      Q => \rChannelStatusIn_reg_n_0_[11]\,
      R => '0'
    );
\rChannelStatusIn_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(25),
      Q => p_0_in1_in(24),
      R => '0'
    );
\rChannelStatusIn_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(26),
      Q => p_0_in1_in(25),
      R => '0'
    );
\rChannelStatusIn_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(27),
      Q => p_0_in1_in(26),
      R => '0'
    );
\rChannelStatusIn_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(28),
      Q => p_0_in1_in(27),
      R => '0'
    );
\rChannelStatusIn_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(29),
      Q => p_0_in1_in(28),
      R => '0'
    );
\rChannelStatusIn_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(30),
      Q => p_0_in1_in(29),
      R => '0'
    );
\rChannelStatusIn_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(31),
      Q => p_0_in1_in(30),
      R => '0'
    );
\rChannelStatusIn_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(32),
      Q => p_0_in1_in(31),
      R => '0'
    );
\rChannelStatusIn_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(33),
      Q => p_0_in1_in(32),
      R => '0'
    );
\rChannelStatusIn_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(34),
      Q => p_0_in1_in(33),
      R => '0'
    );
\rChannelStatusIn_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[13]\,
      Q => \rChannelStatusIn_reg_n_0_[12]\,
      R => '0'
    );
\rChannelStatusIn_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(35),
      Q => p_0_in1_in(34),
      R => '0'
    );
\rChannelStatusIn_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(36),
      Q => p_0_in1_in(35),
      R => '0'
    );
\rChannelStatusIn_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(37),
      Q => p_0_in1_in(36),
      R => '0'
    );
\rChannelStatusIn_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(38),
      Q => p_0_in1_in(37),
      R => '0'
    );
\rChannelStatusIn_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(39),
      Q => p_0_in1_in(38),
      R => '0'
    );
\rChannelStatusIn_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(40),
      Q => p_0_in1_in(39),
      R => '0'
    );
\rChannelStatusIn_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(41),
      Q => p_0_in1_in(40),
      R => '0'
    );
\rChannelStatusIn_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(42),
      Q => p_0_in1_in(41),
      R => '0'
    );
\rChannelStatusIn_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(43),
      Q => p_0_in1_in(42),
      R => '0'
    );
\rChannelStatusIn_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(44),
      Q => p_0_in1_in(43),
      R => '0'
    );
\rChannelStatusIn_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[14]\,
      Q => \rChannelStatusIn_reg_n_0_[13]\,
      R => '0'
    );
\rChannelStatusIn_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(45),
      Q => p_0_in1_in(44),
      R => '0'
    );
\rChannelStatusIn_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(46),
      Q => p_0_in1_in(45),
      R => '0'
    );
\rChannelStatusIn_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(47),
      Q => p_0_in1_in(46),
      R => '0'
    );
\rChannelStatusIn_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(0),
      Q => p_0_in1_in(47),
      R => '0'
    );
\rChannelStatusIn_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(1),
      Q => p_0_in4_in(0),
      R => '0'
    );
\rChannelStatusIn_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(2),
      Q => p_0_in4_in(1),
      R => '0'
    );
\rChannelStatusIn_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(3),
      Q => p_0_in4_in(2),
      R => '0'
    );
\rChannelStatusIn_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(4),
      Q => p_0_in4_in(3),
      R => '0'
    );
\rChannelStatusIn_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(5),
      Q => p_0_in4_in(4),
      R => '0'
    );
\rChannelStatusIn_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(6),
      Q => p_0_in4_in(5),
      R => '0'
    );
\rChannelStatusIn_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[15]\,
      Q => \rChannelStatusIn_reg_n_0_[14]\,
      R => '0'
    );
\rChannelStatusIn_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(7),
      Q => p_0_in4_in(6),
      R => '0'
    );
\rChannelStatusIn_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(8),
      Q => p_0_in4_in(7),
      R => '0'
    );
\rChannelStatusIn_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(9),
      Q => p_0_in4_in(8),
      R => '0'
    );
\rChannelStatusIn_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(10),
      Q => p_0_in4_in(9),
      R => '0'
    );
\rChannelStatusIn_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(11),
      Q => p_0_in4_in(10),
      R => '0'
    );
\rChannelStatusIn_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(12),
      Q => p_0_in4_in(11),
      R => '0'
    );
\rChannelStatusIn_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(13),
      Q => p_0_in4_in(12),
      R => '0'
    );
\rChannelStatusIn_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(14),
      Q => p_0_in4_in(13),
      R => '0'
    );
\rChannelStatusIn_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(15),
      Q => p_0_in4_in(14),
      R => '0'
    );
\rChannelStatusIn_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(16),
      Q => p_0_in4_in(15),
      R => '0'
    );
\rChannelStatusIn_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[16]\,
      Q => \rChannelStatusIn_reg_n_0_[15]\,
      R => '0'
    );
\rChannelStatusIn_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(17),
      Q => p_0_in4_in(16),
      R => '0'
    );
\rChannelStatusIn_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(18),
      Q => p_0_in4_in(17),
      R => '0'
    );
\rChannelStatusIn_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(19),
      Q => p_0_in4_in(18),
      R => '0'
    );
\rChannelStatusIn_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(20),
      Q => p_0_in4_in(19),
      R => '0'
    );
\rChannelStatusIn_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(21),
      Q => p_0_in4_in(20),
      R => '0'
    );
\rChannelStatusIn_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(22),
      Q => p_0_in4_in(21),
      R => '0'
    );
\rChannelStatusIn_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(23),
      Q => p_0_in4_in(22),
      R => '0'
    );
\rChannelStatusIn_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(24),
      Q => p_0_in4_in(23),
      R => '0'
    );
\rChannelStatusIn_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(25),
      Q => p_0_in4_in(24),
      R => '0'
    );
\rChannelStatusIn_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(26),
      Q => p_0_in4_in(25),
      R => '0'
    );
\rChannelStatusIn_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[17]\,
      Q => \rChannelStatusIn_reg_n_0_[16]\,
      R => '0'
    );
\rChannelStatusIn_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(27),
      Q => p_0_in4_in(26),
      R => '0'
    );
\rChannelStatusIn_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(28),
      Q => p_0_in4_in(27),
      R => '0'
    );
\rChannelStatusIn_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(29),
      Q => p_0_in4_in(28),
      R => '0'
    );
\rChannelStatusIn_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(30),
      Q => p_0_in4_in(29),
      R => '0'
    );
\rChannelStatusIn_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(31),
      Q => p_0_in4_in(30),
      R => '0'
    );
\rChannelStatusIn_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(32),
      Q => p_0_in4_in(31),
      R => '0'
    );
\rChannelStatusIn_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(33),
      Q => p_0_in4_in(32),
      R => '0'
    );
\rChannelStatusIn_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(34),
      Q => p_0_in4_in(33),
      R => '0'
    );
\rChannelStatusIn_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(35),
      Q => p_0_in4_in(34),
      R => '0'
    );
\rChannelStatusIn_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(36),
      Q => p_0_in4_in(35),
      R => '0'
    );
\rChannelStatusIn_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[18]\,
      Q => \rChannelStatusIn_reg_n_0_[17]\,
      R => '0'
    );
\rChannelStatusIn_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(37),
      Q => p_0_in4_in(36),
      R => '0'
    );
\rChannelStatusIn_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(38),
      Q => p_0_in4_in(37),
      R => '0'
    );
\rChannelStatusIn_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(39),
      Q => p_0_in4_in(38),
      R => '0'
    );
\rChannelStatusIn_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(40),
      Q => p_0_in4_in(39),
      R => '0'
    );
\rChannelStatusIn_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(41),
      Q => p_0_in4_in(40),
      R => '0'
    );
\rChannelStatusIn_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(42),
      Q => p_0_in4_in(41),
      R => '0'
    );
\rChannelStatusIn_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(43),
      Q => p_0_in4_in(42),
      R => '0'
    );
\rChannelStatusIn_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(44),
      Q => p_0_in4_in(43),
      R => '0'
    );
\rChannelStatusIn_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(45),
      Q => p_0_in4_in(44),
      R => '0'
    );
\rChannelStatusIn_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(46),
      Q => p_0_in4_in(45),
      R => '0'
    );
\rChannelStatusIn_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[19]\,
      Q => \rChannelStatusIn_reg_n_0_[18]\,
      R => '0'
    );
\rChannelStatusIn_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in4_in(47),
      Q => p_0_in4_in(46),
      R => '0'
    );
\rChannelStatusIn_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => s_axis_aud_tdata(4),
      Q => p_0_in4_in(47),
      R => '0'
    );
\rChannelStatusIn_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[20]\,
      Q => \rChannelStatusIn_reg_n_0_[19]\,
      R => '0'
    );
\rChannelStatusIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[2]\,
      Q => \rChannelStatusIn_reg_n_0_[1]\,
      R => '0'
    );
\rChannelStatusIn_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[21]\,
      Q => \rChannelStatusIn_reg_n_0_[20]\,
      R => '0'
    );
\rChannelStatusIn_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[22]\,
      Q => \rChannelStatusIn_reg_n_0_[21]\,
      R => '0'
    );
\rChannelStatusIn_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[23]\,
      Q => \rChannelStatusIn_reg_n_0_[22]\,
      R => '0'
    );
\rChannelStatusIn_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[24]\,
      Q => \rChannelStatusIn_reg_n_0_[23]\,
      R => '0'
    );
\rChannelStatusIn_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[25]\,
      Q => \rChannelStatusIn_reg_n_0_[24]\,
      R => '0'
    );
\rChannelStatusIn_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[26]\,
      Q => \rChannelStatusIn_reg_n_0_[25]\,
      R => '0'
    );
\rChannelStatusIn_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[27]\,
      Q => \rChannelStatusIn_reg_n_0_[26]\,
      R => '0'
    );
\rChannelStatusIn_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[28]\,
      Q => \rChannelStatusIn_reg_n_0_[27]\,
      R => '0'
    );
\rChannelStatusIn_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[29]\,
      Q => \rChannelStatusIn_reg_n_0_[28]\,
      R => '0'
    );
\rChannelStatusIn_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[30]\,
      Q => \rChannelStatusIn_reg_n_0_[29]\,
      R => '0'
    );
\rChannelStatusIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[3]\,
      Q => \rChannelStatusIn_reg_n_0_[2]\,
      R => '0'
    );
\rChannelStatusIn_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[31]\,
      Q => \rChannelStatusIn_reg_n_0_[30]\,
      R => '0'
    );
\rChannelStatusIn_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[32]\,
      Q => \rChannelStatusIn_reg_n_0_[31]\,
      R => '0'
    );
\rChannelStatusIn_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[33]\,
      Q => \rChannelStatusIn_reg_n_0_[32]\,
      R => '0'
    );
\rChannelStatusIn_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[34]\,
      Q => \rChannelStatusIn_reg_n_0_[33]\,
      R => '0'
    );
\rChannelStatusIn_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[35]\,
      Q => \rChannelStatusIn_reg_n_0_[34]\,
      R => '0'
    );
\rChannelStatusIn_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[36]\,
      Q => \rChannelStatusIn_reg_n_0_[35]\,
      R => '0'
    );
\rChannelStatusIn_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[37]\,
      Q => \rChannelStatusIn_reg_n_0_[36]\,
      R => '0'
    );
\rChannelStatusIn_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[38]\,
      Q => \rChannelStatusIn_reg_n_0_[37]\,
      R => '0'
    );
\rChannelStatusIn_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[39]\,
      Q => \rChannelStatusIn_reg_n_0_[38]\,
      R => '0'
    );
\rChannelStatusIn_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[40]\,
      Q => \rChannelStatusIn_reg_n_0_[39]\,
      R => '0'
    );
\rChannelStatusIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[4]\,
      Q => \rChannelStatusIn_reg_n_0_[3]\,
      R => '0'
    );
\rChannelStatusIn_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[41]\,
      Q => \rChannelStatusIn_reg_n_0_[40]\,
      R => '0'
    );
\rChannelStatusIn_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[42]\,
      Q => \rChannelStatusIn_reg_n_0_[41]\,
      R => '0'
    );
\rChannelStatusIn_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[43]\,
      Q => \rChannelStatusIn_reg_n_0_[42]\,
      R => '0'
    );
\rChannelStatusIn_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[44]\,
      Q => \rChannelStatusIn_reg_n_0_[43]\,
      R => '0'
    );
\rChannelStatusIn_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[45]\,
      Q => \rChannelStatusIn_reg_n_0_[44]\,
      R => '0'
    );
\rChannelStatusIn_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[46]\,
      Q => \rChannelStatusIn_reg_n_0_[45]\,
      R => '0'
    );
\rChannelStatusIn_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[47]\,
      Q => \rChannelStatusIn_reg_n_0_[46]\,
      R => '0'
    );
\rChannelStatusIn_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(0),
      Q => \rChannelStatusIn_reg_n_0_[47]\,
      R => '0'
    );
\rChannelStatusIn_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(1),
      Q => p_0_in(0),
      R => '0'
    );
\rChannelStatusIn_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(2),
      Q => p_0_in(1),
      R => '0'
    );
\rChannelStatusIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[5]\,
      Q => \rChannelStatusIn_reg_n_0_[4]\,
      R => '0'
    );
\rChannelStatusIn_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(3),
      Q => p_0_in(2),
      R => '0'
    );
\rChannelStatusIn_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(4),
      Q => p_0_in(3),
      R => '0'
    );
\rChannelStatusIn_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(5),
      Q => p_0_in(4),
      R => '0'
    );
\rChannelStatusIn_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(6),
      Q => p_0_in(5),
      R => '0'
    );
\rChannelStatusIn_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(7),
      Q => p_0_in(6),
      R => '0'
    );
\rChannelStatusIn_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(8),
      Q => p_0_in(7),
      R => '0'
    );
\rChannelStatusIn_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(9),
      Q => p_0_in(8),
      R => '0'
    );
\rChannelStatusIn_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(10),
      Q => p_0_in(9),
      R => '0'
    );
\rChannelStatusIn_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(11),
      Q => p_0_in(10),
      R => '0'
    );
\rChannelStatusIn_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(12),
      Q => p_0_in(11),
      R => '0'
    );
\rChannelStatusIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[6]\,
      Q => \rChannelStatusIn_reg_n_0_[5]\,
      R => '0'
    );
\rChannelStatusIn_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(13),
      Q => p_0_in(12),
      R => '0'
    );
\rChannelStatusIn_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(14),
      Q => p_0_in(13),
      R => '0'
    );
\rChannelStatusIn_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(15),
      Q => p_0_in(14),
      R => '0'
    );
\rChannelStatusIn_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(16),
      Q => p_0_in(15),
      R => '0'
    );
\rChannelStatusIn_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(17),
      Q => p_0_in(16),
      R => '0'
    );
\rChannelStatusIn_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(18),
      Q => p_0_in(17),
      R => '0'
    );
\rChannelStatusIn_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(19),
      Q => p_0_in(18),
      R => '0'
    );
\rChannelStatusIn_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(20),
      Q => p_0_in(19),
      R => '0'
    );
\rChannelStatusIn_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(21),
      Q => p_0_in(20),
      R => '0'
    );
\rChannelStatusIn_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(22),
      Q => p_0_in(21),
      R => '0'
    );
\rChannelStatusIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[7]\,
      Q => \rChannelStatusIn_reg_n_0_[6]\,
      R => '0'
    );
\rChannelStatusIn_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(23),
      Q => p_0_in(22),
      R => '0'
    );
\rChannelStatusIn_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(24),
      Q => p_0_in(23),
      R => '0'
    );
\rChannelStatusIn_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(25),
      Q => p_0_in(24),
      R => '0'
    );
\rChannelStatusIn_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(26),
      Q => p_0_in(25),
      R => '0'
    );
\rChannelStatusIn_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(27),
      Q => p_0_in(26),
      R => '0'
    );
\rChannelStatusIn_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(28),
      Q => p_0_in(27),
      R => '0'
    );
\rChannelStatusIn_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(29),
      Q => p_0_in(28),
      R => '0'
    );
\rChannelStatusIn_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(30),
      Q => p_0_in(29),
      R => '0'
    );
\rChannelStatusIn_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(31),
      Q => p_0_in(30),
      R => '0'
    );
\rChannelStatusIn_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(32),
      Q => p_0_in(31),
      R => '0'
    );
\rChannelStatusIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[8]\,
      Q => \rChannelStatusIn_reg_n_0_[7]\,
      R => '0'
    );
\rChannelStatusIn_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(33),
      Q => p_0_in(32),
      R => '0'
    );
\rChannelStatusIn_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(34),
      Q => p_0_in(33),
      R => '0'
    );
\rChannelStatusIn_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(35),
      Q => p_0_in(34),
      R => '0'
    );
\rChannelStatusIn_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(36),
      Q => p_0_in(35),
      R => '0'
    );
\rChannelStatusIn_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(37),
      Q => p_0_in(36),
      R => '0'
    );
\rChannelStatusIn_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(38),
      Q => p_0_in(37),
      R => '0'
    );
\rChannelStatusIn_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(39),
      Q => p_0_in(38),
      R => '0'
    );
\rChannelStatusIn_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(40),
      Q => p_0_in(39),
      R => '0'
    );
\rChannelStatusIn_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(41),
      Q => p_0_in(40),
      R => '0'
    );
\rChannelStatusIn_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(42),
      Q => p_0_in(41),
      R => '0'
    );
\rChannelStatusIn_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[9]\,
      Q => \rChannelStatusIn_reg_n_0_[8]\,
      R => '0'
    );
\rChannelStatusIn_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(43),
      Q => p_0_in(42),
      R => '0'
    );
\rChannelStatusIn_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(44),
      Q => p_0_in(43),
      R => '0'
    );
\rChannelStatusIn_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(45),
      Q => p_0_in(44),
      R => '0'
    );
\rChannelStatusIn_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(46),
      Q => p_0_in(45),
      R => '0'
    );
\rChannelStatusIn_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in(47),
      Q => p_0_in(46),
      R => '0'
    );
\rChannelStatusIn_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(0),
      Q => p_0_in(47),
      R => '0'
    );
\rChannelStatusIn_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(1),
      Q => p_0_in1_in(0),
      R => '0'
    );
\rChannelStatusIn_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(2),
      Q => p_0_in1_in(1),
      R => '0'
    );
\rChannelStatusIn_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(3),
      Q => p_0_in1_in(2),
      R => '0'
    );
\rChannelStatusIn_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => p_0_in1_in(4),
      Q => p_0_in1_in(3),
      R => '0'
    );
\rChannelStatusIn_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => \rChannelStatusIn_reg[191]_0\(0),
      D => \rChannelStatusIn_reg_n_0_[10]\,
      Q => \rChannelStatusIn_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_axi is
  port (
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awready : out STD_LOGIC;
    oAxi_WReady_reg_0 : out STD_LOGIC;
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_in : out STD_LOGIC;
    rJustify_reg_0 : out STD_LOGIC;
    rLeft_Right_reg_0 : out STD_LOGIC;
    rValidity_reg_0 : out STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rvalid : out STD_LOGIC;
    irq : out STD_LOGIC;
    src_pulse : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \rChannelMux_01_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_aresetn : in STD_LOGIC;
    dest_pulse : in STD_LOGIC;
    \rIrqStatus_reg[1]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rIrqStatus_reg[3]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_axi is
  signal \FSM_onehot_stmRead[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stmWrite[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stmWrite[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data12 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data13 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data14 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data15 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data16 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^irq\ : STD_LOGIC;
  signal oAxi_ARReady_i_1_n_0 : STD_LOGIC;
  signal oAxi_AWReady_i_2_n_0 : STD_LOGIC;
  signal \oAxi_BResp[1]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_BResp[1]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_BResp[1]_i_3_n_0\ : STD_LOGIC;
  signal oAxi_BValid_i_1_n_0 : STD_LOGIC;
  signal \oAxi_RData[0]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[0]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[0]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[0]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[0]_i_5_n_0\ : STD_LOGIC;
  signal \oAxi_RData[0]_i_6_n_0\ : STD_LOGIC;
  signal \oAxi_RData[0]_i_7_n_0\ : STD_LOGIC;
  signal \oAxi_RData[10]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[10]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[10]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[11]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[11]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[11]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[12]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[12]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[12]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[13]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[13]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[13]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[14]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[14]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[14]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[15]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[15]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[15]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[16]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[16]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[16]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[16]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[16]_i_5_n_0\ : STD_LOGIC;
  signal \oAxi_RData[16]_i_6_n_0\ : STD_LOGIC;
  signal \oAxi_RData[16]_i_7_n_0\ : STD_LOGIC;
  signal \oAxi_RData[17]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[17]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[17]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[18]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[18]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[18]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[19]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[19]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[19]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[1]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[1]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[1]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[1]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[1]_i_5_n_0\ : STD_LOGIC;
  signal \oAxi_RData[1]_i_6_n_0\ : STD_LOGIC;
  signal \oAxi_RData[1]_i_7_n_0\ : STD_LOGIC;
  signal \oAxi_RData[20]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[20]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[20]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[21]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[21]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[21]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[22]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[22]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[22]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[23]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[23]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[23]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[24]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[24]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[24]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[25]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[25]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[25]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[26]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[26]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[26]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[27]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[27]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[27]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[28]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[28]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[28]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[29]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[29]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[29]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[2]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[2]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[2]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[2]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[2]_i_5_n_0\ : STD_LOGIC;
  signal \oAxi_RData[2]_i_6_n_0\ : STD_LOGIC;
  signal \oAxi_RData[2]_i_7_n_0\ : STD_LOGIC;
  signal \oAxi_RData[30]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[30]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[30]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[30]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[30]_i_5_n_0\ : STD_LOGIC;
  signal \oAxi_RData[30]_i_6_n_0\ : STD_LOGIC;
  signal \oAxi_RData[31]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[31]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[31]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[31]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[31]_i_5_n_0\ : STD_LOGIC;
  signal \oAxi_RData[31]_i_6_n_0\ : STD_LOGIC;
  signal \oAxi_RData[31]_i_7_n_0\ : STD_LOGIC;
  signal \oAxi_RData[31]_i_8_n_0\ : STD_LOGIC;
  signal \oAxi_RData[3]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[3]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[3]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[3]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[3]_i_5_n_0\ : STD_LOGIC;
  signal \oAxi_RData[4]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[4]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[4]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[4]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[5]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[5]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[5]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[5]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[6]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[6]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[6]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[6]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[7]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[7]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[7]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[7]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RData[8]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[8]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[8]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[9]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RData[9]_i_2_n_0\ : STD_LOGIC;
  signal \oAxi_RData[9]_i_3_n_0\ : STD_LOGIC;
  signal \oAxi_RData[9]_i_4_n_0\ : STD_LOGIC;
  signal \oAxi_RResp[1]_i_1_n_0\ : STD_LOGIC;
  signal \oAxi_RResp[1]_i_2_n_0\ : STD_LOGIC;
  signal oAxi_RValid_i_1_n_0 : STD_LOGIC;
  signal oAxi_WReady_i_1_n_0 : STD_LOGIC;
  signal \^oaxi_wready_reg_0\ : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[0]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[10]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[11]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[12]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[13]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[14]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[15]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[16]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[17]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[18]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[19]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[1]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[20]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[21]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[22]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[23]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[24]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[25]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[26]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[27]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[28]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[29]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[2]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[30]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[31]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[3]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[4]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[5]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[6]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[7]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[8]\ : STD_LOGIC;
  signal \rAesChannelStatus_reg_n_0_[9]\ : STD_LOGIC;
  signal \rChannelMux_01[0]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_01[1]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_01[2]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_01[2]_i_2_n_0\ : STD_LOGIC;
  signal \^rchannelmux_01_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rChannelMux_23 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rChannelMux_23[0]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_23[1]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_23[2]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_23[2]_i_2_n_0\ : STD_LOGIC;
  signal rChannelMux_45 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rChannelMux_45[0]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_45[1]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_45[2]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_45[2]_i_2_n_0\ : STD_LOGIC;
  signal rChannelMux_67 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rChannelMux_67[0]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_67[1]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_67[2]_i_1_n_0\ : STD_LOGIC;
  signal \rChannelMux_67[2]_i_2_n_0\ : STD_LOGIC;
  signal rClearAesChannelStatus_i_1_n_0 : STD_LOGIC;
  signal rClearAesChannelStatus_i_2_n_0 : STD_LOGIC;
  signal rClearAesChannelStatus_i_3_n_0 : STD_LOGIC;
  signal rClearIrqs : STD_LOGIC;
  signal \rClearIrqs[0]_i_1_n_0\ : STD_LOGIC;
  signal \rClearIrqs[1]_i_1_n_0\ : STD_LOGIC;
  signal \rClearIrqs[2]_i_1_n_0\ : STD_LOGIC;
  signal \rClearIrqs[3]_i_2_n_0\ : STD_LOGIC;
  signal \rClearIrqs_reg_n_0_[0]\ : STD_LOGIC;
  signal \rClearIrqs_reg_n_0_[1]\ : STD_LOGIC;
  signal \rClearIrqs_reg_n_0_[2]\ : STD_LOGIC;
  signal \rClearIrqs_reg_n_0_[3]\ : STD_LOGIC;
  signal rEnable_i_1_n_0 : STD_LOGIC;
  signal rEnable_i_2_n_0 : STD_LOGIC;
  signal \rIrqEnables[31]_i_1_n_0\ : STD_LOGIC;
  signal \rIrqEnables[31]_i_2_n_0\ : STD_LOGIC;
  signal \rIrqEnables_reg_n_0_[0]\ : STD_LOGIC;
  signal \rIrqEnables_reg_n_0_[1]\ : STD_LOGIC;
  signal \rIrqEnables_reg_n_0_[2]\ : STD_LOGIC;
  signal \rIrqEnables_reg_n_0_[31]\ : STD_LOGIC;
  signal \rIrqEnables_reg_n_0_[3]\ : STD_LOGIC;
  signal \rIrqStatus[0]_i_1_n_0\ : STD_LOGIC;
  signal \rIrqStatus[1]_i_1_n_0\ : STD_LOGIC;
  signal \rIrqStatus[2]_i_1_n_0\ : STD_LOGIC;
  signal \rIrqStatus[3]_i_1_n_0\ : STD_LOGIC;
  signal \rIrqStatus_reg_n_0_[0]\ : STD_LOGIC;
  signal \rIrqStatus_reg_n_0_[2]\ : STD_LOGIC;
  signal \rIrqStatus_reg_n_0_[3]\ : STD_LOGIC;
  signal rIrq_i_1_n_0 : STD_LOGIC;
  signal rIrq_i_2_n_0 : STD_LOGIC;
  signal rIrq_i_3_n_0 : STD_LOGIC;
  signal rJustify_i_1_n_0 : STD_LOGIC;
  signal \^rjustify_reg_0\ : STD_LOGIC;
  signal rLeft_Right_i_1_n_0 : STD_LOGIC;
  signal \^rleft_right_reg_0\ : STD_LOGIC;
  signal rReadAddr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \rReadAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \rReadAddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \rReadAddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \rSclkDiv[7]_i_1_n_0\ : STD_LOGIC;
  signal \rSclkDiv[7]_i_2_n_0\ : STD_LOGIC;
  signal rValidity_i_1_n_0 : STD_LOGIC;
  signal rValidity_i_2_n_0 : STD_LOGIC;
  signal \^rvalidity_reg_0\ : STD_LOGIC;
  signal rWriteAddr : STD_LOGIC;
  signal \rWriteAddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \^s_axi_ctrl_arready\ : STD_LOGIC;
  signal \^s_axi_ctrl_awready\ : STD_LOGIC;
  signal \^s_axi_ctrl_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_ctrl_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^src_in\ : STD_LOGIC;
  signal \^src_pulse\ : STD_LOGIC;
  signal stmRead : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stmWrite : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_stmRead_reg[0]\ : label is "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stmRead_reg[1]\ : label is "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stmRead_reg[2]\ : label is "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stmRead_reg[3]\ : label is "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stmWrite[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FSM_sequential_stmWrite[1]_i_1\ : label is "soft_lutpair53";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stmWrite_reg[0]\ : label is "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stmWrite_reg[1]\ : label is "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11,";
  attribute SOFT_HLUTNM of \oAxi_BResp[1]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \oAxi_RData[16]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \oAxi_RData[16]_i_4\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \oAxi_RData[16]_i_6\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \oAxi_RData[30]_i_5\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \oAxi_RData[30]_i_6\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \oAxi_RData[31]_i_5\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \oAxi_RData[31]_i_6\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \oAxi_RData[3]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \oAxi_RData[3]_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \oAxi_RData[3]_i_5\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \oAxi_RData[7]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \oAxi_RResp[1]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rChannelMux_01[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rChannelMux_01[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rChannelMux_23[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rChannelMux_23[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rChannelMux_23[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rChannelMux_45[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rChannelMux_45[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rChannelMux_45[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rChannelMux_67[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of rClearAesChannelStatus_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of rEnable_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rIrqEnables[31]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of rJustify_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of rLeft_Right_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rReadAddr[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rReadAddr[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rReadAddr[2]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rReadAddr[3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rReadAddr[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rReadAddr[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rReadAddr[6]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rReadAddr[7]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rSclkDiv[7]_i_2\ : label is "soft_lutpair54";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  SR(0) <= \^sr\(0);
  irq <= \^irq\;
  oAxi_WReady_reg_0 <= \^oaxi_wready_reg_0\;
  \rChannelMux_01_reg[2]_0\(2 downto 0) <= \^rchannelmux_01_reg[2]_0\(2 downto 0);
  rJustify_reg_0 <= \^rjustify_reg_0\;
  rLeft_Right_reg_0 <= \^rleft_right_reg_0\;
  rValidity_reg_0 <= \^rvalidity_reg_0\;
  s_axi_ctrl_arready <= \^s_axi_ctrl_arready\;
  s_axi_ctrl_awready <= \^s_axi_ctrl_awready\;
  s_axi_ctrl_bresp(0) <= \^s_axi_ctrl_bresp\(0);
  s_axi_ctrl_bvalid <= \^s_axi_ctrl_bvalid\;
  s_axi_ctrl_rvalid <= \^s_axi_ctrl_rvalid\;
  src_in <= \^src_in\;
  src_pulse <= \^src_pulse\;
\FSM_onehot_stmRead[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => stmRead(2),
      I1 => stmRead(0),
      I2 => stmRead(3),
      I3 => s_axi_ctrl_rready,
      I4 => stmRead(1),
      I5 => s_axi_ctrl_arvalid,
      O => \FSM_onehot_stmRead[3]_i_1_n_0\
    );
\FSM_onehot_stmRead_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \FSM_onehot_stmRead[3]_i_1_n_0\,
      D => stmRead(3),
      Q => stmRead(0),
      S => \^sr\(0)
    );
\FSM_onehot_stmRead_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \FSM_onehot_stmRead[3]_i_1_n_0\,
      D => stmRead(0),
      Q => stmRead(1),
      R => \^sr\(0)
    );
\FSM_onehot_stmRead_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \FSM_onehot_stmRead[3]_i_1_n_0\,
      D => stmRead(1),
      Q => stmRead(2),
      R => \^sr\(0)
    );
\FSM_onehot_stmRead_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \FSM_onehot_stmRead[3]_i_1_n_0\,
      D => stmRead(2),
      Q => stmRead(3),
      R => \^sr\(0)
    );
\FSM_sequential_stmWrite[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4747FF33"
    )
        port map (
      I0 => s_axi_ctrl_bready,
      I1 => stmWrite(1),
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_wvalid,
      I4 => stmWrite(0),
      O => \FSM_sequential_stmWrite[0]_i_1_n_0\
    );
\FSM_sequential_stmWrite[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38F8"
    )
        port map (
      I0 => s_axi_ctrl_awvalid,
      I1 => stmWrite(0),
      I2 => stmWrite(1),
      I3 => s_axi_ctrl_bready,
      O => \FSM_sequential_stmWrite[1]_i_1_n_0\
    );
\FSM_sequential_stmWrite_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \FSM_sequential_stmWrite[0]_i_1_n_0\,
      Q => stmWrite(0),
      R => \^sr\(0)
    );
\FSM_sequential_stmWrite_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \FSM_sequential_stmWrite[1]_i_1_n_0\,
      Q => stmWrite(1),
      R => \^sr\(0)
    );
oAxi_ARReady_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDC"
    )
        port map (
      I0 => s_axi_ctrl_arvalid,
      I1 => stmRead(0),
      I2 => stmRead(1),
      I3 => \^s_axi_ctrl_arready\,
      O => oAxi_ARReady_i_1_n_0
    );
oAxi_ARReady_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => oAxi_ARReady_i_1_n_0,
      Q => \^s_axi_ctrl_arready\,
      R => \^sr\(0)
    );
oAxi_AWReady_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_ctrl_aresetn,
      O => \^sr\(0)
    );
oAxi_AWReady_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BBB"
    )
        port map (
      I0 => \^s_axi_ctrl_awready\,
      I1 => stmWrite(1),
      I2 => s_axi_ctrl_awvalid,
      I3 => stmWrite(0),
      O => oAxi_AWReady_i_2_n_0
    );
oAxi_AWReady_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => oAxi_AWReady_i_2_n_0,
      Q => \^s_axi_ctrl_awready\,
      R => \^sr\(0)
    );
\oAxi_BResp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => \^s_axi_ctrl_bresp\(0),
      I1 => \oAxi_BResp[1]_i_2_n_0\,
      I2 => \oAxi_BResp[1]_i_3_n_0\,
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => \rWriteAddr_reg_n_0_[7]\,
      O => \oAxi_BResp[1]_i_1_n_0\
    );
\oAxi_BResp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^oaxi_wready_reg_0\,
      I1 => s_axi_ctrl_wvalid,
      O => \oAxi_BResp[1]_i_2_n_0\
    );
\oAxi_BResp[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA44DCBA"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(5),
      I4 => sel0(4),
      O => \oAxi_BResp[1]_i_3_n_0\
    );
\oAxi_BResp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \oAxi_BResp[1]_i_1_n_0\,
      Q => \^s_axi_ctrl_bresp\(0),
      R => \^sr\(0)
    );
oAxi_BValid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FF050C0"
    )
        port map (
      I0 => s_axi_ctrl_bready,
      I1 => s_axi_ctrl_wvalid,
      I2 => stmWrite(1),
      I3 => stmWrite(0),
      I4 => \^s_axi_ctrl_bvalid\,
      O => oAxi_BValid_i_1_n_0
    );
oAxi_BValid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => oAxi_BValid_i_1_n_0,
      Q => \^s_axi_ctrl_bvalid\,
      R => \^sr\(0)
    );
\oAxi_RData[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A8A8A808080"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[0]_i_2_n_0\,
      I2 => rReadAddr(2),
      I3 => \oAxi_RData[0]_i_3_n_0\,
      I4 => rReadAddr(3),
      I5 => \oAxi_RData[0]_i_4_n_0\,
      O => \oAxi_RData[0]_i_1_n_0\
    );
\oAxi_RData[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8888888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data16(0),
      I2 => rReadAddr(4),
      I3 => \oAxi_RData[0]_i_5_n_0\,
      I4 => rReadAddr(3),
      I5 => \oAxi_RData[0]_i_6_n_0\,
      O => \oAxi_RData[0]_i_2_n_0\
    );
\oAxi_RData[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => \^src_in\,
      I1 => rChannelMux_45(0),
      I2 => data13(0),
      I3 => rReadAddr(5),
      I4 => rReadAddr(4),
      I5 => rReadAddr(6),
      O => \oAxi_RData[0]_i_3_n_0\
    );
\oAxi_RData[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF30201000"
    )
        port map (
      I0 => rReadAddr(6),
      I1 => rReadAddr(4),
      I2 => rReadAddr(5),
      I3 => \^q\(0),
      I4 => data15(0),
      I5 => \oAxi_RData[0]_i_7_n_0\,
      O => \oAxi_RData[0]_i_4_n_0\
    );
\oAxi_RData[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \rIrqStatus_reg_n_0_[0]\,
      I1 => rChannelMux_23(0),
      I2 => rReadAddr(5),
      I3 => rReadAddr(6),
      I4 => data12(0),
      O => \oAxi_RData[0]_i_5_n_0\
    );
\oAxi_RData[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => \^rvalidity_reg_0\,
      I1 => rChannelMux_67(0),
      I2 => data14(0),
      I3 => rReadAddr(5),
      I4 => rReadAddr(4),
      I5 => rReadAddr(6),
      O => \oAxi_RData[0]_i_6_n_0\
    );
\oAxi_RData[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B0B380800000000"
    )
        port map (
      I0 => \rAesChannelStatus_reg_n_0_[0]\,
      I1 => rReadAddr(6),
      I2 => rReadAddr(5),
      I3 => \^rchannelmux_01_reg[2]_0\(0),
      I4 => \rIrqEnables_reg_n_0_[0]\,
      I5 => rReadAddr(4),
      O => \oAxi_RData[0]_i_7_n_0\
    );
\oAxi_RData[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[10]_i_2_n_0\,
      I1 => data14(10),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[10]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[10]_i_1_n_0\
    );
\oAxi_RData[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(10),
      I1 => data16(10),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[10]_i_2_n_0\
    );
\oAxi_RData[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(10),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[10]\,
      I4 => data13(10),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[10]_i_3_n_0\
    );
\oAxi_RData[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[11]_i_2_n_0\,
      I1 => data14(11),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[11]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[11]_i_1_n_0\
    );
\oAxi_RData[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(11),
      I1 => data16(11),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[11]_i_2_n_0\
    );
\oAxi_RData[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(11),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[11]\,
      I4 => data13(11),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[11]_i_3_n_0\
    );
\oAxi_RData[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[12]_i_2_n_0\,
      I1 => data14(12),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[12]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[12]_i_1_n_0\
    );
\oAxi_RData[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(12),
      I1 => data16(12),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[12]_i_2_n_0\
    );
\oAxi_RData[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(12),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[12]\,
      I4 => data13(12),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[12]_i_3_n_0\
    );
\oAxi_RData[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[13]_i_2_n_0\,
      I1 => data14(13),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[13]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[13]_i_1_n_0\
    );
\oAxi_RData[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(13),
      I1 => data16(13),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[13]_i_2_n_0\
    );
\oAxi_RData[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(13),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[13]\,
      I4 => data13(13),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[13]_i_3_n_0\
    );
\oAxi_RData[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[14]_i_2_n_0\,
      I1 => data14(14),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[14]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[14]_i_1_n_0\
    );
\oAxi_RData[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(14),
      I1 => data16(14),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[14]_i_2_n_0\
    );
\oAxi_RData[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(14),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[14]\,
      I4 => data13(14),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[14]_i_3_n_0\
    );
\oAxi_RData[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[15]_i_2_n_0\,
      I1 => data14(15),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[15]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[15]_i_1_n_0\
    );
\oAxi_RData[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(15),
      I1 => data16(15),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[15]_i_2_n_0\
    );
\oAxi_RData[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(15),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[15]\,
      I4 => data13(15),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[15]_i_3_n_0\
    );
\oAxi_RData[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[16]_i_2_n_0\,
      I2 => \oAxi_RData[16]_i_3_n_0\,
      I3 => \oAxi_RData[16]_i_4_n_0\,
      I4 => data13(16),
      I5 => \oAxi_RData[16]_i_5_n_0\,
      O => \oAxi_RData[16]_i_1_n_0\
    );
\oAxi_RData[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => rReadAddr(3),
      I1 => data14(16),
      I2 => rReadAddr(2),
      I3 => rReadAddr(6),
      I4 => rReadAddr(4),
      I5 => rReadAddr(5),
      O => \oAxi_RData[16]_i_2_n_0\
    );
\oAxi_RData[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rReadAddr(5),
      I1 => rReadAddr(4),
      I2 => rReadAddr(6),
      O => \oAxi_RData[16]_i_3_n_0\
    );
\oAxi_RData[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rReadAddr(3),
      I1 => rReadAddr(2),
      O => \oAxi_RData[16]_i_4_n_0\
    );
\oAxi_RData[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFB080"
    )
        port map (
      I0 => data16(16),
      I1 => rReadAddr(2),
      I2 => \oAxi_RData[16]_i_6_n_0\,
      I3 => data15(16),
      I4 => \oAxi_RData[16]_i_7_n_0\,
      I5 => rReadAddr(3),
      O => \oAxi_RData[16]_i_5_n_0\
    );
\oAxi_RData[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rReadAddr(4),
      I1 => rReadAddr(6),
      I2 => rReadAddr(5),
      O => \oAxi_RData[16]_i_6_n_0\
    );
\oAxi_RData[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B00F800F"
    )
        port map (
      I0 => data12(16),
      I1 => rReadAddr(2),
      I2 => rReadAddr(6),
      I3 => rReadAddr(4),
      I4 => \rAesChannelStatus_reg_n_0_[16]\,
      I5 => rReadAddr(5),
      O => \oAxi_RData[16]_i_7_n_0\
    );
\oAxi_RData[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[17]_i_2_n_0\,
      I1 => data14(17),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[17]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[17]_i_1_n_0\
    );
\oAxi_RData[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(17),
      I1 => data16(17),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[17]_i_2_n_0\
    );
\oAxi_RData[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(17),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[17]\,
      I4 => data13(17),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[17]_i_3_n_0\
    );
\oAxi_RData[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[18]_i_2_n_0\,
      I1 => data14(18),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[18]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[18]_i_1_n_0\
    );
\oAxi_RData[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(18),
      I1 => data16(18),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[18]_i_2_n_0\
    );
\oAxi_RData[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(18),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[18]\,
      I4 => data13(18),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[18]_i_3_n_0\
    );
\oAxi_RData[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[19]_i_2_n_0\,
      I1 => data14(19),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[19]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[19]_i_1_n_0\
    );
\oAxi_RData[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(19),
      I1 => data16(19),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[19]_i_2_n_0\
    );
\oAxi_RData[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(19),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[19]\,
      I4 => data13(19),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[19]_i_3_n_0\
    );
\oAxi_RData[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A8A8A808080"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[1]_i_2_n_0\,
      I2 => rReadAddr(2),
      I3 => \oAxi_RData[1]_i_3_n_0\,
      I4 => rReadAddr(3),
      I5 => \oAxi_RData[1]_i_4_n_0\,
      O => \oAxi_RData[1]_i_1_n_0\
    );
\oAxi_RData[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEA404040"
    )
        port map (
      I0 => rReadAddr(3),
      I1 => rReadAddr(4),
      I2 => \oAxi_RData[1]_i_5_n_0\,
      I3 => data14(1),
      I4 => \oAxi_RData[16]_i_3_n_0\,
      I5 => \oAxi_RData[1]_i_6_n_0\,
      O => \oAxi_RData[1]_i_2_n_0\
    );
\oAxi_RData[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => \^rjustify_reg_0\,
      I1 => rChannelMux_45(1),
      I2 => data13(1),
      I3 => rReadAddr(5),
      I4 => rReadAddr(4),
      I5 => rReadAddr(6),
      O => \oAxi_RData[1]_i_3_n_0\
    );
\oAxi_RData[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF30201000"
    )
        port map (
      I0 => rReadAddr(6),
      I1 => rReadAddr(4),
      I2 => rReadAddr(5),
      I3 => \^q\(1),
      I4 => data15(1),
      I5 => \oAxi_RData[1]_i_7_n_0\,
      O => \oAxi_RData[1]_i_4_n_0\
    );
\oAxi_RData[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => p_5_in,
      I1 => rChannelMux_23(1),
      I2 => rReadAddr(5),
      I3 => rReadAddr(6),
      I4 => data12(1),
      O => \oAxi_RData[1]_i_5_n_0\
    );
\oAxi_RData[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A00000C00000"
    )
        port map (
      I0 => rChannelMux_67(1),
      I1 => data16(1),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[1]_i_6_n_0\
    );
\oAxi_RData[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B0B380800000000"
    )
        port map (
      I0 => \rAesChannelStatus_reg_n_0_[1]\,
      I1 => rReadAddr(6),
      I2 => rReadAddr(5),
      I3 => \^rchannelmux_01_reg[2]_0\(1),
      I4 => \rIrqEnables_reg_n_0_[1]\,
      I5 => rReadAddr(4),
      O => \oAxi_RData[1]_i_7_n_0\
    );
\oAxi_RData[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[20]_i_2_n_0\,
      I1 => data14(20),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[20]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[20]_i_1_n_0\
    );
\oAxi_RData[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(20),
      I1 => data16(20),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[20]_i_2_n_0\
    );
\oAxi_RData[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(20),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[20]\,
      I4 => data13(20),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[20]_i_3_n_0\
    );
\oAxi_RData[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[21]_i_2_n_0\,
      I1 => data14(21),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[21]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[21]_i_1_n_0\
    );
\oAxi_RData[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(21),
      I1 => data16(21),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[21]_i_2_n_0\
    );
\oAxi_RData[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(21),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[21]\,
      I4 => data13(21),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[21]_i_3_n_0\
    );
\oAxi_RData[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[22]_i_2_n_0\,
      I1 => data14(22),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[22]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[22]_i_1_n_0\
    );
\oAxi_RData[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(22),
      I1 => data16(22),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[22]_i_2_n_0\
    );
\oAxi_RData[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(22),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[22]\,
      I4 => data13(22),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[22]_i_3_n_0\
    );
\oAxi_RData[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[23]_i_2_n_0\,
      I1 => data14(23),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[23]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[23]_i_1_n_0\
    );
\oAxi_RData[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(23),
      I1 => data16(23),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[23]_i_2_n_0\
    );
\oAxi_RData[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(23),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[23]\,
      I4 => data13(23),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[23]_i_3_n_0\
    );
\oAxi_RData[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[24]_i_2_n_0\,
      I1 => data14(24),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[24]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[24]_i_1_n_0\
    );
\oAxi_RData[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(24),
      I1 => data16(24),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[24]_i_2_n_0\
    );
\oAxi_RData[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(24),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[24]\,
      I4 => data13(24),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[24]_i_3_n_0\
    );
\oAxi_RData[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[25]_i_2_n_0\,
      I1 => data14(25),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[25]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[25]_i_1_n_0\
    );
\oAxi_RData[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(25),
      I1 => data16(25),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[25]_i_2_n_0\
    );
\oAxi_RData[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(25),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[25]\,
      I4 => data13(25),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[25]_i_3_n_0\
    );
\oAxi_RData[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[26]_i_2_n_0\,
      I1 => data14(26),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[26]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[26]_i_1_n_0\
    );
\oAxi_RData[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(26),
      I1 => data16(26),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[26]_i_2_n_0\
    );
\oAxi_RData[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(26),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[26]\,
      I4 => data13(26),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[26]_i_3_n_0\
    );
\oAxi_RData[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[27]_i_2_n_0\,
      I1 => data14(27),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[27]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[27]_i_1_n_0\
    );
\oAxi_RData[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(27),
      I1 => data16(27),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[27]_i_2_n_0\
    );
\oAxi_RData[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(27),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[27]\,
      I4 => data13(27),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[27]_i_3_n_0\
    );
\oAxi_RData[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[28]_i_2_n_0\,
      I1 => data14(28),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[28]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[28]_i_1_n_0\
    );
\oAxi_RData[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(28),
      I1 => data16(28),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[28]_i_2_n_0\
    );
\oAxi_RData[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(28),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[28]\,
      I4 => data13(28),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[28]_i_3_n_0\
    );
\oAxi_RData[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[29]_i_2_n_0\,
      I1 => data14(29),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[29]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[29]_i_1_n_0\
    );
\oAxi_RData[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(29),
      I1 => data16(29),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[29]_i_2_n_0\
    );
\oAxi_RData[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(29),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[29]\,
      I4 => data13(29),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[29]_i_3_n_0\
    );
\oAxi_RData[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A8A8A808080"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[2]_i_2_n_0\,
      I2 => rReadAddr(2),
      I3 => \oAxi_RData[2]_i_3_n_0\,
      I4 => rReadAddr(3),
      I5 => \oAxi_RData[2]_i_4_n_0\,
      O => \oAxi_RData[2]_i_1_n_0\
    );
\oAxi_RData[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEA404040"
    )
        port map (
      I0 => rReadAddr(3),
      I1 => rReadAddr(4),
      I2 => \oAxi_RData[2]_i_5_n_0\,
      I3 => data14(2),
      I4 => \oAxi_RData[16]_i_3_n_0\,
      I5 => \oAxi_RData[2]_i_6_n_0\,
      O => \oAxi_RData[2]_i_2_n_0\
    );
\oAxi_RData[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => \^rleft_right_reg_0\,
      I1 => rChannelMux_45(2),
      I2 => data13(2),
      I3 => rReadAddr(5),
      I4 => rReadAddr(4),
      I5 => rReadAddr(6),
      O => \oAxi_RData[2]_i_3_n_0\
    );
\oAxi_RData[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF30201000"
    )
        port map (
      I0 => rReadAddr(6),
      I1 => rReadAddr(4),
      I2 => rReadAddr(5),
      I3 => \^q\(2),
      I4 => data15(2),
      I5 => \oAxi_RData[2]_i_7_n_0\,
      O => \oAxi_RData[2]_i_4_n_0\
    );
\oAxi_RData[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \rIrqStatus_reg_n_0_[2]\,
      I1 => rChannelMux_23(2),
      I2 => rReadAddr(5),
      I3 => rReadAddr(6),
      I4 => data12(2),
      O => \oAxi_RData[2]_i_5_n_0\
    );
\oAxi_RData[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A00000C00000"
    )
        port map (
      I0 => rChannelMux_67(2),
      I1 => data16(2),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[2]_i_6_n_0\
    );
\oAxi_RData[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B0B380800000000"
    )
        port map (
      I0 => \rAesChannelStatus_reg_n_0_[2]\,
      I1 => rReadAddr(6),
      I2 => rReadAddr(5),
      I3 => \^rchannelmux_01_reg[2]_0\(2),
      I4 => \rIrqEnables_reg_n_0_[2]\,
      I5 => rReadAddr(4),
      O => \oAxi_RData[2]_i_7_n_0\
    );
\oAxi_RData[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[30]_i_2_n_0\,
      I1 => data14(30),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[30]_i_4_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[30]_i_1_n_0\
    );
\oAxi_RData[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(30),
      I1 => data16(30),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[30]_i_2_n_0\
    );
\oAxi_RData[30]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => rReadAddr(3),
      I1 => rReadAddr(4),
      I2 => rReadAddr(6),
      I3 => rReadAddr(5),
      O => \oAxi_RData[30]_i_3_n_0\
    );
\oAxi_RData[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(30),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[30]\,
      I4 => data13(30),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[30]_i_4_n_0\
    );
\oAxi_RData[30]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => rReadAddr(5),
      I1 => rReadAddr(4),
      I2 => rReadAddr(6),
      I3 => rReadAddr(3),
      O => \oAxi_RData[30]_i_5_n_0\
    );
\oAxi_RData[30]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rReadAddr(5),
      I1 => rReadAddr(4),
      I2 => rReadAddr(6),
      I3 => rReadAddr(3),
      O => \oAxi_RData[30]_i_6_n_0\
    );
\oAxi_RData[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => stmRead(2),
      I1 => stmRead(0),
      O => \oAxi_RData[31]_i_1_n_0\
    );
\oAxi_RData[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888AAAAA888A888"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[31]_i_4_n_0\,
      I2 => data13(31),
      I3 => \oAxi_RData[31]_i_5_n_0\,
      I4 => \oAxi_RData[31]_i_6_n_0\,
      I5 => \oAxi_RData[31]_i_7_n_0\,
      O => \oAxi_RData[31]_i_2_n_0\
    );
\oAxi_RData[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => stmRead(2),
      I1 => rReadAddr(1),
      I2 => rReadAddr(0),
      I3 => \rReadAddr_reg_n_0_[7]\,
      O => \oAxi_RData[31]_i_3_n_0\
    );
\oAxi_RData[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0800000000000"
    )
        port map (
      I0 => \oAxi_RData[31]_i_8_n_0\,
      I1 => data16(31),
      I2 => rReadAddr(2),
      I3 => rReadAddr(5),
      I4 => rReadAddr(4),
      I5 => rReadAddr(6),
      O => \oAxi_RData[31]_i_4_n_0\
    );
\oAxi_RData[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => rReadAddr(5),
      I1 => rReadAddr(6),
      I2 => rReadAddr(4),
      I3 => rReadAddr(3),
      I4 => rReadAddr(2),
      O => \oAxi_RData[31]_i_5_n_0\
    );
\oAxi_RData[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rReadAddr(2),
      I1 => rReadAddr(3),
      O => \oAxi_RData[31]_i_6_n_0\
    );
\oAxi_RData[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCAAF0000000"
    )
        port map (
      I0 => \rIrqEnables_reg_n_0_[31]\,
      I1 => \rAesChannelStatus_reg_n_0_[31]\,
      I2 => data15(31),
      I3 => rReadAddr(6),
      I4 => rReadAddr(5),
      I5 => rReadAddr(4),
      O => \oAxi_RData[31]_i_7_n_0\
    );
\oAxi_RData[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AF"
    )
        port map (
      I0 => data12(31),
      I1 => data14(31),
      I2 => rReadAddr(4),
      I3 => rReadAddr(3),
      O => \oAxi_RData[31]_i_8_n_0\
    );
\oAxi_RData[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[3]_i_2_n_0\,
      I2 => data14(3),
      I3 => data13(3),
      I4 => \oAxi_RData[30]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[3]_i_1_n_0\
    );
\oAxi_RData[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B0B0B08"
    )
        port map (
      I0 => \oAxi_RData[3]_i_3_n_0\,
      I1 => rReadAddr(2),
      I2 => rReadAddr(3),
      I3 => \oAxi_RData[3]_i_4_n_0\,
      I4 => \oAxi_RData[3]_i_5_n_0\,
      O => \oAxi_RData[3]_i_2_n_0\
    );
\oAxi_RData[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCAAF0000000"
    )
        port map (
      I0 => \rIrqStatus_reg_n_0_[3]\,
      I1 => data12(3),
      I2 => data16(3),
      I3 => rReadAddr(6),
      I4 => rReadAddr(5),
      I5 => rReadAddr(4),
      O => \oAxi_RData[3]_i_3_n_0\
    );
\oAxi_RData[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => data15(3),
      I1 => \rAesChannelStatus_reg_n_0_[3]\,
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      O => \oAxi_RData[3]_i_4_n_0\
    );
\oAxi_RData[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000CA0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \rIrqEnables_reg_n_0_[3]\,
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      O => \oAxi_RData[3]_i_5_n_0\
    );
\oAxi_RData[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA800000"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[30]_i_3_n_0\,
      I2 => data14(4),
      I3 => \oAxi_RData[4]_i_2_n_0\,
      I4 => rReadAddr(2),
      I5 => \oAxi_RData[4]_i_3_n_0\,
      O => \oAxi_RData[4]_i_1_n_0\
    );
\oAxi_RData[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(4),
      I1 => data16(4),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[4]_i_2_n_0\
    );
\oAxi_RData[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080F0808"
    )
        port map (
      I0 => data13(4),
      I1 => \oAxi_RData[30]_i_3_n_0\,
      I2 => rReadAddr(2),
      I3 => rReadAddr(3),
      I4 => \oAxi_RData[4]_i_4_n_0\,
      O => \oAxi_RData[4]_i_3_n_0\
    );
\oAxi_RData[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC00F0AA0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \rAesChannelStatus_reg_n_0_[4]\,
      I2 => data15(4),
      I3 => rReadAddr(6),
      I4 => rReadAddr(5),
      I5 => rReadAddr(4),
      O => \oAxi_RData[4]_i_4_n_0\
    );
\oAxi_RData[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA800000"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[30]_i_3_n_0\,
      I2 => data14(5),
      I3 => \oAxi_RData[5]_i_2_n_0\,
      I4 => rReadAddr(2),
      I5 => \oAxi_RData[5]_i_3_n_0\,
      O => \oAxi_RData[5]_i_1_n_0\
    );
\oAxi_RData[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(5),
      I1 => data16(5),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[5]_i_2_n_0\
    );
\oAxi_RData[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080F0808"
    )
        port map (
      I0 => data13(5),
      I1 => \oAxi_RData[30]_i_3_n_0\,
      I2 => rReadAddr(2),
      I3 => rReadAddr(3),
      I4 => \oAxi_RData[5]_i_4_n_0\,
      O => \oAxi_RData[5]_i_3_n_0\
    );
\oAxi_RData[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC00F0AA0000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \rAesChannelStatus_reg_n_0_[5]\,
      I2 => data15(5),
      I3 => rReadAddr(6),
      I4 => rReadAddr(5),
      I5 => rReadAddr(4),
      O => \oAxi_RData[5]_i_4_n_0\
    );
\oAxi_RData[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA800000"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[30]_i_3_n_0\,
      I2 => data14(6),
      I3 => \oAxi_RData[6]_i_2_n_0\,
      I4 => rReadAddr(2),
      I5 => \oAxi_RData[6]_i_3_n_0\,
      O => \oAxi_RData[6]_i_1_n_0\
    );
\oAxi_RData[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(6),
      I1 => data16(6),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[6]_i_2_n_0\
    );
\oAxi_RData[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080F0808"
    )
        port map (
      I0 => data13(6),
      I1 => \oAxi_RData[30]_i_3_n_0\,
      I2 => rReadAddr(2),
      I3 => rReadAddr(3),
      I4 => \oAxi_RData[6]_i_4_n_0\,
      O => \oAxi_RData[6]_i_3_n_0\
    );
\oAxi_RData[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC00F0AA0000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \rAesChannelStatus_reg_n_0_[6]\,
      I2 => data15(6),
      I3 => rReadAddr(6),
      I4 => rReadAddr(5),
      I5 => rReadAddr(4),
      O => \oAxi_RData[6]_i_4_n_0\
    );
\oAxi_RData[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA800000"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[30]_i_3_n_0\,
      I2 => data14(7),
      I3 => \oAxi_RData[7]_i_2_n_0\,
      I4 => rReadAddr(2),
      I5 => \oAxi_RData[7]_i_3_n_0\,
      O => \oAxi_RData[7]_i_1_n_0\
    );
\oAxi_RData[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(7),
      I1 => data16(7),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[7]_i_2_n_0\
    );
\oAxi_RData[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080F0808"
    )
        port map (
      I0 => data13(7),
      I1 => \oAxi_RData[30]_i_3_n_0\,
      I2 => rReadAddr(2),
      I3 => rReadAddr(3),
      I4 => \oAxi_RData[7]_i_4_n_0\,
      O => \oAxi_RData[7]_i_3_n_0\
    );
\oAxi_RData[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC00F0AA0000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \rAesChannelStatus_reg_n_0_[7]\,
      I2 => data15(7),
      I3 => rReadAddr(6),
      I4 => rReadAddr(5),
      I5 => rReadAddr(4),
      O => \oAxi_RData[7]_i_4_n_0\
    );
\oAxi_RData[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA0000FF000000"
    )
        port map (
      I0 => \oAxi_RData[8]_i_2_n_0\,
      I1 => data14(8),
      I2 => \oAxi_RData[30]_i_3_n_0\,
      I3 => \oAxi_RData[8]_i_3_n_0\,
      I4 => \oAxi_RData[31]_i_3_n_0\,
      I5 => rReadAddr(2),
      O => \oAxi_RData[8]_i_1_n_0\
    );
\oAxi_RData[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AC00000"
    )
        port map (
      I0 => data12(8),
      I1 => data16(8),
      I2 => rReadAddr(5),
      I3 => rReadAddr(4),
      I4 => rReadAddr(6),
      I5 => rReadAddr(3),
      O => \oAxi_RData[8]_i_2_n_0\
    );
\oAxi_RData[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \oAxi_RData[30]_i_5_n_0\,
      I1 => data15(8),
      I2 => \oAxi_RData[30]_i_6_n_0\,
      I3 => \rAesChannelStatus_reg_n_0_[8]\,
      I4 => data13(8),
      I5 => \oAxi_RData[30]_i_3_n_0\,
      O => \oAxi_RData[8]_i_3_n_0\
    );
\oAxi_RData[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => \oAxi_RData[31]_i_3_n_0\,
      I1 => \oAxi_RData[9]_i_2_n_0\,
      I2 => \oAxi_RData[16]_i_3_n_0\,
      I3 => \oAxi_RData[16]_i_4_n_0\,
      I4 => data13(9),
      I5 => \oAxi_RData[9]_i_3_n_0\,
      O => \oAxi_RData[9]_i_1_n_0\
    );
\oAxi_RData[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => rReadAddr(3),
      I1 => data14(9),
      I2 => rReadAddr(2),
      I3 => rReadAddr(6),
      I4 => rReadAddr(4),
      I5 => rReadAddr(5),
      O => \oAxi_RData[9]_i_2_n_0\
    );
\oAxi_RData[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFB080"
    )
        port map (
      I0 => data16(9),
      I1 => rReadAddr(2),
      I2 => \oAxi_RData[16]_i_6_n_0\,
      I3 => data15(9),
      I4 => \oAxi_RData[9]_i_4_n_0\,
      I5 => rReadAddr(3),
      O => \oAxi_RData[9]_i_3_n_0\
    );
\oAxi_RData[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B00C800C"
    )
        port map (
      I0 => data12(9),
      I1 => rReadAddr(2),
      I2 => rReadAddr(6),
      I3 => rReadAddr(4),
      I4 => \rAesChannelStatus_reg_n_0_[9]\,
      I5 => rReadAddr(5),
      O => \oAxi_RData[9]_i_4_n_0\
    );
\oAxi_RData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[0]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(0),
      R => \^sr\(0)
    );
\oAxi_RData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[10]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(10),
      R => \^sr\(0)
    );
\oAxi_RData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[11]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(11),
      R => \^sr\(0)
    );
\oAxi_RData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[12]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(12),
      R => \^sr\(0)
    );
\oAxi_RData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[13]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(13),
      R => \^sr\(0)
    );
\oAxi_RData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[14]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(14),
      R => \^sr\(0)
    );
\oAxi_RData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[15]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(15),
      R => \^sr\(0)
    );
\oAxi_RData_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[16]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(16),
      R => \^sr\(0)
    );
\oAxi_RData_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[17]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(17),
      R => \^sr\(0)
    );
\oAxi_RData_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[18]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(18),
      R => \^sr\(0)
    );
\oAxi_RData_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[19]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(19),
      R => \^sr\(0)
    );
\oAxi_RData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[1]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(1),
      R => \^sr\(0)
    );
\oAxi_RData_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[20]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(20),
      R => \^sr\(0)
    );
\oAxi_RData_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[21]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(21),
      R => \^sr\(0)
    );
\oAxi_RData_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[22]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(22),
      R => \^sr\(0)
    );
\oAxi_RData_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[23]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(23),
      R => \^sr\(0)
    );
\oAxi_RData_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[24]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(24),
      R => \^sr\(0)
    );
\oAxi_RData_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[25]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(25),
      R => \^sr\(0)
    );
\oAxi_RData_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[26]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(26),
      R => \^sr\(0)
    );
\oAxi_RData_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[27]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(27),
      R => \^sr\(0)
    );
\oAxi_RData_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[28]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(28),
      R => \^sr\(0)
    );
\oAxi_RData_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[29]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(29),
      R => \^sr\(0)
    );
\oAxi_RData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[2]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(2),
      R => \^sr\(0)
    );
\oAxi_RData_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[30]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(30),
      R => \^sr\(0)
    );
\oAxi_RData_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[31]_i_2_n_0\,
      Q => s_axi_ctrl_rdata(31),
      R => \^sr\(0)
    );
\oAxi_RData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[3]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(3),
      R => \^sr\(0)
    );
\oAxi_RData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[4]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(4),
      R => \^sr\(0)
    );
\oAxi_RData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[5]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(5),
      R => \^sr\(0)
    );
\oAxi_RData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[6]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(6),
      R => \^sr\(0)
    );
\oAxi_RData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[7]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(7),
      R => \^sr\(0)
    );
\oAxi_RData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[8]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(8),
      R => \^sr\(0)
    );
\oAxi_RData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RData[9]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(9),
      R => \^sr\(0)
    );
\oAxi_RResp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => stmRead(2),
      I1 => \rReadAddr_reg_n_0_[7]\,
      I2 => rReadAddr(0),
      I3 => rReadAddr(1),
      I4 => \oAxi_RResp[1]_i_2_n_0\,
      O => \oAxi_RResp[1]_i_1_n_0\
    );
\oAxi_RResp[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF3CC20C"
    )
        port map (
      I0 => rReadAddr(2),
      I1 => rReadAddr(6),
      I2 => rReadAddr(4),
      I3 => rReadAddr(5),
      I4 => rReadAddr(3),
      O => \oAxi_RResp[1]_i_2_n_0\
    );
\oAxi_RResp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \oAxi_RData[31]_i_1_n_0\,
      D => \oAxi_RResp[1]_i_1_n_0\,
      Q => s_axi_ctrl_rresp(0),
      R => \^sr\(0)
    );
oAxi_RValid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5F3F5F0"
    )
        port map (
      I0 => s_axi_ctrl_rready,
      I1 => stmRead(0),
      I2 => stmRead(2),
      I3 => stmRead(3),
      I4 => \^s_axi_ctrl_rvalid\,
      O => oAxi_RValid_i_1_n_0
    );
oAxi_RValid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => oAxi_RValid_i_1_n_0,
      Q => \^s_axi_ctrl_rvalid\,
      R => \^sr\(0)
    );
oAxi_WReady_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF443044"
    )
        port map (
      I0 => s_axi_ctrl_wvalid,
      I1 => stmWrite(1),
      I2 => s_axi_ctrl_awvalid,
      I3 => stmWrite(0),
      I4 => \^oaxi_wready_reg_0\,
      O => oAxi_WReady_i_1_n_0
    );
oAxi_WReady_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => oAxi_WReady_i_1_n_0,
      Q => \^oaxi_wready_reg_0\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(0),
      Q => \rAesChannelStatus_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(100),
      Q => data14(4),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(101),
      Q => data14(5),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(102),
      Q => data14(6),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(103),
      Q => data14(7),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(104),
      Q => data14(8),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(105),
      Q => data14(9),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(106),
      Q => data14(10),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(107),
      Q => data14(11),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(108),
      Q => data14(12),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(109),
      Q => data14(13),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(10),
      Q => \rAesChannelStatus_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(110),
      Q => data14(14),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(111),
      Q => data14(15),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(112),
      Q => data14(16),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(113),
      Q => data14(17),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(114),
      Q => data14(18),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(115),
      Q => data14(19),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(116),
      Q => data14(20),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(117),
      Q => data14(21),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(118),
      Q => data14(22),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(119),
      Q => data14(23),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(11),
      Q => \rAesChannelStatus_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(120),
      Q => data14(24),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(121),
      Q => data14(25),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(122),
      Q => data14(26),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(123),
      Q => data14(27),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(124),
      Q => data14(28),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(125),
      Q => data14(29),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(126),
      Q => data14(30),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(127),
      Q => data14(31),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(128),
      Q => data15(0),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(129),
      Q => data15(1),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(12),
      Q => \rAesChannelStatus_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(130),
      Q => data15(2),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(131),
      Q => data15(3),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(132),
      Q => data15(4),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(133),
      Q => data15(5),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(134),
      Q => data15(6),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(135),
      Q => data15(7),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(136),
      Q => data15(8),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(137),
      Q => data15(9),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(138),
      Q => data15(10),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(139),
      Q => data15(11),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(13),
      Q => \rAesChannelStatus_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(140),
      Q => data15(12),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(141),
      Q => data15(13),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(142),
      Q => data15(14),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(143),
      Q => data15(15),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(144),
      Q => data15(16),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(145),
      Q => data15(17),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(146),
      Q => data15(18),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(147),
      Q => data15(19),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(148),
      Q => data15(20),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(149),
      Q => data15(21),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(14),
      Q => \rAesChannelStatus_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(150),
      Q => data15(22),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(151),
      Q => data15(23),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(152),
      Q => data15(24),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(153),
      Q => data15(25),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(154),
      Q => data15(26),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(155),
      Q => data15(27),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(156),
      Q => data15(28),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(157),
      Q => data15(29),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(158),
      Q => data15(30),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(159),
      Q => data15(31),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(15),
      Q => \rAesChannelStatus_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(160),
      Q => data16(0),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(161),
      Q => data16(1),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(162),
      Q => data16(2),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(163),
      Q => data16(3),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(164),
      Q => data16(4),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(165),
      Q => data16(5),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(166),
      Q => data16(6),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(167),
      Q => data16(7),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(168),
      Q => data16(8),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(169),
      Q => data16(9),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(16),
      Q => \rAesChannelStatus_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(170),
      Q => data16(10),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(171),
      Q => data16(11),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(172),
      Q => data16(12),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(173),
      Q => data16(13),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(174),
      Q => data16(14),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(175),
      Q => data16(15),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(176),
      Q => data16(16),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(177),
      Q => data16(17),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(178),
      Q => data16(18),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(179),
      Q => data16(19),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(17),
      Q => \rAesChannelStatus_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(180),
      Q => data16(20),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(181),
      Q => data16(21),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(182),
      Q => data16(22),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(183),
      Q => data16(23),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(184),
      Q => data16(24),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(185),
      Q => data16(25),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(186),
      Q => data16(26),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(187),
      Q => data16(27),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(188),
      Q => data16(28),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(189),
      Q => data16(29),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(18),
      Q => \rAesChannelStatus_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(190),
      Q => data16(30),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(191),
      Q => data16(31),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(19),
      Q => \rAesChannelStatus_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(1),
      Q => \rAesChannelStatus_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(20),
      Q => \rAesChannelStatus_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(21),
      Q => \rAesChannelStatus_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(22),
      Q => \rAesChannelStatus_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(23),
      Q => \rAesChannelStatus_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(24),
      Q => \rAesChannelStatus_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(25),
      Q => \rAesChannelStatus_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(26),
      Q => \rAesChannelStatus_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(27),
      Q => \rAesChannelStatus_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(28),
      Q => \rAesChannelStatus_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(29),
      Q => \rAesChannelStatus_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(2),
      Q => \rAesChannelStatus_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(30),
      Q => \rAesChannelStatus_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(31),
      Q => \rAesChannelStatus_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(32),
      Q => data12(0),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(33),
      Q => data12(1),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(34),
      Q => data12(2),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(35),
      Q => data12(3),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(36),
      Q => data12(4),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(37),
      Q => data12(5),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(38),
      Q => data12(6),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(39),
      Q => data12(7),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(3),
      Q => \rAesChannelStatus_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(40),
      Q => data12(8),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(41),
      Q => data12(9),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(42),
      Q => data12(10),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(43),
      Q => data12(11),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(44),
      Q => data12(12),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(45),
      Q => data12(13),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(46),
      Q => data12(14),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(47),
      Q => data12(15),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(48),
      Q => data12(16),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(49),
      Q => data12(17),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(4),
      Q => \rAesChannelStatus_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(50),
      Q => data12(18),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(51),
      Q => data12(19),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(52),
      Q => data12(20),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(53),
      Q => data12(21),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(54),
      Q => data12(22),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(55),
      Q => data12(23),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(56),
      Q => data12(24),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(57),
      Q => data12(25),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(58),
      Q => data12(26),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(59),
      Q => data12(27),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(5),
      Q => \rAesChannelStatus_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(60),
      Q => data12(28),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(61),
      Q => data12(29),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(62),
      Q => data12(30),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(63),
      Q => data12(31),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(64),
      Q => data13(0),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(65),
      Q => data13(1),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(66),
      Q => data13(2),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(67),
      Q => data13(3),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(68),
      Q => data13(4),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(69),
      Q => data13(5),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(6),
      Q => \rAesChannelStatus_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(70),
      Q => data13(6),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(71),
      Q => data13(7),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(72),
      Q => data13(8),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(73),
      Q => data13(9),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(74),
      Q => data13(10),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(75),
      Q => data13(11),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(76),
      Q => data13(12),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(77),
      Q => data13(13),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(78),
      Q => data13(14),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(79),
      Q => data13(15),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(7),
      Q => \rAesChannelStatus_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(80),
      Q => data13(16),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(81),
      Q => data13(17),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(82),
      Q => data13(18),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(83),
      Q => data13(19),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(84),
      Q => data13(20),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(85),
      Q => data13(21),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(86),
      Q => data13(22),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(87),
      Q => data13(23),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(88),
      Q => data13(24),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(89),
      Q => data13(25),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(8),
      Q => \rAesChannelStatus_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(90),
      Q => data13(26),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(91),
      Q => data13(27),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(92),
      Q => data13(28),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(93),
      Q => data13(29),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(94),
      Q => data13(30),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(95),
      Q => data13(31),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(96),
      Q => data14(0),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(97),
      Q => data14(1),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(98),
      Q => data14(2),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(99),
      Q => data14(3),
      R => \^sr\(0)
    );
\rAesChannelStatus_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(9),
      Q => \rAesChannelStatus_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\rChannelMux_01[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(0),
      I1 => \rChannelMux_01[2]_i_2_n_0\,
      I2 => \^rchannelmux_01_reg[2]_0\(0),
      O => \rChannelMux_01[0]_i_1_n_0\
    );
\rChannelMux_01[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(1),
      I1 => \rChannelMux_01[2]_i_2_n_0\,
      I2 => \^rchannelmux_01_reg[2]_0\(1),
      O => \rChannelMux_01[1]_i_1_n_0\
    );
\rChannelMux_01[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(2),
      I1 => \rChannelMux_01[2]_i_2_n_0\,
      I2 => \^rchannelmux_01_reg[2]_0\(2),
      O => \rChannelMux_01[2]_i_1_n_0\
    );
\rChannelMux_01[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(5),
      I4 => \oAxi_BResp[1]_i_2_n_0\,
      I5 => \rIrqEnables[31]_i_2_n_0\,
      O => \rChannelMux_01[2]_i_2_n_0\
    );
\rChannelMux_01_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_01[0]_i_1_n_0\,
      Q => \^rchannelmux_01_reg[2]_0\(0),
      S => \^sr\(0)
    );
\rChannelMux_01_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_01[1]_i_1_n_0\,
      Q => \^rchannelmux_01_reg[2]_0\(1),
      R => \^sr\(0)
    );
\rChannelMux_01_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_01[2]_i_1_n_0\,
      Q => \^rchannelmux_01_reg[2]_0\(2),
      R => \^sr\(0)
    );
\rChannelMux_23[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(0),
      I1 => \rChannelMux_23[2]_i_2_n_0\,
      I2 => rChannelMux_23(0),
      O => \rChannelMux_23[0]_i_1_n_0\
    );
\rChannelMux_23[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(1),
      I1 => \rChannelMux_23[2]_i_2_n_0\,
      I2 => rChannelMux_23(1),
      O => \rChannelMux_23[1]_i_1_n_0\
    );
\rChannelMux_23[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(2),
      I1 => \rChannelMux_23[2]_i_2_n_0\,
      I2 => rChannelMux_23(2),
      O => \rChannelMux_23[2]_i_1_n_0\
    );
\rChannelMux_23[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(6),
      I2 => \rIrqEnables[31]_i_2_n_0\,
      I3 => sel0(2),
      I4 => \oAxi_BResp[1]_i_2_n_0\,
      I5 => sel0(5),
      O => \rChannelMux_23[2]_i_2_n_0\
    );
\rChannelMux_23_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_23[0]_i_1_n_0\,
      Q => rChannelMux_23(0),
      R => \^sr\(0)
    );
\rChannelMux_23_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_23[1]_i_1_n_0\,
      Q => rChannelMux_23(1),
      S => \^sr\(0)
    );
\rChannelMux_23_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_23[2]_i_1_n_0\,
      Q => rChannelMux_23(2),
      R => \^sr\(0)
    );
\rChannelMux_45[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(0),
      I1 => \rChannelMux_45[2]_i_2_n_0\,
      I2 => rChannelMux_45(0),
      O => \rChannelMux_45[0]_i_1_n_0\
    );
\rChannelMux_45[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(1),
      I1 => \rChannelMux_45[2]_i_2_n_0\,
      I2 => rChannelMux_45(1),
      O => \rChannelMux_45[1]_i_1_n_0\
    );
\rChannelMux_45[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(2),
      I1 => \rChannelMux_45[2]_i_2_n_0\,
      I2 => rChannelMux_45(2),
      O => \rChannelMux_45[2]_i_1_n_0\
    );
\rChannelMux_45[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => sel0(5),
      I1 => \oAxi_BResp[1]_i_2_n_0\,
      I2 => sel0(6),
      I3 => sel0(3),
      I4 => sel0(2),
      I5 => \rIrqEnables[31]_i_2_n_0\,
      O => \rChannelMux_45[2]_i_2_n_0\
    );
\rChannelMux_45_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_45[0]_i_1_n_0\,
      Q => rChannelMux_45(0),
      S => \^sr\(0)
    );
\rChannelMux_45_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_45[1]_i_1_n_0\,
      Q => rChannelMux_45(1),
      S => \^sr\(0)
    );
\rChannelMux_45_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_45[2]_i_1_n_0\,
      Q => rChannelMux_45(2),
      R => \^sr\(0)
    );
\rChannelMux_67[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(0),
      I1 => \rChannelMux_67[2]_i_2_n_0\,
      I2 => rChannelMux_67(0),
      O => \rChannelMux_67[0]_i_1_n_0\
    );
\rChannelMux_67[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(1),
      I1 => \rChannelMux_67[2]_i_2_n_0\,
      I2 => rChannelMux_67(1),
      O => \rChannelMux_67[1]_i_1_n_0\
    );
\rChannelMux_67[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(2),
      I1 => \rChannelMux_67[2]_i_2_n_0\,
      I2 => rChannelMux_67(2),
      O => \rChannelMux_67[2]_i_1_n_0\
    );
\rChannelMux_67[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(6),
      I2 => sel0(5),
      I3 => \oAxi_BResp[1]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \rIrqEnables[31]_i_2_n_0\,
      O => \rChannelMux_67[2]_i_2_n_0\
    );
\rChannelMux_67_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_67[0]_i_1_n_0\,
      Q => rChannelMux_67(0),
      R => \^sr\(0)
    );
\rChannelMux_67_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_67[1]_i_1_n_0\,
      Q => rChannelMux_67(1),
      R => \^sr\(0)
    );
\rChannelMux_67_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rChannelMux_67[2]_i_1_n_0\,
      Q => rChannelMux_67(2),
      S => \^sr\(0)
    );
rClearAesChannelStatus_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F000F0"
    )
        port map (
      I0 => \^oaxi_wready_reg_0\,
      I1 => s_axi_ctrl_wvalid,
      I2 => \^src_pulse\,
      I3 => s_axi_ctrl_aresetn,
      I4 => rClearAesChannelStatus_i_2_n_0,
      O => rClearAesChannelStatus_i_1_n_0
    );
rClearAesChannelStatus_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000C00"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => rClearAesChannelStatus_i_3_n_0,
      I3 => sel0(6),
      I4 => sel0(5),
      O => rClearAesChannelStatus_i_2_n_0
    );
rClearAesChannelStatus_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rWriteAddr_reg_n_0_[7]\,
      I1 => sel0(1),
      I2 => sel0(0),
      O => rClearAesChannelStatus_i_3_n_0
    );
rClearAesChannelStatus_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => rClearAesChannelStatus_i_1_n_0,
      Q => \^src_pulse\,
      R => '0'
    );
\rClearIrqs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(2),
      I2 => \rIrqEnables[31]_i_2_n_0\,
      I3 => sel0(6),
      I4 => sel0(3),
      I5 => s_axi_ctrl_wdata(0),
      O => \rClearIrqs[0]_i_1_n_0\
    );
\rClearIrqs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(2),
      I2 => \rIrqEnables[31]_i_2_n_0\,
      I3 => sel0(6),
      I4 => sel0(3),
      I5 => s_axi_ctrl_wdata(1),
      O => \rClearIrqs[1]_i_1_n_0\
    );
\rClearIrqs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(2),
      I2 => \rIrqEnables[31]_i_2_n_0\,
      I3 => sel0(6),
      I4 => sel0(3),
      I5 => s_axi_ctrl_wdata(2),
      O => \rClearIrqs[2]_i_1_n_0\
    );
\rClearIrqs[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axi_ctrl_aresetn,
      I1 => \^oaxi_wready_reg_0\,
      I2 => s_axi_ctrl_wvalid,
      O => rClearIrqs
    );
\rClearIrqs[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(2),
      I2 => \rIrqEnables[31]_i_2_n_0\,
      I3 => sel0(6),
      I4 => sel0(3),
      I5 => s_axi_ctrl_wdata(3),
      O => \rClearIrqs[3]_i_2_n_0\
    );
\rClearIrqs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => s_axi_ctrl_aresetn,
      D => \rClearIrqs[0]_i_1_n_0\,
      Q => \rClearIrqs_reg_n_0_[0]\,
      R => rClearIrqs
    );
\rClearIrqs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => s_axi_ctrl_aresetn,
      D => \rClearIrqs[1]_i_1_n_0\,
      Q => \rClearIrqs_reg_n_0_[1]\,
      R => rClearIrqs
    );
\rClearIrqs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => s_axi_ctrl_aresetn,
      D => \rClearIrqs[2]_i_1_n_0\,
      Q => \rClearIrqs_reg_n_0_[2]\,
      R => rClearIrqs
    );
\rClearIrqs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => s_axi_ctrl_aresetn,
      D => \rClearIrqs[3]_i_2_n_0\,
      Q => \rClearIrqs_reg_n_0_[3]\,
      R => rClearIrqs
    );
rEnable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(0),
      I1 => rEnable_i_2_n_0,
      I2 => \^src_in\,
      O => rEnable_i_1_n_0
    );
rEnable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(6),
      I2 => sel0(5),
      I3 => sel0(2),
      I4 => \oAxi_BResp[1]_i_2_n_0\,
      I5 => \rSclkDiv[7]_i_2_n_0\,
      O => rEnable_i_2_n_0
    );
rEnable_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => rEnable_i_1_n_0,
      Q => \^src_in\,
      R => \^sr\(0)
    );
\rIrqEnables[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => \oAxi_BResp[1]_i_2_n_0\,
      I4 => sel0(5),
      I5 => \rIrqEnables[31]_i_2_n_0\,
      O => \rIrqEnables[31]_i_1_n_0\
    );
\rIrqEnables[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \rWriteAddr_reg_n_0_[7]\,
      O => \rIrqEnables[31]_i_2_n_0\
    );
\rIrqEnables_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rIrqEnables[31]_i_1_n_0\,
      D => s_axi_ctrl_wdata(0),
      Q => \rIrqEnables_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\rIrqEnables_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rIrqEnables[31]_i_1_n_0\,
      D => s_axi_ctrl_wdata(1),
      Q => \rIrqEnables_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\rIrqEnables_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rIrqEnables[31]_i_1_n_0\,
      D => s_axi_ctrl_wdata(2),
      Q => \rIrqEnables_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\rIrqEnables_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rIrqEnables[31]_i_1_n_0\,
      D => s_axi_ctrl_wdata(8),
      Q => \rIrqEnables_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\rIrqEnables_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rIrqEnables[31]_i_1_n_0\,
      D => s_axi_ctrl_wdata(3),
      Q => \rIrqEnables_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\rIrqStatus[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => dest_pulse,
      I1 => \rClearIrqs_reg_n_0_[0]\,
      I2 => \rIrqStatus_reg_n_0_[0]\,
      O => \rIrqStatus[0]_i_1_n_0\
    );
\rIrqStatus[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rIrqStatus_reg[1]_0\,
      I1 => \rClearIrqs_reg_n_0_[1]\,
      I2 => p_5_in,
      O => \rIrqStatus[1]_i_1_n_0\
    );
\rIrqStatus[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => E(0),
      I1 => \rClearIrqs_reg_n_0_[2]\,
      I2 => \rIrqStatus_reg_n_0_[2]\,
      O => \rIrqStatus[2]_i_1_n_0\
    );
\rIrqStatus[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rIrqStatus_reg[3]_0\,
      I1 => \rClearIrqs_reg_n_0_[3]\,
      I2 => \rIrqStatus_reg_n_0_[3]\,
      O => \rIrqStatus[3]_i_1_n_0\
    );
\rIrqStatus_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rIrqStatus[0]_i_1_n_0\,
      Q => \rIrqStatus_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\rIrqStatus_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rIrqStatus[1]_i_1_n_0\,
      Q => p_5_in,
      R => \^sr\(0)
    );
\rIrqStatus_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rIrqStatus[2]_i_1_n_0\,
      Q => \rIrqStatus_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\rIrqStatus_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \rIrqStatus[3]_i_1_n_0\,
      Q => \rIrqStatus_reg_n_0_[3]\,
      R => \^sr\(0)
    );
rIrq_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => rIrq_i_2_n_0,
      I1 => rIrq_i_3_n_0,
      I2 => \rIrqEnables_reg_n_0_[31]\,
      I3 => \^irq\,
      O => rIrq_i_1_n_0
    );
rIrq_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rIrqEnables_reg_n_0_[1]\,
      I1 => p_5_in,
      I2 => \rIrqEnables_reg_n_0_[2]\,
      I3 => \rIrqStatus_reg_n_0_[2]\,
      O => rIrq_i_2_n_0
    );
rIrq_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rIrqEnables_reg_n_0_[3]\,
      I1 => \rIrqStatus_reg_n_0_[3]\,
      I2 => \rIrqEnables_reg_n_0_[0]\,
      I3 => \rIrqStatus_reg_n_0_[0]\,
      O => rIrq_i_3_n_0
    );
rIrq_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => rIrq_i_1_n_0,
      Q => \^irq\,
      R => \^sr\(0)
    );
rJustify_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(1),
      I1 => rEnable_i_2_n_0,
      I2 => \^rjustify_reg_0\,
      O => rJustify_i_1_n_0
    );
rJustify_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => rJustify_i_1_n_0,
      Q => \^rjustify_reg_0\,
      R => \^sr\(0)
    );
rLeft_Right_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_wdata(2),
      I1 => rEnable_i_2_n_0,
      I2 => \^rleft_right_reg_0\,
      O => rLeft_Right_i_1_n_0
    );
rLeft_Right_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => rLeft_Right_i_1_n_0,
      Q => \^rleft_right_reg_0\,
      R => \^sr\(0)
    );
\rReadAddr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => s_axi_ctrl_araddr(0),
      O => \rReadAddr[0]_i_1_n_0\
    );
\rReadAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => s_axi_ctrl_araddr(1),
      O => \rReadAddr[1]_i_1_n_0\
    );
\rReadAddr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => s_axi_ctrl_araddr(2),
      O => \rReadAddr[2]_i_1_n_0\
    );
\rReadAddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => s_axi_ctrl_araddr(3),
      O => \rReadAddr[3]_i_1_n_0\
    );
\rReadAddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => s_axi_ctrl_araddr(4),
      O => \rReadAddr[4]_i_1_n_0\
    );
\rReadAddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => s_axi_ctrl_araddr(5),
      O => \rReadAddr[5]_i_1_n_0\
    );
\rReadAddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => s_axi_ctrl_araddr(6),
      O => \rReadAddr[6]_i_1_n_0\
    );
\rReadAddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_ctrl_arvalid,
      I1 => stmRead(1),
      I2 => stmRead(0),
      O => \rReadAddr[7]_i_1_n_0\
    );
\rReadAddr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stmRead(1),
      I1 => s_axi_ctrl_araddr(7),
      O => \rReadAddr[7]_i_2_n_0\
    );
\rReadAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      D => \rReadAddr[0]_i_1_n_0\,
      Q => rReadAddr(0),
      R => \^sr\(0)
    );
\rReadAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      D => \rReadAddr[1]_i_1_n_0\,
      Q => rReadAddr(1),
      R => \^sr\(0)
    );
\rReadAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      D => \rReadAddr[2]_i_1_n_0\,
      Q => rReadAddr(2),
      R => \^sr\(0)
    );
\rReadAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      D => \rReadAddr[3]_i_1_n_0\,
      Q => rReadAddr(3),
      R => \^sr\(0)
    );
\rReadAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      D => \rReadAddr[4]_i_1_n_0\,
      Q => rReadAddr(4),
      R => \^sr\(0)
    );
\rReadAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      D => \rReadAddr[5]_i_1_n_0\,
      Q => rReadAddr(5),
      R => \^sr\(0)
    );
\rReadAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      D => \rReadAddr[6]_i_1_n_0\,
      Q => rReadAddr(6),
      R => \^sr\(0)
    );
\rReadAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rReadAddr[7]_i_1_n_0\,
      D => \rReadAddr[7]_i_2_n_0\,
      Q => \rReadAddr_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\rSclkDiv[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => sel0(5),
      I4 => \oAxi_BResp[1]_i_2_n_0\,
      I5 => \rSclkDiv[7]_i_2_n_0\,
      O => \rSclkDiv[7]_i_1_n_0\
    );
\rSclkDiv[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => \rWriteAddr_reg_n_0_[7]\,
      I3 => sel0(4),
      O => \rSclkDiv[7]_i_2_n_0\
    );
\rSclkDiv_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rSclkDiv[7]_i_1_n_0\,
      D => s_axi_ctrl_wdata(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\rSclkDiv_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rSclkDiv[7]_i_1_n_0\,
      D => s_axi_ctrl_wdata(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\rSclkDiv_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rSclkDiv[7]_i_1_n_0\,
      D => s_axi_ctrl_wdata(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\rSclkDiv_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rSclkDiv[7]_i_1_n_0\,
      D => s_axi_ctrl_wdata(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\rSclkDiv_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rSclkDiv[7]_i_1_n_0\,
      D => s_axi_ctrl_wdata(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\rSclkDiv_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rSclkDiv[7]_i_1_n_0\,
      D => s_axi_ctrl_wdata(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\rSclkDiv_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rSclkDiv[7]_i_1_n_0\,
      D => s_axi_ctrl_wdata(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\rSclkDiv_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => \rSclkDiv[7]_i_1_n_0\,
      D => s_axi_ctrl_wdata(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
rValidity_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_ctrl_wdata(0),
      I1 => rValidity_i_2_n_0,
      I2 => \rSclkDiv[7]_i_2_n_0\,
      I3 => \^rvalidity_reg_0\,
      O => rValidity_i_1_n_0
    );
rValidity_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \^oaxi_wready_reg_0\,
      I1 => s_axi_ctrl_wvalid,
      I2 => sel0(2),
      I3 => sel0(5),
      I4 => sel0(6),
      I5 => sel0(3),
      O => rValidity_i_2_n_0
    );
rValidity_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => rValidity_i_1_n_0,
      Q => \^rvalidity_reg_0\,
      R => \^sr\(0)
    );
\rWriteAddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => stmWrite(0),
      I1 => s_axi_ctrl_awvalid,
      I2 => stmWrite(1),
      O => rWriteAddr
    );
\rWriteAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => rWriteAddr,
      D => s_axi_ctrl_awaddr(0),
      Q => sel0(0),
      R => \^sr\(0)
    );
\rWriteAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => rWriteAddr,
      D => s_axi_ctrl_awaddr(1),
      Q => sel0(1),
      R => \^sr\(0)
    );
\rWriteAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => rWriteAddr,
      D => s_axi_ctrl_awaddr(2),
      Q => sel0(2),
      R => \^sr\(0)
    );
\rWriteAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => rWriteAddr,
      D => s_axi_ctrl_awaddr(3),
      Q => sel0(3),
      R => \^sr\(0)
    );
\rWriteAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => rWriteAddr,
      D => s_axi_ctrl_awaddr(4),
      Q => sel0(4),
      R => \^sr\(0)
    );
\rWriteAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => rWriteAddr,
      D => s_axi_ctrl_awaddr(5),
      Q => sel0(5),
      R => \^sr\(0)
    );
\rWriteAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => rWriteAddr,
      D => s_axi_ctrl_awaddr(6),
      Q => sel0(6),
      R => \^sr\(0)
    );
\rWriteAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => rWriteAddr,
      D => s_axi_ctrl_awaddr(7),
      Q => \rWriteAddr_reg_n_0_[7]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_ser is
  port (
    iMRst0 : out STD_LOGIC;
    rSClkDelayed_reg_0 : out STD_LOGIC;
    \genblk2[0].mclk_rAudValid_reg[0]\ : out STD_LOGIC;
    mclk_nAudCapt_0 : out STD_LOGIC;
    \FSM_sequential_stmAudChCtrl_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_stmAudChCtrl_reg[0]\ : out STD_LOGIC;
    sdata_0_out : out STD_LOGIC;
    sclk_in : in STD_LOGIC;
    aud_mclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \rSDataOut_reg[0]_0\ : in STD_LOGIC;
    aud_mrst : in STD_LOGIC;
    dest_out : in STD_LOGIC;
    \stmAudChCtrl__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mclk_rAudioUnderflow_reg : in STD_LOGIC;
    mclk_rAudioUnderflowInhib_reg : in STD_LOGIC;
    mclk_rReadCh0_reg : in STD_LOGIC;
    \mclk_rWaveGenCounter_reg[0]\ : in STD_LOGIC;
    \rSDataOut_reg[23]_0\ : in STD_LOGIC;
    iAudData : in STD_LOGIC_VECTOR ( 47 downto 0 );
    lrclk_in : in STD_LOGIC;
    mclk_rReadCh0_reg_0 : in STD_LOGIC;
    mclk_rReadFIFOInitDone : in STD_LOGIC;
    data_valid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_ser;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_ser is
  signal \^imrst0\ : STD_LOGIC;
  signal mclk_rReadCh0_i_2_n_0 : STD_LOGIC;
  signal mclk_rReadCh0_i_4_n_0 : STD_LOGIC;
  signal rLRClkDelayed : STD_LOGIC;
  signal rLRClkDelayed_i_1_n_0 : STD_LOGIC;
  signal rLRClkIn_i_1_n_0 : STD_LOGIC;
  signal rLRClkIn_reg_n_0 : STD_LOGIC;
  signal rSClkDelayed : STD_LOGIC;
  signal \^rsclkdelayed_reg_0\ : STD_LOGIC;
  signal rSDataOut : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \rSDataOut[0]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[10]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[10]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[11]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[11]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[12]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[12]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[13]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[13]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[14]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[14]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[15]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[15]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[16]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[16]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[16]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[17]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[17]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[17]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[18]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[18]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[18]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[19]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[19]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[19]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[1]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[20]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[20]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[20]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[21]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[21]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[21]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[22]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[22]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[22]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[23]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[23]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[23]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[24]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[25]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[26]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[27]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[28]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[29]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[2]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[30]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[31]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[31]_i_3_n_0\ : STD_LOGIC;
  signal \rSDataOut[31]_i_4_n_0\ : STD_LOGIC;
  signal \rSDataOut[3]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[4]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[5]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[6]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[7]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[8]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[8]_i_2_n_0\ : STD_LOGIC;
  signal \rSDataOut[9]_i_1_n_0\ : STD_LOGIC;
  signal \rSDataOut[9]_i_2_n_0\ : STD_LOGIC;
  signal rSDataOut_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stmAudChCtrl[0]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of mclk_rReadCh0_i_2 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of mclk_rReadCh0_i_4 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \mclk_rWaveGenCounter[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rSDataOut[20]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rSDataOut[31]_i_4\ : label is "soft_lutpair68";
begin
  iMRst0 <= \^imrst0\;
  rSClkDelayed_reg_0 <= \^rsclkdelayed_reg_0\;
\FSM_sequential_stmAudChCtrl[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFDFF"
    )
        port map (
      I0 => rSClkDelayed,
      I1 => sclk_in,
      I2 => rLRClkDelayed,
      I3 => rLRClkIn_reg_n_0,
      I4 => \mclk_rWaveGenCounter_reg[0]\,
      O => \^rsclkdelayed_reg_0\
    );
\FSM_sequential_stmAudChCtrl[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => aud_mrst,
      I1 => dest_out,
      O => \^imrst0\
    );
mclk_rAudioUnderflowInhib_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF03"
    )
        port map (
      I0 => \^rsclkdelayed_reg_0\,
      I1 => \stmAudChCtrl__0\(0),
      I2 => \stmAudChCtrl__0\(1),
      I3 => mclk_rAudioUnderflowInhib_reg,
      O => \FSM_sequential_stmAudChCtrl_reg[0]\
    );
mclk_rAudioUnderflow_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000004C"
    )
        port map (
      I0 => \rSDataOut_reg[0]_0\,
      I1 => mclk_rAudioUnderflow_reg,
      I2 => p_1_in,
      I3 => mclk_rAudioUnderflowInhib_reg,
      I4 => \^rsclkdelayed_reg_0\,
      O => \genblk2[0].mclk_rAudValid_reg[0]\
    );
mclk_rReadCh0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2F0AAAAA2F0A2F0"
    )
        port map (
      I0 => mclk_rReadCh0_i_2_n_0,
      I1 => \stmAudChCtrl__0\(1),
      I2 => mclk_rReadCh0_reg_0,
      I3 => mclk_rReadFIFOInitDone,
      I4 => data_valid,
      I5 => mclk_rReadCh0_i_4_n_0,
      O => \FSM_sequential_stmAudChCtrl_reg[1]\
    );
mclk_rReadCh0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C00"
    )
        port map (
      I0 => \^rsclkdelayed_reg_0\,
      I1 => mclk_rReadCh0_reg,
      I2 => \stmAudChCtrl__0\(0),
      I3 => \stmAudChCtrl__0\(1),
      O => mclk_rReadCh0_i_2_n_0
    );
mclk_rReadCh0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \stmAudChCtrl__0\(1),
      I1 => \stmAudChCtrl__0\(0),
      I2 => \^rsclkdelayed_reg_0\,
      O => mclk_rReadCh0_i_4_n_0
    );
\mclk_rWaveGenCounter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00240000"
    )
        port map (
      I0 => \mclk_rWaveGenCounter_reg[0]\,
      I1 => rLRClkIn_reg_n_0,
      I2 => rLRClkDelayed,
      I3 => sclk_in,
      I4 => rSClkDelayed,
      O => mclk_nAudCapt_0
    );
rLRClkDelayed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rLRClkIn_reg_n_0,
      I1 => sclk_in,
      I2 => rSClkDelayed,
      I3 => rLRClkDelayed,
      O => rLRClkDelayed_i_1_n_0
    );
rLRClkDelayed_reg: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => rLRClkDelayed_i_1_n_0,
      Q => rLRClkDelayed,
      R => \^imrst0\
    );
rLRClkIn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => lrclk_in,
      I1 => rSClkDelayed,
      I2 => sclk_in,
      I3 => dest_out,
      I4 => aud_mrst,
      I5 => rLRClkIn_reg_n_0,
      O => rLRClkIn_i_1_n_0
    );
rLRClkIn_reg: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => rLRClkIn_i_1_n_0,
      Q => rLRClkIn_reg_n_0,
      R => '0'
    );
rSClkDelayed_reg: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => sclk_in,
      Q => rSClkDelayed,
      R => '0'
    );
\rSDataOut[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088888080000080"
    )
        port map (
      I0 => \rSDataOut[31]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => iAudData(0),
      I3 => lrclk_in,
      I4 => \mclk_rWaveGenCounter_reg[0]\,
      I5 => iAudData(24),
      O => \rSDataOut[0]_i_1_n_0\
    );
\rSDataOut[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[18]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[10]_i_2_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(9),
      O => \rSDataOut[10]_i_1_n_0\
    );
\rSDataOut[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(26),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(2),
      O => \rSDataOut[10]_i_2_n_0\
    );
\rSDataOut[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[19]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[11]_i_2_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(10),
      O => \rSDataOut[11]_i_1_n_0\
    );
\rSDataOut[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(27),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(3),
      O => \rSDataOut[11]_i_2_n_0\
    );
\rSDataOut[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[20]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[12]_i_2_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(11),
      O => \rSDataOut[12]_i_1_n_0\
    );
\rSDataOut[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(28),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(4),
      O => \rSDataOut[12]_i_2_n_0\
    );
\rSDataOut[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[21]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[13]_i_2_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(12),
      O => \rSDataOut[13]_i_1_n_0\
    );
\rSDataOut[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(29),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(5),
      O => \rSDataOut[13]_i_2_n_0\
    );
\rSDataOut[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[22]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[14]_i_2_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(13),
      O => \rSDataOut[14]_i_1_n_0\
    );
\rSDataOut[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(30),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(6),
      O => \rSDataOut[14]_i_2_n_0\
    );
\rSDataOut[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[23]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[15]_i_2_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(14),
      O => \rSDataOut[15]_i_1_n_0\
    );
\rSDataOut[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(31),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(7),
      O => \rSDataOut[15]_i_2_n_0\
    );
\rSDataOut[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[16]_i_2_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[16]_i_3_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(15),
      O => \rSDataOut[16]_i_1_n_0\
    );
\rSDataOut[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(40),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(16),
      O => \rSDataOut[16]_i_2_n_0\
    );
\rSDataOut[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(32),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(8),
      O => \rSDataOut[16]_i_3_n_0\
    );
\rSDataOut[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[17]_i_2_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[17]_i_3_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(16),
      O => \rSDataOut[17]_i_1_n_0\
    );
\rSDataOut[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(41),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(17),
      O => \rSDataOut[17]_i_2_n_0\
    );
\rSDataOut[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(33),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(9),
      O => \rSDataOut[17]_i_3_n_0\
    );
\rSDataOut[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[18]_i_2_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[18]_i_3_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(17),
      O => \rSDataOut[18]_i_1_n_0\
    );
\rSDataOut[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(42),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(18),
      O => \rSDataOut[18]_i_2_n_0\
    );
\rSDataOut[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(34),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(10),
      O => \rSDataOut[18]_i_3_n_0\
    );
\rSDataOut[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[19]_i_2_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[19]_i_3_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(18),
      O => \rSDataOut[19]_i_1_n_0\
    );
\rSDataOut[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(43),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(19),
      O => \rSDataOut[19]_i_2_n_0\
    );
\rSDataOut[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(35),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(11),
      O => \rSDataOut[19]_i_3_n_0\
    );
\rSDataOut[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC00000AAAAAAAA"
    )
        port map (
      I0 => rSDataOut(0),
      I1 => iAudData(25),
      I2 => \rSDataOut[31]_i_4_n_0\,
      I3 => iAudData(1),
      I4 => \rSDataOut_reg[23]_0\,
      I5 => \rSDataOut[31]_i_3_n_0\,
      O => \rSDataOut[1]_i_1_n_0\
    );
\rSDataOut[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[20]_i_2_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[20]_i_3_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(19),
      O => \rSDataOut[20]_i_1_n_0\
    );
\rSDataOut[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(44),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(20),
      O => \rSDataOut[20]_i_2_n_0\
    );
\rSDataOut[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(36),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(12),
      O => \rSDataOut[20]_i_3_n_0\
    );
\rSDataOut[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[21]_i_2_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[21]_i_3_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(20),
      O => \rSDataOut[21]_i_1_n_0\
    );
\rSDataOut[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(45),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(21),
      O => \rSDataOut[21]_i_2_n_0\
    );
\rSDataOut[21]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(37),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(13),
      O => \rSDataOut[21]_i_3_n_0\
    );
\rSDataOut[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[22]_i_2_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[22]_i_3_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(21),
      O => \rSDataOut[22]_i_1_n_0\
    );
\rSDataOut[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(46),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(22),
      O => \rSDataOut[22]_i_2_n_0\
    );
\rSDataOut[22]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(38),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(14),
      O => \rSDataOut[22]_i_3_n_0\
    );
\rSDataOut[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[23]_i_2_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[23]_i_3_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(22),
      O => \rSDataOut[23]_i_1_n_0\
    );
\rSDataOut[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(47),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(23),
      O => \rSDataOut[23]_i_2_n_0\
    );
\rSDataOut[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(39),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(15),
      O => \rSDataOut[23]_i_3_n_0\
    );
\rSDataOut[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00B8B8FF00"
    )
        port map (
      I0 => iAudData(40),
      I1 => \rSDataOut[31]_i_4_n_0\,
      I2 => iAudData(16),
      I3 => rSDataOut(23),
      I4 => \rSDataOut[31]_i_3_n_0\,
      I5 => \rSDataOut_reg[23]_0\,
      O => \rSDataOut[24]_i_1_n_0\
    );
\rSDataOut[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00B8B8FF00"
    )
        port map (
      I0 => iAudData(41),
      I1 => \rSDataOut[31]_i_4_n_0\,
      I2 => iAudData(17),
      I3 => rSDataOut(24),
      I4 => \rSDataOut[31]_i_3_n_0\,
      I5 => \rSDataOut_reg[23]_0\,
      O => \rSDataOut[25]_i_1_n_0\
    );
\rSDataOut[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00B8B8FF00"
    )
        port map (
      I0 => iAudData(42),
      I1 => \rSDataOut[31]_i_4_n_0\,
      I2 => iAudData(18),
      I3 => rSDataOut(25),
      I4 => \rSDataOut[31]_i_3_n_0\,
      I5 => \rSDataOut_reg[23]_0\,
      O => \rSDataOut[26]_i_1_n_0\
    );
\rSDataOut[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00B8B8FF00"
    )
        port map (
      I0 => iAudData(43),
      I1 => \rSDataOut[31]_i_4_n_0\,
      I2 => iAudData(19),
      I3 => rSDataOut(26),
      I4 => \rSDataOut[31]_i_3_n_0\,
      I5 => \rSDataOut_reg[23]_0\,
      O => \rSDataOut[27]_i_1_n_0\
    );
\rSDataOut[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00B8B8FF00"
    )
        port map (
      I0 => iAudData(44),
      I1 => \rSDataOut[31]_i_4_n_0\,
      I2 => iAudData(20),
      I3 => rSDataOut(27),
      I4 => \rSDataOut[31]_i_3_n_0\,
      I5 => \rSDataOut_reg[23]_0\,
      O => \rSDataOut[28]_i_1_n_0\
    );
\rSDataOut[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00B8B8FF00"
    )
        port map (
      I0 => iAudData(45),
      I1 => \rSDataOut[31]_i_4_n_0\,
      I2 => iAudData(21),
      I3 => rSDataOut(28),
      I4 => \rSDataOut[31]_i_3_n_0\,
      I5 => \rSDataOut_reg[23]_0\,
      O => \rSDataOut[29]_i_1_n_0\
    );
\rSDataOut[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC00000AAAAAAAA"
    )
        port map (
      I0 => rSDataOut(1),
      I1 => iAudData(26),
      I2 => \rSDataOut[31]_i_4_n_0\,
      I3 => iAudData(2),
      I4 => \rSDataOut_reg[23]_0\,
      I5 => \rSDataOut[31]_i_3_n_0\,
      O => \rSDataOut[2]_i_1_n_0\
    );
\rSDataOut[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00B8B8FF00"
    )
        port map (
      I0 => iAudData(46),
      I1 => \rSDataOut[31]_i_4_n_0\,
      I2 => iAudData(22),
      I3 => rSDataOut(29),
      I4 => \rSDataOut[31]_i_3_n_0\,
      I5 => \rSDataOut_reg[23]_0\,
      O => \rSDataOut[30]_i_1_n_0\
    );
\rSDataOut[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000D50000"
    )
        port map (
      I0 => \rSDataOut[31]_i_3_n_0\,
      I1 => p_1_in,
      I2 => \rSDataOut_reg[0]_0\,
      I3 => sclk_in,
      I4 => rSClkDelayed,
      I5 => \^imrst0\,
      O => rSDataOut_0
    );
\rSDataOut[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00B8B8FF00"
    )
        port map (
      I0 => iAudData(47),
      I1 => \rSDataOut[31]_i_4_n_0\,
      I2 => iAudData(23),
      I3 => rSDataOut(30),
      I4 => \rSDataOut[31]_i_3_n_0\,
      I5 => \rSDataOut_reg[23]_0\,
      O => \rSDataOut[31]_i_2_n_0\
    );
\rSDataOut[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => rLRClkIn_reg_n_0,
      I1 => rLRClkDelayed,
      I2 => \mclk_rWaveGenCounter_reg[0]\,
      I3 => lrclk_in,
      O => \rSDataOut[31]_i_3_n_0\
    );
\rSDataOut[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mclk_rWaveGenCounter_reg[0]\,
      I1 => lrclk_in,
      O => \rSDataOut[31]_i_4_n_0\
    );
\rSDataOut[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC00000AAAAAAAA"
    )
        port map (
      I0 => rSDataOut(2),
      I1 => iAudData(27),
      I2 => \rSDataOut[31]_i_4_n_0\,
      I3 => iAudData(3),
      I4 => \rSDataOut_reg[23]_0\,
      I5 => \rSDataOut[31]_i_3_n_0\,
      O => \rSDataOut[3]_i_1_n_0\
    );
\rSDataOut[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC00000AAAAAAAA"
    )
        port map (
      I0 => rSDataOut(3),
      I1 => iAudData(28),
      I2 => \rSDataOut[31]_i_4_n_0\,
      I3 => iAudData(4),
      I4 => \rSDataOut_reg[23]_0\,
      I5 => \rSDataOut[31]_i_3_n_0\,
      O => \rSDataOut[4]_i_1_n_0\
    );
\rSDataOut[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC00000AAAAAAAA"
    )
        port map (
      I0 => rSDataOut(4),
      I1 => iAudData(29),
      I2 => \rSDataOut[31]_i_4_n_0\,
      I3 => iAudData(5),
      I4 => \rSDataOut_reg[23]_0\,
      I5 => \rSDataOut[31]_i_3_n_0\,
      O => \rSDataOut[5]_i_1_n_0\
    );
\rSDataOut[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC00000AAAAAAAA"
    )
        port map (
      I0 => rSDataOut(5),
      I1 => iAudData(30),
      I2 => \rSDataOut[31]_i_4_n_0\,
      I3 => iAudData(6),
      I4 => \rSDataOut_reg[23]_0\,
      I5 => \rSDataOut[31]_i_3_n_0\,
      O => \rSDataOut[6]_i_1_n_0\
    );
\rSDataOut[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC00000AAAAAAAA"
    )
        port map (
      I0 => rSDataOut(6),
      I1 => iAudData(31),
      I2 => \rSDataOut[31]_i_4_n_0\,
      I3 => iAudData(7),
      I4 => \rSDataOut_reg[23]_0\,
      I5 => \rSDataOut[31]_i_3_n_0\,
      O => \rSDataOut[7]_i_1_n_0\
    );
\rSDataOut[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[16]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[8]_i_2_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(7),
      O => \rSDataOut[8]_i_1_n_0\
    );
\rSDataOut[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(24),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(0),
      O => \rSDataOut[8]_i_2_n_0\
    );
\rSDataOut[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rSDataOut[17]_i_3_n_0\,
      I1 => \rSDataOut_reg[23]_0\,
      I2 => \rSDataOut[9]_i_2_n_0\,
      I3 => \rSDataOut[31]_i_3_n_0\,
      I4 => rSDataOut(8),
      O => \rSDataOut[9]_i_1_n_0\
    );
\rSDataOut[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => iAudData(25),
      I1 => \mclk_rWaveGenCounter_reg[0]\,
      I2 => lrclk_in,
      I3 => iAudData(1),
      O => \rSDataOut[9]_i_2_n_0\
    );
\rSDataOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[0]_i_1_n_0\,
      Q => rSDataOut(0),
      R => '0'
    );
\rSDataOut_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[10]_i_1_n_0\,
      Q => rSDataOut(10),
      R => '0'
    );
\rSDataOut_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[11]_i_1_n_0\,
      Q => rSDataOut(11),
      R => '0'
    );
\rSDataOut_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[12]_i_1_n_0\,
      Q => rSDataOut(12),
      R => '0'
    );
\rSDataOut_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[13]_i_1_n_0\,
      Q => rSDataOut(13),
      R => '0'
    );
\rSDataOut_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[14]_i_1_n_0\,
      Q => rSDataOut(14),
      R => '0'
    );
\rSDataOut_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[15]_i_1_n_0\,
      Q => rSDataOut(15),
      R => '0'
    );
\rSDataOut_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[16]_i_1_n_0\,
      Q => rSDataOut(16),
      R => '0'
    );
\rSDataOut_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[17]_i_1_n_0\,
      Q => rSDataOut(17),
      R => '0'
    );
\rSDataOut_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[18]_i_1_n_0\,
      Q => rSDataOut(18),
      R => '0'
    );
\rSDataOut_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[19]_i_1_n_0\,
      Q => rSDataOut(19),
      R => '0'
    );
\rSDataOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[1]_i_1_n_0\,
      Q => rSDataOut(1),
      R => '0'
    );
\rSDataOut_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[20]_i_1_n_0\,
      Q => rSDataOut(20),
      R => '0'
    );
\rSDataOut_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[21]_i_1_n_0\,
      Q => rSDataOut(21),
      R => '0'
    );
\rSDataOut_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[22]_i_1_n_0\,
      Q => rSDataOut(22),
      R => '0'
    );
\rSDataOut_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[23]_i_1_n_0\,
      Q => rSDataOut(23),
      R => '0'
    );
\rSDataOut_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[24]_i_1_n_0\,
      Q => rSDataOut(24),
      R => '0'
    );
\rSDataOut_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[25]_i_1_n_0\,
      Q => rSDataOut(25),
      R => '0'
    );
\rSDataOut_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[26]_i_1_n_0\,
      Q => rSDataOut(26),
      R => '0'
    );
\rSDataOut_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[27]_i_1_n_0\,
      Q => rSDataOut(27),
      R => '0'
    );
\rSDataOut_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[28]_i_1_n_0\,
      Q => rSDataOut(28),
      R => '0'
    );
\rSDataOut_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[29]_i_1_n_0\,
      Q => rSDataOut(29),
      R => '0'
    );
\rSDataOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[2]_i_1_n_0\,
      Q => rSDataOut(2),
      R => '0'
    );
\rSDataOut_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[30]_i_1_n_0\,
      Q => rSDataOut(30),
      R => '0'
    );
\rSDataOut_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[31]_i_2_n_0\,
      Q => sdata_0_out,
      R => '0'
    );
\rSDataOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[3]_i_1_n_0\,
      Q => rSDataOut(3),
      R => '0'
    );
\rSDataOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[4]_i_1_n_0\,
      Q => rSDataOut(4),
      R => '0'
    );
\rSDataOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[5]_i_1_n_0\,
      Q => rSDataOut(5),
      R => '0'
    );
\rSDataOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[6]_i_1_n_0\,
      Q => rSDataOut(6),
      R => '0'
    );
\rSDataOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[7]_i_1_n_0\,
      Q => rSDataOut(7),
      R => '0'
    );
\rSDataOut_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[8]_i_1_n_0\,
      Q => rSDataOut(8),
      R => '0'
    );
\rSDataOut_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => rSDataOut_0,
      D => \rSDataOut[9]_i_1_n_0\,
      Q => rSDataOut(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse is
  port (
    src_clk : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    dest_pulse : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 1;
  attribute RST_USED : integer;
  attribute RST_USED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse : entity is "PULSE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse is
  signal dest_event_ff : STD_LOGIC;
  signal dest_pulse_int : STD_LOGIC;
  signal dest_sync_out : STD_LOGIC;
  signal src_in_ff : STD_LOGIC;
  signal src_level_ff : STD_LOGIC;
  signal src_level_nxt : STD_LOGIC;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
dest_event_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_sync_out,
      Q => dest_event_ff,
      R => dest_rst
    );
dest_pulse_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dest_event_ff,
      I1 => dest_sync_out,
      O => dest_pulse_int
    );
dest_pulse_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_pulse_int,
      Q => dest_pulse,
      R => dest_rst
    );
src_in_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_pulse,
      Q => src_in_ff,
      R => src_rst
    );
src_level_ff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => src_in_ff,
      I1 => src_pulse,
      I2 => src_level_ff,
      O => src_level_nxt
    );
src_level_ff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => src_clk,
      CE => '1',
      D => src_level_nxt,
      Q => src_level_ff,
      R => src_rst
    );
xpm_cdc_single_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_sync_out,
      src_clk => src_clk,
      src_in => src_level_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    dest_pulse : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is "xpm_cdc_pulse";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is 1;
  attribute RST_USED : integer;
  attribute RST_USED of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ : entity is "PULSE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\ is
  signal dest_event_ff : STD_LOGIC;
  signal dest_pulse_int : STD_LOGIC;
  signal dest_sync_out : STD_LOGIC;
  signal src_in_ff : STD_LOGIC;
  signal src_in_ff_i_1_n_0 : STD_LOGIC;
  signal src_level_ff : STD_LOGIC;
  signal src_level_ff_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of src_in_ff_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of src_level_ff_i_1 : label is "soft_lutpair0";
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 2;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
dest_event_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_sync_out,
      Q => dest_event_ff,
      R => dest_rst
    );
dest_pulse_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dest_event_ff,
      I1 => dest_sync_out,
      O => dest_pulse_int
    );
dest_pulse_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_pulse_int,
      Q => dest_pulse,
      R => dest_rst
    );
src_in_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => src_pulse,
      I1 => src_rst,
      O => src_in_ff_i_1_n_0
    );
src_in_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_ff_i_1_n_0,
      Q => src_in_ff,
      R => '0'
    );
src_level_ff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A6"
    )
        port map (
      I0 => src_level_ff,
      I1 => src_pulse,
      I2 => src_in_ff,
      I3 => src_rst,
      O => src_level_ff_i_1_n_0
    );
src_level_ff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => src_clk,
      CE => '1',
      D => src_level_ff_i_1_n_0,
      Q => src_level_ff,
      R => '0'
    );
xpm_cdc_single_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_sync_out,
      src_clk => src_clk,
      src_in => src_level_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    dest_pulse : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is "xpm_cdc_pulse";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is 1;
  attribute RST_USED : integer;
  attribute RST_USED of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ : entity is "PULSE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\ is
  signal dest_event_ff : STD_LOGIC;
  signal dest_pulse_int : STD_LOGIC;
  signal dest_sync_out : STD_LOGIC;
  signal src_in_ff : STD_LOGIC;
  signal src_level_ff : STD_LOGIC;
  signal src_level_nxt : STD_LOGIC;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 2;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
dest_event_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_sync_out,
      Q => dest_event_ff,
      R => dest_rst
    );
dest_pulse_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dest_event_ff,
      I1 => dest_sync_out,
      O => dest_pulse_int
    );
dest_pulse_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_pulse_int,
      Q => dest_pulse,
      R => dest_rst
    );
src_in_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_pulse,
      Q => src_in_ff,
      R => src_rst
    );
src_level_ff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => src_in_ff,
      I1 => src_pulse,
      I2 => src_level_ff,
      O => src_level_nxt
    );
src_level_ff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => src_clk,
      CE => '1',
      D => src_level_nxt,
      Q => src_level_ff,
      R => src_rst
    );
xpm_cdc_single_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__4\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_sync_out,
      src_clk => src_clk,
      src_in => src_level_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    dest_pulse : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is "xpm_cdc_pulse";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is 1;
  attribute RST_USED : integer;
  attribute RST_USED of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ : entity is "PULSE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\ is
  signal dest_event_ff : STD_LOGIC;
  signal dest_pulse_int : STD_LOGIC;
  signal dest_sync_out : STD_LOGIC;
  signal src_in_ff : STD_LOGIC;
  signal src_level_ff : STD_LOGIC;
  signal src_level_nxt : STD_LOGIC;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 2;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
dest_event_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_sync_out,
      Q => dest_event_ff,
      R => dest_rst
    );
dest_pulse_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dest_event_ff,
      I1 => dest_sync_out,
      O => dest_pulse_int
    );
dest_pulse_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_pulse_int,
      Q => dest_pulse,
      R => dest_rst
    );
src_in_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_pulse,
      Q => src_in_ff,
      R => src_rst
    );
src_level_ff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => src_in_ff,
      I1 => src_pulse,
      I2 => src_level_ff,
      O => src_level_nxt
    );
src_level_ff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => src_clk,
      CE => '1',
      D => src_level_nxt,
      Q => src_level_ff,
      R => src_rst
    );
xpm_cdc_single_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__5\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_sync_out,
      src_clk => src_clk,
      src_in => src_level_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_pulse : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    dest_pulse : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is "xpm_cdc_pulse";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is 1;
  attribute RST_USED : integer;
  attribute RST_USED of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ : entity is "PULSE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\ is
  signal dest_event_ff : STD_LOGIC;
  signal dest_pulse_int : STD_LOGIC;
  signal dest_sync_out : STD_LOGIC;
  signal src_in_ff : STD_LOGIC;
  signal src_level_ff : STD_LOGIC;
  signal src_level_nxt : STD_LOGIC;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 2;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
dest_event_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_sync_out,
      Q => dest_event_ff,
      R => dest_rst
    );
dest_pulse_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dest_event_ff,
      I1 => dest_sync_out,
      O => dest_pulse_int
    );
dest_pulse_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_pulse_int,
      Q => dest_pulse,
      R => dest_rst
    );
src_in_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_pulse,
      Q => src_in_ff,
      R => src_rst
    );
src_level_ff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => src_in_ff,
      I1 => src_pulse,
      I2 => src_level_ff,
      O => src_level_nxt
    );
src_level_ff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => src_clk,
      CE => '1',
      D => src_level_nxt,
      Q => src_level_ff,
      R => src_rst
    );
xpm_cdc_single_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__6\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_sync_out,
      src_clk => src_clk,
      src_in => src_level_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    d_out_reg : out STD_LOGIC;
    wr_pntr_plus1_pf_carry : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \guf.underflow_i_reg\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\ : label is "soft_lutpair30";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute SOFT_HLUTNM of \__2/i_\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_rd_rst_ic_i_1\ : label is "soft_lutpair32";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.wr_rst_busy_ic_i_2\ : label is "soft_lutpair31";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair33";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F40044"
    )
        port map (
      I0 => p_0_in,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEEEAFFFFEEEA"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F44444"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I2 => rst,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered\,
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__2/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.rst_seq_reentered\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I1 => \gen_rst_ic.rst_seq_reentered\,
      I2 => rst,
      I3 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFEFC"
    )
        port map (
      I0 => \rst_i__0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => wr_pntr_plus1_pf_carry
    );
\grdc.rd_data_count_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => rd_en,
      I2 => \guf.underflow_i_reg\,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst_d1,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => wr_en,
      I3 => \^wrst_busy\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic\,
      I5 => rst,
      O => d_out_reg
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 34 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 34 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 128;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4480;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 128;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 123;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 123;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 35;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 35;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_11\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_12\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_9\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_7\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdp_inst_n_27 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wrpp1_inst_n_10 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_5 : STD_LOGIC;
  signal wrpp2_inst_n_6 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 34 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair34";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 8;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 7;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 8;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 7;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 34;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 511;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 4480;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 35;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69C1"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => ram_empty_i,
      I3 => rd_en,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
     port map (
      Q(6 downto 0) => count_value_i(6 downto 0),
      \count_value_i_reg[5]_0\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(7 downto 0) => rd_pntr_wr_cdc_dc(7 downto 0),
      src_clk => rd_clk,
      src_in_bin(7) => rdp_inst_n_21,
      src_in_bin(6) => rdp_inst_n_22,
      src_in_bin(5) => rdp_inst_n_23,
      src_in_bin(4) => rdp_inst_n_24,
      src_in_bin(3) => rdp_inst_n_25,
      src_in_bin(2) => rdp_inst_n_26,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_27
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(6 downto 0) => rd_pntr_wr_cdc(6 downto 0),
      src_clk => rd_clk,
      src_in_bin(6 downto 0) => rd_pntr_ext(6 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
     port map (
      D(6 downto 0) => rd_pntr_wr_cdc(6 downto 0),
      Q(6 downto 0) => count_value_i(6 downto 0),
      almost_full => \^almost_full\,
      clr_full => clr_full,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \^full\,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(6) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(5) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(4) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(3) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(2) => wrpp2_inst_n_4,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(1) => wrpp2_inst_n_5,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\(0) => wrpp2_inst_n_6,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\(5 downto 2) => wr_pntr_plus1_pf(7 downto 4),
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\(1 downto 0) => wr_pntr_plus1_pf(2 downto 1),
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2\ => wrpp1_inst_n_10,
      \reg_out_i_reg[6]_0\(6 downto 0) => rd_pntr_wr(6 downto 0),
      \reg_out_i_reg[6]_1\ => \gen_cdc_pntr.rpw_gray_reg_n_8\,
      rst => rst,
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(7 downto 0) => rd_pntr_wr_cdc_dc(7 downto 0),
      Q(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0
     port map (
      D(6 downto 0) => wr_pntr_rd_cdc(6 downto 0),
      Q(6 downto 0) => rd_pntr_ext(6 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_0\(6) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(5) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(4) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_3,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_4,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_5,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_6,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[6]_0\(6) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      \reg_out_i_reg[6]_0\(5) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \reg_out_i_reg[6]_0\(4) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \reg_out_i_reg[6]_0\(3) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \reg_out_i_reg[6]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \reg_out_i_reg[6]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \reg_out_i_reg[6]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_n_7\
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1\
     port map (
      D(7 downto 0) => wr_pntr_rd_cdc_dc(7 downto 0),
      DI(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_0\,
      DI(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_7\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_8\,
      S(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_12\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_0\,
      \grdc.rd_data_count_i_reg[7]\(4 downto 0) => rd_pntr_ext(5 downto 1),
      rd_clk => rd_clk,
      \reg_out_i_reg[5]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      \reg_out_i_reg[5]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      \reg_out_i_reg[5]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_11\,
      \reg_out_i_reg[7]_0\ => \^rd_rst_busy\
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(7 downto 0) => wr_pntr_rd_cdc_dc(7 downto 0),
      src_clk => wr_clk,
      src_in_bin(7 downto 0) => wr_pntr_ext(7 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(6 downto 0) => wr_pntr_rd_cdc(6 downto 0),
      src_clk => wr_clk,
      src_in_bin(6 downto 0) => wr_pntr_ext(6 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8AA"
    )
        port map (
      I0 => \^empty\,
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      I3 => curr_fwft_state(0),
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAA2AA22"
    )
        port map (
      I0 => \^almost_empty\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      I4 => rd_en,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15F5"
    )
        port map (
      I0 => \^empty\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      CO(0) => \gen_fwft.rdpp1_inst_n_3\,
      D(3 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(3 downto 0),
      DI(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_0\,
      DI(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(1 downto 0) => rd_pntr_ext(1 downto 0),
      S(1) => rdp_inst_n_20,
      S(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_12\,
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_0\,
      \count_value_i_reg[1]_1\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_2\(1 downto 0) => curr_fwft_state(1 downto 0),
      \grdc.rd_data_count_i_reg[3]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_8\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q => \^almost_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_8\,
      Q => \^full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888B8"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => diff_pntr_pf_q(6),
      I1 => diff_pntr_pf_q(5),
      I2 => diff_pntr_pf_q(4),
      I3 => diff_pntr_pf_q(7),
      O => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(6 downto 0) => wr_pntr_ext(6 downto 0),
      addrb(6 downto 0) => rd_pntr_ext(6 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(34 downto 0) => din(34 downto 0),
      dinb(34 downto 0) => B"00000000000000000000000000000000000",
      douta(34 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(34 downto 0),
      doutb(34 downto 0) => dout(34 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => ram_rd_en_i,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(0),
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(5),
      Q => wr_data_count(5),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(6),
      Q => wr_data_count(6),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(7),
      Q => wr_data_count(7),
      R => wrst_busy
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\
     port map (
      CO(0) => \gen_fwft.rdpp1_inst_n_3\,
      D(6 downto 0) => diff_pntr_pe(6 downto 0),
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\,
      E(0) => ram_rd_en_i,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      S(0) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(6 downto 0) => rd_pntr_ext(6 downto 0),
      \count_value_i_reg[7]_0\ => \^rd_rst_busy\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(6) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(5) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(4) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(3) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(2) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(1) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      \grdc.rd_data_count_i_reg[7]\(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \grdc.rd_data_count_i_reg[7]\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[7]\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[7]\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[7]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \grdc.rd_data_count_i_reg[7]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_7\,
      \grdc.rd_data_count_i_reg[7]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      \grdc.rd_data_count_i_reg[7]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      \grdc.rd_data_count_i_reg[7]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_11\,
      p_1_in => p_1_in,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]\(3 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(7 downto 4),
      \src_gray_ff_reg[2]\ => \gen_fwft.rdpp1_inst_n_0\,
      \src_gray_ff_reg[2]_0\ => \gen_fwft.rdpp1_inst_n_2\,
      src_in_bin(6) => rdp_inst_n_21,
      src_in_bin(5) => rdp_inst_n_22,
      src_in_bin(4) => rdp_inst_n_23,
      src_in_bin(3) => rdp_inst_n_24,
      src_in_bin(2) => rdp_inst_n_25,
      src_in_bin(1) => rdp_inst_n_26,
      src_in_bin(0) => rdp_inst_n_27
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\
     port map (
      E(0) => ram_rd_en_i,
      Q(6) => rdpp1_inst_n_0,
      Q(5) => rdpp1_inst_n_1,
      Q(4) => rdpp1_inst_n_2,
      Q(3) => rdpp1_inst_n_3,
      Q(2) => rdpp1_inst_n_4,
      Q(1) => rdpp1_inst_n_5,
      Q(0) => rdpp1_inst_n_6,
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      p_1_in => p_1_in,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      clr_full => clr_full,
      d_out_reg_0 => rst_d1_inst_n_1,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\,
      \gof.overflow_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\
     port map (
      D(7 downto 0) => \gwdc.diff_wr_rd_pntr1_out\(7 downto 0),
      Q(7 downto 0) => wr_pntr_ext(7 downto 0),
      \count_value_i_reg[5]_0\ => \^full\,
      \gwdc.wr_data_count_i_reg[7]\(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      \gwdc.wr_data_count_i_reg[7]\(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      \gwdc.wr_data_count_i_reg[7]\(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      \gwdc.wr_data_count_i_reg[7]\(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[7]\(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[7]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[7]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      \gwdc.wr_data_count_i_reg[7]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\
     port map (
      D(3 downto 0) => diff_pntr_pf_q0(7 downto 4),
      Q(5 downto 2) => wr_pntr_plus1_pf(7 downto 4),
      Q(1 downto 0) => wr_pntr_plus1_pf(2 downto 1),
      \count_value_i_reg[2]_0\ => wrpp1_inst_n_10,
      \count_value_i_reg[5]_0\ => \^full\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\(6 downto 0) => rd_pntr_wr(6 downto 0),
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      Q(6) => wrpp2_inst_n_0,
      Q(5) => wrpp2_inst_n_1,
      Q(4) => wrpp2_inst_n_2,
      Q(3) => wrpp2_inst_n_3,
      Q(2) => wrpp2_inst_n_4,
      Q(1) => wrpp2_inst_n_5,
      Q(0) => wrpp2_inst_n_6,
      \count_value_i_reg[5]_0\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      d_out_reg => xpm_fifo_rst_inst_n_2,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 34 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 34 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "block";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 128;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 8;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 35;
  attribute READ_MODE : string;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 35;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 128;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4480;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 128;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 123;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 123;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 35;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 35;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(34 downto 0) => din(34 downto 0),
      dout(34 downto 0) => dout(34 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(7 downto 0) => rd_data_count(7 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(7 downto 0) => wr_data_count(7 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_async_fifo is
  port (
    fifo_wrdata_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_rdata_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_valid : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[6]\ : out STD_LOGIC;
    \FSM_sequential_stmAudChCtrl_reg[0]\ : out STD_LOGIC;
    s_axis_aud_tid_1_sp_1 : out STD_LOGIC;
    axis_rAxis_InhibFIFOWrite_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aud_tid_0_sp_1 : out STD_LOGIC;
    s_axis_aud_tready : out STD_LOGIC;
    s_axis_aud_tvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mclk_rChMuxSelect_reg[1][3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mclk_rChMuxSelect_reg[1][3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mclk_rReadFIFOInitDone : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    mclk_rReadFromFIFO_reg : out STD_LOGIC;
    mclk_rReadFromFIFO_reg_0 : out STD_LOGIC;
    \genblk2[0].mclk_rAudValid_reg[0]\ : out STD_LOGIC;
    \genblk2[1].mclk_rAudValid_reg[1]\ : out STD_LOGIC;
    axis_rAxis_InhibFIFOWrite_reg_0 : out STD_LOGIC;
    s_axis_aud_aclk : in STD_LOGIC;
    s_axis_aud_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_aud_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aud_mclk : in STD_LOGIC;
    \stmAudChCtrl__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_stmAudChCtrl_reg[0]_0\ : in STD_LOGIC;
    rAesBlockSyncError_other_reg : in STD_LOGIC;
    s_axis_aud_tvalid : in STD_LOGIC;
    axis_rAxis_InhibFIFOWrite : in STD_LOGIC;
    axis_rAxis_Ready : in STD_LOGIC;
    dest_out : in STD_LOGIC;
    \mclk_rChMuxSelect_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mclk_rReadFromFIFO_reg_1 : in STD_LOGIC;
    mclk_rReadFIFOInitDone_reg : in STD_LOGIC;
    \genblk2[0].mclk_rAudValid_reg[0]_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \FSM_sequential_stmAudChCtrl_reg[1]\ : in STD_LOGIC;
    \mclk_rChMuxSelect_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    mclk_rWaveGenCounter_reg : in STD_LOGIC_VECTOR ( 23 downto 0 );
    id_check : in STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_async_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_async_fifo is
  signal \FSM_sequential_stmAudChCtrl[1]_i_3_n_0\ : STD_LOGIC;
  signal \^axis_raxis_inhibfifowrite_reg\ : STD_LOGIC;
  signal \^data_valid\ : STD_LOGIC;
  signal din : STD_LOGIC_VECTOR ( 30 downto 7 );
  signal \^fifo_rdata_count\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal full : STD_LOGIC;
  signal \genblk2[0].mclk_rAudData[0][23]_i_3_n_0\ : STD_LOGIC;
  signal \genblk2[1].mclk_rAudData[1][23]_i_3_n_0\ : STD_LOGIC;
  signal mclk_nAxis_TData : STD_LOGIC_VECTOR ( 27 downto 4 );
  signal mclk_nAxis_TID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^mclk_rchmuxselect_reg[1][3]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^mclk_rchmuxselect_reg[1][3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mclk_rReadFIFOInitDone_i_2_n_0 : STD_LOGIC;
  signal mclk_rReadFromFIFO_i_2_n_0 : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal s_areset0 : STD_LOGIC;
  signal s_axis_aud_tid_0_sn_1 : STD_LOGIC;
  signal s_axis_aud_tid_1_sn_1 : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  signal xpm_fifo_async_inst_n_14 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_15 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_16 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_17 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_42 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_43 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_44 : STD_LOGIC;
  signal xpm_fifo_async_inst_n_45 : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \genblk2[0].mclk_rAudValid[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \genblk2[1].mclk_rAudValid[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of id_check_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \id_count[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \id_count[2]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of mclk_rReadCh0_i_3 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of mclk_rReadFIFOInitDone_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of mclk_rReadFromFIFO_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of rAesBlockSyncError_other_i_4 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rAudioFrameCount[7]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of s_axis_aud_tready_INST_0 : label is "soft_lutpair41";
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of xpm_fifo_async_inst : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_async_inst : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of xpm_fifo_async_inst : label is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of xpm_fifo_async_inst : label is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_async_inst : label is "block";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_async_inst : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_async_inst : label is 128;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_async_inst : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_async_inst : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_async_inst : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of xpm_fifo_async_inst : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xpm_fifo_async_inst : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of xpm_fifo_async_inst : label is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of xpm_fifo_async_inst : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of xpm_fifo_async_inst : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_async_inst : label is 8;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_async_inst : label is 35;
  attribute READ_MODE : string;
  attribute READ_MODE of xpm_fifo_async_inst : label is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_async_inst : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of xpm_fifo_async_inst : label is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_async_inst : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_async_inst : label is 35;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_async_inst : label is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_async_inst : label is "TRUE";
  attribute SOFT_HLUTNM of xpm_fifo_async_inst_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of xpm_fifo_async_inst_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of xpm_fifo_async_inst_i_27 : label is "soft_lutpair35";
begin
  axis_rAxis_InhibFIFOWrite_reg <= \^axis_raxis_inhibfifowrite_reg\;
  data_valid <= \^data_valid\;
  fifo_rdata_count(7 downto 0) <= \^fifo_rdata_count\(7 downto 0);
  \mclk_rChMuxSelect_reg[1][3]\(0) <= \^mclk_rchmuxselect_reg[1][3]\(0);
  \mclk_rChMuxSelect_reg[1][3]_0\(0) <= \^mclk_rchmuxselect_reg[1][3]_0\(0);
  s_axis_aud_tid_0_sp_1 <= s_axis_aud_tid_0_sn_1;
  s_axis_aud_tid_1_sp_1 <= s_axis_aud_tid_1_sn_1;
\FSM_sequential_stmAudChCtrl[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F10001FF0EFF0E"
    )
        port map (
      I0 => \^fifo_rdata_count\(6),
      I1 => \^fifo_rdata_count\(7),
      I2 => \stmAudChCtrl__0\(1),
      I3 => \FSM_sequential_stmAudChCtrl[1]_i_3_n_0\,
      I4 => \FSM_sequential_stmAudChCtrl_reg[0]_0\,
      I5 => \stmAudChCtrl__0\(0),
      O => \grdc.rd_data_count_i_reg[6]\
    );
\FSM_sequential_stmAudChCtrl[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFAFAF8"
    )
        port map (
      I0 => \stmAudChCtrl__0\(0),
      I1 => \FSM_sequential_stmAudChCtrl[1]_i_3_n_0\,
      I2 => \stmAudChCtrl__0\(1),
      I3 => \^fifo_rdata_count\(7),
      I4 => \^fifo_rdata_count\(6),
      O => \FSM_sequential_stmAudChCtrl_reg[0]\
    );
\FSM_sequential_stmAudChCtrl[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555500105555"
    )
        port map (
      I0 => \stmAudChCtrl__0\(0),
      I1 => mclk_rReadFIFOInitDone_i_2_n_0,
      I2 => \^data_valid\,
      I3 => mclk_rReadFromFIFO_reg_1,
      I4 => \stmAudChCtrl__0\(1),
      I5 => \FSM_sequential_stmAudChCtrl_reg[1]\,
      O => \FSM_sequential_stmAudChCtrl[1]_i_3_n_0\
    );
\genblk2[0].mclk_rAudData[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(4),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(0),
      O => D(0)
    );
\genblk2[0].mclk_rAudData[0][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(14),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(10),
      O => D(10)
    );
\genblk2[0].mclk_rAudData[0][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(15),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(11),
      O => D(11)
    );
\genblk2[0].mclk_rAudData[0][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(16),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(12),
      O => D(12)
    );
\genblk2[0].mclk_rAudData[0][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(17),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(13),
      O => D(13)
    );
\genblk2[0].mclk_rAudData[0][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(18),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(14),
      O => D(14)
    );
\genblk2[0].mclk_rAudData[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(19),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(15),
      O => D(15)
    );
\genblk2[0].mclk_rAudData[0][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(20),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(16),
      O => D(16)
    );
\genblk2[0].mclk_rAudData[0][17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(21),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(17),
      O => D(17)
    );
\genblk2[0].mclk_rAudData[0][18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(22),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(18),
      O => D(18)
    );
\genblk2[0].mclk_rAudData[0][19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(23),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(19),
      O => D(19)
    );
\genblk2[0].mclk_rAudData[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(5),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(1),
      O => D(1)
    );
\genblk2[0].mclk_rAudData[0][20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(24),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(20),
      O => D(20)
    );
\genblk2[0].mclk_rAudData[0][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(25),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(21),
      O => D(21)
    );
\genblk2[0].mclk_rAudData[0][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(26),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(22),
      O => D(22)
    );
\genblk2[0].mclk_rAudData[0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055D50000"
    )
        port map (
      I0 => \mclk_rChMuxSelect_reg[1]\(3),
      I1 => \^data_valid\,
      I2 => mclk_rReadFromFIFO_reg_1,
      I3 => \genblk2[0].mclk_rAudData[0][23]_i_3_n_0\,
      I4 => mclk_rReadFIFOInitDone_reg,
      I5 => \genblk2[0].mclk_rAudValid_reg[0]_0\,
      O => \^mclk_rchmuxselect_reg[1][3]\(0)
    );
\genblk2[0].mclk_rAudData[0][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(27),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(23),
      O => D(23)
    );
\genblk2[0].mclk_rAudData[0][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => mclk_nAxis_TID(0),
      I1 => \mclk_rChMuxSelect_reg[0]\(0),
      I2 => mclk_nAxis_TID(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(2),
      I4 => mclk_nAxis_TID(1),
      I5 => \mclk_rChMuxSelect_reg[1]\(1),
      O => \genblk2[0].mclk_rAudData[0][23]_i_3_n_0\
    );
\genblk2[0].mclk_rAudData[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(6),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(2),
      O => D(2)
    );
\genblk2[0].mclk_rAudData[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(7),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(3),
      O => D(3)
    );
\genblk2[0].mclk_rAudData[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(8),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(4),
      O => D(4)
    );
\genblk2[0].mclk_rAudData[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(9),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(5),
      O => D(5)
    );
\genblk2[0].mclk_rAudData[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(10),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(6),
      O => D(6)
    );
\genblk2[0].mclk_rAudData[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(11),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(7),
      O => D(7)
    );
\genblk2[0].mclk_rAudData[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(12),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(8),
      O => D(8)
    );
\genblk2[0].mclk_rAudData[0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(13),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[0]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(9),
      O => D(9)
    );
\genblk2[0].mclk_rAudValid[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^mclk_rchmuxselect_reg[1][3]\(0),
      I1 => \FSM_sequential_stmAudChCtrl_reg[0]_0\,
      I2 => \genblk2[0].mclk_rAudValid_reg[0]_0\,
      O => \genblk2[0].mclk_rAudValid_reg[0]\
    );
\genblk2[1].mclk_rAudData[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(4),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(0)
    );
\genblk2[1].mclk_rAudData[1][10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(14),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(10),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(10)
    );
\genblk2[1].mclk_rAudData[1][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(15),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(11),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(11)
    );
\genblk2[1].mclk_rAudData[1][12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(16),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(12),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(12)
    );
\genblk2[1].mclk_rAudData[1][13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(17),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(13),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(13)
    );
\genblk2[1].mclk_rAudData[1][14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(18),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(14),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(14)
    );
\genblk2[1].mclk_rAudData[1][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(19),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(15),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(15)
    );
\genblk2[1].mclk_rAudData[1][16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(20),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(16),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(16)
    );
\genblk2[1].mclk_rAudData[1][17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(21),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(17),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(17)
    );
\genblk2[1].mclk_rAudData[1][18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(22),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(18),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(18)
    );
\genblk2[1].mclk_rAudData[1][19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(23),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(19),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(19)
    );
\genblk2[1].mclk_rAudData[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(5),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(1),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(1)
    );
\genblk2[1].mclk_rAudData[1][20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(24),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(20),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(20)
    );
\genblk2[1].mclk_rAudData[1][21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(25),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(21),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(21)
    );
\genblk2[1].mclk_rAudData[1][22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(26),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(22),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(22)
    );
\genblk2[1].mclk_rAudData[1][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055D50000"
    )
        port map (
      I0 => \mclk_rChMuxSelect_reg[1]\(3),
      I1 => \^data_valid\,
      I2 => mclk_rReadFromFIFO_reg_1,
      I3 => \genblk2[1].mclk_rAudData[1][23]_i_3_n_0\,
      I4 => mclk_rReadFIFOInitDone_reg,
      I5 => p_1_in,
      O => \^mclk_rchmuxselect_reg[1][3]_0\(0)
    );
\genblk2[1].mclk_rAudData[1][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(27),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(23),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(23)
    );
\genblk2[1].mclk_rAudData[1][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => mclk_nAxis_TID(2),
      I1 => \mclk_rChMuxSelect_reg[1]\(2),
      I2 => mclk_nAxis_TID(1),
      I3 => \mclk_rChMuxSelect_reg[1]\(1),
      I4 => mclk_nAxis_TID(0),
      I5 => \mclk_rChMuxSelect_reg[1]\(0),
      O => \genblk2[1].mclk_rAudData[1][23]_i_3_n_0\
    );
\genblk2[1].mclk_rAudData[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(6),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(2),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(2)
    );
\genblk2[1].mclk_rAudData[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(7),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(3),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(3)
    );
\genblk2[1].mclk_rAudData[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(8),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(4),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(4)
    );
\genblk2[1].mclk_rAudData[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(9),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(5),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(5)
    );
\genblk2[1].mclk_rAudData[1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(10),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(6),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(6)
    );
\genblk2[1].mclk_rAudData[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(11),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(7),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(7)
    );
\genblk2[1].mclk_rAudData[1][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(12),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(8),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(8)
    );
\genblk2[1].mclk_rAudData[1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0300AAAA0000"
    )
        port map (
      I0 => mclk_nAxis_TData(13),
      I1 => \mclk_rChMuxSelect_reg[1]\(1),
      I2 => \mclk_rChMuxSelect_reg[1]\(2),
      I3 => \mclk_rChMuxSelect_reg[1]\(0),
      I4 => \mclk_rChMuxSelect_reg[1]\(3),
      I5 => mclk_rWaveGenCounter_reg(9),
      O => \gen_wr_a.gen_word_narrow.mem_reg\(9)
    );
\genblk2[1].mclk_rAudValid[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^mclk_rchmuxselect_reg[1][3]_0\(0),
      I1 => \FSM_sequential_stmAudChCtrl_reg[0]_0\,
      I2 => p_1_in,
      O => \genblk2[1].mclk_rAudValid_reg[1]\
    );
id_check_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB100"
    )
        port map (
      I0 => axis_rAxis_InhibFIFOWrite,
      I1 => full,
      I2 => axis_rAxis_Ready,
      I3 => s_axis_aud_tvalid,
      I4 => id_check,
      O => axis_rAxis_InhibFIFOWrite_reg_0
    );
\id_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"880A"
    )
        port map (
      I0 => s_axis_aud_tvalid,
      I1 => axis_rAxis_Ready,
      I2 => full,
      I3 => axis_rAxis_InhibFIFOWrite,
      O => s_axis_aud_tvalid_0(0)
    );
\id_count[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4EFF"
    )
        port map (
      I0 => axis_rAxis_InhibFIFOWrite,
      I1 => full,
      I2 => axis_rAxis_Ready,
      I3 => s_axis_aud_tvalid,
      O => \^axis_raxis_inhibfifowrite_reg\
    );
mclk_rReadCh0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000400FF"
    )
        port map (
      I0 => mclk_rReadFromFIFO_reg_1,
      I1 => \^data_valid\,
      I2 => mclk_rReadFIFOInitDone_i_2_n_0,
      I3 => \stmAudChCtrl__0\(0),
      I4 => \stmAudChCtrl__0\(1),
      O => mclk_rReadFIFOInitDone
    );
mclk_rReadFIFOInitDone_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0000040000"
    )
        port map (
      I0 => mclk_rReadFromFIFO_reg_1,
      I1 => \^data_valid\,
      I2 => mclk_rReadFIFOInitDone_i_2_n_0,
      I3 => \stmAudChCtrl__0\(0),
      I4 => \stmAudChCtrl__0\(1),
      I5 => mclk_rReadFIFOInitDone_reg,
      O => mclk_rReadFromFIFO_reg_0
    );
mclk_rReadFIFOInitDone_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => mclk_nAxis_TID(1),
      I1 => mclk_nAxis_TID(0),
      I2 => mclk_nAxis_TID(2),
      O => mclk_rReadFIFOInitDone_i_2_n_0
    );
mclk_rReadFromFIFO_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF11CC00CC00CC00"
    )
        port map (
      I0 => mclk_rReadFromFIFO_i_2_n_0,
      I1 => mclk_rReadFromFIFO_reg_1,
      I2 => \FSM_sequential_stmAudChCtrl_reg[0]_0\,
      I3 => \stmAudChCtrl__0\(0),
      I4 => \^data_valid\,
      I5 => \stmAudChCtrl__0\(1),
      O => mclk_rReadFromFIFO_reg
    );
mclk_rReadFromFIFO_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_sequential_stmAudChCtrl_reg[1]\,
      I1 => mclk_nAxis_TID(2),
      I2 => mclk_nAxis_TID(0),
      I3 => mclk_nAxis_TID(1),
      O => mclk_rReadFromFIFO_i_2_n_0
    );
rAesBlockSyncError_other_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABFFFF"
    )
        port map (
      I0 => \^axis_raxis_inhibfifowrite_reg\,
      I1 => s_axis_aud_tid(1),
      I2 => s_axis_aud_tid(2),
      I3 => s_axis_aud_tid(0),
      I4 => rAesBlockSyncError_other_reg,
      O => s_axis_aud_tid_1_sn_1
    );
\rAudioFrameCount[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^axis_raxis_inhibfifowrite_reg\,
      I1 => s_axis_aud_tid(0),
      I2 => s_axis_aud_tid(2),
      I3 => s_axis_aud_tid(1),
      O => s_axis_aud_tid_0_sn_1
    );
\rChannelStatusIn[191]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_aud_tid_0_sn_1,
      O => E(0)
    );
s_axis_aud_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B1"
    )
        port map (
      I0 => axis_rAxis_InhibFIFOWrite,
      I1 => full,
      I2 => axis_rAxis_Ready,
      O => s_axis_aud_tready
    );
xpm_fifo_async_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
     port map (
      almost_empty => NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED,
      data_valid => \^data_valid\,
      dbiterr => NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED,
      din(34 downto 31) => s_axis_aud_tdata(31 downto 28),
      din(30 downto 7) => din(30 downto 7),
      din(6 downto 3) => s_axis_aud_tdata(3 downto 0),
      din(2 downto 0) => s_axis_aud_tid(2 downto 0),
      dout(34) => xpm_fifo_async_inst_n_14,
      dout(33) => xpm_fifo_async_inst_n_15,
      dout(32) => xpm_fifo_async_inst_n_16,
      dout(31) => xpm_fifo_async_inst_n_17,
      dout(30 downto 7) => mclk_nAxis_TData(27 downto 4),
      dout(6) => xpm_fifo_async_inst_n_42,
      dout(5) => xpm_fifo_async_inst_n_43,
      dout(4) => xpm_fifo_async_inst_n_44,
      dout(3) => xpm_fifo_async_inst_n_45,
      dout(2 downto 0) => mclk_nAxis_TID(2 downto 0),
      empty => NLW_xpm_fifo_async_inst_empty_UNCONNECTED,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_async_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED,
      rd_clk => aud_mclk,
      rd_data_count(7 downto 0) => \^fifo_rdata_count\(7 downto 0),
      rd_en => rd_en,
      rd_rst_busy => NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED,
      rst => s_areset0,
      sbiterr => NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_async_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED,
      wr_clk => s_axis_aud_aclk,
      wr_data_count(7 downto 0) => fifo_wrdata_count(7 downto 0),
      wr_en => wr_en,
      wr_rst_busy => NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_async_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => axis_rAxis_InhibFIFOWrite,
      I1 => dest_out,
      O => s_areset0
    );
xpm_fifo_async_inst_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(20),
      O => din(23)
    );
xpm_fifo_async_inst_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(19),
      O => din(22)
    );
xpm_fifo_async_inst_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(18),
      O => din(21)
    );
xpm_fifo_async_inst_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(17),
      O => din(20)
    );
xpm_fifo_async_inst_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(16),
      O => din(19)
    );
xpm_fifo_async_inst_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(15),
      O => din(18)
    );
xpm_fifo_async_inst_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(14),
      O => din(17)
    );
xpm_fifo_async_inst_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(13),
      O => din(16)
    );
xpm_fifo_async_inst_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(12),
      O => din(15)
    );
xpm_fifo_async_inst_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(11),
      O => din(14)
    );
xpm_fifo_async_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_aud_tvalid,
      I1 => full,
      I2 => axis_rAxis_InhibFIFOWrite,
      O => wr_en
    );
xpm_fifo_async_inst_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(10),
      O => din(13)
    );
xpm_fifo_async_inst_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(9),
      O => din(12)
    );
xpm_fifo_async_inst_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(8),
      O => din(11)
    );
xpm_fifo_async_inst_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(7),
      O => din(10)
    );
xpm_fifo_async_inst_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(6),
      O => din(9)
    );
xpm_fifo_async_inst_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(5),
      O => din(8)
    );
xpm_fifo_async_inst_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(4),
      O => din(7)
    );
xpm_fifo_async_inst_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mclk_rReadFromFIFO_reg_1,
      I1 => \^data_valid\,
      O => rd_en
    );
xpm_fifo_async_inst_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(27),
      O => din(30)
    );
xpm_fifo_async_inst_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(26),
      O => din(29)
    );
xpm_fifo_async_inst_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(25),
      O => din(28)
    );
xpm_fifo_async_inst_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(24),
      O => din(27)
    );
xpm_fifo_async_inst_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(23),
      O => din(26)
    );
xpm_fifo_async_inst_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(22),
      O => din(25)
    );
xpm_fifo_async_inst_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_aud_tdata(28),
      I1 => \gen_wr_a.gen_word_narrow.mem_reg_0\,
      I2 => s_axis_aud_tdata(21),
      O => din(24)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_sys is
  port (
    fifo_wrdata_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_rdata_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdata_0_out : out STD_LOGIC;
    oAxi_WReady_reg : out STD_LOGIC;
    s_axis_aud_tready : out STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rvalid : out STD_LOGIC;
    irq : out STD_LOGIC;
    s_axis_aud_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_aclk : in STD_LOGIC;
    aud_mclk : in STD_LOGIC;
    s_axis_aud_aclk : in STD_LOGIC;
    aud_mrst : in STD_LOGIC;
    s_axis_aud_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_ctrl_aresetn : in STD_LOGIC;
    sclk_in : in STD_LOGIC;
    s_axis_aud_aresetn : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_aud_tvalid : in STD_LOGIC;
    lrclk_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_sys;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_sys is
  signal AXIS_FIFO_INST_n_17 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_18 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_19 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_20 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_22 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_24 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_28 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_29 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_30 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_31 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_32 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_33 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_34 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_35 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_36 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_37 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_38 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_39 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_40 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_41 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_42 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_43 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_44 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_45 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_46 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_47 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_48 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_49 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_50 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_51 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_52 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_53 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_54 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_55 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_56 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_57 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_58 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_59 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_60 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_61 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_62 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_63 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_64 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_65 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_66 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_67 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_68 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_69 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_70 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_71 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_72 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_73 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_74 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_75 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_76 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_77 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_78 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_79 : STD_LOGIC;
  signal AXIS_FIFO_INST_n_80 : STD_LOGIC;
  signal I2S_TX_V1_0_AES_DECODE_INST_n_2 : STD_LOGIC;
  signal I2S_TX_V1_0_AXI_INST_n_1 : STD_LOGIC;
  signal aclk_nAesBlockComplete : STD_LOGIC;
  signal aclk_nAesBlockSyncError : STD_LOGIC;
  signal aclk_nAesChannelStatus : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal aclk_nAesChannelStatusChanged : STD_LOGIC;
  signal aclk_nAudioUnderflow : STD_LOGIC;
  signal \aclk_nChMuxSelect[0]_1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aclk_nClearAesChannelStatus : STD_LOGIC;
  signal aclk_nEnable : STD_LOGIC;
  signal aclk_nJustify : STD_LOGIC;
  signal aclk_nLeft_Right : STD_LOGIC;
  signal aclk_nSclkDiv : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal aclk_nValidity : STD_LOGIC;
  signal axis_nAesBlockComplete : STD_LOGIC;
  signal axis_nAesBlockSyncError : STD_LOGIC;
  signal axis_nAesChannelStatus : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal axis_nAesChannelStatusChanged : STD_LOGIC;
  signal axis_nAxis_TValid_ToAesDec : STD_LOGIC;
  signal axis_nClearAesChannelStatus : STD_LOGIC;
  signal axis_nEnable : STD_LOGIC;
  signal axis_nMClkInReset : STD_LOGIC;
  signal axis_nValidity : STD_LOGIC;
  signal axis_rAxis_InhibFIFOWrite : STD_LOGIC;
  signal axis_rAxis_Ready : STD_LOGIC;
  signal axis_rAxis_Ready1 : STD_LOGIC;
  signal \genblk2[0].mclk_rAudValid_reg_n_0_[0]\ : STD_LOGIC;
  signal \genblk4[0].I2S_TX_V1_0_SER_INST_n_1\ : STD_LOGIC;
  signal \genblk4[0].I2S_TX_V1_0_SER_INST_n_2\ : STD_LOGIC;
  signal \genblk4[0].I2S_TX_V1_0_SER_INST_n_4\ : STD_LOGIC;
  signal \genblk4[0].I2S_TX_V1_0_SER_INST_n_5\ : STD_LOGIC;
  signal iAudData : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal iMRst0 : STD_LOGIC;
  signal iRst10_in : STD_LOGIC;
  signal id_check : STD_LOGIC;
  signal mclk_nAudCapt_0 : STD_LOGIC;
  signal mclk_nAxis_TValid : STD_LOGIC;
  signal \mclk_nChMuxSelect[0]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mclk_nEnable : STD_LOGIC;
  signal mclk_nJustify : STD_LOGIC;
  signal mclk_nLeft_Right : STD_LOGIC;
  signal mclk_rAudData : STD_LOGIC;
  signal mclk_rAudValid6_out : STD_LOGIC;
  signal mclk_rAudioUnderflow : STD_LOGIC;
  signal mclk_rAudioUnderflowInhib_reg_n_0 : STD_LOGIC;
  signal \mclk_rChMuxSelect[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \mclk_rChMuxSelect[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \mclk_rChMuxSelect[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \mclk_rChMuxSelect_inferred__0/i__n_0\ : STD_LOGIC;
  signal mclk_rChMuxSelect_n_0 : STD_LOGIC;
  signal \mclk_rChMuxSelect_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mclk_rChMuxSelect_reg[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mclk_rReadCh0_reg_n_0 : STD_LOGIC;
  signal mclk_rReadFIFOInitDone : STD_LOGIC;
  signal mclk_rReadFIFOInitDone_reg_n_0 : STD_LOGIC;
  signal mclk_rReadFromFIFO_reg_n_0 : STD_LOGIC;
  signal \mclk_rWaveGenCounter[0]_i_3_n_0\ : STD_LOGIC;
  signal mclk_rWaveGenCounter_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \mclk_rWaveGenCounter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \mclk_rWaveGenCounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \stmAudChCtrl__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_CDC_SCLKDIV_INST_dest_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mclk_rWaveGenCounter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of CDC_AESBLKCMPLT_INST : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of CDC_AESBLKCMPLT_INST : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of CDC_AESBLKCMPLT_INST : label is 1;
  attribute RST_USED : integer;
  attribute RST_USED of CDC_AESBLKCMPLT_INST : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of CDC_AESBLKCMPLT_INST : label is 0;
  attribute VERSION : integer;
  attribute VERSION of CDC_AESBLKCMPLT_INST : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of CDC_AESBLKCMPLT_INST : label is "PULSE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of CDC_AESBLKCMPLT_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_AESBSYNCERR_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_AESBSYNCERR_INST : label is 0;
  attribute REG_OUTPUT of CDC_AESBSYNCERR_INST : label is 1;
  attribute RST_USED of CDC_AESBSYNCERR_INST : label is 1;
  attribute SIM_ASSERT_CHK of CDC_AESBSYNCERR_INST : label is 0;
  attribute VERSION of CDC_AESBSYNCERR_INST : label is 0;
  attribute XPM_CDC of CDC_AESBSYNCERR_INST : label is "PULSE";
  attribute XPM_MODULE of CDC_AESBSYNCERR_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_AESCHSTSUPD_INST : label is 4;
  attribute INIT_SYNC_FF of CDC_AESCHSTSUPD_INST : label is 0;
  attribute REG_OUTPUT of CDC_AESCHSTSUPD_INST : label is 1;
  attribute RST_USED of CDC_AESCHSTSUPD_INST : label is 1;
  attribute SIM_ASSERT_CHK of CDC_AESCHSTSUPD_INST : label is 0;
  attribute VERSION of CDC_AESCHSTSUPD_INST : label is 0;
  attribute XPM_CDC of CDC_AESCHSTSUPD_INST : label is "PULSE";
  attribute XPM_MODULE of CDC_AESCHSTSUPD_INST : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CDC_AESCHSTSUPD_INST_i_1 : label is "soft_lutpair71";
  attribute DEST_SYNC_FF of CDC_AESCHSTS_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_AESCHSTS_INST : label is 0;
  attribute SIM_ASSERT_CHK of CDC_AESCHSTS_INST : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of CDC_AESCHSTS_INST : label is 1;
  attribute VERSION of CDC_AESCHSTS_INST : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of CDC_AESCHSTS_INST : label is 192;
  attribute XPM_CDC of CDC_AESCHSTS_INST : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of CDC_AESCHSTS_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_AESCLRCHSTS_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_AESCLRCHSTS_INST : label is 0;
  attribute REG_OUTPUT of CDC_AESCLRCHSTS_INST : label is 1;
  attribute RST_USED of CDC_AESCLRCHSTS_INST : label is 1;
  attribute SIM_ASSERT_CHK of CDC_AESCLRCHSTS_INST : label is 0;
  attribute VERSION of CDC_AESCLRCHSTS_INST : label is 0;
  attribute XPM_CDC of CDC_AESCLRCHSTS_INST : label is "PULSE";
  attribute XPM_MODULE of CDC_AESCLRCHSTS_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_AUDUFLOW_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_AUDUFLOW_INST : label is 0;
  attribute REG_OUTPUT of CDC_AUDUFLOW_INST : label is 1;
  attribute RST_USED of CDC_AUDUFLOW_INST : label is 1;
  attribute SIM_ASSERT_CHK of CDC_AUDUFLOW_INST : label is 0;
  attribute VERSION of CDC_AUDUFLOW_INST : label is 0;
  attribute XPM_CDC of CDC_AUDUFLOW_INST : label is "PULSE";
  attribute XPM_MODULE of CDC_AUDUFLOW_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_ENABLE_AXIS_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_ENABLE_AXIS_INST : label is 0;
  attribute SIM_ASSERT_CHK of CDC_ENABLE_AXIS_INST : label is 0;
  attribute SRC_INPUT_REG of CDC_ENABLE_AXIS_INST : label is 1;
  attribute VERSION of CDC_ENABLE_AXIS_INST : label is 0;
  attribute XPM_CDC of CDC_ENABLE_AXIS_INST : label is "SINGLE";
  attribute XPM_MODULE of CDC_ENABLE_AXIS_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_ENABLE_MCLK_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_ENABLE_MCLK_INST : label is 0;
  attribute SIM_ASSERT_CHK of CDC_ENABLE_MCLK_INST : label is 0;
  attribute SRC_INPUT_REG of CDC_ENABLE_MCLK_INST : label is 1;
  attribute VERSION of CDC_ENABLE_MCLK_INST : label is 0;
  attribute XPM_CDC of CDC_ENABLE_MCLK_INST : label is "SINGLE";
  attribute XPM_MODULE of CDC_ENABLE_MCLK_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_JUSTIFY_MCLK_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_JUSTIFY_MCLK_INST : label is 0;
  attribute SIM_ASSERT_CHK of CDC_JUSTIFY_MCLK_INST : label is 0;
  attribute SRC_INPUT_REG of CDC_JUSTIFY_MCLK_INST : label is 1;
  attribute VERSION of CDC_JUSTIFY_MCLK_INST : label is 0;
  attribute XPM_CDC of CDC_JUSTIFY_MCLK_INST : label is "SINGLE";
  attribute XPM_MODULE of CDC_JUSTIFY_MCLK_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_LR_MCLK_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_LR_MCLK_INST : label is 0;
  attribute SIM_ASSERT_CHK of CDC_LR_MCLK_INST : label is 0;
  attribute SRC_INPUT_REG of CDC_LR_MCLK_INST : label is 1;
  attribute VERSION of CDC_LR_MCLK_INST : label is 0;
  attribute XPM_CDC of CDC_LR_MCLK_INST : label is "SINGLE";
  attribute XPM_MODULE of CDC_LR_MCLK_INST : label is "TRUE";
  attribute DEF_VAL : string;
  attribute DEF_VAL of CDC_MRST_INST : label is "1'b0";
  attribute DEST_SYNC_FF of CDC_MRST_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_MRST_INST : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of CDC_MRST_INST : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of CDC_MRST_INST : label is 1;
  attribute VERSION of CDC_MRST_INST : label is 0;
  attribute XPM_CDC of CDC_MRST_INST : label is "ASYNC_RST";
  attribute XPM_MODULE of CDC_MRST_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_SCLKDIV_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_SCLKDIV_INST : label is 0;
  attribute SIM_ASSERT_CHK of CDC_SCLKDIV_INST : label is 0;
  attribute SRC_INPUT_REG of CDC_SCLKDIV_INST : label is 1;
  attribute VERSION of CDC_SCLKDIV_INST : label is 0;
  attribute WIDTH of CDC_SCLKDIV_INST : label is 8;
  attribute XPM_CDC of CDC_SCLKDIV_INST : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of CDC_SCLKDIV_INST : label is "TRUE";
  attribute DEST_SYNC_FF of CDC_VALIDITY_AXISCLK_INST : label is 2;
  attribute INIT_SYNC_FF of CDC_VALIDITY_AXISCLK_INST : label is 0;
  attribute SIM_ASSERT_CHK of CDC_VALIDITY_AXISCLK_INST : label is 0;
  attribute SRC_INPUT_REG of CDC_VALIDITY_AXISCLK_INST : label is 1;
  attribute VERSION of CDC_VALIDITY_AXISCLK_INST : label is 0;
  attribute XPM_CDC of CDC_VALIDITY_AXISCLK_INST : label is "SINGLE";
  attribute XPM_MODULE of CDC_VALIDITY_AXISCLK_INST : label is "TRUE";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stmAudChCtrl_reg[0]\ : label is "sIdle:00,sWaitForFIFOLoad:01,sSyncFIFO:10,sWaitForI2sShiftReg:11,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stmAudChCtrl_reg[1]\ : label is "sIdle:00,sWaitForFIFOLoad:01,sSyncFIFO:10,sWaitForI2sShiftReg:11,";
  attribute SOFT_HLUTNM of axis_rAxis_InhibFIFOWrite_i_1 : label is "soft_lutpair71";
  attribute DEST_SYNC_FF of \genblk1[0].CDC_CHMUX_INST\ : label is 2;
  attribute INIT_SYNC_FF of \genblk1[0].CDC_CHMUX_INST\ : label is 0;
  attribute SIM_ASSERT_CHK of \genblk1[0].CDC_CHMUX_INST\ : label is 0;
  attribute SRC_INPUT_REG of \genblk1[0].CDC_CHMUX_INST\ : label is 1;
  attribute VERSION of \genblk1[0].CDC_CHMUX_INST\ : label is 0;
  attribute WIDTH of \genblk1[0].CDC_CHMUX_INST\ : label is 3;
  attribute XPM_CDC of \genblk1[0].CDC_CHMUX_INST\ : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of \genblk1[0].CDC_CHMUX_INST\ : label is "TRUE";
  attribute SOFT_HLUTNM of mclk_rChMuxSelect : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mclk_rChMuxSelect[1][1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mclk_rChMuxSelect[1][3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mclk_rChMuxSelect_inferred__0/i_\ : label is "soft_lutpair69";
begin
AXIS_FIFO_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_async_fifo
     port map (
      D(23) => AXIS_FIFO_INST_n_28,
      D(22) => AXIS_FIFO_INST_n_29,
      D(21) => AXIS_FIFO_INST_n_30,
      D(20) => AXIS_FIFO_INST_n_31,
      D(19) => AXIS_FIFO_INST_n_32,
      D(18) => AXIS_FIFO_INST_n_33,
      D(17) => AXIS_FIFO_INST_n_34,
      D(16) => AXIS_FIFO_INST_n_35,
      D(15) => AXIS_FIFO_INST_n_36,
      D(14) => AXIS_FIFO_INST_n_37,
      D(13) => AXIS_FIFO_INST_n_38,
      D(12) => AXIS_FIFO_INST_n_39,
      D(11) => AXIS_FIFO_INST_n_40,
      D(10) => AXIS_FIFO_INST_n_41,
      D(9) => AXIS_FIFO_INST_n_42,
      D(8) => AXIS_FIFO_INST_n_43,
      D(7) => AXIS_FIFO_INST_n_44,
      D(6) => AXIS_FIFO_INST_n_45,
      D(5) => AXIS_FIFO_INST_n_46,
      D(4) => AXIS_FIFO_INST_n_47,
      D(3) => AXIS_FIFO_INST_n_48,
      D(2) => AXIS_FIFO_INST_n_49,
      D(1) => AXIS_FIFO_INST_n_50,
      D(0) => AXIS_FIFO_INST_n_51,
      E(0) => axis_nAxis_TValid_ToAesDec,
      \FSM_sequential_stmAudChCtrl_reg[0]\ => AXIS_FIFO_INST_n_18,
      \FSM_sequential_stmAudChCtrl_reg[0]_0\ => \genblk4[0].I2S_TX_V1_0_SER_INST_n_1\,
      \FSM_sequential_stmAudChCtrl_reg[1]\ => mclk_rReadCh0_reg_n_0,
      aud_mclk => aud_mclk,
      axis_rAxis_InhibFIFOWrite => axis_rAxis_InhibFIFOWrite,
      axis_rAxis_InhibFIFOWrite_reg => AXIS_FIFO_INST_n_20,
      axis_rAxis_InhibFIFOWrite_reg_0 => AXIS_FIFO_INST_n_80,
      axis_rAxis_Ready => axis_rAxis_Ready,
      data_valid => mclk_nAxis_TValid,
      dest_out => axis_nEnable,
      fifo_rdata_count(7 downto 0) => fifo_rdata_count(7 downto 0),
      fifo_wrdata_count(7 downto 0) => fifo_wrdata_count(7 downto 0),
      \gen_wr_a.gen_word_narrow.mem_reg\(23) => AXIS_FIFO_INST_n_52,
      \gen_wr_a.gen_word_narrow.mem_reg\(22) => AXIS_FIFO_INST_n_53,
      \gen_wr_a.gen_word_narrow.mem_reg\(21) => AXIS_FIFO_INST_n_54,
      \gen_wr_a.gen_word_narrow.mem_reg\(20) => AXIS_FIFO_INST_n_55,
      \gen_wr_a.gen_word_narrow.mem_reg\(19) => AXIS_FIFO_INST_n_56,
      \gen_wr_a.gen_word_narrow.mem_reg\(18) => AXIS_FIFO_INST_n_57,
      \gen_wr_a.gen_word_narrow.mem_reg\(17) => AXIS_FIFO_INST_n_58,
      \gen_wr_a.gen_word_narrow.mem_reg\(16) => AXIS_FIFO_INST_n_59,
      \gen_wr_a.gen_word_narrow.mem_reg\(15) => AXIS_FIFO_INST_n_60,
      \gen_wr_a.gen_word_narrow.mem_reg\(14) => AXIS_FIFO_INST_n_61,
      \gen_wr_a.gen_word_narrow.mem_reg\(13) => AXIS_FIFO_INST_n_62,
      \gen_wr_a.gen_word_narrow.mem_reg\(12) => AXIS_FIFO_INST_n_63,
      \gen_wr_a.gen_word_narrow.mem_reg\(11) => AXIS_FIFO_INST_n_64,
      \gen_wr_a.gen_word_narrow.mem_reg\(10) => AXIS_FIFO_INST_n_65,
      \gen_wr_a.gen_word_narrow.mem_reg\(9) => AXIS_FIFO_INST_n_66,
      \gen_wr_a.gen_word_narrow.mem_reg\(8) => AXIS_FIFO_INST_n_67,
      \gen_wr_a.gen_word_narrow.mem_reg\(7) => AXIS_FIFO_INST_n_68,
      \gen_wr_a.gen_word_narrow.mem_reg\(6) => AXIS_FIFO_INST_n_69,
      \gen_wr_a.gen_word_narrow.mem_reg\(5) => AXIS_FIFO_INST_n_70,
      \gen_wr_a.gen_word_narrow.mem_reg\(4) => AXIS_FIFO_INST_n_71,
      \gen_wr_a.gen_word_narrow.mem_reg\(3) => AXIS_FIFO_INST_n_72,
      \gen_wr_a.gen_word_narrow.mem_reg\(2) => AXIS_FIFO_INST_n_73,
      \gen_wr_a.gen_word_narrow.mem_reg\(1) => AXIS_FIFO_INST_n_74,
      \gen_wr_a.gen_word_narrow.mem_reg\(0) => AXIS_FIFO_INST_n_75,
      \gen_wr_a.gen_word_narrow.mem_reg_0\ => axis_nValidity,
      \genblk2[0].mclk_rAudValid_reg[0]\ => AXIS_FIFO_INST_n_78,
      \genblk2[0].mclk_rAudValid_reg[0]_0\ => \genblk2[0].mclk_rAudValid_reg_n_0_[0]\,
      \genblk2[1].mclk_rAudValid_reg[1]\ => AXIS_FIFO_INST_n_79,
      \grdc.rd_data_count_i_reg[6]\ => AXIS_FIFO_INST_n_17,
      id_check => id_check,
      \mclk_rChMuxSelect_reg[0]\(0) => \mclk_rChMuxSelect_reg[0]\(0),
      \mclk_rChMuxSelect_reg[1]\(3 downto 0) => \mclk_rChMuxSelect_reg[1]\(3 downto 0),
      \mclk_rChMuxSelect_reg[1][3]\(0) => mclk_rAudData,
      \mclk_rChMuxSelect_reg[1][3]_0\(0) => mclk_rAudValid6_out,
      mclk_rReadFIFOInitDone => mclk_rReadFIFOInitDone,
      mclk_rReadFIFOInitDone_reg => mclk_rReadFIFOInitDone_reg_n_0,
      mclk_rReadFromFIFO_reg => AXIS_FIFO_INST_n_76,
      mclk_rReadFromFIFO_reg_0 => AXIS_FIFO_INST_n_77,
      mclk_rReadFromFIFO_reg_1 => mclk_rReadFromFIFO_reg_n_0,
      mclk_rWaveGenCounter_reg(23 downto 0) => mclk_rWaveGenCounter_reg(23 downto 0),
      p_1_in => p_1_in,
      rAesBlockSyncError_other_reg => I2S_TX_V1_0_AES_DECODE_INST_n_2,
      s_axis_aud_aclk => s_axis_aud_aclk,
      s_axis_aud_tdata(31 downto 0) => s_axis_aud_tdata(31 downto 0),
      s_axis_aud_tid(2 downto 0) => s_axis_aud_tid(2 downto 0),
      s_axis_aud_tid_0_sp_1 => AXIS_FIFO_INST_n_22,
      s_axis_aud_tid_1_sp_1 => AXIS_FIFO_INST_n_19,
      s_axis_aud_tready => s_axis_aud_tready,
      s_axis_aud_tvalid => s_axis_aud_tvalid,
      s_axis_aud_tvalid_0(0) => AXIS_FIFO_INST_n_24,
      \stmAudChCtrl__0\(1 downto 0) => \stmAudChCtrl__0\(1 downto 0)
    );
CDC_AESBLKCMPLT_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1\
     port map (
      dest_clk => s_axi_ctrl_aclk,
      dest_pulse => aclk_nAesBlockComplete,
      dest_rst => I2S_TX_V1_0_AXI_INST_n_1,
      src_clk => s_axis_aud_aclk,
      src_pulse => axis_nAesBlockComplete,
      src_rst => iRst10_in
    );
CDC_AESBSYNCERR_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__2\
     port map (
      dest_clk => s_axi_ctrl_aclk,
      dest_pulse => aclk_nAesBlockSyncError,
      dest_rst => I2S_TX_V1_0_AXI_INST_n_1,
      src_clk => s_axis_aud_aclk,
      src_pulse => axis_nAesBlockSyncError,
      src_rst => iRst10_in
    );
CDC_AESCHSTSUPD_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse
     port map (
      dest_clk => s_axi_ctrl_aclk,
      dest_pulse => aclk_nAesChannelStatusChanged,
      dest_rst => I2S_TX_V1_0_AXI_INST_n_1,
      src_clk => s_axis_aud_aclk,
      src_pulse => axis_nAesChannelStatusChanged,
      src_rst => iRst10_in
    );
CDC_AESCHSTSUPD_INST_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_aud_aresetn,
      O => iRst10_in
    );
CDC_AESCHSTS_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1\
     port map (
      dest_clk => s_axi_ctrl_aclk,
      dest_out(191 downto 0) => aclk_nAesChannelStatus(191 downto 0),
      src_clk => s_axis_aud_aclk,
      src_in(191 downto 0) => axis_nAesChannelStatus(191 downto 0)
    );
CDC_AESCLRCHSTS_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__3\
     port map (
      dest_clk => s_axis_aud_aclk,
      dest_pulse => axis_nClearAesChannelStatus,
      dest_rst => iRst10_in,
      src_clk => s_axi_ctrl_aclk,
      src_pulse => aclk_nClearAesChannelStatus,
      src_rst => I2S_TX_V1_0_AXI_INST_n_1
    );
CDC_AUDUFLOW_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0\
     port map (
      dest_clk => s_axi_ctrl_aclk,
      dest_pulse => aclk_nAudioUnderflow,
      dest_rst => I2S_TX_V1_0_AXI_INST_n_1,
      src_clk => aud_mclk,
      src_pulse => mclk_rAudioUnderflow,
      src_rst => aud_mrst
    );
CDC_ENABLE_AXIS_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8\
     port map (
      dest_clk => s_axis_aud_aclk,
      dest_out => axis_nEnable,
      src_clk => s_axi_ctrl_aclk,
      src_in => aclk_nEnable
    );
CDC_ENABLE_MCLK_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5\
     port map (
      dest_clk => aud_mclk,
      dest_out => mclk_nEnable,
      src_clk => s_axi_ctrl_aclk,
      src_in => aclk_nEnable
    );
CDC_JUSTIFY_MCLK_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6\
     port map (
      dest_clk => aud_mclk,
      dest_out => mclk_nJustify,
      src_clk => s_axi_ctrl_aclk,
      src_in => aclk_nJustify
    );
CDC_LR_MCLK_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7\
     port map (
      dest_clk => aud_mclk,
      dest_out => mclk_nLeft_Right,
      src_clk => s_axi_ctrl_aclk,
      src_in => aclk_nLeft_Right
    );
CDC_MRST_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
     port map (
      dest_arst => axis_nMClkInReset,
      dest_clk => s_axis_aud_aclk,
      src_arst => aud_mrst
    );
CDC_SCLKDIV_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0\
     port map (
      dest_clk => aud_mclk,
      dest_out(7 downto 0) => NLW_CDC_SCLKDIV_INST_dest_out_UNCONNECTED(7 downto 0),
      src_clk => s_axi_ctrl_aclk,
      src_in(7 downto 0) => aclk_nSclkDiv(7 downto 0)
    );
CDC_VALIDITY_AXISCLK_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
     port map (
      dest_clk => s_axis_aud_aclk,
      dest_out => axis_nValidity,
      src_clk => s_axi_ctrl_aclk,
      src_in => aclk_nValidity
    );
\FSM_sequential_stmAudChCtrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => AXIS_FIFO_INST_n_17,
      Q => \stmAudChCtrl__0\(0),
      R => iMRst0
    );
\FSM_sequential_stmAudChCtrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => AXIS_FIFO_INST_n_18,
      Q => \stmAudChCtrl__0\(1),
      R => iMRst0
    );
I2S_TX_V1_0_AES_DECODE_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_aes_dec
     port map (
      E(0) => AXIS_FIFO_INST_n_24,
      Q(191 downto 0) => axis_nAesChannelStatus(191 downto 0),
      dest_out => axis_nEnable,
      dest_pulse => axis_nClearAesChannelStatus,
      id_check => id_check,
      id_check_reg_0 => AXIS_FIFO_INST_n_80,
      id_miss_reg_0 => AXIS_FIFO_INST_n_20,
      pre_check_mode_reg_0 => I2S_TX_V1_0_AES_DECODE_INST_n_2,
      pre_check_mode_reg_1 => AXIS_FIFO_INST_n_22,
      rAesBlockSyncError_other_reg_0 => AXIS_FIFO_INST_n_19,
      rAesBlockSyncError_reg_0 => axis_nAesBlockSyncError,
      rAesChannelStatusChange_reg_0 => axis_nAesChannelStatusChanged,
      \rChannelStatusIn_reg[191]_0\(0) => axis_nAxis_TValid_ToAesDec,
      s_axis_aud_aclk => s_axis_aud_aclk,
      s_axis_aud_aresetn => s_axis_aud_aresetn,
      s_axis_aud_tdata(4) => s_axis_aud_tdata(30),
      s_axis_aud_tdata(3 downto 0) => s_axis_aud_tdata(3 downto 0),
      s_axis_aud_tid(2 downto 0) => s_axis_aud_tid(2 downto 0),
      src_pulse => axis_nAesBlockComplete
    );
I2S_TX_V1_0_AXI_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_axi
     port map (
      D(191 downto 0) => aclk_nAesChannelStatus(191 downto 0),
      E(0) => aclk_nAesChannelStatusChanged,
      Q(7 downto 0) => aclk_nSclkDiv(7 downto 0),
      SR(0) => I2S_TX_V1_0_AXI_INST_n_1,
      dest_pulse => aclk_nAesBlockComplete,
      irq => irq,
      oAxi_WReady_reg_0 => oAxi_WReady_reg,
      \rChannelMux_01_reg[2]_0\(2 downto 0) => \aclk_nChMuxSelect[0]_1\(2 downto 0),
      \rIrqStatus_reg[1]_0\ => aclk_nAesBlockSyncError,
      \rIrqStatus_reg[3]_0\ => aclk_nAudioUnderflow,
      rJustify_reg_0 => aclk_nJustify,
      rLeft_Right_reg_0 => aclk_nLeft_Right,
      rValidity_reg_0 => aclk_nValidity,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(7 downto 0) => s_axi_ctrl_araddr(7 downto 0),
      s_axi_ctrl_aresetn => s_axi_ctrl_aresetn,
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(7 downto 0) => s_axi_ctrl_awaddr(7 downto 0),
      s_axi_ctrl_awready => s_axi_ctrl_awready,
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bresp(0) => s_axi_ctrl_bresp(0),
      s_axi_ctrl_bvalid => s_axi_ctrl_bvalid,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rresp(0) => s_axi_ctrl_rresp(0),
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(8 downto 0) => s_axi_ctrl_wdata(8 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      src_in => aclk_nEnable,
      src_pulse => aclk_nClearAesChannelStatus
    );
axis_rAxis_InhibFIFOWrite_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => axis_nMClkInReset,
      I1 => s_axis_aud_aresetn,
      O => axis_rAxis_Ready1
    );
axis_rAxis_InhibFIFOWrite_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => axis_rAxis_Ready1,
      Q => axis_rAxis_InhibFIFOWrite,
      R => '0'
    );
axis_rAxis_Ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aud_aclk,
      CE => '1',
      D => s_axis_aud_aresetn,
      Q => axis_rAxis_Ready,
      R => '0'
    );
\genblk1[0].CDC_CHMUX_INST\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
     port map (
      dest_clk => aud_mclk,
      dest_out(2 downto 0) => \mclk_nChMuxSelect[0]_0\(2 downto 0),
      src_clk => s_axi_ctrl_aclk,
      src_in(2 downto 0) => \aclk_nChMuxSelect[0]_1\(2 downto 0)
    );
\genblk2[0].mclk_rAudData_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_51,
      Q => iAudData(0),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_41,
      Q => iAudData(10),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_40,
      Q => iAudData(11),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_39,
      Q => iAudData(12),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_38,
      Q => iAudData(13),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_37,
      Q => iAudData(14),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_36,
      Q => iAudData(15),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_35,
      Q => iAudData(16),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_34,
      Q => iAudData(17),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_33,
      Q => iAudData(18),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_32,
      Q => iAudData(19),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_50,
      Q => iAudData(1),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_31,
      Q => iAudData(20),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_30,
      Q => iAudData(21),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_29,
      Q => iAudData(22),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_28,
      Q => iAudData(23),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_49,
      Q => iAudData(2),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_48,
      Q => iAudData(3),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_47,
      Q => iAudData(4),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_46,
      Q => iAudData(5),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_45,
      Q => iAudData(6),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_44,
      Q => iAudData(7),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_43,
      Q => iAudData(8),
      R => '0'
    );
\genblk2[0].mclk_rAudData_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudData,
      D => AXIS_FIFO_INST_n_42,
      Q => iAudData(9),
      R => '0'
    );
\genblk2[0].mclk_rAudValid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => AXIS_FIFO_INST_n_78,
      Q => \genblk2[0].mclk_rAudValid_reg_n_0_[0]\,
      R => iMRst0
    );
\genblk2[1].mclk_rAudData_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_75,
      Q => iAudData(24),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_65,
      Q => iAudData(34),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_64,
      Q => iAudData(35),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_63,
      Q => iAudData(36),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_62,
      Q => iAudData(37),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_61,
      Q => iAudData(38),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_60,
      Q => iAudData(39),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_59,
      Q => iAudData(40),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_58,
      Q => iAudData(41),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_57,
      Q => iAudData(42),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_56,
      Q => iAudData(43),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_74,
      Q => iAudData(25),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_55,
      Q => iAudData(44),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_54,
      Q => iAudData(45),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_53,
      Q => iAudData(46),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_52,
      Q => iAudData(47),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_73,
      Q => iAudData(26),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_72,
      Q => iAudData(27),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_71,
      Q => iAudData(28),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_70,
      Q => iAudData(29),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_69,
      Q => iAudData(30),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_68,
      Q => iAudData(31),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_67,
      Q => iAudData(32),
      R => '0'
    );
\genblk2[1].mclk_rAudData_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_rAudValid6_out,
      D => AXIS_FIFO_INST_n_66,
      Q => iAudData(33),
      R => '0'
    );
\genblk2[1].mclk_rAudValid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => AXIS_FIFO_INST_n_79,
      Q => p_1_in,
      R => iMRst0
    );
\genblk4[0].I2S_TX_V1_0_SER_INST\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_ser
     port map (
      \FSM_sequential_stmAudChCtrl_reg[0]\ => \genblk4[0].I2S_TX_V1_0_SER_INST_n_5\,
      \FSM_sequential_stmAudChCtrl_reg[1]\ => \genblk4[0].I2S_TX_V1_0_SER_INST_n_4\,
      aud_mclk => aud_mclk,
      aud_mrst => aud_mrst,
      data_valid => mclk_nAxis_TValid,
      dest_out => mclk_nEnable,
      \genblk2[0].mclk_rAudValid_reg[0]\ => \genblk4[0].I2S_TX_V1_0_SER_INST_n_2\,
      iAudData(47 downto 0) => iAudData(47 downto 0),
      iMRst0 => iMRst0,
      lrclk_in => lrclk_in,
      mclk_nAudCapt_0 => mclk_nAudCapt_0,
      mclk_rAudioUnderflowInhib_reg => mclk_rAudioUnderflowInhib_reg_n_0,
      mclk_rAudioUnderflow_reg => mclk_rReadFIFOInitDone_reg_n_0,
      mclk_rReadCh0_reg => mclk_rReadFromFIFO_reg_n_0,
      mclk_rReadCh0_reg_0 => mclk_rReadCh0_reg_n_0,
      mclk_rReadFIFOInitDone => mclk_rReadFIFOInitDone,
      \mclk_rWaveGenCounter_reg[0]\ => mclk_nJustify,
      p_1_in => p_1_in,
      rSClkDelayed_reg_0 => \genblk4[0].I2S_TX_V1_0_SER_INST_n_1\,
      \rSDataOut_reg[0]_0\ => \genblk2[0].mclk_rAudValid_reg_n_0_[0]\,
      \rSDataOut_reg[23]_0\ => mclk_nLeft_Right,
      sclk_in => sclk_in,
      sdata_0_out => sdata_0_out,
      \stmAudChCtrl__0\(1 downto 0) => \stmAudChCtrl__0\(1 downto 0)
    );
mclk_rAudioUnderflowInhib_reg: unisim.vcomponents.FDSE
     port map (
      C => aud_mclk,
      CE => '1',
      D => \genblk4[0].I2S_TX_V1_0_SER_INST_n_5\,
      Q => mclk_rAudioUnderflowInhib_reg_n_0,
      S => iMRst0
    );
mclk_rAudioUnderflow_reg: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => \genblk4[0].I2S_TX_V1_0_SER_INST_n_2\,
      Q => mclk_rAudioUnderflow,
      R => '0'
    );
mclk_rChMuxSelect: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \mclk_nChMuxSelect[0]_0\(1),
      I1 => \mclk_nChMuxSelect[0]_0\(0),
      I2 => \mclk_nChMuxSelect[0]_0\(2),
      O => mclk_rChMuxSelect_n_0
    );
\mclk_rChMuxSelect[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \mclk_nChMuxSelect[0]_0\(2),
      I1 => \mclk_nChMuxSelect[0]_0\(1),
      I2 => \mclk_nChMuxSelect[0]_0\(0),
      O => \mclk_rChMuxSelect[1][1]_i_1_n_0\
    );
\mclk_rChMuxSelect[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \mclk_nChMuxSelect[0]_0\(0),
      I1 => \mclk_nChMuxSelect[0]_0\(2),
      I2 => \mclk_nChMuxSelect[0]_0\(1),
      O => \mclk_rChMuxSelect[1][2]_i_1_n_0\
    );
\mclk_rChMuxSelect[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \mclk_nChMuxSelect[0]_0\(0),
      I1 => \mclk_nChMuxSelect[0]_0\(1),
      I2 => \mclk_nChMuxSelect[0]_0\(2),
      O => \mclk_rChMuxSelect[1][3]_i_1_n_0\
    );
\mclk_rChMuxSelect_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5E"
    )
        port map (
      I0 => \mclk_nChMuxSelect[0]_0\(1),
      I1 => \mclk_nChMuxSelect[0]_0\(0),
      I2 => \mclk_nChMuxSelect[0]_0\(2),
      O => \mclk_rChMuxSelect_inferred__0/i__n_0\
    );
\mclk_rChMuxSelect_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => mclk_rChMuxSelect_n_0,
      Q => \mclk_rChMuxSelect_reg[0]\(0),
      R => '0'
    );
\mclk_rChMuxSelect_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => \mclk_rChMuxSelect_inferred__0/i__n_0\,
      Q => \mclk_rChMuxSelect_reg[1]\(0),
      R => '0'
    );
\mclk_rChMuxSelect_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => \mclk_rChMuxSelect[1][1]_i_1_n_0\,
      Q => \mclk_rChMuxSelect_reg[1]\(1),
      R => '0'
    );
\mclk_rChMuxSelect_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => \mclk_rChMuxSelect[1][2]_i_1_n_0\,
      Q => \mclk_rChMuxSelect_reg[1]\(2),
      R => '0'
    );
\mclk_rChMuxSelect_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => \mclk_rChMuxSelect[1][3]_i_1_n_0\,
      Q => \mclk_rChMuxSelect_reg[1]\(3),
      R => '0'
    );
mclk_rReadCh0_reg: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => \genblk4[0].I2S_TX_V1_0_SER_INST_n_4\,
      Q => mclk_rReadCh0_reg_n_0,
      R => iMRst0
    );
mclk_rReadFIFOInitDone_reg: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => AXIS_FIFO_INST_n_77,
      Q => mclk_rReadFIFOInitDone_reg_n_0,
      R => iMRst0
    );
mclk_rReadFromFIFO_reg: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => '1',
      D => AXIS_FIFO_INST_n_76,
      Q => mclk_rReadFromFIFO_reg_n_0,
      R => iMRst0
    );
\mclk_rWaveGenCounter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mclk_rWaveGenCounter_reg(0),
      O => \mclk_rWaveGenCounter[0]_i_3_n_0\
    );
\mclk_rWaveGenCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[0]_i_2_n_7\,
      Q => mclk_rWaveGenCounter_reg(0),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mclk_rWaveGenCounter_reg[0]_i_2_n_0\,
      CO(2) => \mclk_rWaveGenCounter_reg[0]_i_2_n_1\,
      CO(1) => \mclk_rWaveGenCounter_reg[0]_i_2_n_2\,
      CO(0) => \mclk_rWaveGenCounter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \mclk_rWaveGenCounter_reg[0]_i_2_n_4\,
      O(2) => \mclk_rWaveGenCounter_reg[0]_i_2_n_5\,
      O(1) => \mclk_rWaveGenCounter_reg[0]_i_2_n_6\,
      O(0) => \mclk_rWaveGenCounter_reg[0]_i_2_n_7\,
      S(3 downto 1) => mclk_rWaveGenCounter_reg(3 downto 1),
      S(0) => \mclk_rWaveGenCounter[0]_i_3_n_0\
    );
\mclk_rWaveGenCounter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[8]_i_1_n_5\,
      Q => mclk_rWaveGenCounter_reg(10),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[8]_i_1_n_4\,
      Q => mclk_rWaveGenCounter_reg(11),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[12]_i_1_n_7\,
      Q => mclk_rWaveGenCounter_reg(12),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mclk_rWaveGenCounter_reg[8]_i_1_n_0\,
      CO(3) => \mclk_rWaveGenCounter_reg[12]_i_1_n_0\,
      CO(2) => \mclk_rWaveGenCounter_reg[12]_i_1_n_1\,
      CO(1) => \mclk_rWaveGenCounter_reg[12]_i_1_n_2\,
      CO(0) => \mclk_rWaveGenCounter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mclk_rWaveGenCounter_reg[12]_i_1_n_4\,
      O(2) => \mclk_rWaveGenCounter_reg[12]_i_1_n_5\,
      O(1) => \mclk_rWaveGenCounter_reg[12]_i_1_n_6\,
      O(0) => \mclk_rWaveGenCounter_reg[12]_i_1_n_7\,
      S(3 downto 0) => mclk_rWaveGenCounter_reg(15 downto 12)
    );
\mclk_rWaveGenCounter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[12]_i_1_n_6\,
      Q => mclk_rWaveGenCounter_reg(13),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[12]_i_1_n_5\,
      Q => mclk_rWaveGenCounter_reg(14),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[12]_i_1_n_4\,
      Q => mclk_rWaveGenCounter_reg(15),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[16]_i_1_n_7\,
      Q => mclk_rWaveGenCounter_reg(16),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mclk_rWaveGenCounter_reg[12]_i_1_n_0\,
      CO(3) => \mclk_rWaveGenCounter_reg[16]_i_1_n_0\,
      CO(2) => \mclk_rWaveGenCounter_reg[16]_i_1_n_1\,
      CO(1) => \mclk_rWaveGenCounter_reg[16]_i_1_n_2\,
      CO(0) => \mclk_rWaveGenCounter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mclk_rWaveGenCounter_reg[16]_i_1_n_4\,
      O(2) => \mclk_rWaveGenCounter_reg[16]_i_1_n_5\,
      O(1) => \mclk_rWaveGenCounter_reg[16]_i_1_n_6\,
      O(0) => \mclk_rWaveGenCounter_reg[16]_i_1_n_7\,
      S(3 downto 0) => mclk_rWaveGenCounter_reg(19 downto 16)
    );
\mclk_rWaveGenCounter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[16]_i_1_n_6\,
      Q => mclk_rWaveGenCounter_reg(17),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[16]_i_1_n_5\,
      Q => mclk_rWaveGenCounter_reg(18),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[16]_i_1_n_4\,
      Q => mclk_rWaveGenCounter_reg(19),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[0]_i_2_n_6\,
      Q => mclk_rWaveGenCounter_reg(1),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[20]_i_1_n_7\,
      Q => mclk_rWaveGenCounter_reg(20),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mclk_rWaveGenCounter_reg[16]_i_1_n_0\,
      CO(3) => \NLW_mclk_rWaveGenCounter_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \mclk_rWaveGenCounter_reg[20]_i_1_n_1\,
      CO(1) => \mclk_rWaveGenCounter_reg[20]_i_1_n_2\,
      CO(0) => \mclk_rWaveGenCounter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mclk_rWaveGenCounter_reg[20]_i_1_n_4\,
      O(2) => \mclk_rWaveGenCounter_reg[20]_i_1_n_5\,
      O(1) => \mclk_rWaveGenCounter_reg[20]_i_1_n_6\,
      O(0) => \mclk_rWaveGenCounter_reg[20]_i_1_n_7\,
      S(3 downto 0) => mclk_rWaveGenCounter_reg(23 downto 20)
    );
\mclk_rWaveGenCounter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[20]_i_1_n_6\,
      Q => mclk_rWaveGenCounter_reg(21),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[20]_i_1_n_5\,
      Q => mclk_rWaveGenCounter_reg(22),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[20]_i_1_n_4\,
      Q => mclk_rWaveGenCounter_reg(23),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[0]_i_2_n_5\,
      Q => mclk_rWaveGenCounter_reg(2),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[0]_i_2_n_4\,
      Q => mclk_rWaveGenCounter_reg(3),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[4]_i_1_n_7\,
      Q => mclk_rWaveGenCounter_reg(4),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mclk_rWaveGenCounter_reg[0]_i_2_n_0\,
      CO(3) => \mclk_rWaveGenCounter_reg[4]_i_1_n_0\,
      CO(2) => \mclk_rWaveGenCounter_reg[4]_i_1_n_1\,
      CO(1) => \mclk_rWaveGenCounter_reg[4]_i_1_n_2\,
      CO(0) => \mclk_rWaveGenCounter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mclk_rWaveGenCounter_reg[4]_i_1_n_4\,
      O(2) => \mclk_rWaveGenCounter_reg[4]_i_1_n_5\,
      O(1) => \mclk_rWaveGenCounter_reg[4]_i_1_n_6\,
      O(0) => \mclk_rWaveGenCounter_reg[4]_i_1_n_7\,
      S(3 downto 0) => mclk_rWaveGenCounter_reg(7 downto 4)
    );
\mclk_rWaveGenCounter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[4]_i_1_n_6\,
      Q => mclk_rWaveGenCounter_reg(5),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[4]_i_1_n_5\,
      Q => mclk_rWaveGenCounter_reg(6),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[4]_i_1_n_4\,
      Q => mclk_rWaveGenCounter_reg(7),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[8]_i_1_n_7\,
      Q => mclk_rWaveGenCounter_reg(8),
      R => iMRst0
    );
\mclk_rWaveGenCounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mclk_rWaveGenCounter_reg[4]_i_1_n_0\,
      CO(3) => \mclk_rWaveGenCounter_reg[8]_i_1_n_0\,
      CO(2) => \mclk_rWaveGenCounter_reg[8]_i_1_n_1\,
      CO(1) => \mclk_rWaveGenCounter_reg[8]_i_1_n_2\,
      CO(0) => \mclk_rWaveGenCounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mclk_rWaveGenCounter_reg[8]_i_1_n_4\,
      O(2) => \mclk_rWaveGenCounter_reg[8]_i_1_n_5\,
      O(1) => \mclk_rWaveGenCounter_reg[8]_i_1_n_6\,
      O(0) => \mclk_rWaveGenCounter_reg[8]_i_1_n_7\,
      S(3 downto 0) => mclk_rWaveGenCounter_reg(11 downto 8)
    );
\mclk_rWaveGenCounter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aud_mclk,
      CE => mclk_nAudCapt_0,
      D => \mclk_rWaveGenCounter_reg[8]_i_1_n_6\,
      Q => mclk_rWaveGenCounter_reg(9),
      R => iMRst0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2 is
  port (
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    aud_mclk : in STD_LOGIC;
    aud_mrst : in STD_LOGIC;
    s_axis_aud_aclk : in STD_LOGIC;
    s_axis_aud_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq : out STD_LOGIC;
    lrclk_out : out STD_LOGIC;
    sclk_out : out STD_LOGIC;
    lrclk_in : in STD_LOGIC;
    sclk_in : in STD_LOGIC;
    sdata_0_out : out STD_LOGIC;
    sdata_1_out : out STD_LOGIC;
    sdata_2_out : out STD_LOGIC;
    sdata_3_out : out STD_LOGIC;
    s_axis_aud_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_aud_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_aud_tvalid : in STD_LOGIC;
    s_axis_aud_tready : out STD_LOGIC;
    fifo_wrdata_count : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_rdata_count : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_DEPTH : integer;
  attribute C_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2 : entity is 128;
  attribute C_DWIDTH : integer;
  attribute C_DWIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2 : entity is 24;
  attribute C_IS_MASTER : integer;
  attribute C_IS_MASTER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2 : entity is 0;
  attribute C_NUM_CHANNELS : integer;
  attribute C_NUM_CHANNELS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2 : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \^fifo_rdata_count\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^fifo_wrdata_count\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^lrclk_in\ : STD_LOGIC;
  signal \^s_axi_ctrl_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_ctrl_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^sclk_in\ : STD_LOGIC;
begin
  \^lrclk_in\ <= lrclk_in;
  \^sclk_in\ <= sclk_in;
  fifo_rdata_count(15) <= \<const0>\;
  fifo_rdata_count(14) <= \<const0>\;
  fifo_rdata_count(13) <= \<const0>\;
  fifo_rdata_count(12) <= \<const0>\;
  fifo_rdata_count(11) <= \<const0>\;
  fifo_rdata_count(10) <= \<const0>\;
  fifo_rdata_count(9) <= \<const0>\;
  fifo_rdata_count(8) <= \<const0>\;
  fifo_rdata_count(7 downto 0) <= \^fifo_rdata_count\(7 downto 0);
  fifo_wrdata_count(15) <= \<const0>\;
  fifo_wrdata_count(14) <= \<const0>\;
  fifo_wrdata_count(13) <= \<const0>\;
  fifo_wrdata_count(12) <= \<const0>\;
  fifo_wrdata_count(11) <= \<const0>\;
  fifo_wrdata_count(10) <= \<const0>\;
  fifo_wrdata_count(9) <= \<const0>\;
  fifo_wrdata_count(8) <= \<const0>\;
  fifo_wrdata_count(7 downto 0) <= \^fifo_wrdata_count\(7 downto 0);
  lrclk_out <= \^lrclk_in\;
  s_axi_ctrl_bresp(1) <= \^s_axi_ctrl_bresp\(1);
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \^s_axi_ctrl_rresp\(1);
  s_axi_ctrl_rresp(0) <= \<const0>\;
  sclk_out <= \^sclk_in\;
  sdata_1_out <= \<const0>\;
  sdata_2_out <= \<const0>\;
  sdata_3_out <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
I2S_TX_V1_0_SYS_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2_sys
     port map (
      aud_mclk => aud_mclk,
      aud_mrst => aud_mrst,
      fifo_rdata_count(7 downto 0) => \^fifo_rdata_count\(7 downto 0),
      fifo_wrdata_count(7 downto 0) => \^fifo_wrdata_count\(7 downto 0),
      irq => irq,
      lrclk_in => \^lrclk_in\,
      oAxi_WReady_reg => s_axi_ctrl_wready,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(7 downto 0) => s_axi_ctrl_araddr(7 downto 0),
      s_axi_ctrl_aresetn => s_axi_ctrl_aresetn,
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(7 downto 0) => s_axi_ctrl_awaddr(7 downto 0),
      s_axi_ctrl_awready => s_axi_ctrl_awready,
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bresp(0) => \^s_axi_ctrl_bresp\(1),
      s_axi_ctrl_bvalid => s_axi_ctrl_bvalid,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rresp(0) => \^s_axi_ctrl_rresp\(1),
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(8) => s_axi_ctrl_wdata(31),
      s_axi_ctrl_wdata(7 downto 0) => s_axi_ctrl_wdata(7 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      s_axis_aud_aclk => s_axis_aud_aclk,
      s_axis_aud_aresetn => s_axis_aud_aresetn,
      s_axis_aud_tdata(31 downto 0) => s_axis_aud_tdata(31 downto 0),
      s_axis_aud_tid(2 downto 0) => s_axis_aud_tid(2 downto 0),
      s_axis_aud_tready => s_axis_aud_tready,
      s_axis_aud_tvalid => s_axis_aud_tvalid,
      sclk_in => \^sclk_in\,
      sdata_0_out => sdata_0_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    aud_mclk : in STD_LOGIC;
    aud_mrst : in STD_LOGIC;
    s_axis_aud_aclk : in STD_LOGIC;
    s_axis_aud_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq : out STD_LOGIC;
    lrclk_in : in STD_LOGIC;
    sclk_in : in STD_LOGIC;
    sdata_0_out : out STD_LOGIC;
    s_axis_aud_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_aud_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_aud_tvalid : in STD_LOGIC;
    s_axis_aud_tready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_i2s_transmitter_0_0,i2s_transmitter_v1_0_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "i2s_transmitter_v1_0_2,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_lrclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sdata_1_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sdata_2_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sdata_3_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_fifo_rdata_count_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_fifo_wrdata_count_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute C_DEPTH : integer;
  attribute C_DEPTH of inst : label is 128;
  attribute C_DWIDTH : integer;
  attribute C_DWIDTH of inst : label is 24;
  attribute C_IS_MASTER : integer;
  attribute C_IS_MASTER of inst : label is 0;
  attribute C_NUM_CHANNELS : integer;
  attribute C_NUM_CHANNELS of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aud_mclk : signal is "xilinx.com:signal:clock:1.0 aud_mclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aud_mclk : signal is "XIL_INTERFACENAME aud_mclk, ASSOCIATED_RESET aud_mrst, FREQ_HZ 11904749, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aud_mrst : signal is "xilinx.com:signal:reset:1.0 aud_mrst RST";
  attribute X_INTERFACE_PARAMETER of aud_mrst : signal is "XIL_INTERFACENAME aud_mrst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_ctrl_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_ctrl_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_aclk : signal is "XIL_INTERFACENAME s_axi_ctrl_aclk, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET s_axi_ctrl_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_ctrl_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_aresetn : signal is "XIL_INTERFACENAME s_axi_ctrl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute X_INTERFACE_INFO of s_axis_aud_aclk : signal is "xilinx.com:signal:clock:1.0 s_axis_aud_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aud_aclk : signal is "XIL_INTERFACENAME s_axis_aud_aclk, ASSOCIATED_BUSIF s_axis_aud, ASSOCIATED_RESET s_axis_aud_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aud_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axis_aud_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aud_aresetn : signal is "XIL_INTERFACENAME s_axis_aud_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aud_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_aud TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_aud_tready : signal is "XIL_INTERFACENAME s_axis_aud, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aud_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_aud TVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_rresp : signal is "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 49999947, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute X_INTERFACE_INFO of s_axis_aud_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_aud TDATA";
  attribute X_INTERFACE_INFO of s_axis_aud_tid : signal is "xilinx.com:interface:axis:1.0 s_axis_aud TID";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_transmitter_v1_0_2
     port map (
      aud_mclk => aud_mclk,
      aud_mrst => aud_mrst,
      fifo_rdata_count(15 downto 0) => NLW_inst_fifo_rdata_count_UNCONNECTED(15 downto 0),
      fifo_wrdata_count(15 downto 0) => NLW_inst_fifo_wrdata_count_UNCONNECTED(15 downto 0),
      irq => irq,
      lrclk_in => lrclk_in,
      lrclk_out => NLW_inst_lrclk_out_UNCONNECTED,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(7 downto 0) => s_axi_ctrl_araddr(7 downto 0),
      s_axi_ctrl_aresetn => s_axi_ctrl_aresetn,
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(7 downto 0) => s_axi_ctrl_awaddr(7 downto 0),
      s_axi_ctrl_awready => s_axi_ctrl_awready,
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      s_axi_ctrl_bvalid => s_axi_ctrl_bvalid,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wready => s_axi_ctrl_wready,
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      s_axis_aud_aclk => s_axis_aud_aclk,
      s_axis_aud_aresetn => s_axis_aud_aresetn,
      s_axis_aud_tdata(31 downto 0) => s_axis_aud_tdata(31 downto 0),
      s_axis_aud_tid(2 downto 0) => s_axis_aud_tid(2 downto 0),
      s_axis_aud_tready => s_axis_aud_tready,
      s_axis_aud_tvalid => s_axis_aud_tvalid,
      sclk_in => sclk_in,
      sclk_out => NLW_inst_sclk_out_UNCONNECTED,
      sdata_0_out => sdata_0_out,
      sdata_1_out => NLW_inst_sdata_1_out_UNCONNECTED,
      sdata_2_out => NLW_inst_sdata_2_out_UNCONNECTED,
      sdata_3_out => NLW_inst_sdata_3_out_UNCONNECTED
    );
end STRUCTURE;
