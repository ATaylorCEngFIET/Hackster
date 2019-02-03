-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Dec  3 15:43:37 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/hdl_projects/Zybo_EV_Platform/block_compile.srcs/sources_1/bd/design_1/ip/design_1_axis_switch_0_0_1/design_1_axis_switch_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_switch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_read is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_reg[0].reg_data_reg[30]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[29]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[28]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[27]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[26]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[25]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[24]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[23]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[22]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[21]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[20]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[19]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[18]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[17]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[16]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[15]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[14]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[13]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[12]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[11]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[10]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[9]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[8]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[7]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[6]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[5]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[4]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[3]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[2]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[1]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[0]\ : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_reg[0].reg_data_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_read : entity is "axis_switch_v1_1_15_axi_ctrl_read";
end design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_read;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_read is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \data[30]_i_1_n_0\ : STD_LOGIC;
  signal \data[31]_i_1_n_0\ : STD_LOGIC;
  signal \data[31]_i_2_n_0\ : STD_LOGIC;
  signal \^data_reg[31]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_ctrl_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \/state[1]_i_1\ : label is "soft_lutpair0";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \data_reg[31]_0\(0) <= \^data_reg[31]_0\(0);
  s_axi_ctrl_rdata(31 downto 0) <= \^s_axi_ctrl_rdata\(31 downto 0);
\/state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_ctrl_arvalid,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => state(0)
    );
\/state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => s_axi_ctrl_rready,
      O => state(1)
    );
\addr_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(0),
      Q => sel0(0),
      R => '0'
    );
\addr_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(1),
      Q => sel0(1),
      R => '0'
    );
\addr_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(2),
      Q => sel0(2),
      R => '0'
    );
\addr_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(3),
      Q => sel0(3),
      R => '0'
    );
\addr_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(4),
      Q => \^data_reg[31]_0\(0),
      R => '0'
    );
\data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \^q\(0),
      O => \data[30]_i_1_n_0\
    );
\data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCB8FFFFCCB80000"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg[31]\(0),
      I1 => \^data_reg[31]_0\(0),
      I2 => \gen_reg[0].reg_data_reg[31]_0\(0),
      I3 => \data[31]_i_2_n_0\,
      I4 => \^q\(0),
      I5 => \^s_axi_ctrl_rdata\(31),
      O => \data[31]_i_1_n_0\
    );
\data[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      O => \data[31]_i_2_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[0]\,
      Q => \^s_axi_ctrl_rdata\(0),
      R => \data[30]_i_1_n_0\
    );
\data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[10]\,
      Q => \^s_axi_ctrl_rdata\(10),
      R => \data[30]_i_1_n_0\
    );
\data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[11]\,
      Q => \^s_axi_ctrl_rdata\(11),
      R => \data[30]_i_1_n_0\
    );
\data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[12]\,
      Q => \^s_axi_ctrl_rdata\(12),
      R => \data[30]_i_1_n_0\
    );
\data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[13]\,
      Q => \^s_axi_ctrl_rdata\(13),
      R => \data[30]_i_1_n_0\
    );
\data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[14]\,
      Q => \^s_axi_ctrl_rdata\(14),
      R => \data[30]_i_1_n_0\
    );
\data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[15]\,
      Q => \^s_axi_ctrl_rdata\(15),
      R => \data[30]_i_1_n_0\
    );
\data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[16]\,
      Q => \^s_axi_ctrl_rdata\(16),
      R => \data[30]_i_1_n_0\
    );
\data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[17]\,
      Q => \^s_axi_ctrl_rdata\(17),
      R => \data[30]_i_1_n_0\
    );
\data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[18]\,
      Q => \^s_axi_ctrl_rdata\(18),
      R => \data[30]_i_1_n_0\
    );
\data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[19]\,
      Q => \^s_axi_ctrl_rdata\(19),
      R => \data[30]_i_1_n_0\
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[1]\,
      Q => \^s_axi_ctrl_rdata\(1),
      R => \data[30]_i_1_n_0\
    );
\data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[20]\,
      Q => \^s_axi_ctrl_rdata\(20),
      R => \data[30]_i_1_n_0\
    );
\data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[21]\,
      Q => \^s_axi_ctrl_rdata\(21),
      R => \data[30]_i_1_n_0\
    );
\data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[22]\,
      Q => \^s_axi_ctrl_rdata\(22),
      R => \data[30]_i_1_n_0\
    );
\data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[23]\,
      Q => \^s_axi_ctrl_rdata\(23),
      R => \data[30]_i_1_n_0\
    );
\data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[24]\,
      Q => \^s_axi_ctrl_rdata\(24),
      R => \data[30]_i_1_n_0\
    );
\data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[25]\,
      Q => \^s_axi_ctrl_rdata\(25),
      R => \data[30]_i_1_n_0\
    );
\data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[26]\,
      Q => \^s_axi_ctrl_rdata\(26),
      R => \data[30]_i_1_n_0\
    );
\data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[27]\,
      Q => \^s_axi_ctrl_rdata\(27),
      R => \data[30]_i_1_n_0\
    );
\data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[28]\,
      Q => \^s_axi_ctrl_rdata\(28),
      R => \data[30]_i_1_n_0\
    );
\data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[29]\,
      Q => \^s_axi_ctrl_rdata\(29),
      R => \data[30]_i_1_n_0\
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[2]\,
      Q => \^s_axi_ctrl_rdata\(2),
      R => \data[30]_i_1_n_0\
    );
\data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[30]\,
      Q => \^s_axi_ctrl_rdata\(30),
      R => \data[30]_i_1_n_0\
    );
\data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \data[31]_i_1_n_0\,
      Q => \^s_axi_ctrl_rdata\(31),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[3]\,
      Q => \^s_axi_ctrl_rdata\(3),
      R => \data[30]_i_1_n_0\
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[4]\,
      Q => \^s_axi_ctrl_rdata\(4),
      R => \data[30]_i_1_n_0\
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[5]\,
      Q => \^s_axi_ctrl_rdata\(5),
      R => \data[30]_i_1_n_0\
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[6]\,
      Q => \^s_axi_ctrl_rdata\(6),
      R => \data[30]_i_1_n_0\
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[7]\,
      Q => \^s_axi_ctrl_rdata\(7),
      R => \data[30]_i_1_n_0\
    );
\data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[8]\,
      Q => \^s_axi_ctrl_rdata\(8),
      R => \data[30]_i_1_n_0\
    );
\data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^q\(0),
      D => \gen_reg[0].reg_data_reg[9]\,
      Q => \^s_axi_ctrl_rdata\(9),
      R => \data[30]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(0),
      Q => \^q\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(1),
      Q => \^q\(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_write is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_reg[0].reg_data_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_reg[0].reg_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out0 : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_write : entity is "axis_switch_v1_1_15_axi_ctrl_write";
end design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_write;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_write is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_reg[0].reg_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \^gen_reg[0].reg_data_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal write_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[29]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \gen_reg[0].reg_data_reg[31]_0\(31 downto 0) <= \^gen_reg[0].reg_data_reg[31]_0\(31 downto 0);
\addr_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(0),
      Q => write_addr(0),
      R => '0'
    );
\addr_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(1),
      Q => write_addr(1),
      R => '0'
    );
\addr_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(2),
      Q => write_addr(2),
      R => '0'
    );
\addr_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(3),
      Q => write_addr(3),
      R => '0'
    );
\addr_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(4),
      Q => p_0_in,
      R => '0'
    );
\data_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(0),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(0),
      R => '0'
    );
\data_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(10),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(10),
      R => '0'
    );
\data_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(11),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(11),
      R => '0'
    );
\data_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(12),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(12),
      R => '0'
    );
\data_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(13),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(13),
      R => '0'
    );
\data_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(14),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(14),
      R => '0'
    );
\data_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(15),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(15),
      R => '0'
    );
\data_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(16),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(16),
      R => '0'
    );
\data_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(17),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(17),
      R => '0'
    );
\data_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(18),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(18),
      R => '0'
    );
\data_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(19),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(19),
      R => '0'
    );
\data_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(1),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(1),
      R => '0'
    );
\data_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(20),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(20),
      R => '0'
    );
\data_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(21),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(21),
      R => '0'
    );
\data_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(22),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(22),
      R => '0'
    );
\data_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(23),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(23),
      R => '0'
    );
\data_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(24),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(24),
      R => '0'
    );
\data_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(25),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(25),
      R => '0'
    );
\data_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(26),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(26),
      R => '0'
    );
\data_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(27),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(27),
      R => '0'
    );
\data_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(28),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(28),
      R => '0'
    );
\data_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(29),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(29),
      R => '0'
    );
\data_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(2),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(2),
      R => '0'
    );
\data_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(30),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(30),
      R => '0'
    );
\data_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(31),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(31),
      R => '0'
    );
\data_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(3),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(3),
      R => '0'
    );
\data_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(4),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(4),
      R => '0'
    );
\data_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(5),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(5),
      R => '0'
    );
\data_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(6),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(6),
      R => '0'
    );
\data_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(7),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(7),
      R => '0'
    );
\data_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(8),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(8),
      R => '0'
    );
\data_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(9),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(9),
      R => '0'
    );
\gen_reg[0].reg_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(0),
      I1 => out0,
      O => D(0)
    );
\gen_reg[0].reg_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(10),
      I1 => out0,
      O => D(10)
    );
\gen_reg[0].reg_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(11),
      I1 => out0,
      O => D(11)
    );
\gen_reg[0].reg_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(12),
      I1 => out0,
      O => D(12)
    );
\gen_reg[0].reg_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(13),
      I1 => out0,
      O => D(13)
    );
\gen_reg[0].reg_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(14),
      I1 => out0,
      O => D(14)
    );
\gen_reg[0].reg_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(15),
      I1 => out0,
      O => D(15)
    );
\gen_reg[0].reg_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(16),
      I1 => out0,
      O => D(16)
    );
\gen_reg[0].reg_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(17),
      I1 => out0,
      O => D(17)
    );
\gen_reg[0].reg_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(18),
      I1 => out0,
      O => D(18)
    );
\gen_reg[0].reg_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(19),
      I1 => out0,
      O => D(19)
    );
\gen_reg[0].reg_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(1),
      I1 => out0,
      O => D(1)
    );
\gen_reg[0].reg_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(20),
      I1 => out0,
      O => D(20)
    );
\gen_reg[0].reg_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(21),
      I1 => out0,
      O => D(21)
    );
\gen_reg[0].reg_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(22),
      I1 => out0,
      O => D(22)
    );
\gen_reg[0].reg_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(23),
      I1 => out0,
      O => D(23)
    );
\gen_reg[0].reg_data[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(24),
      I1 => out0,
      O => D(24)
    );
\gen_reg[0].reg_data[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(25),
      I1 => out0,
      O => D(25)
    );
\gen_reg[0].reg_data[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(26),
      I1 => out0,
      O => D(26)
    );
\gen_reg[0].reg_data[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(27),
      I1 => out0,
      O => D(27)
    );
\gen_reg[0].reg_data[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(28),
      I1 => out0,
      O => D(28)
    );
\gen_reg[0].reg_data[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(29),
      I1 => out0,
      O => D(29)
    );
\gen_reg[0].reg_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(2),
      I1 => out0,
      O => D(2)
    );
\gen_reg[0].reg_data[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(30),
      I1 => out0,
      O => D(30)
    );
\gen_reg[0].reg_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => out0,
      I1 => p_0_in,
      I2 => \^q\(0),
      I3 => \gen_reg[0].reg_data[31]_i_3_n_0\,
      O => E(0)
    );
\gen_reg[0].reg_data[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => write_addr(1),
      I1 => write_addr(2),
      I2 => write_addr(0),
      I3 => write_addr(3),
      I4 => p_0_in,
      I5 => \^q\(0),
      O => \gen_reg[0].reg_data_reg[31]\(0)
    );
\gen_reg[0].reg_data[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(31),
      I1 => out0,
      O => D(31)
    );
\gen_reg[0].reg_data[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => write_addr(3),
      I1 => write_addr(0),
      I2 => write_addr(2),
      I3 => write_addr(1),
      O => \gen_reg[0].reg_data[31]_i_3_n_0\
    );
\gen_reg[0].reg_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(3),
      I1 => out0,
      O => D(3)
    );
\gen_reg[0].reg_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(4),
      I1 => out0,
      O => D(4)
    );
\gen_reg[0].reg_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(5),
      I1 => out0,
      O => D(5)
    );
\gen_reg[0].reg_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(6),
      I1 => out0,
      O => D(6)
    );
\gen_reg[0].reg_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(7),
      I1 => out0,
      O => D(7)
    );
\gen_reg[0].reg_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(8),
      I1 => out0,
      O => D(8)
    );
\gen_reg[0].reg_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(9),
      I1 => out0,
      O => D(9)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => s_axi_ctrl_awvalid,
      I3 => s_axi_ctrl_wvalid,
      I4 => \gen_reg[0].reg_data_reg[1]\(0),
      I5 => \^q\(1),
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000350"
    )
        port map (
      I0 => s_axi_ctrl_bready,
      I1 => \gen_reg[0].reg_data_reg[1]\(0),
      I2 => \^q\(1),
      I3 => \state_reg_n_0_[2]\,
      I4 => \^q\(0),
      O => state(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002C"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg[1]\(0),
      I1 => \^q\(0),
      I2 => \state_reg_n_0_[2]\,
      I3 => \^q\(1),
      O => state(2)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(0),
      Q => \^q\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(1),
      Q => \^q\(1),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32 is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32 : entity is "axis_switch_v1_1_15_reg_bank_16x32";
end design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32 is
begin
\gen_reg[0].reg_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(11),
      Q => Q(11),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(12),
      Q => Q(12),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(13),
      Q => Q(13),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(14),
      Q => Q(14),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(15),
      Q => Q(15),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(16),
      Q => Q(16),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(17),
      Q => Q(17),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(18),
      Q => Q(18),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(19),
      Q => Q(19),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      S => SR(0)
    );
\gen_reg[0].reg_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(20),
      Q => Q(20),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(21),
      Q => Q(21),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(22),
      Q => Q(22),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(23),
      Q => Q(23),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(24),
      Q => Q(24),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(25),
      Q => Q(25),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(26),
      Q => Q(26),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(27),
      Q => Q(27),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(28),
      Q => Q(28),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(29),
      Q => Q(29),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(30),
      Q => Q(30),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(31),
      Q => Q(31),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32__parameterized0\ is
  port (
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \data_reg[30]\ : out STD_LOGIC;
    \data_reg[29]\ : out STD_LOGIC;
    \data_reg[28]\ : out STD_LOGIC;
    \data_reg[27]\ : out STD_LOGIC;
    \data_reg[26]\ : out STD_LOGIC;
    \data_reg[25]\ : out STD_LOGIC;
    \data_reg[24]\ : out STD_LOGIC;
    \data_reg[23]\ : out STD_LOGIC;
    \data_reg[22]\ : out STD_LOGIC;
    \data_reg[21]\ : out STD_LOGIC;
    \data_reg[20]\ : out STD_LOGIC;
    \data_reg[19]\ : out STD_LOGIC;
    \data_reg[18]\ : out STD_LOGIC;
    \data_reg[17]\ : out STD_LOGIC;
    \data_reg[16]\ : out STD_LOGIC;
    \data_reg[15]\ : out STD_LOGIC;
    \data_reg[14]\ : out STD_LOGIC;
    \data_reg[13]\ : out STD_LOGIC;
    \data_reg[12]\ : out STD_LOGIC;
    \data_reg[11]\ : out STD_LOGIC;
    \data_reg[10]\ : out STD_LOGIC;
    \data_reg[9]\ : out STD_LOGIC;
    \data_reg[8]\ : out STD_LOGIC;
    \data_reg[7]\ : out STD_LOGIC;
    \data_reg[6]\ : out STD_LOGIC;
    \data_reg[5]\ : out STD_LOGIC;
    \data_reg[4]\ : out STD_LOGIC;
    \data_reg[3]\ : out STD_LOGIC;
    \data_reg[2]\ : out STD_LOGIC;
    \data_reg[1]\ : out STD_LOGIC;
    \data_reg[0]\ : out STD_LOGIC;
    \addr_r_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_reg[0].reg_data_reg[30]_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32__parameterized0\ : entity is "axis_switch_v1_1_15_reg_bank_16x32";
end \design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32__parameterized0\;

architecture STRUCTURE of \design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gen_reg[0].reg_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_reg[0].reg_data_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data[17]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data[19]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data[21]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data[24]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data[25]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data[26]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data[27]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data[29]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data[30]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data[9]_i_1\ : label is "soft_lutpair29";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(0),
      O => \data_reg[0]\
    );
\data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[10]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(10),
      O => \data_reg[10]\
    );
\data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[11]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(11),
      O => \data_reg[11]\
    );
\data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[12]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(12),
      O => \data_reg[12]\
    );
\data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[13]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(13),
      O => \data_reg[13]\
    );
\data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[14]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(14),
      O => \data_reg[14]\
    );
\data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[15]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(15),
      O => \data_reg[15]\
    );
\data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[16]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(16),
      O => \data_reg[16]\
    );
\data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[17]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(17),
      O => \data_reg[17]\
    );
\data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[18]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(18),
      O => \data_reg[18]\
    );
\data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[19]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(19),
      O => \data_reg[19]\
    );
\data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(1),
      O => \data_reg[1]\
    );
\data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[20]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(20),
      O => \data_reg[20]\
    );
\data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[21]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(21),
      O => \data_reg[21]\
    );
\data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[22]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(22),
      O => \data_reg[22]\
    );
\data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[23]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(23),
      O => \data_reg[23]\
    );
\data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[24]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(24),
      O => \data_reg[24]\
    );
\data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[25]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(25),
      O => \data_reg[25]\
    );
\data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[26]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(26),
      O => \data_reg[26]\
    );
\data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[27]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(27),
      O => \data_reg[27]\
    );
\data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[28]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(28),
      O => \data_reg[28]\
    );
\data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[29]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(29),
      O => \data_reg[29]\
    );
\data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(2),
      O => \data_reg[2]\
    );
\data[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[30]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(30),
      O => \data_reg[30]\
    );
\data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(3),
      O => \data_reg[3]\
    );
\data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[4]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(4),
      O => \data_reg[4]\
    );
\data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[5]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(5),
      O => \data_reg[5]\
    );
\data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[6]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(6),
      O => \data_reg[6]\
    );
\data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[7]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(7),
      O => \data_reg[7]\
    );
\data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[8]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(8),
      O => \data_reg[8]\
    );
\data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[9]\,
      I1 => \addr_r_reg[6]\(0),
      I2 => \gen_reg[0].reg_data_reg[30]_0\(9),
      O => \data_reg[9]\
    );
\gen_mi_mux_in[0].mi_mux_en_in[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\
    );
\gen_reg[0].reg_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(10),
      Q => \gen_reg[0].reg_data_reg_n_0_[10]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(11),
      Q => \gen_reg[0].reg_data_reg_n_0_[11]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(12),
      Q => \gen_reg[0].reg_data_reg_n_0_[12]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(13),
      Q => \gen_reg[0].reg_data_reg_n_0_[13]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(14),
      Q => \gen_reg[0].reg_data_reg_n_0_[14]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(15),
      Q => \gen_reg[0].reg_data_reg_n_0_[15]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(16),
      Q => \gen_reg[0].reg_data_reg_n_0_[16]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(17),
      Q => \gen_reg[0].reg_data_reg_n_0_[17]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(18),
      Q => \gen_reg[0].reg_data_reg_n_0_[18]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(19),
      Q => \gen_reg[0].reg_data_reg_n_0_[19]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(20),
      Q => \gen_reg[0].reg_data_reg_n_0_[20]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(21),
      Q => \gen_reg[0].reg_data_reg_n_0_[21]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(22),
      Q => \gen_reg[0].reg_data_reg_n_0_[22]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(23),
      Q => \gen_reg[0].reg_data_reg_n_0_[23]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(24),
      Q => \gen_reg[0].reg_data_reg_n_0_[24]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(25),
      Q => \gen_reg[0].reg_data_reg_n_0_[25]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(26),
      Q => \gen_reg[0].reg_data_reg_n_0_[26]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(27),
      Q => \gen_reg[0].reg_data_reg_n_0_[27]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(28),
      Q => \gen_reg[0].reg_data_reg_n_0_[28]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(29),
      Q => \gen_reg[0].reg_data_reg_n_0_[29]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(30),
      Q => \gen_reg[0].reg_data_reg_n_0_[30]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(31),
      Q => \^q\(4),
      S => SR(0)
    );
\gen_reg[0].reg_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(4),
      Q => \gen_reg[0].reg_data_reg_n_0_[4]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(5),
      Q => \gen_reg[0].reg_data_reg_n_0_[5]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(6),
      Q => \gen_reg[0].reg_data_reg_n_0_[6]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(7),
      Q => \gen_reg[0].reg_data_reg_n_0_[7]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(8),
      Q => \gen_reg[0].reg_data_reg_n_0_[8]\,
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(9),
      Q => \gen_reg[0].reg_data_reg_n_0_[9]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config_dp is
  port (
    done : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ctrl_req_r_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[31]\ : in STD_LOGIC;
    src_rcv : in STD_LOGIC;
    src_send : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config_dp : entity is "axis_switch_v1_1_15_static_router_config_dp";
end design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config_dp;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config_dp is
  signal \^d\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^done\ : STD_LOGIC;
  signal \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_si_enable[0].si_enable_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_si_enable[0].si_enable_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_si_enable[1].si_enable_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_si_mux[0].si_mux_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_si_mux[1].si_mux_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \mi_cntr_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mi_connectivity : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mi_connectivity[0]_i_1_n_0\ : STD_LOGIC;
  signal mi_mux_en_in : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_out_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \selectee[3]_i_1_n_0\ : STD_LOGIC;
  signal selector : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal start_r : STD_LOGIC;
  signal stg1_done : STD_LOGIC;
  signal stg1_done_i_1_n_0 : STD_LOGIC;
  signal stg1_reset : STD_LOGIC;
  signal stg1_reset_i_1_n_0 : STD_LOGIC;
  signal stg2_done_i_1_n_0 : STD_LOGIC;
  signal stg2_reset : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_si_enable[0].si_enable_r[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_si_enable[1].si_enable_r[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mi_cntr[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \mi_cntr[3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \mi_connectivity[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of stg1_done_i_1 : label is "soft_lutpair33";
begin
  D(14 downto 0) <= \^d\(14 downto 0);
  done <= \^done\;
ctrl_req_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => \^done\,
      I1 => \out\(1),
      I2 => src_rcv,
      I3 => \out\(2),
      I4 => src_send,
      O => ctrl_req_r_reg
    );
\gen_mi_enable[0].mi_enable_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAEEEAAA"
    )
        port map (
      I0 => \^d\(4),
      I1 => p_0_out_n_0,
      I2 => \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0\,
      I3 => p_0_in_0(0),
      I4 => \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0\,
      I5 => stg2_reset,
      O => \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0\
    );
\gen_mi_enable[0].mi_enable_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => mi_connectivity(0),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(4),
      I5 => \^d\(14),
      O => \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0\
    );
\gen_mi_enable[0].mi_enable_r[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => mi_connectivity(0),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(4),
      I5 => \^d\(13),
      O => \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0\
    );
\gen_mi_enable[0].mi_enable_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0\,
      Q => \^d\(4),
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_en_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[31]\,
      Q => mi_mux_en_in,
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[3]\(0),
      Q => \^d\(0),
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[3]\(1),
      Q => \^d\(1),
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[3]\(2),
      Q => \^d\(2),
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[3]\(3),
      Q => \^d\(3),
      R => '0'
    );
\gen_si_enable[0].si_enable_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => \^d\(13),
      I1 => \gen_si_enable[0].si_enable_r[0]_i_2_n_0\,
      I2 => p_0_in_0(0),
      I3 => stg2_reset,
      O => \gen_si_enable[0].si_enable_r[0]_i_1_n_0\
    );
\gen_si_enable[0].si_enable_r[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(3),
      I4 => mi_connectivity(0),
      O => \gen_si_enable[0].si_enable_r[0]_i_2_n_0\
    );
\gen_si_enable[0].si_enable_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_enable[0].si_enable_r[0]_i_1_n_0\,
      Q => \^d\(13),
      R => '0'
    );
\gen_si_enable[1].si_enable_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => \^d\(14),
      I1 => p_0_in_0(0),
      I2 => \gen_si_enable[0].si_enable_r[0]_i_2_n_0\,
      I3 => stg2_reset,
      O => \gen_si_enable[1].si_enable_r[1]_i_1_n_0\
    );
\gen_si_enable[1].si_enable_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_enable[1].si_enable_r[1]_i_1_n_0\,
      Q => \^d\(14),
      R => '0'
    );
\gen_si_mux[0].si_mux_r[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d\(13),
      O => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\
    );
\gen_si_mux[0].si_mux_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\,
      D => selector(0),
      Q => \^d\(5),
      R => '0'
    );
\gen_si_mux[0].si_mux_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\,
      D => selector(1),
      Q => \^d\(6),
      R => '0'
    );
\gen_si_mux[0].si_mux_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\,
      D => selector(2),
      Q => \^d\(7),
      R => '0'
    );
\gen_si_mux[0].si_mux_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\,
      D => selector(3),
      Q => \^d\(8),
      R => '0'
    );
\gen_si_mux[1].si_mux_r[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d\(14),
      O => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\
    );
\gen_si_mux[1].si_mux_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\,
      D => selector(0),
      Q => \^d\(9),
      R => '0'
    );
\gen_si_mux[1].si_mux_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\,
      D => selector(1),
      Q => \^d\(10),
      R => '0'
    );
\gen_si_mux[1].si_mux_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\,
      D => selector(2),
      Q => \^d\(11),
      R => '0'
    );
\gen_si_mux[1].si_mux_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\,
      D => selector(3),
      Q => \^d\(12),
      R => '0'
    );
\mi_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      I1 => \mi_cntr_reg__0\(1),
      O => p_0_in(1)
    );
\mi_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      I1 => \mi_cntr_reg__0\(1),
      I2 => \mi_cntr_reg__0\(2),
      O => p_0_in(2)
    );
\mi_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      I1 => \mi_cntr_reg__0\(1),
      I2 => \mi_cntr_reg__0\(3),
      I3 => \mi_cntr_reg__0\(2),
      O => sel
    );
\mi_cntr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \mi_cntr_reg__0\(1),
      I1 => \mi_cntr_reg__0\(0),
      I2 => \mi_cntr_reg__0\(2),
      I3 => \mi_cntr_reg__0\(3),
      O => p_0_in(3)
    );
\mi_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => sel,
      D => \mi_connectivity[0]_i_1_n_0\,
      Q => \mi_cntr_reg__0\(0),
      R => stg1_reset
    );
\mi_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => sel,
      D => p_0_in(1),
      Q => \mi_cntr_reg__0\(1),
      R => stg1_reset
    );
\mi_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => sel,
      D => p_0_in(2),
      Q => \mi_cntr_reg__0\(2),
      R => stg1_reset
    );
\mi_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => sel,
      D => p_0_in(3),
      Q => \mi_cntr_reg__0\(3),
      R => stg1_reset
    );
\mi_connectivity[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      O => \mi_connectivity[0]_i_1_n_0\
    );
\mi_connectivity_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_connectivity[0]_i_1_n_0\,
      Q => mi_connectivity(0),
      R => '0'
    );
p_0_out: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => selector(3),
      I1 => selector(2),
      I2 => selector(0),
      I3 => selector(1),
      O => p_0_out_n_0
    );
\selectee[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^d\(3),
      I1 => \mi_cntr_reg__0\(0),
      O => \selectee[3]_i_1_n_0\
    );
\selectee_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \^d\(0),
      Q => p_0_in_0(0),
      R => \mi_cntr_reg__0\(0)
    );
\selectee_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \^d\(1),
      Q => p_0_in_0(1),
      R => \mi_cntr_reg__0\(0)
    );
\selectee_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \^d\(2),
      Q => p_0_in_0(2),
      R => \mi_cntr_reg__0\(0)
    );
\selectee_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \selectee[3]_i_1_n_0\,
      Q => p_0_in_0(3),
      R => '0'
    );
selector_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux_en_in,
      Q => p_0_in_0(4),
      R => \mi_cntr_reg__0\(0)
    );
\selector_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_cntr_reg__0\(0),
      Q => selector(0),
      R => '0'
    );
\selector_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_cntr_reg__0\(1),
      Q => selector(1),
      R => '0'
    );
\selector_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_cntr_reg__0\(2),
      Q => selector(2),
      R => '0'
    );
\selector_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_cntr_reg__0\(3),
      Q => selector(3),
      R => '0'
    );
start_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \out\(0),
      Q => start_r,
      R => '0'
    );
stg1_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      I1 => \mi_cntr_reg__0\(1),
      I2 => \mi_cntr_reg__0\(3),
      I3 => \mi_cntr_reg__0\(2),
      I4 => stg1_reset,
      O => stg1_done_i_1_n_0
    );
stg1_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => stg1_done_i_1_n_0,
      Q => stg1_done,
      R => '0'
    );
stg1_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(0),
      I1 => start_r,
      O => stg1_reset_i_1_n_0
    );
stg1_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => stg1_reset_i_1_n_0,
      Q => stg1_reset,
      R => '0'
    );
stg2_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stg1_done,
      I1 => stg1_reset,
      O => stg2_done_i_1_n_0
    );
stg2_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => stg2_done_i_1_n_0,
      Q => \^done\,
      R => '0'
    );
stg2_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => stg1_reset,
      Q => stg2_reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_axis_switch_0_0_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_axis_switch_0_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_axis_switch_0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of design_1_axis_switch_0_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_axis_switch_0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_axis_switch_0_0_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_axis_switch_0_0_xpm_cdc_single : entity is "SINGLE";
end design_1_axis_switch_0_0_xpm_cdc_single;

architecture STRUCTURE of design_1_axis_switch_0_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
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
entity \design_1_axis_switch_0_0_xpm_cdc_single__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_axis_switch_0_0_xpm_cdc_single__1\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_axis_switch_0_0_xpm_cdc_single__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axis_switch_0_0_xpm_cdc_single__1\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_axis_switch_0_0_xpm_cdc_single__1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \design_1_axis_switch_0_0_xpm_cdc_single__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_axis_switch_0_0_xpm_cdc_single__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_axis_switch_0_0_xpm_cdc_single__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_axis_switch_0_0_xpm_cdc_single__1\ : entity is "SINGLE";
end \design_1_axis_switch_0_0_xpm_cdc_single__1\;

architecture STRUCTURE of \design_1_axis_switch_0_0_xpm_cdc_single__1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
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
entity \design_1_axis_switch_0_0_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_axis_switch_0_0_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_axis_switch_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axis_switch_0_0_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_axis_switch_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \design_1_axis_switch_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_axis_switch_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_axis_switch_0_0_xpm_cdc_single__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_axis_switch_0_0_xpm_cdc_single__2\ : entity is "SINGLE";
end \design_1_axis_switch_0_0_xpm_cdc_single__2\;

architecture STRUCTURE of \design_1_axis_switch_0_0_xpm_cdc_single__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
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
entity design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_clock_synchronizer is
  port (
    src_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_clock_synchronizer : entity is "axis_infrastructure_v1_1_0_clock_synchronizer";
end design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_clock_synchronizer;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_clock_synchronizer is
  signal soft_reset : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of inst_xpm_cdc_single : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of inst_xpm_cdc_single : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst_xpm_cdc_single : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of inst_xpm_cdc_single : label is 0;
  attribute VERSION : integer;
  attribute VERSION of inst_xpm_cdc_single : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of inst_xpm_cdc_single : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of inst_xpm_cdc_single : label is "TRUE";
begin
inst_xpm_cdc_single: entity work.\design_1_axis_switch_0_0_xpm_cdc_single__1\
     port map (
      dest_clk => aclk,
      dest_out => soft_reset,
      src_clk => '0',
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_mi_mux_in[0].mi_mux_in_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\ : out STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    out0 : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_top : entity is "axis_switch_v1_1_15_axi_ctrl_top";
end design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_top;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_top is
  signal data_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^data_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_reg[0].reg_data_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inst_axi_ctrl_read_n_2 : STD_LOGIC;
  signal inst_axi_ctrl_write_n_0 : STD_LOGIC;
  signal inst_axi_ctrl_write_n_3 : STD_LOGIC;
  signal inst_reg_bank_1_n_1 : STD_LOGIC;
  signal inst_reg_bank_1_n_10 : STD_LOGIC;
  signal inst_reg_bank_1_n_11 : STD_LOGIC;
  signal inst_reg_bank_1_n_12 : STD_LOGIC;
  signal inst_reg_bank_1_n_13 : STD_LOGIC;
  signal inst_reg_bank_1_n_14 : STD_LOGIC;
  signal inst_reg_bank_1_n_15 : STD_LOGIC;
  signal inst_reg_bank_1_n_16 : STD_LOGIC;
  signal inst_reg_bank_1_n_17 : STD_LOGIC;
  signal inst_reg_bank_1_n_18 : STD_LOGIC;
  signal inst_reg_bank_1_n_19 : STD_LOGIC;
  signal inst_reg_bank_1_n_20 : STD_LOGIC;
  signal inst_reg_bank_1_n_21 : STD_LOGIC;
  signal inst_reg_bank_1_n_22 : STD_LOGIC;
  signal inst_reg_bank_1_n_23 : STD_LOGIC;
  signal inst_reg_bank_1_n_24 : STD_LOGIC;
  signal inst_reg_bank_1_n_25 : STD_LOGIC;
  signal inst_reg_bank_1_n_26 : STD_LOGIC;
  signal inst_reg_bank_1_n_27 : STD_LOGIC;
  signal inst_reg_bank_1_n_28 : STD_LOGIC;
  signal inst_reg_bank_1_n_29 : STD_LOGIC;
  signal inst_reg_bank_1_n_30 : STD_LOGIC;
  signal inst_reg_bank_1_n_31 : STD_LOGIC;
  signal inst_reg_bank_1_n_32 : STD_LOGIC;
  signal inst_reg_bank_1_n_33 : STD_LOGIC;
  signal inst_reg_bank_1_n_34 : STD_LOGIC;
  signal inst_reg_bank_1_n_35 : STD_LOGIC;
  signal inst_reg_bank_1_n_36 : STD_LOGIC;
  signal inst_reg_bank_1_n_6 : STD_LOGIC;
  signal inst_reg_bank_1_n_7 : STD_LOGIC;
  signal inst_reg_bank_1_n_8 : STD_LOGIC;
  signal inst_reg_bank_1_n_9 : STD_LOGIC;
  signal rb0_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \data_reg[1]\(0) <= \^data_reg[1]\(0);
inst_axi_ctrl_read: entity work.design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_read
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      \data_reg[31]_0\(0) => inst_axi_ctrl_read_n_2,
      \gen_reg[0].reg_data_reg[0]\ => inst_reg_bank_1_n_36,
      \gen_reg[0].reg_data_reg[10]\ => inst_reg_bank_1_n_26,
      \gen_reg[0].reg_data_reg[11]\ => inst_reg_bank_1_n_25,
      \gen_reg[0].reg_data_reg[12]\ => inst_reg_bank_1_n_24,
      \gen_reg[0].reg_data_reg[13]\ => inst_reg_bank_1_n_23,
      \gen_reg[0].reg_data_reg[14]\ => inst_reg_bank_1_n_22,
      \gen_reg[0].reg_data_reg[15]\ => inst_reg_bank_1_n_21,
      \gen_reg[0].reg_data_reg[16]\ => inst_reg_bank_1_n_20,
      \gen_reg[0].reg_data_reg[17]\ => inst_reg_bank_1_n_19,
      \gen_reg[0].reg_data_reg[18]\ => inst_reg_bank_1_n_18,
      \gen_reg[0].reg_data_reg[19]\ => inst_reg_bank_1_n_17,
      \gen_reg[0].reg_data_reg[1]\ => inst_reg_bank_1_n_35,
      \gen_reg[0].reg_data_reg[20]\ => inst_reg_bank_1_n_16,
      \gen_reg[0].reg_data_reg[21]\ => inst_reg_bank_1_n_15,
      \gen_reg[0].reg_data_reg[22]\ => inst_reg_bank_1_n_14,
      \gen_reg[0].reg_data_reg[23]\ => inst_reg_bank_1_n_13,
      \gen_reg[0].reg_data_reg[24]\ => inst_reg_bank_1_n_12,
      \gen_reg[0].reg_data_reg[25]\ => inst_reg_bank_1_n_11,
      \gen_reg[0].reg_data_reg[26]\ => inst_reg_bank_1_n_10,
      \gen_reg[0].reg_data_reg[27]\ => inst_reg_bank_1_n_9,
      \gen_reg[0].reg_data_reg[28]\ => inst_reg_bank_1_n_8,
      \gen_reg[0].reg_data_reg[29]\ => inst_reg_bank_1_n_7,
      \gen_reg[0].reg_data_reg[2]\ => inst_reg_bank_1_n_34,
      \gen_reg[0].reg_data_reg[30]\ => inst_reg_bank_1_n_6,
      \gen_reg[0].reg_data_reg[31]\(0) => inst_reg_bank_1_n_1,
      \gen_reg[0].reg_data_reg[31]_0\(0) => \gen_reg[0].reg_data_reg\(31),
      \gen_reg[0].reg_data_reg[3]\ => inst_reg_bank_1_n_33,
      \gen_reg[0].reg_data_reg[4]\ => inst_reg_bank_1_n_32,
      \gen_reg[0].reg_data_reg[5]\ => inst_reg_bank_1_n_31,
      \gen_reg[0].reg_data_reg[6]\ => inst_reg_bank_1_n_30,
      \gen_reg[0].reg_data_reg[7]\ => inst_reg_bank_1_n_29,
      \gen_reg[0].reg_data_reg[8]\ => inst_reg_bank_1_n_28,
      \gen_reg[0].reg_data_reg[9]\ => inst_reg_bank_1_n_27,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(4 downto 0) => s_axi_ctrl_araddr(4 downto 0),
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready
    );
inst_axi_ctrl_write: entity work.design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_write
     port map (
      D(31 downto 0) => rb0_wdata(31 downto 0),
      E(0) => inst_axi_ctrl_write_n_0,
      Q(1 downto 0) => s_axi_ctrl_bvalid(1 downto 0),
      SR(0) => SR(0),
      \gen_reg[0].reg_data_reg[1]\(0) => \^data_reg[1]\(0),
      \gen_reg[0].reg_data_reg[31]\(0) => inst_axi_ctrl_write_n_3,
      \gen_reg[0].reg_data_reg[31]_0\(31 downto 0) => data_r(31 downto 0),
      out0 => out0,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_awaddr(4 downto 0) => s_axi_ctrl_awaddr(4 downto 0),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid
    );
inst_reg_bank_0: entity work.design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32
     port map (
      D(31 downto 0) => rb0_wdata(31 downto 0),
      E(0) => inst_axi_ctrl_write_n_0,
      Q(31 downto 2) => \gen_reg[0].reg_data_reg\(31 downto 2),
      Q(1) => \^data_reg[1]\(0),
      Q(0) => \gen_reg[0].reg_data_reg\(0),
      SR(0) => SR(0),
      s_axi_ctrl_aclk => s_axi_ctrl_aclk
    );
inst_reg_bank_1: entity work.\design_1_axis_switch_0_0_axis_switch_v1_1_15_reg_bank_16x32__parameterized0\
     port map (
      D(31 downto 0) => data_r(31 downto 0),
      E(0) => inst_axi_ctrl_write_n_3,
      Q(4) => inst_reg_bank_1_n_1,
      Q(3 downto 0) => \gen_mi_mux_in[0].mi_mux_in_reg[3]\(3 downto 0),
      SR(0) => SR(0),
      \addr_r_reg[6]\(0) => inst_axi_ctrl_read_n_2,
      \data_reg[0]\ => inst_reg_bank_1_n_36,
      \data_reg[10]\ => inst_reg_bank_1_n_26,
      \data_reg[11]\ => inst_reg_bank_1_n_25,
      \data_reg[12]\ => inst_reg_bank_1_n_24,
      \data_reg[13]\ => inst_reg_bank_1_n_23,
      \data_reg[14]\ => inst_reg_bank_1_n_22,
      \data_reg[15]\ => inst_reg_bank_1_n_21,
      \data_reg[16]\ => inst_reg_bank_1_n_20,
      \data_reg[17]\ => inst_reg_bank_1_n_19,
      \data_reg[18]\ => inst_reg_bank_1_n_18,
      \data_reg[19]\ => inst_reg_bank_1_n_17,
      \data_reg[1]\ => inst_reg_bank_1_n_35,
      \data_reg[20]\ => inst_reg_bank_1_n_16,
      \data_reg[21]\ => inst_reg_bank_1_n_15,
      \data_reg[22]\ => inst_reg_bank_1_n_14,
      \data_reg[23]\ => inst_reg_bank_1_n_13,
      \data_reg[24]\ => inst_reg_bank_1_n_12,
      \data_reg[25]\ => inst_reg_bank_1_n_11,
      \data_reg[26]\ => inst_reg_bank_1_n_10,
      \data_reg[27]\ => inst_reg_bank_1_n_9,
      \data_reg[28]\ => inst_reg_bank_1_n_8,
      \data_reg[29]\ => inst_reg_bank_1_n_7,
      \data_reg[2]\ => inst_reg_bank_1_n_34,
      \data_reg[30]\ => inst_reg_bank_1_n_6,
      \data_reg[3]\ => inst_reg_bank_1_n_33,
      \data_reg[4]\ => inst_reg_bank_1_n_32,
      \data_reg[5]\ => inst_reg_bank_1_n_31,
      \data_reg[6]\ => inst_reg_bank_1_n_30,
      \data_reg[7]\ => inst_reg_bank_1_n_29,
      \data_reg[8]\ => inst_reg_bank_1_n_28,
      \data_reg[9]\ => inst_reg_bank_1_n_27,
      \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\ => \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\,
      \gen_reg[0].reg_data_reg[30]_0\(30 downto 2) => \gen_reg[0].reg_data_reg\(30 downto 2),
      \gen_reg[0].reg_data_reg[30]_0\(1) => \^data_reg[1]\(0),
      \gen_reg[0].reg_data_reg[30]_0\(0) => \gen_reg[0].reg_data_reg\(0),
      s_axi_ctrl_aclk => s_axi_ctrl_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config is
  port (
    src_send : out STD_LOGIC;
    src_in : out STD_LOGIC;
    \src_hsdata_ff_reg[14]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    out0 : out STD_LOGIC;
    s_axi_ctrl_aclk : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[31]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    src_rcv : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_reg[0].reg_data_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config : entity is "axis_switch_v1_1_15_static_router_config";
end design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config is
  signal \/FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal ctrl_soft_reset_r0 : STD_LOGIC;
  attribute RTL_KEEP of ctrl_soft_reset_r0 : signal is "yes";
  signal ctrl_soft_reset_r_i_1_n_0 : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \gen_si_mux[0].si_mux_r_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_si_mux[1].si_mux_r_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inst_start_router_config_dp_n_16 : STD_LOGIC;
  signal mi_enable : STD_LOGIC;
  signal mi_mux : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal si_enable : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^src_send\ : STD_LOGIC;
  signal start : STD_LOGIC;
  attribute RTL_KEEP of start : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
begin
  src_send <= \^src_send\;
\/FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444447"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg[1]\(0),
      I1 => ctrl_soft_reset_r0,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => start,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \/FSM_onehot_state[0]_i_1_n_0\
    );
\/FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg[1]\(0),
      I1 => ctrl_soft_reset_r0,
      I2 => done,
      I3 => start,
      O => \/FSM_onehot_state[1]_i_1_n_0\
    );
\/FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => start,
      I2 => done,
      I3 => ctrl_soft_reset_r0,
      O => \/FSM_onehot_state[2]_i_1_n_0\
    );
\/FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111010000000100"
    )
        port map (
      I0 => start,
      I1 => ctrl_soft_reset_r0,
      I2 => src_rcv,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => done,
      O => \/FSM_onehot_state[3]_i_1_n_0\
    );
\/FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => src_rcv,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => ctrl_soft_reset_r0,
      O => \/FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \/FSM_onehot_state[0]_i_1_n_0\,
      Q => ctrl_soft_reset_r0,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \/FSM_onehot_state[1]_i_1_n_0\,
      Q => start,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \/FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \/FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \/FSM_onehot_state[4]_i_1_n_0\,
      Q => out0,
      R => SR(0)
    );
\ctrl_reg_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(0),
      Q => \src_hsdata_ff_reg[14]\(0),
      R => '0'
    );
\ctrl_reg_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[1].si_mux_r_reg\(1),
      Q => \src_hsdata_ff_reg[14]\(10),
      R => '0'
    );
\ctrl_reg_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[1].si_mux_r_reg\(2),
      Q => \src_hsdata_ff_reg[14]\(11),
      R => '0'
    );
\ctrl_reg_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[1].si_mux_r_reg\(3),
      Q => \src_hsdata_ff_reg[14]\(12),
      R => '0'
    );
\ctrl_reg_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => si_enable(0),
      Q => \src_hsdata_ff_reg[14]\(13),
      R => '0'
    );
\ctrl_reg_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => si_enable(1),
      Q => \src_hsdata_ff_reg[14]\(14),
      R => '0'
    );
\ctrl_reg_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(1),
      Q => \src_hsdata_ff_reg[14]\(1),
      R => '0'
    );
\ctrl_reg_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(2),
      Q => \src_hsdata_ff_reg[14]\(2),
      R => '0'
    );
\ctrl_reg_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(3),
      Q => \src_hsdata_ff_reg[14]\(3),
      R => '0'
    );
\ctrl_reg_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_enable,
      Q => \src_hsdata_ff_reg[14]\(4),
      R => '0'
    );
\ctrl_reg_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[0].si_mux_r_reg\(0),
      Q => \src_hsdata_ff_reg[14]\(5),
      R => '0'
    );
\ctrl_reg_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[0].si_mux_r_reg\(1),
      Q => \src_hsdata_ff_reg[14]\(6),
      R => '0'
    );
\ctrl_reg_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[0].si_mux_r_reg\(2),
      Q => \src_hsdata_ff_reg[14]\(7),
      R => '0'
    );
\ctrl_reg_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[0].si_mux_r_reg\(3),
      Q => \src_hsdata_ff_reg[14]\(8),
      R => '0'
    );
\ctrl_reg_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[1].si_mux_r_reg\(0),
      Q => \src_hsdata_ff_reg[14]\(9),
      R => '0'
    );
ctrl_req_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => inst_start_router_config_dp_n_16,
      Q => \^src_send\,
      R => SR(0)
    );
ctrl_soft_reset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_soft_reset_r0,
      O => ctrl_soft_reset_r_i_1_n_0
    );
ctrl_soft_reset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => ctrl_soft_reset_r_i_1_n_0,
      Q => src_in,
      R => '0'
    );
inst_start_router_config_dp: entity work.design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config_dp
     port map (
      D(14 downto 13) => si_enable(1 downto 0),
      D(12 downto 9) => \gen_si_mux[1].si_mux_r_reg\(3 downto 0),
      D(8 downto 5) => \gen_si_mux[0].si_mux_r_reg\(3 downto 0),
      D(4) => mi_enable,
      D(3 downto 0) => mi_mux(3 downto 0),
      ctrl_req_r_reg => inst_start_router_config_dp_n_16,
      done => done,
      \gen_reg[0].reg_data_reg[31]\ => \gen_reg[0].reg_data_reg[31]\,
      \gen_reg[0].reg_data_reg[3]\(3 downto 0) => D(3 downto 0),
      \out\(2) => \FSM_onehot_state_reg_n_0_[3]\,
      \out\(1) => \FSM_onehot_state_reg_n_0_[2]\,
      \out\(0) => start,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      src_rcv => src_rcv,
      src_send => \^src_send\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_xpm_cdc_handshake is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 14 downto 0 );
    src_send : in STD_LOGIC;
    src_rcv : out STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dest_req : out STD_LOGIC;
    dest_ack : in STD_LOGIC
  );
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is "xpm_cdc_handshake";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is 0;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is 4;
  attribute VERSION : integer;
  attribute VERSION of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is 15;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_axis_switch_0_0_xpm_cdc_handshake : entity is "HANDSHAKE";
end design_1_axis_switch_0_0_xpm_cdc_handshake;

architecture STRUCTURE of design_1_axis_switch_0_0_xpm_cdc_handshake is
  signal dest_hsdata_en : STD_LOGIC;
  attribute DIRECT_ENABLE : boolean;
  attribute DIRECT_ENABLE of dest_hsdata_en : signal is std.standard.true;
  signal dest_hsdata_ff : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of dest_hsdata_ff : signal is "true";
  attribute xpm_cdc of dest_hsdata_ff : signal is "HANDSHAKE";
  signal dest_req_ff : STD_LOGIC;
  signal dest_req_nxt : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal src_hsdata_ff : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal src_sendd_ff : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \dest_hsdata_ff_reg[0]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[0]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[10]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[10]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[11]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[11]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[12]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[12]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[13]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[13]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[14]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[14]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[1]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[1]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[2]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[2]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[3]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[3]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[4]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[4]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[5]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[5]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[6]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[6]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[7]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[7]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[8]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[8]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[9]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[9]\ : label is "HANDSHAKE";
  attribute DEST_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_dest2src_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_dest2src_inst : label is 0;
  attribute VERSION of xpm_cdc_single_dest2src_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_dest2src_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_dest2src_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_src2dest_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_cdc_single_src2dest_inst : label is 0;
  attribute VERSION of xpm_cdc_single_src2dest_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_src2dest_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_src2dest_inst : label is "TRUE";
begin
  dest_out(14 downto 0) <= dest_hsdata_ff(14 downto 0);
\dest_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(0),
      Q => dest_hsdata_ff(0),
      R => '0'
    );
\dest_hsdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(10),
      Q => dest_hsdata_ff(10),
      R => '0'
    );
\dest_hsdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(11),
      Q => dest_hsdata_ff(11),
      R => '0'
    );
\dest_hsdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(12),
      Q => dest_hsdata_ff(12),
      R => '0'
    );
\dest_hsdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(13),
      Q => dest_hsdata_ff(13),
      R => '0'
    );
\dest_hsdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(14),
      Q => dest_hsdata_ff(14),
      R => '0'
    );
\dest_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(1),
      Q => dest_hsdata_ff(1),
      R => '0'
    );
\dest_hsdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(2),
      Q => dest_hsdata_ff(2),
      R => '0'
    );
\dest_hsdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(3),
      Q => dest_hsdata_ff(3),
      R => '0'
    );
\dest_hsdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(4),
      Q => dest_hsdata_ff(4),
      R => '0'
    );
\dest_hsdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(5),
      Q => dest_hsdata_ff(5),
      R => '0'
    );
\dest_hsdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(6),
      Q => dest_hsdata_ff(6),
      R => '0'
    );
\dest_hsdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(7),
      Q => dest_hsdata_ff(7),
      R => '0'
    );
\dest_hsdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(8),
      Q => dest_hsdata_ff(8),
      R => '0'
    );
\dest_hsdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(9),
      Q => dest_hsdata_ff(9),
      R => '0'
    );
dest_req_ext_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dest_req_nxt,
      I1 => dest_req_ff,
      O => dest_hsdata_en
    );
dest_req_ext_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_hsdata_en,
      Q => dest_req,
      R => '0'
    );
dest_req_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_req_nxt,
      Q => dest_req_ff,
      R => '0'
    );
\src_hsdata_ff[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_sendd_ff,
      O => p_0_in
    );
\src_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(0),
      Q => src_hsdata_ff(0),
      R => '0'
    );
\src_hsdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(10),
      Q => src_hsdata_ff(10),
      R => '0'
    );
\src_hsdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(11),
      Q => src_hsdata_ff(11),
      R => '0'
    );
\src_hsdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(12),
      Q => src_hsdata_ff(12),
      R => '0'
    );
\src_hsdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(13),
      Q => src_hsdata_ff(13),
      R => '0'
    );
\src_hsdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(14),
      Q => src_hsdata_ff(14),
      R => '0'
    );
\src_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(1),
      Q => src_hsdata_ff(1),
      R => '0'
    );
\src_hsdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(2),
      Q => src_hsdata_ff(2),
      R => '0'
    );
\src_hsdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(3),
      Q => src_hsdata_ff(3),
      R => '0'
    );
\src_hsdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(4),
      Q => src_hsdata_ff(4),
      R => '0'
    );
\src_hsdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(5),
      Q => src_hsdata_ff(5),
      R => '0'
    );
\src_hsdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(6),
      Q => src_hsdata_ff(6),
      R => '0'
    );
\src_hsdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(7),
      Q => src_hsdata_ff(7),
      R => '0'
    );
\src_hsdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(8),
      Q => src_hsdata_ff(8),
      R => '0'
    );
\src_hsdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(9),
      Q => src_hsdata_ff(9),
      R => '0'
    );
src_sendd_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_send,
      Q => src_sendd_ff,
      R => '0'
    );
xpm_cdc_single_dest2src_inst: entity work.design_1_axis_switch_0_0_xpm_cdc_single
     port map (
      dest_clk => src_clk,
      dest_out => src_rcv,
      src_clk => dest_clk,
      src_in => dest_req_ff
    );
xpm_cdc_single_src2dest_inst: entity work.\design_1_axis_switch_0_0_xpm_cdc_single__2\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_req_nxt,
      src_clk => src_clk,
      src_in => src_sendd_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_cdc_handshake is
  port (
    src_rcv : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    src_send : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_cdc_handshake : entity is "axis_infrastructure_v1_1_0_cdc_handshake";
end design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_cdc_handshake;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_cdc_handshake is
  signal \gen_static_router.gen_synch.cdc_handshake_data_out\ : STD_LOGIC_VECTOR ( 12 downto 5 );
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of inst_xpm_cdc_handshake : label is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of inst_xpm_cdc_handshake : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of inst_xpm_cdc_handshake : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst_xpm_cdc_handshake : label is 0;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of inst_xpm_cdc_handshake : label is 4;
  attribute VERSION : integer;
  attribute VERSION of inst_xpm_cdc_handshake : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of inst_xpm_cdc_handshake : label is 15;
  attribute XPM_CDC : string;
  attribute XPM_CDC of inst_xpm_cdc_handshake : label is "HANDSHAKE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of inst_xpm_cdc_handshake : label is "TRUE";
begin
inst_xpm_cdc_handshake: entity work.design_1_axis_switch_0_0_xpm_cdc_handshake
     port map (
      dest_ack => '0',
      dest_clk => aclk,
      dest_out(14 downto 13) => D(6 downto 5),
      dest_out(12 downto 5) => \gen_static_router.gen_synch.cdc_handshake_data_out\(12 downto 5),
      dest_out(4 downto 0) => D(4 downto 0),
      dest_req => E(0),
      src_clk => s_axi_ctrl_aclk,
      src_in(14 downto 0) => Q(14 downto 0),
      src_rcv => src_rcv,
      src_send => src_send
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router is
  port (
    src_send : out STD_LOGIC;
    src_in : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \src_hsdata_ff_reg[14]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    src_rcv : in STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router : entity is "axis_switch_v1_1_15_static_router";
end design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router is
  signal commit_reset : STD_LOGIC;
  signal inst_axi_ctrl_top_n_41 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_5 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_6 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_7 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_8 : STD_LOGIC;
  signal reg_commit : STD_LOGIC;
begin
inst_axi_ctrl_top: entity work.design_1_axis_switch_0_0_axis_switch_v1_1_15_axi_ctrl_top
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      \data_reg[1]\(0) => reg_commit,
      \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\ => inst_axi_ctrl_top_n_41,
      \gen_mi_mux_in[0].mi_mux_in_reg[3]\(3) => inst_axi_ctrl_top_n_5,
      \gen_mi_mux_in[0].mi_mux_in_reg[3]\(2) => inst_axi_ctrl_top_n_6,
      \gen_mi_mux_in[0].mi_mux_in_reg[3]\(1) => inst_axi_ctrl_top_n_7,
      \gen_mi_mux_in[0].mi_mux_in_reg[3]\(0) => inst_axi_ctrl_top_n_8,
      out0 => commit_reset,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(4 downto 0) => s_axi_ctrl_araddr(4 downto 0),
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(4 downto 0) => s_axi_ctrl_awaddr(4 downto 0),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bvalid(1 downto 0) => s_axi_ctrl_bvalid(1 downto 0),
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid
    );
inst_start_router_config: entity work.design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router_config
     port map (
      D(3) => inst_axi_ctrl_top_n_5,
      D(2) => inst_axi_ctrl_top_n_6,
      D(1) => inst_axi_ctrl_top_n_7,
      D(0) => inst_axi_ctrl_top_n_8,
      SR(0) => SR(0),
      \gen_reg[0].reg_data_reg[1]\(0) => reg_commit,
      \gen_reg[0].reg_data_reg[31]\ => inst_axi_ctrl_top_n_41,
      out0 => commit_reset,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      \src_hsdata_ff_reg[14]\(14 downto 0) => \src_hsdata_ff_reg[14]\(14 downto 0),
      src_in => src_in,
      src_rcv => src_rcv,
      src_send => src_send
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    arb_req : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_done : out STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_last : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_id : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_dest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_user : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 147;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 24;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is "zynq";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is "1'b0";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is "2'b11";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is "1'b0";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 2;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 32;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 15;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is "axis_switch_v1_1_15_axis_switch";
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is "2'b11";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is "1'b0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch : entity is 26;
end design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch;

architecture STRUCTURE of design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \gen_static_router.ctrl_ack\ : STD_LOGIC;
  signal \gen_static_router.ctrl_reg\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \gen_static_router.ctrl_req\ : STD_LOGIC;
  signal \gen_static_router.ctrl_soft_reset\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.cdc_handshake_data_out\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \gen_static_router.gen_synch.cdc_handshake_data_valid\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_static_router.s_axi_ctrl_areset\ : STD_LOGIC;
  signal \gen_static_router.s_axi_ctrl_areset_i_1_n_0\ : STD_LOGIC;
  signal mi_enable : STD_LOGIC;
  signal \^s_axi_ctrl_awready\ : STD_LOGIC;
  signal \s_axis_tready[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal si_enable : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tvalid[0]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axis_tready[1]_INST_0_i_1\ : label is "soft_lutpair36";
begin
  arb_dest(1) <= \<const0>\;
  arb_dest(0) <= \<const0>\;
  arb_done(0) <= \<const0>\;
  arb_id(1) <= \<const0>\;
  arb_id(0) <= \<const0>\;
  arb_last(1) <= \<const0>\;
  arb_last(0) <= \<const0>\;
  arb_req(1) <= \<const0>\;
  arb_req(0) <= \<const0>\;
  arb_user(1) <= \<const0>\;
  arb_user(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  s_axi_ctrl_awready <= \^s_axi_ctrl_awready\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_wready <= \^s_axi_ctrl_awready\;
  s_decode_err(1) <= \<const0>\;
  s_decode_err(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_static_router.gen_synch.cdc_handshake_data_valid\,
      D => \gen_static_router.gen_synch.cdc_handshake_data_out\(0),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_static_router.gen_synch.cdc_handshake_data_valid\,
      D => \gen_static_router.gen_synch.cdc_handshake_data_out\(13),
      Q => si_enable(0),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_static_router.gen_synch.cdc_handshake_data_valid\,
      D => \gen_static_router.gen_synch.cdc_handshake_data_out\(14),
      Q => si_enable(1),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_static_router.gen_synch.cdc_handshake_data_valid\,
      D => \gen_static_router.gen_synch.cdc_handshake_data_out\(1),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_static_router.gen_synch.cdc_handshake_data_valid\,
      D => \gen_static_router.gen_synch.cdc_handshake_data_out\(2),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_static_router.gen_synch.cdc_handshake_data_valid\,
      D => \gen_static_router.gen_synch.cdc_handshake_data_out\(3),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_static_router.gen_synch.cdc_handshake_data_valid\,
      D => \gen_static_router.gen_synch.cdc_handshake_data_out\(4),
      Q => mi_enable,
      R => '0'
    );
\gen_static_router.gen_synch.inst_cdc_handshake\: entity work.design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_cdc_handshake
     port map (
      D(6 downto 5) => \gen_static_router.gen_synch.cdc_handshake_data_out\(14 downto 13),
      D(4 downto 0) => \gen_static_router.gen_synch.cdc_handshake_data_out\(4 downto 0),
      E(0) => \gen_static_router.gen_synch.cdc_handshake_data_valid\,
      Q(14 downto 0) => \gen_static_router.ctrl_reg\(14 downto 0),
      aclk => aclk,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      src_rcv => \gen_static_router.ctrl_ack\,
      src_send => \gen_static_router.ctrl_req\
    );
\gen_static_router.gen_synch.inst_rst_synch\: entity work.design_1_axis_switch_0_0_axis_infrastructure_v1_1_0_clock_synchronizer
     port map (
      aclk => aclk,
      src_in => \gen_static_router.ctrl_soft_reset\
    );
\gen_static_router.inst_static_router\: entity work.design_1_axis_switch_0_0_axis_switch_v1_1_15_static_router
     port map (
      Q(1) => s_axi_ctrl_rvalid,
      Q(0) => s_axi_ctrl_arready,
      SR(0) => \gen_static_router.s_axi_ctrl_areset\,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(4 downto 0) => s_axi_ctrl_araddr(6 downto 2),
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(4 downto 0) => s_axi_ctrl_awaddr(6 downto 2),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bvalid(1) => s_axi_ctrl_bvalid,
      s_axi_ctrl_bvalid(0) => \^s_axi_ctrl_awready\,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      \src_hsdata_ff_reg[14]\(14 downto 0) => \gen_static_router.ctrl_reg\(14 downto 0),
      src_in => \gen_static_router.ctrl_soft_reset\,
      src_rcv => \gen_static_router.ctrl_ack\,
      src_send => \gen_static_router.ctrl_req\
    );
\gen_static_router.s_axi_ctrl_areset_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_ctrl_aresetn,
      O => \gen_static_router.s_axi_ctrl_areset_i_1_n_0\
    );
\gen_static_router.s_axi_ctrl_areset_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_static_router.s_axi_ctrl_areset_i_1_n_0\,
      Q => \gen_static_router.s_axi_ctrl_areset\,
      R => '0'
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(0),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(24),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(10),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(34),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(11),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(35),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(12),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(36),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(13),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(37),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(14),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(38),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(15),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(39),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(16),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(40),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(17),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(41),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(18),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(42),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(19),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(43),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(1),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(25),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(20),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(44),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(21),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(45),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(22),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(46),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(23),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(47),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(23)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(2),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(26),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(3),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(27),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(4),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(28),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(5),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(29),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(6),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(30),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(7),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(31),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(8),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(32),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tdata(9),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tdata(33),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tdata(9)
    );
\m_axis_tlast[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tlast(0),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tlast(1),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tlast(0)
    );
\m_axis_tuser[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => s_axis_tuser(0),
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => s_axis_tuser(1),
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => m_axis_tuser(0)
    );
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I2 => s_axis_tvalid(1),
      I3 => mi_enable,
      O => m_axis_tvalid(0)
    );
\s_axis_tready[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => \s_axis_tready[1]_INST_0_i_1_n_0\,
      I2 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I3 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      I5 => si_enable(0),
      O => s_axis_tready(0)
    );
\s_axis_tready[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00000000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      I2 => \s_axis_tready[1]_INST_0_i_1_n_0\,
      I3 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      I4 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      I5 => si_enable(1),
      O => s_axis_tready(1)
    );
\s_axis_tready[1]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axis_tready(0),
      I1 => mi_enable,
      O => \s_axis_tready[1]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_switch_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_switch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_switch_0_0 : entity is "design_1_axis_switch_0_0,axis_switch_v1_1_15_axis_switch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_switch_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_switch_0_0 : entity is "axis_switch_v1_1_15_axis_switch,Vivado 2017.4";
end design_1_axis_switch_0_0;

architecture STRUCTURE of design_1_axis_switch_0_0 is
  signal NLW_inst_arb_dest_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_done_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_arb_id_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_last_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_req_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_arb_user_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of inst : label is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of inst : label is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of inst : label is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 147;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 24;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of inst : label is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of inst : label is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of inst : label is 1;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of inst : label is "1'b0";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of inst : label is "2'b11";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of inst : label is "1'b0";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of inst : label is 1;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of inst : label is 2;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of inst : label is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of inst : label is 1;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of inst : label is 15;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of inst : label is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of inst : label is 4;
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of inst : label is "2'b11";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of inst : label is "1'b0";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 26;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_CTRL_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_aclk : signal is "XIL_INTERFACENAME S_AXI_CTRL_ACLK, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET s_axi_ctrl_aresetn";
  attribute X_INTERFACE_INFO of s_axi_ctrl_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_CTRL_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_aresetn : signal is "XIL_INTERFACENAME S_AXI_CTRL_ARESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_rresp : signal is "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [23:0] [23:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [23:0] [47:24]";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [0:0] [1:1]";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1]";
begin
inst: entity work.design_1_axis_switch_0_0_axis_switch_v1_1_15_axis_switch
     port map (
      aclk => aclk,
      aclken => '1',
      arb_dest(1 downto 0) => NLW_inst_arb_dest_UNCONNECTED(1 downto 0),
      arb_done(0) => NLW_inst_arb_done_UNCONNECTED(0),
      arb_gnt(1 downto 0) => B"00",
      arb_id(1 downto 0) => NLW_inst_arb_id_UNCONNECTED(1 downto 0),
      arb_last(1 downto 0) => NLW_inst_arb_last_UNCONNECTED(1 downto 0),
      arb_req(1 downto 0) => NLW_inst_arb_req_UNCONNECTED(1 downto 0),
      arb_sel(0) => '0',
      arb_user(1 downto 0) => NLW_inst_arb_user_UNCONNECTED(1 downto 0),
      aresetn => aresetn,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(2 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tstrb(2 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid(0) => m_axis_tvalid(0),
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(6 downto 0) => s_axi_ctrl_araddr(6 downto 0),
      s_axi_ctrl_aresetn => s_axi_ctrl_aresetn,
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(6 downto 0) => s_axi_ctrl_awaddr(6 downto 0),
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
      s_axis_tdata(47 downto 0) => s_axis_tdata(47 downto 0),
      s_axis_tdest(1 downto 0) => B"00",
      s_axis_tid(1 downto 0) => B"00",
      s_axis_tkeep(5 downto 0) => B"111111",
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tready(1 downto 0) => s_axis_tready(1 downto 0),
      s_axis_tstrb(5 downto 0) => B"111111",
      s_axis_tuser(1 downto 0) => s_axis_tuser(1 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_decode_err(1 downto 0) => NLW_inst_s_decode_err_UNCONNECTED(1 downto 0),
      s_req_suppress(1 downto 0) => B"00"
    );
end STRUCTURE;
