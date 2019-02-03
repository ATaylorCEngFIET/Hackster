-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Dec  3 15:45:17 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/hdl_projects/Zybo_EV_Platform/block_compile.srcs/sources_1/bd/design_1/ip/design_1_MIPI_D_PHY_RX_0_0_1/design_1_MIPI_D_PHY_RX_0_0_sim_netlist.vhdl
-- Design      : design_1_MIPI_D_PHY_RX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_GlitchFilter is
  port (
    \Filter.sOut_reg_0\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \cDelayCnt_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \Filter.sOut_reg_1\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]\ : in STD_LOGIC;
    \cDelayCnt_reg[6]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter : entity is "GlitchFilter";
end design_1_MIPI_D_PHY_RX_0_0_GlitchFilter;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter is
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__1_n_0\ : STD_LOGIC;
  signal \^filter.sout_reg_0\ : STD_LOGIC;
  signal cntPeriods : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \Filter.sOut_i_1__1\ : label is "soft_lutpair64";
begin
  \Filter.sOut_reg_0\ <= \^filter.sout_reg_0\;
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FF8"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => cntPeriods(0),
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => cntPeriods(1),
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => cntPeriods(0),
      I2 => cntPeriods(1),
      I3 => \^filter.sout_reg_0\,
      O => \Filter.sOut_i_1__1_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__1_n_0\,
      Q => \^filter.sout_reg_0\,
      R => '0'
    );
\cDelayCnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFFFFFFFF8F00"
    )
        port map (
      I0 => \^filter.sout_reg_0\,
      I1 => \Filter.sOut_reg_1\,
      I2 => \cDelayCnt_reg[6]\,
      I3 => \state_reg[2]\,
      I4 => \state_reg[1]\,
      I5 => \state_reg[0]_0\,
      O => \cDelayCnt_reg[0]\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F070F070627F6270"
    )
        port map (
      I0 => \^filter.sout_reg_0\,
      I1 => \Filter.sOut_reg_1\,
      I2 => \state_reg[0]_0\,
      I3 => \state_reg[1]\,
      I4 => \oSyncStages_reg[1]\(0),
      I5 => \state_reg[2]\,
      O => \state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_18 is
  port (
    \Filter.sOut_reg_0\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \cDelayCnt_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \Filter.sOut_reg_1\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]\ : in STD_LOGIC;
    \cDelayCnt_reg[6]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_18 : entity is "GlitchFilter";
end design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_18;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_18 is
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__3_n_0\ : STD_LOGIC;
  signal \^filter.sout_reg_0\ : STD_LOGIC;
  signal cntPeriods : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Filter.sOut_i_1__3\ : label is "soft_lutpair33";
begin
  \Filter.sOut_reg_0\ <= \^filter.sout_reg_0\;
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FF8"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => cntPeriods(0),
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => cntPeriods(1),
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => cntPeriods(0),
      I2 => cntPeriods(1),
      I3 => \^filter.sout_reg_0\,
      O => \Filter.sOut_i_1__3_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__3_n_0\,
      Q => \^filter.sout_reg_0\,
      R => '0'
    );
\cDelayCnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFFFFFFFF8F00"
    )
        port map (
      I0 => \^filter.sout_reg_0\,
      I1 => \Filter.sOut_reg_1\,
      I2 => \cDelayCnt_reg[6]\,
      I3 => \state_reg[2]\,
      I4 => \state_reg[1]\,
      I5 => \state_reg[0]_0\,
      O => \cDelayCnt_reg[0]\
    );
\state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F070F070627F6270"
    )
        port map (
      I0 => \^filter.sout_reg_0\,
      I1 => \Filter.sOut_reg_1\,
      I2 => \state_reg[0]_0\,
      I3 => \state_reg[1]\,
      I4 => \oSyncStages_reg[1]\(0),
      I5 => \state_reg[2]\,
      O => \state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_20 is
  port (
    \Filter.sOut_reg_0\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    cHSReset_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    cDelayCnt_reg : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \state_reg[2]\ : in STD_LOGIC;
    \cDelayCnt_reg[9]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \Filter.sOut_reg_1\ : in STD_LOGIC;
    \cDelayCnt_reg[6]\ : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_20 : entity is "GlitchFilter";
end design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_20;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_20 is
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__4_n_0\ : STD_LOGIC;
  signal \^filter.sout_reg_0\ : STD_LOGIC;
  signal \cHSReset_i_2__0_n_0\ : STD_LOGIC;
  signal cntPeriods : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Filter.sOut_i_1__4\ : label is "soft_lutpair34";
begin
  \Filter.sOut_reg_0\ <= \^filter.sout_reg_0\;
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FF8"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => cntPeriods(0),
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => cntPeriods(1),
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => cntPeriods(0),
      I2 => cntPeriods(1),
      I3 => \^filter.sout_reg_0\,
      O => \Filter.sOut_i_1__4_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__4_n_0\,
      Q => \^filter.sout_reg_0\,
      R => '0'
    );
\cHSReset_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557500000030"
    )
        port map (
      I0 => \cHSReset_i_2__0_n_0\,
      I1 => \oSyncStages_reg[1]\(0),
      I2 => \state_reg[1]\,
      I3 => \state_reg[2]\,
      I4 => \state_reg[0]_0\,
      I5 => AS(0),
      O => cHSReset_reg
    );
\cHSReset_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002024200000040"
    )
        port map (
      I0 => \state_reg[2]\,
      I1 => \state_reg[0]_0\,
      I2 => \state_reg[1]\,
      I3 => \^filter.sout_reg_0\,
      I4 => \Filter.sOut_reg_1\,
      I5 => \cDelayCnt_reg[6]\,
      O => \cHSReset_i_2__0_n_0\
    );
\state[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400F0000400000"
    )
        port map (
      I0 => cDelayCnt_reg(2),
      I1 => \state[0]_i_5_n_0\,
      I2 => cDelayCnt_reg(0),
      I3 => cDelayCnt_reg(1),
      I4 => \state_reg[2]\,
      I5 => \cDelayCnt_reg[9]\,
      O => \state_reg[0]\
    );
\state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010001"
    )
        port map (
      I0 => cDelayCnt_reg(3),
      I1 => cDelayCnt_reg(4),
      I2 => cDelayCnt_reg(5),
      I3 => \state_reg[1]\,
      I4 => \^filter.sout_reg_0\,
      I5 => \Filter.sOut_reg_1\,
      O => \state[0]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_27 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_27 : entity is "GlitchFilter";
end design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_27;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_27 is
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1_n_0\ : STD_LOGIC;
  signal cntPeriods : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sIn_q : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1\ : label is "soft_lutpair0";
begin
  in0(0) <= \^in0\(0);
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFFFF4F"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \oSyncStages_reg[1]\(0),
      I3 => \out\(0),
      I4 => sIn_q,
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFFFF8F"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \oSyncStages_reg[1]\(0),
      I3 => \out\(0),
      I4 => sIn_q,
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => cntPeriods(0),
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => cntPeriods(1),
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => sIn_q,
      R => '0'
    );
\Filter.sOut_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => sIn_q,
      I1 => cntPeriods(0),
      I2 => cntPeriods(1),
      I3 => \^in0\(0),
      O => \Filter.sOut_i_1_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1_n_0\,
      Q => \^in0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_29 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_29 : entity is "GlitchFilter";
end design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_29;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_29 is
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__0_n_0\ : STD_LOGIC;
  signal cntPeriods : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1\ : label is "soft_lutpair1";
begin
  in0(0) <= \^in0\(0);
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFFFF4F"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \oSyncStages_reg[1]\(0),
      I3 => \out\(0),
      I4 => \Filter.sIn_q_reg_n_0\,
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFFFF8F"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \oSyncStages_reg[1]\(0),
      I3 => \out\(0),
      I4 => \Filter.sIn_q_reg_n_0\,
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => cntPeriods(0),
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => cntPeriods(1),
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => cntPeriods(0),
      I2 => cntPeriods(1),
      I3 => \^in0\(0),
      O => \Filter.sOut_i_1__0_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__0_n_0\,
      Q => \^in0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_8 is
  port (
    \Filter.sOut_reg_0\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    cHSReset_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    cDelayCnt_reg : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \state_reg[2]\ : in STD_LOGIC;
    \cDelayCnt_reg[9]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \Filter.sOut_reg_1\ : in STD_LOGIC;
    \cDelayCnt_reg[6]\ : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_8 : entity is "GlitchFilter";
end design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_8;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_8 is
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__2_n_0\ : STD_LOGIC;
  signal \^filter.sout_reg_0\ : STD_LOGIC;
  signal cHSReset_i_2_n_0 : STD_LOGIC;
  signal cntPeriods : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_5__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \Filter.sOut_i_1__2\ : label is "soft_lutpair65";
begin
  \Filter.sOut_reg_0\ <= \^filter.sout_reg_0\;
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FF8"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => cntPeriods(0),
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => cntPeriods(1),
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => cntPeriods(0),
      I2 => cntPeriods(1),
      I3 => \^filter.sout_reg_0\,
      O => \Filter.sOut_i_1__2_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__2_n_0\,
      Q => \^filter.sout_reg_0\,
      R => '0'
    );
cHSReset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557500000030"
    )
        port map (
      I0 => cHSReset_i_2_n_0,
      I1 => \oSyncStages_reg[1]\(0),
      I2 => \state_reg[1]\,
      I3 => \state_reg[2]\,
      I4 => \state_reg[0]_0\,
      I5 => AS(0),
      O => cHSReset_reg
    );
cHSReset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002024200000040"
    )
        port map (
      I0 => \state_reg[2]\,
      I1 => \state_reg[0]_0\,
      I2 => \state_reg[1]\,
      I3 => \^filter.sout_reg_0\,
      I4 => \Filter.sOut_reg_1\,
      I5 => \cDelayCnt_reg[6]\,
      O => cHSReset_i_2_n_0
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400F0000400000"
    )
        port map (
      I0 => cDelayCnt_reg(2),
      I1 => \state[0]_i_5__0_n_0\,
      I2 => cDelayCnt_reg(0),
      I3 => cDelayCnt_reg(1),
      I4 => \state_reg[2]\,
      I5 => \cDelayCnt_reg[9]\,
      O => \state_reg[0]\
    );
\state[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010001"
    )
        port map (
      I0 => cDelayCnt_reg(3),
      I1 => cDelayCnt_reg(4),
      I2 => cDelayCnt_reg(5),
      I3 => \state_reg[1]\,
      I4 => \^filter.sout_reg_0\,
      I5 => \Filter.sOut_reg_1\,
      O => \state[0]_i_5__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_InputBuffer is
  port (
    aHS : out STD_LOGIC;
    aLP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_InputBuffer : entity is "InputBuffer";
end design_1_MIPI_D_PHY_RX_0_0_InputBuffer;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_InputBuffer is
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of LaneHighSpeed : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of LaneHighSpeed : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of LaneHighSpeed : label is "AUTO";
  attribute box_type : string;
  attribute box_type of LaneHighSpeed : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower0\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower0\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower1\ : label is "PRIMITIVE";
begin
LaneHighSpeed: unisim.vcomponents.IBUFDS
     port map (
      I => dphy_clk_hs_p,
      IB => dphy_clk_hs_n,
      O => aHS
    );
\LaneWithLP.LaneLowPower0\: unisim.vcomponents.IBUF
     port map (
      I => dphy_clk_lp_n,
      O => aLP(0)
    );
\LaneWithLP.LaneLowPower1\: unisim.vcomponents.IBUF
     port map (
      I => dphy_clk_lp_p,
      O => aLP(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0\ is
  port (
    aHS : out STD_LOGIC;
    aLP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0\ : entity is "InputBuffer";
end \design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0\ is
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of LaneHighSpeed : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of LaneHighSpeed : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of LaneHighSpeed : label is "AUTO";
  attribute box_type : string;
  attribute box_type of LaneHighSpeed : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower0\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower0\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower1\ : label is "PRIMITIVE";
begin
LaneHighSpeed: unisim.vcomponents.IBUFDS
     port map (
      I => dphy_data_hs_p(0),
      IB => dphy_data_hs_n(0),
      O => aHS
    );
\LaneWithLP.LaneLowPower0\: unisim.vcomponents.IBUF
     port map (
      I => dphy_data_lp_n(0),
      O => aLP(0)
    );
\LaneWithLP.LaneLowPower1\: unisim.vcomponents.IBUF
     port map (
      I => dphy_data_lp_p(0),
      O => aLP(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0_1\ is
  port (
    aHS : out STD_LOGIC;
    aLP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0_1\ : entity is "InputBuffer";
end \design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0_1\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0_1\ is
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of LaneHighSpeed : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of LaneHighSpeed : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of LaneHighSpeed : label is "AUTO";
  attribute box_type : string;
  attribute box_type of LaneHighSpeed : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower0\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower0\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower1\ : label is "PRIMITIVE";
begin
LaneHighSpeed: unisim.vcomponents.IBUFDS
     port map (
      I => dphy_data_hs_p(0),
      IB => dphy_data_hs_n(0),
      O => aHS
    );
\LaneWithLP.LaneLowPower0\: unisim.vcomponents.IBUF
     port map (
      I => dphy_data_lp_n(0),
      O => aLP(0)
    );
\LaneWithLP.LaneLowPower1\: unisim.vcomponents.IBUF
     port map (
      I => dphy_data_lp_p(0),
      O => aLP(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver_S_AXI_Lite is
  port (
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver_S_AXI_Lite : entity is "MIPI_DPHY_Receiver_S_AXI_Lite";
end design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver_S_AXI_Lite;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver_S_AXI_Lite is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \control_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \control_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_lite_arready\ : STD_LOGIC;
  signal \^s_axi_lite_awready\ : STD_LOGIC;
  signal \^s_axi_lite_bvalid\ : STD_LOGIC;
  signal \^s_axi_lite_rvalid\ : STD_LOGIC;
  signal \^s_axi_lite_wready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \control_reg[31]_i_2\ : label is "soft_lutpair68";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  s_axi_lite_arready <= \^s_axi_lite_arready\;
  s_axi_lite_awready <= \^s_axi_lite_awready\;
  s_axi_lite_bvalid <= \^s_axi_lite_bvalid\;
  s_axi_lite_rvalid <= \^s_axi_lite_rvalid\;
  s_axi_lite_wready <= \^s_axi_lite_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_arvalid,
      I2 => \^s_axi_lite_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_araddr(1),
      I1 => s_axi_lite_arvalid,
      I2 => \^s_axi_lite_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^s_axi_lite_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_lite_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_wvalid,
      I2 => s_axi_lite_awvalid,
      I3 => \^s_axi_lite_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_lite_awaddr(1),
      I1 => s_axi_lite_wvalid,
      I2 => s_axi_lite_awvalid,
      I3 => \^s_axi_lite_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_lite_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^s_axi_lite_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s_axi_lite_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^s_axi_lite_awready\,
      I3 => \^s_axi_lite_wready\,
      I4 => s_axi_lite_bready,
      I5 => \^s_axi_lite_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_lite_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[10]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[11]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[12]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[13]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[14]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[15]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \control_reg_reg_n_0_[16]\,
      I2 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[17]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[18]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[19]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \^q\(1),
      I2 => axi_araddr(3),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[20]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[21]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[22]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[23]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[24]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[25]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[26]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[27]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[28]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[29]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[2]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[30]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_lite_arready\,
      I1 => s_axi_lite_arvalid,
      I2 => \^s_axi_lite_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[31]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[3]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[4]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[5]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[6]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[7]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[8]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[9]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(0),
      Q => s_axi_lite_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(10),
      Q => s_axi_lite_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(11),
      Q => s_axi_lite_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(12),
      Q => s_axi_lite_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(13),
      Q => s_axi_lite_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(14),
      Q => s_axi_lite_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(15),
      Q => s_axi_lite_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(16),
      Q => s_axi_lite_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(17),
      Q => s_axi_lite_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(18),
      Q => s_axi_lite_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(19),
      Q => s_axi_lite_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(1),
      Q => s_axi_lite_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(20),
      Q => s_axi_lite_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(21),
      Q => s_axi_lite_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(22),
      Q => s_axi_lite_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(23),
      Q => s_axi_lite_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(24),
      Q => s_axi_lite_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(25),
      Q => s_axi_lite_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(26),
      Q => s_axi_lite_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(27),
      Q => s_axi_lite_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(28),
      Q => s_axi_lite_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(29),
      Q => s_axi_lite_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(2),
      Q => s_axi_lite_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(30),
      Q => s_axi_lite_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(31),
      Q => s_axi_lite_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(3),
      Q => s_axi_lite_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(4),
      Q => s_axi_lite_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(5),
      Q => s_axi_lite_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(6),
      Q => s_axi_lite_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(7),
      Q => s_axi_lite_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(8),
      Q => s_axi_lite_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(9),
      Q => s_axi_lite_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^s_axi_lite_arready\,
      I2 => \^s_axi_lite_rvalid\,
      I3 => s_axi_lite_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_lite_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^s_axi_lite_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_lite_wready\,
      R => axi_awready_i_1_n_0
    );
\control_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s_axi_lite_wstrb(1),
      I3 => \control_reg[31]_i_2_n_0\,
      O => \control_reg[15]_i_1_n_0\
    );
\control_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s_axi_lite_wstrb(2),
      I3 => \control_reg[31]_i_2_n_0\,
      O => \control_reg[23]_i_1_n_0\
    );
\control_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s_axi_lite_wstrb(3),
      I3 => \control_reg[31]_i_2_n_0\,
      O => \control_reg[31]_i_1_n_0\
    );
\control_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^s_axi_lite_awready\,
      I3 => \^s_axi_lite_wready\,
      O => \control_reg[31]_i_2_n_0\
    );
\control_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s_axi_lite_wstrb(0),
      I3 => \control_reg[31]_i_2_n_0\,
      O => \control_reg[7]_i_1_n_0\
    );
\control_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => \control_reg_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => \control_reg_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => \control_reg_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => \control_reg_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => \control_reg_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => \control_reg_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => \control_reg_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => \control_reg_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => \control_reg_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => \control_reg_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => \^q\(1),
      S => axi_awready_i_1_n_0
    );
\control_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => \control_reg_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => \control_reg_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => \control_reg_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => \control_reg_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => \control_reg_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => \control_reg_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => \control_reg_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => \control_reg_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => \control_reg_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => \control_reg_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => \control_reg_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => \control_reg_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => \control_reg_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => \control_reg_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => \control_reg_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => \control_reg_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => \control_reg_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => \control_reg_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => \control_reg_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => \control_reg_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_SyncAsync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_SyncAsync : entity is "SyncAsync";
end design_1_MIPI_D_PHY_RX_0_0_SyncAsync;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_SyncAsync is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\GenIDELAYCTRL.rDlyRstCnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \oSyncStages_reg[1]_0\(0),
      O => SS(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_SyncAsync_10 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_10 : entity is "SyncAsync";
end design_1_MIPI_D_PHY_RX_0_0_SyncAsync_10;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_10 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  AR(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_SyncAsync_12 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_12 : entity is "SyncAsync";
end design_1_MIPI_D_PHY_RX_0_0_SyncAsync_12;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_12 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_SyncAsync_22 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_22 : entity is "SyncAsync";
end design_1_MIPI_D_PHY_RX_0_0_SyncAsync_22;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_22 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  AR(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_SyncAsync_25 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_25 : entity is "SyncAsync";
end design_1_MIPI_D_PHY_RX_0_0_SyncAsync_25;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_25 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_SyncAsync_26 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GenIDELAYCTRL.rDlyRst_reg\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    RST : in STD_LOGIC;
    \oSyncStages_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_26 : entity is "SyncAsync";
end design_1_MIPI_D_PHY_RX_0_0_SyncAsync_26;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_SyncAsync_26 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\GenIDELAYCTRL.rDlyRst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => E(0),
      I1 => RST,
      I2 => oSyncStages(1),
      I3 => \oSyncStages_reg[1]_0\(0),
      O => \GenIDELAYCTRL.rDlyRst_reg\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => '0',
      PRE => aRst,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => aRst,
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0\ is
  port (
    \oSyncStages_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    rDlyLckd : in STD_LOGIC;
    aD0Enable : in STD_LOGIC;
    aClkEnable : in STD_LOGIC;
    aD1Enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
\oSyncStages[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => rDlyLckd,
      I2 => aD0Enable,
      O => \oSyncStages_reg[0]_0\(0)
    );
\oSyncStages[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => rDlyLckd,
      I2 => aClkEnable,
      O => \oSyncStages_reg[0]_1\(0)
    );
\oSyncStages[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => rDlyLckd,
      I2 => aD1Enable,
      O => \oSyncStages_reg[0]_2\(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_15\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_15\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_15\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_15\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages[1]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => AR(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_16\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aD0ForceRxmode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_16\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_16\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_16\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => aD0ForceRxmode,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_17\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cHSSettled_reg : out STD_LOGIC;
    \cDelayCnt_reg[6]\ : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC;
    cHSSettled_reg_0 : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbD0RxValidHS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_17\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_17\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_17\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\cHSSettled_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAF00030000"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \cDelayCnt_reg[6]\,
      I2 => \state_reg[1]\,
      I3 => \state_reg[0]\,
      I4 => \state_reg[2]\,
      I5 => cHSSettled_reg_0,
      O => cHSSettled_reg
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => rbD0RxValidHS,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_19\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_19\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_19\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_19\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_21\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_21\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_21\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_21\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_28\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_28\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_28\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_28\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => aLP(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_30\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_30\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_30\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_30\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => aLP(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_31\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_31\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_31\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_31\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\GenNoMMCM.cBUFR_Rst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      O => AR(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
\state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_32\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clear : out STD_LOGIC;
    \Filter.sOut_reg\ : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \Filter.sOut_reg_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[3]\ : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \Filter.sOut_reg_1\ : in STD_LOGIC;
    \state_reg[3]_0\ : in STD_LOGIC;
    \state_reg[3]_1\ : in STD_LOGIC;
    \Filter.sOut_reg_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Filter.sOut_reg_3\ : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC;
    cHSClkLocked_q : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aRxClkActiveHS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_32\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_32\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_32\ is
  signal \cDelayCnt[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_6_n_0\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  signal \state[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\cDelayCnt[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cDelayCnt[0]_i_4__1_n_0\,
      I1 => \state_reg[3]\,
      I2 => \cDelayCnt[0]_i_6_n_0\,
      I3 => \state_reg[0]\,
      O => clear
    );
\cDelayCnt[0]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000001C10"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \state[2]_i_4_n_0\,
      I4 => \Filter.sOut_reg_1\,
      I5 => Q(3),
      O => \cDelayCnt[0]_i_4__1_n_0\
    );
\cDelayCnt[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \Filter.sOut_reg_2\(1),
      I3 => Q(0),
      I4 => oSyncStages(1),
      I5 => cHSClkLocked_q,
      O => \cDelayCnt[0]_i_6_n_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => aRxClkActiveHS,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAEAA"
    )
        port map (
      I0 => \Filter.sOut_reg\,
      I1 => \state_reg[1]\,
      I2 => \Filter.sOut_reg_0\,
      I3 => Q(0),
      I4 => Q(3),
      I5 => \state[0]_i_5__1_n_0\,
      O => D(0)
    );
\state[0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAEAEAAAAAEAE"
    )
        port map (
      I0 => \state_reg[3]_0\,
      I1 => \state[2]_i_4_n_0\,
      I2 => \state_reg[3]_1\,
      I3 => \Filter.sOut_reg_2\(0),
      I4 => Q(1),
      I5 => \Filter.sOut_reg_2\(1),
      O => \state[0]_i_5__1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFAAAA"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => Q(3),
      I2 => \Filter.sOut_reg_2\(1),
      I3 => \Filter.sOut_reg_2\(0),
      I4 => Q(2),
      O => D(1)
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEFFAEAE"
    )
        port map (
      I0 => \Filter.sOut_reg_3\,
      I1 => \state[2]_i_4_n_0\,
      I2 => \state_reg[2]\,
      I3 => \state_reg[1]\,
      I4 => Q(0),
      I5 => \Filter.sOut_reg_0\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cHSClkLocked_q,
      I1 => oSyncStages(1),
      O => \state[2]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_33\ is
  port (
    aRxClkActiveHS : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_33\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_33\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_33\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  aRxClkActiveHS <= oSyncStages(1);
\oSyncStages[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => AS(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => '1',
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_4\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_4\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_4\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_4\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages[1]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => AR(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_5\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aD1ForceRxmode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_5\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_5\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_5\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => aD1ForceRxmode,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_6\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cHSSettled_reg : out STD_LOGIC;
    \cDelayCnt_reg[6]\ : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[2]\ : in STD_LOGIC;
    cHSSettled : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbD1RxValidHS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_6\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_6\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_6\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
cHSSettled_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAF00030000"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \cDelayCnt_reg[6]\,
      I2 => \state_reg[1]\,
      I3 => \state_reg[0]\,
      I4 => \state_reg[2]\,
      I5 => cHSSettled,
      O => cHSSettled_reg
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => rbD1RxValidHS,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_7\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_7\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_7\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_7\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_9\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_9\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_9\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_9\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1\ is
  port (
    dLogicRst_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    cHSSettled : in STD_LOGIC;
    dSerdesRst_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dLogicRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1\ is
  signal aReset0 : STD_LOGIC;
  signal oSyncStages : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
begin
dLogicRst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0B"
    )
        port map (
      I0 => dSerdesRst_q,
      I1 => oSyncStages,
      I2 => Q(0),
      I3 => dLogicRst,
      O => dLogicRst_reg
    );
\oSyncStages[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cHSSettled,
      O => aReset0
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => aReset0,
      D => '1',
      Q => oSyncStages
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1_24\ is
  port (
    dLogicRst_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    cHSSettled_reg : in STD_LOGIC;
    dSerdesRst_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dLogicRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1_24\ : entity is "SyncAsync";
end \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1_24\;

architecture STRUCTURE of \design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1_24\ is
  signal oSyncStages : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  signal \oSyncStages[0]_i_1__3_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
begin
\dLogicRst_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0B"
    )
        port map (
      I0 => dSerdesRst_q,
      I1 => oSyncStages,
      I2 => Q(0),
      I3 => dLogicRst,
      O => dLogicRst_reg
    );
\oSyncStages[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cHSSettled_reg,
      O => \oSyncStages[0]_i_1__3_n_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \oSyncStages[0]_i_1__3_n_0\,
      D => '1',
      Q => oSyncStages
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_HS_Clocking is
  port (
    aRxClkActiveHS : out STD_LOGIC;
    RxDDRClkHS : out STD_LOGIC;
    CLK : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_HS_Clocking : entity is "HS_Clocking";
end design_1_MIPI_D_PHY_RX_0_0_HS_Clocking;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_HS_Clocking is
  signal \^clk\ : STD_LOGIC;
  signal \GenNoMMCM.cBUFR_Rst_reg_n_0\ : STD_LOGIC;
  signal HS_ClockDly : STD_LOGIC;
  signal NLW_InputDelay_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute box_type : string;
  attribute box_type of DivClkBuffer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
  attribute box_type of SerialClkBuffer : label is "PRIMITIVE";
begin
  CLK <= \^clk\;
DivClkBuffer: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "4",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => \GenNoMMCM.cBUFR_Rst_reg_n_0\,
      I => HS_ClockDly,
      O => \^clk\
    );
\GenNoMMCM.cBUFR_Rst_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => AR(0),
      Q => \GenNoMMCM.cBUFR_Rst_reg_n_0\,
      R => '0'
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "CLOCK"
    )
        port map (
      C => RefClk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => NLW_InputDelay_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => HS_ClockDly,
      IDATAIN => aHS,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
SerialClkBuffer: unisim.vcomponents.BUFIO
     port map (
      I => HS_ClockDly,
      O => RxDDRClkHS
    );
SyncAsyncLocked: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_33\
     port map (
      AR(0) => \GenNoMMCM.cBUFR_Rst_reg_n_0\,
      AS(0) => AS(0),
      CLK => \^clk\,
      aRxClkActiveHS => aRxClkActiveHS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_ResetBridge is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GenIDELAYCTRL.rDlyRst_reg\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    RST : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_ResetBridge : entity is "ResetBridge";
end design_1_MIPI_D_PHY_RX_0_0_ResetBridge;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_ResetBridge is
begin
SyncAsyncx: entity work.design_1_MIPI_D_PHY_RX_0_0_SyncAsync_26
     port map (
      E(0) => E(0),
      \GenIDELAYCTRL.rDlyRst_reg\ => \GenIDELAYCTRL.rDlyRst_reg\,
      RST => RST,
      RefClk => RefClk,
      aRst => aRst,
      \oSyncStages_reg[1]_0\(0) => \oSyncStages_reg[1]\(0),
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_ResetBridge_11 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_11 : entity is "ResetBridge";
end design_1_MIPI_D_PHY_RX_0_0_ResetBridge_11;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_11 is
begin
SyncAsyncx: entity work.design_1_MIPI_D_PHY_RX_0_0_SyncAsync_12
     port map (
      AS(0) => AS(0),
      CLK => CLK,
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_ResetBridge_14 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_14 : entity is "ResetBridge";
end design_1_MIPI_D_PHY_RX_0_0_ResetBridge_14;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_14 is
begin
SyncAsyncx: entity work.design_1_MIPI_D_PHY_RX_0_0_SyncAsync_22
     port map (
      AR(0) => AR(0),
      AS(0) => AS(0),
      RefClk => RefClk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_ResetBridge_2 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_2 : entity is "ResetBridge";
end design_1_MIPI_D_PHY_RX_0_0_ResetBridge_2;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_2 is
begin
SyncAsyncx: entity work.design_1_MIPI_D_PHY_RX_0_0_SyncAsync
     port map (
      AS(0) => AS(0),
      RefClk => RefClk,
      SS(0) => SS(0),
      \oSyncStages_reg[1]_0\(0) => \oSyncStages_reg[1]\(0),
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_ResetBridge_23 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_23 : entity is "ResetBridge";
end design_1_MIPI_D_PHY_RX_0_0_ResetBridge_23;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_23 is
begin
SyncAsyncx: entity work.design_1_MIPI_D_PHY_RX_0_0_SyncAsync_25
     port map (
      AS(0) => AS(0),
      CLK => CLK,
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_ResetBridge_3 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_3 : entity is "ResetBridge";
end design_1_MIPI_D_PHY_RX_0_0_ResetBridge_3;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_ResetBridge_3 is
begin
SyncAsyncx: entity work.design_1_MIPI_D_PHY_RX_0_0_SyncAsync_10
     port map (
      AR(0) => AR(0),
      AS(0) => AS(0),
      RefClk => RefClk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSCNN is
  port (
    aRxClkActiveHS : out STD_LOGIC;
    RxDDRClkHS : out STD_LOGIC;
    CLK : out STD_LOGIC;
    aClkStopstate : out STD_LOGIC;
    aRxUlpsClkNot : out STD_LOGIC;
    aClkUlpsActiveNot : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    aLP : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSCNN : entity is "DPHY_LaneSCNN";
end design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSCNN;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSCNN is
  signal SyncAsyncEnable_n_1 : STD_LOGIC;
  signal SyncAsyncEnable_n_2 : STD_LOGIC;
  signal SyncAsyncLocked_n_0 : STD_LOGIC;
  signal \^arxclkactivehs\ : STD_LOGIC;
  signal cDelayCntEn : STD_LOGIC;
  signal \cDelayCnt[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_9_n_0\ : STD_LOGIC;
  signal cDelayCnt_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cDelayCnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cEnable : STD_LOGIC;
  signal cHSClkLocked_q : STD_LOGIC;
  signal cLP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of cLP : signal is std.standard.true;
  signal cLPGlitch_0 : STD_LOGIC;
  signal cLPGlitch_1 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal nstate : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \state[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \state[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \state[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \state[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \NLW_cDelayCnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cDelayCnt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aClkStopstate_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of aClkUlpsActiveNot_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of aRxUlpsClkNot_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[2]_i_5\ : label is "soft_lutpair3";
begin
  aRxClkActiveHS <= \^arxclkactivehs\;
\GenSyncLP[0].GlitchFilterLP\: entity work.design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_27
     port map (
      RefClk => RefClk,
      in0(0) => cLP(0),
      \oSyncStages_reg[1]\(0) => cEnable,
      \out\(0) => cLPGlitch_0
    );
\GenSyncLP[0].SyncAsyncx\: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_28\
     port map (
      RefClk => RefClk,
      aLP(0) => aLP(0),
      \out\(0) => cLPGlitch_0
    );
\GenSyncLP[1].GlitchFilterLP\: entity work.design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_29
     port map (
      RefClk => RefClk,
      in0(0) => cLP(1),
      \oSyncStages_reg[1]\(0) => cEnable,
      \out\(0) => cLPGlitch_1
    );
\GenSyncLP[1].SyncAsyncx\: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_30\
     port map (
      RefClk => RefClk,
      aLP(0) => aLP(1),
      \out\(0) => cLPGlitch_1
    );
HSClockingX: entity work.design_1_MIPI_D_PHY_RX_0_0_HS_Clocking
     port map (
      AR(0) => SyncAsyncEnable_n_2,
      AS(0) => AS(0),
      CLK => CLK,
      RefClk => RefClk,
      RxDDRClkHS => RxDDRClkHS,
      aHS => aHS,
      aRxClkActiveHS => \^arxclkactivehs\
    );
SyncAsyncEnable: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_31\
     port map (
      AR(0) => SyncAsyncEnable_n_2,
      D(0) => D(0),
      Q(3) => \state_reg_n_0_[3]\,
      Q(2) => \state_reg_n_0_[2]\,
      Q(1) => \state_reg_n_0_[1]\,
      Q(0) => \state_reg_n_0_[0]\,
      RefClk => RefClk,
      SR(0) => SyncAsyncEnable_n_1,
      \out\(0) => cEnable
    );
SyncAsyncLocked: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_32\
     port map (
      AR(0) => SyncAsyncEnable_n_2,
      D(1) => nstate(2),
      D(0) => nstate(0),
      \Filter.sOut_reg\ => \state[0]_i_2__1_n_0\,
      \Filter.sOut_reg_0\ => \state[0]_i_4__1_n_0\,
      \Filter.sOut_reg_1\ => \cDelayCnt[0]_i_9_n_0\,
      \Filter.sOut_reg_2\(1 downto 0) => cLP(1 downto 0),
      \Filter.sOut_reg_3\ => \state[2]_i_3_n_0\,
      Q(3) => \state_reg_n_0_[3]\,
      Q(2) => \state_reg_n_0_[2]\,
      Q(1) => \state_reg_n_0_[1]\,
      Q(0) => \state_reg_n_0_[0]\,
      RefClk => RefClk,
      aRxClkActiveHS => \^arxclkactivehs\,
      cHSClkLocked_q => cHSClkLocked_q,
      clear => clear,
      \out\(0) => SyncAsyncLocked_n_0,
      \state_reg[0]\ => \cDelayCnt[0]_i_7_n_0\,
      \state_reg[1]\ => \state[0]_i_3__1_n_0\,
      \state_reg[2]\ => \state[2]_i_5_n_0\,
      \state_reg[3]\ => \cDelayCnt[0]_i_5__1_n_0\,
      \state_reg[3]_0\ => \state[0]_i_6__1_n_0\,
      \state_reg[3]_1\ => \state[0]_i_7__1_n_0\
    );
aClkStopstate_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      O => aClkStopstate
    );
aClkUlpsActiveNot_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      O => aClkUlpsActiveNot
    );
aRxUlpsClkNot_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[1]\,
      O => aRxUlpsClkNot
    );
\cDelayCnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[0]\,
      O => cDelayCntEn
    );
\cDelayCnt[0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003F004000000000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => cLP(0),
      I5 => cLP(1),
      O => \cDelayCnt[0]_i_5__1_n_0\
    );
\cDelayCnt[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0000008822004F"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state[0]_i_3__1_n_0\,
      I3 => cLP(1),
      I4 => cLP(0),
      I5 => \state_reg_n_0_[2]\,
      O => \cDelayCnt[0]_i_7_n_0\
    );
\cDelayCnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cDelayCnt_reg(0),
      O => \cDelayCnt[0]_i_8_n_0\
    );
\cDelayCnt[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cLP(0),
      I1 => cLP(1),
      O => \cDelayCnt[0]_i_9_n_0\
    );
\cDelayCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[0]_i_3_n_7\,
      Q => cDelayCnt_reg(0),
      R => clear
    );
\cDelayCnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cDelayCnt_reg[0]_i_3_n_0\,
      CO(2) => \cDelayCnt_reg[0]_i_3_n_1\,
      CO(1) => \cDelayCnt_reg[0]_i_3_n_2\,
      CO(0) => \cDelayCnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cDelayCnt_reg[0]_i_3_n_4\,
      O(2) => \cDelayCnt_reg[0]_i_3_n_5\,
      O(1) => \cDelayCnt_reg[0]_i_3_n_6\,
      O(0) => \cDelayCnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => cDelayCnt_reg(3 downto 1),
      S(0) => \cDelayCnt[0]_i_8_n_0\
    );
\cDelayCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[8]_i_1_n_5\,
      Q => cDelayCnt_reg(10),
      R => clear
    );
\cDelayCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[8]_i_1_n_4\,
      Q => cDelayCnt_reg(11),
      R => clear
    );
\cDelayCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[12]_i_1_n_7\,
      Q => cDelayCnt_reg(12),
      R => clear
    );
\cDelayCnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_cDelayCnt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cDelayCnt_reg[12]_i_1_n_2\,
      CO(0) => \cDelayCnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cDelayCnt_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2) => \cDelayCnt_reg[12]_i_1_n_5\,
      O(1) => \cDelayCnt_reg[12]_i_1_n_6\,
      O(0) => \cDelayCnt_reg[12]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => cDelayCnt_reg(14 downto 12)
    );
\cDelayCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[12]_i_1_n_6\,
      Q => cDelayCnt_reg(13),
      R => clear
    );
\cDelayCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[12]_i_1_n_5\,
      Q => cDelayCnt_reg(14),
      R => clear
    );
\cDelayCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[0]_i_3_n_6\,
      Q => cDelayCnt_reg(1),
      R => clear
    );
\cDelayCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[0]_i_3_n_5\,
      Q => cDelayCnt_reg(2),
      R => clear
    );
\cDelayCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[0]_i_3_n_4\,
      Q => cDelayCnt_reg(3),
      R => clear
    );
\cDelayCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[4]_i_1_n_7\,
      Q => cDelayCnt_reg(4),
      R => clear
    );
\cDelayCnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[0]_i_3_n_0\,
      CO(3) => \cDelayCnt_reg[4]_i_1_n_0\,
      CO(2) => \cDelayCnt_reg[4]_i_1_n_1\,
      CO(1) => \cDelayCnt_reg[4]_i_1_n_2\,
      CO(0) => \cDelayCnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[4]_i_1_n_4\,
      O(2) => \cDelayCnt_reg[4]_i_1_n_5\,
      O(1) => \cDelayCnt_reg[4]_i_1_n_6\,
      O(0) => \cDelayCnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cDelayCnt_reg(7 downto 4)
    );
\cDelayCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[4]_i_1_n_6\,
      Q => cDelayCnt_reg(5),
      R => clear
    );
\cDelayCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[4]_i_1_n_5\,
      Q => cDelayCnt_reg(6),
      R => clear
    );
\cDelayCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[4]_i_1_n_4\,
      Q => cDelayCnt_reg(7),
      R => clear
    );
\cDelayCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[8]_i_1_n_7\,
      Q => cDelayCnt_reg(8),
      R => clear
    );
\cDelayCnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[4]_i_1_n_0\,
      CO(3) => \cDelayCnt_reg[8]_i_1_n_0\,
      CO(2) => \cDelayCnt_reg[8]_i_1_n_1\,
      CO(1) => \cDelayCnt_reg[8]_i_1_n_2\,
      CO(0) => \cDelayCnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[8]_i_1_n_4\,
      O(2) => \cDelayCnt_reg[8]_i_1_n_5\,
      O(1) => \cDelayCnt_reg[8]_i_1_n_6\,
      O(0) => \cDelayCnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cDelayCnt_reg(11 downto 8)
    );
\cDelayCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => cDelayCntEn,
      D => \cDelayCnt_reg[8]_i_1_n_6\,
      Q => cDelayCnt_reg(9),
      R => clear
    );
cHSClkLocked_q_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => SyncAsyncLocked_n_0,
      Q => cHSClkLocked_q,
      R => '0'
    );
\state[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EE2ACC00"
    )
        port map (
      I0 => cLP(1),
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => cLP(0),
      I5 => \state_reg_n_0_[3]\,
      O => \state[0]_i_2__1_n_0\
    );
\state[0]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state[1]_i_3_n_0\,
      I1 => \state_reg_n_0_[1]\,
      O => \state[0]_i_3__1_n_0\
    );
\state[0]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cLP(0),
      I1 => cLP(1),
      O => \state[0]_i_4__1_n_0\
    );
\state[0]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF00001AA000000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => cLP(0),
      I3 => cLP(1),
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[0]_i_6__1_n_0\
    );
\state[0]_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      O => \state[0]_i_7__1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAFAA"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[1]_i_3_n_0\,
      I2 => cLP(0),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => nstate(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10F050FA00F054AA"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => cLP(0),
      I4 => cLP(1),
      I5 => \state_reg_n_0_[2]\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state[1]_i_4_n_0\,
      I1 => \state[1]_i_5_n_0\,
      I2 => cDelayCnt_reg(14),
      I3 => cDelayCnt_reg(13),
      I4 => cDelayCnt_reg(0),
      I5 => \state[1]_i_6_n_0\,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cDelayCnt_reg(6),
      I1 => cDelayCnt_reg(5),
      I2 => cDelayCnt_reg(8),
      I3 => cDelayCnt_reg(7),
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cDelayCnt_reg(1),
      I1 => cDelayCnt_reg(2),
      I2 => cDelayCnt_reg(4),
      I3 => cDelayCnt_reg(3),
      O => \state[1]_i_5_n_0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cDelayCnt_reg(10),
      I1 => cDelayCnt_reg(9),
      I2 => cDelayCnt_reg(12),
      I3 => cDelayCnt_reg(11),
      O => \state[1]_i_6_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111100001111F000"
    )
        port map (
      I0 => cLP(0),
      I1 => cLP(1),
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[0]\,
      O => \state[2]_i_5_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000020000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => cLP(0),
      I4 => cLP(1),
      I5 => \state_reg_n_0_[3]\,
      O => nstate(3)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => nstate(0),
      Q => \state_reg_n_0_[0]\,
      R => SyncAsyncEnable_n_1
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => nstate(1),
      Q => \state_reg_n_0_[1]\,
      R => SyncAsyncEnable_n_1
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => nstate(2),
      Q => \state_reg_n_0_[2]\,
      R => SyncAsyncEnable_n_1
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => nstate(3),
      Q => \state_reg_n_0_[3]\,
      R => SyncAsyncEnable_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer is
  port (
    aLP_int : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dSyncHard_reg_reg : out STD_LOGIC;
    dSyncSoft_reg_reg : out STD_LOGIC;
    rbD1RxValidHS : out STD_LOGIC;
    dSyncErr_reg_reg : out STD_LOGIC;
    rbD1RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD1RxActiveHS : out STD_LOGIC;
    rbD1RxSyncHS : out STD_LOGIC;
    rbD1ErrSotSyncHS : out STD_LOGIC;
    rbD1ErrSotHS : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    CLK : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cHSSettled : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    dSyncSoft_reg : in STD_LOGIC;
    dSyncHard_reg : in STD_LOGIC;
    dSyncErr_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer : entity is "HS_Deserializer";
end design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer is
  signal DataInDly : STD_LOGIC;
  signal InputDelay_n_1 : STD_LOGIC;
  signal InputDelay_n_2 : STD_LOGIC;
  signal InputDelay_n_3 : STD_LOGIC;
  signal InputDelay_n_4 : STD_LOGIC;
  signal InputDelay_n_5 : STD_LOGIC;
  signal SyncAsyncSettled_n_0 : STD_LOGIC;
  signal alignment : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \alignment[0]_i_1_n_0\ : STD_LOGIC;
  signal \alignment[1]_i_1_n_0\ : STD_LOGIC;
  signal \alignment[2]_i_1_n_0\ : STD_LOGIC;
  signal alignment_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dAlignment_int : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dAlignment_int[0]_i_10_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_11_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_12_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_13_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_14_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_15_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_16_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_17_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_18_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_3_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_7_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_8_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_9_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_10_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_11_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_12_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_13_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_14_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_15_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_16_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_17_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_18_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_4_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_5_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_6_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_7_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_8_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_9_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_5_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_6_n_0\ : STD_LOGIC;
  signal dDataIn_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dDataIn_reg_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dDataIn_reg_reg[3]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dDataIn_reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][7]\ : STD_LOGIC;
  signal dDataOut80 : STD_LOGIC;
  signal \dDataOut8[0]_i_3_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_4_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_5_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_6_n_0\ : STD_LOGIC;
  signal \dDataOut8[1]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[2]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[3]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[4]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[5]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[6]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[7]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dLP[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \dLP[0]_0\ : signal is std.standard.true;
  signal \dLP[1]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of \dLP[1]_1\ : signal is std.standard.true;
  signal dLogicRst : STD_LOGIC;
  signal dSerdesRst : STD_LOGIC;
  signal dSerdesRst_q : STD_LOGIC;
  signal dSyncErr_int_i_1_n_0 : STD_LOGIC;
  signal \^dsyncerr_reg_reg\ : STD_LOGIC;
  signal dSyncHard_int : STD_LOGIC;
  signal dSyncHard_int_i_10_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_11_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_12_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_13_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_14_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_15_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_16_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_17_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_18_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_19_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_2_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_3_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_4_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_5_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_6_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_7_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_8_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_9_n_0 : STD_LOGIC;
  signal \^dsynchard_reg_reg\ : STD_LOGIC;
  signal dSyncSoft_int_i_10_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_11_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_12_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_13_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_14_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_15_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_16_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_17_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_18_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_19_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_20_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_21_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_22_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_23_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_24_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_2_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_3_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_4_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_5_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_6_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_7_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_8_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_9_n_0 : STD_LOGIC;
  signal \^dsyncsoft_reg_reg\ : STD_LOGIC;
  signal \dValid_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal nextMust_i_1_n_0 : STD_LOGIC;
  signal nextMust_reg_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal soft5_out : STD_LOGIC;
  signal word : STD_LOGIC_VECTOR ( 7 to 7 );
  signal word_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_Deserializer_O_UNCONNECTED : STD_LOGIC;
  signal NLW_Deserializer_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_Deserializer_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of Deserializer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
  attribute box_type of \UseOwnLP.LPxx[0].LP_DeserializerX\ : label is "PRIMITIVE";
  attribute box_type of \UseOwnLP.LPxx[1].LP_DeserializerX\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_12\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_13\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_14\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_15\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_16\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_17\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_18\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_5\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_10\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_12\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_13\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_15\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_16\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_17\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_18\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_7\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \dDataOut8[0]_i_4\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dDataOut8[0]_i_5\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \dDataOut8[1]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \dDataOut8[2]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \dDataOut8[3]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dDataOut8[4]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \dDataOut8[5]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \dDataOut8[6]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of dSyncHard_int_i_10 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of dSyncHard_int_i_11 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of dSyncHard_int_i_12 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of dSyncHard_int_i_13 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of dSyncHard_int_i_14 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of dSyncHard_int_i_15 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of dSyncHard_int_i_16 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of dSyncHard_int_i_17 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of dSyncHard_int_i_18 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of dSyncHard_int_i_19 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of dSyncHard_int_i_3 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of dSyncHard_int_i_6 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of dSyncHard_int_i_7 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of dSyncHard_int_i_8 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_10 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_11 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_14 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_15 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_16 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_17 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_18 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_19 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_2 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_20 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_21 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_22 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_23 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_24 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of rbD1ErrSotSyncHS_INST_0 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of rbD1RxActiveHS_INST_0 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of rbD1RxSyncHS_INST_0 : label is "soft_lutpair50";
begin
  dSyncErr_reg_reg <= \^dsyncerr_reg_reg\;
  dSyncHard_reg_reg <= \^dsynchard_reg_reg\;
  dSyncSoft_reg_reg <= \^dsyncsoft_reg_reg\;
Deserializer: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => dphy_clk_hs_n,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => DataInDly,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_Deserializer_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => dDataIn_int(0),
      Q2 => dDataIn_int(1),
      Q3 => dDataIn_int(2),
      Q4 => dDataIn_int(3),
      Q5 => dDataIn_int(4),
      Q6 => dDataIn_int(5),
      Q7 => dDataIn_int(6),
      Q8 => dDataIn_int(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_Deserializer_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_Deserializer_SHIFTOUT2_UNCONNECTED
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VARIABLE",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => RefClk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4) => InputDelay_n_1,
      CNTVALUEOUT(3) => InputDelay_n_2,
      CNTVALUEOUT(2) => InputDelay_n_3,
      CNTVALUEOUT(1) => InputDelay_n_4,
      CNTVALUEOUT(0) => InputDelay_n_5,
      DATAIN => '0',
      DATAOUT => DataInDly,
      IDATAIN => aHS,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
SerdesReset: entity work.design_1_MIPI_D_PHY_RX_0_0_ResetBridge_11
     port map (
      AS(0) => AS(0),
      CLK => CLK,
      \out\(0) => dSerdesRst
    );
SyncAsyncSettled: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1\
     port map (
      CLK => CLK,
      Q(0) => \dValid_reg_reg_n_0_[3]\,
      cHSSettled => cHSSettled,
      dLogicRst => dLogicRst,
      dLogicRst_reg => SyncAsyncSettled_n_0,
      dSerdesRst_q => dSerdesRst_q
    );
\UseOwnLP.LPxx[0].LP_DeserializerX\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '1',
      INIT_Q2 => '1',
      INIT_Q3 => '1',
      INIT_Q4 => '1',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '1',
      SRVAL_Q2 => '1',
      SRVAL_Q3 => '1',
      SRVAL_Q4 => '1'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => dphy_clk_hs_n,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => aLP(0),
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => aLP_int(0),
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \dLP[0]_0\(0),
      Q2 => \dLP[0]_0\(1),
      Q3 => \dLP[0]_0\(2),
      Q4 => \dLP[0]_0\(3),
      Q5 => \dLP[0]_0\(4),
      Q6 => \dLP[0]_0\(5),
      Q7 => \dLP[0]_0\(6),
      Q8 => \dLP[0]_0\(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\
    );
\UseOwnLP.LPxx[1].LP_DeserializerX\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '1',
      INIT_Q2 => '1',
      INIT_Q3 => '1',
      INIT_Q4 => '1',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '1',
      SRVAL_Q2 => '1',
      SRVAL_Q3 => '1',
      SRVAL_Q4 => '1'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => dphy_clk_hs_n,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => aLP(1),
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => aLP_int(1),
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \dLP[1]_1\(0),
      Q2 => \dLP[1]_1\(1),
      Q3 => \dLP[1]_1\(2),
      Q4 => \dLP[1]_1\(3),
      Q5 => \dLP[1]_1\(4),
      Q6 => \dLP[1]_1\(5),
      Q7 => \dLP[1]_1\(6),
      Q8 => \dLP[1]_1\(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\
    );
\alignment[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(0),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => alignment(0),
      O => \alignment[0]_i_1_n_0\
    );
\alignment[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(1),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => alignment(1),
      O => \alignment[1]_i_1_n_0\
    );
\alignment[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(2),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => alignment(2),
      O => \alignment[2]_i_1_n_0\
    );
\alignment_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \alignment[0]_i_1_n_0\,
      Q => alignment(0),
      R => '0'
    );
\alignment_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \alignment[1]_i_1_n_0\,
      Q => alignment(1),
      R => '0'
    );
\alignment_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \alignment[2]_i_1_n_0\,
      Q => alignment(2),
      R => '0'
    );
\dAlignment_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4447444477777777"
    )
        port map (
      I0 => \dAlignment_int[0]_i_2_n_0\,
      I1 => dSyncHard_int_i_2_n_0,
      I2 => \dAlignment_int[0]_i_3_n_0\,
      I3 => \dAlignment_int[0]_i_4_n_0\,
      I4 => dSyncSoft_int_i_2_n_0,
      I5 => \dAlignment_int[0]_i_5_n_0\,
      O => alignment_out(0)
    );
\dAlignment_int[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0EEEE"
    )
        port map (
      I0 => dSyncHard_int_i_17_n_0,
      I1 => \dAlignment_int[1]_i_18_n_0\,
      I2 => \dAlignment_int[1]_i_17_n_0\,
      I3 => dSyncHard_int_i_16_n_0,
      I4 => alignment(0),
      O => \dAlignment_int[0]_i_10_n_0\
    );
\dAlignment_int[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2222"
    )
        port map (
      I0 => dSyncHard_int_i_19_n_0,
      I1 => \dAlignment_int[0]_i_17_n_0\,
      I2 => dSyncHard_int_i_18_n_0,
      I3 => \dAlignment_int[0]_i_18_n_0\,
      I4 => dSyncHard_int_i_15_n_0,
      O => \dAlignment_int[0]_i_11_n_0\
    );
\dAlignment_int[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][5]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[0]_i_12_n_0\
    );
\dAlignment_int[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => word(7),
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[0]_i_13_n_0\
    );
\dAlignment_int[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => word_0(6),
      I1 => word_0(5),
      I2 => \dDataIn_reg_reg_n_0_[1][5]\,
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[0]_i_14_n_0\
    );
\dAlignment_int[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][4]\,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => word_0(5),
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[0]_i_15_n_0\
    );
\dAlignment_int[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => word_0(6),
      I1 => word_0(5),
      I2 => word_0(4),
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[0]_i_16_n_0\
    );
\dAlignment_int[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => word_0(6),
      I1 => word_0(5),
      I2 => word_0(3),
      I3 => word_0(1),
      O => \dAlignment_int[0]_i_17_n_0\
    );
\dAlignment_int[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => word_0(3),
      I1 => word_0(4),
      I2 => word(7),
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[0]_i_18_n_0\
    );
\dAlignment_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF2"
    )
        port map (
      I0 => dSyncHard_int_i_8_n_0,
      I1 => \dAlignment_int[0]_i_6_n_0\,
      I2 => \dAlignment_int[0]_i_7_n_0\,
      I3 => dSyncHard_int_i_6_n_0,
      I4 => dSyncHard_int_i_9_n_0,
      I5 => \dAlignment_int[0]_i_8_n_0\,
      O => \dAlignment_int[0]_i_2_n_0\
    );
\dAlignment_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75575755FFFFFFFF"
    )
        port map (
      I0 => dSyncSoft_int_i_7_n_0,
      I1 => \dAlignment_int[1]_i_8_n_0\,
      I2 => \dAlignment_int[0]_i_9_n_0\,
      I3 => \dAlignment_int[1]_i_7_n_0\,
      I4 => \dAlignment_int[1]_i_6_n_0\,
      I5 => \dAlignment_int[2]_i_3_n_0\,
      O => \dAlignment_int[0]_i_3_n_0\
    );
\dAlignment_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA8AAAAAAAA"
    )
        port map (
      I0 => dSyncSoft_int_i_8_n_0,
      I1 => \dAlignment_int[0]_i_10_n_0\,
      I2 => \dAlignment_int[0]_i_7_n_0\,
      I3 => \dAlignment_int[0]_i_11_n_0\,
      I4 => \dAlignment_int[0]_i_8_n_0\,
      I5 => dSyncSoft_int_i_9_n_0,
      O => \dAlignment_int[0]_i_4_n_0\
    );
\dAlignment_int[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => dSyncSoft_int_i_4_n_0,
      I1 => dSyncSoft_int_i_7_n_0,
      I2 => dSyncSoft_int_i_5_n_0,
      I3 => \dAlignment_int[1]_i_3_n_0\,
      O => \dAlignment_int[0]_i_5_n_0\
    );
\dAlignment_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => alignment(0),
      I1 => dSyncHard_int_i_16_n_0,
      I2 => word_0(3),
      I3 => word_0(2),
      I4 => word_0(1),
      I5 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => \dAlignment_int[0]_i_6_n_0\
    );
\dAlignment_int[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \dAlignment_int[0]_i_12_n_0\,
      I1 => dSyncHard_int_i_12_n_0,
      I2 => \dAlignment_int[0]_i_13_n_0\,
      I3 => \dAlignment_int[0]_i_14_n_0\,
      I4 => \dAlignment_int[2]_i_4_n_0\,
      I5 => \dAlignment_int[0]_i_15_n_0\,
      O => \dAlignment_int[0]_i_7_n_0\
    );
\dAlignment_int[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => dSyncHard_int_i_18_n_0,
      I1 => dSyncHard_int_i_15_n_0,
      I2 => \dAlignment_int[0]_i_13_n_0\,
      I3 => \dAlignment_int[0]_i_16_n_0\,
      I4 => \dAlignment_int[0]_i_12_n_0\,
      I5 => dSyncHard_int_i_12_n_0,
      O => \dAlignment_int[0]_i_8_n_0\
    );
\dAlignment_int[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => word_0(1),
      O => \dAlignment_int[0]_i_9_n_0\
    );
\dAlignment_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2F30000F2F2"
    )
        port map (
      I0 => \dAlignment_int[1]_i_2_n_0\,
      I1 => \dAlignment_int[1]_i_3_n_0\,
      I2 => \dAlignment_int[1]_i_4_n_0\,
      I3 => dSyncSoft_int_i_3_n_0,
      I4 => dSyncHard_int_i_2_n_0,
      I5 => \dAlignment_int[1]_i_5_n_0\,
      O => alignment_out(1)
    );
\dAlignment_int[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][3]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dAlignment_int[1]_i_10_n_0\
    );
\dAlignment_int[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBABABAFFFFFFBA"
    )
        port map (
      I0 => dSyncSoft_int_i_10_n_0,
      I1 => word_0(5),
      I2 => \dDataIn_reg_reg_n_0_[1][5]\,
      I3 => \dDataIn_reg_reg_n_0_[1][4]\,
      I4 => \dDataIn_reg_reg_n_0_[1][3]\,
      I5 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[1]_i_11_n_0\
    );
\dAlignment_int[1]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word_0(6),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => word(7),
      O => \dAlignment_int[1]_i_12_n_0\
    );
\dAlignment_int[1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][4]\,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => word_0(5),
      I3 => \dDataIn_reg_reg_n_0_[1][5]\,
      I4 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[1]_i_13_n_0\
    );
\dAlignment_int[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010001000100FFFF"
    )
        port map (
      I0 => \dAlignment_int[1]_i_16_n_0\,
      I1 => word_0(4),
      I2 => word_0(0),
      I3 => \dAlignment_int[1]_i_17_n_0\,
      I4 => dSyncHard_int_i_17_n_0,
      I5 => \dAlignment_int[1]_i_18_n_0\,
      O => \dAlignment_int[1]_i_14_n_0\
    );
\dAlignment_int[1]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => word_0(5),
      I1 => word_0(6),
      I2 => word(7),
      O => \dAlignment_int[1]_i_15_n_0\
    );
\dAlignment_int[1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => word_0(6),
      I1 => word_0(5),
      O => \dAlignment_int[1]_i_16_n_0\
    );
\dAlignment_int[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => word_0(3),
      I1 => word_0(2),
      I2 => word_0(1),
      I3 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => \dAlignment_int[1]_i_17_n_0\
    );
\dAlignment_int[1]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => word_0(2),
      I1 => word_0(0),
      I2 => word_0(4),
      I3 => word_0(3),
      O => \dAlignment_int[1]_i_18_n_0\
    );
\dAlignment_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008688FFFFFFFF"
    )
        port map (
      I0 => \dAlignment_int[1]_i_6_n_0\,
      I1 => \dAlignment_int[1]_i_7_n_0\,
      I2 => \dDataIn_reg_reg_n_0_[1][1]\,
      I3 => word_0(1),
      I4 => \dAlignment_int[1]_i_8_n_0\,
      I5 => dSyncSoft_int_i_7_n_0,
      O => \dAlignment_int[1]_i_2_n_0\
    );
\dAlignment_int[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020029"
    )
        port map (
      I0 => word_0(4),
      I1 => \dDataIn_reg_reg_n_0_[1][4]\,
      I2 => \dAlignment_int[1]_i_7_n_0\,
      I3 => \dAlignment_int[1]_i_9_n_0\,
      I4 => \dAlignment_int[1]_i_10_n_0\,
      O => \dAlignment_int[1]_i_3_n_0\
    );
\dAlignment_int[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAABABABAB"
    )
        port map (
      I0 => dSyncSoft_int_i_5_n_0,
      I1 => \dAlignment_int[1]_i_11_n_0\,
      I2 => \dAlignment_int[1]_i_12_n_0\,
      I3 => word_0(5),
      I4 => \dDataIn_reg_reg_n_0_[1][5]\,
      I5 => \dAlignment_int[1]_i_13_n_0\,
      O => \dAlignment_int[1]_i_4_n_0\
    );
\dAlignment_int[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0100"
    )
        port map (
      I0 => dSyncHard_int_i_5_n_0,
      I1 => dSyncHard_int_i_6_n_0,
      I2 => \dAlignment_int[1]_i_14_n_0\,
      I3 => alignment(1),
      I4 => dSyncHard_int_i_4_n_0,
      I5 => dSyncHard_int_i_9_n_0,
      O => \dAlignment_int[1]_i_5_n_0\
    );
\dAlignment_int[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => word_0(2),
      I1 => word_0(4),
      I2 => word_0(3),
      O => \dAlignment_int[1]_i_6_n_0\
    );
\dAlignment_int[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word(7),
      I1 => word_0(5),
      I2 => word_0(6),
      O => \dAlignment_int[1]_i_7_n_0\
    );
\dAlignment_int[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7F7F57FF5757"
    )
        port map (
      I0 => \dAlignment_int[1]_i_15_n_0\,
      I1 => word_0(4),
      I2 => word_0(3),
      I3 => word_0(1),
      I4 => \dDataIn_reg_reg_n_0_[1][1]\,
      I5 => word_0(2),
      O => \dAlignment_int[1]_i_8_n_0\
    );
\dAlignment_int[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF717171FFFFFF71"
    )
        port map (
      I0 => word(7),
      I1 => word_0(6),
      I2 => word_0(5),
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      I4 => \dDataIn_reg_reg_n_0_[1][2]\,
      I5 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dAlignment_int[1]_i_9_n_0\
    );
\dAlignment_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABFFFBFBF"
    )
        port map (
      I0 => \dAlignment_int[2]_i_2_n_0\,
      I1 => dSyncSoft_int_i_2_n_0,
      I2 => \dAlignment_int[2]_i_3_n_0\,
      I3 => dSyncSoft_int_i_3_n_0,
      I4 => alignment(2),
      I5 => dSyncHard_int_i_2_n_0,
      O => alignment_out(2)
    );
\dAlignment_int[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAABAA"
    )
        port map (
      I0 => dSyncHard_int_i_6_n_0,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => word_0(5),
      I3 => dSyncHard_int_i_14_n_0,
      I4 => \dAlignment_int[2]_i_4_n_0\,
      I5 => dSyncHard_int_i_4_n_0,
      O => \dAlignment_int[2]_i_2_n_0\
    );
\dAlignment_int[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFEB"
    )
        port map (
      I0 => \dAlignment_int[2]_i_5_n_0\,
      I1 => \dAlignment_int[2]_i_6_n_0\,
      I2 => word_0(3),
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[2]_i_3_n_0\
    );
\dAlignment_int[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => word(7),
      I2 => word_0(4),
      I3 => word_0(6),
      O => \dAlignment_int[2]_i_4_n_0\
    );
\dAlignment_int[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBB2FFFBFFFBFFFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => word(7),
      I2 => \dDataIn_reg_reg_n_0_[1][2]\,
      I3 => word_0(4),
      I4 => word_0(6),
      I5 => word_0(5),
      O => \dAlignment_int[2]_i_5_n_0\
    );
\dAlignment_int[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0096960096000096"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => word(7),
      I3 => word_0(6),
      I4 => word_0(5),
      I5 => word_0(4),
      O => \dAlignment_int[2]_i_6_n_0\
    );
\dAlignment_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(0),
      Q => dAlignment_int(0),
      R => dLogicRst
    );
\dAlignment_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(1),
      Q => dAlignment_int(1),
      R => dLogicRst
    );
\dAlignment_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(2),
      Q => dAlignment_int(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(0),
      Q => \dDataIn_reg_reg_n_0_[0][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(1),
      Q => word_0(0),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(2),
      Q => word_0(1),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(3),
      Q => word_0(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(4),
      Q => word_0(3),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(5),
      Q => word_0(4),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(6),
      Q => word_0(5),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(7),
      Q => word_0(6),
      R => dLogicRst
    );
\dDataIn_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[0][0]\,
      Q => word(7),
      R => dLogicRst
    );
\dDataIn_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(0),
      Q => \dDataIn_reg_reg_n_0_[1][1]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(1),
      Q => \dDataIn_reg_reg_n_0_[1][2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(2),
      Q => \dDataIn_reg_reg_n_0_[1][3]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(3),
      Q => \dDataIn_reg_reg_n_0_[1][4]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(4),
      Q => \dDataIn_reg_reg_n_0_[1][5]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(5),
      Q => \dDataIn_reg_reg_n_0_[1][6]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(6),
      Q => \dDataIn_reg_reg_n_0_[1][7]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(7),
      Q => \dDataIn_reg_reg[2]\(0),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][1]\,
      Q => \dDataIn_reg_reg[2]\(1),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][2]\,
      Q => \dDataIn_reg_reg[2]\(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][3]\,
      Q => \dDataIn_reg_reg[2]\(3),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][4]\,
      Q => \dDataIn_reg_reg[2]\(4),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][5]\,
      Q => \dDataIn_reg_reg[2]\(5),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][6]\,
      Q => \dDataIn_reg_reg[2]\(6),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][7]\,
      Q => \dDataIn_reg_reg[2]\(7),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg[2]\(0),
      Q => \dDataIn_reg_reg[3]\(0),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg[2]\(1),
      Q => \dDataIn_reg_reg[3]\(1),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg[2]\(2),
      Q => \dDataIn_reg_reg[3]\(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg[2]\(3),
      Q => \dDataIn_reg_reg[3]\(3),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg[2]\(4),
      Q => \dDataIn_reg_reg[3]\(4),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg[2]\(5),
      Q => \dDataIn_reg_reg[3]\(5),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg[2]\(6),
      Q => \dDataIn_reg_reg[3]\(6),
      R => dLogicRst
    );
\dDataOut8[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dLogicRst,
      I1 => \dValid_reg_reg_n_0_[3]\,
      O => dDataOut80
    );
\dDataOut8[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEEFFAAFAEEAAAA"
    )
        port map (
      I0 => \dDataOut8[0]_i_3_n_0\,
      I1 => \dDataOut8[0]_i_4_n_0\,
      I2 => \dDataOut8[0]_i_5_n_0\,
      I3 => dAlignment_int(0),
      I4 => dAlignment_int(1),
      I5 => \dDataOut8[0]_i_6_n_0\,
      O => \dDataOut8__0\(0)
    );
\dDataOut8[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020300"
    )
        port map (
      I0 => \dDataIn_reg_reg[2]\(4),
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataIn_reg_reg[2]\(0),
      I4 => dAlignment_int(2),
      O => \dDataOut8[0]_i_3_n_0\
    );
\dDataOut8[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[2]\(6),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[2]\(2),
      O => \dDataOut8[0]_i_4_n_0\
    );
\dDataOut8[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[2]\(7),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[2]\(3),
      O => \dDataOut8[0]_i_5_n_0\
    );
\dDataOut8[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[2]\(5),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[2]\(1),
      O => \dDataOut8[0]_i_6_n_0\
    );
\dDataOut8[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE3EF232CE0EC202"
    )
        port map (
      I0 => \dDataOut8[0]_i_6_n_0\,
      I1 => dAlignment_int(1),
      I2 => dAlignment_int(0),
      I3 => \dDataOut8[1]_i_2_n_0\,
      I4 => \dDataOut8[0]_i_5_n_0\,
      I5 => \dDataOut8[0]_i_4_n_0\,
      O => \dDataOut8__0\(1)
    );
\dDataOut8[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[3]\(0),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[2]\(4),
      O => \dDataOut8[1]_i_2_n_0\
    );
\dDataOut8[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[2]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[1]_i_2_n_0\,
      I4 => \dDataOut8[0]_i_5_n_0\,
      I5 => \dDataOut8[0]_i_4_n_0\,
      O => \dDataOut8__0\(2)
    );
\dDataOut8[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[3]\(1),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[2]\(5),
      O => \dDataOut8[2]_i_2_n_0\
    );
\dDataOut8[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[3]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[2]_i_2_n_0\,
      I4 => \dDataOut8[1]_i_2_n_0\,
      I5 => \dDataOut8[0]_i_5_n_0\,
      O => \dDataOut8__0\(3)
    );
\dDataOut8[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[3]\(2),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[2]\(6),
      O => \dDataOut8[3]_i_2_n_0\
    );
\dDataOut8[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[4]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[3]_i_2_n_0\,
      I4 => \dDataOut8[2]_i_2_n_0\,
      I5 => \dDataOut8[1]_i_2_n_0\,
      O => \dDataOut8__0\(4)
    );
\dDataOut8[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[3]\(3),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[2]\(7),
      O => \dDataOut8[4]_i_2_n_0\
    );
\dDataOut8[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[5]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[4]_i_2_n_0\,
      I4 => \dDataOut8[3]_i_2_n_0\,
      I5 => \dDataOut8[2]_i_2_n_0\,
      O => \dDataOut8__0\(5)
    );
\dDataOut8[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[3]\(4),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[3]\(0),
      O => \dDataOut8[5]_i_2_n_0\
    );
\dDataOut8[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[6]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[5]_i_2_n_0\,
      I4 => \dDataOut8[4]_i_2_n_0\,
      I5 => \dDataOut8[3]_i_2_n_0\,
      O => \dDataOut8__0\(6)
    );
\dDataOut8[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg[3]\(5),
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg[3]\(1),
      O => \dDataOut8[6]_i_2_n_0\
    );
\dDataOut8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAFFEEAAFAAAEE"
    )
        port map (
      I0 => \dDataOut8[7]_i_2_n_0\,
      I1 => \dDataOut8[4]_i_2_n_0\,
      I2 => \dDataOut8[5]_i_2_n_0\,
      I3 => dAlignment_int(1),
      I4 => dAlignment_int(0),
      I5 => \dDataOut8[6]_i_2_n_0\,
      O => \dDataOut8__0\(7)
    );
\dDataOut8[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080C000"
    )
        port map (
      I0 => \dDataIn_reg_reg[3]\(6),
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataIn_reg_reg[3]\(2),
      I4 => dAlignment_int(2),
      O => \dDataOut8[7]_i_2_n_0\
    );
\dDataOut8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(0),
      Q => rbD1RxDataHS(7),
      R => dDataOut80
    );
\dDataOut8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(1),
      Q => rbD1RxDataHS(6),
      R => dDataOut80
    );
\dDataOut8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(2),
      Q => rbD1RxDataHS(5),
      R => dDataOut80
    );
\dDataOut8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(3),
      Q => rbD1RxDataHS(4),
      R => dDataOut80
    );
\dDataOut8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(4),
      Q => rbD1RxDataHS(3),
      R => dDataOut80
    );
\dDataOut8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(5),
      Q => rbD1RxDataHS(2),
      R => dDataOut80
    );
\dDataOut8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(6),
      Q => rbD1RxDataHS(1),
      R => dDataOut80
    );
\dDataOut8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(7),
      Q => rbD1RxDataHS(0),
      R => dDataOut80
    );
dLogicRst_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => SyncAsyncSettled_n_0,
      PRE => dSerdesRst,
      Q => dLogicRst
    );
dSerdesRst_q_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => dSerdesRst,
      Q => dSerdesRst_q
    );
dSyncErr_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => dSyncSoft_int_i_3_n_0,
      I1 => dSyncSoft_int_i_2_n_0,
      I2 => dSyncHard_int_i_2_n_0,
      I3 => dSyncHard_int,
      I4 => \^dsyncerr_reg_reg\,
      O => dSyncErr_int_i_1_n_0
    );
dSyncErr_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dSyncErr_int_i_1_n_0,
      Q => \^dsyncerr_reg_reg\,
      R => dLogicRst
    );
dSyncHard_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => dSyncHard_int_i_3_n_0,
      I1 => nextMust_reg_n_0,
      I2 => word_0(5),
      I3 => word_0(6),
      I4 => word_0(3),
      I5 => word_0(4),
      O => dSyncHard_int
    );
dSyncHard_int_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => word_0(5),
      I1 => word_0(6),
      O => dSyncHard_int_i_10_n_0
    );
dSyncHard_int_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word(7),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => dSyncHard_int_i_11_n_0
    );
dSyncHard_int_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][6]\,
      I1 => word_0(6),
      I2 => word(7),
      I3 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => dSyncHard_int_i_12_n_0
    );
dSyncHard_int_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => \dDataIn_reg_reg_n_0_[1][5]\,
      O => dSyncHard_int_i_13_n_0
    );
dSyncHard_int_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][3]\,
      I1 => \dDataIn_reg_reg_n_0_[1][4]\,
      O => dSyncHard_int_i_14_n_0
    );
dSyncHard_int_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => word_0(5),
      I1 => word_0(6),
      I2 => \dDataIn_reg_reg_n_0_[1][2]\,
      I3 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => dSyncHard_int_i_15_n_0
    );
dSyncHard_int_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => word_0(5),
      I1 => word_0(6),
      I2 => word_0(4),
      I3 => word_0(0),
      O => dSyncHard_int_i_16_n_0
    );
dSyncHard_int_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => word_0(5),
      I1 => word_0(1),
      I2 => word(7),
      I3 => word_0(6),
      O => dSyncHard_int_i_17_n_0
    );
dSyncHard_int_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => word_0(3),
      I1 => word_0(4),
      I2 => word(7),
      I3 => word_0(2),
      O => dSyncHard_int_i_18_n_0
    );
dSyncHard_int_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => word(7),
      I2 => word_0(4),
      I3 => word_0(2),
      O => dSyncHard_int_i_19_n_0
    );
dSyncHard_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => dSyncHard_int_i_4_n_0,
      I1 => dSyncHard_int_i_5_n_0,
      I2 => dSyncHard_int_i_6_n_0,
      I3 => dSyncHard_int_i_7_n_0,
      I4 => dSyncHard_int_i_8_n_0,
      I5 => dSyncHard_int_i_9_n_0,
      O => dSyncHard_int_i_2_n_0
    );
dSyncHard_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^dsyncerr_reg_reg\,
      I1 => \^dsynchard_reg_reg\,
      I2 => \^dsyncsoft_reg_reg\,
      O => dSyncHard_int_i_3_n_0
    );
dSyncHard_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0000008800"
    )
        port map (
      I0 => dSyncHard_int_i_10_n_0,
      I1 => dSyncHard_int_i_11_n_0,
      I2 => dSyncHard_int_i_12_n_0,
      I3 => dSyncHard_int_i_13_n_0,
      I4 => \dDataIn_reg_reg_n_0_[1][4]\,
      I5 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => dSyncHard_int_i_4_n_0
    );
dSyncHard_int_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => word_0(5),
      I2 => dSyncHard_int_i_14_n_0,
      I3 => word_0(6),
      I4 => word_0(4),
      I5 => dSyncHard_int_i_11_n_0,
      O => dSyncHard_int_i_5_n_0
    );
dSyncHard_int_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => dSyncHard_int_i_15_n_0,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => word(7),
      I3 => word_0(4),
      I4 => word_0(3),
      O => dSyncHard_int_i_6_n_0
    );
dSyncHard_int_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[0][0]\,
      I1 => word_0(1),
      I2 => word_0(2),
      I3 => word_0(3),
      I4 => dSyncHard_int_i_16_n_0,
      O => dSyncHard_int_i_7_n_0
    );
dSyncHard_int_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => word_0(3),
      I1 => word_0(4),
      I2 => word_0(0),
      I3 => word_0(2),
      I4 => dSyncHard_int_i_17_n_0,
      O => dSyncHard_int_i_8_n_0
    );
dSyncHard_int_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => dSyncHard_int_i_18_n_0,
      I1 => dSyncHard_int_i_15_n_0,
      I2 => dSyncHard_int_i_10_n_0,
      I3 => word_0(3),
      I4 => word_0(1),
      I5 => dSyncHard_int_i_19_n_0,
      O => dSyncHard_int_i_9_n_0
    );
dSyncHard_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dSyncHard_int,
      D => dSyncHard_int_i_2_n_0,
      Q => \^dsynchard_reg_reg\,
      R => dLogicRst
    );
dSyncSoft_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => dSyncSoft_int_i_2_n_0,
      I1 => dSyncSoft_int_i_3_n_0,
      I2 => dSyncHard_int_i_2_n_0,
      O => soft5_out
    );
dSyncSoft_int_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => word(7),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => word_0(6),
      O => dSyncSoft_int_i_10_n_0
    );
dSyncSoft_int_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D4D4FFD4"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][5]\,
      I4 => word_0(5),
      O => dSyncSoft_int_i_11_n_0
    );
dSyncSoft_int_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0DFF0D0D0D0D"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => word(7),
      I2 => \dDataIn_reg_reg_n_0_[1][2]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      I4 => \dDataIn_reg_reg_n_0_[1][4]\,
      I5 => \dDataIn_reg_reg_n_0_[1][5]\,
      O => dSyncSoft_int_i_12_n_0
    );
dSyncSoft_int_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => word_0(6),
      I1 => \dDataIn_reg_reg_n_0_[1][6]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      I4 => word(7),
      I5 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => dSyncSoft_int_i_13_n_0
    );
dSyncSoft_int_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word(7),
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => dSyncSoft_int_i_14_n_0
    );
dSyncSoft_int_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][3]\,
      I1 => \dDataIn_reg_reg_n_0_[1][5]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      O => dSyncSoft_int_i_15_n_0
    );
dSyncSoft_int_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3515100"
    )
        port map (
      I0 => word_0(2),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => word_0(1),
      I3 => word_0(3),
      I4 => word_0(4),
      O => dSyncSoft_int_i_16_n_0
    );
dSyncSoft_int_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => word_0(4),
      I1 => word_0(3),
      I2 => word_0(5),
      O => dSyncSoft_int_i_17_n_0
    );
dSyncSoft_int_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word_0(5),
      I1 => word_0(4),
      I2 => word_0(3),
      O => dSyncSoft_int_i_18_n_0
    );
dSyncSoft_int_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D0CFF5D"
    )
        port map (
      I0 => word_0(3),
      I1 => word(7),
      I2 => word_0(0),
      I3 => word_0(1),
      I4 => word_0(2),
      O => dSyncSoft_int_i_19_n_0
    );
dSyncSoft_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \dAlignment_int[1]_i_3_n_0\,
      I1 => dSyncSoft_int_i_4_n_0,
      I2 => dSyncSoft_int_i_5_n_0,
      O => dSyncSoft_int_i_2_n_0
    );
dSyncSoft_int_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => word_0(3),
      I1 => word_0(1),
      I2 => word_0(2),
      O => dSyncSoft_int_i_20_n_0
    );
dSyncSoft_int_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => word(7),
      I1 => word_0(0),
      O => dSyncSoft_int_i_21_n_0
    );
dSyncSoft_int_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2B2BFF2B"
    )
        port map (
      I0 => word_0(0),
      I1 => word_0(2),
      I2 => word_0(1),
      I3 => word_0(6),
      I4 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => dSyncSoft_int_i_22_n_0
    );
dSyncSoft_int_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word_0(0),
      I1 => word_0(1),
      I2 => word_0(2),
      O => dSyncSoft_int_i_23_n_0
    );
dSyncSoft_int_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => word_0(6),
      I1 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => dSyncSoft_int_i_24_n_0
    );
dSyncSoft_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \dAlignment_int[2]_i_3_n_0\,
      I1 => dSyncSoft_int_i_6_n_0,
      I2 => dSyncSoft_int_i_7_n_0,
      I3 => dSyncSoft_int_i_8_n_0,
      I4 => dSyncSoft_int_i_9_n_0,
      O => dSyncSoft_int_i_3_n_0
    );
dSyncSoft_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002055"
    )
        port map (
      I0 => \dAlignment_int[1]_i_13_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][5]\,
      I2 => word_0(5),
      I3 => \dAlignment_int[1]_i_12_n_0\,
      I4 => dSyncSoft_int_i_10_n_0,
      I5 => dSyncSoft_int_i_11_n_0,
      O => dSyncSoft_int_i_4_n_0
    );
dSyncSoft_int_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000101101"
    )
        port map (
      I0 => dSyncSoft_int_i_12_n_0,
      I1 => dSyncSoft_int_i_13_n_0,
      I2 => word_0(6),
      I3 => \dDataIn_reg_reg_n_0_[1][6]\,
      I4 => dSyncSoft_int_i_14_n_0,
      I5 => dSyncSoft_int_i_15_n_0,
      O => dSyncSoft_int_i_5_n_0
    );
dSyncSoft_int_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFD7FDFFFFFDFF"
    )
        port map (
      I0 => dSyncSoft_int_i_16_n_0,
      I1 => \dAlignment_int[0]_i_9_n_0\,
      I2 => word_0(6),
      I3 => word_0(5),
      I4 => word(7),
      I5 => \dAlignment_int[1]_i_6_n_0\,
      O => dSyncSoft_int_i_6_n_0
    );
dSyncSoft_int_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF7FF7FF7F"
    )
        port map (
      I0 => dSyncSoft_int_i_17_n_0,
      I1 => dSyncSoft_int_i_10_n_0,
      I2 => \dAlignment_int[1]_i_12_n_0\,
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      I4 => word_0(2),
      I5 => dSyncSoft_int_i_18_n_0,
      O => dSyncSoft_int_i_7_n_0
    );
dSyncSoft_int_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBBEFFFFFFFB"
    )
        port map (
      I0 => dSyncSoft_int_i_19_n_0,
      I1 => dSyncSoft_int_i_20_n_0,
      I2 => dSyncSoft_int_i_21_n_0,
      I3 => word_0(6),
      I4 => word_0(5),
      I5 => word_0(4),
      O => dSyncSoft_int_i_8_n_0
    );
dSyncSoft_int_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFEFEFBE"
    )
        port map (
      I0 => dSyncSoft_int_i_22_n_0,
      I1 => dSyncSoft_int_i_23_n_0,
      I2 => word_0(3),
      I3 => word_0(4),
      I4 => word_0(5),
      I5 => dSyncSoft_int_i_24_n_0,
      O => dSyncSoft_int_i_9_n_0
    );
dSyncSoft_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dSyncHard_int,
      D => soft5_out,
      Q => \^dsyncsoft_reg_reg\,
      R => dLogicRst
    );
dValid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dValid_reg_reg_n_0_[3]\,
      Q => rbD1RxValidHS,
      R => dDataOut80
    );
\dValid_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \^dsynchard_reg_reg\,
      I1 => \^dsyncsoft_reg_reg\,
      I2 => \dLP[0]_0\(0),
      I3 => \dLP[1]_1\(0),
      I4 => \dLP[0]_0\(1),
      I5 => \dLP[1]_1\(1),
      O => p_3_out(1)
    );
\dValid_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_3_out(1),
      Q => p_2_in,
      R => dLogicRst
    );
\dValid_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in,
      Q => \dValid_reg_reg_n_0_[3]\,
      R => dLogicRst
    );
nextMust_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => word_0(1),
      I1 => word_0(2),
      I2 => word_0(0),
      I3 => \dDataIn_reg_reg_n_0_[0][0]\,
      I4 => dSyncHard_int_i_3_n_0,
      I5 => nextMust_reg_n_0,
      O => nextMust_i_1_n_0
    );
nextMust_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => nextMust_i_1_n_0,
      Q => nextMust_reg_n_0,
      R => dLogicRst
    );
rbD1ErrSotHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dsyncerr_reg_reg\,
      I1 => dSyncErr_reg,
      O => rbD1ErrSotHS
    );
rbD1ErrSotSyncHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dsyncsoft_reg_reg\,
      I1 => dSyncSoft_reg,
      O => rbD1ErrSotSyncHS
    );
rbD1RxActiveHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^dsyncsoft_reg_reg\,
      I1 => \^dsynchard_reg_reg\,
      O => rbD1RxActiveHS
    );
rbD1RxSyncHS_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => dSyncSoft_reg,
      I1 => \^dsyncsoft_reg_reg\,
      I2 => dSyncHard_reg,
      I3 => \^dsynchard_reg_reg\,
      O => rbD1RxSyncHS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer_13 is
  port (
    aLP_int : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dSyncHard_reg_reg : out STD_LOGIC;
    dSyncSoft_reg_reg : out STD_LOGIC;
    rbD0RxValidHS : out STD_LOGIC;
    dSyncErr_reg_reg : out STD_LOGIC;
    rbD0RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxActiveHS : out STD_LOGIC;
    rbD0RxSyncHS : out STD_LOGIC;
    rbD0ErrSotSyncHS : out STD_LOGIC;
    rbD0ErrSotHS : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    CLK : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cHSSettled_reg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    dSyncSoft_reg : in STD_LOGIC;
    dSyncHard_reg : in STD_LOGIC;
    dSyncErr_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer_13 : entity is "HS_Deserializer";
end design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer_13;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer_13 is
  signal DataInDly : STD_LOGIC;
  signal InputDelay_n_1 : STD_LOGIC;
  signal InputDelay_n_2 : STD_LOGIC;
  signal InputDelay_n_3 : STD_LOGIC;
  signal InputDelay_n_4 : STD_LOGIC;
  signal InputDelay_n_5 : STD_LOGIC;
  signal SyncAsyncSettled_n_0 : STD_LOGIC;
  signal \alignment[0]_i_1_n_0\ : STD_LOGIC;
  signal \alignment[1]_i_1_n_0\ : STD_LOGIC;
  signal \alignment[2]_i_1_n_0\ : STD_LOGIC;
  signal alignment_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \alignment_reg_n_0_[0]\ : STD_LOGIC;
  signal \alignment_reg_n_0_[1]\ : STD_LOGIC;
  signal \alignment_reg_n_0_[2]\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_12__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_13__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_14__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_15__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_16__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_17__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_18__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_10__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_11__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_12__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_13__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_14__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_15__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_16__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_17__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_18__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_8__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_9__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \dAlignment_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \dAlignment_int_reg_n_0_[2]\ : STD_LOGIC;
  signal dDataIn_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dDataIn_reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][6]\ : STD_LOGIC;
  signal dDataOut80 : STD_LOGIC;
  signal \dDataOut8[0]_i_3_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_4_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_5_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_6_n_0\ : STD_LOGIC;
  signal \dDataOut8[1]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[2]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[3]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[4]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[5]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[6]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[7]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dLP[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \dLP[0]_0\ : signal is std.standard.true;
  signal \dLP[1]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of \dLP[1]_1\ : signal is std.standard.true;
  signal dLogicRst : STD_LOGIC;
  signal dSerdesRst : STD_LOGIC;
  signal dSerdesRst_q : STD_LOGIC;
  signal \dSyncErr_int_i_1__0_n_0\ : STD_LOGIC;
  signal \^dsyncerr_reg_reg\ : STD_LOGIC;
  signal dSyncHard_int : STD_LOGIC;
  signal \dSyncHard_int_i_10__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_11__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_12__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_13__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_14__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_15__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_16__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_17__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_18__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_19__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_2__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_3__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_4__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_5__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_6__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_7__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_8__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_9__0_n_0\ : STD_LOGIC;
  signal \^dsynchard_reg_reg\ : STD_LOGIC;
  signal \dSyncSoft_int_i_10__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_11__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_12__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_13__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_14__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_15__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_16__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_17__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_18__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_19__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_20__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_21__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_22__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_23__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_24__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_2__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_3__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_4__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_5__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_6__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_7__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_8__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_9__0_n_0\ : STD_LOGIC;
  signal \^dsyncsoft_reg_reg\ : STD_LOGIC;
  signal \dValid_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \nextMust_i_1__0_n_0\ : STD_LOGIC;
  signal nextMust_reg_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal soft5_out : STD_LOGIC;
  signal word : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_Deserializer_O_UNCONNECTED : STD_LOGIC;
  signal NLW_Deserializer_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_Deserializer_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of Deserializer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
  attribute box_type of \UseOwnLP.LPxx[0].LP_DeserializerX\ : label is "PRIMITIVE";
  attribute box_type of \UseOwnLP.LPxx[1].LP_DeserializerX\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_12__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_13__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_14__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_15__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_16__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_17__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_18__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_5__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_10__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_12__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_13__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_15__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_16__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_17__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_18__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_6__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_7__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_3__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_4__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dDataOut8[0]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dDataOut8[0]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dDataOut8[1]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dDataOut8[2]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dDataOut8[3]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dDataOut8[4]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dDataOut8[5]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dDataOut8[6]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_10__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_11__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_12__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_13__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_14__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_15__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_16__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_17__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_18__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_19__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_3__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_6__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_7__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_8__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_10__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_11__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_14__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_15__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_16__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_17__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_18__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_19__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_20__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_21__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_22__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_23__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_24__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_2__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of rbD0ErrSotSyncHS_INST_0 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of rbD0RxActiveHS_INST_0 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of rbD0RxSyncHS_INST_0 : label is "soft_lutpair19";
begin
  dSyncErr_reg_reg <= \^dsyncerr_reg_reg\;
  dSyncHard_reg_reg <= \^dsynchard_reg_reg\;
  dSyncSoft_reg_reg <= \^dsyncsoft_reg_reg\;
Deserializer: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => dphy_clk_hs_n,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => DataInDly,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_Deserializer_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => dDataIn_int(0),
      Q2 => dDataIn_int(1),
      Q3 => dDataIn_int(2),
      Q4 => dDataIn_int(3),
      Q5 => dDataIn_int(4),
      Q6 => dDataIn_int(5),
      Q7 => dDataIn_int(6),
      Q8 => dDataIn_int(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_Deserializer_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_Deserializer_SHIFTOUT2_UNCONNECTED
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VARIABLE",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => RefClk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4) => InputDelay_n_1,
      CNTVALUEOUT(3) => InputDelay_n_2,
      CNTVALUEOUT(2) => InputDelay_n_3,
      CNTVALUEOUT(1) => InputDelay_n_4,
      CNTVALUEOUT(0) => InputDelay_n_5,
      DATAIN => '0',
      DATAOUT => DataInDly,
      IDATAIN => aHS,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
SerdesReset: entity work.design_1_MIPI_D_PHY_RX_0_0_ResetBridge_23
     port map (
      AS(0) => AS(0),
      CLK => CLK,
      \out\(0) => dSerdesRst
    );
SyncAsyncSettled: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized1_24\
     port map (
      CLK => CLK,
      Q(0) => \dValid_reg_reg_n_0_[3]\,
      cHSSettled_reg => cHSSettled_reg,
      dLogicRst => dLogicRst,
      dLogicRst_reg => SyncAsyncSettled_n_0,
      dSerdesRst_q => dSerdesRst_q
    );
\UseOwnLP.LPxx[0].LP_DeserializerX\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '1',
      INIT_Q2 => '1',
      INIT_Q3 => '1',
      INIT_Q4 => '1',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '1',
      SRVAL_Q2 => '1',
      SRVAL_Q3 => '1',
      SRVAL_Q4 => '1'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => dphy_clk_hs_n,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => aLP(0),
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => aLP_int(0),
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \dLP[0]_0\(0),
      Q2 => \dLP[0]_0\(1),
      Q3 => \dLP[0]_0\(2),
      Q4 => \dLP[0]_0\(3),
      Q5 => \dLP[0]_0\(4),
      Q6 => \dLP[0]_0\(5),
      Q7 => \dLP[0]_0\(6),
      Q8 => \dLP[0]_0\(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\
    );
\UseOwnLP.LPxx[1].LP_DeserializerX\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '1',
      INIT_Q2 => '1',
      INIT_Q3 => '1',
      INIT_Q4 => '1',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '1',
      SRVAL_Q2 => '1',
      SRVAL_Q3 => '1',
      SRVAL_Q4 => '1'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => dphy_clk_hs_n,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => aLP(1),
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => aLP_int(1),
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \dLP[1]_1\(0),
      Q2 => \dLP[1]_1\(1),
      Q3 => \dLP[1]_1\(2),
      Q4 => \dLP[1]_1\(3),
      Q5 => \dLP[1]_1\(4),
      Q6 => \dLP[1]_1\(5),
      Q7 => \dLP[1]_1\(6),
      Q8 => \dLP[1]_1\(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\
    );
\alignment[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(0),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => \alignment_reg_n_0_[0]\,
      O => \alignment[0]_i_1_n_0\
    );
\alignment[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(1),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => \alignment_reg_n_0_[1]\,
      O => \alignment[1]_i_1_n_0\
    );
\alignment[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(2),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => \alignment_reg_n_0_[2]\,
      O => \alignment[2]_i_1_n_0\
    );
\alignment_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \alignment[0]_i_1_n_0\,
      Q => \alignment_reg_n_0_[0]\,
      R => '0'
    );
\alignment_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \alignment[1]_i_1_n_0\,
      Q => \alignment_reg_n_0_[1]\,
      R => '0'
    );
\alignment_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \alignment[2]_i_1_n_0\,
      Q => \alignment_reg_n_0_[2]\,
      R => '0'
    );
\dAlignment_int[0]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0EEEE"
    )
        port map (
      I0 => \dSyncHard_int_i_17__0_n_0\,
      I1 => \dAlignment_int[1]_i_18__0_n_0\,
      I2 => \dAlignment_int[1]_i_17__0_n_0\,
      I3 => \dSyncHard_int_i_16__0_n_0\,
      I4 => \alignment_reg_n_0_[0]\,
      O => \dAlignment_int[0]_i_10__0_n_0\
    );
\dAlignment_int[0]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2222"
    )
        port map (
      I0 => \dSyncHard_int_i_19__0_n_0\,
      I1 => \dAlignment_int[0]_i_17__0_n_0\,
      I2 => \dSyncHard_int_i_18__0_n_0\,
      I3 => \dAlignment_int[0]_i_18__0_n_0\,
      I4 => \dSyncHard_int_i_15__0_n_0\,
      O => \dAlignment_int[0]_i_11__0_n_0\
    );
\dAlignment_int[0]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][5]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[0]_i_12__0_n_0\
    );
\dAlignment_int[0]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[0]_i_13__0_n_0\
    );
\dAlignment_int[0]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => word(6),
      I1 => word(5),
      I2 => \dDataIn_reg_reg_n_0_[1][5]\,
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[0]_i_14__0_n_0\
    );
\dAlignment_int[0]_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][4]\,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => word(5),
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[0]_i_15__0_n_0\
    );
\dAlignment_int[0]_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => word(6),
      I1 => word(5),
      I2 => word(4),
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[0]_i_16__0_n_0\
    );
\dAlignment_int[0]_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => word(6),
      I1 => word(5),
      I2 => word(3),
      I3 => word(1),
      O => \dAlignment_int[0]_i_17__0_n_0\
    );
\dAlignment_int[0]_i_18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => word(3),
      I1 => word(4),
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[0]_i_18__0_n_0\
    );
\dAlignment_int[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4447444477777777"
    )
        port map (
      I0 => \dAlignment_int[0]_i_2__0_n_0\,
      I1 => \dSyncHard_int_i_2__0_n_0\,
      I2 => \dAlignment_int[0]_i_3__0_n_0\,
      I3 => \dAlignment_int[0]_i_4__0_n_0\,
      I4 => \dSyncSoft_int_i_2__0_n_0\,
      I5 => \dAlignment_int[0]_i_5__0_n_0\,
      O => alignment_out(0)
    );
\dAlignment_int[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF2"
    )
        port map (
      I0 => \dSyncHard_int_i_8__0_n_0\,
      I1 => \dAlignment_int[0]_i_6__0_n_0\,
      I2 => \dAlignment_int[0]_i_7__0_n_0\,
      I3 => \dSyncHard_int_i_6__0_n_0\,
      I4 => \dSyncHard_int_i_9__0_n_0\,
      I5 => \dAlignment_int[0]_i_8__0_n_0\,
      O => \dAlignment_int[0]_i_2__0_n_0\
    );
\dAlignment_int[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75575755FFFFFFFF"
    )
        port map (
      I0 => \dSyncSoft_int_i_7__0_n_0\,
      I1 => \dAlignment_int[1]_i_8__0_n_0\,
      I2 => \dAlignment_int[0]_i_9__0_n_0\,
      I3 => \dAlignment_int[1]_i_7__0_n_0\,
      I4 => \dAlignment_int[1]_i_6__0_n_0\,
      I5 => \dAlignment_int[2]_i_3__0_n_0\,
      O => \dAlignment_int[0]_i_3__0_n_0\
    );
\dAlignment_int[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA8AAAAAAAA"
    )
        port map (
      I0 => \dSyncSoft_int_i_8__0_n_0\,
      I1 => \dAlignment_int[0]_i_10__0_n_0\,
      I2 => \dAlignment_int[0]_i_7__0_n_0\,
      I3 => \dAlignment_int[0]_i_11__0_n_0\,
      I4 => \dAlignment_int[0]_i_8__0_n_0\,
      I5 => \dSyncSoft_int_i_9__0_n_0\,
      O => \dAlignment_int[0]_i_4__0_n_0\
    );
\dAlignment_int[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \dSyncSoft_int_i_4__0_n_0\,
      I1 => \dSyncSoft_int_i_7__0_n_0\,
      I2 => \dSyncSoft_int_i_5__0_n_0\,
      I3 => \dAlignment_int[1]_i_3__0_n_0\,
      O => \dAlignment_int[0]_i_5__0_n_0\
    );
\dAlignment_int[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \alignment_reg_n_0_[0]\,
      I1 => \dSyncHard_int_i_16__0_n_0\,
      I2 => word(3),
      I3 => word(2),
      I4 => word(1),
      I5 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => \dAlignment_int[0]_i_6__0_n_0\
    );
\dAlignment_int[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \dAlignment_int[0]_i_12__0_n_0\,
      I1 => \dSyncHard_int_i_12__0_n_0\,
      I2 => \dAlignment_int[0]_i_13__0_n_0\,
      I3 => \dAlignment_int[0]_i_14__0_n_0\,
      I4 => \dAlignment_int[2]_i_4__0_n_0\,
      I5 => \dAlignment_int[0]_i_15__0_n_0\,
      O => \dAlignment_int[0]_i_7__0_n_0\
    );
\dAlignment_int[0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \dSyncHard_int_i_18__0_n_0\,
      I1 => \dSyncHard_int_i_15__0_n_0\,
      I2 => \dAlignment_int[0]_i_13__0_n_0\,
      I3 => \dAlignment_int[0]_i_16__0_n_0\,
      I4 => \dAlignment_int[0]_i_12__0_n_0\,
      I5 => \dSyncHard_int_i_12__0_n_0\,
      O => \dAlignment_int[0]_i_8__0_n_0\
    );
\dAlignment_int[0]_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => word(1),
      O => \dAlignment_int[0]_i_9__0_n_0\
    );
\dAlignment_int[1]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][3]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dAlignment_int[1]_i_10__0_n_0\
    );
\dAlignment_int[1]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBABABAFFFFFFBA"
    )
        port map (
      I0 => \dSyncSoft_int_i_10__0_n_0\,
      I1 => word(5),
      I2 => \dDataIn_reg_reg_n_0_[1][5]\,
      I3 => \dDataIn_reg_reg_n_0_[1][4]\,
      I4 => \dDataIn_reg_reg_n_0_[1][3]\,
      I5 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[1]_i_11__0_n_0\
    );
\dAlignment_int[1]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word(6),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      O => \dAlignment_int[1]_i_12__0_n_0\
    );
\dAlignment_int[1]_i_13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][4]\,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => word(5),
      I3 => \dDataIn_reg_reg_n_0_[1][5]\,
      I4 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[1]_i_13__0_n_0\
    );
\dAlignment_int[1]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010001000100FFFF"
    )
        port map (
      I0 => \dAlignment_int[1]_i_16__0_n_0\,
      I1 => word(4),
      I2 => word(0),
      I3 => \dAlignment_int[1]_i_17__0_n_0\,
      I4 => \dSyncHard_int_i_17__0_n_0\,
      I5 => \dAlignment_int[1]_i_18__0_n_0\,
      O => \dAlignment_int[1]_i_14__0_n_0\
    );
\dAlignment_int[1]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => word(5),
      I1 => word(6),
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      O => \dAlignment_int[1]_i_15__0_n_0\
    );
\dAlignment_int[1]_i_16__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => word(6),
      I1 => word(5),
      O => \dAlignment_int[1]_i_16__0_n_0\
    );
\dAlignment_int[1]_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => word(3),
      I1 => word(2),
      I2 => word(1),
      I3 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => \dAlignment_int[1]_i_17__0_n_0\
    );
\dAlignment_int[1]_i_18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => word(2),
      I1 => word(0),
      I2 => word(4),
      I3 => word(3),
      O => \dAlignment_int[1]_i_18__0_n_0\
    );
\dAlignment_int[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2F30000F2F2"
    )
        port map (
      I0 => \dAlignment_int[1]_i_2__0_n_0\,
      I1 => \dAlignment_int[1]_i_3__0_n_0\,
      I2 => \dAlignment_int[1]_i_4__0_n_0\,
      I3 => \dSyncSoft_int_i_3__0_n_0\,
      I4 => \dSyncHard_int_i_2__0_n_0\,
      I5 => \dAlignment_int[1]_i_5__0_n_0\,
      O => alignment_out(1)
    );
\dAlignment_int[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008688FFFFFFFF"
    )
        port map (
      I0 => \dAlignment_int[1]_i_6__0_n_0\,
      I1 => \dAlignment_int[1]_i_7__0_n_0\,
      I2 => \dDataIn_reg_reg_n_0_[1][1]\,
      I3 => word(1),
      I4 => \dAlignment_int[1]_i_8__0_n_0\,
      I5 => \dSyncSoft_int_i_7__0_n_0\,
      O => \dAlignment_int[1]_i_2__0_n_0\
    );
\dAlignment_int[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020029"
    )
        port map (
      I0 => word(4),
      I1 => \dDataIn_reg_reg_n_0_[1][4]\,
      I2 => \dAlignment_int[1]_i_7__0_n_0\,
      I3 => \dAlignment_int[1]_i_9__0_n_0\,
      I4 => \dAlignment_int[1]_i_10__0_n_0\,
      O => \dAlignment_int[1]_i_3__0_n_0\
    );
\dAlignment_int[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAABABABAB"
    )
        port map (
      I0 => \dSyncSoft_int_i_5__0_n_0\,
      I1 => \dAlignment_int[1]_i_11__0_n_0\,
      I2 => \dAlignment_int[1]_i_12__0_n_0\,
      I3 => word(5),
      I4 => \dDataIn_reg_reg_n_0_[1][5]\,
      I5 => \dAlignment_int[1]_i_13__0_n_0\,
      O => \dAlignment_int[1]_i_4__0_n_0\
    );
\dAlignment_int[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0100"
    )
        port map (
      I0 => \dSyncHard_int_i_5__0_n_0\,
      I1 => \dSyncHard_int_i_6__0_n_0\,
      I2 => \dAlignment_int[1]_i_14__0_n_0\,
      I3 => \alignment_reg_n_0_[1]\,
      I4 => \dSyncHard_int_i_4__0_n_0\,
      I5 => \dSyncHard_int_i_9__0_n_0\,
      O => \dAlignment_int[1]_i_5__0_n_0\
    );
\dAlignment_int[1]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => word(2),
      I1 => word(4),
      I2 => word(3),
      O => \dAlignment_int[1]_i_6__0_n_0\
    );
\dAlignment_int[1]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => word(5),
      I2 => word(6),
      O => \dAlignment_int[1]_i_7__0_n_0\
    );
\dAlignment_int[1]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7F7F57FF5757"
    )
        port map (
      I0 => \dAlignment_int[1]_i_15__0_n_0\,
      I1 => word(4),
      I2 => word(3),
      I3 => word(1),
      I4 => \dDataIn_reg_reg_n_0_[1][1]\,
      I5 => word(2),
      O => \dAlignment_int[1]_i_8__0_n_0\
    );
\dAlignment_int[1]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF717171FFFFFF71"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => word(6),
      I2 => word(5),
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      I4 => \dDataIn_reg_reg_n_0_[1][2]\,
      I5 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dAlignment_int[1]_i_9__0_n_0\
    );
\dAlignment_int[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABFFFBFBF"
    )
        port map (
      I0 => \dAlignment_int[2]_i_2__0_n_0\,
      I1 => \dSyncSoft_int_i_2__0_n_0\,
      I2 => \dAlignment_int[2]_i_3__0_n_0\,
      I3 => \dSyncSoft_int_i_3__0_n_0\,
      I4 => \alignment_reg_n_0_[2]\,
      I5 => \dSyncHard_int_i_2__0_n_0\,
      O => alignment_out(2)
    );
\dAlignment_int[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAABAA"
    )
        port map (
      I0 => \dSyncHard_int_i_6__0_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => word(5),
      I3 => \dSyncHard_int_i_14__0_n_0\,
      I4 => \dAlignment_int[2]_i_4__0_n_0\,
      I5 => \dSyncHard_int_i_4__0_n_0\,
      O => \dAlignment_int[2]_i_2__0_n_0\
    );
\dAlignment_int[2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFEB"
    )
        port map (
      I0 => \dAlignment_int[2]_i_5__0_n_0\,
      I1 => \dAlignment_int[2]_i_6__0_n_0\,
      I2 => word(3),
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[2]_i_3__0_n_0\
    );
\dAlignment_int[2]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => word(4),
      I3 => word(6),
      O => \dAlignment_int[2]_i_4__0_n_0\
    );
\dAlignment_int[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBB2FFFBFFFBFFFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => \dDataIn_reg_reg_n_0_[1][2]\,
      I3 => word(4),
      I4 => word(6),
      I5 => word(5),
      O => \dAlignment_int[2]_i_5__0_n_0\
    );
\dAlignment_int[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0096960096000096"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => word(6),
      I4 => word(5),
      I5 => word(4),
      O => \dAlignment_int[2]_i_6__0_n_0\
    );
\dAlignment_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(0),
      Q => \dAlignment_int_reg_n_0_[0]\,
      R => dLogicRst
    );
\dAlignment_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(1),
      Q => \dAlignment_int_reg_n_0_[1]\,
      R => dLogicRst
    );
\dAlignment_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(2),
      Q => \dAlignment_int_reg_n_0_[2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(0),
      Q => \dDataIn_reg_reg_n_0_[0][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(1),
      Q => word(0),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(2),
      Q => word(1),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(3),
      Q => word(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(4),
      Q => word(3),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(5),
      Q => word(4),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(6),
      Q => word(5),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(7),
      Q => word(6),
      R => dLogicRst
    );
\dDataIn_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[0][0]\,
      Q => \dDataIn_reg_reg_n_0_[1][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(0),
      Q => \dDataIn_reg_reg_n_0_[1][1]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(1),
      Q => \dDataIn_reg_reg_n_0_[1][2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(2),
      Q => \dDataIn_reg_reg_n_0_[1][3]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(3),
      Q => \dDataIn_reg_reg_n_0_[1][4]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(4),
      Q => \dDataIn_reg_reg_n_0_[1][5]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(5),
      Q => \dDataIn_reg_reg_n_0_[1][6]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(6),
      Q => \dDataIn_reg_reg_n_0_[1][7]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][0]\,
      Q => \dDataIn_reg_reg_n_0_[2][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][1]\,
      Q => \dDataIn_reg_reg_n_0_[2][1]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][2]\,
      Q => \dDataIn_reg_reg_n_0_[2][2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][3]\,
      Q => \dDataIn_reg_reg_n_0_[2][3]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][4]\,
      Q => \dDataIn_reg_reg_n_0_[2][4]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][5]\,
      Q => \dDataIn_reg_reg_n_0_[2][5]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][6]\,
      Q => \dDataIn_reg_reg_n_0_[2][6]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][7]\,
      Q => \dDataIn_reg_reg_n_0_[2][7]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][0]\,
      Q => \dDataIn_reg_reg_n_0_[3][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][1]\,
      Q => \dDataIn_reg_reg_n_0_[3][1]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][2]\,
      Q => \dDataIn_reg_reg_n_0_[3][2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][3]\,
      Q => \dDataIn_reg_reg_n_0_[3][3]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][4]\,
      Q => \dDataIn_reg_reg_n_0_[3][4]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][5]\,
      Q => \dDataIn_reg_reg_n_0_[3][5]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][6]\,
      Q => \dDataIn_reg_reg_n_0_[3][6]\,
      R => dLogicRst
    );
\dDataOut8[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dLogicRst,
      I1 => \dValid_reg_reg_n_0_[3]\,
      O => dDataOut80
    );
\dDataOut8[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEEFFAAFAEEAAAA"
    )
        port map (
      I0 => \dDataOut8[0]_i_3_n_0\,
      I1 => \dDataOut8[0]_i_4_n_0\,
      I2 => \dDataOut8[0]_i_5_n_0\,
      I3 => \dAlignment_int_reg_n_0_[0]\,
      I4 => \dAlignment_int_reg_n_0_[1]\,
      I5 => \dDataOut8[0]_i_6_n_0\,
      O => \dDataOut8__0\(0)
    );
\dDataOut8[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020300"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[2][4]\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataIn_reg_reg_n_0_[2][0]\,
      I4 => \dAlignment_int_reg_n_0_[2]\,
      O => \dDataOut8[0]_i_3_n_0\
    );
\dDataOut8[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[2][6]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][2]\,
      O => \dDataOut8[0]_i_4_n_0\
    );
\dDataOut8[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[2][7]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][3]\,
      O => \dDataOut8[0]_i_5_n_0\
    );
\dDataOut8[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[2][5]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][1]\,
      O => \dDataOut8[0]_i_6_n_0\
    );
\dDataOut8[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE3EF232CE0EC202"
    )
        port map (
      I0 => \dDataOut8[0]_i_6_n_0\,
      I1 => \dAlignment_int_reg_n_0_[1]\,
      I2 => \dAlignment_int_reg_n_0_[0]\,
      I3 => \dDataOut8[1]_i_2_n_0\,
      I4 => \dDataOut8[0]_i_5_n_0\,
      I5 => \dDataOut8[0]_i_4_n_0\,
      O => \dDataOut8__0\(1)
    );
\dDataOut8[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][0]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][4]\,
      O => \dDataOut8[1]_i_2_n_0\
    );
\dDataOut8[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[2]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[1]_i_2_n_0\,
      I4 => \dDataOut8[0]_i_5_n_0\,
      I5 => \dDataOut8[0]_i_4_n_0\,
      O => \dDataOut8__0\(2)
    );
\dDataOut8[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][1]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][5]\,
      O => \dDataOut8[2]_i_2_n_0\
    );
\dDataOut8[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[3]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[2]_i_2_n_0\,
      I4 => \dDataOut8[1]_i_2_n_0\,
      I5 => \dDataOut8[0]_i_5_n_0\,
      O => \dDataOut8__0\(3)
    );
\dDataOut8[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][2]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][6]\,
      O => \dDataOut8[3]_i_2_n_0\
    );
\dDataOut8[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[4]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[3]_i_2_n_0\,
      I4 => \dDataOut8[2]_i_2_n_0\,
      I5 => \dDataOut8[1]_i_2_n_0\,
      O => \dDataOut8__0\(4)
    );
\dDataOut8[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][3]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][7]\,
      O => \dDataOut8[4]_i_2_n_0\
    );
\dDataOut8[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[5]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[4]_i_2_n_0\,
      I4 => \dDataOut8[3]_i_2_n_0\,
      I5 => \dDataOut8[2]_i_2_n_0\,
      O => \dDataOut8__0\(5)
    );
\dDataOut8[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][4]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[3][0]\,
      O => \dDataOut8[5]_i_2_n_0\
    );
\dDataOut8[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[6]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[5]_i_2_n_0\,
      I4 => \dDataOut8[4]_i_2_n_0\,
      I5 => \dDataOut8[3]_i_2_n_0\,
      O => \dDataOut8__0\(6)
    );
\dDataOut8[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][5]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[3][1]\,
      O => \dDataOut8[6]_i_2_n_0\
    );
\dDataOut8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAFFEEAAFAAAEE"
    )
        port map (
      I0 => \dDataOut8[7]_i_2_n_0\,
      I1 => \dDataOut8[4]_i_2_n_0\,
      I2 => \dDataOut8[5]_i_2_n_0\,
      I3 => \dAlignment_int_reg_n_0_[1]\,
      I4 => \dAlignment_int_reg_n_0_[0]\,
      I5 => \dDataOut8[6]_i_2_n_0\,
      O => \dDataOut8__0\(7)
    );
\dDataOut8[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080C000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][6]\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataIn_reg_reg_n_0_[3][2]\,
      I4 => \dAlignment_int_reg_n_0_[2]\,
      O => \dDataOut8[7]_i_2_n_0\
    );
\dDataOut8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(0),
      Q => rbD0RxDataHS(7),
      R => dDataOut80
    );
\dDataOut8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(1),
      Q => rbD0RxDataHS(6),
      R => dDataOut80
    );
\dDataOut8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(2),
      Q => rbD0RxDataHS(5),
      R => dDataOut80
    );
\dDataOut8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(3),
      Q => rbD0RxDataHS(4),
      R => dDataOut80
    );
\dDataOut8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(4),
      Q => rbD0RxDataHS(3),
      R => dDataOut80
    );
\dDataOut8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(5),
      Q => rbD0RxDataHS(2),
      R => dDataOut80
    );
\dDataOut8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(6),
      Q => rbD0RxDataHS(1),
      R => dDataOut80
    );
\dDataOut8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataOut8__0\(7),
      Q => rbD0RxDataHS(0),
      R => dDataOut80
    );
dLogicRst_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => SyncAsyncSettled_n_0,
      PRE => dSerdesRst,
      Q => dLogicRst
    );
dSerdesRst_q_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => dSerdesRst,
      Q => dSerdesRst_q
    );
\dSyncErr_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => \dSyncSoft_int_i_3__0_n_0\,
      I1 => \dSyncSoft_int_i_2__0_n_0\,
      I2 => \dSyncHard_int_i_2__0_n_0\,
      I3 => dSyncHard_int,
      I4 => \^dsyncerr_reg_reg\,
      O => \dSyncErr_int_i_1__0_n_0\
    );
dSyncErr_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dSyncErr_int_i_1__0_n_0\,
      Q => \^dsyncerr_reg_reg\,
      R => dLogicRst
    );
\dSyncHard_int_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => word(5),
      I1 => word(6),
      O => \dSyncHard_int_i_10__0_n_0\
    );
\dSyncHard_int_i_11__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dSyncHard_int_i_11__0_n_0\
    );
\dSyncHard_int_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][6]\,
      I1 => word(6),
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dSyncHard_int_i_12__0_n_0\
    );
\dSyncHard_int_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => \dDataIn_reg_reg_n_0_[1][5]\,
      O => \dSyncHard_int_i_13__0_n_0\
    );
\dSyncHard_int_i_14__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][3]\,
      I1 => \dDataIn_reg_reg_n_0_[1][4]\,
      O => \dSyncHard_int_i_14__0_n_0\
    );
\dSyncHard_int_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => word(5),
      I1 => word(6),
      I2 => \dDataIn_reg_reg_n_0_[1][2]\,
      I3 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dSyncHard_int_i_15__0_n_0\
    );
\dSyncHard_int_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => word(5),
      I1 => word(6),
      I2 => word(4),
      I3 => word(0),
      O => \dSyncHard_int_i_16__0_n_0\
    );
\dSyncHard_int_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => word(5),
      I1 => word(1),
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => word(6),
      O => \dSyncHard_int_i_17__0_n_0\
    );
\dSyncHard_int_i_18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => word(3),
      I1 => word(4),
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => word(2),
      O => \dSyncHard_int_i_18__0_n_0\
    );
\dSyncHard_int_i_19__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => word(4),
      I3 => word(2),
      O => \dSyncHard_int_i_19__0_n_0\
    );
\dSyncHard_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \dSyncHard_int_i_3__0_n_0\,
      I1 => nextMust_reg_n_0,
      I2 => word(5),
      I3 => word(6),
      I4 => word(3),
      I5 => word(4),
      O => dSyncHard_int
    );
\dSyncHard_int_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \dSyncHard_int_i_4__0_n_0\,
      I1 => \dSyncHard_int_i_5__0_n_0\,
      I2 => \dSyncHard_int_i_6__0_n_0\,
      I3 => \dSyncHard_int_i_7__0_n_0\,
      I4 => \dSyncHard_int_i_8__0_n_0\,
      I5 => \dSyncHard_int_i_9__0_n_0\,
      O => \dSyncHard_int_i_2__0_n_0\
    );
\dSyncHard_int_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^dsyncerr_reg_reg\,
      I1 => \^dsynchard_reg_reg\,
      I2 => \^dsyncsoft_reg_reg\,
      O => \dSyncHard_int_i_3__0_n_0\
    );
\dSyncHard_int_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0000008800"
    )
        port map (
      I0 => \dSyncHard_int_i_10__0_n_0\,
      I1 => \dSyncHard_int_i_11__0_n_0\,
      I2 => \dSyncHard_int_i_12__0_n_0\,
      I3 => \dSyncHard_int_i_13__0_n_0\,
      I4 => \dDataIn_reg_reg_n_0_[1][4]\,
      I5 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dSyncHard_int_i_4__0_n_0\
    );
\dSyncHard_int_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => word(5),
      I2 => \dSyncHard_int_i_14__0_n_0\,
      I3 => word(6),
      I4 => word(4),
      I5 => \dSyncHard_int_i_11__0_n_0\,
      O => \dSyncHard_int_i_5__0_n_0\
    );
\dSyncHard_int_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \dSyncHard_int_i_15__0_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => word(4),
      I4 => word(3),
      O => \dSyncHard_int_i_6__0_n_0\
    );
\dSyncHard_int_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[0][0]\,
      I1 => word(1),
      I2 => word(2),
      I3 => word(3),
      I4 => \dSyncHard_int_i_16__0_n_0\,
      O => \dSyncHard_int_i_7__0_n_0\
    );
\dSyncHard_int_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => word(3),
      I1 => word(4),
      I2 => word(0),
      I3 => word(2),
      I4 => \dSyncHard_int_i_17__0_n_0\,
      O => \dSyncHard_int_i_8__0_n_0\
    );
\dSyncHard_int_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => \dSyncHard_int_i_18__0_n_0\,
      I1 => \dSyncHard_int_i_15__0_n_0\,
      I2 => \dSyncHard_int_i_10__0_n_0\,
      I3 => word(3),
      I4 => word(1),
      I5 => \dSyncHard_int_i_19__0_n_0\,
      O => \dSyncHard_int_i_9__0_n_0\
    );
dSyncHard_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dSyncHard_int,
      D => \dSyncHard_int_i_2__0_n_0\,
      Q => \^dsynchard_reg_reg\,
      R => dLogicRst
    );
\dSyncSoft_int_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => word(6),
      O => \dSyncSoft_int_i_10__0_n_0\
    );
\dSyncSoft_int_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D4D4FFD4"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][5]\,
      I4 => word(5),
      O => \dSyncSoft_int_i_11__0_n_0\
    );
\dSyncSoft_int_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0DFF0D0D0D0D"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => \dDataIn_reg_reg_n_0_[1][2]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      I4 => \dDataIn_reg_reg_n_0_[1][4]\,
      I5 => \dDataIn_reg_reg_n_0_[1][5]\,
      O => \dSyncSoft_int_i_12__0_n_0\
    );
\dSyncSoft_int_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => word(6),
      I1 => \dDataIn_reg_reg_n_0_[1][6]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      I4 => \dDataIn_reg_reg_n_0_[1][0]\,
      I5 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dSyncSoft_int_i_13__0_n_0\
    );
\dSyncSoft_int_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][1]\,
      O => \dSyncSoft_int_i_14__0_n_0\
    );
\dSyncSoft_int_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][3]\,
      I1 => \dDataIn_reg_reg_n_0_[1][5]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      O => \dSyncSoft_int_i_15__0_n_0\
    );
\dSyncSoft_int_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3515100"
    )
        port map (
      I0 => word(2),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => word(1),
      I3 => word(3),
      I4 => word(4),
      O => \dSyncSoft_int_i_16__0_n_0\
    );
\dSyncSoft_int_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => word(4),
      I1 => word(3),
      I2 => word(5),
      O => \dSyncSoft_int_i_17__0_n_0\
    );
\dSyncSoft_int_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word(5),
      I1 => word(4),
      I2 => word(3),
      O => \dSyncSoft_int_i_18__0_n_0\
    );
\dSyncSoft_int_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D0CFF5D"
    )
        port map (
      I0 => word(3),
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => word(0),
      I3 => word(1),
      I4 => word(2),
      O => \dSyncSoft_int_i_19__0_n_0\
    );
\dSyncSoft_int_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \dSyncSoft_int_i_2__0_n_0\,
      I1 => \dSyncSoft_int_i_3__0_n_0\,
      I2 => \dSyncHard_int_i_2__0_n_0\,
      O => soft5_out
    );
\dSyncSoft_int_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => word(3),
      I1 => word(1),
      I2 => word(2),
      O => \dSyncSoft_int_i_20__0_n_0\
    );
\dSyncSoft_int_i_21__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => word(0),
      O => \dSyncSoft_int_i_21__0_n_0\
    );
\dSyncSoft_int_i_22__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2B2BFF2B"
    )
        port map (
      I0 => word(0),
      I1 => word(2),
      I2 => word(1),
      I3 => word(6),
      I4 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => \dSyncSoft_int_i_22__0_n_0\
    );
\dSyncSoft_int_i_23__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word(0),
      I1 => word(1),
      I2 => word(2),
      O => \dSyncSoft_int_i_23__0_n_0\
    );
\dSyncSoft_int_i_24__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => word(6),
      I1 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => \dSyncSoft_int_i_24__0_n_0\
    );
\dSyncSoft_int_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \dAlignment_int[1]_i_3__0_n_0\,
      I1 => \dSyncSoft_int_i_4__0_n_0\,
      I2 => \dSyncSoft_int_i_5__0_n_0\,
      O => \dSyncSoft_int_i_2__0_n_0\
    );
\dSyncSoft_int_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \dAlignment_int[2]_i_3__0_n_0\,
      I1 => \dSyncSoft_int_i_6__0_n_0\,
      I2 => \dSyncSoft_int_i_7__0_n_0\,
      I3 => \dSyncSoft_int_i_8__0_n_0\,
      I4 => \dSyncSoft_int_i_9__0_n_0\,
      O => \dSyncSoft_int_i_3__0_n_0\
    );
\dSyncSoft_int_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002055"
    )
        port map (
      I0 => \dAlignment_int[1]_i_13__0_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][5]\,
      I2 => word(5),
      I3 => \dAlignment_int[1]_i_12__0_n_0\,
      I4 => \dSyncSoft_int_i_10__0_n_0\,
      I5 => \dSyncSoft_int_i_11__0_n_0\,
      O => \dSyncSoft_int_i_4__0_n_0\
    );
\dSyncSoft_int_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000101101"
    )
        port map (
      I0 => \dSyncSoft_int_i_12__0_n_0\,
      I1 => \dSyncSoft_int_i_13__0_n_0\,
      I2 => word(6),
      I3 => \dDataIn_reg_reg_n_0_[1][6]\,
      I4 => \dSyncSoft_int_i_14__0_n_0\,
      I5 => \dSyncSoft_int_i_15__0_n_0\,
      O => \dSyncSoft_int_i_5__0_n_0\
    );
\dSyncSoft_int_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFD7FDFFFFFDFF"
    )
        port map (
      I0 => \dSyncSoft_int_i_16__0_n_0\,
      I1 => \dAlignment_int[0]_i_9__0_n_0\,
      I2 => word(6),
      I3 => word(5),
      I4 => \dDataIn_reg_reg_n_0_[1][0]\,
      I5 => \dAlignment_int[1]_i_6__0_n_0\,
      O => \dSyncSoft_int_i_6__0_n_0\
    );
\dSyncSoft_int_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF7FF7FF7F"
    )
        port map (
      I0 => \dSyncSoft_int_i_17__0_n_0\,
      I1 => \dSyncSoft_int_i_10__0_n_0\,
      I2 => \dAlignment_int[1]_i_12__0_n_0\,
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      I4 => word(2),
      I5 => \dSyncSoft_int_i_18__0_n_0\,
      O => \dSyncSoft_int_i_7__0_n_0\
    );
\dSyncSoft_int_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBBEFFFFFFFB"
    )
        port map (
      I0 => \dSyncSoft_int_i_19__0_n_0\,
      I1 => \dSyncSoft_int_i_20__0_n_0\,
      I2 => \dSyncSoft_int_i_21__0_n_0\,
      I3 => word(6),
      I4 => word(5),
      I5 => word(4),
      O => \dSyncSoft_int_i_8__0_n_0\
    );
\dSyncSoft_int_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFEFEFBE"
    )
        port map (
      I0 => \dSyncSoft_int_i_22__0_n_0\,
      I1 => \dSyncSoft_int_i_23__0_n_0\,
      I2 => word(3),
      I3 => word(4),
      I4 => word(5),
      I5 => \dSyncSoft_int_i_24__0_n_0\,
      O => \dSyncSoft_int_i_9__0_n_0\
    );
dSyncSoft_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dSyncHard_int,
      D => soft5_out,
      Q => \^dsyncsoft_reg_reg\,
      R => dLogicRst
    );
dValid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dValid_reg_reg_n_0_[3]\,
      Q => rbD0RxValidHS,
      R => dDataOut80
    );
\dValid_reg[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \^dsynchard_reg_reg\,
      I1 => \^dsyncsoft_reg_reg\,
      I2 => \dLP[0]_0\(0),
      I3 => \dLP[1]_1\(0),
      I4 => \dLP[0]_0\(1),
      I5 => \dLP[1]_1\(1),
      O => p_3_out(1)
    );
\dValid_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_3_out(1),
      Q => p_2_in,
      R => dLogicRst
    );
\dValid_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in,
      Q => \dValid_reg_reg_n_0_[3]\,
      R => dLogicRst
    );
\nextMust_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => word(1),
      I1 => word(2),
      I2 => word(0),
      I3 => \dDataIn_reg_reg_n_0_[0][0]\,
      I4 => \dSyncHard_int_i_3__0_n_0\,
      I5 => nextMust_reg_n_0,
      O => \nextMust_i_1__0_n_0\
    );
nextMust_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \nextMust_i_1__0_n_0\,
      Q => nextMust_reg_n_0,
      R => dLogicRst
    );
rbD0ErrSotHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dsyncerr_reg_reg\,
      I1 => dSyncErr_reg,
      O => rbD0ErrSotHS
    );
rbD0ErrSotSyncHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dsyncsoft_reg_reg\,
      I1 => dSyncSoft_reg,
      O => rbD0ErrSotSyncHS
    );
rbD0RxActiveHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^dsyncsoft_reg_reg\,
      I1 => \^dsynchard_reg_reg\,
      O => rbD0RxActiveHS
    );
rbD0RxSyncHS_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => dSyncSoft_reg,
      I1 => \^dsyncsoft_reg_reg\,
      I2 => dSyncHard_reg,
      I3 => \^dsynchard_reg_reg\,
      O => rbD0RxSyncHS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN is
  port (
    rbD0RxValidHS : out STD_LOGIC;
    aD0Stopstate : out STD_LOGIC;
    rbD0RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxActiveHS : out STD_LOGIC;
    rbD0RxSyncHS : out STD_LOGIC;
    rbD0ErrSotSyncHS : out STD_LOGIC;
    rbD0ErrSotHS : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    CLK : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aD0ForceRxmode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN : entity is "DPHY_LaneSFEN";
end design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN is
  signal HSDeserializerX_n_2 : STD_LOGIC;
  signal HSDeserializerX_n_3 : STD_LOGIC;
  signal HSDeserializerX_n_5 : STD_LOGIC;
  signal RxClkActiveHSResetBridge_n_0 : STD_LOGIC;
  signal SyncAsyncEnable_n_1 : STD_LOGIC;
  signal SyncAsyncForceRxMode_n_0 : STD_LOGIC;
  signal SyncAsyncValid_n_1 : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\ : STD_LOGIC;
  signal aLP_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cDelayCnt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_5__0_n_0\ : STD_LOGIC;
  signal cDelayCnt_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cDelayCnt_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal cEnable : STD_LOGIC;
  signal cHSReset_reg_n_0 : STD_LOGIC;
  signal cHSSettled_reg_n_0 : STD_LOGIC;
  signal cLPGlitch_0 : STD_LOGIC;
  signal cLPGlitch_1 : STD_LOGIC;
  signal cValid : STD_LOGIC;
  signal dSyncErr_reg : STD_LOGIC;
  signal dSyncHard_reg : STD_LOGIC;
  signal dSyncSoft_reg : STD_LOGIC;
  signal \^rbd0rxvalidhs\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \state[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \state[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_cDelayCnt_reg[12]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cDelayCnt_reg[12]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  rbD0RxValidHS <= \^rbd0rxvalidhs\;
HSDeserializerX: entity work.design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer_13
     port map (
      AS(0) => cHSReset_reg_n_0,
      CLK => CLK,
      CLKB => CLKB,
      RefClk => RefClk,
      aHS => aHS,
      aLP(1 downto 0) => aLP(1 downto 0),
      aLP_int(1 downto 0) => aLP_int(1 downto 0),
      cHSSettled_reg => cHSSettled_reg_n_0,
      dSyncErr_reg => dSyncErr_reg,
      dSyncErr_reg_reg => HSDeserializerX_n_5,
      dSyncHard_reg => dSyncHard_reg,
      dSyncHard_reg_reg => HSDeserializerX_n_2,
      dSyncSoft_reg => dSyncSoft_reg,
      dSyncSoft_reg_reg => HSDeserializerX_n_3,
      dphy_clk_hs_n => dphy_clk_hs_n,
      rbD0ErrSotHS => rbD0ErrSotHS,
      rbD0ErrSotSyncHS => rbD0ErrSotSyncHS,
      rbD0RxActiveHS => rbD0RxActiveHS,
      rbD0RxDataHS(7 downto 0) => rbD0RxDataHS(7 downto 0),
      rbD0RxSyncHS => rbD0RxSyncHS,
      rbD0RxValidHS => \^rbd0rxvalidhs\
    );
RxClkActiveHSResetBridge: entity work.design_1_MIPI_D_PHY_RX_0_0_ResetBridge_14
     port map (
      AR(0) => RxClkActiveHSResetBridge_n_0,
      AS(0) => AS(0),
      RefClk => RefClk
    );
SyncAsyncEnable: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_15\
     port map (
      AR(0) => SyncAsyncEnable_n_1,
      D(0) => D(0),
      RefClk => RefClk,
      \out\(0) => cEnable
    );
SyncAsyncForceRxMode: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_16\
     port map (
      AR(0) => SyncAsyncEnable_n_1,
      RefClk => RefClk,
      aD0ForceRxmode => aD0ForceRxmode,
      \out\(0) => SyncAsyncForceRxMode_n_0
    );
SyncAsyncValid: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_17\
     port map (
      AR(0) => RxClkActiveHSResetBridge_n_0,
      RefClk => RefClk,
      \cDelayCnt_reg[6]\ => \cDelayCnt[0]_i_3__0_n_0\,
      cHSSettled_reg => SyncAsyncValid_n_1,
      cHSSettled_reg_0 => cHSSettled_reg_n_0,
      \out\(0) => cValid,
      rbD0RxValidHS => \^rbd0rxvalidhs\,
      \state_reg[0]\ => \state_reg_n_0_[0]\,
      \state_reg[1]\ => \state_reg_n_0_[1]\,
      \state_reg[2]\ => \state_reg_n_0_[2]\
    );
\UseOwnLP.GenSyncLP[0].GlitchFilterLPC\: entity work.design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_18
     port map (
      \Filter.sOut_reg_0\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\,
      \Filter.sOut_reg_1\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\,
      RefClk => RefClk,
      \cDelayCnt_reg[0]\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\,
      \cDelayCnt_reg[6]\ => \cDelayCnt[0]_i_3__0_n_0\,
      \oSyncStages_reg[1]\(0) => SyncAsyncForceRxMode_n_0,
      \out\(0) => cLPGlitch_0,
      \state_reg[0]\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\,
      \state_reg[0]_0\ => \state_reg_n_0_[0]\,
      \state_reg[1]\ => \state_reg_n_0_[1]\,
      \state_reg[2]\ => \state_reg_n_0_[2]\
    );
\UseOwnLP.GenSyncLP[0].SyncAsyncx\: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_19\
     port map (
      D(0) => aLP_int(0),
      RefClk => RefClk,
      \out\(0) => cLPGlitch_0
    );
\UseOwnLP.GenSyncLP[1].GlitchFilterLPC\: entity work.design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_20
     port map (
      AS(0) => cHSReset_reg_n_0,
      \Filter.sOut_reg_0\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\,
      \Filter.sOut_reg_1\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\,
      RefClk => RefClk,
      cDelayCnt_reg(5) => cDelayCnt_reg(14),
      cDelayCnt_reg(4 downto 2) => cDelayCnt_reg(11 downto 9),
      cDelayCnt_reg(1 downto 0) => cDelayCnt_reg(5 downto 4),
      \cDelayCnt_reg[6]\ => \cDelayCnt[0]_i_3__0_n_0\,
      \cDelayCnt_reg[9]\ => \state[0]_i_6__0_n_0\,
      cHSReset_reg => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\,
      \oSyncStages_reg[1]\(0) => cValid,
      \out\(0) => cLPGlitch_1,
      \state_reg[0]\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1\,
      \state_reg[0]_0\ => \state_reg_n_0_[0]\,
      \state_reg[1]\ => \state_reg_n_0_[1]\,
      \state_reg[2]\ => \state_reg_n_0_[2]\
    );
\UseOwnLP.GenSyncLP[1].SyncAsyncx\: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_21\
     port map (
      D(0) => aLP_int(1),
      RefClk => RefClk,
      \out\(0) => cLPGlitch_1
    );
aD0Stopstate_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      O => aD0Stopstate
    );
\cDelayCnt[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cDelayCnt[0]_i_5__0_n_0\,
      I1 => cDelayCnt_reg(6),
      I2 => cDelayCnt_reg(3),
      I3 => cDelayCnt_reg(8),
      I4 => cDelayCnt_reg(7),
      I5 => \state[0]_i_7__0_n_0\,
      O => \cDelayCnt[0]_i_3__0_n_0\
    );
\cDelayCnt[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cDelayCnt_reg(0),
      O => \cDelayCnt[0]_i_4__0_n_0\
    );
\cDelayCnt[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => cDelayCnt_reg(11),
      I1 => cDelayCnt_reg(14),
      I2 => cDelayCnt_reg(9),
      I3 => cDelayCnt_reg(10),
      I4 => cDelayCnt_reg(4),
      I5 => cDelayCnt_reg(5),
      O => \cDelayCnt[0]_i_5__0_n_0\
    );
\cDelayCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__0_n_7\,
      Q => cDelayCnt_reg(0),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cDelayCnt_reg[0]_i_2__0_n_0\,
      CO(2) => \cDelayCnt_reg[0]_i_2__0_n_1\,
      CO(1) => \cDelayCnt_reg[0]_i_2__0_n_2\,
      CO(0) => \cDelayCnt_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cDelayCnt_reg[0]_i_2__0_n_4\,
      O(2) => \cDelayCnt_reg[0]_i_2__0_n_5\,
      O(1) => \cDelayCnt_reg[0]_i_2__0_n_6\,
      O(0) => \cDelayCnt_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => cDelayCnt_reg(3 downto 1),
      S(0) => \cDelayCnt[0]_i_4__0_n_0\
    );
\cDelayCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__1_n_5\,
      Q => cDelayCnt_reg(10),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__1_n_4\,
      Q => cDelayCnt_reg(11),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__1_n_7\,
      Q => cDelayCnt_reg(12),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[8]_i_1__1_n_0\,
      CO(3 downto 2) => \NLW_cDelayCnt_reg[12]_i_1__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cDelayCnt_reg[12]_i_1__1_n_2\,
      CO(0) => \cDelayCnt_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cDelayCnt_reg[12]_i_1__1_O_UNCONNECTED\(3),
      O(2) => \cDelayCnt_reg[12]_i_1__1_n_5\,
      O(1) => \cDelayCnt_reg[12]_i_1__1_n_6\,
      O(0) => \cDelayCnt_reg[12]_i_1__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => cDelayCnt_reg(14 downto 12)
    );
\cDelayCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__1_n_6\,
      Q => cDelayCnt_reg(13),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__1_n_5\,
      Q => cDelayCnt_reg(14),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__0_n_6\,
      Q => cDelayCnt_reg(1),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__0_n_5\,
      Q => cDelayCnt_reg(2),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__0_n_4\,
      Q => cDelayCnt_reg(3),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__1_n_7\,
      Q => cDelayCnt_reg(4),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[0]_i_2__0_n_0\,
      CO(3) => \cDelayCnt_reg[4]_i_1__1_n_0\,
      CO(2) => \cDelayCnt_reg[4]_i_1__1_n_1\,
      CO(1) => \cDelayCnt_reg[4]_i_1__1_n_2\,
      CO(0) => \cDelayCnt_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[4]_i_1__1_n_4\,
      O(2) => \cDelayCnt_reg[4]_i_1__1_n_5\,
      O(1) => \cDelayCnt_reg[4]_i_1__1_n_6\,
      O(0) => \cDelayCnt_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => cDelayCnt_reg(7 downto 4)
    );
\cDelayCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__1_n_6\,
      Q => cDelayCnt_reg(5),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__1_n_5\,
      Q => cDelayCnt_reg(6),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__1_n_4\,
      Q => cDelayCnt_reg(7),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__1_n_7\,
      Q => cDelayCnt_reg(8),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[4]_i_1__1_n_0\,
      CO(3) => \cDelayCnt_reg[8]_i_1__1_n_0\,
      CO(2) => \cDelayCnt_reg[8]_i_1__1_n_1\,
      CO(1) => \cDelayCnt_reg[8]_i_1__1_n_2\,
      CO(0) => \cDelayCnt_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[8]_i_1__1_n_4\,
      O(2) => \cDelayCnt_reg[8]_i_1__1_n_5\,
      O(1) => \cDelayCnt_reg[8]_i_1__1_n_6\,
      O(0) => \cDelayCnt_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => cDelayCnt_reg(11 downto 8)
    );
\cDelayCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__1_n_6\,
      Q => cDelayCnt_reg(9),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
cHSReset_reg: unisim.vcomponents.FDPE
     port map (
      C => RefClk,
      CE => '1',
      D => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\,
      PRE => RxClkActiveHSResetBridge_n_0,
      Q => cHSReset_reg_n_0
    );
cHSSettled_reg: unisim.vcomponents.FDCE
     port map (
      C => RefClk,
      CE => '1',
      CLR => RxClkActiveHSResetBridge_n_0,
      D => SyncAsyncValid_n_1,
      Q => cHSSettled_reg_n_0
    );
dSyncErr_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_5,
      Q => dSyncErr_reg,
      R => '0'
    );
dSyncHard_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_2,
      Q => dSyncHard_reg,
      R => '0'
    );
dSyncSoft_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_3,
      Q => dSyncSoft_reg,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\,
      I1 => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1\,
      I2 => \state[0]_i_4__0_n_0\,
      I3 => cEnable,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state[0]_i_7__0_n_0\,
      I1 => cDelayCnt_reg(7),
      I2 => cDelayCnt_reg(8),
      I3 => cDelayCnt_reg(3),
      I4 => cDelayCnt_reg(6),
      O => \state[0]_i_4__0_n_0\
    );
\state[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => cDelayCnt_reg(9),
      I1 => cDelayCnt_reg(10),
      I2 => cDelayCnt_reg(11),
      I3 => cDelayCnt_reg(14),
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[0]_i_6__0_n_0\
    );
\state[0]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cDelayCnt_reg(0),
      I1 => cDelayCnt_reg(12),
      I2 => cDelayCnt_reg(13),
      I3 => cDelayCnt_reg(2),
      I4 => cDelayCnt_reg(1),
      O => \state[0]_i_7__0_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDC08000000000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\,
      I2 => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => cEnable,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CCE8CCC00000000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\,
      I3 => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\,
      I4 => \state_reg_n_0_[0]\,
      I5 => cEnable,
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN_0 is
  port (
    rbD1RxValidHS : out STD_LOGIC;
    aD1Stopstate : out STD_LOGIC;
    rbD1RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD1RxActiveHS : out STD_LOGIC;
    rbD1RxSyncHS : out STD_LOGIC;
    rbD1ErrSotSyncHS : out STD_LOGIC;
    rbD1ErrSotHS : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    CLK : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aD1ForceRxmode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN_0 : entity is "DPHY_LaneSFEN";
end design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN_0;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN_0 is
  signal HSDeserializerX_n_2 : STD_LOGIC;
  signal HSDeserializerX_n_3 : STD_LOGIC;
  signal HSDeserializerX_n_5 : STD_LOGIC;
  signal RxClkActiveHSResetBridge_n_0 : STD_LOGIC;
  signal SyncAsyncForceRxMode_n_0 : STD_LOGIC;
  signal SyncAsyncValid_n_1 : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\ : STD_LOGIC;
  signal aLP_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cDelayCnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_5_n_0\ : STD_LOGIC;
  signal cDelayCnt_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cDelayCnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal cEnable : STD_LOGIC;
  signal cHSReset : STD_LOGIC;
  signal cHSSettled : STD_LOGIC;
  signal cIntRst : STD_LOGIC;
  signal cLPGlitch_0 : STD_LOGIC;
  signal cLPGlitch_1 : STD_LOGIC;
  signal cValid : STD_LOGIC;
  signal dSyncErr_reg : STD_LOGIC;
  signal dSyncHard_reg : STD_LOGIC;
  signal dSyncSoft_reg : STD_LOGIC;
  signal \^rbd1rxvalidhs\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_cDelayCnt_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cDelayCnt_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  rbD1RxValidHS <= \^rbd1rxvalidhs\;
HSDeserializerX: entity work.design_1_MIPI_D_PHY_RX_0_0_HS_Deserializer
     port map (
      AS(0) => cHSReset,
      CLK => CLK,
      CLKB => CLKB,
      RefClk => RefClk,
      aHS => aHS,
      aLP(1 downto 0) => aLP(1 downto 0),
      aLP_int(1 downto 0) => aLP_int(1 downto 0),
      cHSSettled => cHSSettled,
      dSyncErr_reg => dSyncErr_reg,
      dSyncErr_reg_reg => HSDeserializerX_n_5,
      dSyncHard_reg => dSyncHard_reg,
      dSyncHard_reg_reg => HSDeserializerX_n_2,
      dSyncSoft_reg => dSyncSoft_reg,
      dSyncSoft_reg_reg => HSDeserializerX_n_3,
      dphy_clk_hs_n => dphy_clk_hs_n,
      rbD1ErrSotHS => rbD1ErrSotHS,
      rbD1ErrSotSyncHS => rbD1ErrSotSyncHS,
      rbD1RxActiveHS => rbD1RxActiveHS,
      rbD1RxDataHS(7 downto 0) => rbD1RxDataHS(7 downto 0),
      rbD1RxSyncHS => rbD1RxSyncHS,
      rbD1RxValidHS => \^rbd1rxvalidhs\
    );
RxClkActiveHSResetBridge: entity work.design_1_MIPI_D_PHY_RX_0_0_ResetBridge_3
     port map (
      AR(0) => RxClkActiveHSResetBridge_n_0,
      AS(0) => AS(0),
      RefClk => RefClk
    );
SyncAsyncEnable: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_4\
     port map (
      AR(0) => cIntRst,
      D(0) => D(0),
      RefClk => RefClk,
      \out\(0) => cEnable
    );
SyncAsyncForceRxMode: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_5\
     port map (
      AR(0) => cIntRst,
      RefClk => RefClk,
      aD1ForceRxmode => aD1ForceRxmode,
      \out\(0) => SyncAsyncForceRxMode_n_0
    );
SyncAsyncValid: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_6\
     port map (
      AR(0) => RxClkActiveHSResetBridge_n_0,
      RefClk => RefClk,
      \cDelayCnt_reg[6]\ => \cDelayCnt[0]_i_3_n_0\,
      cHSSettled => cHSSettled,
      cHSSettled_reg => SyncAsyncValid_n_1,
      \out\(0) => cValid,
      rbD1RxValidHS => \^rbd1rxvalidhs\,
      \state_reg[0]\ => \state_reg_n_0_[0]\,
      \state_reg[1]\ => \state_reg_n_0_[1]\,
      \state_reg[2]\ => \state_reg_n_0_[2]\
    );
\UseOwnLP.GenSyncLP[0].GlitchFilterLPC\: entity work.design_1_MIPI_D_PHY_RX_0_0_GlitchFilter
     port map (
      \Filter.sOut_reg_0\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\,
      \Filter.sOut_reg_1\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\,
      RefClk => RefClk,
      \cDelayCnt_reg[0]\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\,
      \cDelayCnt_reg[6]\ => \cDelayCnt[0]_i_3_n_0\,
      \oSyncStages_reg[1]\(0) => SyncAsyncForceRxMode_n_0,
      \out\(0) => cLPGlitch_0,
      \state_reg[0]\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\,
      \state_reg[0]_0\ => \state_reg_n_0_[0]\,
      \state_reg[1]\ => \state_reg_n_0_[1]\,
      \state_reg[2]\ => \state_reg_n_0_[2]\
    );
\UseOwnLP.GenSyncLP[0].SyncAsyncx\: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_7\
     port map (
      D(0) => aLP_int(0),
      RefClk => RefClk,
      \out\(0) => cLPGlitch_0
    );
\UseOwnLP.GenSyncLP[1].GlitchFilterLPC\: entity work.design_1_MIPI_D_PHY_RX_0_0_GlitchFilter_8
     port map (
      AS(0) => cHSReset,
      \Filter.sOut_reg_0\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\,
      \Filter.sOut_reg_1\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\,
      RefClk => RefClk,
      cDelayCnt_reg(5) => cDelayCnt_reg(14),
      cDelayCnt_reg(4 downto 2) => cDelayCnt_reg(11 downto 9),
      cDelayCnt_reg(1 downto 0) => cDelayCnt_reg(5 downto 4),
      \cDelayCnt_reg[6]\ => \cDelayCnt[0]_i_3_n_0\,
      \cDelayCnt_reg[9]\ => \state[0]_i_6_n_0\,
      cHSReset_reg => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\,
      \oSyncStages_reg[1]\(0) => cValid,
      \out\(0) => cLPGlitch_1,
      \state_reg[0]\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1\,
      \state_reg[0]_0\ => \state_reg_n_0_[0]\,
      \state_reg[1]\ => \state_reg_n_0_[1]\,
      \state_reg[2]\ => \state_reg_n_0_[2]\
    );
\UseOwnLP.GenSyncLP[1].SyncAsyncx\: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0_9\
     port map (
      D(0) => aLP_int(1),
      RefClk => RefClk,
      \out\(0) => cLPGlitch_1
    );
aD1Stopstate_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      O => aD1Stopstate
    );
\cDelayCnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cDelayCnt[0]_i_5_n_0\,
      I1 => cDelayCnt_reg(6),
      I2 => cDelayCnt_reg(3),
      I3 => cDelayCnt_reg(8),
      I4 => cDelayCnt_reg(7),
      I5 => \state[0]_i_7_n_0\,
      O => \cDelayCnt[0]_i_3_n_0\
    );
\cDelayCnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cDelayCnt_reg(0),
      O => \cDelayCnt[0]_i_4_n_0\
    );
\cDelayCnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => cDelayCnt_reg(11),
      I1 => cDelayCnt_reg(14),
      I2 => cDelayCnt_reg(9),
      I3 => cDelayCnt_reg(10),
      I4 => cDelayCnt_reg(4),
      I5 => cDelayCnt_reg(5),
      O => \cDelayCnt[0]_i_5_n_0\
    );
\cDelayCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2_n_7\,
      Q => cDelayCnt_reg(0),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cDelayCnt_reg[0]_i_2_n_0\,
      CO(2) => \cDelayCnt_reg[0]_i_2_n_1\,
      CO(1) => \cDelayCnt_reg[0]_i_2_n_2\,
      CO(0) => \cDelayCnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cDelayCnt_reg[0]_i_2_n_4\,
      O(2) => \cDelayCnt_reg[0]_i_2_n_5\,
      O(1) => \cDelayCnt_reg[0]_i_2_n_6\,
      O(0) => \cDelayCnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => cDelayCnt_reg(3 downto 1),
      S(0) => \cDelayCnt[0]_i_4_n_0\
    );
\cDelayCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__0_n_5\,
      Q => cDelayCnt_reg(10),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__0_n_4\,
      Q => cDelayCnt_reg(11),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__0_n_7\,
      Q => cDelayCnt_reg(12),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[8]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_cDelayCnt_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cDelayCnt_reg[12]_i_1__0_n_2\,
      CO(0) => \cDelayCnt_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cDelayCnt_reg[12]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \cDelayCnt_reg[12]_i_1__0_n_5\,
      O(1) => \cDelayCnt_reg[12]_i_1__0_n_6\,
      O(0) => \cDelayCnt_reg[12]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => cDelayCnt_reg(14 downto 12)
    );
\cDelayCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__0_n_6\,
      Q => cDelayCnt_reg(13),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__0_n_5\,
      Q => cDelayCnt_reg(14),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2_n_6\,
      Q => cDelayCnt_reg(1),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2_n_5\,
      Q => cDelayCnt_reg(2),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2_n_4\,
      Q => cDelayCnt_reg(3),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__0_n_7\,
      Q => cDelayCnt_reg(4),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[0]_i_2_n_0\,
      CO(3) => \cDelayCnt_reg[4]_i_1__0_n_0\,
      CO(2) => \cDelayCnt_reg[4]_i_1__0_n_1\,
      CO(1) => \cDelayCnt_reg[4]_i_1__0_n_2\,
      CO(0) => \cDelayCnt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[4]_i_1__0_n_4\,
      O(2) => \cDelayCnt_reg[4]_i_1__0_n_5\,
      O(1) => \cDelayCnt_reg[4]_i_1__0_n_6\,
      O(0) => \cDelayCnt_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => cDelayCnt_reg(7 downto 4)
    );
\cDelayCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__0_n_6\,
      Q => cDelayCnt_reg(5),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__0_n_5\,
      Q => cDelayCnt_reg(6),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__0_n_4\,
      Q => cDelayCnt_reg(7),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__0_n_7\,
      Q => cDelayCnt_reg(8),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
\cDelayCnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[4]_i_1__0_n_0\,
      CO(3) => \cDelayCnt_reg[8]_i_1__0_n_0\,
      CO(2) => \cDelayCnt_reg[8]_i_1__0_n_1\,
      CO(1) => \cDelayCnt_reg[8]_i_1__0_n_2\,
      CO(0) => \cDelayCnt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[8]_i_1__0_n_4\,
      O(2) => \cDelayCnt_reg[8]_i_1__0_n_5\,
      O(1) => \cDelayCnt_reg[8]_i_1__0_n_6\,
      O(0) => \cDelayCnt_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => cDelayCnt_reg(11 downto 8)
    );
\cDelayCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__0_n_6\,
      Q => cDelayCnt_reg(9),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\
    );
cHSReset_reg: unisim.vcomponents.FDPE
     port map (
      C => RefClk,
      CE => '1',
      D => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\,
      PRE => RxClkActiveHSResetBridge_n_0,
      Q => cHSReset
    );
cHSSettled_reg: unisim.vcomponents.FDCE
     port map (
      C => RefClk,
      CE => '1',
      CLR => RxClkActiveHSResetBridge_n_0,
      D => SyncAsyncValid_n_1,
      Q => cHSSettled
    );
dSyncErr_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_5,
      Q => dSyncErr_reg,
      R => '0'
    );
dSyncHard_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_2,
      Q => dSyncHard_reg,
      R => '0'
    );
dSyncSoft_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_3,
      Q => dSyncSoft_reg,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\,
      I1 => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_1\,
      I2 => \state[0]_i_4_n_0\,
      I3 => cEnable,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state[0]_i_7_n_0\,
      I1 => cDelayCnt_reg(7),
      I2 => cDelayCnt_reg(8),
      I3 => cDelayCnt_reg(3),
      I4 => cDelayCnt_reg(6),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => cDelayCnt_reg(9),
      I1 => cDelayCnt_reg(10),
      I2 => cDelayCnt_reg(11),
      I3 => cDelayCnt_reg(14),
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cDelayCnt_reg(0),
      I1 => cDelayCnt_reg(12),
      I2 => cDelayCnt_reg(13),
      I3 => cDelayCnt_reg(2),
      I4 => cDelayCnt_reg(1),
      O => \state[0]_i_7_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDC08000000000"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\,
      I2 => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => cEnable,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CCE8CCC00000000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_0\,
      I3 => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_0\,
      I4 => \state_reg_n_0_[0]\,
      I5 => cEnable,
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver is
  port (
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    RxDDRClkHS : out STD_LOGIC;
    aRxClkActiveHS : out STD_LOGIC;
    aClkStopstate : out STD_LOGIC;
    aClkEnable : in STD_LOGIC;
    aClkUlpsActiveNot : out STD_LOGIC;
    aRxUlpsClkNot : out STD_LOGIC;
    aClkForceRxmode : in STD_LOGIC;
    aClkErrControl : out STD_LOGIC;
    RxByteClkHS : out STD_LOGIC;
    aD0Stopstate : out STD_LOGIC;
    aD0Enable : in STD_LOGIC;
    aD0UlpsActiveNot : out STD_LOGIC;
    rbD0RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxValidHS : out STD_LOGIC;
    rbD0RxActiveHS : out STD_LOGIC;
    rbD0RxSyncHS : out STD_LOGIC;
    rbD0ErrSotHS : out STD_LOGIC;
    rbD0ErrSotSyncHS : out STD_LOGIC;
    aD0ForceRxmode : in STD_LOGIC;
    D0RxClkEsc : out STD_LOGIC;
    aD0RxDataEsc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aD0RxValidEsc : out STD_LOGIC;
    aD0RxLpdtEsc : out STD_LOGIC;
    aD0RxUlpsEsc : out STD_LOGIC;
    aD0RxTriggerEsc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aD0ErrEsc : out STD_LOGIC;
    aD0ErrControl : out STD_LOGIC;
    aD1Stopstate : out STD_LOGIC;
    aD1Enable : in STD_LOGIC;
    aD1UlpsActiveNot : out STD_LOGIC;
    rbD1RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD1RxValidHS : out STD_LOGIC;
    rbD1RxActiveHS : out STD_LOGIC;
    rbD1RxSyncHS : out STD_LOGIC;
    rbD1ErrSotHS : out STD_LOGIC;
    rbD1ErrSotSyncHS : out STD_LOGIC;
    aD1ForceRxmode : in STD_LOGIC;
    D1RxClkEsc : out STD_LOGIC;
    aD1RxDataEsc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aD1RxValidEsc : out STD_LOGIC;
    aD1RxLpdtEsc : out STD_LOGIC;
    aD1RxUlpsEsc : out STD_LOGIC;
    aD1RxTriggerEsc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aD1ErrEsc : out STD_LOGIC;
    aD1ErrControl : out STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC
  );
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 4;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 32;
  attribute C_S_AXI_LITE_FREQ_HZ : integer;
  attribute C_S_AXI_LITE_FREQ_HZ of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 100000000;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is "MIPI_DPHY_Receiver";
  attribute kAddDelayClk_ps : integer;
  attribute kAddDelayClk_ps of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 0;
  attribute kAddDelayData0_ps : integer;
  attribute kAddDelayData0_ps of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 0;
  attribute kAddDelayData1_ps : integer;
  attribute kAddDelayData1_ps of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 0;
  attribute kDebug : string;
  attribute kDebug of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is "FALSE";
  attribute kGenerateAXIL : string;
  attribute kGenerateAXIL of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is "TRUE";
  attribute kGenerateMMCM : string;
  attribute kGenerateMMCM of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is "FALSE";
  attribute kLPFromLane0 : string;
  attribute kLPFromLane0 of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is "FALSE";
  attribute kNoOfDataLanes : integer;
  attribute kNoOfDataLanes of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 2;
  attribute kRefClkFreqHz : integer;
  attribute kRefClkFreqHz of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 200000000;
  attribute kVersionMajor : integer;
  attribute kVersionMajor of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver : entity is 2;
end design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver is
  signal \<const0>\ : STD_LOGIC;
  signal CoreAsyncReset_n_1 : STD_LOGIC;
  signal \GenIDELAYCTRL.rDlyRstCnt_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal HS_Clock : STD_LOGIC;
  signal HS_Data_0 : STD_LOGIC;
  signal HS_Data_1 : STD_LOGIC;
  signal LP_Clock : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RST : STD_LOGIC;
  signal \^rxbyteclkhs\ : STD_LOGIC;
  signal \^rxddrclkhs\ : STD_LOGIC;
  signal \YesAXILITE.AXI_Lite_Control_n_5\ : STD_LOGIC;
  signal \aLPBuf[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aLPBuf[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aLaneSCNNEnable : STD_LOGIC;
  signal aLaneSFENEnable_0 : STD_LOGIC;
  signal aLaneSFENEnable_1 : STD_LOGIC;
  signal aNotRxClkActiveHS : STD_LOGIC;
  signal aReset : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal rDlyLckd : STD_LOGIC;
  signal rExtRst : STD_LOGIC;
  signal rIntRst : STD_LOGIC;
  signal sel : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \GenIDELAYCTRL.IDelayCtrlX\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GenIDELAYCTRL.rDlyRstCnt[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GenIDELAYCTRL.rDlyRstCnt[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GenIDELAYCTRL.rDlyRstCnt[3]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GenIDELAYCTRL.rDlyRstCnt[4]_i_3\ : label is "soft_lutpair85";
begin
  D0RxClkEsc <= \<const0>\;
  D1RxClkEsc <= \<const0>\;
  RxByteClkHS <= \^rxbyteclkhs\;
  RxDDRClkHS <= \^rxddrclkhs\;
  aClkErrControl <= \<const0>\;
  aD0ErrControl <= \<const0>\;
  aD0ErrEsc <= \<const0>\;
  aD0RxDataEsc(7) <= \<const0>\;
  aD0RxDataEsc(6) <= \<const0>\;
  aD0RxDataEsc(5) <= \<const0>\;
  aD0RxDataEsc(4) <= \<const0>\;
  aD0RxDataEsc(3) <= \<const0>\;
  aD0RxDataEsc(2) <= \<const0>\;
  aD0RxDataEsc(1) <= \<const0>\;
  aD0RxDataEsc(0) <= \<const0>\;
  aD0RxLpdtEsc <= \<const0>\;
  aD0RxTriggerEsc(3) <= \<const0>\;
  aD0RxTriggerEsc(2) <= \<const0>\;
  aD0RxTriggerEsc(1) <= \<const0>\;
  aD0RxTriggerEsc(0) <= \<const0>\;
  aD0RxUlpsEsc <= \<const0>\;
  aD0RxValidEsc <= \<const0>\;
  aD0UlpsActiveNot <= \<const0>\;
  aD1ErrControl <= \<const0>\;
  aD1ErrEsc <= \<const0>\;
  aD1RxDataEsc(7) <= \<const0>\;
  aD1RxDataEsc(6) <= \<const0>\;
  aD1RxDataEsc(5) <= \<const0>\;
  aD1RxDataEsc(4) <= \<const0>\;
  aD1RxDataEsc(3) <= \<const0>\;
  aD1RxDataEsc(2) <= \<const0>\;
  aD1RxDataEsc(1) <= \<const0>\;
  aD1RxDataEsc(0) <= \<const0>\;
  aD1RxLpdtEsc <= \<const0>\;
  aD1RxTriggerEsc(3) <= \<const0>\;
  aD1RxTriggerEsc(2) <= \<const0>\;
  aD1RxTriggerEsc(1) <= \<const0>\;
  aD1RxTriggerEsc(0) <= \<const0>\;
  aD1RxUlpsEsc <= \<const0>\;
  aD1RxValidEsc <= \<const0>\;
  aD1UlpsActiveNot <= \<const0>\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
ClockInputBuffer: entity work.design_1_MIPI_D_PHY_RX_0_0_InputBuffer
     port map (
      aHS => HS_Clock,
      aLP(1 downto 0) => LP_Clock(1 downto 0),
      dphy_clk_hs_n => dphy_clk_hs_n,
      dphy_clk_hs_p => dphy_clk_hs_p,
      dphy_clk_lp_n => dphy_clk_lp_n,
      dphy_clk_lp_p => dphy_clk_lp_p
    );
ClockLane: entity work.design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSCNN
     port map (
      AS(0) => aNotRxClkActiveHS,
      CLK => \^rxbyteclkhs\,
      D(0) => aLaneSCNNEnable,
      RefClk => RefClk,
      RxDDRClkHS => \^rxddrclkhs\,
      aClkStopstate => aClkStopstate,
      aClkUlpsActiveNot => aClkUlpsActiveNot,
      aHS => HS_Clock,
      aLP(1 downto 0) => LP_Clock(1 downto 0),
      aRxClkActiveHS => aRxClkActiveHS,
      aRxUlpsClkNot => aRxUlpsClkNot
    );
CoreAsyncReset: entity work.design_1_MIPI_D_PHY_RX_0_0_ResetBridge
     port map (
      E(0) => sel,
      \GenIDELAYCTRL.rDlyRst_reg\ => CoreAsyncReset_n_1,
      RST => RST,
      RefClk => RefClk,
      aRst => aRst,
      \oSyncStages_reg[1]\(0) => p_1_out,
      \out\(0) => rExtRst
    );
\DataLaneGen[0].DPHY_LaneSFEN_X\: entity work.design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN
     port map (
      AS(0) => aNotRxClkActiveHS,
      CLK => \^rxbyteclkhs\,
      CLKB => \^rxddrclkhs\,
      D(0) => aLaneSFENEnable_0,
      RefClk => RefClk,
      aD0ForceRxmode => aD0ForceRxmode,
      aD0Stopstate => aD0Stopstate,
      aHS => HS_Data_0,
      aLP(1 downto 0) => \aLPBuf[0]\(1 downto 0),
      dphy_clk_hs_n => \^rxddrclkhs\,
      rbD0ErrSotHS => rbD0ErrSotHS,
      rbD0ErrSotSyncHS => rbD0ErrSotSyncHS,
      rbD0RxActiveHS => rbD0RxActiveHS,
      rbD0RxDataHS(7 downto 0) => rbD0RxDataHS(7 downto 0),
      rbD0RxSyncHS => rbD0RxSyncHS,
      rbD0RxValidHS => rbD0RxValidHS
    );
\DataLaneGen[0].InputBufferDataX\: entity work.\design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0\
     port map (
      aHS => HS_Data_0,
      aLP(1 downto 0) => \aLPBuf[0]\(1 downto 0),
      dphy_data_hs_n(0) => dphy_data_hs_n(0),
      dphy_data_hs_p(0) => dphy_data_hs_p(0),
      dphy_data_lp_n(0) => dphy_data_lp_n(0),
      dphy_data_lp_p(0) => dphy_data_lp_p(0)
    );
\DataLaneGen[1].DPHY_LaneSFEN_X\: entity work.design_1_MIPI_D_PHY_RX_0_0_DPHY_LaneSFEN_0
     port map (
      AS(0) => aNotRxClkActiveHS,
      CLK => \^rxbyteclkhs\,
      CLKB => \^rxddrclkhs\,
      D(0) => aLaneSFENEnable_1,
      RefClk => RefClk,
      aD1ForceRxmode => aD1ForceRxmode,
      aD1Stopstate => aD1Stopstate,
      aHS => HS_Data_1,
      aLP(1 downto 0) => \aLPBuf[1]\(1 downto 0),
      dphy_clk_hs_n => \^rxddrclkhs\,
      rbD1ErrSotHS => rbD1ErrSotHS,
      rbD1ErrSotSyncHS => rbD1ErrSotSyncHS,
      rbD1RxActiveHS => rbD1RxActiveHS,
      rbD1RxDataHS(7 downto 0) => rbD1RxDataHS(7 downto 0),
      rbD1RxSyncHS => rbD1RxSyncHS,
      rbD1RxValidHS => rbD1RxValidHS
    );
\DataLaneGen[1].InputBufferDataX\: entity work.\design_1_MIPI_D_PHY_RX_0_0_InputBuffer__parameterized0_1\
     port map (
      aHS => HS_Data_1,
      aLP(1 downto 0) => \aLPBuf[1]\(1 downto 0),
      dphy_data_hs_n(0) => dphy_data_hs_n(1),
      dphy_data_hs_p(0) => dphy_data_hs_p(1),
      dphy_data_lp_n(0) => dphy_data_lp_n(1),
      dphy_data_lp_p(0) => dphy_data_lp_p(1)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\GenIDELAYCTRL.IDelayCtrlX\: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => rDlyLckd,
      REFCLK => RefClk,
      RST => RST
    );
\GenIDELAYCTRL.rDlyRstCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(0),
      O => p_0_in(0)
    );
\GenIDELAYCTRL.rDlyRstCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(1),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(0),
      O => p_0_in(1)
    );
\GenIDELAYCTRL.rDlyRstCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(2),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(0),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(1),
      O => p_0_in(2)
    );
\GenIDELAYCTRL.rDlyRstCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(3),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(1),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(0),
      I3 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(2),
      O => p_0_in(3)
    );
\GenIDELAYCTRL.rDlyRstCnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(3),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(1),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(0),
      I3 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(2),
      I4 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(4),
      O => sel
    );
\GenIDELAYCTRL.rDlyRstCnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(4),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(2),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(0),
      I3 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(1),
      I4 => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(3),
      O => p_0_in(4)
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => p_0_in(0),
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(0),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => p_0_in(1),
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(1),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => p_0_in(2),
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(2),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => p_0_in(3),
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(3),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => p_0_in(4),
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg__0\(4),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRst_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => CoreAsyncReset_n_1,
      Q => RST,
      R => '0'
    );
\YesAXILITE.AXI_Lite_Control\: entity work.design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver_S_AXI_Lite
     port map (
      Q(1) => \YesAXILITE.AXI_Lite_Control_n_5\,
      Q(0) => aReset,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(1 downto 0) => s_axi_lite_araddr(3 downto 2),
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(1 downto 0) => s_axi_lite_awaddr(3 downto 2),
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid
    );
\YesAXILITE.CoreSoftReset\: entity work.design_1_MIPI_D_PHY_RX_0_0_ResetBridge_2
     port map (
      AS(0) => aReset,
      RefClk => RefClk,
      SS(0) => rIntRst,
      \oSyncStages_reg[1]\(0) => rExtRst,
      \out\(0) => p_1_out
    );
\YesAXILITE.SyncAsyncClkEnable\: entity work.\design_1_MIPI_D_PHY_RX_0_0_SyncAsync__parameterized0\
     port map (
      D(0) => \YesAXILITE.AXI_Lite_Control_n_5\,
      RefClk => RefClk,
      aClkEnable => aClkEnable,
      aD0Enable => aD0Enable,
      aD1Enable => aD1Enable,
      \oSyncStages_reg[0]_0\(0) => aLaneSFENEnable_0,
      \oSyncStages_reg[0]_1\(0) => aLaneSCNNEnable,
      \oSyncStages_reg[0]_2\(0) => aLaneSFENEnable_1,
      rDlyLckd => rDlyLckd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MIPI_D_PHY_RX_0_0 is
  port (
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    RxDDRClkHS : out STD_LOGIC;
    aRxClkActiveHS : out STD_LOGIC;
    aClkStopstate : out STD_LOGIC;
    aClkEnable : in STD_LOGIC;
    aClkUlpsActiveNot : out STD_LOGIC;
    aRxUlpsClkNot : out STD_LOGIC;
    aClkForceRxmode : in STD_LOGIC;
    aClkErrControl : out STD_LOGIC;
    RxByteClkHS : out STD_LOGIC;
    aD0Stopstate : out STD_LOGIC;
    aD0Enable : in STD_LOGIC;
    aD0UlpsActiveNot : out STD_LOGIC;
    rbD0RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxValidHS : out STD_LOGIC;
    rbD0RxActiveHS : out STD_LOGIC;
    rbD0RxSyncHS : out STD_LOGIC;
    rbD0ErrSotHS : out STD_LOGIC;
    rbD0ErrSotSyncHS : out STD_LOGIC;
    aD0ForceRxmode : in STD_LOGIC;
    D0RxClkEsc : out STD_LOGIC;
    aD0RxDataEsc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aD0RxValidEsc : out STD_LOGIC;
    aD0RxLpdtEsc : out STD_LOGIC;
    aD0RxUlpsEsc : out STD_LOGIC;
    aD0RxTriggerEsc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aD0ErrEsc : out STD_LOGIC;
    aD0ErrControl : out STD_LOGIC;
    aD1Stopstate : out STD_LOGIC;
    aD1Enable : in STD_LOGIC;
    aD1UlpsActiveNot : out STD_LOGIC;
    rbD1RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD1RxValidHS : out STD_LOGIC;
    rbD1RxActiveHS : out STD_LOGIC;
    rbD1RxSyncHS : out STD_LOGIC;
    rbD1ErrSotHS : out STD_LOGIC;
    rbD1ErrSotSyncHS : out STD_LOGIC;
    aD1ForceRxmode : in STD_LOGIC;
    D1RxClkEsc : out STD_LOGIC;
    aD1RxDataEsc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aD1RxValidEsc : out STD_LOGIC;
    aD1RxLpdtEsc : out STD_LOGIC;
    aD1RxUlpsEsc : out STD_LOGIC;
    aD1RxTriggerEsc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aD1ErrEsc : out STD_LOGIC;
    aD1ErrControl : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_MIPI_D_PHY_RX_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MIPI_D_PHY_RX_0_0 : entity is "design_1_MIPI_D_PHY_RX_0_0,MIPI_DPHY_Receiver,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_MIPI_D_PHY_RX_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_MIPI_D_PHY_RX_0_0 : entity is "MIPI_DPHY_Receiver,Vivado 2017.4";
end design_1_MIPI_D_PHY_RX_0_0;

architecture STRUCTURE of design_1_MIPI_D_PHY_RX_0_0 is
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_LITE_FREQ_HZ : integer;
  attribute C_S_AXI_LITE_FREQ_HZ of U0 : label is 100000000;
  attribute kAddDelayClk_ps : integer;
  attribute kAddDelayClk_ps of U0 : label is 0;
  attribute kAddDelayData0_ps : integer;
  attribute kAddDelayData0_ps of U0 : label is 0;
  attribute kAddDelayData1_ps : integer;
  attribute kAddDelayData1_ps of U0 : label is 0;
  attribute kDebug : string;
  attribute kDebug of U0 : label is "FALSE";
  attribute kGenerateAXIL : string;
  attribute kGenerateAXIL of U0 : label is "TRUE";
  attribute kGenerateMMCM : string;
  attribute kGenerateMMCM of U0 : label is "FALSE";
  attribute kLPFromLane0 : string;
  attribute kLPFromLane0 of U0 : label is "FALSE";
  attribute kNoOfDataLanes : integer;
  attribute kNoOfDataLanes of U0 : label is 2;
  attribute kRefClkFreqHz : integer;
  attribute kRefClkFreqHz of U0 : label is 200000000;
  attribute kVersionMajor : integer;
  attribute kVersionMajor of U0 : label is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of U0 : label is 2;
  attribute x_interface_info : string;
  attribute x_interface_info of D0RxClkEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXCLKESC";
  attribute x_interface_info of D1RxClkEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXCLKESC";
  attribute x_interface_info of RefClk : signal is "xilinx.com:signal:clock:1.0 RefClk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RefClk : signal is "XIL_INTERFACENAME RefClk, ASSOCIATED_RESET aRst, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of RxByteClkHS : signal is "xilinx.com:signal:clock:1.0 RxByteClkHS CLK";
  attribute x_interface_parameter of RxByteClkHS : signal is "XIL_INTERFACENAME RxByteClkHS, FREQ_HZ 25000000, ASSOCIATED_BUSIF D_PHY_PPI, PHASE 0.000, CLK_DOMAIN design_1_MIPI_D_PHY_RX_0_0_RxByteClkHS";
  attribute x_interface_info of aClkEnable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_ENABLE";
  attribute x_interface_info of aClkStopstate : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_STOPSTATE";
  attribute x_interface_info of aClkUlpsActiveNot : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_ULPSACTIVENOT";
  attribute x_interface_info of aD0Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ENABLE";
  attribute x_interface_info of aD0ErrControl : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRCONTROL";
  attribute x_interface_info of aD0ErrEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRESC";
  attribute x_interface_info of aD0ForceRxmode : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_FORCERXMODE";
  attribute x_interface_info of aD0RxLpdtEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXLPDTESC";
  attribute x_interface_info of aD0RxUlpsEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXULPSESC";
  attribute x_interface_info of aD0RxValidEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXVALIDESC";
  attribute x_interface_info of aD0Stopstate : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_STOPSTATE";
  attribute x_interface_info of aD0UlpsActiveNot : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ULPSACTIVENOT";
  attribute x_interface_info of aD1Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ENABLE";
  attribute x_interface_info of aD1ErrControl : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRCONTROL";
  attribute x_interface_info of aD1ErrEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRESC";
  attribute x_interface_info of aD1ForceRxmode : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_FORCERXMODE";
  attribute x_interface_info of aD1RxLpdtEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXLPDTESC";
  attribute x_interface_info of aD1RxUlpsEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXULPSESC";
  attribute x_interface_info of aD1RxValidEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXVALIDESC";
  attribute x_interface_info of aD1Stopstate : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_STOPSTATE";
  attribute x_interface_info of aD1UlpsActiveNot : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ULPSACTIVENOT";
  attribute x_interface_info of aRst : signal is "xilinx.com:signal:reset:1.0 aRst RST";
  attribute x_interface_parameter of aRst : signal is "XIL_INTERFACENAME aRst, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of aRxClkActiveHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_RXCLKACTIVEHS";
  attribute x_interface_info of aRxUlpsClkNot : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_RXULPSCLKNOT";
  attribute x_interface_info of dphy_clk_hs_n : signal is "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_N";
  attribute x_interface_info of dphy_clk_hs_p : signal is "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_P";
  attribute x_interface_parameter of dphy_clk_hs_p : signal is "XIL_INTERFACENAME dphy_hs_clock, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute x_interface_info of rbD0ErrSotHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRSOTHS";
  attribute x_interface_info of rbD0ErrSotSyncHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRSOTSYNCHS";
  attribute x_interface_info of rbD0RxActiveHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXACTIVEHS";
  attribute x_interface_info of rbD0RxSyncHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXSYNCHS";
  attribute x_interface_info of rbD0RxValidHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXVALIDHS";
  attribute x_interface_info of rbD1ErrSotHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRSOTHS";
  attribute x_interface_info of rbD1ErrSotSyncHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRSOTSYNCHS";
  attribute x_interface_info of rbD1RxActiveHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXACTIVEHS";
  attribute x_interface_info of rbD1RxSyncHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXSYNCHS";
  attribute x_interface_info of rbD1RxValidHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXVALIDHS";
  attribute x_interface_info of s_axi_lite_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  attribute x_interface_parameter of s_axi_lite_aclk : signal is "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_RESET s_axi_lite_aresetn, ASSOCIATED_BUSIF S_AXI_LITE, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2";
  attribute x_interface_info of s_axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  attribute x_interface_parameter of s_axi_lite_aresetn : signal is "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  attribute x_interface_info of s_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  attribute x_interface_info of s_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  attribute x_interface_info of s_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  attribute x_interface_info of s_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  attribute x_interface_info of s_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  attribute x_interface_info of s_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  attribute x_interface_info of s_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  attribute x_interface_info of s_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  attribute x_interface_info of s_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  attribute x_interface_info of aD0RxDataEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXDATAESC";
  attribute x_interface_info of aD0RxTriggerEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXTRIGGERESC";
  attribute x_interface_info of aD1RxDataEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXDATAESC";
  attribute x_interface_info of aD1RxTriggerEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXTRIGGERESC";
  attribute x_interface_info of rbD0RxDataHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXDATAHS";
  attribute x_interface_info of rbD1RxDataHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXDATAHS";
  attribute x_interface_info of s_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  attribute x_interface_info of s_axi_lite_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT";
  attribute x_interface_info of s_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  attribute x_interface_parameter of s_axi_lite_awaddr : signal is "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_lite_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT";
  attribute x_interface_info of s_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  attribute x_interface_info of s_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  attribute x_interface_info of s_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  attribute x_interface_info of s_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  attribute x_interface_info of s_axi_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
begin
U0: entity work.design_1_MIPI_D_PHY_RX_0_0_MIPI_DPHY_Receiver
     port map (
      D0RxClkEsc => D0RxClkEsc,
      D1RxClkEsc => D1RxClkEsc,
      RefClk => RefClk,
      RxByteClkHS => RxByteClkHS,
      RxDDRClkHS => RxDDRClkHS,
      aClkEnable => aClkEnable,
      aClkErrControl => aClkErrControl,
      aClkForceRxmode => aClkForceRxmode,
      aClkStopstate => aClkStopstate,
      aClkUlpsActiveNot => aClkUlpsActiveNot,
      aD0Enable => aD0Enable,
      aD0ErrControl => aD0ErrControl,
      aD0ErrEsc => aD0ErrEsc,
      aD0ForceRxmode => aD0ForceRxmode,
      aD0RxDataEsc(7 downto 0) => aD0RxDataEsc(7 downto 0),
      aD0RxLpdtEsc => aD0RxLpdtEsc,
      aD0RxTriggerEsc(3 downto 0) => aD0RxTriggerEsc(3 downto 0),
      aD0RxUlpsEsc => aD0RxUlpsEsc,
      aD0RxValidEsc => aD0RxValidEsc,
      aD0Stopstate => aD0Stopstate,
      aD0UlpsActiveNot => aD0UlpsActiveNot,
      aD1Enable => aD1Enable,
      aD1ErrControl => aD1ErrControl,
      aD1ErrEsc => aD1ErrEsc,
      aD1ForceRxmode => aD1ForceRxmode,
      aD1RxDataEsc(7 downto 0) => aD1RxDataEsc(7 downto 0),
      aD1RxLpdtEsc => aD1RxLpdtEsc,
      aD1RxTriggerEsc(3 downto 0) => aD1RxTriggerEsc(3 downto 0),
      aD1RxUlpsEsc => aD1RxUlpsEsc,
      aD1RxValidEsc => aD1RxValidEsc,
      aD1Stopstate => aD1Stopstate,
      aD1UlpsActiveNot => aD1UlpsActiveNot,
      aRst => aRst,
      aRxClkActiveHS => aRxClkActiveHS,
      aRxUlpsClkNot => aRxUlpsClkNot,
      dphy_clk_hs_n => dphy_clk_hs_n,
      dphy_clk_hs_p => dphy_clk_hs_p,
      dphy_clk_lp_n => dphy_clk_lp_n,
      dphy_clk_lp_p => dphy_clk_lp_p,
      dphy_data_hs_n(1 downto 0) => dphy_data_hs_n(1 downto 0),
      dphy_data_hs_p(1 downto 0) => dphy_data_hs_p(1 downto 0),
      dphy_data_lp_n(1 downto 0) => dphy_data_lp_n(1 downto 0),
      dphy_data_lp_p(1 downto 0) => dphy_data_lp_p(1 downto 0),
      rbD0ErrSotHS => rbD0ErrSotHS,
      rbD0ErrSotSyncHS => rbD0ErrSotSyncHS,
      rbD0RxActiveHS => rbD0RxActiveHS,
      rbD0RxDataHS(7 downto 0) => rbD0RxDataHS(7 downto 0),
      rbD0RxSyncHS => rbD0RxSyncHS,
      rbD0RxValidHS => rbD0RxValidHS,
      rbD1ErrSotHS => rbD1ErrSotHS,
      rbD1ErrSotSyncHS => rbD1ErrSotSyncHS,
      rbD1RxActiveHS => rbD1RxActiveHS,
      rbD1RxDataHS(7 downto 0) => rbD1RxDataHS(7 downto 0),
      rbD1RxSyncHS => rbD1RxSyncHS,
      rbD1RxValidHS => rbD1RxValidHS,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(3 downto 0) => s_axi_lite_araddr(3 downto 0),
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arprot(2 downto 0) => s_axi_lite_arprot(2 downto 0),
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(3 downto 0) => s_axi_lite_awaddr(3 downto 0),
      s_axi_lite_awprot(2 downto 0) => s_axi_lite_awprot(2 downto 0),
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bresp(1 downto 0) => s_axi_lite_bresp(1 downto 0),
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rresp(1 downto 0) => s_axi_lite_rresp(1 downto 0),
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid
    );
end STRUCTURE;
