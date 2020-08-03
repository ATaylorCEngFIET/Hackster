-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Dec  8 17:43:13 2019
-- Host        : DESKTOP-L3OMJC1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_auto_pc_1_sim_netlist.vhdl
-- Design      : design_1_auto_pc_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd is
  port (
    incr_next_pending : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    \axaddr_incr_reg[11]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sel_first_reg_1 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    sel_first_reg_2 : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \next\ : in STD_LOGIC;
    \axlen_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_awvalid : in STD_LOGIC;
    \axlen_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC;
    axaddr_incr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awaddr_0_sp_1 : in STD_LOGIC;
    \m_axi_awaddr[0]_0\ : in STD_LOGIC;
    sel_first : in STD_LOGIC;
    \axlen_cnt_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd is
  signal \axaddr_incr[11]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_12_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_13_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_14_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_15_n_0\ : STD_LOGIC;
  signal \^axaddr_incr_reg[11]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axaddr_incr_reg[11]_i_4_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[0]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[10]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[1]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[9]\ : STD_LOGIC;
  signal axlen_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \axlen_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \^incr_next_pending\ : STD_LOGIC;
  signal m_axi_awaddr_0_sn_1 : STD_LOGIC;
  signal next_pending_r_i_3_n_0 : STD_LOGIC;
  signal next_pending_r_i_5_n_0 : STD_LOGIC;
  signal next_pending_r_i_7_n_0 : STD_LOGIC;
  signal next_pending_r_i_8_n_0 : STD_LOGIC;
  signal next_pending_r_i_9_n_0 : STD_LOGIC;
  signal next_pending_r_reg_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^sel_first_reg_0\ : STD_LOGIC;
  signal \^sel_first_reg_1\ : STD_LOGIC;
  signal \NLW_axaddr_incr_reg[11]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axlen_cnt[1]_i_1__0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of next_pending_r_i_8 : label is "soft_lutpair119";
begin
  \axaddr_incr_reg[11]_0\(0) <= \^axaddr_incr_reg[11]_0\(0);
  incr_next_pending <= \^incr_next_pending\;
  m_axi_awaddr_0_sn_1 <= m_axi_awaddr_0_sp_1;
  sel_first_reg_0 <= \^sel_first_reg_0\;
  sel_first_reg_1 <= \^sel_first_reg_1\;
\axaddr_incr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(0),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[3]_i_3_n_7\,
      O => p_1_in(0)
    );
\axaddr_incr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(10),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[11]_i_4_n_5\,
      O => p_1_in(10)
    );
\axaddr_incr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \next\,
      O => \axaddr_incr[11]_i_1_n_0\
    );
\axaddr_incr[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(11),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[11]_i_4_n_4\,
      O => p_1_in(11)
    );
\axaddr_incr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(1),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[3]_i_3_n_6\,
      O => p_1_in(1)
    );
\axaddr_incr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(2),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[3]_i_3_n_5\,
      O => p_1_in(2)
    );
\axaddr_incr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(3),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[3]_i_3_n_4\,
      O => p_1_in(3)
    );
\axaddr_incr[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"060A"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(1),
      I1 => \axlen_cnt_reg[7]_0\(11),
      I2 => \axlen_cnt_reg[7]_0\(12),
      I3 => \next\,
      O => S(1)
    );
\axaddr_incr[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0102"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(0),
      I1 => \axlen_cnt_reg[7]_0\(12),
      I2 => \axlen_cnt_reg[7]_0\(11),
      I3 => \next\,
      O => S(0)
    );
\axaddr_incr[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg[7]_0\(12),
      I2 => \axlen_cnt_reg[7]_0\(11),
      O => \axaddr_incr[3]_i_12_n_0\
    );
\axaddr_incr[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[2]\,
      I1 => \axlen_cnt_reg[7]_0\(11),
      I2 => \axlen_cnt_reg[7]_0\(12),
      O => \axaddr_incr[3]_i_13_n_0\
    );
\axaddr_incr[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[1]\,
      I1 => \axlen_cnt_reg[7]_0\(12),
      I2 => \axlen_cnt_reg[7]_0\(11),
      O => \axaddr_incr[3]_i_14_n_0\
    );
\axaddr_incr[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg[7]_0\(11),
      I2 => \axlen_cnt_reg[7]_0\(12),
      O => \axaddr_incr[3]_i_15_n_0\
    );
\axaddr_incr[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(3),
      I1 => \axlen_cnt_reg[7]_0\(11),
      I2 => \axlen_cnt_reg[7]_0\(12),
      I3 => \next\,
      O => S(3)
    );
\axaddr_incr[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"262A"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(2),
      I1 => \axlen_cnt_reg[7]_0\(12),
      I2 => \axlen_cnt_reg[7]_0\(11),
      I3 => \next\,
      O => S(2)
    );
\axaddr_incr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(4),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[7]_i_3_n_7\,
      O => p_1_in(4)
    );
\axaddr_incr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(5),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[7]_i_3_n_6\,
      O => p_1_in(5)
    );
\axaddr_incr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(6),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[7]_i_3_n_5\,
      O => p_1_in(6)
    );
\axaddr_incr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(7),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[7]_i_3_n_4\,
      O => p_1_in(7)
    );
\axaddr_incr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(8),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[11]_i_4_n_7\,
      O => p_1_in(8)
    );
\axaddr_incr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axaddr_incr(9),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[11]_i_4_n_6\,
      O => p_1_in(9)
    );
\axaddr_incr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(0),
      Q => \axaddr_incr_reg_n_0_[0]\,
      R => '0'
    );
\axaddr_incr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(10),
      Q => \axaddr_incr_reg_n_0_[10]\,
      R => '0'
    );
\axaddr_incr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(11),
      Q => \^axaddr_incr_reg[11]_0\(0),
      R => '0'
    );
\axaddr_incr_reg[11]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[7]_i_3_n_0\,
      CO(3) => \NLW_axaddr_incr_reg[11]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_incr_reg[11]_i_4_n_1\,
      CO(1) => \axaddr_incr_reg[11]_i_4_n_2\,
      CO(0) => \axaddr_incr_reg[11]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axaddr_incr_reg[11]_i_4_n_4\,
      O(2) => \axaddr_incr_reg[11]_i_4_n_5\,
      O(1) => \axaddr_incr_reg[11]_i_4_n_6\,
      O(0) => \axaddr_incr_reg[11]_i_4_n_7\,
      S(3) => \^axaddr_incr_reg[11]_0\(0),
      S(2) => \axaddr_incr_reg_n_0_[10]\,
      S(1) => \axaddr_incr_reg_n_0_[9]\,
      S(0) => \axaddr_incr_reg_n_0_[8]\
    );
\axaddr_incr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(1),
      Q => \axaddr_incr_reg_n_0_[1]\,
      R => '0'
    );
\axaddr_incr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(2),
      Q => \axaddr_incr_reg_n_0_[2]\,
      R => '0'
    );
\axaddr_incr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(3),
      Q => \axaddr_incr_reg_n_0_[3]\,
      R => '0'
    );
\axaddr_incr_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_incr_reg[3]_i_3_n_0\,
      CO(2) => \axaddr_incr_reg[3]_i_3_n_1\,
      CO(1) => \axaddr_incr_reg[3]_i_3_n_2\,
      CO(0) => \axaddr_incr_reg[3]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \axaddr_incr_reg_n_0_[3]\,
      DI(2) => \axaddr_incr_reg_n_0_[2]\,
      DI(1) => \axaddr_incr_reg_n_0_[1]\,
      DI(0) => \axaddr_incr_reg_n_0_[0]\,
      O(3) => \axaddr_incr_reg[3]_i_3_n_4\,
      O(2) => \axaddr_incr_reg[3]_i_3_n_5\,
      O(1) => \axaddr_incr_reg[3]_i_3_n_6\,
      O(0) => \axaddr_incr_reg[3]_i_3_n_7\,
      S(3) => \axaddr_incr[3]_i_12_n_0\,
      S(2) => \axaddr_incr[3]_i_13_n_0\,
      S(1) => \axaddr_incr[3]_i_14_n_0\,
      S(0) => \axaddr_incr[3]_i_15_n_0\
    );
\axaddr_incr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(4),
      Q => \axaddr_incr_reg_n_0_[4]\,
      R => '0'
    );
\axaddr_incr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(5),
      Q => \axaddr_incr_reg_n_0_[5]\,
      R => '0'
    );
\axaddr_incr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(6),
      Q => \axaddr_incr_reg_n_0_[6]\,
      R => '0'
    );
\axaddr_incr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(7),
      Q => \axaddr_incr_reg_n_0_[7]\,
      R => '0'
    );
\axaddr_incr_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[3]_i_3_n_0\,
      CO(3) => \axaddr_incr_reg[7]_i_3_n_0\,
      CO(2) => \axaddr_incr_reg[7]_i_3_n_1\,
      CO(1) => \axaddr_incr_reg[7]_i_3_n_2\,
      CO(0) => \axaddr_incr_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axaddr_incr_reg[7]_i_3_n_4\,
      O(2) => \axaddr_incr_reg[7]_i_3_n_5\,
      O(1) => \axaddr_incr_reg[7]_i_3_n_6\,
      O(0) => \axaddr_incr_reg[7]_i_3_n_7\,
      S(3) => \axaddr_incr_reg_n_0_[7]\,
      S(2) => \axaddr_incr_reg_n_0_[6]\,
      S(1) => \axaddr_incr_reg_n_0_[5]\,
      S(0) => \axaddr_incr_reg_n_0_[4]\
    );
\axaddr_incr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(8),
      Q => \axaddr_incr_reg_n_0_[8]\,
      R => '0'
    );
\axaddr_incr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr[11]_i_1_n_0\,
      D => p_1_in(9),
      Q => \axaddr_incr_reg_n_0_[9]\,
      R => '0'
    );
\axlen_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => axlen_cnt(0),
      I1 => next_pending_r_i_5_n_0,
      I2 => \axlen_cnt_reg[0]_0\(1),
      I3 => \axlen_cnt_reg[0]_0\(0),
      I4 => si_rs_awvalid,
      I5 => \axlen_cnt_reg[7]_0\(15),
      O => \axlen_cnt[0]_i_1__0_n_0\
    );
\axlen_cnt[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => axlen_cnt(0),
      I1 => axlen_cnt(1),
      I2 => next_pending_r_i_5_n_0,
      I3 => E(0),
      I4 => \axlen_cnt_reg[7]_0\(16),
      O => \axlen_cnt[1]_i_1__0_n_0\
    );
\axlen_cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE100E100E100"
    )
        port map (
      I0 => axlen_cnt(1),
      I1 => axlen_cnt(0),
      I2 => axlen_cnt(2),
      I3 => next_pending_r_i_5_n_0,
      I4 => E(0),
      I5 => \axlen_cnt_reg[7]_0\(17),
      O => \axlen_cnt[2]_i_1__0_n_0\
    );
\axlen_cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE010000"
    )
        port map (
      I0 => axlen_cnt(2),
      I1 => axlen_cnt(0),
      I2 => axlen_cnt(1),
      I3 => axlen_cnt(3),
      I4 => next_pending_r_i_5_n_0,
      I5 => \axlen_cnt_reg[3]_0\,
      O => \axlen_cnt[3]_i_1__0_n_0\
    );
\axlen_cnt[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F888888888888"
    )
        port map (
      I0 => \axlen_cnt[4]_i_2_n_0\,
      I1 => next_pending_r_i_5_n_0,
      I2 => \axlen_cnt_reg[0]_0\(1),
      I3 => \axlen_cnt_reg[0]_0\(0),
      I4 => si_rs_awvalid,
      I5 => \axlen_cnt_reg[7]_0\(18),
      O => \axlen_cnt[4]_i_1__0_n_0\
    );
\axlen_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => axlen_cnt(3),
      I1 => axlen_cnt(1),
      I2 => axlen_cnt(0),
      I3 => axlen_cnt(2),
      I4 => axlen_cnt(4),
      O => \axlen_cnt[4]_i_2_n_0\
    );
\axlen_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F888888888888"
    )
        port map (
      I0 => \axlen_cnt[5]_i_2_n_0\,
      I1 => next_pending_r_i_5_n_0,
      I2 => \axlen_cnt_reg[0]_0\(1),
      I3 => \axlen_cnt_reg[0]_0\(0),
      I4 => si_rs_awvalid,
      I5 => \axlen_cnt_reg[7]_0\(19),
      O => \axlen_cnt[5]_i_1_n_0\
    );
\axlen_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => axlen_cnt(4),
      I1 => axlen_cnt(2),
      I2 => axlen_cnt(0),
      I3 => axlen_cnt(1),
      I4 => axlen_cnt(3),
      I5 => axlen_cnt(5),
      O => \axlen_cnt[5]_i_2_n_0\
    );
\axlen_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => \axlen_cnt[8]_i_3_n_0\,
      I1 => axlen_cnt(6),
      I2 => next_pending_r_i_5_n_0,
      I3 => E(0),
      I4 => \axlen_cnt_reg[7]_0\(20),
      O => \axlen_cnt[6]_i_1_n_0\
    );
\axlen_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE100E100E100"
    )
        port map (
      I0 => axlen_cnt(6),
      I1 => \axlen_cnt[8]_i_3_n_0\,
      I2 => axlen_cnt(7),
      I3 => next_pending_r_i_5_n_0,
      I4 => E(0),
      I5 => \axlen_cnt_reg[7]_0\(21),
      O => \axlen_cnt[7]_i_1_n_0\
    );
\axlen_cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => next_pending_r_i_5_n_0,
      I1 => axlen_cnt(8),
      I2 => axlen_cnt(6),
      I3 => \axlen_cnt[8]_i_3_n_0\,
      I4 => axlen_cnt(7),
      O => \axlen_cnt[8]_i_2_n_0\
    );
\axlen_cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => axlen_cnt(4),
      I1 => axlen_cnt(2),
      I2 => axlen_cnt(0),
      I3 => axlen_cnt(1),
      I4 => axlen_cnt(3),
      I5 => axlen_cnt(5),
      O => \axlen_cnt[8]_i_3_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[0]_i_1__0_n_0\,
      Q => axlen_cnt(0),
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[1]_i_1__0_n_0\,
      Q => axlen_cnt(1),
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[2]_i_1__0_n_0\,
      Q => axlen_cnt(2),
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[3]_i_1__0_n_0\,
      Q => axlen_cnt(3),
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[4]_i_1__0_n_0\,
      Q => axlen_cnt(4),
      R => '0'
    );
\axlen_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[5]_i_1_n_0\,
      Q => axlen_cnt(5),
      R => '0'
    );
\axlen_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[6]_i_1_n_0\,
      Q => axlen_cnt(6),
      R => '0'
    );
\axlen_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[7]_i_1_n_0\,
      Q => axlen_cnt(7),
      R => '0'
    );
\axlen_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_1\(0),
      D => \axlen_cnt[8]_i_2_n_0\,
      Q => axlen_cnt(8),
      R => '0'
    );
\m_axi_awaddr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(0),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[0]\,
      I4 => \axlen_cnt_reg[7]_0\(0),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(0)
    );
\m_axi_awaddr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(10),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[10]\,
      I4 => \axlen_cnt_reg[7]_0\(10),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(10)
    );
\m_axi_awaddr[11]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB0B"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axlen_cnt_reg[7]_0\(13),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => sel_first,
      O => \^sel_first_reg_1\
    );
\m_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(1),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg[7]_0\(1),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(1)
    );
\m_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(2),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg[7]_0\(2),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(2)
    );
\m_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(3),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[3]\,
      I4 => \axlen_cnt_reg[7]_0\(3),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(3)
    );
\m_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(4),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[4]\,
      I4 => \axlen_cnt_reg[7]_0\(4),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(4)
    );
\m_axi_awaddr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(5),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[5]\,
      I4 => \axlen_cnt_reg[7]_0\(5),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(5)
    );
\m_axi_awaddr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(6),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[6]\,
      I4 => \axlen_cnt_reg[7]_0\(6),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(6)
    );
\m_axi_awaddr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(7),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[7]\,
      I4 => \axlen_cnt_reg[7]_0\(7),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(7)
    );
\m_axi_awaddr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(8),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[8]\,
      I4 => \axlen_cnt_reg[7]_0\(8),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(8)
    );
\m_axi_awaddr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(9),
      I1 => m_axi_awaddr_0_sn_1,
      I2 => \m_axi_awaddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[9]\,
      I4 => \axlen_cnt_reg[7]_0\(9),
      I5 => \^sel_first_reg_1\,
      O => m_axi_awaddr(9)
    );
\next_pending_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF88B8B88888B8B8"
    )
        port map (
      I0 => next_pending_r_reg_0,
      I1 => E(0),
      I2 => next_pending_r_reg_n_0,
      I3 => next_pending_r_i_3_n_0,
      I4 => \next\,
      I5 => next_pending_r_i_5_n_0,
      O => \^incr_next_pending\
    );
next_pending_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEF"
    )
        port map (
      I0 => next_pending_r_i_7_n_0,
      I1 => axlen_cnt(7),
      I2 => \axlen_cnt[8]_i_3_n_0\,
      I3 => axlen_cnt(6),
      I4 => axlen_cnt(8),
      I5 => next_pending_r_i_8_n_0,
      O => next_pending_r_i_3_n_0
    );
next_pending_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => next_pending_r_i_9_n_0,
      I1 => axlen_cnt(2),
      I2 => axlen_cnt(1),
      I3 => axlen_cnt(4),
      I4 => axlen_cnt(3),
      I5 => E(0),
      O => next_pending_r_i_5_n_0
    );
next_pending_r_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEB"
    )
        port map (
      I0 => axlen_cnt(4),
      I1 => axlen_cnt(2),
      I2 => axlen_cnt(0),
      I3 => axlen_cnt(1),
      I4 => axlen_cnt(3),
      I5 => axlen_cnt(5),
      O => next_pending_r_i_7_n_0
    );
next_pending_r_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => axlen_cnt(1),
      I1 => axlen_cnt(0),
      O => next_pending_r_i_8_n_0
    );
next_pending_r_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => axlen_cnt(6),
      I1 => axlen_cnt(5),
      I2 => axlen_cnt(8),
      I3 => axlen_cnt(7),
      O => next_pending_r_i_9_n_0
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^incr_next_pending\,
      Q => next_pending_r_reg_n_0,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_reg_2,
      Q => \^sel_first_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd_2 is
  port (
    incr_next_pending : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    \axaddr_incr_reg[11]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[39]\ : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sel_first_reg_1 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    sel_first_reg_2 : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    \axlen_cnt_reg[7]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    wrap_next_pending : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_push : in STD_LOGIC;
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC;
    \axaddr_incr_reg[11]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_araddr_0_sp_1 : in STD_LOGIC;
    \m_axi_araddr[0]_0\ : in STD_LOGIC;
    \m_axi_araddr[0]_1\ : in STD_LOGIC;
    \axlen_cnt_reg[5]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_arvalid : in STD_LOGIC;
    \axlen_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd_2 : entity is "axi_protocol_converter_v2_1_20_b2s_incr_cmd";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd_2 is
  signal \axaddr_incr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_12_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_13_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_14_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_15_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^axaddr_incr_reg[11]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axaddr_incr_reg[11]_i_4__0_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4__0_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4__0_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4__0_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4__0_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4__0_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_4__0_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[0]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[10]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[1]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axaddr_incr_reg_n_0_[9]\ : STD_LOGIC;
  signal \axlen_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \^incr_next_pending\ : STD_LOGIC;
  signal m_axi_araddr_0_sn_1 : STD_LOGIC;
  signal \next_pending_r_i_3__1_n_0\ : STD_LOGIC;
  signal next_pending_r_i_4_n_0 : STD_LOGIC;
  signal \next_pending_r_i_6__0_n_0\ : STD_LOGIC;
  signal \next_pending_r_i_7__0_n_0\ : STD_LOGIC;
  signal \next_pending_r_i_8__0_n_0\ : STD_LOGIC;
  signal next_pending_r_reg_n_0 : STD_LOGIC;
  signal \^sel_first_reg_0\ : STD_LOGIC;
  signal \^sel_first_reg_1\ : STD_LOGIC;
  signal \NLW_axaddr_incr_reg[11]_i_4__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_incr[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axaddr_incr[10]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axaddr_incr[11]_i_2__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axaddr_incr[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axaddr_incr[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axaddr_incr[3]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axaddr_incr[4]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axaddr_incr[5]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axaddr_incr[6]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axaddr_incr[7]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axaddr_incr[8]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axaddr_incr[9]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axlen_cnt[1]_i_1__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_pending_r_i_7__0\ : label is "soft_lutpair5";
begin
  \axaddr_incr_reg[11]_0\(0) <= \^axaddr_incr_reg[11]_0\(0);
  incr_next_pending <= \^incr_next_pending\;
  m_axi_araddr_0_sn_1 <= m_axi_araddr_0_sp_1;
  sel_first_reg_0 <= \^sel_first_reg_0\;
  sel_first_reg_1 <= \^sel_first_reg_1\;
\axaddr_incr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[3]_0\(0),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[3]_i_3__0_n_7\,
      O => \axaddr_incr[0]_i_1__0_n_0\
    );
\axaddr_incr[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[11]_1\(2),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[11]_i_4__0_n_5\,
      O => \axaddr_incr[10]_i_1__0_n_0\
    );
\axaddr_incr[11]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[11]_1\(3),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[11]_i_4__0_n_4\,
      O => \axaddr_incr[11]_i_2__0_n_0\
    );
\axaddr_incr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[3]_0\(1),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[3]_i_3__0_n_6\,
      O => \axaddr_incr[1]_i_1__0_n_0\
    );
\axaddr_incr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[3]_0\(2),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[3]_i_3__0_n_5\,
      O => \axaddr_incr[2]_i_1__0_n_0\
    );
\axaddr_incr[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060A0A0A0A0A0A0A"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(1),
      I1 => \axlen_cnt_reg[7]_0\(11),
      I2 => \axlen_cnt_reg[7]_0\(12),
      I3 => m_axi_arready,
      I4 => \axlen_cnt_reg[5]_0\(1),
      I5 => \axlen_cnt_reg[5]_0\(0),
      O => S(1)
    );
\axaddr_incr[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0102020202020202"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(0),
      I1 => \axlen_cnt_reg[7]_0\(12),
      I2 => \axlen_cnt_reg[7]_0\(11),
      I3 => m_axi_arready,
      I4 => \axlen_cnt_reg[5]_0\(1),
      I5 => \axlen_cnt_reg[5]_0\(0),
      O => S(0)
    );
\axaddr_incr[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg[7]_0\(12),
      I2 => \axlen_cnt_reg[7]_0\(11),
      O => \axaddr_incr[3]_i_12_n_0\
    );
\axaddr_incr[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[2]\,
      I1 => \axlen_cnt_reg[7]_0\(11),
      I2 => \axlen_cnt_reg[7]_0\(12),
      O => \axaddr_incr[3]_i_13_n_0\
    );
\axaddr_incr[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[1]\,
      I1 => \axlen_cnt_reg[7]_0\(12),
      I2 => \axlen_cnt_reg[7]_0\(11),
      O => \axaddr_incr[3]_i_14_n_0\
    );
\axaddr_incr[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \axaddr_incr_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg[7]_0\(11),
      I2 => \axlen_cnt_reg[7]_0\(12),
      O => \axaddr_incr[3]_i_15_n_0\
    );
\axaddr_incr[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[3]_0\(3),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[3]_i_3__0_n_4\,
      O => \axaddr_incr[3]_i_1__0_n_0\
    );
\axaddr_incr[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(3),
      I1 => \axlen_cnt_reg[7]_0\(11),
      I2 => \axlen_cnt_reg[7]_0\(12),
      I3 => m_axi_arready,
      I4 => \axlen_cnt_reg[5]_0\(1),
      I5 => \axlen_cnt_reg[5]_0\(0),
      O => S(3)
    );
\axaddr_incr[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"262A2A2A2A2A2A2A"
    )
        port map (
      I0 => \axlen_cnt_reg[7]_0\(2),
      I1 => \axlen_cnt_reg[7]_0\(12),
      I2 => \axlen_cnt_reg[7]_0\(11),
      I3 => m_axi_arready,
      I4 => \axlen_cnt_reg[5]_0\(1),
      I5 => \axlen_cnt_reg[5]_0\(0),
      O => S(2)
    );
\axaddr_incr[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[7]_0\(0),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[7]_i_3__0_n_7\,
      O => \axaddr_incr[4]_i_1__0_n_0\
    );
\axaddr_incr[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[7]_0\(1),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[7]_i_3__0_n_6\,
      O => \axaddr_incr[5]_i_1__0_n_0\
    );
\axaddr_incr[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[7]_0\(2),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[7]_i_3__0_n_5\,
      O => \axaddr_incr[6]_i_1__0_n_0\
    );
\axaddr_incr[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[7]_0\(3),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[7]_i_3__0_n_4\,
      O => \axaddr_incr[7]_i_1__0_n_0\
    );
\axaddr_incr[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[11]_1\(0),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[11]_i_4__0_n_7\,
      O => \axaddr_incr[8]_i_1__0_n_0\
    );
\axaddr_incr[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[11]_1\(1),
      I1 => \^sel_first_reg_0\,
      I2 => \axaddr_incr_reg[11]_i_4__0_n_6\,
      O => \axaddr_incr[9]_i_1__0_n_0\
    );
\axaddr_incr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[0]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[0]\,
      R => '0'
    );
\axaddr_incr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[10]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[10]\,
      R => '0'
    );
\axaddr_incr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[11]_i_2__0_n_0\,
      Q => \^axaddr_incr_reg[11]_0\(0),
      R => '0'
    );
\axaddr_incr_reg[11]_i_4__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[7]_i_3__0_n_0\,
      CO(3) => \NLW_axaddr_incr_reg[11]_i_4__0_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_incr_reg[11]_i_4__0_n_1\,
      CO(1) => \axaddr_incr_reg[11]_i_4__0_n_2\,
      CO(0) => \axaddr_incr_reg[11]_i_4__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axaddr_incr_reg[11]_i_4__0_n_4\,
      O(2) => \axaddr_incr_reg[11]_i_4__0_n_5\,
      O(1) => \axaddr_incr_reg[11]_i_4__0_n_6\,
      O(0) => \axaddr_incr_reg[11]_i_4__0_n_7\,
      S(3) => \^axaddr_incr_reg[11]_0\(0),
      S(2) => \axaddr_incr_reg_n_0_[10]\,
      S(1) => \axaddr_incr_reg_n_0_[9]\,
      S(0) => \axaddr_incr_reg_n_0_[8]\
    );
\axaddr_incr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[1]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[1]\,
      R => '0'
    );
\axaddr_incr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[2]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[2]\,
      R => '0'
    );
\axaddr_incr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[3]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[3]\,
      R => '0'
    );
\axaddr_incr_reg[3]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_incr_reg[3]_i_3__0_n_0\,
      CO(2) => \axaddr_incr_reg[3]_i_3__0_n_1\,
      CO(1) => \axaddr_incr_reg[3]_i_3__0_n_2\,
      CO(0) => \axaddr_incr_reg[3]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3) => \axaddr_incr_reg_n_0_[3]\,
      DI(2) => \axaddr_incr_reg_n_0_[2]\,
      DI(1) => \axaddr_incr_reg_n_0_[1]\,
      DI(0) => \axaddr_incr_reg_n_0_[0]\,
      O(3) => \axaddr_incr_reg[3]_i_3__0_n_4\,
      O(2) => \axaddr_incr_reg[3]_i_3__0_n_5\,
      O(1) => \axaddr_incr_reg[3]_i_3__0_n_6\,
      O(0) => \axaddr_incr_reg[3]_i_3__0_n_7\,
      S(3) => \axaddr_incr[3]_i_12_n_0\,
      S(2) => \axaddr_incr[3]_i_13_n_0\,
      S(1) => \axaddr_incr[3]_i_14_n_0\,
      S(0) => \axaddr_incr[3]_i_15_n_0\
    );
\axaddr_incr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[4]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[4]\,
      R => '0'
    );
\axaddr_incr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[5]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[5]\,
      R => '0'
    );
\axaddr_incr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[6]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[6]\,
      R => '0'
    );
\axaddr_incr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[7]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[7]\,
      R => '0'
    );
\axaddr_incr_reg[7]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[3]_i_3__0_n_0\,
      CO(3) => \axaddr_incr_reg[7]_i_3__0_n_0\,
      CO(2) => \axaddr_incr_reg[7]_i_3__0_n_1\,
      CO(1) => \axaddr_incr_reg[7]_i_3__0_n_2\,
      CO(0) => \axaddr_incr_reg[7]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \axaddr_incr_reg[7]_i_3__0_n_4\,
      O(2) => \axaddr_incr_reg[7]_i_3__0_n_5\,
      O(1) => \axaddr_incr_reg[7]_i_3__0_n_6\,
      O(0) => \axaddr_incr_reg[7]_i_3__0_n_7\,
      S(3) => \axaddr_incr_reg_n_0_[7]\,
      S(2) => \axaddr_incr_reg_n_0_[6]\,
      S(1) => \axaddr_incr_reg_n_0_[5]\,
      S(0) => \axaddr_incr_reg_n_0_[4]\
    );
\axaddr_incr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[8]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[8]\,
      R => '0'
    );
\axaddr_incr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_incr_reg[0]_0\(0),
      D => \axaddr_incr[9]_i_1__0_n_0\,
      Q => \axaddr_incr_reg_n_0_[9]\,
      R => '0'
    );
\axlen_cnt[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[0]\,
      I1 => next_pending_r_i_4_n_0,
      I2 => \axlen_cnt_reg[5]_0\(1),
      I3 => si_rs_arvalid,
      I4 => \axlen_cnt_reg[7]_0\(15),
      O => \axlen_cnt[0]_i_1__1_n_0\
    );
\axlen_cnt[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg_n_0_[1]\,
      I2 => next_pending_r_i_4_n_0,
      I3 => E(0),
      I4 => \axlen_cnt_reg[7]_0\(16),
      O => \axlen_cnt[1]_i_1__2_n_0\
    );
\axlen_cnt[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE100E100E100"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[1]\,
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => next_pending_r_i_4_n_0,
      I4 => E(0),
      I5 => \axlen_cnt_reg[7]_0\(17),
      O => \axlen_cnt[2]_i_1__2_n_0\
    );
\axlen_cnt[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE010000"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[2]\,
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[3]\,
      I4 => next_pending_r_i_4_n_0,
      I5 => \axlen_cnt_reg[3]_0\,
      O => \axlen_cnt[3]_i_1__1_n_0\
    );
\axlen_cnt[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => \axlen_cnt[4]_i_2__0_n_0\,
      I1 => next_pending_r_i_4_n_0,
      I2 => \axlen_cnt_reg[5]_0\(1),
      I3 => si_rs_arvalid,
      I4 => \axlen_cnt_reg[7]_0\(18),
      O => \axlen_cnt[4]_i_1__2_n_0\
    );
\axlen_cnt[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[1]\,
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg_n_0_[4]\,
      O => \axlen_cnt[4]_i_2__0_n_0\
    );
\axlen_cnt[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => \axlen_cnt[5]_i_2__0_n_0\,
      I1 => next_pending_r_i_4_n_0,
      I2 => \axlen_cnt_reg[5]_0\(1),
      I3 => si_rs_arvalid,
      I4 => \axlen_cnt_reg[7]_0\(19),
      O => \axlen_cnt[5]_i_1__0_n_0\
    );
\axlen_cnt[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[4]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[3]\,
      I5 => \axlen_cnt_reg_n_0_[5]\,
      O => \axlen_cnt[5]_i_2__0_n_0\
    );
\axlen_cnt[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => \axlen_cnt[8]_i_3__0_n_0\,
      I1 => \axlen_cnt_reg_n_0_[6]\,
      I2 => next_pending_r_i_4_n_0,
      I3 => E(0),
      I4 => \axlen_cnt_reg[7]_0\(20),
      O => \axlen_cnt[6]_i_1__0_n_0\
    );
\axlen_cnt[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE100E100E100"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[6]\,
      I1 => \axlen_cnt[8]_i_3__0_n_0\,
      I2 => \axlen_cnt_reg_n_0_[7]\,
      I3 => next_pending_r_i_4_n_0,
      I4 => E(0),
      I5 => \axlen_cnt_reg[7]_0\(21),
      O => \axlen_cnt[7]_i_1__0_n_0\
    );
\axlen_cnt[8]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => next_pending_r_i_4_n_0,
      I1 => \axlen_cnt_reg_n_0_[8]\,
      I2 => \axlen_cnt_reg_n_0_[6]\,
      I3 => \axlen_cnt[8]_i_3__0_n_0\,
      I4 => \axlen_cnt_reg_n_0_[7]\,
      O => \axlen_cnt[8]_i_2__0_n_0\
    );
\axlen_cnt[8]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[4]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[3]\,
      I5 => \axlen_cnt_reg_n_0_[5]\,
      O => \axlen_cnt[8]_i_3__0_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[0]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[0]\,
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[1]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[2]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[3]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[4]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[4]\,
      R => '0'
    );
\axlen_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[5]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[5]\,
      R => '0'
    );
\axlen_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[6]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[6]\,
      R => '0'
    );
\axlen_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[7]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[7]\,
      R => '0'
    );
\axlen_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axlen_cnt_reg[0]_0\(0),
      D => \axlen_cnt[8]_i_2__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[8]\,
      R => '0'
    );
\m_axi_araddr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(0),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[0]\,
      I4 => \axlen_cnt_reg[7]_0\(0),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(0)
    );
\m_axi_araddr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(10),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[10]\,
      I4 => \axlen_cnt_reg[7]_0\(10),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(10)
    );
\m_axi_araddr[11]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB0B"
    )
        port map (
      I0 => \^sel_first_reg_0\,
      I1 => \axlen_cnt_reg[7]_0\(13),
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => \m_axi_araddr[0]_1\,
      O => \^sel_first_reg_1\
    );
\m_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(1),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg[7]_0\(1),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(1)
    );
\m_axi_araddr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(2),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg[7]_0\(2),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(2)
    );
\m_axi_araddr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(3),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[3]\,
      I4 => \axlen_cnt_reg[7]_0\(3),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(3)
    );
\m_axi_araddr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(4),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[4]\,
      I4 => \axlen_cnt_reg[7]_0\(4),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(4)
    );
\m_axi_araddr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(5),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[5]\,
      I4 => \axlen_cnt_reg[7]_0\(5),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(5)
    );
\m_axi_araddr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(6),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[6]\,
      I4 => \axlen_cnt_reg[7]_0\(6),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(6)
    );
\m_axi_araddr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(7),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[7]\,
      I4 => \axlen_cnt_reg[7]_0\(7),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(7)
    );
\m_axi_araddr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(8),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[8]\,
      I4 => \axlen_cnt_reg[7]_0\(8),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(8)
    );
\m_axi_araddr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(9),
      I1 => m_axi_araddr_0_sn_1,
      I2 => \m_axi_araddr[0]_0\,
      I3 => \axaddr_incr_reg_n_0_[9]\,
      I4 => \axlen_cnt_reg[7]_0\(9),
      I5 => \^sel_first_reg_1\,
      O => m_axi_araddr(9)
    );
\next_pending_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF888888B8B8B8B8"
    )
        port map (
      I0 => next_pending_r_reg_0,
      I1 => E(0),
      I2 => next_pending_r_reg_n_0,
      I3 => \next_pending_r_i_3__1_n_0\,
      I4 => next_pending_r_i_4_n_0,
      I5 => r_push,
      O => \^incr_next_pending\
    );
\next_pending_r_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEF"
    )
        port map (
      I0 => \next_pending_r_i_6__0_n_0\,
      I1 => \axlen_cnt_reg_n_0_[7]\,
      I2 => \axlen_cnt[8]_i_3__0_n_0\,
      I3 => \axlen_cnt_reg_n_0_[6]\,
      I4 => \axlen_cnt_reg_n_0_[8]\,
      I5 => \next_pending_r_i_7__0_n_0\,
      O => \next_pending_r_i_3__1_n_0\
    );
next_pending_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \next_pending_r_i_8__0_n_0\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[4]\,
      I4 => \axlen_cnt_reg_n_0_[3]\,
      I5 => E(0),
      O => next_pending_r_i_4_n_0
    );
\next_pending_r_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEB"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[4]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[3]\,
      I5 => \axlen_cnt_reg_n_0_[5]\,
      O => \next_pending_r_i_6__0_n_0\
    );
\next_pending_r_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[1]\,
      I1 => \axlen_cnt_reg_n_0_[0]\,
      O => \next_pending_r_i_7__0_n_0\
    );
\next_pending_r_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[6]\,
      I1 => \axlen_cnt_reg_n_0_[5]\,
      I2 => \axlen_cnt_reg_n_0_[8]\,
      I3 => \axlen_cnt_reg_n_0_[7]\,
      O => \next_pending_r_i_8__0_n_0\
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^incr_next_pending\,
      Q => next_pending_r_reg_n_0,
      R => '0'
    );
\s_axburst_eq0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \^incr_next_pending\,
      I1 => sel_first_i,
      I2 => \axlen_cnt_reg[7]_0\(14),
      I3 => wrap_next_pending,
      O => \m_payload_i_reg[39]\
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_reg_2,
      Q => \^sel_first_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_rd_cmd_fsm is
  port (
    s_ready_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready_0 : out STD_LOGIC;
    m_axi_arready_1 : out STD_LOGIC;
    sel_first_i : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sel_first_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arready_2 : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    si_rs_arvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    sel_first_reg_0 : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \axaddr_incr_reg[0]\ : in STD_LOGIC;
    sel_first_reg_1 : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \axaddr_wrap_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \axaddr_wrap_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[11]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[11]_2\ : in STD_LOGIC;
    next_pending : in STD_LOGIC;
    r_full : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_rd_cmd_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_rd_cmd_fsm is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axaddr_wrap[11]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_4_n_0\ : STD_LOGIC;
  signal \^m_axi_arready_2\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "SM_IDLE:01,SM_DONE:00,SM_CMD_ACCEPTED:10,SM_CMD_EN:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "SM_IDLE:01,SM_DONE:00,SM_CMD_ACCEPTED:10,SM_CMD_EN:11";
  attribute SOFT_HLUTNM of \axaddr_incr[11]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axaddr_wrap[11]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axaddr_wrap[11]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axlen_cnt[8]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_valid_i_i_1__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of r_push_r_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_ready_i_i_1__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[11]_i_1__0\ : label is "soft_lutpair2";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  m_axi_arready_2 <= \^m_axi_arready_2\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F755FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => m_axi_arready,
      I2 => next_pending,
      I3 => r_full,
      I4 => \^q\(0),
      O => \next_state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFFDDFF0F000000"
    )
        port map (
      I0 => m_axi_arready,
      I1 => next_pending,
      I2 => r_full,
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      I5 => \^q\(1),
      O => \next_state__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \next_state__0\(0),
      Q => \^q\(0),
      S => areset_d1
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \next_state__0\(1),
      Q => \^q\(1),
      R => areset_d1
    );
\axaddr_incr[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \axaddr_incr_reg[0]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => m_axi_arready,
      O => sel_first_reg(0)
    );
\axaddr_wrap[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => O(0),
      I2 => \axaddr_wrap_reg[11]\(0),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(0),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(0)
    );
\axaddr_wrap[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => \axaddr_wrap_reg[11]_1\(2),
      I2 => \axaddr_wrap_reg[11]\(10),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(10),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(10)
    );
\axaddr_wrap[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => \axaddr_wrap_reg[11]_1\(3),
      I2 => \axaddr_wrap_reg[11]\(11),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(11),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(11)
    );
\axaddr_wrap[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => m_axi_arready,
      I3 => \axaddr_wrap_reg[11]_2\,
      O => \axaddr_wrap[11]_i_2_n_0\
    );
\axaddr_wrap[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \axaddr_wrap_reg[11]_2\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => m_axi_arready,
      O => \axaddr_wrap[11]_i_4_n_0\
    );
\axaddr_wrap[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => O(1),
      I2 => \axaddr_wrap_reg[11]\(1),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(1),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(1)
    );
\axaddr_wrap[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => O(2),
      I2 => \axaddr_wrap_reg[11]\(2),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(2),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(2)
    );
\axaddr_wrap[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => O(3),
      I2 => \axaddr_wrap_reg[11]\(3),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(3),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(3)
    );
\axaddr_wrap[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => \axaddr_wrap_reg[7]\(0),
      I2 => \axaddr_wrap_reg[11]\(4),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(4),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(4)
    );
\axaddr_wrap[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => \axaddr_wrap_reg[7]\(1),
      I2 => \axaddr_wrap_reg[11]\(5),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(5),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(5)
    );
\axaddr_wrap[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => \axaddr_wrap_reg[7]\(2),
      I2 => \axaddr_wrap_reg[11]\(6),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(6),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(6)
    );
\axaddr_wrap[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => \axaddr_wrap_reg[7]\(3),
      I2 => \axaddr_wrap_reg[11]\(7),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(7),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(7)
    );
\axaddr_wrap[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => \axaddr_wrap_reg[11]_1\(0),
      I2 => \axaddr_wrap_reg[11]\(8),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(8),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(8)
    );
\axaddr_wrap[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \axaddr_wrap[11]_i_2_n_0\,
      I1 => \axaddr_wrap_reg[11]_1\(1),
      I2 => \axaddr_wrap_reg[11]\(9),
      I3 => \^m_axi_arready_2\,
      I4 => \axaddr_wrap_reg[11]_0\(9),
      I5 => \axaddr_wrap[11]_i_4_n_0\,
      O => D(9)
    );
\axlen_cnt[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => m_axi_arready,
      I1 => si_rs_arvalid,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => E(0)
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => m_axi_arvalid
    );
\m_payload_i[31]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_arvalid,
      O => \FSM_sequential_state_reg[1]_1\(0)
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE0FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_arvalid,
      I3 => s_ready_i_reg,
      I4 => s_axi_arvalid,
      O => m_valid_i0
    );
r_push_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \^m_axi_arready_2\
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF1F1F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_arvalid,
      I3 => s_axi_arvalid,
      I4 => s_ready_i_reg,
      O => s_ready_i0
    );
\sel_first_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4FCC4CCC"
    )
        port map (
      I0 => m_axi_arready,
      I1 => sel_first_reg_0,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      I5 => areset_d1,
      O => m_axi_arready_0
    );
\sel_first_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4FCC4CCC"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \axaddr_incr_reg[0]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      I5 => areset_d1,
      O => m_axi_arready_1
    );
\sel_first_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4FCC4CCC"
    )
        port map (
      I0 => m_axi_arready,
      I1 => sel_first_reg_1,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_arvalid,
      I5 => areset_d1,
      O => sel_first_i
    );
\wrap_boundary_axaddr_r[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_arvalid,
      O => \FSM_sequential_state_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo is
  port (
    b_full : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bresp_push : out STD_LOGIC;
    shandshake_r_reg : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    areset_d1 : in STD_LOGIC;
    mhandshake_r : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    shandshake_r : in STD_LOGIC;
    bresp_empty : in STD_LOGIC;
    si_rs_bvalid : in STD_LOGIC;
    si_rs_bready : in STD_LOGIC;
    b_push : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 19 downto 0 );
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo is
  signal \^addr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \bresp_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \bresp_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \bresp_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal bvalid_i21_in : STD_LOGIC;
  signal \cnt_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_2__0_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_3__0_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][1]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][2]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][3]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][4]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][5]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][6]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][7]_srl4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_1\ : label is "soft_lutpair121";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][0]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][10]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][10]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][10]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][11]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][11]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][11]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][12]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][12]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][12]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][13]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][13]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][13]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][14]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][14]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][14]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][15]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][15]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][15]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][16]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][16]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][16]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][17]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][17]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][17]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][18]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][18]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][18]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][19]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][19]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][19]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][1]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][2]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][2]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][2]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][3]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][3]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][3]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][4]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][4]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][4]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][5]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][5]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][5]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][6]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][6]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][6]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][7]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][7]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][7]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][8]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][8]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][8]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][9]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][9]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][9]_srl4 ";
begin
  addr(1 downto 0) <= \^addr\(1 downto 0);
\bresp_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABABABA"
    )
        port map (
      I0 => areset_d1,
      I1 => \bresp_cnt[7]_i_3_n_0\,
      I2 => mhandshake_r,
      I3 => \^addr\(0),
      I4 => \^addr\(1),
      I5 => \bresp_cnt[7]_i_4_n_0\,
      O => SR(0)
    );
\bresp_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => \memory_reg[3][0]_srl4_i_4_n_0\,
      I1 => Q(3),
      I2 => \memory_reg[3][3]_srl4_n_0\,
      I3 => Q(4),
      I4 => \memory_reg[3][4]_srl4_n_0\,
      I5 => \bresp_cnt[7]_i_6_n_0\,
      O => \bresp_cnt[7]_i_3_n_0\
    );
\bresp_cnt[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => Q(6),
      I1 => \memory_reg[3][6]_srl4_n_0\,
      I2 => Q(7),
      I3 => \memory_reg[3][7]_srl4_n_0\,
      O => \bresp_cnt[7]_i_4_n_0\
    );
\bresp_cnt[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => Q(2),
      I1 => \memory_reg[3][2]_srl4_n_0\,
      I2 => Q(5),
      I3 => \memory_reg[3][5]_srl4_n_0\,
      O => \bresp_cnt[7]_i_6_n_0\
    );
bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400FF0004"
    )
        port map (
      I0 => shandshake_r,
      I1 => bvalid_i21_in,
      I2 => bresp_empty,
      I3 => areset_d1,
      I4 => si_rs_bvalid,
      I5 => si_rs_bready,
      O => shandshake_r_reg
    );
bvalid_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \^addr\(1),
      O => bvalid_i21_in
    );
\cnt_read[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => shandshake_r,
      I1 => b_push,
      I2 => \^addr\(0),
      O => \cnt_read[0]_i_1_n_0\
    );
\cnt_read[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => \^addr\(0),
      I1 => b_push,
      I2 => shandshake_r,
      I3 => \^addr\(1),
      O => \cnt_read[1]_i_1_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_i_1_n_0\,
      Q => \^addr\(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_i_1_n_0\,
      Q => \^addr\(1),
      S => areset_d1
    );
\memory_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(0),
      Q => \memory_reg[3][0]_srl4_n_0\
    );
\memory_reg[3][0]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000082000082"
    )
        port map (
      I0 => \memory_reg[3][0]_srl4_i_2__0_n_0\,
      I1 => Q(2),
      I2 => \memory_reg[3][2]_srl4_n_0\,
      I3 => Q(5),
      I4 => \memory_reg[3][5]_srl4_n_0\,
      I5 => \memory_reg[3][0]_srl4_i_3__0_n_0\,
      O => bresp_push
    );
\memory_reg[3][0]_srl4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addr\(1),
      I1 => \^addr\(0),
      O => b_full
    );
\memory_reg[3][0]_srl4_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008000000008008"
    )
        port map (
      I0 => mhandshake_r,
      I1 => bvalid_i21_in,
      I2 => \memory_reg[3][7]_srl4_n_0\,
      I3 => Q(7),
      I4 => \memory_reg[3][6]_srl4_n_0\,
      I5 => Q(6),
      O => \memory_reg[3][0]_srl4_i_2__0_n_0\
    );
\memory_reg[3][0]_srl4_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \memory_reg[3][4]_srl4_n_0\,
      I1 => Q(4),
      I2 => \memory_reg[3][3]_srl4_n_0\,
      I3 => Q(3),
      I4 => \memory_reg[3][0]_srl4_i_4_n_0\,
      O => \memory_reg[3][0]_srl4_i_3__0_n_0\
    );
\memory_reg[3][0]_srl4_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => Q(0),
      I1 => \memory_reg[3][0]_srl4_n_0\,
      I2 => Q(1),
      I3 => \memory_reg[3][1]_srl4_n_0\,
      O => \memory_reg[3][0]_srl4_i_4_n_0\
    );
\memory_reg[3][10]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(10),
      Q => \out\(2)
    );
\memory_reg[3][11]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(11),
      Q => \out\(3)
    );
\memory_reg[3][12]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(12),
      Q => \out\(4)
    );
\memory_reg[3][13]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(13),
      Q => \out\(5)
    );
\memory_reg[3][14]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(14),
      Q => \out\(6)
    );
\memory_reg[3][15]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(15),
      Q => \out\(7)
    );
\memory_reg[3][16]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(16),
      Q => \out\(8)
    );
\memory_reg[3][17]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(17),
      Q => \out\(9)
    );
\memory_reg[3][18]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(18),
      Q => \out\(10)
    );
\memory_reg[3][19]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(19),
      Q => \out\(11)
    );
\memory_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(1),
      Q => \memory_reg[3][1]_srl4_n_0\
    );
\memory_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(2),
      Q => \memory_reg[3][2]_srl4_n_0\
    );
\memory_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(3),
      Q => \memory_reg[3][3]_srl4_n_0\
    );
\memory_reg[3][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(4),
      Q => \memory_reg[3][4]_srl4_n_0\
    );
\memory_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(5),
      Q => \memory_reg[3][5]_srl4_n_0\
    );
\memory_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(6),
      Q => \memory_reg[3][6]_srl4_n_0\
    );
\memory_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(7),
      Q => \memory_reg[3][7]_srl4_n_0\
    );
\memory_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(8),
      Q => \out\(0)
    );
\memory_reg[3][9]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \^addr\(0),
      A1 => \^addr\(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(9),
      Q => \out\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized0\ is
  port (
    m_axi_bready : out STD_LOGIC;
    mhandshake : out STD_LOGIC;
    bresp_empty : out STD_LOGIC;
    \s_bresp_acc_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mhandshake_r : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    bresp_push : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    shandshake_r : in STD_LOGIC;
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized0\ : entity is "axi_protocol_converter_v2_1_20_b2s_simple_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized0\ is
  signal cnt_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of m_axi_bready_INST_0 : label is "soft_lutpair123";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][0]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][1]_srl4 ";
  attribute SOFT_HLUTNM of mhandshake_r_i_1 : label is "soft_lutpair123";
begin
bvalid_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_read(0),
      I1 => cnt_read(1),
      O => bresp_empty
    );
\cnt_read[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => shandshake_r,
      I1 => bresp_push,
      I2 => cnt_read(0),
      O => \cnt_read[0]_i_1_n_0\
    );
\cnt_read[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => cnt_read(0),
      I1 => bresp_push,
      I2 => shandshake_r,
      I3 => cnt_read(1),
      O => \cnt_read[1]_i_1_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_i_1_n_0\,
      Q => cnt_read(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_i_1_n_0\,
      Q => cnt_read(1),
      S => areset_d1
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_read(1),
      I1 => cnt_read(0),
      I2 => mhandshake_r,
      O => m_axi_bready
    );
\memory_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read(0),
      A1 => cnt_read(1),
      A2 => '0',
      A3 => '0',
      CE => bresp_push,
      CLK => aclk,
      D => \in\(0),
      Q => \s_bresp_acc_reg[1]\(0)
    );
\memory_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read(0),
      A1 => cnt_read(1),
      A2 => '0',
      A3 => '0',
      CE => bresp_push,
      CLK => aclk,
      D => \in\(1),
      Q => \s_bresp_acc_reg[1]\(1)
    );
mhandshake_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => mhandshake_r,
      I1 => m_axi_bvalid,
      I2 => cnt_read(1),
      I3 => cnt_read(0),
      O => mhandshake
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized1\ is
  port (
    m_axi_rready : out STD_LOGIC;
    wr_en0 : out STD_LOGIC;
    rd_a_full : out STD_LOGIC;
    a_full0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    \rd_en__1\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized1\ : entity is "axi_protocol_converter_v2_1_20_b2s_simple_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized1\ is
  signal \cnt_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_4_n_0\ : STD_LOGIC;
  signal cnt_read_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^wr_en0\ : STD_LOGIC;
  signal \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_read[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_read[4]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of m_axi_rready_INST_0 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of m_valid_i_i_3 : label is "soft_lutpair14";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][0]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][10]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][10]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][10]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][11]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][11]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][11]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][12]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][12]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][12]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][13]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][13]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][13]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][14]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][14]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][14]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][15]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][15]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][15]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][16]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][16]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][16]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][17]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][17]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][17]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][18]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][18]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][18]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][19]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][19]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][19]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][1]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][20]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][20]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][20]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][21]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][21]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][21]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][22]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][22]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][22]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][23]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][23]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][23]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][24]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][24]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][24]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][25]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][25]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][25]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][26]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][26]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][26]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][27]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][27]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][27]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][28]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][28]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][28]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][29]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][29]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][29]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][2]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][2]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][2]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][30]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][30]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][30]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][31]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][31]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][31]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][32]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][32]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][32]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][33]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][33]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][33]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][3]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][3]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][3]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][4]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][4]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][4]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][5]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][5]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][5]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][6]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][6]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][6]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][7]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][7]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][7]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][8]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][8]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][8]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][9]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][9]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][9]_srl32 ";
begin
  wr_en0 <= \^wr_en0\;
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888080"
    )
        port map (
      I0 => cnt_read_reg(4),
      I1 => cnt_read_reg(3),
      I2 => cnt_read_reg(1),
      I3 => cnt_read_reg(0),
      I4 => cnt_read_reg(2),
      O => rd_a_full
    );
\cnt_read[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_read_reg(0),
      O => \cnt_read[0]_i_1_n_0\
    );
\cnt_read[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A65"
    )
        port map (
      I0 => cnt_read_reg(0),
      I1 => \rd_en__1\,
      I2 => \^wr_en0\,
      I3 => cnt_read_reg(1),
      O => \cnt_read[1]_i_1_n_0\
    );
\cnt_read[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFF4400B"
    )
        port map (
      I0 => \rd_en__1\,
      I1 => \^wr_en0\,
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(1),
      I4 => cnt_read_reg(2),
      O => \cnt_read[2]_i_1_n_0\
    );
\cnt_read[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFF4000B"
    )
        port map (
      I0 => \rd_en__1\,
      I1 => \^wr_en0\,
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(1),
      I4 => cnt_read_reg(3),
      I5 => cnt_read_reg(2),
      O => \cnt_read[3]_i_1_n_0\
    );
\cnt_read[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => \cnt_read[4]_i_4_n_0\,
      I1 => cnt_read_reg(2),
      I2 => cnt_read_reg(3),
      I3 => cnt_read_reg(4),
      O => \cnt_read[4]_i_2_n_0\
    );
\cnt_read[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5454D554"
    )
        port map (
      I0 => cnt_read_reg(2),
      I1 => cnt_read_reg(1),
      I2 => cnt_read_reg(0),
      I3 => \^wr_en0\,
      I4 => \rd_en__1\,
      O => \cnt_read[4]_i_4_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \cnt_read[0]_i_1_n_0\,
      Q => cnt_read_reg(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \cnt_read[1]_i_1_n_0\,
      Q => cnt_read_reg(1),
      S => areset_d1
    );
\cnt_read_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \cnt_read[2]_i_1_n_0\,
      Q => cnt_read_reg(2),
      S => areset_d1
    );
\cnt_read_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \cnt_read[3]_i_1_n_0\,
      Q => cnt_read_reg(3),
      S => areset_d1
    );
\cnt_read_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \cnt_read[4]_i_2_n_0\,
      Q => cnt_read_reg(4),
      S => areset_d1
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"85FFFFFF"
    )
        port map (
      I0 => cnt_read_reg(2),
      I1 => cnt_read_reg(0),
      I2 => cnt_read_reg(1),
      I3 => cnt_read_reg(3),
      I4 => cnt_read_reg(4),
      O => m_axi_rready
    );
m_valid_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cnt_read_reg(2),
      I1 => cnt_read_reg(0),
      I2 => cnt_read_reg(1),
      I3 => cnt_read_reg(3),
      I4 => cnt_read_reg(4),
      O => a_full0
    );
\memory_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(0),
      Q => \out\(0),
      Q31 => \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][0]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8022AAAAAAAAAAAA"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => cnt_read_reg(2),
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(1),
      I4 => cnt_read_reg(3),
      I5 => cnt_read_reg(4),
      O => \^wr_en0\
    );
\memory_reg[31][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(10),
      Q => \out\(10),
      Q31 => \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(11),
      Q => \out\(11),
      Q31 => \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(12),
      Q => \out\(12),
      Q31 => \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][13]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(13),
      Q => \out\(13),
      Q31 => \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][14]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(14),
      Q => \out\(14),
      Q31 => \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][15]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(15),
      Q => \out\(15),
      Q31 => \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][16]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(16),
      Q => \out\(16),
      Q31 => \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][17]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(17),
      Q => \out\(17),
      Q31 => \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][18]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(18),
      Q => \out\(18),
      Q31 => \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][19]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(19),
      Q => \out\(19),
      Q31 => \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(1),
      Q => \out\(1),
      Q31 => \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][20]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(20),
      Q => \out\(20),
      Q31 => \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][21]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(21),
      Q => \out\(21),
      Q31 => \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][22]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(22),
      Q => \out\(22),
      Q31 => \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][23]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(23),
      Q => \out\(23),
      Q31 => \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][24]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(24),
      Q => \out\(24),
      Q31 => \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][25]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(25),
      Q => \out\(25),
      Q31 => \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][26]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(26),
      Q => \out\(26),
      Q31 => \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][27]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(27),
      Q => \out\(27),
      Q31 => \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][28]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(28),
      Q => \out\(28),
      Q31 => \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][29]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(29),
      Q => \out\(29),
      Q31 => \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(2),
      Q => \out\(2),
      Q31 => \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][30]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(30),
      Q => \out\(30),
      Q31 => \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(31),
      Q => \out\(31),
      Q31 => \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][32]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(32),
      Q => \out\(32),
      Q31 => \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][33]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(33),
      Q => \out\(33),
      Q31 => \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(3),
      Q => \out\(3),
      Q31 => \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(4),
      Q => \out\(4),
      Q31 => \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(5),
      Q => \out\(5),
      Q31 => \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(6),
      Q => \out\(6),
      Q31 => \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(7),
      Q => \out\(7),
      Q31 => \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(8),
      Q => \out\(8),
      Q31 => \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][9]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => \^wr_en0\,
      CLK => aclk,
      D => \in\(9),
      Q => \out\(9),
      Q31 => \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized2\ is
  port (
    r_full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_en__1\ : out STD_LOGIC;
    si_rs_rvalid : out STD_LOGIC;
    r_push_r_reg : out STD_LOGIC_VECTOR ( 12 downto 0 );
    rd_a_full : in STD_LOGIC;
    wr_en0 : in STD_LOGIC;
    r_push_r : in STD_LOGIC;
    si_rs_rready : in STD_LOGIC;
    a_full0 : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized2\ : entity is "axi_protocol_converter_v2_1_20_b2s_simple_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized2\ is
  signal \cnt_read[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_5_n_0\ : STD_LOGIC;
  signal cnt_read_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rd_en__1\ : STD_LOGIC;
  signal \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_read[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_read[4]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_read[4]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_read[4]_i_5\ : label is "soft_lutpair18";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][0]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][10]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][10]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][10]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][11]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][11]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][11]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][12]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][12]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][12]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][1]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][2]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][2]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][2]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][3]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][3]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][3]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][4]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][4]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][4]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][5]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][5]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][5]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][6]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][6]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][6]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][7]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][7]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][7]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][8]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][8]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][8]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][9]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][9]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][9]_srl32 ";
begin
  \rd_en__1\ <= \^rd_en__1\;
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6000E000"
    )
        port map (
      I0 => cnt_read_reg(2),
      I1 => cnt_read_reg(1),
      I2 => cnt_read_reg(4),
      I3 => cnt_read_reg(3),
      I4 => cnt_read_reg(0),
      I5 => rd_a_full,
      O => r_full
    );
\cnt_read[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_read_reg(0),
      O => \cnt_read[0]_i_1__0_n_0\
    );
\cnt_read[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A65"
    )
        port map (
      I0 => cnt_read_reg(0),
      I1 => \^rd_en__1\,
      I2 => r_push_r,
      I3 => cnt_read_reg(1),
      O => \cnt_read[1]_i_1__0_n_0\
    );
\cnt_read[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40F40B"
    )
        port map (
      I0 => \^rd_en__1\,
      I1 => r_push_r,
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(2),
      I4 => cnt_read_reg(1),
      O => \cnt_read[2]_i_1__0_n_0\
    );
\cnt_read[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFF4000B"
    )
        port map (
      I0 => \^rd_en__1\,
      I1 => r_push_r,
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(1),
      I4 => cnt_read_reg(3),
      I5 => cnt_read_reg(2),
      O => \cnt_read[3]_i_1__0_n_0\
    );
\cnt_read[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_en__1\,
      I1 => wr_en0,
      O => E(0)
    );
\cnt_read[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_en__1\,
      I1 => r_push_r,
      O => \cnt_read[4]_i_1__0_n_0\
    );
\cnt_read[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \cnt_read[4]_i_3_n_0\,
      I1 => cnt_read_reg(2),
      I2 => cnt_read_reg(4),
      I3 => cnt_read_reg(3),
      O => \cnt_read[4]_i_2__0_n_0\
    );
\cnt_read[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5454D554"
    )
        port map (
      I0 => cnt_read_reg(2),
      I1 => cnt_read_reg(1),
      I2 => cnt_read_reg(0),
      I3 => r_push_r,
      I4 => \^rd_en__1\,
      O => \cnt_read[4]_i_3_n_0\
    );
\cnt_read[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA00000000"
    )
        port map (
      I0 => si_rs_rready,
      I1 => \cnt_read[4]_i_5_n_0\,
      I2 => cnt_read_reg(0),
      I3 => cnt_read_reg(1),
      I4 => cnt_read_reg(2),
      I5 => a_full0,
      O => \^rd_en__1\
    );
\cnt_read[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_read_reg(4),
      I1 => cnt_read_reg(3),
      O => \cnt_read[4]_i_5_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[0]_i_1__0_n_0\,
      Q => cnt_read_reg(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[1]_i_1__0_n_0\,
      Q => cnt_read_reg(1),
      S => areset_d1
    );
\cnt_read_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[2]_i_1__0_n_0\,
      Q => cnt_read_reg(2),
      S => areset_d1
    );
\cnt_read_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[3]_i_1__0_n_0\,
      Q => cnt_read_reg(3),
      S => areset_d1
    );
\cnt_read_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \cnt_read[4]_i_1__0_n_0\,
      D => \cnt_read[4]_i_2__0_n_0\,
      Q => cnt_read_reg(4),
      S => areset_d1
    );
m_valid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => a_full0,
      I1 => cnt_read_reg(2),
      I2 => cnt_read_reg(1),
      I3 => cnt_read_reg(0),
      I4 => cnt_read_reg(3),
      I5 => cnt_read_reg(4),
      O => si_rs_rvalid
    );
\memory_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(0),
      Q => r_push_r_reg(0),
      Q31 => \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(10),
      Q => r_push_r_reg(10),
      Q31 => \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(11),
      Q => r_push_r_reg(11),
      Q31 => \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(12),
      Q => r_push_r_reg(12),
      Q31 => \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(1),
      Q => r_push_r_reg(1),
      Q31 => \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(2),
      Q => r_push_r_reg(2),
      Q31 => \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(3),
      Q => r_push_r_reg(3),
      Q31 => \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(4),
      Q => r_push_r_reg(4),
      Q31 => \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(5),
      Q => r_push_r_reg(5),
      Q31 => \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(6),
      Q => r_push_r_reg(6),
      Q31 => \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(7),
      Q => r_push_r_reg(7),
      Q31 => \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(8),
      Q => r_push_r_reg(8),
      Q31 => \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][9]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read_reg(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(9),
      Q => r_push_r_reg(9),
      Q31 => \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wr_cmd_fsm is
  port (
    \m_payload_i_reg[39]\ : out STD_LOGIC;
    sel_first_i : out STD_LOGIC;
    wrap_next_pending : out STD_LOGIC;
    \m_payload_i_reg[39]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next\ : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sel_first_reg : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_push : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    incr_next_pending : in STD_LOGIC;
    \axlen_cnt_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    next_pending_r_reg : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    next_pending_r_reg_1 : in STD_LOGIC;
    si_rs_awvalid : in STD_LOGIC;
    sel_first : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    sel_first_reg_1 : in STD_LOGIC;
    sel_first_reg_2 : in STD_LOGIC;
    \axlen_cnt_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[0]_0\ : in STD_LOGIC;
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC;
    next_pending : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    b_full : in STD_LOGIC;
    cnt_read : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wr_cmd_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wr_cmd_fsm is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^b_push\ : STD_LOGIC;
  signal \^next\ : STD_LOGIC;
  signal \^sel_first_i\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^wrap_next_pending\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axlen_cnt[8]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of m_axi_awvalid_INST_0 : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \memory_reg[3][0]_srl4_i_1__0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of s_axburst_eq0_i_1 : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of s_axburst_eq1_i_1 : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[11]_i_1\ : label is "soft_lutpair118";
begin
  E(0) <= \^e\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  b_push <= \^b_push\;
  \next\ <= \^next\;
  sel_first_i <= \^sel_first_i\;
  wrap_next_pending <= \^wrap_next_pending\;
\axlen_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10001000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_awvalid,
      I3 => \axlen_cnt_reg[3]\(1),
      I4 => \axlen_cnt_reg[0]\(0),
      I5 => \axlen_cnt_reg[0]_0\,
      O => D(0)
    );
\axlen_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF100010001000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_awvalid,
      I3 => \axlen_cnt_reg[3]\(2),
      I4 => \axlen_cnt_reg[3]_0\,
      I5 => \axlen_cnt_reg[0]_0\,
      O => D(1)
    );
\axlen_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => \^next\,
      I1 => si_rs_awvalid,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => m_valid_i_reg(0)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => m_axi_awvalid
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^b_push\,
      I1 => si_rs_awvalid,
      O => m_valid_i_reg_0(0)
    );
\memory_reg[3][0]_srl4_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080C08"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => b_full,
      I3 => m_axi_awready,
      I4 => next_pending,
      O => \^b_push\
    );
next_pending_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB888B8"
    )
        port map (
      I0 => next_pending_r_reg,
      I1 => \^e\(0),
      I2 => next_pending_r_reg_0,
      I3 => \^next\,
      I4 => next_pending_r_reg_1,
      O => \^wrap_next_pending\
    );
\next_pending_r_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0400"
    )
        port map (
      I0 => next_pending,
      I1 => m_axi_awready,
      I2 => b_full,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \^next\
    );
s_axburst_eq0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => incr_next_pending,
      I1 => \^sel_first_i\,
      I2 => \axlen_cnt_reg[3]\(0),
      I3 => \^wrap_next_pending\,
      O => \m_payload_i_reg[39]\
    );
s_axburst_eq1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^wrap_next_pending\,
      I1 => \^sel_first_i\,
      I2 => \axlen_cnt_reg[3]\(0),
      I3 => incr_next_pending,
      O => \m_payload_i_reg[39]_0\
    );
sel_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF444F4444"
    )
        port map (
      I0 => \^next\,
      I1 => sel_first,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_awvalid,
      I5 => areset_d1,
      O => sel_first_reg
    );
\sel_first_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF444F4444"
    )
        port map (
      I0 => \^next\,
      I1 => sel_first_reg_1,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_awvalid,
      I5 => areset_d1,
      O => sel_first_reg_0
    );
\sel_first_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF444F4444"
    )
        port map (
      I0 => \^next\,
      I1 => sel_first_reg_2,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => si_rs_awvalid,
      I5 => areset_d1,
      O => \^sel_first_i\
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFF7373FF00"
    )
        port map (
      I0 => next_pending,
      I1 => m_axi_awready,
      I2 => b_full,
      I3 => si_rs_awvalid,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808AA000800"
    )
        port map (
      I0 => \^q\(0),
      I1 => cnt_read(1),
      I2 => cnt_read(0),
      I3 => m_axi_awready,
      I4 => next_pending,
      I5 => \^q\(1),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \^q\(1),
      R => areset_d1
    );
\wrap_boundary_axaddr_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => si_rs_awvalid,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd is
  port (
    next_pending_r_reg_0 : out STD_LOGIC;
    sel_first : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \axlen_cnt_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[3]_0\ : out STD_LOGIC;
    \axlen_cnt_reg[2]_0\ : out STD_LOGIC;
    \axlen_cnt_reg[2]_1\ : out STD_LOGIC;
    \axaddr_offset_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrap_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    sel_first_reg_0 : in STD_LOGIC;
    \next\ : in STD_LOGIC;
    \axlen_cnt_reg[2]_2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[3]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \wrap_cnt_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axaddr_wrap0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axaddr_wrap1 : STD_LOGIC;
  signal \axaddr_wrap[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_4__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \^axlen_cnt_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axlen_cnt_reg[3]_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal wrap_boundary_axaddr_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wrap_cnt_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axlen_cnt[3]_i_3\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \next_pending_r_i_3__2\ : label is "soft_lutpair120";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  \axlen_cnt_reg[0]_0\(0) <= \^axlen_cnt_reg[0]_0\(0);
  \axlen_cnt_reg[3]_0\ <= \^axlen_cnt_reg[3]_0\;
\axaddr_offset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \axaddr_offset_r_reg[3]_0\(0),
      R => '0'
    );
\axaddr_offset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \axaddr_offset_r_reg[3]_0\(1),
      R => '0'
    );
\axaddr_offset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \axaddr_offset_r_reg[3]_0\(2),
      R => '0'
    );
\axaddr_offset_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => \axaddr_offset_r_reg[3]_0\(3),
      R => '0'
    );
\axaddr_wrap[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(0),
      I3 => wrap_boundary_axaddr_r(0),
      I4 => \axlen_cnt_reg[2]_2\(0),
      O => \axaddr_wrap[0]_i_1__0_n_0\
    );
\axaddr_wrap[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(10),
      I3 => wrap_boundary_axaddr_r(10),
      I4 => \axlen_cnt_reg[2]_2\(10),
      O => \axaddr_wrap[10]_i_1__0_n_0\
    );
\axaddr_wrap[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(11),
      I3 => wrap_boundary_axaddr_r(11),
      I4 => \axlen_cnt_reg[2]_2\(11),
      O => \axaddr_wrap[11]_i_1__0_n_0\
    );
\axaddr_wrap[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100004100000000"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[4]\,
      I1 => wrap_cnt_r(1),
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => wrap_cnt_r(2),
      I5 => \axaddr_wrap[11]_i_4__0_n_0\,
      O => axaddr_wrap1
    );
\axaddr_wrap[11]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wrap_cnt_r(3),
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => wrap_cnt_r(0),
      I3 => \^axlen_cnt_reg[0]_0\(0),
      O => \axaddr_wrap[11]_i_4__0_n_0\
    );
\axaddr_wrap[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(1),
      I3 => wrap_boundary_axaddr_r(1),
      I4 => \axlen_cnt_reg[2]_2\(1),
      O => \axaddr_wrap[1]_i_1__0_n_0\
    );
\axaddr_wrap[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(2),
      I3 => wrap_boundary_axaddr_r(2),
      I4 => \axlen_cnt_reg[2]_2\(2),
      O => \axaddr_wrap[2]_i_1__0_n_0\
    );
\axaddr_wrap[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(3),
      I3 => wrap_boundary_axaddr_r(3),
      I4 => \axlen_cnt_reg[2]_2\(3),
      O => \axaddr_wrap[3]_i_1__0_n_0\
    );
\axaddr_wrap[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \axlen_cnt_reg[2]_2\(13),
      I2 => \axlen_cnt_reg[2]_2\(12),
      O => \axaddr_wrap[3]_i_3_n_0\
    );
\axaddr_wrap[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \axlen_cnt_reg[2]_2\(12),
      I2 => \axlen_cnt_reg[2]_2\(13),
      O => \axaddr_wrap[3]_i_4_n_0\
    );
\axaddr_wrap[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \axlen_cnt_reg[2]_2\(13),
      I2 => \axlen_cnt_reg[2]_2\(12),
      O => \axaddr_wrap[3]_i_5_n_0\
    );
\axaddr_wrap[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \axlen_cnt_reg[2]_2\(12),
      I2 => \axlen_cnt_reg[2]_2\(13),
      O => \axaddr_wrap[3]_i_6_n_0\
    );
\axaddr_wrap[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(4),
      I3 => wrap_boundary_axaddr_r(4),
      I4 => \axlen_cnt_reg[2]_2\(4),
      O => \axaddr_wrap[4]_i_1__0_n_0\
    );
\axaddr_wrap[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(5),
      I3 => wrap_boundary_axaddr_r(5),
      I4 => \axlen_cnt_reg[2]_2\(5),
      O => \axaddr_wrap[5]_i_1__0_n_0\
    );
\axaddr_wrap[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(6),
      I3 => wrap_boundary_axaddr_r(6),
      I4 => \axlen_cnt_reg[2]_2\(6),
      O => \axaddr_wrap[6]_i_1__0_n_0\
    );
\axaddr_wrap[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(7),
      I3 => wrap_boundary_axaddr_r(7),
      I4 => \axlen_cnt_reg[2]_2\(7),
      O => \axaddr_wrap[7]_i_1__0_n_0\
    );
\axaddr_wrap[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(8),
      I3 => wrap_boundary_axaddr_r(8),
      I4 => \axlen_cnt_reg[2]_2\(8),
      O => \axaddr_wrap[8]_i_1__0_n_0\
    );
\axaddr_wrap[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB73C840"
    )
        port map (
      I0 => axaddr_wrap1,
      I1 => \next\,
      I2 => axaddr_wrap0(9),
      I3 => wrap_boundary_axaddr_r(9),
      I4 => \axlen_cnt_reg[2]_2\(9),
      O => \axaddr_wrap[9]_i_1__0_n_0\
    );
\axaddr_wrap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\axaddr_wrap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[10]_i_1__0_n_0\,
      Q => \^q\(10),
      R => '0'
    );
\axaddr_wrap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[11]_i_1__0_n_0\,
      Q => \^q\(11),
      R => '0'
    );
\axaddr_wrap_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_wrap_reg[7]_i_2_n_0\,
      CO(3) => \NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_wrap_reg[11]_i_3_n_1\,
      CO(1) => \axaddr_wrap_reg[11]_i_3_n_2\,
      CO(0) => \axaddr_wrap_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => axaddr_wrap0(11 downto 8),
      S(3 downto 0) => \^q\(11 downto 8)
    );
\axaddr_wrap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\axaddr_wrap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\axaddr_wrap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\axaddr_wrap_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_wrap_reg[3]_i_2_n_0\,
      CO(2) => \axaddr_wrap_reg[3]_i_2_n_1\,
      CO(1) => \axaddr_wrap_reg[3]_i_2_n_2\,
      CO(0) => \axaddr_wrap_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => axaddr_wrap0(3 downto 0),
      S(3) => \axaddr_wrap[3]_i_3_n_0\,
      S(2) => \axaddr_wrap[3]_i_4_n_0\,
      S(1) => \axaddr_wrap[3]_i_5_n_0\,
      S(0) => \axaddr_wrap[3]_i_6_n_0\
    );
\axaddr_wrap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\axaddr_wrap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\axaddr_wrap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\axaddr_wrap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\axaddr_wrap_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_wrap_reg[3]_i_2_n_0\,
      CO(3) => \axaddr_wrap_reg[7]_i_2_n_0\,
      CO(2) => \axaddr_wrap_reg[7]_i_2_n_1\,
      CO(1) => \axaddr_wrap_reg[7]_i_2_n_2\,
      CO(0) => \axaddr_wrap_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => axaddr_wrap0(7 downto 4),
      S(3 downto 0) => \^q\(7 downto 4)
    );
\axaddr_wrap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\axaddr_wrap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => '0'
    );
\axlen_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => \^axlen_cnt_reg[0]_0\(0),
      I1 => \axlen_cnt_reg_n_0_[1]\,
      I2 => \^axlen_cnt_reg[3]_0\,
      I3 => E(0),
      I4 => \axlen_cnt_reg[2]_2\(14),
      O => \axlen_cnt[1]_i_1_n_0\
    );
\axlen_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE100E100E100"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[1]\,
      I1 => \^axlen_cnt_reg[0]_0\(0),
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \^axlen_cnt_reg[3]_0\,
      I4 => E(0),
      I5 => \axlen_cnt_reg[2]_2\(15),
      O => \axlen_cnt[2]_i_1_n_0\
    );
\axlen_cnt[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[2]\,
      I1 => \^axlen_cnt_reg[0]_0\(0),
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt_reg[2]_0\
    );
\axlen_cnt[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[4]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => E(0),
      O => \^axlen_cnt_reg[3]_0\
    );
\axlen_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => E(0),
      I1 => \axlen_cnt_reg_n_0_[4]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \^axlen_cnt_reg[0]_0\(0),
      I4 => \axlen_cnt_reg_n_0_[1]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[4]_i_1_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt_reg[3]_1\(0),
      Q => \^axlen_cnt_reg[0]_0\(0),
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt[1]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt[2]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt_reg[3]_1\(1),
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt[4]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[4]\,
      R => '0'
    );
\next_pending_r_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => E(0),
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[4]\,
      I4 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt_reg[2]_1\
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wrap_next_pending,
      Q => next_pending_r_reg_0,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_reg_0,
      Q => sel_first,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(0),
      Q => wrap_boundary_axaddr_r(0),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[2]_2\(10),
      Q => wrap_boundary_axaddr_r(10),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[2]_2\(11),
      Q => wrap_boundary_axaddr_r(11),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(1),
      Q => wrap_boundary_axaddr_r(1),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(2),
      Q => wrap_boundary_axaddr_r(2),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(3),
      Q => wrap_boundary_axaddr_r(3),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(4),
      Q => wrap_boundary_axaddr_r(4),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(5),
      Q => wrap_boundary_axaddr_r(5),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(6),
      Q => wrap_boundary_axaddr_r(6),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[2]_2\(7),
      Q => wrap_boundary_axaddr_r(7),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[2]_2\(8),
      Q => wrap_boundary_axaddr_r(8),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[2]_2\(9),
      Q => wrap_boundary_axaddr_r(9),
      R => '0'
    );
\wrap_cnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(0),
      Q => wrap_cnt_r(0),
      R => '0'
    );
\wrap_cnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(1),
      Q => wrap_cnt_r(1),
      R => '0'
    );
\wrap_cnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(2),
      Q => wrap_cnt_r(2),
      R => '0'
    );
\wrap_cnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(3),
      Q => wrap_cnt_r(3),
      R => '0'
    );
\wrap_second_len_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(0),
      Q => \wrap_second_len_r_reg[3]_0\(0),
      R => '0'
    );
\wrap_second_len_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(1),
      Q => \wrap_second_len_r_reg[3]_0\(1),
      R => '0'
    );
\wrap_second_len_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(2),
      Q => \wrap_second_len_r_reg[3]_0\(2),
      R => '0'
    );
\wrap_second_len_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(3),
      Q => \wrap_second_len_r_reg[3]_0\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd_3 is
  port (
    wrap_next_pending : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \axaddr_wrap_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[39]\ : out STD_LOGIC;
    \axlen_cnt_reg[4]_0\ : out STD_LOGIC;
    \axaddr_offset_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC;
    sel_first_reg_1 : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    incr_next_pending : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_push : in STD_LOGIC;
    \axlen_cnt_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    si_rs_arvalid : in STD_LOGIC;
    axaddr_offset : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_cnt_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axaddr_wrap_reg[11]_1\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd_3 : entity is "axi_protocol_converter_v2_1_20_b2s_wrap_cmd";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \axaddr_wrap[11]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3__0_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3__0_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3__0_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2__0_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2__0_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2__0_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2__0_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2__0_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2__0_n_3\ : STD_LOGIC;
  signal \axlen_cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \next_pending_r_i_3__0_n_0\ : STD_LOGIC;
  signal next_pending_r_reg_n_0 : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \^wrap_next_pending\ : STD_LOGIC;
  signal \NLW_axaddr_wrap_reg[11]_i_3__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axlen_cnt[3]_i_2__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \next_pending_r_i_3__0\ : label is "soft_lutpair12";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  wrap_next_pending <= \^wrap_next_pending\;
\axaddr_offset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axaddr_offset(0),
      Q => \axaddr_offset_r_reg[3]_0\(0),
      R => '0'
    );
\axaddr_offset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axaddr_offset(1),
      Q => \axaddr_offset_r_reg[3]_0\(1),
      R => '0'
    );
\axaddr_offset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axaddr_offset(2),
      Q => \axaddr_offset_r_reg[3]_0\(2),
      R => '0'
    );
\axaddr_offset_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axaddr_offset(3),
      Q => \axaddr_offset_r_reg[3]_0\(3),
      R => '0'
    );
\axaddr_wrap[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100004100000000"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[4]\,
      I1 => \wrap_cnt_r_reg_n_0_[1]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => \wrap_cnt_r_reg_n_0_[2]\,
      I5 => \axaddr_wrap[11]_i_6_n_0\,
      O => \axlen_cnt_reg[4]_0\
    );
\axaddr_wrap[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \wrap_cnt_r_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \wrap_cnt_r_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[0]\,
      O => \axaddr_wrap[11]_i_6_n_0\
    );
\axaddr_wrap[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \axlen_cnt_reg[3]_0\(6),
      I2 => \axlen_cnt_reg[3]_0\(5),
      O => \axaddr_wrap[3]_i_3_n_0\
    );
\axaddr_wrap[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \axlen_cnt_reg[3]_0\(5),
      I2 => \axlen_cnt_reg[3]_0\(6),
      O => \axaddr_wrap[3]_i_4_n_0\
    );
\axaddr_wrap[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \axlen_cnt_reg[3]_0\(6),
      I2 => \axlen_cnt_reg[3]_0\(5),
      O => \axaddr_wrap[3]_i_5_n_0\
    );
\axaddr_wrap[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \axlen_cnt_reg[3]_0\(5),
      I2 => \axlen_cnt_reg[3]_0\(6),
      O => \axaddr_wrap[3]_i_6_n_0\
    );
\axaddr_wrap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(0),
      Q => \^q\(0),
      R => '0'
    );
\axaddr_wrap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(10),
      Q => \^q\(10),
      R => '0'
    );
\axaddr_wrap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(11),
      Q => \^q\(11),
      R => '0'
    );
\axaddr_wrap_reg[11]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_wrap_reg[7]_i_2__0_n_0\,
      CO(3) => \NLW_axaddr_wrap_reg[11]_i_3__0_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_wrap_reg[11]_i_3__0_n_1\,
      CO(1) => \axaddr_wrap_reg[11]_i_3__0_n_2\,
      CO(0) => \axaddr_wrap_reg[11]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \axaddr_wrap_reg[11]_0\(3 downto 0),
      S(3 downto 0) => \^q\(11 downto 8)
    );
\axaddr_wrap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(1),
      Q => \^q\(1),
      R => '0'
    );
\axaddr_wrap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(2),
      Q => \^q\(2),
      R => '0'
    );
\axaddr_wrap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(3),
      Q => \^q\(3),
      R => '0'
    );
\axaddr_wrap_reg[3]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_wrap_reg[3]_i_2__0_n_0\,
      CO(2) => \axaddr_wrap_reg[3]_i_2__0_n_1\,
      CO(1) => \axaddr_wrap_reg[3]_i_2__0_n_2\,
      CO(0) => \axaddr_wrap_reg[3]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3) => \axaddr_wrap[3]_i_3_n_0\,
      S(2) => \axaddr_wrap[3]_i_4_n_0\,
      S(1) => \axaddr_wrap[3]_i_5_n_0\,
      S(0) => \axaddr_wrap[3]_i_6_n_0\
    );
\axaddr_wrap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(4),
      Q => \^q\(4),
      R => '0'
    );
\axaddr_wrap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(5),
      Q => \^q\(5),
      R => '0'
    );
\axaddr_wrap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(6),
      Q => \^q\(6),
      R => '0'
    );
\axaddr_wrap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(7),
      Q => \^q\(7),
      R => '0'
    );
\axaddr_wrap_reg[7]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_wrap_reg[3]_i_2__0_n_0\,
      CO(3) => \axaddr_wrap_reg[7]_i_2__0_n_0\,
      CO(2) => \axaddr_wrap_reg[7]_i_2__0_n_1\,
      CO(1) => \axaddr_wrap_reg[7]_i_2__0_n_2\,
      CO(0) => \axaddr_wrap_reg[7]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \axaddr_wrap_reg[7]_0\(3 downto 0),
      S(3 downto 0) => \^q\(7 downto 4)
    );
\axaddr_wrap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(8),
      Q => \^q\(8),
      R => '0'
    );
\axaddr_wrap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axaddr_wrap_reg[11]_1\(9),
      Q => \^q\(9),
      R => '0'
    );
\axlen_cnt[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_1\(0),
      I1 => si_rs_arvalid,
      I2 => \axlen_cnt_reg[3]_0\(8),
      I3 => \axlen_cnt_reg_n_0_[0]\,
      I4 => \axlen_cnt[3]_i_3__0_n_0\,
      O => \axlen_cnt[0]_i_1__2_n_0\
    );
\axlen_cnt[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg_n_0_[1]\,
      I2 => \axlen_cnt[3]_i_3__0_n_0\,
      I3 => E(0),
      I4 => \axlen_cnt_reg[3]_0\(9),
      O => \axlen_cnt[1]_i_1__1_n_0\
    );
\axlen_cnt[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE100E100E100"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[1]\,
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \axlen_cnt[3]_i_3__0_n_0\,
      I4 => E(0),
      I5 => \axlen_cnt_reg[3]_0\(10),
      O => \axlen_cnt[2]_i_1__1_n_0\
    );
\axlen_cnt[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF404040"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_1\(0),
      I1 => si_rs_arvalid,
      I2 => \axlen_cnt_reg[3]_0\(11),
      I3 => \axlen_cnt[3]_i_2__2_n_0\,
      I4 => \axlen_cnt[3]_i_3__0_n_0\,
      O => \axlen_cnt[3]_i_1__2_n_0\
    );
\axlen_cnt[3]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[2]\,
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[3]_i_2__2_n_0\
    );
\axlen_cnt[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[4]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => E(0),
      O => \axlen_cnt[3]_i_3__0_n_0\
    );
\axlen_cnt[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => E(0),
      I1 => \axlen_cnt_reg_n_0_[4]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \axlen_cnt_reg_n_0_[0]\,
      I4 => \axlen_cnt_reg_n_0_[1]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[4]_i_1__1_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt[0]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[0]\,
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt[1]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt[2]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt[3]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \axaddr_wrap_reg[0]_0\(0),
      D => \axlen_cnt[4]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[4]\,
      R => '0'
    );
\next_pending_r_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF888888B8B8B8B8"
    )
        port map (
      I0 => next_pending_r_reg_0,
      I1 => E(0),
      I2 => next_pending_r_reg_n_0,
      I3 => \next_pending_r_i_3__0_n_0\,
      I4 => \axlen_cnt[3]_i_3__0_n_0\,
      I5 => r_push,
      O => \^wrap_next_pending\
    );
\next_pending_r_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg_n_0_[4]\,
      O => \next_pending_r_i_3__0_n_0\
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^wrap_next_pending\,
      Q => next_pending_r_reg_n_0,
      R => '0'
    );
\s_axburst_eq1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^wrap_next_pending\,
      I1 => sel_first_i,
      I2 => \axlen_cnt_reg[3]_0\(7),
      I3 => incr_next_pending,
      O => \m_payload_i_reg[39]\
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_reg_1,
      Q => sel_first_reg_0,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(0),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(0),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(3),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(10),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(4),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(11),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(1),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(1),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(2),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(2),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(3),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(3),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(4),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(4),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(5),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(5),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \wrap_boundary_axaddr_r_reg[6]_0\(6),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(6),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(0),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(7),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(1),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(8),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \axlen_cnt_reg[3]_0\(2),
      Q => \wrap_boundary_axaddr_r_reg[11]_0\(9),
      R => '0'
    );
\wrap_cnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(0),
      Q => \wrap_cnt_r_reg_n_0_[0]\,
      R => '0'
    );
\wrap_cnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(1),
      Q => \wrap_cnt_r_reg_n_0_[1]\,
      R => '0'
    );
\wrap_cnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(2),
      Q => \wrap_cnt_r_reg_n_0_[2]\,
      R => '0'
    );
\wrap_cnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_cnt_r_reg[3]_0\(3),
      Q => \wrap_cnt_r_reg_n_0_[3]\,
      R => '0'
    );
\wrap_second_len_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \wrap_second_len_r_reg[3]_0\(0),
      R => '0'
    );
\wrap_second_len_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \wrap_second_len_r_reg[3]_0\(1),
      R => '0'
    );
\wrap_second_len_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \wrap_second_len_r_reg[3]_0\(2),
      R => '0'
    );
\wrap_second_len_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => \wrap_second_len_r_reg[3]_0\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    \aresetn_d_reg[1]_inv_0\ : out STD_LOGIC;
    \wrap_second_len_r_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[44]_0\ : out STD_LOGIC;
    \axaddr_offset_r_reg[1]\ : out STD_LOGIC;
    \m_payload_i_reg[47]_0\ : out STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    \m_payload_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[1]_0\ : out STD_LOGIC;
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 58 downto 0 );
    \m_payload_i_reg[47]_1\ : out STD_LOGIC;
    \m_payload_i_reg[46]_0\ : out STD_LOGIC;
    \m_payload_i_reg[47]_2\ : out STD_LOGIC;
    \m_payload_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[39]_0\ : out STD_LOGIC;
    \m_payload_i_reg[38]_0\ : out STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    s_ready_i0 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_valid_i0 : in STD_LOGIC;
    \aresetn_d_reg[1]_inv_1\ : in STD_LOGIC;
    \wrap_cnt_r_reg[0]\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \m_axi_araddr[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_araddr[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_araddr[11]_1\ : in STD_LOGIC;
    sel_first_2 : in STD_LOGIC;
    \m_axi_araddr[11]_2\ : in STD_LOGIC;
    \m_payload_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 58 downto 0 );
  signal \^aresetn_d_reg[1]_inv_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_5__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_6__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_7__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_8__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_7__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_3__0_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_3__0_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_3__0_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_2__0_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_2__0_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_2__0_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_2__0_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_2__0_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_2__0_n_3\ : STD_LOGIC;
  signal \axaddr_offset_r[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^axaddr_offset_r_reg[1]\ : STD_LOGIC;
  signal \^axaddr_offset_r_reg[2]\ : STD_LOGIC;
  signal \m_payload_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[38]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[39]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[45]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[46]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[47]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[49]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[50]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[51]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[53]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[54]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[55]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[56]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[57]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[58]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[59]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[60]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[61]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[62]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[63]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[64]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[38]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[39]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[44]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[47]_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \next_pending_r_i_5__0_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[64]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \wrap_cnt_r[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^wrap_second_len_r_reg[1]_0\ : STD_LOGIC;
  signal \^wrap_second_len_r_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_axaddr_incr_reg[11]_i_3__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_offset_r[1]_i_2__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axaddr_offset_r[2]_i_3__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axi_araddr[11]_INST_0_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axi_araddr[11]_INST_0_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_2__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[39]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[45]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[46]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[47]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[49]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[50]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[53]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[54]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[55]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[56]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[57]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[58]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[59]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[60]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[61]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[62]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[63]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[64]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[3]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[5]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \wrap_cnt_r[2]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \wrap_cnt_r[3]_i_1__0\ : label is "soft_lutpair21";
begin
  Q(58 downto 0) <= \^q\(58 downto 0);
  \aresetn_d_reg[1]_inv_0\ <= \^aresetn_d_reg[1]_inv_0\;
  \axaddr_offset_r_reg[1]\ <= \^axaddr_offset_r_reg[1]\;
  \axaddr_offset_r_reg[2]\ <= \^axaddr_offset_r_reg[2]\;
  \m_payload_i_reg[38]_0\ <= \^m_payload_i_reg[38]_0\;
  \m_payload_i_reg[39]_0\ <= \^m_payload_i_reg[39]_0\;
  \m_payload_i_reg[44]_0\ <= \^m_payload_i_reg[44]_0\;
  \m_payload_i_reg[47]_0\ <= \^m_payload_i_reg[47]_0\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  \wrap_second_len_r_reg[1]_0\ <= \^wrap_second_len_r_reg[1]_0\;
  \wrap_second_len_r_reg[3]\(2 downto 0) <= \^wrap_second_len_r_reg[3]\(2 downto 0);
\aresetn_d_reg[1]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[1]_inv_1\,
      Q => \^aresetn_d_reg[1]_inv_0\,
      R => '0'
    );
\axaddr_incr[11]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(11),
      O => \axaddr_incr[11]_i_5__0_n_0\
    );
\axaddr_incr[11]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      O => \axaddr_incr[11]_i_6__0_n_0\
    );
\axaddr_incr[11]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      O => \axaddr_incr[11]_i_7__0_n_0\
    );
\axaddr_incr[11]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      O => \axaddr_incr[11]_i_8__0_n_0\
    );
\axaddr_incr[3]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      O => \axaddr_incr[3]_i_4__0_n_0\
    );
\axaddr_incr[3]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(35),
      I2 => \^q\(2),
      O => \axaddr_incr[3]_i_5__0_n_0\
    );
\axaddr_incr[3]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(1),
      O => \axaddr_incr[3]_i_6__0_n_0\
    );
\axaddr_incr[3]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(35),
      I2 => \^q\(36),
      O => \axaddr_incr[3]_i_7__0_n_0\
    );
\axaddr_incr[7]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      O => \axaddr_incr[7]_i_4__0_n_0\
    );
\axaddr_incr[7]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      O => \axaddr_incr[7]_i_5__0_n_0\
    );
\axaddr_incr[7]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      O => \axaddr_incr[7]_i_6__0_n_0\
    );
\axaddr_incr[7]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      O => \axaddr_incr[7]_i_7__0_n_0\
    );
\axaddr_incr_reg[11]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[7]_i_2__0_n_0\,
      CO(3) => \NLW_axaddr_incr_reg[11]_i_3__0_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_incr_reg[11]_i_3__0_n_1\,
      CO(1) => \axaddr_incr_reg[11]_i_3__0_n_2\,
      CO(0) => \axaddr_incr_reg[11]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => O(3 downto 0),
      S(3) => \axaddr_incr[11]_i_5__0_n_0\,
      S(2) => \axaddr_incr[11]_i_6__0_n_0\,
      S(1) => \axaddr_incr[11]_i_7__0_n_0\,
      S(0) => \axaddr_incr[11]_i_8__0_n_0\
    );
\axaddr_incr_reg[3]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_incr_reg[3]_i_2__0_n_0\,
      CO(2) => \axaddr_incr_reg[3]_i_2__0_n_1\,
      CO(1) => \axaddr_incr_reg[3]_i_2__0_n_2\,
      CO(0) => \axaddr_incr_reg[3]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3) => \axaddr_incr[3]_i_4__0_n_0\,
      DI(2) => \axaddr_incr[3]_i_5__0_n_0\,
      DI(1) => \axaddr_incr[3]_i_6__0_n_0\,
      DI(0) => \axaddr_incr[3]_i_7__0_n_0\,
      O(3 downto 0) => \m_payload_i_reg[3]_0\(3 downto 0),
      S(3 downto 0) => \axaddr_incr_reg[3]\(3 downto 0)
    );
\axaddr_incr_reg[7]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[3]_i_2__0_n_0\,
      CO(3) => \axaddr_incr_reg[7]_i_2__0_n_0\,
      CO(2) => \axaddr_incr_reg[7]_i_2__0_n_1\,
      CO(1) => \axaddr_incr_reg[7]_i_2__0_n_2\,
      CO(0) => \axaddr_incr_reg[7]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \m_payload_i_reg[7]_0\(3 downto 0),
      S(3) => \axaddr_incr[7]_i_4__0_n_0\,
      S(2) => \axaddr_incr[7]_i_5__0_n_0\,
      S(1) => \axaddr_incr[7]_i_6__0_n_0\,
      S(0) => \axaddr_incr[7]_i_7__0_n_0\
    );
\axaddr_offset_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFF08000000"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I1 => \^q\(39),
      I2 => \axaddr_offset_r_reg[0]\(1),
      I3 => \axaddr_offset_r_reg[0]\(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => \axaddr_offset_r_reg[3]\(0),
      O => \^m_payload_i_reg[44]_0\
    );
\axaddr_offset_r[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(35),
      I3 => \^q\(3),
      I4 => \^q\(36),
      I5 => \^q\(1),
      O => \axaddr_offset_r[0]_i_2__0_n_0\
    );
\axaddr_offset_r[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AA00AAC0AAC0AA"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]\(1),
      I1 => \axaddr_offset_r[1]_i_2__0_n_0\,
      I2 => \^q\(40),
      I3 => \wrap_cnt_r_reg[0]\,
      I4 => \axaddr_offset_r[2]_i_2__0_n_0\,
      I5 => \^q\(35),
      O => \^axaddr_offset_r_reg[1]\
    );
\axaddr_offset_r[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(36),
      I2 => \^q\(1),
      O => \axaddr_offset_r[1]_i_2__0_n_0\
    );
\axaddr_offset_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AA00AAC0AAC0AA"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]\(2),
      I1 => \axaddr_offset_r[2]_i_2__0_n_0\,
      I2 => \^q\(41),
      I3 => \wrap_cnt_r_reg[0]\,
      I4 => \axaddr_offset_r[2]_i_3__0_n_0\,
      I5 => \^q\(35),
      O => \^axaddr_offset_r_reg[2]\
    );
\axaddr_offset_r[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(36),
      I2 => \^q\(2),
      O => \axaddr_offset_r[2]_i_2__0_n_0\
    );
\axaddr_offset_r[2]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(36),
      I2 => \^q\(3),
      O => \axaddr_offset_r[2]_i_3__0_n_0\
    );
\axaddr_offset_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFF08000000"
    )
        port map (
      I0 => \axaddr_offset_r[3]_i_2__0_n_0\,
      I1 => \^q\(42),
      I2 => \axaddr_offset_r_reg[0]\(1),
      I3 => \axaddr_offset_r_reg[0]\(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => \axaddr_offset_r_reg[3]\(3),
      O => \^m_payload_i_reg[47]_0\
    );
\axaddr_offset_r[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(35),
      I4 => \^q\(36),
      I5 => \^q\(6),
      O => \axaddr_offset_r[3]_i_2__0_n_0\
    );
\axlen_cnt[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(42),
      I1 => \^m_valid_i_reg_0\,
      I2 => \axaddr_offset_r_reg[0]\(0),
      I3 => \axaddr_offset_r_reg[0]\(1),
      O => \m_payload_i_reg[47]_1\
    );
\m_axi_araddr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^m_payload_i_reg[39]_0\,
      I1 => \m_axi_araddr[11]\(0),
      I2 => \^m_payload_i_reg[38]_0\,
      I3 => \m_axi_araddr[11]_0\(0),
      I4 => \^q\(11),
      I5 => \m_axi_araddr[11]_1\,
      O => m_axi_araddr(0)
    );
\m_axi_araddr[11]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(38),
      I1 => \m_axi_araddr[11]_2\,
      O => \^m_payload_i_reg[39]_0\
    );
\m_axi_araddr[11]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(37),
      I1 => sel_first_2,
      I2 => \^q\(38),
      O => \^m_payload_i_reg[38]_0\
    );
\m_payload_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__0_n_0\
    );
\m_payload_i[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__0_n_0\
    );
\m_payload_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__0_n_0\
    );
\m_payload_i[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__0_n_0\
    );
\m_payload_i[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__1_n_0\
    );
\m_payload_i[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__0_n_0\
    );
\m_payload_i[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__0_n_0\
    );
\m_payload_i[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__0_n_0\
    );
\m_payload_i[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_1__0_n_0\
    );
\m_payload_i[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__0_n_0\
    );
\m_payload_i[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__0_n_0\
    );
\m_payload_i[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__0_n_0\
    );
\m_payload_i[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__0_n_0\
    );
\m_payload_i[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__0_n_0\
    );
\m_payload_i[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__0_n_0\
    );
\m_payload_i[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => \m_payload_i[23]_i_1__0_n_0\
    );
\m_payload_i[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__0_n_0\
    );
\m_payload_i[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__0_n_0\
    );
\m_payload_i[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => \m_payload_i[26]_i_1__0_n_0\
    );
\m_payload_i[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => \m_payload_i[27]_i_1__0_n_0\
    );
\m_payload_i[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => \m_payload_i[28]_i_1__0_n_0\
    );
\m_payload_i[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => \m_payload_i[29]_i_1__0_n_0\
    );
\m_payload_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__0_n_0\
    );
\m_payload_i[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__0_n_0\
    );
\m_payload_i[31]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_2__0_n_0\
    );
\m_payload_i[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__0_n_0\
    );
\m_payload_i[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__0_n_0\
    );
\m_payload_i[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__0_n_0\
    );
\m_payload_i[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_1__0_n_0\
    );
\m_payload_i[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => \m_payload_i[36]_i_1__0_n_0\
    );
\m_payload_i[38]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => \m_payload_i[38]_i_1__0_n_0\
    );
\m_payload_i[39]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[39]\,
      O => \m_payload_i[39]_i_1__0_n_0\
    );
\m_payload_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__0_n_0\
    );
\m_payload_i[44]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[44]\,
      O => \m_payload_i[44]_i_1__0_n_0\
    );
\m_payload_i[45]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[45]\,
      O => \m_payload_i[45]_i_1__0_n_0\
    );
\m_payload_i[46]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[46]\,
      O => \m_payload_i[46]_i_1__1_n_0\
    );
\m_payload_i[47]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[47]\,
      O => \m_payload_i[47]_i_1__0_n_0\
    );
\m_payload_i[48]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[48]\,
      O => \m_payload_i[48]_i_1__0_n_0\
    );
\m_payload_i[49]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[49]\,
      O => \m_payload_i[49]_i_1__0_n_0\
    );
\m_payload_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__0_n_0\
    );
\m_payload_i[50]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[50]\,
      O => \m_payload_i[50]_i_1__0_n_0\
    );
\m_payload_i[51]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[51]\,
      O => \m_payload_i[51]_i_1__0_n_0\
    );
\m_payload_i[53]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[53]\,
      O => \m_payload_i[53]_i_1__0_n_0\
    );
\m_payload_i[54]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[54]\,
      O => \m_payload_i[54]_i_1__0_n_0\
    );
\m_payload_i[55]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[55]\,
      O => \m_payload_i[55]_i_1__0_n_0\
    );
\m_payload_i[56]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[56]\,
      O => \m_payload_i[56]_i_1__0_n_0\
    );
\m_payload_i[57]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[57]\,
      O => \m_payload_i[57]_i_1__0_n_0\
    );
\m_payload_i[58]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[58]\,
      O => \m_payload_i[58]_i_1__0_n_0\
    );
\m_payload_i[59]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[59]\,
      O => \m_payload_i[59]_i_1__0_n_0\
    );
\m_payload_i[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__0_n_0\
    );
\m_payload_i[60]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[60]\,
      O => \m_payload_i[60]_i_1__0_n_0\
    );
\m_payload_i[61]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[61]\,
      O => \m_payload_i[61]_i_1__0_n_0\
    );
\m_payload_i[62]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[62]\,
      O => \m_payload_i[62]_i_1__0_n_0\
    );
\m_payload_i[63]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[63]\,
      O => \m_payload_i[63]_i_1__0_n_0\
    );
\m_payload_i[64]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[64]\,
      O => \m_payload_i[64]_i_1__0_n_0\
    );
\m_payload_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__0_n_0\
    );
\m_payload_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__0_n_0\
    );
\m_payload_i[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__0_n_0\
    );
\m_payload_i[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[10]_i_1__0_n_0\,
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[11]_i_1__0_n_0\,
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[12]_i_1__0_n_0\,
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[13]_i_1__1_n_0\,
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[14]_i_1__0_n_0\,
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[15]_i_1__0_n_0\,
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[16]_i_1__0_n_0\,
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[17]_i_1__0_n_0\,
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[18]_i_1__0_n_0\,
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[19]_i_1__0_n_0\,
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[20]_i_1__0_n_0\,
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[21]_i_1__0_n_0\,
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[22]_i_1__0_n_0\,
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[23]_i_1__0_n_0\,
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[24]_i_1__0_n_0\,
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[25]_i_1__0_n_0\,
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[26]_i_1__0_n_0\,
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[27]_i_1__0_n_0\,
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[28]_i_1__0_n_0\,
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[29]_i_1__0_n_0\,
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[30]_i_1__0_n_0\,
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[31]_i_2__0_n_0\,
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[32]_i_1__0_n_0\,
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[33]_i_1__0_n_0\,
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[34]_i_1__0_n_0\,
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[35]_i_1__0_n_0\,
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[36]_i_1__0_n_0\,
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[38]_i_1__0_n_0\,
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[39]_i_1__0_n_0\,
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[44]_i_1__0_n_0\,
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[45]_i_1__0_n_0\,
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[46]_i_1__1_n_0\,
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[47]_i_1__0_n_0\,
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[48]_i_1__0_n_0\,
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[49]_i_1__0_n_0\,
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[50]_i_1__0_n_0\,
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[51]_i_1__0_n_0\,
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[53]_i_1__0_n_0\,
      Q => \^q\(47),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[54]_i_1__0_n_0\,
      Q => \^q\(48),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[55]_i_1__0_n_0\,
      Q => \^q\(49),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[56]_i_1__0_n_0\,
      Q => \^q\(50),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[57]_i_1__0_n_0\,
      Q => \^q\(51),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[58]_i_1__0_n_0\,
      Q => \^q\(52),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[59]_i_1__0_n_0\,
      Q => \^q\(53),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[60]_i_1__0_n_0\,
      Q => \^q\(54),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[61]_i_1__0_n_0\,
      Q => \^q\(55),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[62]_i_1__0_n_0\,
      Q => \^q\(56),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[63]_i_1__0_n_0\,
      Q => \^q\(57),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[64]_i_1__0_n_0\,
      Q => \^q\(58),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i_reg[0]_0\(0),
      D => \m_payload_i[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => '0'
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => \^aresetn_d_reg[1]_inv_0\
    );
\next_pending_r_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(41),
      I1 => \^q\(40),
      I2 => \^q\(39),
      I3 => \^q\(42),
      O => \m_payload_i_reg[46]_0\
    );
\next_pending_r_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(42),
      I1 => \^q\(43),
      I2 => \^q\(40),
      I3 => \^q\(41),
      I4 => \next_pending_r_i_5__0_n_0\,
      O => \m_payload_i_reg[47]_2\
    );
\next_pending_r_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(45),
      I1 => \^q\(44),
      I2 => \^q\(39),
      I3 => \^q\(46),
      O => \next_pending_r_i_5__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arprot(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arprot(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arprot(2),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arsize(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arsize(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arburst(0),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arburst(1),
      Q => \skid_buffer_reg_n_0_[39]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(0),
      Q => \skid_buffer_reg_n_0_[44]\,
      R => '0'
    );
\skid_buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(1),
      Q => \skid_buffer_reg_n_0_[45]\,
      R => '0'
    );
\skid_buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(2),
      Q => \skid_buffer_reg_n_0_[46]\,
      R => '0'
    );
\skid_buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(3),
      Q => \skid_buffer_reg_n_0_[47]\,
      R => '0'
    );
\skid_buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(4),
      Q => \skid_buffer_reg_n_0_[48]\,
      R => '0'
    );
\skid_buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(5),
      Q => \skid_buffer_reg_n_0_[49]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(6),
      Q => \skid_buffer_reg_n_0_[50]\,
      R => '0'
    );
\skid_buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arlen(7),
      Q => \skid_buffer_reg_n_0_[51]\,
      R => '0'
    );
\skid_buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(0),
      Q => \skid_buffer_reg_n_0_[53]\,
      R => '0'
    );
\skid_buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(1),
      Q => \skid_buffer_reg_n_0_[54]\,
      R => '0'
    );
\skid_buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(2),
      Q => \skid_buffer_reg_n_0_[55]\,
      R => '0'
    );
\skid_buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(3),
      Q => \skid_buffer_reg_n_0_[56]\,
      R => '0'
    );
\skid_buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(4),
      Q => \skid_buffer_reg_n_0_[57]\,
      R => '0'
    );
\skid_buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(5),
      Q => \skid_buffer_reg_n_0_[58]\,
      R => '0'
    );
\skid_buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(6),
      Q => \skid_buffer_reg_n_0_[59]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(7),
      Q => \skid_buffer_reg_n_0_[60]\,
      R => '0'
    );
\skid_buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(8),
      Q => \skid_buffer_reg_n_0_[61]\,
      R => '0'
    );
\skid_buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(9),
      Q => \skid_buffer_reg_n_0_[62]\,
      R => '0'
    );
\skid_buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(10),
      Q => \skid_buffer_reg_n_0_[63]\,
      R => '0'
    );
\skid_buffer_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_arid(11),
      Q => \skid_buffer_reg_n_0_[64]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_araddr(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
\wrap_boundary_axaddr_r[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(35),
      I2 => \^q\(39),
      I3 => \^q\(36),
      O => \m_payload_i_reg[6]_0\(0)
    );
\wrap_boundary_axaddr_r[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF470000"
    )
        port map (
      I0 => \^q\(39),
      I1 => \^q\(35),
      I2 => \^q\(40),
      I3 => \^q\(36),
      I4 => \^q\(1),
      O => \m_payload_i_reg[6]_0\(1)
    );
\wrap_boundary_axaddr_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(41),
      I2 => \^q\(35),
      I3 => \^q\(40),
      I4 => \^q\(36),
      I5 => \^q\(39),
      O => \m_payload_i_reg[6]_0\(2)
    );
\wrap_boundary_axaddr_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4747000000FF0000"
    )
        port map (
      I0 => \^q\(39),
      I1 => \^q\(35),
      I2 => \^q\(40),
      I3 => \wrap_boundary_axaddr_r[3]_i_2__0_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(36),
      O => \m_payload_i_reg[6]_0\(3)
    );
\wrap_boundary_axaddr_r[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(41),
      I1 => \^q\(35),
      I2 => \^q\(42),
      O => \wrap_boundary_axaddr_r[3]_i_2__0_n_0\
    );
\wrap_boundary_axaddr_r[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A0A2AA02AAA2A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(42),
      I2 => \^q\(35),
      I3 => \^q\(36),
      I4 => \^q\(41),
      I5 => \^q\(40),
      O => \m_payload_i_reg[6]_0\(4)
    );
\wrap_boundary_axaddr_r[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF0000"
    )
        port map (
      I0 => \^q\(41),
      I1 => \^q\(35),
      I2 => \^q\(42),
      I3 => \^q\(36),
      I4 => \^q\(5),
      O => \m_payload_i_reg[6]_0\(5)
    );
\wrap_boundary_axaddr_r[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(35),
      I2 => \^q\(36),
      I3 => \^q\(42),
      O => \m_payload_i_reg[6]_0\(6)
    );
\wrap_cnt_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFA0AFA0AFA1AE"
    )
        port map (
      I0 => \^m_payload_i_reg[44]_0\,
      I1 => \^axaddr_offset_r_reg[1]\,
      I2 => \wrap_cnt_r_reg[0]\,
      I3 => \wrap_second_len_r_reg[3]_0\(0),
      I4 => \^m_payload_i_reg[47]_0\,
      I5 => \^axaddr_offset_r_reg[2]\,
      O => \wrap_second_len_r_reg[1]\(0)
    );
\wrap_cnt_r[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wrap_cnt_r[3]_i_2__0_n_0\,
      I1 => \^wrap_second_len_r_reg[1]_0\,
      O => \wrap_second_len_r_reg[1]\(1)
    );
\wrap_cnt_r[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \wrap_cnt_r[3]_i_2__0_n_0\,
      I1 => \^wrap_second_len_r_reg[1]_0\,
      I2 => \^wrap_second_len_r_reg[3]\(1),
      O => \wrap_second_len_r_reg[1]\(2)
    );
\wrap_cnt_r[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[1]_0\,
      I1 => \wrap_cnt_r[3]_i_2__0_n_0\,
      I2 => \^wrap_second_len_r_reg[3]\(1),
      I3 => \^wrap_second_len_r_reg[3]\(2),
      O => \wrap_second_len_r_reg[1]\(3)
    );
\wrap_cnt_r[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFC0000AAA8"
    )
        port map (
      I0 => \wrap_cnt_r_reg[0]\,
      I1 => \^axaddr_offset_r_reg[1]\,
      I2 => \^axaddr_offset_r_reg[2]\,
      I3 => \^m_payload_i_reg[47]_0\,
      I4 => \^m_payload_i_reg[44]_0\,
      I5 => \wrap_second_len_r_reg[3]_0\(0),
      O => \wrap_cnt_r[3]_i_2__0_n_0\
    );
\wrap_second_len_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333330AAAAAAAA"
    )
        port map (
      I0 => \wrap_second_len_r_reg[3]_0\(0),
      I1 => \^m_payload_i_reg[44]_0\,
      I2 => \^m_payload_i_reg[47]_0\,
      I3 => \^axaddr_offset_r_reg[2]\,
      I4 => \^axaddr_offset_r_reg[1]\,
      I5 => \wrap_cnt_r_reg[0]\,
      O => \^wrap_second_len_r_reg[3]\(0)
    );
\wrap_second_len_r[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FCAAAAAAAA"
    )
        port map (
      I0 => \wrap_second_len_r_reg[3]_0\(1),
      I1 => \^m_payload_i_reg[47]_0\,
      I2 => \^axaddr_offset_r_reg[2]\,
      I3 => \^axaddr_offset_r_reg[1]\,
      I4 => \^m_payload_i_reg[44]_0\,
      I5 => \wrap_cnt_r_reg[0]\,
      O => \^wrap_second_len_r_reg[1]_0\
    );
\wrap_second_len_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F00CAAAAAAAA"
    )
        port map (
      I0 => \wrap_second_len_r_reg[3]_0\(2),
      I1 => \^m_payload_i_reg[47]_0\,
      I2 => \^axaddr_offset_r_reg[2]\,
      I3 => \^axaddr_offset_r_reg[1]\,
      I4 => \^m_payload_i_reg[44]_0\,
      I5 => \wrap_cnt_r_reg[0]\,
      O => \^wrap_second_len_r_reg[3]\(1)
    );
\wrap_second_len_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCAAAA0000AAAA"
    )
        port map (
      I0 => \wrap_second_len_r_reg[3]_0\(3),
      I1 => \^axaddr_offset_r_reg[1]\,
      I2 => \^m_payload_i_reg[44]_0\,
      I3 => \^axaddr_offset_r_reg[2]\,
      I4 => \wrap_cnt_r_reg[0]\,
      I5 => \^m_payload_i_reg[47]_0\,
      O => \^wrap_second_len_r_reg[3]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice_0 is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[44]_0\ : out STD_LOGIC;
    \axaddr_offset_r_reg[1]\ : out STD_LOGIC;
    \m_payload_i_reg[47]_0\ : out STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    axaddr_incr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \wrap_second_len_r_reg[1]\ : out STD_LOGIC;
    wrap_second_len : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_payload_i_reg[64]_0\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    \m_payload_i_reg[47]_1\ : out STD_LOGIC;
    \m_payload_i_reg[46]_0\ : out STD_LOGIC;
    \m_payload_i_reg[47]_2\ : out STD_LOGIC;
    \m_payload_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[39]_0\ : out STD_LOGIC;
    \m_payload_i_reg[38]_0\ : out STD_LOGIC;
    \aresetn_d_reg[0]_1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \wrap_cnt_r_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b_push : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \m_axi_awaddr[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_awaddr[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_awaddr[11]_1\ : in STD_LOGIC;
    sel_first_1 : in STD_LOGIC;
    sel_first : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice_0 : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice_0 is
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_7_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_8_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_7_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_7_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \axaddr_offset_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[2]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \^axaddr_offset_r_reg[1]\ : STD_LOGIC;
  signal \^axaddr_offset_r_reg[2]\ : STD_LOGIC;
  signal \^m_payload_i_reg[38]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[39]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[44]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[47]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[64]_0\ : STD_LOGIC_VECTOR ( 58 downto 0 );
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal next_pending_r_i_6_n_0 : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[64]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \wrap_cnt_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \^wrap_second_len\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^wrap_second_len_r_reg[1]\ : STD_LOGIC;
  signal \NLW_axaddr_incr_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_offset_r[2]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axaddr_offset_r[2]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axi_awaddr[11]_INST_0_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axi_awaddr[11]_INST_0_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_payload_i[39]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[45]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[46]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[47]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_payload_i[49]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_payload_i[50]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[53]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[54]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[55]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[56]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[57]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[58]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[59]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_payload_i[60]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[61]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[62]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[63]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[64]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[3]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wrap_cnt_r[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wrap_cnt_r[3]_i_1\ : label is "soft_lutpair54";
begin
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  \axaddr_offset_r_reg[1]\ <= \^axaddr_offset_r_reg[1]\;
  \axaddr_offset_r_reg[2]\ <= \^axaddr_offset_r_reg[2]\;
  \m_payload_i_reg[38]_0\ <= \^m_payload_i_reg[38]_0\;
  \m_payload_i_reg[39]_0\ <= \^m_payload_i_reg[39]_0\;
  \m_payload_i_reg[44]_0\ <= \^m_payload_i_reg[44]_0\;
  \m_payload_i_reg[47]_0\ <= \^m_payload_i_reg[47]_0\;
  \m_payload_i_reg[64]_0\(58 downto 0) <= \^m_payload_i_reg[64]_0\(58 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  wrap_second_len(2 downto 0) <= \^wrap_second_len\(2 downto 0);
  \wrap_second_len_r_reg[1]\ <= \^wrap_second_len_r_reg[1]\;
\aresetn_d[1]_inv_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => aresetn,
      O => \aresetn_d_reg[0]_1\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \aresetn_d_reg_n_0_[0]\,
      R => '0'
    );
\axaddr_incr[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(11),
      O => \axaddr_incr[11]_i_5_n_0\
    );
\axaddr_incr[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(10),
      O => \axaddr_incr[11]_i_6_n_0\
    );
\axaddr_incr[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(9),
      O => \axaddr_incr[11]_i_7_n_0\
    );
\axaddr_incr[11]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(8),
      O => \axaddr_incr[11]_i_8_n_0\
    );
\axaddr_incr[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(3),
      O => \axaddr_incr[3]_i_4_n_0\
    );
\axaddr_incr[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(36),
      I1 => \^m_payload_i_reg[64]_0\(35),
      I2 => \^m_payload_i_reg[64]_0\(2),
      O => \axaddr_incr[3]_i_5_n_0\
    );
\axaddr_incr[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(36),
      I1 => \^m_payload_i_reg[64]_0\(1),
      O => \axaddr_incr[3]_i_6_n_0\
    );
\axaddr_incr[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(0),
      I1 => \^m_payload_i_reg[64]_0\(35),
      I2 => \^m_payload_i_reg[64]_0\(36),
      O => \axaddr_incr[3]_i_7_n_0\
    );
\axaddr_incr[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(7),
      O => \axaddr_incr[7]_i_4_n_0\
    );
\axaddr_incr[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(6),
      O => \axaddr_incr[7]_i_5_n_0\
    );
\axaddr_incr[7]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(5),
      O => \axaddr_incr[7]_i_6_n_0\
    );
\axaddr_incr[7]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(4),
      O => \axaddr_incr[7]_i_7_n_0\
    );
\axaddr_incr_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[7]_i_2_n_0\,
      CO(3) => \NLW_axaddr_incr_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_incr_reg[11]_i_3_n_1\,
      CO(1) => \axaddr_incr_reg[11]_i_3_n_2\,
      CO(0) => \axaddr_incr_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => axaddr_incr(11 downto 8),
      S(3) => \axaddr_incr[11]_i_5_n_0\,
      S(2) => \axaddr_incr[11]_i_6_n_0\,
      S(1) => \axaddr_incr[11]_i_7_n_0\,
      S(0) => \axaddr_incr[11]_i_8_n_0\
    );
\axaddr_incr_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_incr_reg[3]_i_2_n_0\,
      CO(2) => \axaddr_incr_reg[3]_i_2_n_1\,
      CO(1) => \axaddr_incr_reg[3]_i_2_n_2\,
      CO(0) => \axaddr_incr_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \axaddr_incr[3]_i_4_n_0\,
      DI(2) => \axaddr_incr[3]_i_5_n_0\,
      DI(1) => \axaddr_incr[3]_i_6_n_0\,
      DI(0) => \axaddr_incr[3]_i_7_n_0\,
      O(3 downto 0) => axaddr_incr(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\axaddr_incr_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[3]_i_2_n_0\,
      CO(3) => \axaddr_incr_reg[7]_i_2_n_0\,
      CO(2) => \axaddr_incr_reg[7]_i_2_n_1\,
      CO(1) => \axaddr_incr_reg[7]_i_2_n_2\,
      CO(0) => \axaddr_incr_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => axaddr_incr(7 downto 4),
      S(3) => \axaddr_incr[7]_i_4_n_0\,
      S(2) => \axaddr_incr[7]_i_5_n_0\,
      S(1) => \axaddr_incr[7]_i_6_n_0\,
      S(0) => \axaddr_incr[7]_i_7_n_0\
    );
\axaddr_offset_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFF00080000"
    )
        port map (
      I0 => \axaddr_offset_r[0]_i_2_n_0\,
      I1 => \^m_payload_i_reg[64]_0\(39),
      I2 => \axaddr_offset_r_reg[0]\(1),
      I3 => \axaddr_offset_r_reg[0]\(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => \axaddr_offset_r_reg[3]\(0),
      O => \^m_payload_i_reg[44]_0\
    );
\axaddr_offset_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(0),
      I1 => \^m_payload_i_reg[64]_0\(2),
      I2 => \^m_payload_i_reg[64]_0\(35),
      I3 => \^m_payload_i_reg[64]_0\(3),
      I4 => \^m_payload_i_reg[64]_0\(36),
      I5 => \^m_payload_i_reg[64]_0\(1),
      O => \axaddr_offset_r[0]_i_2_n_0\
    );
\axaddr_offset_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AA00AAC0AAC0AA"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]\(1),
      I1 => \axaddr_offset_r[1]_i_2_n_0\,
      I2 => \^m_payload_i_reg[64]_0\(40),
      I3 => \wrap_cnt_r_reg[0]\,
      I4 => \axaddr_offset_r[2]_i_2_n_0\,
      I5 => \^m_payload_i_reg[64]_0\(35),
      O => \^axaddr_offset_r_reg[1]\
    );
\axaddr_offset_r[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(3),
      I1 => \^m_payload_i_reg[64]_0\(36),
      I2 => \^m_payload_i_reg[64]_0\(1),
      O => \axaddr_offset_r[1]_i_2_n_0\
    );
\axaddr_offset_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AA00AAC0AAC0AA"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]\(2),
      I1 => \axaddr_offset_r[2]_i_2_n_0\,
      I2 => \^m_payload_i_reg[64]_0\(41),
      I3 => \wrap_cnt_r_reg[0]\,
      I4 => \axaddr_offset_r[2]_i_3_n_0\,
      I5 => \^m_payload_i_reg[64]_0\(35),
      O => \^axaddr_offset_r_reg[2]\
    );
\axaddr_offset_r[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(4),
      I1 => \^m_payload_i_reg[64]_0\(36),
      I2 => \^m_payload_i_reg[64]_0\(2),
      O => \axaddr_offset_r[2]_i_2_n_0\
    );
\axaddr_offset_r[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(5),
      I1 => \^m_payload_i_reg[64]_0\(36),
      I2 => \^m_payload_i_reg[64]_0\(3),
      O => \axaddr_offset_r[2]_i_3_n_0\
    );
\axaddr_offset_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFF00080000"
    )
        port map (
      I0 => \axaddr_offset_r[3]_i_2_n_0\,
      I1 => \^m_payload_i_reg[64]_0\(42),
      I2 => \axaddr_offset_r_reg[0]\(1),
      I3 => \axaddr_offset_r_reg[0]\(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => \axaddr_offset_r_reg[3]\(3),
      O => \^m_payload_i_reg[47]_0\
    );
\axaddr_offset_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(3),
      I1 => \^m_payload_i_reg[64]_0\(5),
      I2 => \^m_payload_i_reg[64]_0\(4),
      I3 => \^m_payload_i_reg[64]_0\(35),
      I4 => \^m_payload_i_reg[64]_0\(36),
      I5 => \^m_payload_i_reg[64]_0\(6),
      O => \axaddr_offset_r[3]_i_2_n_0\
    );
\axlen_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(42),
      I1 => \^m_valid_i_reg_0\,
      I2 => \axaddr_offset_r_reg[0]\(0),
      I3 => \axaddr_offset_r_reg[0]\(1),
      O => \m_payload_i_reg[47]_1\
    );
\m_axi_awaddr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^m_payload_i_reg[39]_0\,
      I1 => \m_axi_awaddr[11]\(0),
      I2 => \^m_payload_i_reg[38]_0\,
      I3 => \m_axi_awaddr[11]_0\(0),
      I4 => \^m_payload_i_reg[64]_0\(11),
      I5 => \m_axi_awaddr[11]_1\,
      O => m_axi_awaddr(0)
    );
\m_axi_awaddr[11]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(38),
      I1 => sel_first,
      O => \^m_payload_i_reg[39]_0\
    );
\m_axi_awaddr[11]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(37),
      I1 => sel_first_1,
      I2 => \^m_payload_i_reg[64]_0\(38),
      O => \^m_payload_i_reg[38]_0\
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => skid_buffer(38)
    );
\m_payload_i[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[39]\,
      O => skid_buffer(39)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[44]\,
      O => skid_buffer(44)
    );
\m_payload_i[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[45]\,
      O => skid_buffer(45)
    );
\m_payload_i[46]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[46]\,
      O => skid_buffer(46)
    );
\m_payload_i[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[47]\,
      O => skid_buffer(47)
    );
\m_payload_i[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[48]\,
      O => skid_buffer(48)
    );
\m_payload_i[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[49]\,
      O => skid_buffer(49)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[50]\,
      O => skid_buffer(50)
    );
\m_payload_i[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[51]\,
      O => skid_buffer(51)
    );
\m_payload_i[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[53]\,
      O => skid_buffer(53)
    );
\m_payload_i[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[54]\,
      O => skid_buffer(54)
    );
\m_payload_i[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[55]\,
      O => skid_buffer(55)
    );
\m_payload_i[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[56]\,
      O => skid_buffer(56)
    );
\m_payload_i[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[57]\,
      O => skid_buffer(57)
    );
\m_payload_i[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[58]\,
      O => skid_buffer(58)
    );
\m_payload_i[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[59]\,
      O => skid_buffer(59)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[60]\,
      O => skid_buffer(60)
    );
\m_payload_i[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[61]\,
      O => skid_buffer(61)
    );
\m_payload_i[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[62]\,
      O => skid_buffer(62)
    );
\m_payload_i[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[63]\,
      O => skid_buffer(63)
    );
\m_payload_i[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[64]\,
      O => skid_buffer(64)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(0),
      Q => \^m_payload_i_reg[64]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(10),
      Q => \^m_payload_i_reg[64]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(11),
      Q => \^m_payload_i_reg[64]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(12),
      Q => \^m_payload_i_reg[64]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(13),
      Q => \^m_payload_i_reg[64]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(14),
      Q => \^m_payload_i_reg[64]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(15),
      Q => \^m_payload_i_reg[64]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(16),
      Q => \^m_payload_i_reg[64]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(17),
      Q => \^m_payload_i_reg[64]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(18),
      Q => \^m_payload_i_reg[64]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(19),
      Q => \^m_payload_i_reg[64]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(1),
      Q => \^m_payload_i_reg[64]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(20),
      Q => \^m_payload_i_reg[64]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(21),
      Q => \^m_payload_i_reg[64]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(22),
      Q => \^m_payload_i_reg[64]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(23),
      Q => \^m_payload_i_reg[64]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(24),
      Q => \^m_payload_i_reg[64]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(25),
      Q => \^m_payload_i_reg[64]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(26),
      Q => \^m_payload_i_reg[64]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(27),
      Q => \^m_payload_i_reg[64]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(28),
      Q => \^m_payload_i_reg[64]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(29),
      Q => \^m_payload_i_reg[64]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(2),
      Q => \^m_payload_i_reg[64]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(30),
      Q => \^m_payload_i_reg[64]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(31),
      Q => \^m_payload_i_reg[64]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(32),
      Q => \^m_payload_i_reg[64]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(33),
      Q => \^m_payload_i_reg[64]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(34),
      Q => \^m_payload_i_reg[64]_0\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(35),
      Q => \^m_payload_i_reg[64]_0\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(36),
      Q => \^m_payload_i_reg[64]_0\(36),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(38),
      Q => \^m_payload_i_reg[64]_0\(37),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(39),
      Q => \^m_payload_i_reg[64]_0\(38),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(3),
      Q => \^m_payload_i_reg[64]_0\(3),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(44),
      Q => \^m_payload_i_reg[64]_0\(39),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(45),
      Q => \^m_payload_i_reg[64]_0\(40),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(46),
      Q => \^m_payload_i_reg[64]_0\(41),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(47),
      Q => \^m_payload_i_reg[64]_0\(42),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(48),
      Q => \^m_payload_i_reg[64]_0\(43),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(49),
      Q => \^m_payload_i_reg[64]_0\(44),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(4),
      Q => \^m_payload_i_reg[64]_0\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(50),
      Q => \^m_payload_i_reg[64]_0\(45),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(51),
      Q => \^m_payload_i_reg[64]_0\(46),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(53),
      Q => \^m_payload_i_reg[64]_0\(47),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(54),
      Q => \^m_payload_i_reg[64]_0\(48),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(55),
      Q => \^m_payload_i_reg[64]_0\(49),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(56),
      Q => \^m_payload_i_reg[64]_0\(50),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(57),
      Q => \^m_payload_i_reg[64]_0\(51),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(58),
      Q => \^m_payload_i_reg[64]_0\(52),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(59),
      Q => \^m_payload_i_reg[64]_0\(53),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(5),
      Q => \^m_payload_i_reg[64]_0\(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(60),
      Q => \^m_payload_i_reg[64]_0\(54),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(61),
      Q => \^m_payload_i_reg[64]_0\(55),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(62),
      Q => \^m_payload_i_reg[64]_0\(56),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(63),
      Q => \^m_payload_i_reg[64]_0\(57),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(64),
      Q => \^m_payload_i_reg[64]_0\(58),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(6),
      Q => \^m_payload_i_reg[64]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(7),
      Q => \^m_payload_i_reg[64]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(8),
      Q => \^m_payload_i_reg[64]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(9),
      Q => \^m_payload_i_reg[64]_0\(9),
      R => '0'
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => b_push,
      I1 => \^m_valid_i_reg_0\,
      I2 => \^s_ready_i_reg_0\,
      I3 => s_axi_awvalid,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
next_pending_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(41),
      I1 => \^m_payload_i_reg[64]_0\(40),
      I2 => \^m_payload_i_reg[64]_0\(39),
      I3 => \^m_payload_i_reg[64]_0\(42),
      O => \m_payload_i_reg[46]_0\
    );
\next_pending_r_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(42),
      I1 => \^m_payload_i_reg[64]_0\(43),
      I2 => \^m_payload_i_reg[64]_0\(40),
      I3 => \^m_payload_i_reg[64]_0\(41),
      I4 => next_pending_r_i_6_n_0,
      O => \m_payload_i_reg[47]_2\
    );
next_pending_r_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(45),
      I1 => \^m_payload_i_reg[64]_0\(44),
      I2 => \^m_payload_i_reg[64]_0\(39),
      I3 => \^m_payload_i_reg[64]_0\(46),
      O => next_pending_r_i_6_n_0
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      O => \^aresetn_d_reg[0]_0\
    );
s_ready_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBB"
    )
        port map (
      I0 => b_push,
      I1 => \^m_valid_i_reg_0\,
      I2 => s_axi_awvalid,
      I3 => \^s_ready_i_reg_0\,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => \^aresetn_d_reg[0]_0\
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awprot(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awprot(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awprot(2),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awsize(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awsize(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awburst(0),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awburst(1),
      Q => \skid_buffer_reg_n_0_[39]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(0),
      Q => \skid_buffer_reg_n_0_[44]\,
      R => '0'
    );
\skid_buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(1),
      Q => \skid_buffer_reg_n_0_[45]\,
      R => '0'
    );
\skid_buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(2),
      Q => \skid_buffer_reg_n_0_[46]\,
      R => '0'
    );
\skid_buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(3),
      Q => \skid_buffer_reg_n_0_[47]\,
      R => '0'
    );
\skid_buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(4),
      Q => \skid_buffer_reg_n_0_[48]\,
      R => '0'
    );
\skid_buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(5),
      Q => \skid_buffer_reg_n_0_[49]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(6),
      Q => \skid_buffer_reg_n_0_[50]\,
      R => '0'
    );
\skid_buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awlen(7),
      Q => \skid_buffer_reg_n_0_[51]\,
      R => '0'
    );
\skid_buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(0),
      Q => \skid_buffer_reg_n_0_[53]\,
      R => '0'
    );
\skid_buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(1),
      Q => \skid_buffer_reg_n_0_[54]\,
      R => '0'
    );
\skid_buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(2),
      Q => \skid_buffer_reg_n_0_[55]\,
      R => '0'
    );
\skid_buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(3),
      Q => \skid_buffer_reg_n_0_[56]\,
      R => '0'
    );
\skid_buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(4),
      Q => \skid_buffer_reg_n_0_[57]\,
      R => '0'
    );
\skid_buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(5),
      Q => \skid_buffer_reg_n_0_[58]\,
      R => '0'
    );
\skid_buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(6),
      Q => \skid_buffer_reg_n_0_[59]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(7),
      Q => \skid_buffer_reg_n_0_[60]\,
      R => '0'
    );
\skid_buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(8),
      Q => \skid_buffer_reg_n_0_[61]\,
      R => '0'
    );
\skid_buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(9),
      Q => \skid_buffer_reg_n_0_[62]\,
      R => '0'
    );
\skid_buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(10),
      Q => \skid_buffer_reg_n_0_[63]\,
      R => '0'
    );
\skid_buffer_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awid(11),
      Q => \skid_buffer_reg_n_0_[64]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => s_axi_awaddr(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
\wrap_boundary_axaddr_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(0),
      I1 => \^m_payload_i_reg[64]_0\(35),
      I2 => \^m_payload_i_reg[64]_0\(39),
      I3 => \^m_payload_i_reg[64]_0\(36),
      O => \m_payload_i_reg[6]_0\(0)
    );
\wrap_boundary_axaddr_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF470000"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(39),
      I1 => \^m_payload_i_reg[64]_0\(35),
      I2 => \^m_payload_i_reg[64]_0\(40),
      I3 => \^m_payload_i_reg[64]_0\(36),
      I4 => \^m_payload_i_reg[64]_0\(1),
      O => \m_payload_i_reg[6]_0\(1)
    );
\wrap_boundary_axaddr_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(2),
      I1 => \^m_payload_i_reg[64]_0\(41),
      I2 => \^m_payload_i_reg[64]_0\(35),
      I3 => \^m_payload_i_reg[64]_0\(40),
      I4 => \^m_payload_i_reg[64]_0\(36),
      I5 => \^m_payload_i_reg[64]_0\(39),
      O => \m_payload_i_reg[6]_0\(2)
    );
\wrap_boundary_axaddr_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4747000000FF0000"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(39),
      I1 => \^m_payload_i_reg[64]_0\(35),
      I2 => \^m_payload_i_reg[64]_0\(40),
      I3 => \wrap_boundary_axaddr_r[3]_i_2_n_0\,
      I4 => \^m_payload_i_reg[64]_0\(3),
      I5 => \^m_payload_i_reg[64]_0\(36),
      O => \m_payload_i_reg[6]_0\(3)
    );
\wrap_boundary_axaddr_r[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(41),
      I1 => \^m_payload_i_reg[64]_0\(35),
      I2 => \^m_payload_i_reg[64]_0\(42),
      O => \wrap_boundary_axaddr_r[3]_i_2_n_0\
    );
\wrap_boundary_axaddr_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A0A2AA02AAA2A"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(4),
      I1 => \^m_payload_i_reg[64]_0\(42),
      I2 => \^m_payload_i_reg[64]_0\(35),
      I3 => \^m_payload_i_reg[64]_0\(36),
      I4 => \^m_payload_i_reg[64]_0\(41),
      I5 => \^m_payload_i_reg[64]_0\(40),
      O => \m_payload_i_reg[6]_0\(4)
    );
\wrap_boundary_axaddr_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF0000"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(41),
      I1 => \^m_payload_i_reg[64]_0\(35),
      I2 => \^m_payload_i_reg[64]_0\(42),
      I3 => \^m_payload_i_reg[64]_0\(36),
      I4 => \^m_payload_i_reg[64]_0\(5),
      O => \m_payload_i_reg[6]_0\(5)
    );
\wrap_boundary_axaddr_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \^m_payload_i_reg[64]_0\(6),
      I1 => \^m_payload_i_reg[64]_0\(35),
      I2 => \^m_payload_i_reg[64]_0\(36),
      I3 => \^m_payload_i_reg[64]_0\(42),
      O => \m_payload_i_reg[6]_0\(6)
    );
\wrap_cnt_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFA0AFA0AFA1AE"
    )
        port map (
      I0 => \^m_payload_i_reg[44]_0\,
      I1 => \^axaddr_offset_r_reg[1]\,
      I2 => \wrap_cnt_r_reg[0]\,
      I3 => Q(0),
      I4 => \^m_payload_i_reg[47]_0\,
      I5 => \^axaddr_offset_r_reg[2]\,
      O => D(0)
    );
\wrap_cnt_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wrap_cnt_r[3]_i_2_n_0\,
      I1 => \^wrap_second_len_r_reg[1]\,
      O => D(1)
    );
\wrap_cnt_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \wrap_cnt_r[3]_i_2_n_0\,
      I1 => \^wrap_second_len_r_reg[1]\,
      I2 => \^wrap_second_len\(1),
      O => D(2)
    );
\wrap_cnt_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[1]\,
      I1 => \wrap_cnt_r[3]_i_2_n_0\,
      I2 => \^wrap_second_len\(1),
      I3 => \^wrap_second_len\(2),
      O => D(3)
    );
\wrap_cnt_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFC0000AAA8"
    )
        port map (
      I0 => \wrap_cnt_r_reg[0]\,
      I1 => \^axaddr_offset_r_reg[1]\,
      I2 => \^axaddr_offset_r_reg[2]\,
      I3 => \^m_payload_i_reg[47]_0\,
      I4 => \^m_payload_i_reg[44]_0\,
      I5 => Q(0),
      O => \wrap_cnt_r[3]_i_2_n_0\
    );
\wrap_second_len_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333330AAAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^m_payload_i_reg[44]_0\,
      I2 => \^m_payload_i_reg[47]_0\,
      I3 => \^axaddr_offset_r_reg[2]\,
      I4 => \^axaddr_offset_r_reg[1]\,
      I5 => \wrap_cnt_r_reg[0]\,
      O => \^wrap_second_len\(0)
    );
\wrap_second_len_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FCAAAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => \^m_payload_i_reg[47]_0\,
      I2 => \^axaddr_offset_r_reg[2]\,
      I3 => \^axaddr_offset_r_reg[1]\,
      I4 => \^m_payload_i_reg[44]_0\,
      I5 => \wrap_cnt_r_reg[0]\,
      O => \^wrap_second_len_r_reg[1]\
    );
\wrap_second_len_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F00CAAAAAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => \^m_payload_i_reg[47]_0\,
      I2 => \^axaddr_offset_r_reg[2]\,
      I3 => \^axaddr_offset_r_reg[1]\,
      I4 => \^m_payload_i_reg[44]_0\,
      I5 => \wrap_cnt_r_reg[0]\,
      O => \^wrap_second_len\(1)
    );
\wrap_second_len_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCAAAA0000AAAA"
    )
        port map (
      I0 => Q(3),
      I1 => \^axaddr_offset_r_reg[1]\,
      I2 => \^m_payload_i_reg[44]_0\,
      I3 => \^axaddr_offset_r_reg[2]\,
      I4 => \wrap_cnt_r_reg[0]\,
      I5 => \^m_payload_i_reg[47]_0\,
      O => \^wrap_second_len\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \m_payload_i_reg[13]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    si_rs_bvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \skid_buffer_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ is
  signal \m_payload_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__1_n_0\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_payload_i[0]_i_1__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__1\ : label is "soft_lutpair88";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\m_payload_i[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[1]_0\(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__1_n_0\
    );
\m_payload_i[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__1_n_0\
    );
\m_payload_i[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__1_n_0\
    );
\m_payload_i[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__1_n_0\
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^m_valid_i_reg_0\,
      O => p_1_in
    );
\m_payload_i[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_2_n_0\
    );
\m_payload_i[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[1]_0\(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__1_n_0\
    );
\m_payload_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__1_n_0\
    );
\m_payload_i[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__1_n_0\
    );
\m_payload_i[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__1_n_0\
    );
\m_payload_i[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__1_n_0\
    );
\m_payload_i[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__1_n_0\
    );
\m_payload_i[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__1_n_0\
    );
\m_payload_i[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__1_n_0\
    );
\m_payload_i[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[0]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[10]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[11]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[12]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[13]_i_2_n_0\,
      Q => \m_payload_i_reg[13]_0\(13),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[1]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[2]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[3]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[4]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[5]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[6]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[7]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[8]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[9]_i_1__1_n_0\,
      Q => \m_payload_i_reg[13]_0\(9),
      R => '0'
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^m_valid_i_reg_0\,
      I2 => \^s_ready_i_reg_0\,
      I3 => si_rs_bvalid,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => si_rs_bvalid,
      I1 => \^s_ready_i_reg_0\,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_bready,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[1]_0\(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(8),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(9),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(10),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(11),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[1]_0\(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(0),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(1),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(2),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(3),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(4),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(5),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(6),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \out\(7),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \m_payload_i_reg[46]_0\ : out STD_LOGIC_VECTOR ( 46 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    si_rs_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \skid_buffer_reg[46]_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \skid_buffer_reg[33]_0\ : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ is
  signal \m_payload_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[26]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[27]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[28]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[29]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[37]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[38]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[39]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[40]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[41]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[42]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[43]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[45]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[46]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__2_n_0\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__2\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__2\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__2\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__2\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1__1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1__1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1__1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1__1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1__1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__2\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1__1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \m_payload_i[39]_i_1__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m_payload_i[40]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \m_payload_i[41]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m_payload_i[42]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m_payload_i[43]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_1__1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_payload_i[45]_i_1__1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_payload_i[46]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__2\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__2\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__2\ : label is "soft_lutpair111";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\m_payload_i[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__2_n_0\
    );
\m_payload_i[10]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__2_n_0\
    );
\m_payload_i[11]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__2_n_0\
    );
\m_payload_i[12]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__2_n_0\
    );
\m_payload_i[13]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__2_n_0\
    );
\m_payload_i[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__1_n_0\
    );
\m_payload_i[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__1_n_0\
    );
\m_payload_i[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__1_n_0\
    );
\m_payload_i[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_1__1_n_0\
    );
\m_payload_i[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__1_n_0\
    );
\m_payload_i[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__1_n_0\
    );
\m_payload_i[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__2_n_0\
    );
\m_payload_i[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__1_n_0\
    );
\m_payload_i[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__1_n_0\
    );
\m_payload_i[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__1_n_0\
    );
\m_payload_i[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => \m_payload_i[23]_i_1__1_n_0\
    );
\m_payload_i[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__1_n_0\
    );
\m_payload_i[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__1_n_0\
    );
\m_payload_i[26]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => \m_payload_i[26]_i_1__1_n_0\
    );
\m_payload_i[27]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => \m_payload_i[27]_i_1__1_n_0\
    );
\m_payload_i[28]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => \m_payload_i[28]_i_1__1_n_0\
    );
\m_payload_i[29]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => \m_payload_i[29]_i_1__1_n_0\
    );
\m_payload_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__2_n_0\
    );
\m_payload_i[30]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__1_n_0\
    );
\m_payload_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_1__0_n_0\
    );
\m_payload_i[32]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(32),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__1_n_0\
    );
\m_payload_i[33]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(33),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__1_n_0\
    );
\m_payload_i[34]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__1_n_0\
    );
\m_payload_i[35]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_1__1_n_0\
    );
\m_payload_i[36]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => \m_payload_i[36]_i_1__1_n_0\
    );
\m_payload_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => \m_payload_i[37]_i_1_n_0\
    );
\m_payload_i[38]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => \m_payload_i[38]_i_1__1_n_0\
    );
\m_payload_i[39]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[39]\,
      O => \m_payload_i[39]_i_1__1_n_0\
    );
\m_payload_i[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__2_n_0\
    );
\m_payload_i[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[40]\,
      O => \m_payload_i[40]_i_1_n_0\
    );
\m_payload_i[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[41]\,
      O => \m_payload_i[41]_i_1_n_0\
    );
\m_payload_i[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[42]\,
      O => \m_payload_i[42]_i_1_n_0\
    );
\m_payload_i[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[43]\,
      O => \m_payload_i[43]_i_1_n_0\
    );
\m_payload_i[44]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[44]\,
      O => \m_payload_i[44]_i_1__1_n_0\
    );
\m_payload_i[45]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[45]\,
      O => \m_payload_i[45]_i_1__1_n_0\
    );
\m_payload_i[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^m_valid_i_reg_0\,
      O => p_1_in
    );
\m_payload_i[46]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[46]_0\(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[46]\,
      O => \m_payload_i[46]_i_2_n_0\
    );
\m_payload_i[4]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__2_n_0\
    );
\m_payload_i[5]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__2_n_0\
    );
\m_payload_i[6]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__2_n_0\
    );
\m_payload_i[7]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__2_n_0\
    );
\m_payload_i[8]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__2_n_0\
    );
\m_payload_i[9]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[33]_0\(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__2_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[0]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[10]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[11]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[12]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[13]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[14]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[15]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[16]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[17]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[18]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[19]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[1]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[20]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[21]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[22]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[23]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[24]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[25]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[26]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[27]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[28]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[29]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[2]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[30]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[31]_i_1__0_n_0\,
      Q => \m_payload_i_reg[46]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[32]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[33]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[34]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[35]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[36]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[37]_i_1_n_0\,
      Q => \m_payload_i_reg[46]_0\(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[38]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(38),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[39]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(39),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[3]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[40]_i_1_n_0\,
      Q => \m_payload_i_reg[46]_0\(40),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[41]_i_1_n_0\,
      Q => \m_payload_i_reg[46]_0\(41),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[42]_i_1_n_0\,
      Q => \m_payload_i_reg[46]_0\(42),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[43]_i_1_n_0\,
      Q => \m_payload_i_reg[46]_0\(43),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[44]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(44),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[45]_i_1__1_n_0\,
      Q => \m_payload_i_reg[46]_0\(45),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[46]_i_2_n_0\,
      Q => \m_payload_i_reg[46]_0\(46),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[4]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[5]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[6]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[7]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[8]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[9]_i_1__2_n_0\,
      Q => \m_payload_i_reg[46]_0\(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^m_valid_i_reg_0\,
      I2 => \^s_ready_i_reg_0\,
      I3 => si_rs_rvalid,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
s_ready_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => si_rs_rvalid,
      I1 => \^s_ready_i_reg_0\,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_rready,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(32),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(33),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(1),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(2),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(3),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(4),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(5),
      Q => \skid_buffer_reg_n_0_[39]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(6),
      Q => \skid_buffer_reg_n_0_[40]\,
      R => '0'
    );
\skid_buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(7),
      Q => \skid_buffer_reg_n_0_[41]\,
      R => '0'
    );
\skid_buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(8),
      Q => \skid_buffer_reg_n_0_[42]\,
      R => '0'
    );
\skid_buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(9),
      Q => \skid_buffer_reg_n_0_[43]\,
      R => '0'
    );
\skid_buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(10),
      Q => \skid_buffer_reg_n_0_[44]\,
      R => '0'
    );
\skid_buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(11),
      Q => \skid_buffer_reg_n_0_[45]\,
      R => '0'
    );
\skid_buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[46]_0\(12),
      Q => \skid_buffer_reg_n_0_[46]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[33]_0\(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_b_channel is
  port (
    si_rs_bvalid : out STD_LOGIC;
    b_full : out STD_LOGIC;
    cnt_read : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \s_bresp_acc_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    areset_d1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    si_rs_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    b_push : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_b_channel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_b_channel is
  signal bid_fifo_0_n_5 : STD_LOGIC;
  signal \bresp_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal bresp_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bresp_empty : STD_LOGIC;
  signal bresp_push : STD_LOGIC;
  signal mhandshake : STD_LOGIC;
  signal mhandshake_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_bresp_acc0 : STD_LOGIC;
  signal \s_bresp_acc[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_bresp_acc[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_bresp_acc_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_bresp_acc_reg_n_0_[1]\ : STD_LOGIC;
  signal shandshake : STD_LOGIC;
  signal shandshake_r : STD_LOGIC;
  signal \^si_rs_bvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bresp_cnt[1]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \bresp_cnt[2]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \bresp_cnt[3]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \bresp_cnt[4]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \bresp_cnt[6]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \bresp_cnt[7]_i_2\ : label is "soft_lutpair126";
begin
  si_rs_bvalid <= \^si_rs_bvalid\;
bid_fifo_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo
     port map (
      Q(7 downto 0) => bresp_cnt_reg(7 downto 0),
      SR(0) => s_bresp_acc0,
      aclk => aclk,
      addr(1 downto 0) => cnt_read(1 downto 0),
      areset_d1 => areset_d1,
      b_full => b_full,
      b_push => b_push,
      bresp_empty => bresp_empty,
      bresp_push => bresp_push,
      \in\(19 downto 0) => \in\(19 downto 0),
      mhandshake_r => mhandshake_r,
      \out\(11 downto 0) => \out\(11 downto 0),
      shandshake_r => shandshake_r,
      shandshake_r_reg => bid_fifo_0_n_5,
      si_rs_bready => si_rs_bready,
      si_rs_bvalid => \^si_rs_bvalid\
    );
\bresp_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bresp_cnt_reg(0),
      O => p_0_in(0)
    );
\bresp_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bresp_cnt_reg(0),
      I1 => bresp_cnt_reg(1),
      O => p_0_in(1)
    );
\bresp_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bresp_cnt_reg(0),
      I1 => bresp_cnt_reg(1),
      I2 => bresp_cnt_reg(2),
      O => p_0_in(2)
    );
\bresp_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => bresp_cnt_reg(1),
      I1 => bresp_cnt_reg(0),
      I2 => bresp_cnt_reg(2),
      I3 => bresp_cnt_reg(3),
      O => p_0_in(3)
    );
\bresp_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => bresp_cnt_reg(2),
      I1 => bresp_cnt_reg(0),
      I2 => bresp_cnt_reg(1),
      I3 => bresp_cnt_reg(3),
      I4 => bresp_cnt_reg(4),
      O => p_0_in(4)
    );
\bresp_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => bresp_cnt_reg(3),
      I1 => bresp_cnt_reg(1),
      I2 => bresp_cnt_reg(0),
      I3 => bresp_cnt_reg(2),
      I4 => bresp_cnt_reg(4),
      I5 => bresp_cnt_reg(5),
      O => p_0_in(5)
    );
\bresp_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bresp_cnt[7]_i_5_n_0\,
      I1 => bresp_cnt_reg(6),
      O => p_0_in(6)
    );
\bresp_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \bresp_cnt[7]_i_5_n_0\,
      I1 => bresp_cnt_reg(6),
      I2 => bresp_cnt_reg(7),
      O => p_0_in(7)
    );
\bresp_cnt[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => bresp_cnt_reg(5),
      I1 => bresp_cnt_reg(3),
      I2 => bresp_cnt_reg(1),
      I3 => bresp_cnt_reg(0),
      I4 => bresp_cnt_reg(2),
      I5 => bresp_cnt_reg(4),
      O => \bresp_cnt[7]_i_5_n_0\
    );
\bresp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(0),
      Q => bresp_cnt_reg(0),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(1),
      Q => bresp_cnt_reg(1),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(2),
      Q => bresp_cnt_reg(2),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(3),
      Q => bresp_cnt_reg(3),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(4),
      Q => bresp_cnt_reg(4),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(5),
      Q => bresp_cnt_reg(5),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(6),
      Q => bresp_cnt_reg(6),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(7),
      Q => bresp_cnt_reg(7),
      R => s_bresp_acc0
    );
bresp_fifo_0: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized0\
     port map (
      aclk => aclk,
      areset_d1 => areset_d1,
      bresp_empty => bresp_empty,
      bresp_push => bresp_push,
      \in\(1) => \s_bresp_acc_reg_n_0_[1]\,
      \in\(0) => \s_bresp_acc_reg_n_0_[0]\,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      mhandshake => mhandshake,
      mhandshake_r => mhandshake_r,
      \s_bresp_acc_reg[1]\(1 downto 0) => \s_bresp_acc_reg[1]_0\(1 downto 0),
      shandshake_r => shandshake_r
    );
bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => bid_fifo_0_n_5,
      Q => \^si_rs_bvalid\,
      R => '0'
    );
mhandshake_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mhandshake,
      Q => mhandshake_r,
      R => areset_d1
    );
\s_bresp_acc[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EACECCCC"
    )
        port map (
      I0 => m_axi_bresp(0),
      I1 => \s_bresp_acc_reg_n_0_[0]\,
      I2 => \s_bresp_acc_reg_n_0_[1]\,
      I3 => m_axi_bresp(1),
      I4 => mhandshake,
      I5 => s_bresp_acc0,
      O => \s_bresp_acc[0]_i_1_n_0\
    );
\s_bresp_acc[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => \s_bresp_acc_reg_n_0_[1]\,
      I1 => m_axi_bresp(1),
      I2 => mhandshake,
      I3 => s_bresp_acc0,
      O => \s_bresp_acc[1]_i_1_n_0\
    );
\s_bresp_acc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_bresp_acc[0]_i_1_n_0\,
      Q => \s_bresp_acc_reg_n_0_[0]\,
      R => '0'
    );
\s_bresp_acc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_bresp_acc[1]_i_1_n_0\,
      Q => \s_bresp_acc_reg_n_0_[1]\,
      R => '0'
    );
shandshake_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^si_rs_bvalid\,
      I1 => si_rs_bready,
      O => shandshake
    );
shandshake_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => shandshake,
      Q => shandshake_r,
      R => areset_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator is
  port (
    incr_next_pending : out STD_LOGIC;
    next_pending_r_reg : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    sel_first : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[3]\ : out STD_LOGIC;
    next_pending : out STD_LOGIC;
    \axlen_cnt_reg[2]\ : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sel_first_reg_2 : out STD_LOGIC;
    \axlen_cnt_reg[2]_0\ : out STD_LOGIC;
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    wrap_next_pending : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    s_axburst_eq0_reg_0 : in STD_LOGIC;
    s_axburst_eq1_reg_0 : in STD_LOGIC;
    sel_first_reg_3 : in STD_LOGIC;
    sel_first_reg_4 : in STD_LOGIC;
    \next\ : in STD_LOGIC;
    \axlen_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 22 downto 0 );
    next_pending_r_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_awvalid : in STD_LOGIC;
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC;
    axaddr_incr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr_0_sp_1 : in STD_LOGIC;
    \m_axi_awaddr[0]_0\ : in STD_LOGIC;
    \axaddr_wrap_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axlen_cnt_reg[3]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \wrap_cnt_r_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator is
  signal axaddr_wrap : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal m_axi_awaddr_0_sn_1 : STD_LOGIC;
  signal s_axburst_eq0 : STD_LOGIC;
  signal s_axburst_eq1 : STD_LOGIC;
  signal \^sel_first\ : STD_LOGIC;
begin
  m_axi_awaddr_0_sn_1 <= m_axi_awaddr_0_sp_1;
  sel_first <= \^sel_first\;
incr_cmd_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd
     port map (
      E(0) => E(0),
      Q(10 downto 0) => axaddr_wrap(10 downto 0),
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      axaddr_incr(11 downto 0) => axaddr_incr(11 downto 0),
      \axaddr_incr_reg[11]_0\(0) => \axaddr_incr_reg[11]\(0),
      \axlen_cnt_reg[0]_0\(1 downto 0) => \axlen_cnt_reg[0]_0\(1 downto 0),
      \axlen_cnt_reg[0]_1\(0) => \axaddr_wrap_reg[0]\(0),
      \axlen_cnt_reg[3]_0\ => \axlen_cnt_reg[3]_0\,
      \axlen_cnt_reg[7]_0\(21 downto 11) => \axlen_cnt_reg[7]\(22 downto 12),
      \axlen_cnt_reg[7]_0\(10 downto 0) => \axlen_cnt_reg[7]\(10 downto 0),
      incr_next_pending => incr_next_pending,
      m_axi_awaddr(10 downto 0) => m_axi_awaddr(10 downto 0),
      \m_axi_awaddr[0]_0\ => \m_axi_awaddr[0]_0\,
      m_axi_awaddr_0_sp_1 => m_axi_awaddr_0_sn_1,
      \next\ => \next\,
      next_pending_r_reg_0 => next_pending_r_reg_0,
      sel_first => \^sel_first\,
      sel_first_reg_0 => sel_first_reg_1,
      sel_first_reg_1 => sel_first_reg_2,
      sel_first_reg_2 => sel_first_reg_3,
      si_rs_awvalid => si_rs_awvalid
    );
\memory_reg[3][0]_srl4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axburst_eq1,
      I1 => \axlen_cnt_reg[7]\(15),
      I2 => s_axburst_eq0,
      O => next_pending
    );
s_axburst_eq0_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axburst_eq0_reg_0,
      Q => s_axburst_eq0,
      R => '0'
    );
s_axburst_eq1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axburst_eq1_reg_0,
      Q => s_axburst_eq1,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i,
      Q => sel_first_reg_0,
      R => '0'
    );
wrap_cmd_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      Q(11) => Q(0),
      Q(10 downto 0) => axaddr_wrap(10 downto 0),
      aclk => aclk,
      \axaddr_offset_r_reg[3]_0\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      \axaddr_wrap_reg[0]_0\(0) => \axaddr_wrap_reg[0]\(0),
      \axlen_cnt_reg[0]_0\(0) => \axlen_cnt_reg[0]\(0),
      \axlen_cnt_reg[2]_0\ => \axlen_cnt_reg[2]\,
      \axlen_cnt_reg[2]_1\ => \axlen_cnt_reg[2]_0\,
      \axlen_cnt_reg[2]_2\(15 downto 14) => \axlen_cnt_reg[7]\(18 downto 17),
      \axlen_cnt_reg[2]_2\(13 downto 0) => \axlen_cnt_reg[7]\(13 downto 0),
      \axlen_cnt_reg[3]_0\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[3]_1\(1 downto 0) => \axlen_cnt_reg[3]_1\(1 downto 0),
      \next\ => \next\,
      next_pending_r_reg_0 => next_pending_r_reg,
      sel_first => \^sel_first\,
      sel_first_reg_0 => sel_first_reg_4,
      \wrap_boundary_axaddr_r_reg[6]_0\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]\(6 downto 0),
      \wrap_cnt_r_reg[3]_0\(3 downto 0) => \wrap_cnt_r_reg[3]\(3 downto 0),
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_second_len_r_reg[3]\(3 downto 0),
      \wrap_second_len_r_reg[3]_1\(3 downto 0) => \wrap_second_len_r_reg[3]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator_1 is
  port (
    sel_first_reg_0 : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    sel_first_reg_2 : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_wrap_reg[11]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_rlast : out STD_LOGIC;
    next_pending : out STD_LOGIC;
    \axlen_cnt_reg[4]\ : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sel_first_reg_3 : out STD_LOGIC;
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[11]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    sel_first_reg_4 : in STD_LOGIC;
    sel_first_reg_5 : in STD_LOGIC;
    \axlen_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    next_pending_r_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_push : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    \axlen_cnt_reg[3]\ : in STD_LOGIC;
    \axaddr_incr_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr_0_sp_1 : in STD_LOGIC;
    \m_axi_araddr[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_arvalid : in STD_LOGIC;
    \axaddr_wrap_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axaddr_offset : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axaddr_wrap_reg[11]_1\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \axaddr_incr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator_1 : entity is "axi_protocol_converter_v2_1_20_b2s_cmd_translator";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator_1 is
  signal incr_cmd_0_n_3 : STD_LOGIC;
  signal incr_next_pending : STD_LOGIC;
  signal m_axi_araddr_0_sn_1 : STD_LOGIC;
  signal s_axburst_eq0 : STD_LOGIC;
  signal s_axburst_eq1 : STD_LOGIC;
  signal \^sel_first_reg_2\ : STD_LOGIC;
  signal wrap_cmd_0_n_10 : STD_LOGIC;
  signal wrap_cmd_0_n_11 : STD_LOGIC;
  signal wrap_cmd_0_n_12 : STD_LOGIC;
  signal wrap_cmd_0_n_13 : STD_LOGIC;
  signal wrap_cmd_0_n_14 : STD_LOGIC;
  signal wrap_cmd_0_n_15 : STD_LOGIC;
  signal wrap_cmd_0_n_16 : STD_LOGIC;
  signal wrap_cmd_0_n_17 : STD_LOGIC;
  signal wrap_cmd_0_n_26 : STD_LOGIC;
  signal wrap_cmd_0_n_7 : STD_LOGIC;
  signal wrap_cmd_0_n_8 : STD_LOGIC;
  signal wrap_cmd_0_n_9 : STD_LOGIC;
  signal wrap_next_pending : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of r_rlast_r_i_1 : label is "soft_lutpair13";
begin
  m_axi_araddr_0_sn_1 <= m_axi_araddr_0_sp_1;
  sel_first_reg_2 <= \^sel_first_reg_2\;
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axburst_eq1,
      I1 => \axlen_cnt_reg[7]\(15),
      I2 => s_axburst_eq0,
      O => next_pending
    );
incr_cmd_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_incr_cmd_2
     port map (
      E(0) => E(0),
      Q(10) => wrap_cmd_0_n_7,
      Q(9) => wrap_cmd_0_n_8,
      Q(8) => wrap_cmd_0_n_9,
      Q(7) => wrap_cmd_0_n_10,
      Q(6) => wrap_cmd_0_n_11,
      Q(5) => wrap_cmd_0_n_12,
      Q(4) => wrap_cmd_0_n_13,
      Q(3) => wrap_cmd_0_n_14,
      Q(2) => wrap_cmd_0_n_15,
      Q(1) => wrap_cmd_0_n_16,
      Q(0) => wrap_cmd_0_n_17,
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      \axaddr_incr_reg[0]_0\(0) => \axaddr_incr_reg[0]\(0),
      \axaddr_incr_reg[11]_0\(0) => \axaddr_incr_reg[11]\(0),
      \axaddr_incr_reg[11]_1\(3 downto 0) => \axaddr_incr_reg[11]_0\(3 downto 0),
      \axaddr_incr_reg[3]_0\(3 downto 0) => \axaddr_incr_reg[3]\(3 downto 0),
      \axaddr_incr_reg[7]_0\(3 downto 0) => \axaddr_incr_reg[7]\(3 downto 0),
      \axlen_cnt_reg[0]_0\(0) => \axaddr_wrap_reg[0]\(0),
      \axlen_cnt_reg[3]_0\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[5]_0\(1 downto 0) => Q(1 downto 0),
      \axlen_cnt_reg[7]_0\(21 downto 18) => \axlen_cnt_reg[7]\(23 downto 20),
      \axlen_cnt_reg[7]_0\(17 downto 11) => \axlen_cnt_reg[7]\(18 downto 12),
      \axlen_cnt_reg[7]_0\(10 downto 0) => \axlen_cnt_reg[7]\(10 downto 0),
      incr_next_pending => incr_next_pending,
      m_axi_araddr(10 downto 0) => m_axi_araddr(10 downto 0),
      \m_axi_araddr[0]_0\ => \m_axi_araddr[0]_0\,
      \m_axi_araddr[0]_1\ => \^sel_first_reg_2\,
      m_axi_araddr_0_sp_1 => m_axi_araddr_0_sn_1,
      m_axi_arready => m_axi_arready,
      \m_payload_i_reg[39]\ => incr_cmd_0_n_3,
      next_pending_r_reg_0 => next_pending_r_reg_0,
      r_push => r_push,
      sel_first_i => sel_first_i,
      sel_first_reg_0 => sel_first_reg_1,
      sel_first_reg_1 => sel_first_reg_3,
      sel_first_reg_2 => sel_first_reg_4,
      si_rs_arvalid => si_rs_arvalid,
      wrap_next_pending => wrap_next_pending
    );
r_rlast_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => s_axburst_eq0,
      I1 => \axlen_cnt_reg[7]\(15),
      I2 => s_axburst_eq1,
      O => r_rlast
    );
s_axburst_eq0_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => incr_cmd_0_n_3,
      Q => s_axburst_eq0,
      R => '0'
    );
s_axburst_eq1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wrap_cmd_0_n_26,
      Q => s_axburst_eq1,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i,
      Q => sel_first_reg_0,
      R => '0'
    );
wrap_cmd_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wrap_cmd_3
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      O(3 downto 0) => O(3 downto 0),
      Q(11) => \axaddr_wrap_reg[11]_0\(0),
      Q(10) => wrap_cmd_0_n_7,
      Q(9) => wrap_cmd_0_n_8,
      Q(8) => wrap_cmd_0_n_9,
      Q(7) => wrap_cmd_0_n_10,
      Q(6) => wrap_cmd_0_n_11,
      Q(5) => wrap_cmd_0_n_12,
      Q(4) => wrap_cmd_0_n_13,
      Q(3) => wrap_cmd_0_n_14,
      Q(2) => wrap_cmd_0_n_15,
      Q(1) => wrap_cmd_0_n_16,
      Q(0) => wrap_cmd_0_n_17,
      aclk => aclk,
      axaddr_offset(3 downto 0) => axaddr_offset(3 downto 0),
      \axaddr_offset_r_reg[3]_0\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      \axaddr_wrap_reg[0]_0\(0) => \axaddr_wrap_reg[0]\(0),
      \axaddr_wrap_reg[11]_0\(3 downto 0) => \axaddr_wrap_reg[11]\(3 downto 0),
      \axaddr_wrap_reg[11]_1\(11 downto 0) => \axaddr_wrap_reg[11]_1\(11 downto 0),
      \axaddr_wrap_reg[7]_0\(3 downto 0) => \axaddr_wrap_reg[7]\(3 downto 0),
      \axlen_cnt_reg[3]_0\(11 downto 7) => \axlen_cnt_reg[7]\(19 downto 15),
      \axlen_cnt_reg[3]_0\(6 downto 0) => \axlen_cnt_reg[7]\(13 downto 7),
      \axlen_cnt_reg[3]_1\(0) => Q(1),
      \axlen_cnt_reg[4]_0\ => \axlen_cnt_reg[4]\,
      incr_next_pending => incr_next_pending,
      \m_payload_i_reg[39]\ => wrap_cmd_0_n_26,
      next_pending_r_reg_0 => next_pending_r_reg,
      r_push => r_push,
      sel_first_i => sel_first_i,
      sel_first_reg_0 => \^sel_first_reg_2\,
      sel_first_reg_1 => sel_first_reg_5,
      si_rs_arvalid => si_rs_arvalid,
      \wrap_boundary_axaddr_r_reg[11]_0\(11 downto 0) => \wrap_boundary_axaddr_r_reg[11]\(11 downto 0),
      \wrap_boundary_axaddr_r_reg[6]_0\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]\(6 downto 0),
      \wrap_cnt_r_reg[3]_0\(3 downto 0) => \wrap_cnt_r_reg[3]\(3 downto 0),
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_second_len_r_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_r_channel is
  port (
    r_full : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    si_rs_rvalid : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    r_push_r_reg_0 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    r_push : in STD_LOGIC;
    aclk : in STD_LOGIC;
    r_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    si_rs_rready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    areset_d1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_r_channel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_r_channel is
  signal a_full0 : STD_LOGIC;
  signal r_push_r : STD_LOGIC;
  signal rd_a_full : STD_LOGIC;
  signal \rd_en__1\ : STD_LOGIC;
  signal trans_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal transaction_fifo_0_n_1 : STD_LOGIC;
  signal wr_en0 : STD_LOGIC;
begin
\r_arid_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => trans_in(1),
      R => '0'
    );
\r_arid_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => trans_in(11),
      R => '0'
    );
\r_arid_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => trans_in(12),
      R => '0'
    );
\r_arid_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => trans_in(2),
      R => '0'
    );
\r_arid_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => trans_in(3),
      R => '0'
    );
\r_arid_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => trans_in(4),
      R => '0'
    );
\r_arid_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => trans_in(5),
      R => '0'
    );
\r_arid_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => trans_in(6),
      R => '0'
    );
\r_arid_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => trans_in(7),
      R => '0'
    );
\r_arid_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => trans_in(8),
      R => '0'
    );
\r_arid_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => trans_in(9),
      R => '0'
    );
\r_arid_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => trans_in(10),
      R => '0'
    );
r_push_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => r_push,
      Q => r_push_r,
      R => '0'
    );
r_rlast_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => r_rlast,
      Q => trans_in(0),
      R => '0'
    );
rd_data_fifo_0: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized1\
     port map (
      E(0) => transaction_fifo_0_n_1,
      a_full0 => a_full0,
      aclk => aclk,
      areset_d1 => areset_d1,
      \in\(33 downto 0) => \in\(33 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\(33 downto 0) => \out\(33 downto 0),
      rd_a_full => rd_a_full,
      \rd_en__1\ => \rd_en__1\,
      wr_en0 => wr_en0
    );
transaction_fifo_0: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_simple_fifo__parameterized2\
     port map (
      E(0) => transaction_fifo_0_n_1,
      a_full0 => a_full0,
      aclk => aclk,
      areset_d1 => areset_d1,
      \in\(12 downto 0) => trans_in(12 downto 0),
      r_full => r_full,
      r_push_r => r_push_r,
      r_push_r_reg(12 downto 0) => r_push_r_reg_0(12 downto 0),
      rd_a_full => rd_a_full,
      \rd_en__1\ => \rd_en__1\,
      si_rs_rready => si_rs_rready,
      si_rs_rvalid => si_rs_rvalid,
      wr_en0 => wr_en0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice is
  port (
    s_ready_i_reg : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    si_rs_awvalid : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    si_rs_bready : out STD_LOGIC;
    si_rs_arvalid : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    si_rs_rready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axaddr_offset : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axaddr_offset_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axaddr_incr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \m_payload_i_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrap_second_len : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[64]\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    \m_payload_i_reg[47]\ : out STD_LOGIC;
    \m_payload_i_reg[46]\ : out STD_LOGIC;
    \m_payload_i_reg[47]_0\ : out STD_LOGIC;
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[64]_0\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    \m_payload_i_reg[47]_1\ : out STD_LOGIC;
    \m_payload_i_reg[46]_0\ : out STD_LOGIC;
    \m_payload_i_reg[47]_2\ : out STD_LOGIC;
    \m_payload_i_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_payload_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[39]\ : out STD_LOGIC;
    \m_payload_i_reg[38]\ : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[39]_0\ : out STD_LOGIC;
    \m_payload_i_reg[38]_0\ : out STD_LOGIC;
    \m_payload_i_reg[13]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \m_payload_i_reg[46]_1\ : out STD_LOGIC_VECTOR ( 46 downto 0 );
    aclk : in STD_LOGIC;
    s_ready_i0 : in STD_LOGIC;
    m_valid_i0 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \wrap_cnt_r_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b_push : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \wrap_cnt_r_reg[0]_0\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_offset_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    si_rs_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    si_rs_bvalid : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \m_axi_awaddr[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_awaddr[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_awaddr[11]_1\ : in STD_LOGIC;
    sel_first_1 : in STD_LOGIC;
    sel_first : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \m_axi_araddr[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_araddr[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_araddr[11]_1\ : in STD_LOGIC;
    sel_first_2 : in STD_LOGIC;
    \m_axi_araddr[11]_2\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \skid_buffer_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \skid_buffer_reg[46]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \skid_buffer_reg[33]\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice is
  signal \ar.ar_pipe_n_2\ : STD_LOGIC;
  signal \aw.aw_pipe_n_1\ : STD_LOGIC;
  signal \aw.aw_pipe_n_99\ : STD_LOGIC;
begin
\ar.ar_pipe\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice
     port map (
      O(3 downto 0) => O(3 downto 0),
      Q(58 downto 0) => \m_payload_i_reg[64]_0\(58 downto 0),
      aclk => aclk,
      \aresetn_d_reg[1]_inv_0\ => \ar.ar_pipe_n_2\,
      \aresetn_d_reg[1]_inv_1\ => \aw.aw_pipe_n_99\,
      \axaddr_incr_reg[3]\(3 downto 0) => \axaddr_incr_reg[3]\(3 downto 0),
      \axaddr_offset_r_reg[0]\(1 downto 0) => \axaddr_offset_r_reg[0]_0\(1 downto 0),
      \axaddr_offset_r_reg[1]\ => axaddr_offset_0(1),
      \axaddr_offset_r_reg[2]\ => axaddr_offset_0(2),
      \axaddr_offset_r_reg[3]\(3 downto 0) => \axaddr_offset_r_reg[3]_0\(3 downto 0),
      m_axi_araddr(0) => m_axi_araddr(0),
      \m_axi_araddr[11]\(0) => \m_axi_araddr[11]\(0),
      \m_axi_araddr[11]_0\(0) => \m_axi_araddr[11]_0\(0),
      \m_axi_araddr[11]_1\ => \m_axi_araddr[11]_1\,
      \m_axi_araddr[11]_2\ => \m_axi_araddr[11]_2\,
      \m_payload_i_reg[0]_0\(0) => \m_payload_i_reg[0]\(0),
      \m_payload_i_reg[38]_0\ => \m_payload_i_reg[38]_0\,
      \m_payload_i_reg[39]_0\ => \m_payload_i_reg[39]_0\,
      \m_payload_i_reg[3]_0\(3 downto 0) => \m_payload_i_reg[3]\(3 downto 0),
      \m_payload_i_reg[44]_0\ => axaddr_offset_0(0),
      \m_payload_i_reg[46]_0\ => \m_payload_i_reg[46]_0\,
      \m_payload_i_reg[47]_0\ => axaddr_offset_0(3),
      \m_payload_i_reg[47]_1\ => \m_payload_i_reg[47]_1\,
      \m_payload_i_reg[47]_2\ => \m_payload_i_reg[47]_2\,
      \m_payload_i_reg[6]_0\(6 downto 0) => \m_payload_i_reg[6]_0\(6 downto 0),
      \m_payload_i_reg[7]_0\(3 downto 0) => \m_payload_i_reg[7]\(3 downto 0),
      m_valid_i0 => m_valid_i0,
      m_valid_i_reg_0 => si_rs_arvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_ready_i0 => s_ready_i0,
      s_ready_i_reg_0 => s_ready_i_reg_0,
      s_ready_i_reg_1 => \aw.aw_pipe_n_1\,
      sel_first_2 => sel_first_2,
      \wrap_cnt_r_reg[0]\ => \wrap_cnt_r_reg[0]_0\,
      \wrap_second_len_r_reg[1]\(3 downto 0) => \wrap_second_len_r_reg[1]\(3 downto 0),
      \wrap_second_len_r_reg[1]_0\ => \wrap_second_len_r_reg[3]\(1),
      \wrap_second_len_r_reg[3]\(2 downto 1) => \wrap_second_len_r_reg[3]\(3 downto 2),
      \wrap_second_len_r_reg[3]\(0) => \wrap_second_len_r_reg[3]\(0),
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_second_len_r_reg[3]_0\(3 downto 0)
    );
\aw.aw_pipe\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice_0
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]_0\ => \aw.aw_pipe_n_1\,
      \aresetn_d_reg[0]_1\ => \aw.aw_pipe_n_99\,
      axaddr_incr(11 downto 0) => axaddr_incr(11 downto 0),
      \axaddr_offset_r_reg[0]\(1 downto 0) => \axaddr_offset_r_reg[0]\(1 downto 0),
      \axaddr_offset_r_reg[1]\ => axaddr_offset(1),
      \axaddr_offset_r_reg[2]\ => axaddr_offset(2),
      \axaddr_offset_r_reg[3]\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      b_push => b_push,
      m_axi_awaddr(0) => m_axi_awaddr(0),
      \m_axi_awaddr[11]\(0) => \m_axi_awaddr[11]\(0),
      \m_axi_awaddr[11]_0\(0) => \m_axi_awaddr[11]_0\(0),
      \m_axi_awaddr[11]_1\ => \m_axi_awaddr[11]_1\,
      \m_payload_i_reg[38]_0\ => \m_payload_i_reg[38]\,
      \m_payload_i_reg[39]_0\ => \m_payload_i_reg[39]\,
      \m_payload_i_reg[44]_0\ => axaddr_offset(0),
      \m_payload_i_reg[46]_0\ => \m_payload_i_reg[46]\,
      \m_payload_i_reg[47]_0\ => axaddr_offset(3),
      \m_payload_i_reg[47]_1\ => \m_payload_i_reg[47]\,
      \m_payload_i_reg[47]_2\ => \m_payload_i_reg[47]_0\,
      \m_payload_i_reg[64]_0\(58 downto 0) => \m_payload_i_reg[64]\(58 downto 0),
      \m_payload_i_reg[6]_0\(6 downto 0) => \m_payload_i_reg[6]\(6 downto 0),
      m_valid_i_reg_0 => si_rs_awvalid,
      m_valid_i_reg_1 => \ar.ar_pipe_n_2\,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_ready_i_reg_0 => s_ready_i_reg,
      sel_first => sel_first,
      sel_first_1 => sel_first_1,
      \wrap_cnt_r_reg[0]\ => \wrap_cnt_r_reg[0]\,
      wrap_second_len(2 downto 1) => wrap_second_len(3 downto 2),
      wrap_second_len(0) => wrap_second_len(0),
      \wrap_second_len_r_reg[1]\ => wrap_second_len(1)
    );
\b.b_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\
     port map (
      aclk => aclk,
      \m_payload_i_reg[13]_0\(13 downto 0) => \m_payload_i_reg[13]\(13 downto 0),
      m_valid_i_reg_0 => m_valid_i_reg,
      m_valid_i_reg_1 => \ar.ar_pipe_n_2\,
      \out\(11 downto 0) => \out\(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_ready_i_reg_0 => si_rs_bready,
      s_ready_i_reg_1 => \aw.aw_pipe_n_1\,
      si_rs_bvalid => si_rs_bvalid,
      \skid_buffer_reg[1]_0\(1 downto 0) => \skid_buffer_reg[1]\(1 downto 0)
    );
\r.r_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\
     port map (
      aclk => aclk,
      \m_payload_i_reg[46]_0\(46 downto 0) => \m_payload_i_reg[46]_1\(46 downto 0),
      m_valid_i_reg_0 => m_valid_i_reg_0,
      m_valid_i_reg_1 => \ar.ar_pipe_n_2\,
      s_axi_rready => s_axi_rready,
      s_ready_i_reg_0 => si_rs_rready,
      s_ready_i_reg_1 => \aw.aw_pipe_n_1\,
      si_rs_rvalid => si_rs_rvalid,
      \skid_buffer_reg[33]_0\(33 downto 0) => \skid_buffer_reg[33]\(33 downto 0),
      \skid_buffer_reg[46]_0\(12 downto 0) => \skid_buffer_reg[46]\(12 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_ar_channel is
  port (
    sel_first : out STD_LOGIC;
    sel_first_reg : out STD_LOGIC;
    s_ready_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i0 : out STD_LOGIC;
    \axaddr_wrap_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    r_push : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    r_rlast : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sel_first_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_arid_r_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    si_rs_arvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC;
    \s_arid_r_reg[11]_1\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    next_pending_r_reg : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \axlen_cnt_reg[3]\ : in STD_LOGIC;
    r_full : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr_0_sp_1 : in STD_LOGIC;
    \m_axi_araddr[0]_0\ : in STD_LOGIC;
    axaddr_offset : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_ar_channel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_ar_channel is
  signal \^fsm_sequential_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ar_cmd_fsm_0_n_10 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_11 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_12 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_13 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_14 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_15 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_16 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_17 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_18 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_19 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_20 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_21 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_4 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_5 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_6 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_9 : STD_LOGIC;
  signal cmd_translator_0_n_0 : STD_LOGIC;
  signal cmd_translator_0_n_10 : STD_LOGIC;
  signal cmd_translator_0_n_11 : STD_LOGIC;
  signal cmd_translator_0_n_12 : STD_LOGIC;
  signal cmd_translator_0_n_13 : STD_LOGIC;
  signal cmd_translator_0_n_14 : STD_LOGIC;
  signal cmd_translator_0_n_19 : STD_LOGIC;
  signal cmd_translator_0_n_3 : STD_LOGIC;
  signal cmd_translator_0_n_4 : STD_LOGIC;
  signal cmd_translator_0_n_40 : STD_LOGIC;
  signal cmd_translator_0_n_41 : STD_LOGIC;
  signal cmd_translator_0_n_42 : STD_LOGIC;
  signal cmd_translator_0_n_43 : STD_LOGIC;
  signal cmd_translator_0_n_44 : STD_LOGIC;
  signal cmd_translator_0_n_45 : STD_LOGIC;
  signal cmd_translator_0_n_46 : STD_LOGIC;
  signal cmd_translator_0_n_47 : STD_LOGIC;
  signal cmd_translator_0_n_48 : STD_LOGIC;
  signal cmd_translator_0_n_49 : STD_LOGIC;
  signal cmd_translator_0_n_5 : STD_LOGIC;
  signal cmd_translator_0_n_50 : STD_LOGIC;
  signal cmd_translator_0_n_51 : STD_LOGIC;
  signal cmd_translator_0_n_6 : STD_LOGIC;
  signal cmd_translator_0_n_7 : STD_LOGIC;
  signal cmd_translator_0_n_8 : STD_LOGIC;
  signal cmd_translator_0_n_9 : STD_LOGIC;
  signal m_axi_araddr_0_sn_1 : STD_LOGIC;
  signal next_pending : STD_LOGIC;
  signal \^r_push\ : STD_LOGIC;
  signal \^sel_first\ : STD_LOGIC;
  signal sel_first_i : STD_LOGIC;
  signal \^sel_first_reg\ : STD_LOGIC;
begin
  \FSM_sequential_state_reg[1]\ <= \^fsm_sequential_state_reg[1]\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  m_axi_araddr_0_sn_1 <= m_axi_araddr_0_sp_1;
  r_push <= \^r_push\;
  sel_first <= \^sel_first\;
  sel_first_reg <= \^sel_first_reg\;
ar_cmd_fsm_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_rd_cmd_fsm
     port map (
      D(11) => ar_cmd_fsm_0_n_10,
      D(10) => ar_cmd_fsm_0_n_11,
      D(9) => ar_cmd_fsm_0_n_12,
      D(8) => ar_cmd_fsm_0_n_13,
      D(7) => ar_cmd_fsm_0_n_14,
      D(6) => ar_cmd_fsm_0_n_15,
      D(5) => ar_cmd_fsm_0_n_16,
      D(4) => ar_cmd_fsm_0_n_17,
      D(3) => ar_cmd_fsm_0_n_18,
      D(2) => ar_cmd_fsm_0_n_19,
      D(1) => ar_cmd_fsm_0_n_20,
      D(0) => ar_cmd_fsm_0_n_21,
      E(0) => ar_cmd_fsm_0_n_4,
      \FSM_sequential_state_reg[1]_0\(0) => \^fsm_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[1]_1\(0) => E(0),
      O(3) => cmd_translator_0_n_3,
      O(2) => cmd_translator_0_n_4,
      O(1) => cmd_translator_0_n_5,
      O(0) => cmd_translator_0_n_6,
      Q(1 downto 0) => \^q\(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_incr_reg[0]\ => \^sel_first\,
      \axaddr_wrap_reg[11]\(11 downto 0) => \s_arid_r_reg[11]_1\(11 downto 0),
      \axaddr_wrap_reg[11]_0\(11) => cmd_translator_0_n_40,
      \axaddr_wrap_reg[11]_0\(10) => cmd_translator_0_n_41,
      \axaddr_wrap_reg[11]_0\(9) => cmd_translator_0_n_42,
      \axaddr_wrap_reg[11]_0\(8) => cmd_translator_0_n_43,
      \axaddr_wrap_reg[11]_0\(7) => cmd_translator_0_n_44,
      \axaddr_wrap_reg[11]_0\(6) => cmd_translator_0_n_45,
      \axaddr_wrap_reg[11]_0\(5) => cmd_translator_0_n_46,
      \axaddr_wrap_reg[11]_0\(4) => cmd_translator_0_n_47,
      \axaddr_wrap_reg[11]_0\(3) => cmd_translator_0_n_48,
      \axaddr_wrap_reg[11]_0\(2) => cmd_translator_0_n_49,
      \axaddr_wrap_reg[11]_0\(1) => cmd_translator_0_n_50,
      \axaddr_wrap_reg[11]_0\(0) => cmd_translator_0_n_51,
      \axaddr_wrap_reg[11]_1\(3) => cmd_translator_0_n_11,
      \axaddr_wrap_reg[11]_1\(2) => cmd_translator_0_n_12,
      \axaddr_wrap_reg[11]_1\(1) => cmd_translator_0_n_13,
      \axaddr_wrap_reg[11]_1\(0) => cmd_translator_0_n_14,
      \axaddr_wrap_reg[11]_2\ => cmd_translator_0_n_19,
      \axaddr_wrap_reg[7]\(3) => cmd_translator_0_n_7,
      \axaddr_wrap_reg[7]\(2) => cmd_translator_0_n_8,
      \axaddr_wrap_reg[7]\(1) => cmd_translator_0_n_9,
      \axaddr_wrap_reg[7]\(0) => cmd_translator_0_n_10,
      m_axi_arready => m_axi_arready,
      m_axi_arready_0 => ar_cmd_fsm_0_n_5,
      m_axi_arready_1 => ar_cmd_fsm_0_n_6,
      m_axi_arready_2 => \^r_push\,
      m_axi_arvalid => m_axi_arvalid,
      m_valid_i0 => m_valid_i0,
      next_pending => next_pending,
      r_full => r_full,
      s_axi_arvalid => s_axi_arvalid,
      s_ready_i0 => s_ready_i0,
      s_ready_i_reg => s_ready_i_reg,
      sel_first_i => sel_first_i,
      sel_first_reg(0) => ar_cmd_fsm_0_n_9,
      sel_first_reg_0 => \^sel_first_reg\,
      sel_first_reg_1 => cmd_translator_0_n_0,
      si_rs_arvalid => si_rs_arvalid
    );
cmd_translator_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator_1
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => \^fsm_sequential_state_reg[1]\,
      O(3) => cmd_translator_0_n_3,
      O(2) => cmd_translator_0_n_4,
      O(1) => cmd_translator_0_n_5,
      O(0) => cmd_translator_0_n_6,
      Q(1 downto 0) => \^q\(1 downto 0),
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      \axaddr_incr_reg[0]\(0) => ar_cmd_fsm_0_n_9,
      \axaddr_incr_reg[11]\(0) => \axaddr_incr_reg[11]\(0),
      \axaddr_incr_reg[11]_0\(3 downto 0) => O(3 downto 0),
      \axaddr_incr_reg[3]\(3 downto 0) => \axaddr_incr_reg[3]\(3 downto 0),
      \axaddr_incr_reg[7]\(3 downto 0) => \axaddr_incr_reg[7]\(3 downto 0),
      axaddr_offset(3 downto 0) => axaddr_offset(3 downto 0),
      \axaddr_offset_r_reg[3]\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      \axaddr_wrap_reg[0]\(0) => ar_cmd_fsm_0_n_4,
      \axaddr_wrap_reg[11]\(3) => cmd_translator_0_n_11,
      \axaddr_wrap_reg[11]\(2) => cmd_translator_0_n_12,
      \axaddr_wrap_reg[11]\(1) => cmd_translator_0_n_13,
      \axaddr_wrap_reg[11]\(0) => cmd_translator_0_n_14,
      \axaddr_wrap_reg[11]_0\(0) => \axaddr_wrap_reg[11]\(0),
      \axaddr_wrap_reg[11]_1\(11) => ar_cmd_fsm_0_n_10,
      \axaddr_wrap_reg[11]_1\(10) => ar_cmd_fsm_0_n_11,
      \axaddr_wrap_reg[11]_1\(9) => ar_cmd_fsm_0_n_12,
      \axaddr_wrap_reg[11]_1\(8) => ar_cmd_fsm_0_n_13,
      \axaddr_wrap_reg[11]_1\(7) => ar_cmd_fsm_0_n_14,
      \axaddr_wrap_reg[11]_1\(6) => ar_cmd_fsm_0_n_15,
      \axaddr_wrap_reg[11]_1\(5) => ar_cmd_fsm_0_n_16,
      \axaddr_wrap_reg[11]_1\(4) => ar_cmd_fsm_0_n_17,
      \axaddr_wrap_reg[11]_1\(3) => ar_cmd_fsm_0_n_18,
      \axaddr_wrap_reg[11]_1\(2) => ar_cmd_fsm_0_n_19,
      \axaddr_wrap_reg[11]_1\(1) => ar_cmd_fsm_0_n_20,
      \axaddr_wrap_reg[11]_1\(0) => ar_cmd_fsm_0_n_21,
      \axaddr_wrap_reg[7]\(3) => cmd_translator_0_n_7,
      \axaddr_wrap_reg[7]\(2) => cmd_translator_0_n_8,
      \axaddr_wrap_reg[7]\(1) => cmd_translator_0_n_9,
      \axaddr_wrap_reg[7]\(0) => cmd_translator_0_n_10,
      \axlen_cnt_reg[3]\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[4]\ => cmd_translator_0_n_19,
      \axlen_cnt_reg[7]\(23 downto 0) => \s_arid_r_reg[11]_1\(23 downto 0),
      m_axi_araddr(10 downto 0) => m_axi_araddr(10 downto 0),
      \m_axi_araddr[0]_0\ => \m_axi_araddr[0]_0\,
      m_axi_araddr_0_sp_1 => m_axi_araddr_0_sn_1,
      m_axi_arready => m_axi_arready,
      next_pending => next_pending,
      next_pending_r_reg => next_pending_r_reg,
      next_pending_r_reg_0 => next_pending_r_reg_0,
      r_push => \^r_push\,
      r_rlast => r_rlast,
      sel_first_i => sel_first_i,
      sel_first_reg_0 => cmd_translator_0_n_0,
      sel_first_reg_1 => \^sel_first\,
      sel_first_reg_2 => \^sel_first_reg\,
      sel_first_reg_3 => sel_first_reg_0,
      sel_first_reg_4 => ar_cmd_fsm_0_n_6,
      sel_first_reg_5 => ar_cmd_fsm_0_n_5,
      si_rs_arvalid => si_rs_arvalid,
      \wrap_boundary_axaddr_r_reg[11]\(11) => cmd_translator_0_n_40,
      \wrap_boundary_axaddr_r_reg[11]\(10) => cmd_translator_0_n_41,
      \wrap_boundary_axaddr_r_reg[11]\(9) => cmd_translator_0_n_42,
      \wrap_boundary_axaddr_r_reg[11]\(8) => cmd_translator_0_n_43,
      \wrap_boundary_axaddr_r_reg[11]\(7) => cmd_translator_0_n_44,
      \wrap_boundary_axaddr_r_reg[11]\(6) => cmd_translator_0_n_45,
      \wrap_boundary_axaddr_r_reg[11]\(5) => cmd_translator_0_n_46,
      \wrap_boundary_axaddr_r_reg[11]\(4) => cmd_translator_0_n_47,
      \wrap_boundary_axaddr_r_reg[11]\(3) => cmd_translator_0_n_48,
      \wrap_boundary_axaddr_r_reg[11]\(2) => cmd_translator_0_n_49,
      \wrap_boundary_axaddr_r_reg[11]\(1) => cmd_translator_0_n_50,
      \wrap_boundary_axaddr_r_reg[11]\(0) => cmd_translator_0_n_51,
      \wrap_boundary_axaddr_r_reg[6]\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]\(6 downto 0),
      \wrap_cnt_r_reg[3]\(3 downto 0) => \wrap_cnt_r_reg[3]\(3 downto 0),
      \wrap_second_len_r_reg[3]\(3 downto 0) => \wrap_second_len_r_reg[3]\(3 downto 0)
    );
\s_arid_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(24),
      Q => \s_arid_r_reg[11]_0\(0),
      R => '0'
    );
\s_arid_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(34),
      Q => \s_arid_r_reg[11]_0\(10),
      R => '0'
    );
\s_arid_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(35),
      Q => \s_arid_r_reg[11]_0\(11),
      R => '0'
    );
\s_arid_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(25),
      Q => \s_arid_r_reg[11]_0\(1),
      R => '0'
    );
\s_arid_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(26),
      Q => \s_arid_r_reg[11]_0\(2),
      R => '0'
    );
\s_arid_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(27),
      Q => \s_arid_r_reg[11]_0\(3),
      R => '0'
    );
\s_arid_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(28),
      Q => \s_arid_r_reg[11]_0\(4),
      R => '0'
    );
\s_arid_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(29),
      Q => \s_arid_r_reg[11]_0\(5),
      R => '0'
    );
\s_arid_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(30),
      Q => \s_arid_r_reg[11]_0\(6),
      R => '0'
    );
\s_arid_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(31),
      Q => \s_arid_r_reg[11]_0\(7),
      R => '0'
    );
\s_arid_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(32),
      Q => \s_arid_r_reg[11]_0\(8),
      R => '0'
    );
\s_arid_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_arid_r_reg[11]_1\(33),
      Q => \s_arid_r_reg[11]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_aw_channel is
  port (
    sel_first_0 : out STD_LOGIC;
    sel_first : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_push : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sel_first_reg : out STD_LOGIC;
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \in\ : out STD_LOGIC_VECTOR ( 19 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    \s_awid_r_reg[11]_0\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    next_pending_r_reg : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    si_rs_awvalid : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \axlen_cnt_reg[3]\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    b_full : in STD_LOGIC;
    cnt_read : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axaddr_incr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr_0_sp_1 : in STD_LOGIC;
    \m_axi_awaddr[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_boundary_axaddr_r_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_aw_channel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_aw_channel is
  signal aw_cmd_fsm_0_n_0 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_10 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_11 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_12 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_3 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_6 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_9 : STD_LOGIC;
  signal cmd_translator_0_n_1 : STD_LOGIC;
  signal cmd_translator_0_n_10 : STD_LOGIC;
  signal cmd_translator_0_n_2 : STD_LOGIC;
  signal cmd_translator_0_n_23 : STD_LOGIC;
  signal cmd_translator_0_n_7 : STD_LOGIC;
  signal cmd_translator_0_n_8 : STD_LOGIC;
  signal incr_next_pending : STD_LOGIC;
  signal m_axi_awaddr_0_sn_1 : STD_LOGIC;
  signal \next\ : STD_LOGIC;
  signal next_pending : STD_LOGIC;
  signal \^sel_first\ : STD_LOGIC;
  signal \^sel_first_0\ : STD_LOGIC;
  signal sel_first_i : STD_LOGIC;
  signal \^state_reg[1]\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrap_next_pending : STD_LOGIC;
begin
  m_axi_awaddr_0_sn_1 <= m_axi_awaddr_0_sp_1;
  sel_first <= \^sel_first\;
  sel_first_0 <= \^sel_first_0\;
  \state_reg[1]\ <= \^state_reg[1]\;
  \state_reg[1]_0\(1 downto 0) <= \^state_reg[1]_0\(1 downto 0);
aw_cmd_fsm_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_wr_cmd_fsm
     port map (
      D(1) => aw_cmd_fsm_0_n_11,
      D(0) => aw_cmd_fsm_0_n_12,
      E(0) => \^state_reg[1]\,
      Q(1 downto 0) => \^state_reg[1]_0\(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \axlen_cnt_reg[0]\(0) => cmd_translator_0_n_7,
      \axlen_cnt_reg[0]_0\ => cmd_translator_0_n_8,
      \axlen_cnt_reg[3]\(2) => \s_awid_r_reg[11]_0\(19),
      \axlen_cnt_reg[3]\(1 downto 0) => \s_awid_r_reg[11]_0\(16 downto 15),
      \axlen_cnt_reg[3]_0\ => cmd_translator_0_n_10,
      b_full => b_full,
      b_push => b_push,
      cnt_read(1 downto 0) => cnt_read(1 downto 0),
      incr_next_pending => incr_next_pending,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \m_payload_i_reg[39]\ => aw_cmd_fsm_0_n_0,
      \m_payload_i_reg[39]_0\ => aw_cmd_fsm_0_n_3,
      m_valid_i_reg(0) => aw_cmd_fsm_0_n_6,
      m_valid_i_reg_0(0) => E(0),
      \next\ => \next\,
      next_pending => next_pending,
      next_pending_r_reg => next_pending_r_reg,
      next_pending_r_reg_0 => cmd_translator_0_n_1,
      next_pending_r_reg_1 => cmd_translator_0_n_23,
      sel_first => \^sel_first\,
      sel_first_i => sel_first_i,
      sel_first_reg => aw_cmd_fsm_0_n_9,
      sel_first_reg_0 => aw_cmd_fsm_0_n_10,
      sel_first_reg_1 => \^sel_first_0\,
      sel_first_reg_2 => cmd_translator_0_n_2,
      si_rs_awvalid => si_rs_awvalid,
      wrap_next_pending => wrap_next_pending
    );
cmd_translator_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_cmd_translator
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => \^state_reg[1]\,
      Q(0) => Q(0),
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      axaddr_incr(11 downto 0) => axaddr_incr(11 downto 0),
      \axaddr_incr_reg[11]\(0) => \axaddr_incr_reg[11]\(0),
      \axaddr_offset_r_reg[3]\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      \axaddr_wrap_reg[0]\(0) => aw_cmd_fsm_0_n_6,
      \axlen_cnt_reg[0]\(0) => cmd_translator_0_n_7,
      \axlen_cnt_reg[0]_0\(1 downto 0) => \^state_reg[1]_0\(1 downto 0),
      \axlen_cnt_reg[2]\ => cmd_translator_0_n_10,
      \axlen_cnt_reg[2]_0\ => cmd_translator_0_n_23,
      \axlen_cnt_reg[3]\ => cmd_translator_0_n_8,
      \axlen_cnt_reg[3]_0\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[3]_1\(1) => aw_cmd_fsm_0_n_11,
      \axlen_cnt_reg[3]_1\(0) => aw_cmd_fsm_0_n_12,
      \axlen_cnt_reg[7]\(22 downto 19) => \s_awid_r_reg[11]_0\(23 downto 20),
      \axlen_cnt_reg[7]\(18 downto 0) => \s_awid_r_reg[11]_0\(18 downto 0),
      incr_next_pending => incr_next_pending,
      m_axi_awaddr(10 downto 0) => m_axi_awaddr(10 downto 0),
      \m_axi_awaddr[0]_0\ => \m_axi_awaddr[0]_0\,
      m_axi_awaddr_0_sp_1 => m_axi_awaddr_0_sn_1,
      \next\ => \next\,
      next_pending => next_pending,
      next_pending_r_reg => cmd_translator_0_n_1,
      next_pending_r_reg_0 => next_pending_r_reg_0,
      s_axburst_eq0_reg_0 => aw_cmd_fsm_0_n_0,
      s_axburst_eq1_reg_0 => aw_cmd_fsm_0_n_3,
      sel_first => \^sel_first\,
      sel_first_i => sel_first_i,
      sel_first_reg_0 => cmd_translator_0_n_2,
      sel_first_reg_1 => \^sel_first_0\,
      sel_first_reg_2 => sel_first_reg,
      sel_first_reg_3 => aw_cmd_fsm_0_n_10,
      sel_first_reg_4 => aw_cmd_fsm_0_n_9,
      si_rs_awvalid => si_rs_awvalid,
      \wrap_boundary_axaddr_r_reg[6]\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]\(6 downto 0),
      \wrap_cnt_r_reg[3]\(3 downto 0) => \wrap_cnt_r_reg[3]\(3 downto 0),
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]\(3 downto 0) => \wrap_second_len_r_reg[3]\(3 downto 0),
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_second_len_r_reg[3]_0\(3 downto 0)
    );
\s_awid_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(24),
      Q => \in\(8),
      R => '0'
    );
\s_awid_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(34),
      Q => \in\(18),
      R => '0'
    );
\s_awid_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(35),
      Q => \in\(19),
      R => '0'
    );
\s_awid_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(25),
      Q => \in\(9),
      R => '0'
    );
\s_awid_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(26),
      Q => \in\(10),
      R => '0'
    );
\s_awid_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(27),
      Q => \in\(11),
      R => '0'
    );
\s_awid_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(28),
      Q => \in\(12),
      R => '0'
    );
\s_awid_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(29),
      Q => \in\(13),
      R => '0'
    );
\s_awid_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(30),
      Q => \in\(14),
      R => '0'
    );
\s_awid_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(31),
      Q => \in\(15),
      R => '0'
    );
\s_awid_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(32),
      Q => \in\(16),
      R => '0'
    );
\s_awid_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(33),
      Q => \in\(17),
      R => '0'
    );
\s_awlen_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(16),
      Q => \in\(0),
      R => '0'
    );
\s_awlen_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(17),
      Q => \in\(1),
      R => '0'
    );
\s_awlen_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(18),
      Q => \in\(2),
      R => '0'
    );
\s_awlen_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(19),
      Q => \in\(3),
      R => '0'
    );
\s_awlen_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(20),
      Q => \in\(4),
      R => '0'
    );
\s_awlen_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(21),
      Q => \in\(5),
      R => '0'
    );
\s_awlen_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(22),
      Q => \in\(6),
      R => '0'
    );
\s_awlen_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_awid_r_reg[11]_0\(23),
      Q => \in\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \m_payload_i_reg[34]\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    \m_payload_i_reg[13]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    \m_payload_i_reg[46]\ : out STD_LOGIC_VECTOR ( 46 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s is
  signal \RD.ar_channel_0_n_1\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_23\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_45\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_46\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_47\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_48\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_6\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_7\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_8\ : STD_LOGIC;
  signal SI_REG_n_111 : STD_LOGIC;
  signal SI_REG_n_112 : STD_LOGIC;
  signal SI_REG_n_113 : STD_LOGIC;
  signal SI_REG_n_139 : STD_LOGIC;
  signal SI_REG_n_140 : STD_LOGIC;
  signal SI_REG_n_141 : STD_LOGIC;
  signal SI_REG_n_16 : STD_LOGIC;
  signal SI_REG_n_17 : STD_LOGIC;
  signal SI_REG_n_177 : STD_LOGIC;
  signal SI_REG_n_178 : STD_LOGIC;
  signal SI_REG_n_179 : STD_LOGIC;
  signal SI_REG_n_18 : STD_LOGIC;
  signal SI_REG_n_180 : STD_LOGIC;
  signal SI_REG_n_181 : STD_LOGIC;
  signal SI_REG_n_182 : STD_LOGIC;
  signal SI_REG_n_183 : STD_LOGIC;
  signal SI_REG_n_184 : STD_LOGIC;
  signal SI_REG_n_185 : STD_LOGIC;
  signal SI_REG_n_186 : STD_LOGIC;
  signal SI_REG_n_187 : STD_LOGIC;
  signal SI_REG_n_188 : STD_LOGIC;
  signal SI_REG_n_189 : STD_LOGIC;
  signal SI_REG_n_19 : STD_LOGIC;
  signal SI_REG_n_190 : STD_LOGIC;
  signal SI_REG_n_191 : STD_LOGIC;
  signal SI_REG_n_192 : STD_LOGIC;
  signal SI_REG_n_193 : STD_LOGIC;
  signal SI_REG_n_195 : STD_LOGIC;
  signal SI_REG_n_196 : STD_LOGIC;
  signal SI_REG_n_198 : STD_LOGIC;
  signal SI_REG_n_199 : STD_LOGIC;
  signal SI_REG_n_36 : STD_LOGIC;
  signal SI_REG_n_37 : STD_LOGIC;
  signal SI_REG_n_38 : STD_LOGIC;
  signal SI_REG_n_39 : STD_LOGIC;
  signal SI_REG_n_40 : STD_LOGIC;
  signal SI_REG_n_41 : STD_LOGIC;
  signal SI_REG_n_42 : STD_LOGIC;
  signal SI_REG_n_43 : STD_LOGIC;
  signal SI_REG_n_44 : STD_LOGIC;
  signal SI_REG_n_45 : STD_LOGIC;
  signal SI_REG_n_46 : STD_LOGIC;
  signal SI_REG_n_47 : STD_LOGIC;
  signal SI_REG_n_73 : STD_LOGIC;
  signal \WR.aw_channel_0_n_21\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_3\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_4\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_50\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_51\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_52\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_53\ : STD_LOGIC;
  signal \ar.ar_pipe/m_valid_i0\ : STD_LOGIC;
  signal \ar.ar_pipe/p_1_in\ : STD_LOGIC;
  signal \ar.ar_pipe/s_ready_i0\ : STD_LOGIC;
  signal \ar_cmd_fsm_0/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal areset_d1 : STD_LOGIC;
  signal areset_d1_i_1_n_0 : STD_LOGIC;
  signal \aw.aw_pipe/p_1_in\ : STD_LOGIC;
  signal \aw_cmd_fsm_0/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axaddr_incr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axaddr_wrap : STD_LOGIC_VECTOR ( 11 to 11 );
  signal axlen : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal axsize : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal b_awid : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal b_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b_full : STD_LOGIC;
  signal b_push : STD_LOGIC;
  signal \bid_fifo_0/cnt_read\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cmd_translator_0/incr_cmd_0/sel_first\ : STD_LOGIC;
  signal \cmd_translator_0/incr_cmd_0/sel_first_4\ : STD_LOGIC;
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/wrap_second_len\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/wrap_second_len_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/wrap_second_len_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/wrap_second_len_r_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_full : STD_LOGIC;
  signal r_push : STD_LOGIC;
  signal r_rlast : STD_LOGIC;
  signal s_arid : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_arid_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_awid : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_awlen : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal sel_first : STD_LOGIC;
  signal si_rs_araddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_rs_arburst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal si_rs_arlen : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal si_rs_arvalid : STD_LOGIC;
  signal si_rs_awaddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_rs_awburst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal si_rs_awlen : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal si_rs_awvalid : STD_LOGIC;
  signal si_rs_bid : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_rs_bready : STD_LOGIC;
  signal si_rs_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal si_rs_bvalid : STD_LOGIC;
  signal si_rs_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal si_rs_rid : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_rs_rlast : STD_LOGIC;
  signal si_rs_rready : STD_LOGIC;
  signal si_rs_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal si_rs_rvalid : STD_LOGIC;
  signal wrap_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  s_axi_arready <= \^s_axi_arready\;
\RD.ar_channel_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_ar_channel
     port map (
      D(3 downto 0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len\(3 downto 0),
      E(0) => \ar.ar_pipe/p_1_in\,
      \FSM_sequential_state_reg[1]\ => \RD.ar_channel_0_n_8\,
      O(3) => SI_REG_n_44,
      O(2) => SI_REG_n_45,
      O(1) => SI_REG_n_46,
      O(0) => SI_REG_n_47,
      Q(1 downto 0) => \ar_cmd_fsm_0/state\(1 downto 0),
      S(3) => \RD.ar_channel_0_n_45\,
      S(2) => \RD.ar_channel_0_n_46\,
      S(1) => \RD.ar_channel_0_n_47\,
      S(0) => \RD.ar_channel_0_n_48\,
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_incr_reg[11]\(0) => \RD.ar_channel_0_n_7\,
      \axaddr_incr_reg[3]\(3) => SI_REG_n_36,
      \axaddr_incr_reg[3]\(2) => SI_REG_n_37,
      \axaddr_incr_reg[3]\(1) => SI_REG_n_38,
      \axaddr_incr_reg[3]\(0) => SI_REG_n_39,
      \axaddr_incr_reg[7]\(3) => SI_REG_n_40,
      \axaddr_incr_reg[7]\(2) => SI_REG_n_41,
      \axaddr_incr_reg[7]\(1) => SI_REG_n_42,
      \axaddr_incr_reg[7]\(0) => SI_REG_n_43,
      axaddr_offset(3 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset\(3 downto 0),
      \axaddr_offset_r_reg[3]\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\(3 downto 0),
      \axaddr_wrap_reg[11]\(0) => \RD.ar_channel_0_n_6\,
      \axlen_cnt_reg[3]\ => SI_REG_n_177,
      m_axi_araddr(10 downto 0) => m_axi_araddr(10 downto 0),
      \m_axi_araddr[0]_0\ => SI_REG_n_199,
      m_axi_araddr_0_sp_1 => SI_REG_n_198,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_valid_i0 => \ar.ar_pipe/m_valid_i0\,
      next_pending_r_reg => SI_REG_n_178,
      next_pending_r_reg_0 => SI_REG_n_179,
      r_full => r_full,
      r_push => r_push,
      r_rlast => r_rlast,
      \s_arid_r_reg[11]_0\(11 downto 0) => s_arid_r(11 downto 0),
      \s_arid_r_reg[11]_1\(35 downto 24) => s_arid(11 downto 0),
      \s_arid_r_reg[11]_1\(23 downto 20) => axlen(7 downto 4),
      \s_arid_r_reg[11]_1\(19 downto 16) => si_rs_arlen(3 downto 0),
      \s_arid_r_reg[11]_1\(15) => si_rs_arburst(1),
      \s_arid_r_reg[11]_1\(14) => SI_REG_n_139,
      \s_arid_r_reg[11]_1\(13) => SI_REG_n_140,
      \s_arid_r_reg[11]_1\(12) => SI_REG_n_141,
      \s_arid_r_reg[11]_1\(11 downto 0) => si_rs_araddr(11 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_ready_i0 => \ar.ar_pipe/s_ready_i0\,
      s_ready_i_reg => \^s_axi_arready\,
      sel_first => \cmd_translator_0/incr_cmd_0/sel_first\,
      sel_first_reg => \RD.ar_channel_0_n_1\,
      sel_first_reg_0 => \RD.ar_channel_0_n_23\,
      si_rs_arvalid => si_rs_arvalid,
      \wrap_boundary_axaddr_r_reg[6]\(6) => SI_REG_n_187,
      \wrap_boundary_axaddr_r_reg[6]\(5) => SI_REG_n_188,
      \wrap_boundary_axaddr_r_reg[6]\(4) => SI_REG_n_189,
      \wrap_boundary_axaddr_r_reg[6]\(3) => SI_REG_n_190,
      \wrap_boundary_axaddr_r_reg[6]\(2) => SI_REG_n_191,
      \wrap_boundary_axaddr_r_reg[6]\(1) => SI_REG_n_192,
      \wrap_boundary_axaddr_r_reg[6]\(0) => SI_REG_n_193,
      \wrap_cnt_r_reg[3]\(3) => SI_REG_n_16,
      \wrap_cnt_r_reg[3]\(2) => SI_REG_n_17,
      \wrap_cnt_r_reg[3]\(1) => SI_REG_n_18,
      \wrap_cnt_r_reg[3]\(0) => SI_REG_n_19,
      \wrap_second_len_r_reg[3]\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r\(3 downto 0)
    );
\RD.r_channel_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_r_channel
     port map (
      D(11 downto 0) => s_arid_r(11 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \in\(33 downto 0) => \in\(33 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\(33 downto 32) => si_rs_rresp(1 downto 0),
      \out\(31 downto 0) => si_rs_rdata(31 downto 0),
      r_full => r_full,
      r_push => r_push,
      r_push_r_reg_0(12 downto 1) => si_rs_rid(11 downto 0),
      r_push_r_reg_0(0) => si_rs_rlast,
      r_rlast => r_rlast,
      si_rs_rready => si_rs_rready,
      si_rs_rvalid => si_rs_rvalid
    );
SI_REG: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice
     port map (
      D(3 downto 0) => wrap_cnt(3 downto 0),
      E(0) => \aw.aw_pipe/p_1_in\,
      O(3) => SI_REG_n_44,
      O(2) => SI_REG_n_45,
      O(1) => SI_REG_n_46,
      O(0) => SI_REG_n_47,
      Q(3 downto 0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r_2\(3 downto 0),
      S(3) => \WR.aw_channel_0_n_50\,
      S(2) => \WR.aw_channel_0_n_51\,
      S(1) => \WR.aw_channel_0_n_52\,
      S(0) => \WR.aw_channel_0_n_53\,
      aclk => aclk,
      aresetn => aresetn,
      axaddr_incr(11 downto 0) => axaddr_incr(11 downto 0),
      \axaddr_incr_reg[3]\(3) => \RD.ar_channel_0_n_45\,
      \axaddr_incr_reg[3]\(2) => \RD.ar_channel_0_n_46\,
      \axaddr_incr_reg[3]\(1) => \RD.ar_channel_0_n_47\,
      \axaddr_incr_reg[3]\(0) => \RD.ar_channel_0_n_48\,
      axaddr_offset(3 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_1\(3 downto 0),
      axaddr_offset_0(3 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset\(3 downto 0),
      \axaddr_offset_r_reg[0]\(1 downto 0) => \aw_cmd_fsm_0/state\(1 downto 0),
      \axaddr_offset_r_reg[0]_0\(1 downto 0) => \ar_cmd_fsm_0/state\(1 downto 0),
      \axaddr_offset_r_reg[3]\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3\(3 downto 0),
      \axaddr_offset_r_reg[3]_0\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\(3 downto 0),
      b_push => b_push,
      m_axi_araddr(0) => m_axi_araddr(11),
      \m_axi_araddr[11]\(0) => \RD.ar_channel_0_n_6\,
      \m_axi_araddr[11]_0\(0) => \RD.ar_channel_0_n_7\,
      \m_axi_araddr[11]_1\ => \RD.ar_channel_0_n_23\,
      \m_axi_araddr[11]_2\ => \RD.ar_channel_0_n_1\,
      m_axi_awaddr(0) => m_axi_awaddr(11),
      \m_axi_awaddr[11]\(0) => axaddr_wrap(11),
      \m_axi_awaddr[11]_0\(0) => \WR.aw_channel_0_n_3\,
      \m_axi_awaddr[11]_1\ => \WR.aw_channel_0_n_21\,
      \m_payload_i_reg[0]\(0) => \ar.ar_pipe/p_1_in\,
      \m_payload_i_reg[13]\(13 downto 0) => \m_payload_i_reg[13]\(13 downto 0),
      \m_payload_i_reg[38]\ => SI_REG_n_196,
      \m_payload_i_reg[38]_0\ => SI_REG_n_199,
      \m_payload_i_reg[39]\ => SI_REG_n_195,
      \m_payload_i_reg[39]_0\ => SI_REG_n_198,
      \m_payload_i_reg[3]\(3) => SI_REG_n_36,
      \m_payload_i_reg[3]\(2) => SI_REG_n_37,
      \m_payload_i_reg[3]\(1) => SI_REG_n_38,
      \m_payload_i_reg[3]\(0) => SI_REG_n_39,
      \m_payload_i_reg[46]\ => SI_REG_n_112,
      \m_payload_i_reg[46]_0\ => SI_REG_n_178,
      \m_payload_i_reg[46]_1\(46 downto 0) => \m_payload_i_reg[46]\(46 downto 0),
      \m_payload_i_reg[47]\ => SI_REG_n_111,
      \m_payload_i_reg[47]_0\ => SI_REG_n_113,
      \m_payload_i_reg[47]_1\ => SI_REG_n_177,
      \m_payload_i_reg[47]_2\ => SI_REG_n_179,
      \m_payload_i_reg[64]\(58 downto 47) => s_awid(11 downto 0),
      \m_payload_i_reg[64]\(46 downto 43) => s_awlen(7 downto 4),
      \m_payload_i_reg[64]\(42 downto 39) => si_rs_awlen(3 downto 0),
      \m_payload_i_reg[64]\(38) => si_rs_awburst(1),
      \m_payload_i_reg[64]\(37) => SI_REG_n_73,
      \m_payload_i_reg[64]\(36 downto 35) => axsize(1 downto 0),
      \m_payload_i_reg[64]\(34 downto 12) => Q(22 downto 0),
      \m_payload_i_reg[64]\(11 downto 0) => si_rs_awaddr(11 downto 0),
      \m_payload_i_reg[64]_0\(58 downto 47) => s_arid(11 downto 0),
      \m_payload_i_reg[64]_0\(46 downto 43) => axlen(7 downto 4),
      \m_payload_i_reg[64]_0\(42 downto 39) => si_rs_arlen(3 downto 0),
      \m_payload_i_reg[64]_0\(38) => si_rs_arburst(1),
      \m_payload_i_reg[64]_0\(37) => SI_REG_n_139,
      \m_payload_i_reg[64]_0\(36) => SI_REG_n_140,
      \m_payload_i_reg[64]_0\(35) => SI_REG_n_141,
      \m_payload_i_reg[64]_0\(34 downto 12) => \m_payload_i_reg[34]\(22 downto 0),
      \m_payload_i_reg[64]_0\(11 downto 0) => si_rs_araddr(11 downto 0),
      \m_payload_i_reg[6]\(6) => SI_REG_n_180,
      \m_payload_i_reg[6]\(5) => SI_REG_n_181,
      \m_payload_i_reg[6]\(4) => SI_REG_n_182,
      \m_payload_i_reg[6]\(3) => SI_REG_n_183,
      \m_payload_i_reg[6]\(2) => SI_REG_n_184,
      \m_payload_i_reg[6]\(1) => SI_REG_n_185,
      \m_payload_i_reg[6]\(0) => SI_REG_n_186,
      \m_payload_i_reg[6]_0\(6) => SI_REG_n_187,
      \m_payload_i_reg[6]_0\(5) => SI_REG_n_188,
      \m_payload_i_reg[6]_0\(4) => SI_REG_n_189,
      \m_payload_i_reg[6]_0\(3) => SI_REG_n_190,
      \m_payload_i_reg[6]_0\(2) => SI_REG_n_191,
      \m_payload_i_reg[6]_0\(1) => SI_REG_n_192,
      \m_payload_i_reg[6]_0\(0) => SI_REG_n_193,
      \m_payload_i_reg[7]\(3) => SI_REG_n_40,
      \m_payload_i_reg[7]\(2) => SI_REG_n_41,
      \m_payload_i_reg[7]\(1) => SI_REG_n_42,
      \m_payload_i_reg[7]\(0) => SI_REG_n_43,
      m_valid_i0 => \ar.ar_pipe/m_valid_i0\,
      m_valid_i_reg => s_axi_bvalid,
      m_valid_i_reg_0 => s_axi_rvalid,
      \out\(11 downto 0) => si_rs_bid(11 downto 0),
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rready => s_axi_rready,
      s_ready_i0 => \ar.ar_pipe/s_ready_i0\,
      s_ready_i_reg => s_axi_awready,
      s_ready_i_reg_0 => \^s_axi_arready\,
      sel_first => sel_first,
      sel_first_1 => \cmd_translator_0/incr_cmd_0/sel_first_4\,
      sel_first_2 => \cmd_translator_0/incr_cmd_0/sel_first\,
      si_rs_arvalid => si_rs_arvalid,
      si_rs_awvalid => si_rs_awvalid,
      si_rs_bready => si_rs_bready,
      si_rs_bvalid => si_rs_bvalid,
      si_rs_rready => si_rs_rready,
      si_rs_rvalid => si_rs_rvalid,
      \skid_buffer_reg[1]\(1 downto 0) => si_rs_bresp(1 downto 0),
      \skid_buffer_reg[33]\(33 downto 32) => si_rs_rresp(1 downto 0),
      \skid_buffer_reg[33]\(31 downto 0) => si_rs_rdata(31 downto 0),
      \skid_buffer_reg[46]\(12 downto 1) => si_rs_rid(11 downto 0),
      \skid_buffer_reg[46]\(0) => si_rs_rlast,
      \wrap_cnt_r_reg[0]\ => \WR.aw_channel_0_n_4\,
      \wrap_cnt_r_reg[0]_0\ => \RD.ar_channel_0_n_8\,
      wrap_second_len(3 downto 0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_0\(3 downto 0),
      \wrap_second_len_r_reg[1]\(3) => SI_REG_n_16,
      \wrap_second_len_r_reg[1]\(2) => SI_REG_n_17,
      \wrap_second_len_r_reg[1]\(1) => SI_REG_n_18,
      \wrap_second_len_r_reg[1]\(0) => SI_REG_n_19,
      \wrap_second_len_r_reg[3]\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len\(3 downto 0),
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r\(3 downto 0)
    );
\WR.aw_channel_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_aw_channel
     port map (
      D(3 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_1\(3 downto 0),
      E(0) => \aw.aw_pipe/p_1_in\,
      Q(0) => axaddr_wrap(11),
      S(3) => \WR.aw_channel_0_n_50\,
      S(2) => \WR.aw_channel_0_n_51\,
      S(1) => \WR.aw_channel_0_n_52\,
      S(0) => \WR.aw_channel_0_n_53\,
      aclk => aclk,
      areset_d1 => areset_d1,
      axaddr_incr(11 downto 0) => axaddr_incr(11 downto 0),
      \axaddr_incr_reg[11]\(0) => \WR.aw_channel_0_n_3\,
      \axaddr_offset_r_reg[3]\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3\(3 downto 0),
      \axlen_cnt_reg[3]\ => SI_REG_n_111,
      b_full => b_full,
      b_push => b_push,
      cnt_read(1 downto 0) => \bid_fifo_0/cnt_read\(1 downto 0),
      \in\(19 downto 8) => b_awid(11 downto 0),
      \in\(7 downto 0) => b_awlen(7 downto 0),
      m_axi_awaddr(10 downto 0) => m_axi_awaddr(10 downto 0),
      \m_axi_awaddr[0]_0\ => SI_REG_n_196,
      m_axi_awaddr_0_sp_1 => SI_REG_n_195,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      next_pending_r_reg => SI_REG_n_112,
      next_pending_r_reg_0 => SI_REG_n_113,
      \s_awid_r_reg[11]_0\(35 downto 24) => s_awid(11 downto 0),
      \s_awid_r_reg[11]_0\(23 downto 20) => s_awlen(7 downto 4),
      \s_awid_r_reg[11]_0\(19 downto 16) => si_rs_awlen(3 downto 0),
      \s_awid_r_reg[11]_0\(15) => si_rs_awburst(1),
      \s_awid_r_reg[11]_0\(14) => SI_REG_n_73,
      \s_awid_r_reg[11]_0\(13 downto 12) => axsize(1 downto 0),
      \s_awid_r_reg[11]_0\(11 downto 0) => si_rs_awaddr(11 downto 0),
      sel_first => sel_first,
      sel_first_0 => \cmd_translator_0/incr_cmd_0/sel_first_4\,
      sel_first_reg => \WR.aw_channel_0_n_21\,
      si_rs_awvalid => si_rs_awvalid,
      \state_reg[1]\ => \WR.aw_channel_0_n_4\,
      \state_reg[1]_0\(1 downto 0) => \aw_cmd_fsm_0/state\(1 downto 0),
      \wrap_boundary_axaddr_r_reg[6]\(6) => SI_REG_n_180,
      \wrap_boundary_axaddr_r_reg[6]\(5) => SI_REG_n_181,
      \wrap_boundary_axaddr_r_reg[6]\(4) => SI_REG_n_182,
      \wrap_boundary_axaddr_r_reg[6]\(3) => SI_REG_n_183,
      \wrap_boundary_axaddr_r_reg[6]\(2) => SI_REG_n_184,
      \wrap_boundary_axaddr_r_reg[6]\(1) => SI_REG_n_185,
      \wrap_boundary_axaddr_r_reg[6]\(0) => SI_REG_n_186,
      \wrap_cnt_r_reg[3]\(3 downto 0) => wrap_cnt(3 downto 0),
      \wrap_second_len_r_reg[3]\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r_2\(3 downto 0),
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_0\(3 downto 0)
    );
\WR.b_channel_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s_b_channel
     port map (
      aclk => aclk,
      areset_d1 => areset_d1,
      b_full => b_full,
      b_push => b_push,
      cnt_read(1 downto 0) => \bid_fifo_0/cnt_read\(1 downto 0),
      \in\(19 downto 8) => b_awid(11 downto 0),
      \in\(7 downto 0) => b_awlen(7 downto 0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      \out\(11 downto 0) => si_rs_bid(11 downto 0),
      \s_bresp_acc_reg[1]_0\(1 downto 0) => si_rs_bresp(1 downto 0),
      si_rs_bready => si_rs_bready,
      si_rs_bvalid => si_rs_bvalid
    );
areset_d1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => areset_d1_i_1_n_0
    );
areset_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => areset_d1_i_1_n_0,
      Q => areset_d1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 12;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 0;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 2;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 2;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is "3'b010";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter : entity is "2'b10";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const1>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(11) <= \<const0>\;
  m_axi_arid(10) <= \<const0>\;
  m_axi_arid(9) <= \<const0>\;
  m_axi_arid(8) <= \<const0>\;
  m_axi_arid(7) <= \<const0>\;
  m_axi_arid(6) <= \<const0>\;
  m_axi_arid(5) <= \<const0>\;
  m_axi_arid(4) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const1>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const1>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(11) <= \<const0>\;
  m_axi_awid(10) <= \<const0>\;
  m_axi_awid(9) <= \<const0>\;
  m_axi_awid(8) <= \<const0>\;
  m_axi_awid(7) <= \<const0>\;
  m_axi_awid(6) <= \<const0>\;
  m_axi_awid(5) <= \<const0>\;
  m_axi_awid(4) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const1>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(11) <= \<const0>\;
  m_axi_wid(10) <= \<const0>\;
  m_axi_wid(9) <= \<const0>\;
  m_axi_wid(8) <= \<const0>\;
  m_axi_wid(7) <= \<const0>\;
  m_axi_wid(6) <= \<const0>\;
  m_axi_wid(5) <= \<const0>\;
  m_axi_wid(4) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const1>\;
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\gen_axilite.gen_b2s_conv.axilite_b2s\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_b2s
     port map (
      Q(22 downto 20) => m_axi_awprot(2 downto 0),
      Q(19 downto 0) => m_axi_awaddr(31 downto 12),
      aclk => aclk,
      aresetn => aresetn,
      \in\(33 downto 32) => m_axi_rresp(1 downto 0),
      \in\(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \m_payload_i_reg[13]\(13 downto 2) => s_axi_bid(11 downto 0),
      \m_payload_i_reg[13]\(1 downto 0) => s_axi_bresp(1 downto 0),
      \m_payload_i_reg[34]\(22 downto 20) => m_axi_arprot(2 downto 0),
      \m_payload_i_reg[34]\(19 downto 0) => m_axi_araddr(31 downto 12),
      \m_payload_i_reg[46]\(46 downto 35) => s_axi_rid(11 downto 0),
      \m_payload_i_reg[46]\(34) => s_axi_rlast,
      \m_payload_i_reg[46]\(33 downto 32) => s_axi_rresp(1 downto 0),
      \m_payload_i_reg[46]\(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_auto_pc_1,axi_protocol_converter_v2_1_20_axi_protocol_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_protocol_converter_v2_1_20_axi_protocol_converter,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 12;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of inst : label is 0;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of inst : label is 2;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of inst : label is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of inst : label is 2;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of inst : label is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of inst : label is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of inst : label is "2'b10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_20_axi_protocol_converter
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(11 downto 0) => NLW_inst_m_axi_arid_UNCONNECTED(11 downto 0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(11 downto 0) => NLW_inst_m_axi_awid_UNCONNECTED(11 downto 0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(11 downto 0) => B"000000000000",
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(11 downto 0) => B"000000000000",
      m_axi_rlast => '1',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(11 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(11 downto 0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(11 downto 0) => B"000000000000",
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
