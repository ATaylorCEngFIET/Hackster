-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4_AR70530_AR70530 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun  2 17:58:38 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dvi2rgb_1_1_sim_netlist.vhdl
-- Design      : design_1_dvi2rgb_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond is
  port (
    pAllVld_q : out STD_LOGIC;
    pAllVldBgnFlag : out STD_LOGIC;
    pMeRdy_int_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    pAllVld : in STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    pAllVldBgnFlag0 : in STD_LOGIC;
    pAligned_reg : in STD_LOGIC;
    pRdy_0 : in STD_LOGIC;
    pRdy_1 : in STD_LOGIC;
    pDataInRaw : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond is
  signal \^pallvldbgnflag\ : STD_LOGIC;
  signal pBlnkBgnFlag : STD_LOGIC;
  signal pBlnkBgnFlag_i_1_n_0 : STD_LOGIC;
  signal \pDataFIFO_reg_n_0_[9]\ : STD_LOGIC;
  signal pDataInBnd : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pDataIn[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \pDataIn[7]_i_4__1_n_0\ : STD_LOGIC;
  signal \pDataIn[7]_i_5__0_n_0\ : STD_LOGIC;
  signal pMeRdy_int_i_1_n_0 : STD_LOGIC;
  signal \^pmerdy_int_reg_0\ : STD_LOGIC;
  signal pRdA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \pRdA[0]_i_1_n_0\ : STD_LOGIC;
  signal \pRdA[1]_i_1_n_0\ : STD_LOGIC;
  signal \pRdA[2]_i_1_n_0\ : STD_LOGIC;
  signal \pRdA[3]_i_1_n_0\ : STD_LOGIC;
  signal \pRdA[4]_i_1_n_0\ : STD_LOGIC;
  signal pRdEn : STD_LOGIC;
  signal pRdEn_i_1_n_0 : STD_LOGIC;
  signal pTokenFlag : STD_LOGIC;
  signal pTokenFlag0 : STD_LOGIC;
  signal pTokenFlag_i_2_n_0 : STD_LOGIC;
  signal pTokenFlag_i_3_n_0 : STD_LOGIC;
  signal pTokenFlag_i_4_n_0 : STD_LOGIC;
  signal pTokenFlag_q : STD_LOGIC;
  signal \pWrA_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pDataIn[0]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pDataIn[1]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pDataIn[2]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pDataIn[3]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pDataIn[4]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pDataIn[5]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pDataIn[6]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pDataIn[7]_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pDataIn[7]_i_5__0\ : label is "soft_lutpair64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of pFIFO_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of pFIFO_reg_0_31_6_9 : label is "";
  attribute SOFT_HLUTNM of pMeRdy_int_i_1 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pRdA[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \pRdA[2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \pRdA[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pRdA[4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pWrA[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pWrA[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pWrA[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pWrA[4]_i_2\ : label is "soft_lutpair58";
begin
  pAllVldBgnFlag <= \^pallvldbgnflag\;
  pMeRdy_int_reg_0 <= \^pmerdy_int_reg_0\;
pAllVldBgnFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pAllVldBgnFlag0,
      Q => \^pallvldbgnflag\,
      R => '0'
    );
pAllVld_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pAllVld,
      Q => pAllVld_q,
      R => '0'
    );
pBlnkBgnFlag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pTokenFlag,
      I1 => pTokenFlag_q,
      O => pBlnkBgnFlag_i_1_n_0
    );
pBlnkBgnFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pBlnkBgnFlag_i_1_n_0,
      Q => pBlnkBgnFlag,
      R => '0'
    );
\pDataFIFO_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(0),
      Q => pDataInBnd(0),
      R => '0'
    );
\pDataFIFO_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(1),
      Q => pDataInBnd(1),
      R => '0'
    );
\pDataFIFO_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(2),
      Q => pDataInBnd(2),
      R => '0'
    );
\pDataFIFO_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(3),
      Q => pDataInBnd(3),
      R => '0'
    );
\pDataFIFO_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(4),
      Q => pDataInBnd(4),
      R => '0'
    );
\pDataFIFO_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(5),
      Q => pDataInBnd(5),
      R => '0'
    );
\pDataFIFO_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(6),
      Q => pDataInBnd(6),
      R => '0'
    );
\pDataFIFO_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(7),
      Q => pDataInBnd(7),
      R => '0'
    );
\pDataFIFO_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(8),
      Q => pDataInBnd(8),
      R => '0'
    );
\pDataFIFO_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_out__0\(9),
      Q => \pDataFIFO_reg_n_0_[9]\,
      R => '0'
    );
\pDataIn[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \pDataFIFO_reg_n_0_[9]\,
      I1 => pDataInBnd(0),
      I2 => \pDataIn[7]_i_3__0_n_0\,
      O => D(0)
    );
\pDataIn[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => \pDataIn[7]_i_3__0_n_0\,
      I1 => pDataInBnd(1),
      I2 => pDataInBnd(0),
      I3 => pDataInBnd(8),
      O => D(1)
    );
\pDataIn[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => \pDataIn[7]_i_3__0_n_0\,
      I1 => pDataInBnd(1),
      I2 => pDataInBnd(2),
      I3 => pDataInBnd(8),
      O => D(2)
    );
\pDataIn[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => \pDataIn[7]_i_3__0_n_0\,
      I1 => pDataInBnd(3),
      I2 => pDataInBnd(2),
      I3 => pDataInBnd(8),
      O => D(3)
    );
\pDataIn[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => \pDataIn[7]_i_3__0_n_0\,
      I1 => pDataInBnd(3),
      I2 => pDataInBnd(4),
      I3 => pDataInBnd(8),
      O => D(4)
    );
\pDataIn[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => \pDataIn[7]_i_3__0_n_0\,
      I1 => pDataInBnd(5),
      I2 => pDataInBnd(8),
      I3 => pDataInBnd(4),
      O => D(5)
    );
\pDataIn[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => \pDataIn[7]_i_3__0_n_0\,
      I1 => pDataInBnd(5),
      I2 => pDataInBnd(8),
      I3 => pDataInBnd(6),
      O => D(6)
    );
\pDataIn[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^pmerdy_int_reg_0\,
      I1 => pRdy_0,
      I2 => pRdy_1,
      O => SR(0)
    );
\pDataIn[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => pDataInBnd(7),
      I1 => pDataInBnd(6),
      I2 => pDataInBnd(8),
      I3 => \pDataIn[7]_i_3__0_n_0\,
      O => D(7)
    );
\pDataIn[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000080000"
    )
        port map (
      I0 => \pDataIn[7]_i_4__1_n_0\,
      I1 => pDataInBnd(6),
      I2 => pDataInBnd(7),
      I3 => \pDataIn[7]_i_5__0_n_0\,
      I4 => pDataInBnd(4),
      I5 => pDataInBnd(5),
      O => \pDataIn[7]_i_3__0_n_0\
    );
\pDataIn[7]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044002200000"
    )
        port map (
      I0 => pDataInBnd(3),
      I1 => pDataInBnd(4),
      I2 => pDataInBnd(7),
      I3 => pDataInBnd(8),
      I4 => pDataInBnd(1),
      I5 => pDataInBnd(2),
      O => \pDataIn[7]_i_4__1_n_0\
    );
\pDataIn[7]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pDataInBnd(1),
      I1 => pDataInBnd(0),
      O => \pDataIn[7]_i_5__0_n_0\
    );
pFIFO_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => pRdA(4 downto 0),
      ADDRB(4 downto 0) => pRdA(4 downto 0),
      ADDRC(4 downto 0) => pRdA(4 downto 0),
      ADDRD(4 downto 0) => \pWrA_reg__0\(4 downto 0),
      DIA(1 downto 0) => pDataInRaw(1 downto 0),
      DIB(1 downto 0) => pDataInRaw(3 downto 2),
      DIC(1 downto 0) => pDataInRaw(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \p_0_out__0\(1 downto 0),
      DOB(1 downto 0) => \p_0_out__0\(3 downto 2),
      DOC(1 downto 0) => \p_0_out__0\(5 downto 4),
      DOD(1 downto 0) => NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => rMMCM_LckdRisingFlag_reg,
      WE => pAllVld
    );
pFIFO_reg_0_31_6_9: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => pRdA(4 downto 0),
      ADDRB(4 downto 0) => pRdA(4 downto 0),
      ADDRC(4 downto 0) => pRdA(4 downto 0),
      ADDRD(4 downto 0) => \pWrA_reg__0\(4 downto 0),
      DIA(1 downto 0) => pDataInRaw(7 downto 6),
      DIB(1 downto 0) => pDataInRaw(9 downto 8),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \p_0_out__0\(7 downto 6),
      DOB(1 downto 0) => \p_0_out__0\(9 downto 8),
      DOC(1 downto 0) => NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED(1 downto 0),
      WCLK => rMMCM_LckdRisingFlag_reg,
      WE => pAllVld
    );
pMeRdy_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pBlnkBgnFlag,
      I1 => \^pmerdy_int_reg_0\,
      O => pMeRdy_int_i_1_n_0
    );
pMeRdy_int_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pMeRdy_int_i_1_n_0,
      Q => \^pmerdy_int_reg_0\,
      R => pAligned_reg
    );
\pRdA[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pRdA(0),
      O => \pRdA[0]_i_1_n_0\
    );
\pRdA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pRdA(0),
      I1 => pRdA(1),
      O => \pRdA[1]_i_1_n_0\
    );
\pRdA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pRdA(2),
      I1 => pRdA(1),
      I2 => pRdA(0),
      O => \pRdA[2]_i_1_n_0\
    );
\pRdA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pRdA(3),
      I1 => pRdA(0),
      I2 => pRdA(1),
      I3 => pRdA(2),
      O => \pRdA[3]_i_1_n_0\
    );
\pRdA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => pRdA(4),
      I1 => pRdA(2),
      I2 => pRdA(1),
      I3 => pRdA(0),
      I4 => pRdA(3),
      O => \pRdA[4]_i_1_n_0\
    );
\pRdA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[0]_i_1_n_0\,
      Q => pRdA(0),
      R => pAligned_reg
    );
\pRdA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[1]_i_1_n_0\,
      Q => pRdA(1),
      R => pAligned_reg
    );
\pRdA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[2]_i_1_n_0\,
      Q => pRdA(2),
      R => pAligned_reg
    );
\pRdA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[3]_i_1_n_0\,
      Q => pRdA(3),
      R => pAligned_reg
    );
\pRdA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[4]_i_1_n_0\,
      Q => pRdA(4),
      R => pAligned_reg
    );
pRdEn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBBFAAAAAAA"
    )
        port map (
      I0 => \^pallvldbgnflag\,
      I1 => pBlnkBgnFlag,
      I2 => pRdy_1,
      I3 => \^pmerdy_int_reg_0\,
      I4 => pRdy_0,
      I5 => pRdEn,
      O => pRdEn_i_1_n_0
    );
pRdEn_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pRdEn_i_1_n_0,
      Q => pRdEn,
      R => pAligned_reg
    );
\pTokenFlag_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => pTokenFlag_i_2_n_0,
      I1 => pTokenFlag_i_3_n_0,
      I2 => pDataInBnd(4),
      I3 => pDataInBnd(3),
      I4 => pDataInBnd(2),
      O => pTokenFlag0
    );
pTokenFlag_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555575"
    )
        port map (
      I0 => pRdEn,
      I1 => pDataInBnd(3),
      I2 => pDataInBnd(4),
      I3 => pDataInBnd(0),
      I4 => pTokenFlag_i_4_n_0,
      O => pTokenFlag_i_2_n_0
    );
pTokenFlag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => pDataInBnd(7),
      I1 => pDataInBnd(6),
      I2 => pDataInBnd(8),
      I3 => pDataInBnd(5),
      I4 => pDataInBnd(1),
      I5 => pDataInBnd(0),
      O => pTokenFlag_i_3_n_0
    );
pTokenFlag_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => pDataInBnd(1),
      I1 => pDataInBnd(2),
      I2 => pDataInBnd(7),
      I3 => pDataInBnd(6),
      I4 => pDataInBnd(8),
      I5 => pDataInBnd(5),
      O => pTokenFlag_i_4_n_0
    );
pTokenFlag_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTokenFlag,
      Q => pTokenFlag_q,
      R => '0'
    );
pTokenFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTokenFlag0,
      Q => pTokenFlag,
      R => '0'
    );
\pWrA[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pWrA_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\pWrA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pWrA_reg__0\(0),
      I1 => \pWrA_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\pWrA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pWrA_reg__0\(2),
      I1 => \pWrA_reg__0\(1),
      I2 => \pWrA_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\pWrA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pWrA_reg__0\(3),
      I1 => \pWrA_reg__0\(0),
      I2 => \pWrA_reg__0\(1),
      I3 => \pWrA_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\pWrA[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pWrA_reg__0\(4),
      I1 => \pWrA_reg__0\(2),
      I2 => \pWrA_reg__0\(1),
      I3 => \pWrA_reg__0\(0),
      I4 => \pWrA_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\pWrA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \pWrA_reg__0\(0),
      R => pAligned_reg
    );
\pWrA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \pWrA_reg__0\(1),
      R => pAligned_reg
    );
\pWrA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \pWrA_reg__0\(2),
      R => pAligned_reg
    );
\pWrA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \pWrA_reg__0\(3),
      R => pAligned_reg
    );
\pWrA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \pWrA_reg__0\(4),
      R => pAligned_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_10 is
  port (
    pMeRdy_int_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pDataIn_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    pRdy_2 : in STD_LOGIC;
    pRdy_0 : in STD_LOGIC;
    pAllVldBgnFlag : in STD_LOGIC;
    pAllVld : in STD_LOGIC;
    pDataInRaw : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_10 : entity is "ChannelBond";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_10 is
  signal pBlnkBgnFlag : STD_LOGIC;
  signal \pBlnkBgnFlag_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataFIFO_reg_n_0_[9]\ : STD_LOGIC;
  signal pDataInBnd : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pDataIn[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \pDataIn[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \pDataIn[7]_i_5_n_0\ : STD_LOGIC;
  signal \pMeRdy_int_i_1__1_n_0\ : STD_LOGIC;
  signal \^pmerdy_int_reg_0\ : STD_LOGIC;
  signal pRdA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \pRdA[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \pRdA[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pRdA[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \pRdA[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pRdA[4]_i_1__1_n_0\ : STD_LOGIC;
  signal pRdEn : STD_LOGIC;
  signal \pRdEn_i_1__0_n_0\ : STD_LOGIC;
  signal pTokenFlag : STD_LOGIC;
  signal pTokenFlag0 : STD_LOGIC;
  signal pTokenFlag_q : STD_LOGIC;
  signal \pWrA_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pDataIn[0]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \pDataIn[1]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \pDataIn[2]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \pDataIn[3]_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \pDataIn[4]_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \pDataIn[5]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pDataIn[6]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pDataIn[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pDataIn[7]_i_2__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pDataIn[7]_i_5\ : label is "soft_lutpair35";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of pFIFO_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of pFIFO_reg_0_31_6_9 : label is "";
  attribute SOFT_HLUTNM of \pMeRdy_int_i_1__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pRdA[1]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pRdA[2]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pRdA[3]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \pRdA[4]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \pTokenFlag_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pWrA[1]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \pWrA[2]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \pWrA[3]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pWrA[4]_i_1__0\ : label is "soft_lutpair29";
begin
  pMeRdy_int_reg_0 <= \^pmerdy_int_reg_0\;
\pBlnkBgnFlag_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pTokenFlag,
      I1 => pTokenFlag_q,
      O => \pBlnkBgnFlag_i_1__0_n_0\
    );
pBlnkBgnFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pBlnkBgnFlag_i_1__0_n_0\,
      Q => pBlnkBgnFlag,
      R => '0'
    );
\pDataFIFO_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(0),
      Q => pDataInBnd(0),
      R => '0'
    );
\pDataFIFO_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(1),
      Q => pDataInBnd(1),
      R => '0'
    );
\pDataFIFO_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(2),
      Q => pDataInBnd(2),
      R => '0'
    );
\pDataFIFO_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(3),
      Q => pDataInBnd(3),
      R => '0'
    );
\pDataFIFO_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(4),
      Q => pDataInBnd(4),
      R => '0'
    );
\pDataFIFO_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(5),
      Q => pDataInBnd(5),
      R => '0'
    );
\pDataFIFO_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(6),
      Q => pDataInBnd(6),
      R => '0'
    );
\pDataFIFO_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(7),
      Q => pDataInBnd(7),
      R => '0'
    );
\pDataFIFO_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(8),
      Q => pDataInBnd(8),
      R => '0'
    );
\pDataFIFO_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(9),
      Q => \pDataFIFO_reg_n_0_[9]\,
      R => '0'
    );
\pDataIn[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \pDataFIFO_reg_n_0_[9]\,
      I1 => pDataInBnd(0),
      I2 => \pDataIn[7]_i_3__1_n_0\,
      O => D(0)
    );
\pDataIn[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => \pDataIn[7]_i_3__1_n_0\,
      I1 => pDataInBnd(1),
      I2 => pDataInBnd(0),
      I3 => pDataInBnd(8),
      O => D(1)
    );
\pDataIn[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => \pDataIn[7]_i_3__1_n_0\,
      I1 => pDataInBnd(1),
      I2 => pDataInBnd(2),
      I3 => pDataInBnd(8),
      O => D(2)
    );
\pDataIn[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => \pDataIn[7]_i_3__1_n_0\,
      I1 => pDataInBnd(3),
      I2 => pDataInBnd(2),
      I3 => pDataInBnd(8),
      O => D(3)
    );
\pDataIn[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => \pDataIn[7]_i_3__1_n_0\,
      I1 => pDataInBnd(3),
      I2 => pDataInBnd(4),
      I3 => pDataInBnd(8),
      O => D(4)
    );
\pDataIn[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => \pDataIn[7]_i_3__1_n_0\,
      I1 => pDataInBnd(5),
      I2 => pDataInBnd(8),
      I3 => pDataInBnd(4),
      O => D(5)
    );
\pDataIn[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => \pDataIn[7]_i_3__1_n_0\,
      I1 => pDataInBnd(5),
      I2 => pDataInBnd(8),
      I3 => pDataInBnd(6),
      O => D(6)
    );
\pDataIn[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^pmerdy_int_reg_0\,
      I1 => pRdy_2,
      I2 => pRdy_0,
      O => \pDataIn_reg[7]\(0)
    );
\pDataIn[7]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2882"
    )
        port map (
      I0 => \pDataIn[7]_i_3__1_n_0\,
      I1 => pDataInBnd(7),
      I2 => pDataInBnd(6),
      I3 => pDataInBnd(8),
      O => D(7)
    );
\pDataIn[7]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFEFFFFF"
    )
        port map (
      I0 => \pDataIn[7]_i_4__0_n_0\,
      I1 => \pDataIn[7]_i_5_n_0\,
      I2 => pDataInBnd(6),
      I3 => pDataInBnd(7),
      I4 => pDataInBnd(4),
      I5 => pDataInBnd(5),
      O => \pDataIn[7]_i_3__1_n_0\
    );
\pDataIn[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBBFFDDFFFFF"
    )
        port map (
      I0 => pDataInBnd(3),
      I1 => pDataInBnd(4),
      I2 => pDataInBnd(7),
      I3 => pDataInBnd(8),
      I4 => pDataInBnd(1),
      I5 => pDataInBnd(2),
      O => \pDataIn[7]_i_4__0_n_0\
    );
\pDataIn[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pDataInBnd(1),
      I1 => pDataInBnd(0),
      O => \pDataIn[7]_i_5_n_0\
    );
pFIFO_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => pRdA(4 downto 0),
      ADDRB(4 downto 0) => pRdA(4 downto 0),
      ADDRC(4 downto 0) => pRdA(4 downto 0),
      ADDRD(4 downto 0) => \pWrA_reg__0\(4 downto 0),
      DIA(1 downto 0) => pDataInRaw(1 downto 0),
      DIB(1 downto 0) => pDataInRaw(3 downto 2),
      DIC(1 downto 0) => pDataInRaw(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => rMMCM_LckdRisingFlag_reg,
      WE => pAllVld
    );
pFIFO_reg_0_31_6_9: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => pRdA(4 downto 0),
      ADDRB(4 downto 0) => pRdA(4 downto 0),
      ADDRC(4 downto 0) => pRdA(4 downto 0),
      ADDRD(4 downto 0) => \pWrA_reg__0\(4 downto 0),
      DIA(1 downto 0) => pDataInRaw(7 downto 6),
      DIB(1 downto 0) => pDataInRaw(9 downto 8),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED(1 downto 0),
      WCLK => rMMCM_LckdRisingFlag_reg,
      WE => pAllVld
    );
\pMeRdy_int_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pBlnkBgnFlag,
      I1 => \^pmerdy_int_reg_0\,
      O => \pMeRdy_int_i_1__1_n_0\
    );
pMeRdy_int_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pMeRdy_int_i_1__1_n_0\,
      Q => \^pmerdy_int_reg_0\,
      R => SR(0)
    );
\pRdA[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pRdA(0),
      O => \pRdA[0]_i_1__1_n_0\
    );
\pRdA[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pRdA(0),
      I1 => pRdA(1),
      O => \pRdA[1]_i_1__1_n_0\
    );
\pRdA[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pRdA(2),
      I1 => pRdA(1),
      I2 => pRdA(0),
      O => \pRdA[2]_i_1__1_n_0\
    );
\pRdA[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pRdA(3),
      I1 => pRdA(0),
      I2 => pRdA(1),
      I3 => pRdA(2),
      O => \pRdA[3]_i_1__1_n_0\
    );
\pRdA[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => pRdA(4),
      I1 => pRdA(2),
      I2 => pRdA(1),
      I3 => pRdA(0),
      I4 => pRdA(3),
      O => \pRdA[4]_i_1__1_n_0\
    );
\pRdA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[0]_i_1__1_n_0\,
      Q => pRdA(0),
      R => SR(0)
    );
\pRdA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[1]_i_1__1_n_0\,
      Q => pRdA(1),
      R => SR(0)
    );
\pRdA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[2]_i_1__1_n_0\,
      Q => pRdA(2),
      R => SR(0)
    );
\pRdA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[3]_i_1__1_n_0\,
      Q => pRdA(3),
      R => SR(0)
    );
\pRdA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[4]_i_1__1_n_0\,
      Q => pRdA(4),
      R => SR(0)
    );
\pRdEn_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBBFAAAAAAA"
    )
        port map (
      I0 => pAllVldBgnFlag,
      I1 => pBlnkBgnFlag,
      I2 => pRdy_0,
      I3 => \^pmerdy_int_reg_0\,
      I4 => pRdy_2,
      I5 => pRdEn,
      O => \pRdEn_i_1__0_n_0\
    );
pRdEn_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pRdEn_i_1__0_n_0\,
      Q => pRdEn,
      R => SR(0)
    );
\pTokenFlag_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pRdEn,
      I1 => \pDataIn[7]_i_3__1_n_0\,
      O => pTokenFlag0
    );
pTokenFlag_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTokenFlag,
      Q => pTokenFlag_q,
      R => '0'
    );
pTokenFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTokenFlag0,
      Q => pTokenFlag,
      R => '0'
    );
\pWrA[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pWrA_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\pWrA[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pWrA_reg__0\(0),
      I1 => \pWrA_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\pWrA[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pWrA_reg__0\(2),
      I1 => \pWrA_reg__0\(1),
      I2 => \pWrA_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\pWrA[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pWrA_reg__0\(3),
      I1 => \pWrA_reg__0\(0),
      I2 => \pWrA_reg__0\(1),
      I3 => \pWrA_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\pWrA[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pWrA_reg__0\(4),
      I1 => \pWrA_reg__0\(2),
      I2 => \pWrA_reg__0\(1),
      I3 => \pWrA_reg__0\(0),
      I4 => \pWrA_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\pWrA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \pWrA_reg__0\(0),
      R => SR(0)
    );
\pWrA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \pWrA_reg__0\(1),
      R => SR(0)
    );
\pWrA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \pWrA_reg__0\(2),
      R => SR(0)
    );
\pWrA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \pWrA_reg__0\(3),
      R => SR(0)
    );
\pWrA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \pWrA_reg__0\(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_17 is
  port (
    pMeRdy_int_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pVde : out STD_LOGIC;
    \pDataIn_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    pC1_reg : out STD_LOGIC;
    pC0_reg : out STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    pAligned_reg : in STD_LOGIC;
    pRdy_1 : in STD_LOGIC;
    pRdy_2 : in STD_LOGIC;
    pAllVldBgnFlag : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    pAllVld : in STD_LOGIC;
    pDataInRaw : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_17 : entity is "ChannelBond";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_17;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_17 is
  signal pBlnkBgnFlag : STD_LOGIC;
  signal \pBlnkBgnFlag_i_1__1_n_0\ : STD_LOGIC;
  signal pC0 : STD_LOGIC;
  signal \pDataFIFO_reg_n_0_[9]\ : STD_LOGIC;
  signal pDataInBnd : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pDataIn[7]_i_4_n_0\ : STD_LOGIC;
  signal \pMeRdy_int_i_1__0_n_0\ : STD_LOGIC;
  signal \^pmerdy_int_reg_0\ : STD_LOGIC;
  signal pRdA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \pRdA[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pRdA[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pRdA[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pRdA[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pRdA[4]_i_1__0_n_0\ : STD_LOGIC;
  signal pRdEn : STD_LOGIC;
  signal \pRdEn_i_1__1_n_0\ : STD_LOGIC;
  signal pTokenFlag : STD_LOGIC;
  signal pTokenFlag0 : STD_LOGIC;
  signal pTokenFlag_q : STD_LOGIC;
  signal \pWrA_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of pC0_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of pC1_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pDataIn[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pDataIn[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pDataIn[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pDataIn[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pDataIn[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pDataIn[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pDataIn[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pDataIn[7]_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pDataIn[7]_i_2\ : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of pFIFO_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of pFIFO_reg_0_31_6_9 : label is "";
  attribute SOFT_HLUTNM of \pMeRdy_int_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pRdA[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pRdA[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pRdA[3]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pRdA[4]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pTokenFlag_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of pVde_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pWrA[1]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pWrA[2]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pWrA[3]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pWrA[4]_i_1__1\ : label is "soft_lutpair1";
begin
  pMeRdy_int_reg_0 <= \^pmerdy_int_reg_0\;
\pBlnkBgnFlag_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pTokenFlag,
      I1 => pTokenFlag_q,
      O => \pBlnkBgnFlag_i_1__1_n_0\
    );
pBlnkBgnFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pBlnkBgnFlag_i_1__1_n_0\,
      Q => pBlnkBgnFlag,
      R => '0'
    );
pC0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => pDataInBnd(8),
      I1 => pC0,
      I2 => vid_pHSync,
      O => pC0_reg
    );
pC1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => pDataInBnd(8),
      I1 => \pDataFIFO_reg_n_0_[9]\,
      I2 => pC0,
      I3 => vid_pVSync,
      O => pC1_reg
    );
\pDataFIFO_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(0),
      Q => pDataInBnd(0),
      R => '0'
    );
\pDataFIFO_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(1),
      Q => pDataInBnd(1),
      R => '0'
    );
\pDataFIFO_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(2),
      Q => pDataInBnd(2),
      R => '0'
    );
\pDataFIFO_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(3),
      Q => pDataInBnd(3),
      R => '0'
    );
\pDataFIFO_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(4),
      Q => pDataInBnd(4),
      R => '0'
    );
\pDataFIFO_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(5),
      Q => pDataInBnd(5),
      R => '0'
    );
\pDataFIFO_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(6),
      Q => pDataInBnd(6),
      R => '0'
    );
\pDataFIFO_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(7),
      Q => pDataInBnd(7),
      R => '0'
    );
\pDataFIFO_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(8),
      Q => pDataInBnd(8),
      R => '0'
    );
\pDataFIFO_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_out(9),
      Q => \pDataFIFO_reg_n_0_[9]\,
      R => '0'
    );
\pDataIn[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => pDataInBnd(0),
      I1 => \pDataFIFO_reg_n_0_[9]\,
      I2 => pC0,
      O => D(0)
    );
\pDataIn[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => pDataInBnd(1),
      I1 => pDataInBnd(0),
      I2 => pDataInBnd(8),
      I3 => pC0,
      O => D(1)
    );
\pDataIn[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => pDataInBnd(2),
      I1 => pDataInBnd(1),
      I2 => pDataInBnd(8),
      I3 => pC0,
      O => D(2)
    );
\pDataIn[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => pDataInBnd(2),
      I1 => pDataInBnd(3),
      I2 => pDataInBnd(8),
      I3 => pC0,
      O => D(3)
    );
\pDataIn[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => pC0,
      I1 => pDataInBnd(8),
      I2 => pDataInBnd(4),
      I3 => pDataInBnd(3),
      O => D(4)
    );
\pDataIn[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1441"
    )
        port map (
      I0 => pC0,
      I1 => pDataInBnd(8),
      I2 => pDataInBnd(4),
      I3 => pDataInBnd(5),
      O => D(5)
    );
\pDataIn[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => pDataInBnd(5),
      I1 => pDataInBnd(6),
      I2 => pDataInBnd(8),
      I3 => pC0,
      O => D(6)
    );
\pDataIn[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^pmerdy_int_reg_0\,
      I1 => pRdy_1,
      I2 => pRdy_2,
      O => \pDataIn_reg[7]\(0)
    );
\pDataIn[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => pDataInBnd(7),
      I1 => pDataInBnd(6),
      I2 => pDataInBnd(8),
      I3 => pC0,
      O => D(7)
    );
\pDataIn[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100800"
    )
        port map (
      I0 => pDataInBnd(2),
      I1 => pDataInBnd(4),
      I2 => pDataInBnd(3),
      I3 => pDataInBnd(6),
      I4 => pDataInBnd(5),
      I5 => \pDataIn[7]_i_4_n_0\,
      O => pC0
    );
\pDataIn[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBDFFFFFFFFBDFF"
    )
        port map (
      I0 => pDataInBnd(2),
      I1 => pDataInBnd(1),
      I2 => pDataInBnd(0),
      I3 => pDataInBnd(7),
      I4 => pDataInBnd(6),
      I5 => pDataInBnd(8),
      O => \pDataIn[7]_i_4_n_0\
    );
pFIFO_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => pRdA(4 downto 0),
      ADDRB(4 downto 0) => pRdA(4 downto 0),
      ADDRC(4 downto 0) => pRdA(4 downto 0),
      ADDRD(4 downto 0) => \pWrA_reg__0\(4 downto 0),
      DIA(1 downto 0) => pDataInRaw(1 downto 0),
      DIB(1 downto 0) => pDataInRaw(3 downto 2),
      DIC(1 downto 0) => pDataInRaw(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_pFIFO_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => rMMCM_LckdRisingFlag_reg,
      WE => pAllVld
    );
pFIFO_reg_0_31_6_9: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => pRdA(4 downto 0),
      ADDRB(4 downto 0) => pRdA(4 downto 0),
      ADDRC(4 downto 0) => pRdA(4 downto 0),
      ADDRD(4 downto 0) => \pWrA_reg__0\(4 downto 0),
      DIA(1 downto 0) => pDataInRaw(7 downto 6),
      DIB(1 downto 0) => pDataInRaw(9 downto 8),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => NLW_pFIFO_reg_0_31_6_9_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_pFIFO_reg_0_31_6_9_DOD_UNCONNECTED(1 downto 0),
      WCLK => rMMCM_LckdRisingFlag_reg,
      WE => pAllVld
    );
\pMeRdy_int_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pBlnkBgnFlag,
      I1 => \^pmerdy_int_reg_0\,
      O => \pMeRdy_int_i_1__0_n_0\
    );
pMeRdy_int_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pMeRdy_int_i_1__0_n_0\,
      Q => \^pmerdy_int_reg_0\,
      R => pAligned_reg
    );
\pRdA[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pRdA(0),
      O => \pRdA[0]_i_1__0_n_0\
    );
\pRdA[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pRdA(0),
      I1 => pRdA(1),
      O => \pRdA[1]_i_1__0_n_0\
    );
\pRdA[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pRdA(2),
      I1 => pRdA(1),
      I2 => pRdA(0),
      O => \pRdA[2]_i_1__0_n_0\
    );
\pRdA[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pRdA(3),
      I1 => pRdA(0),
      I2 => pRdA(1),
      I3 => pRdA(2),
      O => \pRdA[3]_i_1__0_n_0\
    );
\pRdA[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => pRdA(4),
      I1 => pRdA(2),
      I2 => pRdA(1),
      I3 => pRdA(0),
      I4 => pRdA(3),
      O => \pRdA[4]_i_1__0_n_0\
    );
\pRdA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[0]_i_1__0_n_0\,
      Q => pRdA(0),
      R => pAligned_reg
    );
\pRdA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[1]_i_1__0_n_0\,
      Q => pRdA(1),
      R => pAligned_reg
    );
\pRdA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[2]_i_1__0_n_0\,
      Q => pRdA(2),
      R => pAligned_reg
    );
\pRdA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[3]_i_1__0_n_0\,
      Q => pRdA(3),
      R => pAligned_reg
    );
\pRdA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pRdEn,
      D => \pRdA[4]_i_1__0_n_0\,
      Q => pRdA(4),
      R => pAligned_reg
    );
\pRdEn_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBBFAAAAAAA"
    )
        port map (
      I0 => pAllVldBgnFlag,
      I1 => pBlnkBgnFlag,
      I2 => pRdy_2,
      I3 => \^pmerdy_int_reg_0\,
      I4 => pRdy_1,
      I5 => pRdEn,
      O => \pRdEn_i_1__1_n_0\
    );
pRdEn_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pRdEn_i_1__1_n_0\,
      Q => pRdEn,
      R => pAligned_reg
    );
pTokenFlag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pC0,
      I1 => pRdEn,
      O => pTokenFlag0
    );
pTokenFlag_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTokenFlag,
      Q => pTokenFlag_q,
      R => '0'
    );
pTokenFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTokenFlag0,
      Q => pTokenFlag,
      R => '0'
    );
pVde_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pC0,
      O => pVde
    );
\pWrA[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pWrA_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\pWrA[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pWrA_reg__0\(0),
      I1 => \pWrA_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\pWrA[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pWrA_reg__0\(2),
      I1 => \pWrA_reg__0\(1),
      I2 => \pWrA_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\pWrA[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pWrA_reg__0\(3),
      I1 => \pWrA_reg__0\(0),
      I2 => \pWrA_reg__0\(1),
      I3 => \pWrA_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\pWrA[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pWrA_reg__0\(4),
      I1 => \pWrA_reg__0\(2),
      I2 => \pWrA_reg__0\(1),
      I3 => \pWrA_reg__0\(0),
      I4 => \pWrA_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\pWrA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \pWrA_reg__0\(0),
      R => pAligned_reg
    );
\pWrA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \pWrA_reg__0\(1),
      R => pAligned_reg
    );
\pWrA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \pWrA_reg__0\(2),
      R => pAligned_reg
    );
\pWrA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \pWrA_reg__0\(3),
      R => pAligned_reg
    );
\pWrA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \pWrA_reg__0\(4),
      R => pAligned_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter is
  port (
    \Filter.sOut_reg_0\ : out STD_LOGIC;
    dScl_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter is
  signal \Filter.cntPeriods[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Filter.sOut_i_1__0_n_0\ : STD_LOGIC;
  signal \^filter.sout_reg_0\ : STD_LOGIC;
  signal \^dscl_reg\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[2]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[3]_i_3__0\ : label is "soft_lutpair83";
begin
  \Filter.sOut_reg_0\ <= \^filter.sout_reg_0\;
  dScl_reg <= \^dscl_reg\;
\Filter.cntPeriods[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\Filter.cntPeriods[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(0),
      I1 => \Filter.cntPeriods_reg__0\(1),
      O => \Filter.cntPeriods[1]_i_1__0_n_0\
    );
\Filter.cntPeriods[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(1),
      I1 => \Filter.cntPeriods_reg__0\(0),
      I2 => \Filter.cntPeriods_reg__0\(2),
      O => \Filter.cntPeriods[2]_i_1__0_n_0\
    );
\Filter.cntPeriods[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(1),
      I1 => \Filter.cntPeriods_reg__0\(0),
      I2 => \Filter.cntPeriods_reg__0\(2),
      I3 => \Filter.cntPeriods_reg__0\(3),
      O => \Filter.cntPeriods[3]_i_2__0_n_0\
    );
\Filter.cntPeriods[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(2),
      I1 => \Filter.cntPeriods_reg__0\(0),
      I2 => \Filter.cntPeriods_reg__0\(1),
      I3 => \Filter.cntPeriods_reg__0\(3),
      O => \Filter.cntPeriods[3]_i_3__0_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \Filter.cntPeriods[3]_i_2__0_n_0\,
      D => \p_0_in__0\(0),
      Q => \Filter.cntPeriods_reg__0\(0),
      S => SS(0)
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => \Filter.cntPeriods[3]_i_2__0_n_0\,
      D => \Filter.cntPeriods[1]_i_1__0_n_0\,
      Q => \Filter.cntPeriods_reg__0\(1),
      R => SS(0)
    );
\Filter.cntPeriods_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => \Filter.cntPeriods[3]_i_2__0_n_0\,
      D => \Filter.cntPeriods[2]_i_1__0_n_0\,
      Q => \Filter.cntPeriods_reg__0\(2),
      R => SS(0)
    );
\Filter.cntPeriods_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \Filter.cntPeriods[3]_i_2__0_n_0\,
      D => \Filter.cntPeriods[3]_i_3__0_n_0\,
      Q => \Filter.cntPeriods_reg__0\(3),
      S => SS(0)
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \^filter.sout_reg_0\,
      R => '0'
    );
\Filter.sOut_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \^filter.sout_reg_0\,
      I1 => \Filter.cntPeriods_reg__0\(3),
      I2 => \Filter.cntPeriods_reg__0\(2),
      I3 => \Filter.cntPeriods_reg__0\(0),
      I4 => \Filter.cntPeriods_reg__0\(1),
      I5 => \^dscl_reg\,
      O => \Filter.sOut_i_1__0_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__0_n_0\,
      Q => \^dscl_reg\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_6 is
  port (
    sIn_q : out STD_LOGIC;
    sOut : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_6 : entity is "GlitchFilter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_6 is
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[2]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[3]_i_2_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[3]_i_3_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Filter.sOut_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sin_q\ : STD_LOGIC;
  signal \^sout\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[3]_i_3\ : label is "soft_lutpair85";
begin
  sIn_q <= \^sin_q\;
  sOut <= \^sout\;
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(0),
      O => p_0_in(0)
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(0),
      I1 => \Filter.cntPeriods_reg__0\(1),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(1),
      I1 => \Filter.cntPeriods_reg__0\(0),
      I2 => \Filter.cntPeriods_reg__0\(2),
      O => \Filter.cntPeriods[2]_i_1_n_0\
    );
\Filter.cntPeriods[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(1),
      I1 => \Filter.cntPeriods_reg__0\(0),
      I2 => \Filter.cntPeriods_reg__0\(2),
      I3 => \Filter.cntPeriods_reg__0\(3),
      O => \Filter.cntPeriods[3]_i_2_n_0\
    );
\Filter.cntPeriods[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \Filter.cntPeriods_reg__0\(2),
      I1 => \Filter.cntPeriods_reg__0\(0),
      I2 => \Filter.cntPeriods_reg__0\(1),
      I3 => \Filter.cntPeriods_reg__0\(3),
      O => \Filter.cntPeriods[3]_i_3_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \Filter.cntPeriods[3]_i_2_n_0\,
      D => p_0_in(0),
      Q => \Filter.cntPeriods_reg__0\(0),
      S => SS(0)
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => \Filter.cntPeriods[3]_i_2_n_0\,
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => \Filter.cntPeriods_reg__0\(1),
      R => SS(0)
    );
\Filter.cntPeriods_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => \Filter.cntPeriods[3]_i_2_n_0\,
      D => \Filter.cntPeriods[2]_i_1_n_0\,
      Q => \Filter.cntPeriods_reg__0\(2),
      R => SS(0)
    );
\Filter.cntPeriods_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \Filter.cntPeriods[3]_i_2_n_0\,
      D => \Filter.cntPeriods[3]_i_3_n_0\,
      Q => \Filter.cntPeriods_reg__0\(3),
      S => SS(0)
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \^sin_q\,
      R => '0'
    );
\Filter.sOut_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => \^sin_q\,
      I1 => \Filter.cntPeriods_reg__0\(3),
      I2 => \Filter.cntPeriods_reg__0\(2),
      I3 => \Filter.cntPeriods_reg__0\(0),
      I4 => \Filter.cntPeriods_reg__0\(1),
      I5 => \^sout\,
      O => \Filter.sOut_i_1_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1_n_0\,
      Q => \^sout\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    pDataInRaw : out STD_LOGIC_VECTOR ( 9 downto 0 );
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    pIDLY_CE : in STD_LOGIC;
    pIDLY_INC : in STD_LOGIC;
    pIDLY_LD : in STD_LOGIC;
    pBitslip_reg : in STD_LOGIC;
    \rMMCM_Reset_q_reg[0]\ : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES is
  signal icascade1 : STD_LOGIC;
  signal icascade2 : STD_LOGIC;
  signal sDataIn : STD_LOGIC;
  signal sDataInDly : STD_LOGIC;
  signal NLW_DeserializerMaster_O_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_O_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q1_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q2_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q5_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q6_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q7_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q8_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of DeserializerMaster : label is "PRIMITIVE";
  attribute box_type of DeserializerSlave : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of InputBuffer : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of InputBuffer : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of InputBuffer : label is "AUTO";
  attribute box_type of InputBuffer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
begin
DeserializerMaster: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 10,
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
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => pBitslip_reg,
      CE1 => '1',
      CE2 => '1',
      CLK => \rMMCM_Reset_q_reg[0]\,
      CLKB => CLKB,
      CLKDIV => rMMCM_LckdRisingFlag_reg,
      CLKDIVP => '0',
      D => '0',
      DDLY => sDataInDly,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_DeserializerMaster_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => pDataInRaw(9),
      Q2 => pDataInRaw(8),
      Q3 => pDataInRaw(7),
      Q4 => pDataInRaw(6),
      Q5 => pDataInRaw(5),
      Q6 => pDataInRaw(4),
      Q7 => pDataInRaw(3),
      Q8 => pDataInRaw(2),
      RST => \out\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => icascade1,
      SHIFTOUT2 => icascade2
    );
DeserializerSlave: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 10,
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
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "SLAVE",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => pBitslip_reg,
      CE1 => '1',
      CE2 => '1',
      CLK => \rMMCM_Reset_q_reg[0]\,
      CLKB => CLKB,
      CLKDIV => rMMCM_LckdRisingFlag_reg,
      CLKDIVP => '0',
      D => '0',
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_DeserializerSlave_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => NLW_DeserializerSlave_Q1_UNCONNECTED,
      Q2 => NLW_DeserializerSlave_Q2_UNCONNECTED,
      Q3 => pDataInRaw(1),
      Q4 => pDataInRaw(0),
      Q5 => NLW_DeserializerSlave_Q5_UNCONNECTED,
      Q6 => NLW_DeserializerSlave_Q6_UNCONNECTED,
      Q7 => NLW_DeserializerSlave_Q7_UNCONNECTED,
      Q8 => NLW_DeserializerSlave_Q8_UNCONNECTED,
      RST => \out\(0),
      SHIFTIN1 => icascade1,
      SHIFTIN2 => icascade2,
      SHIFTOUT1 => NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED
    );
InputBuffer: unisim.vcomponents.IBUFDS
     port map (
      I => TMDS_Data_p(0),
      IB => TMDS_Data_n(0),
      O => sDataIn
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VARIABLE",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pIDLY_CE,
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => D(4 downto 0),
      DATAIN => '0',
      DATAOUT => sDataInDly,
      IDATAIN => sDataIn,
      INC => pIDLY_INC,
      LD => pIDLY_LD,
      LDPIPEEN => '0',
      REGRST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_11 is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    pDataInRaw : out STD_LOGIC_VECTOR ( 9 downto 0 );
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    pIDLY_CE : in STD_LOGIC;
    pIDLY_INC : in STD_LOGIC;
    pIDLY_LD : in STD_LOGIC;
    pBitslip_reg : in STD_LOGIC;
    \rMMCM_Reset_q_reg[0]\ : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_11 : entity is "InputSERDES";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_11 is
  signal icascade1 : STD_LOGIC;
  signal icascade2 : STD_LOGIC;
  signal sDataIn : STD_LOGIC;
  signal sDataInDly : STD_LOGIC;
  signal NLW_DeserializerMaster_O_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_O_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q1_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q2_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q5_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q6_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q7_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q8_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of DeserializerMaster : label is "PRIMITIVE";
  attribute box_type of DeserializerSlave : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of InputBuffer : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of InputBuffer : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of InputBuffer : label is "AUTO";
  attribute box_type of InputBuffer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
begin
DeserializerMaster: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 10,
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
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => pBitslip_reg,
      CE1 => '1',
      CE2 => '1',
      CLK => \rMMCM_Reset_q_reg[0]\,
      CLKB => CLKB,
      CLKDIV => rMMCM_LckdRisingFlag_reg,
      CLKDIVP => '0',
      D => '0',
      DDLY => sDataInDly,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_DeserializerMaster_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => pDataInRaw(9),
      Q2 => pDataInRaw(8),
      Q3 => pDataInRaw(7),
      Q4 => pDataInRaw(6),
      Q5 => pDataInRaw(5),
      Q6 => pDataInRaw(4),
      Q7 => pDataInRaw(3),
      Q8 => pDataInRaw(2),
      RST => AS(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => icascade1,
      SHIFTOUT2 => icascade2
    );
DeserializerSlave: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 10,
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
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "SLAVE",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => pBitslip_reg,
      CE1 => '1',
      CE2 => '1',
      CLK => \rMMCM_Reset_q_reg[0]\,
      CLKB => CLKB,
      CLKDIV => rMMCM_LckdRisingFlag_reg,
      CLKDIVP => '0',
      D => '0',
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_DeserializerSlave_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => NLW_DeserializerSlave_Q1_UNCONNECTED,
      Q2 => NLW_DeserializerSlave_Q2_UNCONNECTED,
      Q3 => pDataInRaw(1),
      Q4 => pDataInRaw(0),
      Q5 => NLW_DeserializerSlave_Q5_UNCONNECTED,
      Q6 => NLW_DeserializerSlave_Q6_UNCONNECTED,
      Q7 => NLW_DeserializerSlave_Q7_UNCONNECTED,
      Q8 => NLW_DeserializerSlave_Q8_UNCONNECTED,
      RST => AS(0),
      SHIFTIN1 => icascade1,
      SHIFTIN2 => icascade2,
      SHIFTOUT1 => NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED
    );
InputBuffer: unisim.vcomponents.IBUFDS
     port map (
      I => TMDS_Data_p(0),
      IB => TMDS_Data_n(0),
      O => sDataIn
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VARIABLE",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pIDLY_CE,
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => D(4 downto 0),
      DATAIN => '0',
      DATAOUT => sDataInDly,
      IDATAIN => sDataIn,
      INC => pIDLY_INC,
      LD => pIDLY_LD,
      LDPIPEEN => '0',
      REGRST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_18 is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    pDataInRaw : out STD_LOGIC_VECTOR ( 9 downto 0 );
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    pIDLY_CE : in STD_LOGIC;
    pIDLY_INC : in STD_LOGIC;
    pIDLY_LD : in STD_LOGIC;
    pBitslip_reg : in STD_LOGIC;
    \rMMCM_Reset_q_reg[0]\ : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_18 : entity is "InputSERDES";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_18 is
  signal icascade1 : STD_LOGIC;
  signal icascade2 : STD_LOGIC;
  signal sDataIn : STD_LOGIC;
  signal sDataInDly : STD_LOGIC;
  signal NLW_DeserializerMaster_O_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_O_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q1_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q2_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q5_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q6_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q7_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_Q8_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of DeserializerMaster : label is "PRIMITIVE";
  attribute box_type of DeserializerSlave : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of InputBuffer : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of InputBuffer : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of InputBuffer : label is "AUTO";
  attribute box_type of InputBuffer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
begin
DeserializerMaster: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 10,
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
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => pBitslip_reg,
      CE1 => '1',
      CE2 => '1',
      CLK => \rMMCM_Reset_q_reg[0]\,
      CLKB => CLKB,
      CLKDIV => rMMCM_LckdRisingFlag_reg,
      CLKDIVP => '0',
      D => '0',
      DDLY => sDataInDly,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_DeserializerMaster_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => pDataInRaw(9),
      Q2 => pDataInRaw(8),
      Q3 => pDataInRaw(7),
      Q4 => pDataInRaw(6),
      Q5 => pDataInRaw(5),
      Q6 => pDataInRaw(4),
      Q7 => pDataInRaw(3),
      Q8 => pDataInRaw(2),
      RST => AS(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => icascade1,
      SHIFTOUT2 => icascade2
    );
DeserializerSlave: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 10,
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
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "SLAVE",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => pBitslip_reg,
      CE1 => '1',
      CE2 => '1',
      CLK => \rMMCM_Reset_q_reg[0]\,
      CLKB => CLKB,
      CLKDIV => rMMCM_LckdRisingFlag_reg,
      CLKDIVP => '0',
      D => '0',
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_DeserializerSlave_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => NLW_DeserializerSlave_Q1_UNCONNECTED,
      Q2 => NLW_DeserializerSlave_Q2_UNCONNECTED,
      Q3 => pDataInRaw(1),
      Q4 => pDataInRaw(0),
      Q5 => NLW_DeserializerSlave_Q5_UNCONNECTED,
      Q6 => NLW_DeserializerSlave_Q6_UNCONNECTED,
      Q7 => NLW_DeserializerSlave_Q7_UNCONNECTED,
      Q8 => NLW_DeserializerSlave_Q8_UNCONNECTED,
      RST => AS(0),
      SHIFTIN1 => icascade1,
      SHIFTIN2 => icascade2,
      SHIFTOUT1 => NLW_DeserializerSlave_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_DeserializerSlave_SHIFTOUT2_UNCONNECTED
    );
InputBuffer: unisim.vcomponents.IBUFDS
     port map (
      I => TMDS_Data_p(0),
      IB => TMDS_Data_n(0),
      O => sDataIn
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VARIABLE",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => pIDLY_CE,
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => D(4 downto 0),
      DATAIN => '0',
      DATAOUT => sDataInDly,
      IDATAIN => sDataIn,
      INC => pIDLY_INC,
      LD => pIDLY_LD,
      LDPIPEEN => '0',
      REGRST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign is
  port (
    pIDLY_CE : out STD_LOGIC;
    pIDLY_INC : out STD_LOGIC;
    pIDLY_LD : out STD_LOGIC;
    pVld_2 : out STD_LOGIC;
    pAlignErr_q_reg : out STD_LOGIC;
    iIn_q_reg : out STD_LOGIC;
    pAllVldBgnFlag0 : out STD_LOGIC;
    pBitslip_reg : out STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pVld_1 : in STD_LOGIC;
    pVld_0 : in STD_LOGIC;
    pAllVld_q : in STD_LOGIC;
    pAlignErr_q : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    pIDLY_CE_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign is
  signal iIn_q_i_2_n_0 : STD_LOGIC;
  signal \^palignerr_q_reg\ : STD_LOGIC;
  signal pAligned_i_1_n_0 : STD_LOGIC;
  signal pAligned_i_2_n_0 : STD_LOGIC;
  signal pBlankBegin : STD_LOGIC;
  signal pBlankBegin0 : STD_LOGIC;
  signal \pCenterTap[0]_i_1_n_0\ : STD_LOGIC;
  signal \pCenterTap[1]_i_1_n_0\ : STD_LOGIC;
  signal \pCenterTap[2]_i_1_n_0\ : STD_LOGIC;
  signal \pCenterTap[3]_i_1_n_0\ : STD_LOGIC;
  signal \pCenterTap[4]_i_1_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_1_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_2_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_3_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_5_n_0\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[0]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[1]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[2]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[3]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[4]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[5]\ : STD_LOGIC;
  signal \pCtlTknCnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \pCtlTknCnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \pCtlTknCnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal pCtlTknOvf_i_1_n_0 : STD_LOGIC;
  signal pCtlTknOvf_reg_n_0 : STD_LOGIC;
  signal pCtlTknRst : STD_LOGIC;
  signal pDataQ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pDelayCenter : STD_LOGIC;
  signal pDelayCenter_i_1_n_0 : STD_LOGIC;
  signal pDelayCenter_i_2_n_0 : STD_LOGIC;
  signal pDelayOvf : STD_LOGIC;
  signal pDelayOvf_i_1_n_0 : STD_LOGIC;
  signal pDelayWaitCnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pDelayWaitCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_4_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_5_n_0\ : STD_LOGIC;
  signal pDelayWaitOvf : STD_LOGIC;
  signal pDelayWaitOvf_i_1_n_0 : STD_LOGIC;
  signal pError_i_1_n_0 : STD_LOGIC;
  signal \pEyeOpenCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal pEyeOpenRst : STD_LOGIC;
  signal pFoundEyeFlag : STD_LOGIC;
  signal pFoundEyeFlag_i_1_n_0 : STD_LOGIC;
  signal pFoundEyeFlag_i_2_n_0 : STD_LOGIC;
  signal pFoundEyeFlag_i_3_n_0 : STD_LOGIC;
  signal pFoundEyeFlag_i_4_n_0 : STD_LOGIC;
  signal pFoundEyeFlag_i_5_n_0 : STD_LOGIC;
  signal pFoundJtrFlag : STD_LOGIC;
  signal pFoundJtrFlag_i_1_n_0 : STD_LOGIC;
  signal pFoundJtrFlag_i_2_n_0 : STD_LOGIC;
  signal pIDLY_CE_i_1_n_0 : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \^pidly_inc\ : STD_LOGIC;
  signal pIDLY_INC_1 : STD_LOGIC;
  signal pIDLY_INC_i_1_n_0 : STD_LOGIC;
  signal pIDLY_INC_i_3_n_0 : STD_LOGIC;
  signal pIDLY_LD_i_1_n_0 : STD_LOGIC;
  signal pState : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \pStateNxt__0_n_0\ : STD_LOGIC;
  signal \pStateNxt__1_n_0\ : STD_LOGIC;
  signal \pStateNxt__2_n_0\ : STD_LOGIC;
  signal \pStateNxt__3_n_0\ : STD_LOGIC;
  signal \pStateNxt__4\ : STD_LOGIC;
  signal pStateNxt_n_0 : STD_LOGIC;
  signal \pState[0]_i_1_n_0\ : STD_LOGIC;
  signal \pState[10]_i_2_n_0\ : STD_LOGIC;
  signal \pState[10]_i_3_n_0\ : STD_LOGIC;
  signal \pState[10]_i_4_n_0\ : STD_LOGIC;
  signal \pState[10]_i_5_n_0\ : STD_LOGIC;
  signal \pState[10]_i_6_n_0\ : STD_LOGIC;
  signal \pState[10]_i_7_n_0\ : STD_LOGIC;
  signal \pState[10]_i_8_n_0\ : STD_LOGIC;
  signal \pState[1]_i_1_n_0\ : STD_LOGIC;
  signal \pState[2]_i_1_n_0\ : STD_LOGIC;
  signal \pState[3]_i_1_n_0\ : STD_LOGIC;
  signal \pState[4]_i_1_n_0\ : STD_LOGIC;
  signal \pState[5]_i_1_n_0\ : STD_LOGIC;
  signal \pState[5]_i_2_n_0\ : STD_LOGIC;
  signal \pState[6]_i_1_n_0\ : STD_LOGIC;
  signal \pState[7]_i_1_n_0\ : STD_LOGIC;
  signal \pState[8]_i_1_n_0\ : STD_LOGIC;
  signal \pState[9]_i_1_n_0\ : STD_LOGIC;
  signal pTknFlag : STD_LOGIC;
  signal pTknFlag0 : STD_LOGIC;
  signal pTknFlagQ : STD_LOGIC;
  signal pTknFlag_i_2_n_0 : STD_LOGIC;
  signal pTknFlag_i_3_n_0 : STD_LOGIC;
  signal \^pvld_2\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pCenterTap[0]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \pCtlTknCnt[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \pCtlTknCnt[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \pCtlTknCnt[2]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \pCtlTknCnt[3]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \pCtlTknCnt[4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \pCtlTknCnt[6]_i_4\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \pDelayWaitCnt[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \pDelayWaitCnt[1]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \pDelayWaitCnt[1]_i_5\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of pDelayWaitOvf_i_1 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[0]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of pFoundEyeFlag_i_3 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of pFoundEyeFlag_i_4 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of pFoundEyeFlag_i_5 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of pFoundJtrFlag_i_2 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of pIDLY_INC_i_2 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of pIDLY_LD_i_1 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of pStateNxt : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \pStateNxt__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \pState[10]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \pState[10]_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \pState[10]_i_5\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \pState[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \pState[3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \pState[4]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \pState[5]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \pState[6]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \pState[7]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pState[9]_i_1\ : label is "soft_lutpair69";
begin
  pAlignErr_q_reg <= \^palignerr_q_reg\;
  pIDLY_INC <= \^pidly_inc\;
  pVld_2 <= \^pvld_2\;
iIn_q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEF"
    )
        port map (
      I0 => iIn_q_i_2_n_0,
      I1 => pState(3),
      I2 => pState(2),
      I3 => pState(1),
      I4 => pState(0),
      I5 => pState(4),
      O => iIn_q_reg
    );
iIn_q_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pState(7),
      I1 => pState(5),
      I2 => pState(10),
      I3 => pState(9),
      I4 => pState(6),
      I5 => pState(8),
      O => iIn_q_i_2_n_0
    );
pAligned_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => pState(6),
      I1 => pState(8),
      I2 => pAligned_i_2_n_0,
      I3 => pState(9),
      I4 => pState(0),
      I5 => pState(10),
      O => pAligned_i_1_n_0
    );
pAligned_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pState(3),
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(4),
      I4 => pState(7),
      I5 => pState(5),
      O => pAligned_i_2_n_0
    );
pAligned_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pAligned_i_1_n_0,
      Q => \^pvld_2\,
      R => '0'
    );
pAllVldBgnFlag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => pVld_1,
      I1 => \^pvld_2\,
      I2 => pVld_0,
      I3 => pAllVld_q,
      O => pAllVldBgnFlag0
    );
pBitslip_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^palignerr_q_reg\,
      I1 => pAlignErr_q,
      O => pBitslip_reg
    );
pBlankBegin_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pTknFlag,
      I1 => pTknFlagQ,
      O => pBlankBegin0
    );
pBlankBegin_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pBlankBegin0,
      Q => pBlankBegin,
      R => '0'
    );
\pCenterTap[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \pCenterTap_reg_n_0_[0]\,
      I1 => \pCenterTap[5]_i_3_n_0\,
      I2 => pEyeOpenRst,
      O => \pCenterTap[0]_i_1_n_0\
    );
\pCenterTap[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[1]\,
      I3 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[1]_i_1_n_0\
    );
\pCenterTap[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[2]\,
      I3 => \pCenterTap_reg_n_0_[1]\,
      I4 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[2]_i_1_n_0\
    );
\pCenterTap[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[0]\,
      I3 => \pCenterTap_reg_n_0_[1]\,
      I4 => \pCenterTap_reg_n_0_[2]\,
      I5 => \pCenterTap_reg_n_0_[3]\,
      O => \pCenterTap[3]_i_1_n_0\
    );
\pCenterTap[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[4]\,
      I3 => \pCenterTap[5]_i_5_n_0\,
      O => \pCenterTap[4]_i_1_n_0\
    );
\pCenterTap[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pCenterTap[5]_i_3_n_0\,
      I1 => pEyeOpenRst,
      O => \pCenterTap[5]_i_1_n_0\
    );
\pCenterTap[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[5]\,
      I3 => \pCenterTap[5]_i_5_n_0\,
      I4 => \pCenterTap_reg_n_0_[4]\,
      O => \pCenterTap[5]_i_2_n_0\
    );
\pCenterTap[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => iIn_q_i_2_n_0,
      I1 => pState(3),
      I2 => pState(4),
      I3 => pState(0),
      I4 => pState(1),
      I5 => pState(2),
      O => \pCenterTap[5]_i_3_n_0\
    );
\pCenterTap[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000310"
    )
        port map (
      I0 => pFoundEyeFlag,
      I1 => pFoundJtrFlag_i_2_n_0,
      I2 => pState(4),
      I3 => pState(0),
      I4 => pState(3),
      I5 => iIn_q_i_2_n_0,
      O => pEyeOpenRst
    );
\pCenterTap[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \pCenterTap_reg_n_0_[3]\,
      I1 => \pCenterTap_reg_n_0_[2]\,
      I2 => \pCenterTap_reg_n_0_[1]\,
      I3 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[5]_i_5_n_0\
    );
\pCenterTap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pCenterTap[0]_i_1_n_0\,
      Q => \pCenterTap_reg_n_0_[0]\,
      R => '0'
    );
\pCenterTap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1_n_0\,
      D => \pCenterTap[1]_i_1_n_0\,
      Q => \pCenterTap_reg_n_0_[1]\,
      R => '0'
    );
\pCenterTap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1_n_0\,
      D => \pCenterTap[2]_i_1_n_0\,
      Q => \pCenterTap_reg_n_0_[2]\,
      R => '0'
    );
\pCenterTap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1_n_0\,
      D => \pCenterTap[3]_i_1_n_0\,
      Q => \pCenterTap_reg_n_0_[3]\,
      R => '0'
    );
\pCenterTap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1_n_0\,
      D => \pCenterTap[4]_i_1_n_0\,
      Q => \pCenterTap_reg_n_0_[4]\,
      R => '0'
    );
\pCenterTap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1_n_0\,
      D => \pCenterTap[5]_i_2_n_0\,
      Q => \pCenterTap_reg_n_0_[5]\,
      R => '0'
    );
\pCtlTknCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(0),
      O => p_0_in(0)
    );
\pCtlTknCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(0),
      I1 => \pCtlTknCnt_reg__0\(1),
      O => p_0_in(1)
    );
\pCtlTknCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(2),
      I1 => \pCtlTknCnt_reg__0\(0),
      I2 => \pCtlTknCnt_reg__0\(1),
      O => p_0_in(2)
    );
\pCtlTknCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(3),
      I1 => \pCtlTknCnt_reg__0\(1),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(2),
      O => p_0_in(3)
    );
\pCtlTknCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(4),
      I1 => \pCtlTknCnt_reg__0\(2),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(1),
      I4 => \pCtlTknCnt_reg__0\(3),
      O => p_0_in(4)
    );
\pCtlTknCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(5),
      I1 => \pCtlTknCnt_reg__0\(2),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(1),
      I4 => \pCtlTknCnt_reg__0\(3),
      I5 => \pCtlTknCnt_reg__0\(4),
      O => p_0_in(5)
    );
\pCtlTknCnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => pState(2),
      I1 => pState(1),
      I2 => pState(3),
      I3 => pState(5),
      I4 => pState(4),
      I5 => \pCtlTknCnt[6]_i_3_n_0\,
      O => pCtlTknRst
    );
\pCtlTknCnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(6),
      I1 => \pCtlTknCnt[6]_i_4_n_0\,
      I2 => \pCtlTknCnt_reg__0\(5),
      O => p_0_in(6)
    );
\pCtlTknCnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pState(7),
      I1 => pState(8),
      I2 => pState(6),
      I3 => pState(9),
      I4 => pState(0),
      I5 => pState(10),
      O => \pCtlTknCnt[6]_i_3_n_0\
    );
\pCtlTknCnt[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(4),
      I1 => \pCtlTknCnt_reg__0\(3),
      I2 => \pCtlTknCnt_reg__0\(1),
      I3 => \pCtlTknCnt_reg__0\(0),
      I4 => \pCtlTknCnt_reg__0\(2),
      O => \pCtlTknCnt[6]_i_4_n_0\
    );
\pCtlTknCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(0),
      Q => \pCtlTknCnt_reg__0\(0),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(1),
      Q => \pCtlTknCnt_reg__0\(1),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(2),
      Q => \pCtlTknCnt_reg__0\(2),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(3),
      Q => \pCtlTknCnt_reg__0\(3),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(4),
      Q => \pCtlTknCnt_reg__0\(4),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(5),
      Q => \pCtlTknCnt_reg__0\(5),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(6),
      Q => \pCtlTknCnt_reg__0\(6),
      R => pCtlTknRst
    );
pCtlTknOvf_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000AAAA"
    )
        port map (
      I0 => pCtlTknOvf_reg_n_0,
      I1 => \pCtlTknCnt_reg__0\(6),
      I2 => \pCtlTknCnt[6]_i_4_n_0\,
      I3 => \pCtlTknCnt_reg__0\(5),
      I4 => p_0_in_0,
      O => pCtlTknOvf_i_1_n_0
    );
pCtlTknOvf_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \pCtlTknCnt[6]_i_3_n_0\,
      I1 => pState(4),
      I2 => pState(5),
      I3 => pState(3),
      I4 => pState(1),
      I5 => pState(2),
      O => p_0_in_0
    );
pCtlTknOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pCtlTknOvf_i_1_n_0,
      Q => pCtlTknOvf_reg_n_0,
      R => '0'
    );
\pDataQ_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(0),
      Q => pDataQ(0),
      R => '0'
    );
\pDataQ_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(1),
      Q => pDataQ(1),
      R => '0'
    );
\pDataQ_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(2),
      Q => pDataQ(2),
      R => '0'
    );
\pDataQ_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(3),
      Q => pDataQ(3),
      R => '0'
    );
\pDataQ_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(4),
      Q => pDataQ(4),
      R => '0'
    );
\pDataQ_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(5),
      Q => pDataQ(5),
      R => '0'
    );
\pDataQ_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(6),
      Q => pDataQ(6),
      R => '0'
    );
\pDataQ_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(7),
      Q => pDataQ(7),
      R => '0'
    );
\pDataQ_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(8),
      Q => pDataQ(8),
      R => '0'
    );
pDelayCenter_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => pDelayCenter_i_2_n_0,
      I1 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I2 => \pCenterTap_reg_n_0_[5]\,
      I3 => \pCenterTap_reg_n_0_[4]\,
      I4 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      O => pDelayCenter_i_1_n_0
    );
pDelayCenter_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I1 => \pCenterTap_reg_n_0_[2]\,
      I2 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      I3 => \pCenterTap_reg_n_0_[3]\,
      I4 => \pCenterTap_reg_n_0_[1]\,
      I5 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      O => pDelayCenter_i_2_n_0
    );
pDelayCenter_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDelayCenter_i_1_n_0,
      Q => pDelayCenter,
      R => '0'
    );
pDelayOvf_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I1 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      I2 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I3 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      I4 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      O => pDelayOvf_i_1_n_0
    );
pDelayOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDelayOvf_i_1_n_0,
      Q => pDelayOvf,
      R => '0'
    );
\pDelayWaitCnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => pDelayWaitCnt(0),
      I1 => p_2_in,
      O => \pDelayWaitCnt[0]_i_1_n_0\
    );
\pDelayWaitCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => pDelayWaitCnt(1),
      I1 => pDelayWaitCnt(0),
      I2 => p_2_in,
      O => \pDelayWaitCnt[1]_i_1_n_0\
    );
\pDelayWaitCnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010100"
    )
        port map (
      I0 => \pState[10]_i_7_n_0\,
      I1 => \pDelayWaitCnt[1]_i_3_n_0\,
      I2 => \pDelayWaitCnt[1]_i_4_n_0\,
      I3 => pState(8),
      I4 => pState(6),
      I5 => \pDelayWaitCnt[1]_i_5_n_0\,
      O => p_2_in
    );
\pDelayWaitCnt[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pState(5),
      I1 => pState(7),
      O => \pDelayWaitCnt[1]_i_3_n_0\
    );
\pDelayWaitCnt[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pState(10),
      I1 => pState(9),
      O => \pDelayWaitCnt[1]_i_4_n_0\
    );
\pDelayWaitCnt[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pState(3),
      I1 => pState(1),
      I2 => pState(2),
      O => \pDelayWaitCnt[1]_i_5_n_0\
    );
\pDelayWaitCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayWaitCnt[0]_i_1_n_0\,
      Q => pDelayWaitCnt(0),
      R => '0'
    );
\pDelayWaitCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayWaitCnt[1]_i_1_n_0\,
      Q => pDelayWaitCnt(1),
      R => '0'
    );
pDelayWaitOvf_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30AA"
    )
        port map (
      I0 => pDelayWaitOvf,
      I1 => pDelayWaitCnt(0),
      I2 => pDelayWaitCnt(1),
      I3 => p_2_in,
      O => pDelayWaitOvf_i_1_n_0
    );
pDelayWaitOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDelayWaitOvf_i_1_n_0,
      Q => pDelayWaitOvf,
      R => '0'
    );
pError_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => pState(6),
      I1 => pState(8),
      I2 => pAligned_i_2_n_0,
      I3 => pState(0),
      I4 => pState(10),
      I5 => pState(9),
      O => pError_i_1_n_0
    );
pError_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pError_i_1_n_0,
      Q => \^palignerr_q_reg\,
      R => '0'
    );
\pEyeOpenCnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \pCenterTap[5]_i_3_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => pEyeOpenRst,
      O => \pEyeOpenCnt[0]_i_1_n_0\
    );
\pEyeOpenCnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \pCenterTap[5]_i_3_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => \pEyeOpenCnt_reg_n_0_[1]\,
      I3 => pEyeOpenRst,
      O => \pEyeOpenCnt[1]_i_1_n_0\
    );
\pEyeOpenCnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \pCenterTap[5]_i_3_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[1]\,
      I2 => \pEyeOpenCnt_reg_n_0_[0]\,
      I3 => \pEyeOpenCnt_reg_n_0_[2]\,
      I4 => pEyeOpenRst,
      O => \pEyeOpenCnt[2]_i_1_n_0\
    );
\pEyeOpenCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[3]\,
      I1 => \pEyeOpenCnt_reg_n_0_[2]\,
      I2 => \pEyeOpenCnt_reg_n_0_[0]\,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pCenterTap[5]_i_3_n_0\,
      I5 => pEyeOpenRst,
      O => \pEyeOpenCnt[3]_i_1_n_0\
    );
\pEyeOpenCnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \pEyeOpenCnt[4]_i_2_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[3]\,
      I2 => \pEyeOpenCnt_reg_n_0_[4]\,
      I3 => pEyeOpenRst,
      O => \pEyeOpenCnt[4]_i_1_n_0\
    );
\pEyeOpenCnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => pFoundEyeFlag_i_3_n_0,
      I1 => pState(3),
      I2 => iIn_q_i_2_n_0,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pEyeOpenCnt_reg_n_0_[0]\,
      I5 => \pEyeOpenCnt_reg_n_0_[2]\,
      O => \pEyeOpenCnt[4]_i_2_n_0\
    );
\pEyeOpenCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[0]_i_1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[0]\,
      R => '0'
    );
\pEyeOpenCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[1]_i_1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[1]\,
      R => '0'
    );
\pEyeOpenCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[2]_i_1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[2]\,
      R => '0'
    );
\pEyeOpenCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[3]_i_1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[3]\,
      R => '0'
    );
\pEyeOpenCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[4]_i_1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[4]\,
      R => '0'
    );
pFoundEyeFlag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBFB0000AA0A"
    )
        port map (
      I0 => pFoundEyeFlag_i_2_n_0,
      I1 => pState(0),
      I2 => pFoundEyeFlag_i_3_n_0,
      I3 => pFoundEyeFlag_i_4_n_0,
      I4 => iIn_q_i_2_n_0,
      I5 => pFoundEyeFlag,
      O => pFoundEyeFlag_i_1_n_0
    );
pFoundEyeFlag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000030008000000"
    )
        port map (
      I0 => pFoundJtrFlag,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => pFoundEyeFlag_i_5_n_0,
      I3 => pState(3),
      I4 => \pEyeOpenCnt_reg_n_0_[1]\,
      I5 => \pEyeOpenCnt_reg_n_0_[4]\,
      O => pFoundEyeFlag_i_2_n_0
    );
pFoundEyeFlag_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(4),
      I1 => pState(0),
      I2 => pState(1),
      I3 => pState(2),
      O => pFoundEyeFlag_i_3_n_0
    );
pFoundEyeFlag_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pState(4),
      I1 => pState(2),
      I2 => pState(1),
      I3 => pState(3),
      O => pFoundEyeFlag_i_4_n_0
    );
pFoundEyeFlag_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[2]\,
      I1 => \pEyeOpenCnt_reg_n_0_[3]\,
      O => pFoundEyeFlag_i_5_n_0
    );
pFoundEyeFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pFoundEyeFlag_i_1_n_0,
      Q => pFoundEyeFlag,
      R => '0'
    );
pFoundJtrFlag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABA8AA"
    )
        port map (
      I0 => pFoundJtrFlag,
      I1 => iIn_q_i_2_n_0,
      I2 => pState(3),
      I3 => pState(0),
      I4 => pState(4),
      I5 => pFoundJtrFlag_i_2_n_0,
      O => pFoundJtrFlag_i_1_n_0
    );
pFoundJtrFlag_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pState(2),
      I1 => pState(1),
      O => pFoundJtrFlag_i_2_n_0
    );
pFoundJtrFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pFoundJtrFlag_i_1_n_0,
      Q => pFoundJtrFlag,
      R => '0'
    );
pIDLY_CE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555030000000000"
    )
        port map (
      I0 => \pCtlTknCnt[6]_i_3_n_0\,
      I1 => \pState[10]_i_3_n_0\,
      I2 => pState(0),
      I3 => pState(7),
      I4 => pState(5),
      I5 => pFoundEyeFlag_i_4_n_0,
      O => pIDLY_CE_i_1_n_0
    );
pIDLY_CE_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_i_1_n_0,
      Q => pIDLY_CE,
      R => '0'
    );
\pIDLY_CNT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(0),
      Q => \pIDLY_CNT_Q_reg_n_0_[0]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(1),
      Q => \pIDLY_CNT_Q_reg_n_0_[1]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(2),
      Q => \pIDLY_CNT_Q_reg_n_0_[2]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(3),
      Q => \pIDLY_CNT_Q_reg_n_0_[3]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(4),
      Q => \pIDLY_CNT_Q_reg_n_0_[4]\,
      R => '0'
    );
pIDLY_INC_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => pIDLY_INC_1,
      I1 => \^pidly_inc\,
      I2 => pIDLY_INC_i_3_n_0,
      O => pIDLY_INC_i_1_n_0
    );
pIDLY_INC_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => pFoundEyeFlag_i_4_n_0,
      I1 => pState(5),
      I2 => pState(7),
      I3 => pState(0),
      I4 => \pState[10]_i_3_n_0\,
      O => pIDLY_INC_1
    );
pIDLY_INC_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => pState(3),
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(4),
      I4 => pState(5),
      I5 => \pCtlTknCnt[6]_i_3_n_0\,
      O => pIDLY_INC_i_3_n_0
    );
pIDLY_INC_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_INC_i_1_n_0,
      Q => \^pidly_inc\,
      R => '0'
    );
pIDLY_LD_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => pState(5),
      I1 => pState(7),
      I2 => pFoundEyeFlag_i_4_n_0,
      I3 => pState(0),
      I4 => \pState[10]_i_3_n_0\,
      O => pIDLY_LD_i_1_n_0
    );
pIDLY_LD_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_LD_i_1_n_0,
      Q => pIDLY_LD,
      R => '0'
    );
pStateNxt: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => pState(0),
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(3),
      I4 => pState(4),
      O => pStateNxt_n_0
    );
\pStateNxt__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEE8"
    )
        port map (
      I0 => pState(0),
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(3),
      I4 => pState(4),
      O => \pStateNxt__0_n_0\
    );
\pStateNxt__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010116"
    )
        port map (
      I0 => pState(5),
      I1 => pState(6),
      I2 => pState(7),
      I3 => pState(8),
      I4 => pState(9),
      I5 => pState(10),
      O => \pStateNxt__1_n_0\
    );
\pStateNxt__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFEE8"
    )
        port map (
      I0 => pState(5),
      I1 => pState(6),
      I2 => pState(7),
      I3 => pState(8),
      I4 => pState(9),
      I5 => pState(10),
      O => \pStateNxt__2_n_0\
    );
\pStateNxt__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => pStateNxt_n_0,
      I1 => \pStateNxt__0_n_0\,
      I2 => \pStateNxt__1_n_0\,
      I3 => \pStateNxt__2_n_0\,
      O => \pStateNxt__3_n_0\
    );
\pState[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      O => \pState[0]_i_1_n_0\
    );
\pState[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
        port map (
      I0 => \pState[10]_i_3_n_0\,
      I1 => pState(2),
      I2 => pState(1),
      I3 => \pState[10]_i_4_n_0\,
      I4 => \pState[10]_i_5_n_0\,
      I5 => \pState[10]_i_6_n_0\,
      O => \pStateNxt__4\
    );
\pState[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(6),
      I2 => pDelayOvf,
      O => \pState[10]_i_2_n_0\
    );
\pState[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(8),
      I1 => pState(6),
      I2 => pState(9),
      I3 => pState(10),
      O => \pState[10]_i_3_n_0\
    );
\pState[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFECFC"
    )
        port map (
      I0 => pCtlTknOvf_reg_n_0,
      I1 => \pState[10]_i_7_n_0\,
      I2 => pState(2),
      I3 => pTknFlagQ,
      I4 => pState(3),
      I5 => pState(5),
      O => \pState[10]_i_4_n_0\
    );
\pState[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA80"
    )
        port map (
      I0 => pState(8),
      I1 => pState(10),
      I2 => pState(9),
      I3 => pState(6),
      I4 => pState(7),
      O => \pState[10]_i_5_n_0\
    );
\pState[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBABBBABBAAB"
    )
        port map (
      I0 => \pState[10]_i_8_n_0\,
      I1 => \pState[10]_i_3_n_0\,
      I2 => pState(2),
      I3 => pState(1),
      I4 => pBlankBegin,
      I5 => \out\(0),
      O => \pState[10]_i_6_n_0\
    );
\pState[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pState(0),
      I1 => pState(4),
      O => \pState[10]_i_7_n_0\
    );
\pState[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAFFFCFCA8"
    )
        port map (
      I0 => pDelayWaitOvf,
      I1 => pState(7),
      I2 => pState(6),
      I3 => pState(9),
      I4 => pState(10),
      I5 => pState(8),
      O => \pState[10]_i_8_n_0\
    );
\pState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08AAAAAA08AA08"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(2),
      I2 => pTknFlagQ,
      I3 => pState(0),
      I4 => pDelayOvf,
      I5 => pState(6),
      O => \pState[1]_i_1_n_0\
    );
\pState[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(1),
      I2 => pBlankBegin,
      O => \pState[2]_i_1_n_0\
    );
\pState[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pTknFlagQ,
      I2 => pState(2),
      O => \pState[3]_i_1_n_0\
    );
\pState[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0808"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(3),
      I2 => \pState[5]_i_2_n_0\,
      I3 => pBlankBegin,
      I4 => pState(1),
      O => \pState[4]_i_1_n_0\
    );
\pState[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => \pState[5]_i_2_n_0\,
      I2 => pState(3),
      I3 => pFoundEyeFlag,
      I4 => pState(4),
      O => \pState[5]_i_1_n_0\
    );
\pState[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[3]\,
      I1 => \pEyeOpenCnt_reg_n_0_[2]\,
      I2 => \pEyeOpenCnt_reg_n_0_[4]\,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pEyeOpenCnt_reg_n_0_[0]\,
      O => \pState[5]_i_2_n_0\
    );
\pState[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(5),
      O => \pState[6]_i_1_n_0\
    );
\pState[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA080808"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(8),
      I2 => pDelayCenter,
      I3 => pFoundEyeFlag,
      I4 => pState(4),
      O => \pState[7]_i_1_n_0\
    );
\pState[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(7),
      O => \pState[8]_i_1_n_0\
    );
\pState[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(8),
      I2 => pDelayCenter,
      O => \pState[9]_i_1_n_0\
    );
\pState_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[0]_i_1_n_0\,
      Q => pState(0),
      S => SR(0)
    );
\pState_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[10]_i_2_n_0\,
      Q => pState(10),
      R => SR(0)
    );
\pState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[1]_i_1_n_0\,
      Q => pState(1),
      R => SR(0)
    );
\pState_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[2]_i_1_n_0\,
      Q => pState(2),
      R => SR(0)
    );
\pState_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[3]_i_1_n_0\,
      Q => pState(3),
      R => SR(0)
    );
\pState_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[4]_i_1_n_0\,
      Q => pState(4),
      R => SR(0)
    );
\pState_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[5]_i_1_n_0\,
      Q => pState(5),
      R => SR(0)
    );
\pState_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[6]_i_1_n_0\,
      Q => pState(6),
      R => SR(0)
    );
\pState_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[7]_i_1_n_0\,
      Q => pState(7),
      R => SR(0)
    );
\pState_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[8]_i_1_n_0\,
      Q => pState(8),
      R => SR(0)
    );
\pState_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[9]_i_1_n_0\,
      Q => pState(9),
      R => SR(0)
    );
pTknFlagQ_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTknFlag,
      Q => pTknFlagQ,
      R => '0'
    );
pTknFlag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30000808"
    )
        port map (
      I0 => pTknFlag_i_2_n_0,
      I1 => pDataQ(8),
      I2 => pDataQ(0),
      I3 => pTknFlag_i_3_n_0,
      I4 => pDataQ(3),
      O => pTknFlag0
    );
pTknFlag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => pDataQ(4),
      I1 => pDataQ(5),
      I2 => pDataQ(7),
      I3 => pDataQ(1),
      I4 => pDataQ(2),
      I5 => pDataQ(6),
      O => pTknFlag_i_2_n_0
    );
pTknFlag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pDataQ(4),
      I1 => pDataQ(5),
      I2 => pDataQ(7),
      I3 => pDataQ(1),
      I4 => pDataQ(2),
      I5 => pDataQ(6),
      O => pTknFlag_i_3_n_0
    );
pTknFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTknFlag0,
      Q => pTknFlag,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_12 is
  port (
    pIDLY_CE : out STD_LOGIC;
    pIDLY_INC : out STD_LOGIC;
    pIDLY_LD : out STD_LOGIC;
    pVld_1 : out STD_LOGIC;
    pAlignErr_q_reg : out STD_LOGIC;
    iIn_q_reg : out STD_LOGIC;
    pMeRdy_int_reg : out STD_LOGIC;
    pBitslip_reg : out STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pVld_2 : in STD_LOGIC;
    pVld_0 : in STD_LOGIC;
    pAlignErr_q : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    pIDLY_CE_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_12 : entity is "PhaseAlign";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_12 is
  signal \iIn_q_i_2__0_n_0\ : STD_LOGIC;
  signal \^palignerr_q_reg\ : STD_LOGIC;
  signal \pAligned_i_1__0_n_0\ : STD_LOGIC;
  signal \pAligned_i_2__0_n_0\ : STD_LOGIC;
  signal pBlankBegin : STD_LOGIC;
  signal pBlankBegin0 : STD_LOGIC;
  signal \pCenterTap[0]_i_1_n_0\ : STD_LOGIC;
  signal \pCenterTap[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pCenterTap[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pCenterTap[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pCenterTap[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[0]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[1]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[2]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[3]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[4]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[5]\ : STD_LOGIC;
  signal \pCtlTknCnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \pCtlTknCnt[6]_i_5_n_0\ : STD_LOGIC;
  signal \pCtlTknCnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \pCtlTknOvf_i_1__0_n_0\ : STD_LOGIC;
  signal pCtlTknOvf_reg_n_0 : STD_LOGIC;
  signal pCtlTknRst : STD_LOGIC;
  signal \pDataQ_reg_n_0_[0]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[1]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[2]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[3]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[4]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[5]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[6]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[7]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[8]\ : STD_LOGIC;
  signal \pDelayCenter_i_1__0_n_0\ : STD_LOGIC;
  signal \pDelayCenter_i_2__0_n_0\ : STD_LOGIC;
  signal pDelayCenter_reg_n_0 : STD_LOGIC;
  signal \pDelayOvf_i_1__0_n_0\ : STD_LOGIC;
  signal pDelayOvf_reg_n_0 : STD_LOGIC;
  signal pDelayWaitCnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pDelayWaitCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \pDelayWaitOvf_i_1__0_n_0\ : STD_LOGIC;
  signal pDelayWaitOvf_reg_n_0 : STD_LOGIC;
  signal \pError_i_1__0_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal pEyeOpenRst : STD_LOGIC;
  signal pFoundEyeFlag : STD_LOGIC;
  signal \pFoundEyeFlag_i_1__0_n_0\ : STD_LOGIC;
  signal \pFoundEyeFlag_i_2__0_n_0\ : STD_LOGIC;
  signal \pFoundEyeFlag_i_3__0_n_0\ : STD_LOGIC;
  signal \pFoundEyeFlag_i_4__0_n_0\ : STD_LOGIC;
  signal \pFoundEyeFlag_i_5__0_n_0\ : STD_LOGIC;
  signal pFoundJtrFlag : STD_LOGIC;
  signal \pFoundJtrFlag_i_1__0_n_0\ : STD_LOGIC;
  signal \pFoundJtrFlag_i_2__0_n_0\ : STD_LOGIC;
  signal \pIDLY_CE_i_1__0_n_0\ : STD_LOGIC;
  signal pIDLY_CE_i_2_n_0 : STD_LOGIC;
  signal pIDLY_CE_i_3_n_0 : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \^pidly_inc\ : STD_LOGIC;
  signal pIDLY_INC_1 : STD_LOGIC;
  signal \pIDLY_INC_i_1__0_n_0\ : STD_LOGIC;
  signal \pIDLY_LD_i_1__0_n_0\ : STD_LOGIC;
  signal pState : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \pStateNxt__0_n_0\ : STD_LOGIC;
  signal \pStateNxt__1_n_0\ : STD_LOGIC;
  signal \pStateNxt__2_n_0\ : STD_LOGIC;
  signal \pStateNxt__3_n_0\ : STD_LOGIC;
  signal \pStateNxt__4\ : STD_LOGIC;
  signal pStateNxt_n_0 : STD_LOGIC;
  signal \pState[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \pState[10]_i_3__0_n_0\ : STD_LOGIC;
  signal \pState[10]_i_4__0_n_0\ : STD_LOGIC;
  signal \pState[10]_i_5__0_n_0\ : STD_LOGIC;
  signal \pState[10]_i_6__0_n_0\ : STD_LOGIC;
  signal \pState[10]_i_7__0_n_0\ : STD_LOGIC;
  signal \pState[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \pState[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \pState[9]_i_1__0_n_0\ : STD_LOGIC;
  signal pTknFlag : STD_LOGIC;
  signal pTknFlag0 : STD_LOGIC;
  signal pTknFlagQ : STD_LOGIC;
  signal \pTknFlag_i_2__0_n_0\ : STD_LOGIC;
  signal \pTknFlag_i_3__0_n_0\ : STD_LOGIC;
  signal \^pvld_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pCenterTap[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pCtlTknCnt[0]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pCtlTknCnt[1]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pCtlTknCnt[2]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pCtlTknCnt[3]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pCtlTknCnt[4]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pCtlTknCnt[6]_i_3__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \pCtlTknCnt[6]_i_4__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pCtlTknCnt[6]_i_5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \pDelayWaitCnt[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \pDelayWaitCnt[1]_i_4__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pDelayWaitOvf_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[0]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[1]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[2]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \pFoundEyeFlag_i_3__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pFoundEyeFlag_i_4__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pFoundEyeFlag_i_5__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pFoundJtrFlag_i_2__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of pIDLY_CE_i_3 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \pIDLY_INC_i_2__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pIDLY_LD_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of pStateNxt : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \pStateNxt__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \pState[10]_i_2__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pState[10]_i_4__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pState[10]_i_6__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \pState[2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pState[4]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pState[5]_i_2__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pState[6]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \pState[7]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \pState[8]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pState[9]_i_1__0\ : label is "soft_lutpair40";
begin
  pAlignErr_q_reg <= \^palignerr_q_reg\;
  pIDLY_INC <= \^pidly_inc\;
  pVld_1 <= \^pvld_1\;
\iIn_q_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEF"
    )
        port map (
      I0 => \iIn_q_i_2__0_n_0\,
      I1 => pState(3),
      I2 => pState(2),
      I3 => pState(1),
      I4 => pState(0),
      I5 => pState(4),
      O => iIn_q_reg
    );
\iIn_q_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pState(7),
      I1 => pState(5),
      I2 => pState(10),
      I3 => pState(9),
      I4 => pState(6),
      I5 => pState(8),
      O => \iIn_q_i_2__0_n_0\
    );
\pAligned_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => pState(6),
      I1 => pState(8),
      I2 => \pAligned_i_2__0_n_0\,
      I3 => pState(9),
      I4 => pState(0),
      I5 => pState(10),
      O => \pAligned_i_1__0_n_0\
    );
\pAligned_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pState(3),
      I1 => pState(4),
      I2 => pState(2),
      I3 => pState(1),
      I4 => pState(7),
      I5 => pState(5),
      O => \pAligned_i_2__0_n_0\
    );
pAligned_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pAligned_i_1__0_n_0\,
      Q => \^pvld_1\,
      R => '0'
    );
\pBitslip_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^palignerr_q_reg\,
      I1 => pAlignErr_q,
      O => pBitslip_reg
    );
\pBlankBegin_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pTknFlag,
      I1 => pTknFlagQ,
      O => pBlankBegin0
    );
pBlankBegin_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pBlankBegin0,
      Q => pBlankBegin,
      R => '0'
    );
\pCenterTap[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \pCenterTap_reg_n_0_[0]\,
      I1 => \pCenterTap[5]_i_3__0_n_0\,
      I2 => pEyeOpenRst,
      O => \pCenterTap[0]_i_1_n_0\
    );
\pCenterTap[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[1]\,
      I3 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[1]_i_1__0_n_0\
    );
\pCenterTap[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[2]\,
      I3 => \pCenterTap_reg_n_0_[1]\,
      I4 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[2]_i_1__0_n_0\
    );
\pCenterTap[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[0]\,
      I3 => \pCenterTap_reg_n_0_[1]\,
      I4 => \pCenterTap_reg_n_0_[2]\,
      I5 => \pCenterTap_reg_n_0_[3]\,
      O => \pCenterTap[3]_i_1__0_n_0\
    );
\pCenterTap[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[4]\,
      I3 => \pCenterTap[5]_i_5__0_n_0\,
      O => \pCenterTap[4]_i_1__0_n_0\
    );
\pCenterTap[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pCenterTap[5]_i_3__0_n_0\,
      I1 => pEyeOpenRst,
      O => \pCenterTap[5]_i_1__0_n_0\
    );
\pCenterTap[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[5]\,
      I3 => \pCenterTap[5]_i_5__0_n_0\,
      I4 => \pCenterTap_reg_n_0_[4]\,
      O => \pCenterTap[5]_i_2__0_n_0\
    );
\pCenterTap[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \iIn_q_i_2__0_n_0\,
      I1 => pState(3),
      I2 => pState(4),
      I3 => pState(0),
      I4 => pState(1),
      I5 => pState(2),
      O => \pCenterTap[5]_i_3__0_n_0\
    );
\pCenterTap[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000C40"
    )
        port map (
      I0 => pFoundEyeFlag,
      I1 => \pFoundJtrFlag_i_2__0_n_0\,
      I2 => pState(4),
      I3 => pState(0),
      I4 => pState(3),
      I5 => \iIn_q_i_2__0_n_0\,
      O => pEyeOpenRst
    );
\pCenterTap[5]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \pCenterTap_reg_n_0_[3]\,
      I1 => \pCenterTap_reg_n_0_[2]\,
      I2 => \pCenterTap_reg_n_0_[1]\,
      I3 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[5]_i_5__0_n_0\
    );
\pCenterTap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pCenterTap[0]_i_1_n_0\,
      Q => \pCenterTap_reg_n_0_[0]\,
      R => '0'
    );
\pCenterTap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__0_n_0\,
      D => \pCenterTap[1]_i_1__0_n_0\,
      Q => \pCenterTap_reg_n_0_[1]\,
      R => '0'
    );
\pCenterTap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__0_n_0\,
      D => \pCenterTap[2]_i_1__0_n_0\,
      Q => \pCenterTap_reg_n_0_[2]\,
      R => '0'
    );
\pCenterTap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__0_n_0\,
      D => \pCenterTap[3]_i_1__0_n_0\,
      Q => \pCenterTap_reg_n_0_[3]\,
      R => '0'
    );
\pCenterTap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__0_n_0\,
      D => \pCenterTap[4]_i_1__0_n_0\,
      Q => \pCenterTap_reg_n_0_[4]\,
      R => '0'
    );
\pCenterTap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__0_n_0\,
      D => \pCenterTap[5]_i_2__0_n_0\,
      Q => \pCenterTap_reg_n_0_[5]\,
      R => '0'
    );
\pCtlTknCnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(0),
      O => p_0_in(0)
    );
\pCtlTknCnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(0),
      I1 => \pCtlTknCnt_reg__0\(1),
      O => p_0_in(1)
    );
\pCtlTknCnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(2),
      I1 => \pCtlTknCnt_reg__0\(0),
      I2 => \pCtlTknCnt_reg__0\(1),
      O => p_0_in(2)
    );
\pCtlTknCnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(3),
      I1 => \pCtlTknCnt_reg__0\(1),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(2),
      O => p_0_in(3)
    );
\pCtlTknCnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(4),
      I1 => \pCtlTknCnt_reg__0\(2),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(1),
      I4 => \pCtlTknCnt_reg__0\(3),
      O => p_0_in(4)
    );
\pCtlTknCnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(5),
      I1 => \pCtlTknCnt_reg__0\(2),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(1),
      I4 => \pCtlTknCnt_reg__0\(3),
      I5 => \pCtlTknCnt_reg__0\(4),
      O => p_0_in(5)
    );
\pCtlTknCnt[6]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in_0,
      O => pCtlTknRst
    );
\pCtlTknCnt[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(6),
      I1 => \pCtlTknCnt[6]_i_4__0_n_0\,
      I2 => \pCtlTknCnt_reg__0\(5),
      O => p_0_in(6)
    );
\pCtlTknCnt[6]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \pState[10]_i_6__0_n_0\,
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(10),
      I4 => \pCtlTknCnt[6]_i_5_n_0\,
      O => p_0_in_0
    );
\pCtlTknCnt[6]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(4),
      I1 => \pCtlTknCnt_reg__0\(3),
      I2 => \pCtlTknCnt_reg__0\(1),
      I3 => \pCtlTknCnt_reg__0\(0),
      I4 => \pCtlTknCnt_reg__0\(2),
      O => \pCtlTknCnt[6]_i_4__0_n_0\
    );
\pCtlTknCnt[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(8),
      I1 => pState(6),
      I2 => pState(9),
      I3 => pState(7),
      O => \pCtlTknCnt[6]_i_5_n_0\
    );
\pCtlTknCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(0),
      Q => \pCtlTknCnt_reg__0\(0),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(1),
      Q => \pCtlTknCnt_reg__0\(1),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(2),
      Q => \pCtlTknCnt_reg__0\(2),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(3),
      Q => \pCtlTknCnt_reg__0\(3),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(4),
      Q => \pCtlTknCnt_reg__0\(4),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(5),
      Q => \pCtlTknCnt_reg__0\(5),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(6),
      Q => \pCtlTknCnt_reg__0\(6),
      R => pCtlTknRst
    );
\pCtlTknOvf_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000AAAA"
    )
        port map (
      I0 => pCtlTknOvf_reg_n_0,
      I1 => \pCtlTknCnt_reg__0\(6),
      I2 => \pCtlTknCnt[6]_i_4__0_n_0\,
      I3 => \pCtlTknCnt_reg__0\(5),
      I4 => p_0_in_0,
      O => \pCtlTknOvf_i_1__0_n_0\
    );
pCtlTknOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pCtlTknOvf_i_1__0_n_0\,
      Q => pCtlTknOvf_reg_n_0,
      R => '0'
    );
\pDataQ_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(0),
      Q => \pDataQ_reg_n_0_[0]\,
      R => '0'
    );
\pDataQ_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(1),
      Q => \pDataQ_reg_n_0_[1]\,
      R => '0'
    );
\pDataQ_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(2),
      Q => \pDataQ_reg_n_0_[2]\,
      R => '0'
    );
\pDataQ_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(3),
      Q => \pDataQ_reg_n_0_[3]\,
      R => '0'
    );
\pDataQ_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(4),
      Q => \pDataQ_reg_n_0_[4]\,
      R => '0'
    );
\pDataQ_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(5),
      Q => \pDataQ_reg_n_0_[5]\,
      R => '0'
    );
\pDataQ_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(6),
      Q => \pDataQ_reg_n_0_[6]\,
      R => '0'
    );
\pDataQ_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(7),
      Q => \pDataQ_reg_n_0_[7]\,
      R => '0'
    );
\pDataQ_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(8),
      Q => \pDataQ_reg_n_0_[8]\,
      R => '0'
    );
\pDelayCenter_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => \pDelayCenter_i_2__0_n_0\,
      I1 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I2 => \pCenterTap_reg_n_0_[5]\,
      I3 => \pCenterTap_reg_n_0_[4]\,
      I4 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      O => \pDelayCenter_i_1__0_n_0\
    );
\pDelayCenter_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \pCenterTap_reg_n_0_[1]\,
      I1 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      I2 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I3 => \pCenterTap_reg_n_0_[2]\,
      I4 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      I5 => \pCenterTap_reg_n_0_[3]\,
      O => \pDelayCenter_i_2__0_n_0\
    );
pDelayCenter_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayCenter_i_1__0_n_0\,
      Q => pDelayCenter_reg_n_0,
      R => '0'
    );
\pDelayOvf_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I1 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      I2 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I3 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      I4 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      O => \pDelayOvf_i_1__0_n_0\
    );
pDelayOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayOvf_i_1__0_n_0\,
      Q => pDelayOvf_reg_n_0,
      R => '0'
    );
\pDelayWaitCnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => pDelayWaitCnt(0),
      I1 => p_2_in,
      O => \pDelayWaitCnt[0]_i_1_n_0\
    );
\pDelayWaitCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => pDelayWaitCnt(1),
      I1 => pDelayWaitCnt(0),
      I2 => p_2_in,
      O => \pDelayWaitCnt[1]_i_1_n_0\
    );
\pDelayWaitCnt[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000006"
    )
        port map (
      I0 => pState(8),
      I1 => pState(6),
      I2 => \pDelayWaitCnt[1]_i_3__0_n_0\,
      I3 => pState(3),
      I4 => \pDelayWaitCnt[1]_i_4__0_n_0\,
      I5 => \pFoundEyeFlag_i_3__0_n_0\,
      O => p_2_in
    );
\pDelayWaitCnt[1]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pState(5),
      I1 => pState(7),
      O => \pDelayWaitCnt[1]_i_3__0_n_0\
    );
\pDelayWaitCnt[1]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pState(10),
      I1 => pState(9),
      O => \pDelayWaitCnt[1]_i_4__0_n_0\
    );
\pDelayWaitCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayWaitCnt[0]_i_1_n_0\,
      Q => pDelayWaitCnt(0),
      R => '0'
    );
\pDelayWaitCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayWaitCnt[1]_i_1_n_0\,
      Q => pDelayWaitCnt(1),
      R => '0'
    );
\pDelayWaitOvf_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30AA"
    )
        port map (
      I0 => pDelayWaitOvf_reg_n_0,
      I1 => pDelayWaitCnt(0),
      I2 => pDelayWaitCnt(1),
      I3 => p_2_in,
      O => \pDelayWaitOvf_i_1__0_n_0\
    );
pDelayWaitOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayWaitOvf_i_1__0_n_0\,
      Q => pDelayWaitOvf_reg_n_0,
      R => '0'
    );
\pError_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => pState(6),
      I1 => pState(8),
      I2 => \pAligned_i_2__0_n_0\,
      I3 => pState(0),
      I4 => pState(10),
      I5 => pState(9),
      O => \pError_i_1__0_n_0\
    );
pError_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pError_i_1__0_n_0\,
      Q => \^palignerr_q_reg\,
      R => '0'
    );
\pEyeOpenCnt[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \pCenterTap[5]_i_3__0_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => pEyeOpenRst,
      O => \pEyeOpenCnt[0]_i_1__0_n_0\
    );
\pEyeOpenCnt[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \pCenterTap[5]_i_3__0_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => \pEyeOpenCnt_reg_n_0_[1]\,
      I3 => pEyeOpenRst,
      O => \pEyeOpenCnt[1]_i_1__0_n_0\
    );
\pEyeOpenCnt[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \pCenterTap[5]_i_3__0_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[1]\,
      I2 => \pEyeOpenCnt_reg_n_0_[0]\,
      I3 => \pEyeOpenCnt_reg_n_0_[2]\,
      I4 => pEyeOpenRst,
      O => \pEyeOpenCnt[2]_i_1__0_n_0\
    );
\pEyeOpenCnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[3]\,
      I1 => \pEyeOpenCnt_reg_n_0_[2]\,
      I2 => \pEyeOpenCnt_reg_n_0_[0]\,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pCenterTap[5]_i_3__0_n_0\,
      I5 => pEyeOpenRst,
      O => \pEyeOpenCnt[3]_i_1__0_n_0\
    );
\pEyeOpenCnt[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \pEyeOpenCnt[4]_i_2__0_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[3]\,
      I2 => \pEyeOpenCnt_reg_n_0_[4]\,
      I3 => pEyeOpenRst,
      O => \pEyeOpenCnt[4]_i_1__0_n_0\
    );
\pEyeOpenCnt[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \pFoundEyeFlag_i_3__0_n_0\,
      I1 => pState(3),
      I2 => \iIn_q_i_2__0_n_0\,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pEyeOpenCnt_reg_n_0_[0]\,
      I5 => \pEyeOpenCnt_reg_n_0_[2]\,
      O => \pEyeOpenCnt[4]_i_2__0_n_0\
    );
\pEyeOpenCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[0]_i_1__0_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[0]\,
      R => '0'
    );
\pEyeOpenCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[1]_i_1__0_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[1]\,
      R => '0'
    );
\pEyeOpenCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[2]_i_1__0_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[2]\,
      R => '0'
    );
\pEyeOpenCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[3]_i_1__0_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[3]\,
      R => '0'
    );
\pEyeOpenCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[4]_i_1__0_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[4]\,
      R => '0'
    );
\pFoundEyeFlag_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBFB0000AA0A"
    )
        port map (
      I0 => \pFoundEyeFlag_i_2__0_n_0\,
      I1 => pState(0),
      I2 => \pFoundEyeFlag_i_3__0_n_0\,
      I3 => \pFoundEyeFlag_i_4__0_n_0\,
      I4 => \iIn_q_i_2__0_n_0\,
      I5 => pFoundEyeFlag,
      O => \pFoundEyeFlag_i_1__0_n_0\
    );
\pFoundEyeFlag_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000030008000000"
    )
        port map (
      I0 => pFoundJtrFlag,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => \pFoundEyeFlag_i_5__0_n_0\,
      I3 => pState(3),
      I4 => \pEyeOpenCnt_reg_n_0_[1]\,
      I5 => \pEyeOpenCnt_reg_n_0_[4]\,
      O => \pFoundEyeFlag_i_2__0_n_0\
    );
\pFoundEyeFlag_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(4),
      I1 => pState(0),
      I2 => pState(1),
      I3 => pState(2),
      O => \pFoundEyeFlag_i_3__0_n_0\
    );
\pFoundEyeFlag_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pState(1),
      I1 => pState(2),
      I2 => pState(4),
      I3 => pState(3),
      O => \pFoundEyeFlag_i_4__0_n_0\
    );
\pFoundEyeFlag_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[2]\,
      I1 => \pEyeOpenCnt_reg_n_0_[3]\,
      O => \pFoundEyeFlag_i_5__0_n_0\
    );
pFoundEyeFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pFoundEyeFlag_i_1__0_n_0\,
      Q => pFoundEyeFlag,
      R => '0'
    );
\pFoundJtrFlag_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABA8AAAAAAAAAA"
    )
        port map (
      I0 => pFoundJtrFlag,
      I1 => \iIn_q_i_2__0_n_0\,
      I2 => pState(3),
      I3 => pState(0),
      I4 => pState(4),
      I5 => \pFoundJtrFlag_i_2__0_n_0\,
      O => \pFoundJtrFlag_i_1__0_n_0\
    );
\pFoundJtrFlag_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pState(2),
      I1 => pState(1),
      O => \pFoundJtrFlag_i_2__0_n_0\
    );
pFoundJtrFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pFoundJtrFlag_i_1__0_n_0\,
      Q => pFoundJtrFlag,
      R => '0'
    );
\pIDLY_CE_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => pIDLY_CE_i_2_n_0,
      I1 => pIDLY_CE_i_3_n_0,
      I2 => pState(7),
      I3 => pState(0),
      I4 => pState(5),
      I5 => \pFoundEyeFlag_i_4__0_n_0\,
      O => \pIDLY_CE_i_1__0_n_0\
    );
pIDLY_CE_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \pFoundEyeFlag_i_4__0_n_0\,
      I1 => pState(10),
      I2 => pState(0),
      I3 => pState(5),
      I4 => \pCtlTknCnt[6]_i_5_n_0\,
      O => pIDLY_CE_i_2_n_0
    );
pIDLY_CE_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(8),
      I1 => pState(6),
      I2 => pState(9),
      I3 => pState(10),
      O => pIDLY_CE_i_3_n_0
    );
pIDLY_CE_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pIDLY_CE_i_1__0_n_0\,
      Q => pIDLY_CE,
      R => '0'
    );
\pIDLY_CNT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(0),
      Q => \pIDLY_CNT_Q_reg_n_0_[0]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(1),
      Q => \pIDLY_CNT_Q_reg_n_0_[1]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(2),
      Q => \pIDLY_CNT_Q_reg_n_0_[2]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(3),
      Q => \pIDLY_CNT_Q_reg_n_0_[3]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(4),
      Q => \pIDLY_CNT_Q_reg_n_0_[4]\,
      R => '0'
    );
\pIDLY_INC_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => pIDLY_INC_1,
      I1 => \^pidly_inc\,
      I2 => pIDLY_CE_i_2_n_0,
      O => \pIDLY_INC_i_1__0_n_0\
    );
\pIDLY_INC_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \pFoundEyeFlag_i_4__0_n_0\,
      I1 => pState(5),
      I2 => pState(0),
      I3 => pState(7),
      I4 => pIDLY_CE_i_3_n_0,
      O => pIDLY_INC_1
    );
pIDLY_INC_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pIDLY_INC_i_1__0_n_0\,
      Q => \^pidly_inc\,
      R => '0'
    );
\pIDLY_LD_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => pState(5),
      I1 => pState(7),
      I2 => \pFoundEyeFlag_i_4__0_n_0\,
      I3 => pState(0),
      I4 => pIDLY_CE_i_3_n_0,
      O => \pIDLY_LD_i_1__0_n_0\
    );
pIDLY_LD_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pIDLY_LD_i_1__0_n_0\,
      Q => pIDLY_LD,
      R => '0'
    );
pStateNxt: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => pState(0),
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(3),
      I4 => pState(4),
      O => pStateNxt_n_0
    );
\pStateNxt__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEE8"
    )
        port map (
      I0 => pState(0),
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(3),
      I4 => pState(4),
      O => \pStateNxt__0_n_0\
    );
\pStateNxt__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010116"
    )
        port map (
      I0 => pState(5),
      I1 => pState(6),
      I2 => pState(7),
      I3 => pState(8),
      I4 => pState(9),
      I5 => pState(10),
      O => \pStateNxt__1_n_0\
    );
\pStateNxt__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFEE8"
    )
        port map (
      I0 => pState(5),
      I1 => pState(6),
      I2 => pState(7),
      I3 => pState(8),
      I4 => pState(9),
      I5 => pState(10),
      O => \pStateNxt__2_n_0\
    );
\pStateNxt__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => pStateNxt_n_0,
      I1 => \pStateNxt__0_n_0\,
      I2 => \pStateNxt__1_n_0\,
      I3 => \pStateNxt__2_n_0\,
      O => \pStateNxt__3_n_0\
    );
\pState[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      O => \pState[0]_i_1__0_n_0\
    );
\pState[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
        port map (
      I0 => \pState[10]_i_3__0_n_0\,
      I1 => \pState[10]_i_4__0_n_0\,
      I2 => pState(7),
      I3 => pState(8),
      I4 => \pState[10]_i_5__0_n_0\,
      O => \pStateNxt__4\
    );
\pState[10]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(6),
      I2 => pDelayOvf_reg_n_0,
      O => \pState[10]_i_2__0_n_0\
    );
\pState[10]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFCF8888"
    )
        port map (
      I0 => pState(1),
      I1 => pIDLY_CE_i_3_n_0,
      I2 => pTknFlagQ,
      I3 => pCtlTknOvf_reg_n_0,
      I4 => pState(2),
      I5 => \pState[10]_i_6__0_n_0\,
      O => \pState[10]_i_3__0_n_0\
    );
\pState[10]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => pState(9),
      I1 => pState(10),
      I2 => pState(7),
      I3 => pState(6),
      O => \pState[10]_i_4__0_n_0\
    );
\pState[10]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55005455"
    )
        port map (
      I0 => pIDLY_CE_i_3_n_0,
      I1 => \out\(0),
      I2 => pBlankBegin,
      I3 => pState(1),
      I4 => pState(2),
      I5 => \pState[10]_i_7__0_n_0\,
      O => \pState[10]_i_5__0_n_0\
    );
\pState[10]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(5),
      I1 => pState(0),
      I2 => pState(4),
      I3 => pState(3),
      O => \pState[10]_i_6__0_n_0\
    );
\pState[10]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEC0"
    )
        port map (
      I0 => pDelayWaitOvf_reg_n_0,
      I1 => pState(9),
      I2 => pState(10),
      I3 => pState(7),
      I4 => pState(6),
      I5 => pState(8),
      O => \pState[10]_i_7__0_n_0\
    );
\pState[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08AAAAAA08AA08"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(2),
      I2 => pTknFlagQ,
      I3 => pState(0),
      I4 => pDelayOvf_reg_n_0,
      I5 => pState(6),
      O => \pState[1]_i_1__0_n_0\
    );
\pState[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(1),
      I2 => pBlankBegin,
      O => \pState[2]_i_1__0_n_0\
    );
\pState[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pTknFlagQ,
      I2 => pState(2),
      O => \pState[3]_i_1__0_n_0\
    );
\pState[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0808"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(3),
      I2 => \pState[5]_i_2__0_n_0\,
      I3 => pBlankBegin,
      I4 => pState(1),
      O => \pState[4]_i_1__0_n_0\
    );
\pState[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => \pState[5]_i_2__0_n_0\,
      I2 => pState(3),
      I3 => pFoundEyeFlag,
      I4 => pState(4),
      O => \pState[5]_i_1__0_n_0\
    );
\pState[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[3]\,
      I1 => \pEyeOpenCnt_reg_n_0_[2]\,
      I2 => \pEyeOpenCnt_reg_n_0_[4]\,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pEyeOpenCnt_reg_n_0_[0]\,
      O => \pState[5]_i_2__0_n_0\
    );
\pState[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(5),
      O => \pState[6]_i_1__0_n_0\
    );
\pState[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA080808"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(8),
      I2 => pDelayCenter_reg_n_0,
      I3 => pFoundEyeFlag,
      I4 => pState(4),
      O => \pState[7]_i_1__0_n_0\
    );
\pState[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(7),
      O => \pState[8]_i_1__0_n_0\
    );
\pState[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(8),
      I2 => pDelayCenter_reg_n_0,
      O => \pState[9]_i_1__0_n_0\
    );
\pState_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[0]_i_1__0_n_0\,
      Q => pState(0),
      S => SS(0)
    );
\pState_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[10]_i_2__0_n_0\,
      Q => pState(10),
      R => SS(0)
    );
\pState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[1]_i_1__0_n_0\,
      Q => pState(1),
      R => SS(0)
    );
\pState_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[2]_i_1__0_n_0\,
      Q => pState(2),
      R => SS(0)
    );
\pState_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[3]_i_1__0_n_0\,
      Q => pState(3),
      R => SS(0)
    );
\pState_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[4]_i_1__0_n_0\,
      Q => pState(4),
      R => SS(0)
    );
\pState_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[5]_i_1__0_n_0\,
      Q => pState(5),
      R => SS(0)
    );
\pState_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[6]_i_1__0_n_0\,
      Q => pState(6),
      R => SS(0)
    );
\pState_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[7]_i_1__0_n_0\,
      Q => pState(7),
      R => SS(0)
    );
\pState_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[8]_i_1__0_n_0\,
      Q => pState(8),
      R => SS(0)
    );
\pState_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[9]_i_1__0_n_0\,
      Q => pState(9),
      R => SS(0)
    );
pTknFlagQ_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTknFlag,
      Q => pTknFlagQ,
      R => '0'
    );
\pTknFlag_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30000808"
    )
        port map (
      I0 => \pTknFlag_i_2__0_n_0\,
      I1 => \pDataQ_reg_n_0_[8]\,
      I2 => \pDataQ_reg_n_0_[0]\,
      I3 => \pTknFlag_i_3__0_n_0\,
      I4 => \pDataQ_reg_n_0_[3]\,
      O => pTknFlag0
    );
\pTknFlag_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \pDataQ_reg_n_0_[4]\,
      I1 => \pDataQ_reg_n_0_[5]\,
      I2 => \pDataQ_reg_n_0_[7]\,
      I3 => \pDataQ_reg_n_0_[1]\,
      I4 => \pDataQ_reg_n_0_[2]\,
      I5 => \pDataQ_reg_n_0_[6]\,
      O => \pTknFlag_i_2__0_n_0\
    );
\pTknFlag_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \pDataQ_reg_n_0_[4]\,
      I1 => \pDataQ_reg_n_0_[5]\,
      I2 => \pDataQ_reg_n_0_[7]\,
      I3 => \pDataQ_reg_n_0_[1]\,
      I4 => \pDataQ_reg_n_0_[2]\,
      I5 => \pDataQ_reg_n_0_[6]\,
      O => \pTknFlag_i_3__0_n_0\
    );
pTknFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTknFlag0,
      Q => pTknFlag,
      R => '0'
    );
\pWrA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^pvld_1\,
      I1 => pVld_2,
      I2 => pVld_0,
      O => pMeRdy_int_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_19 is
  port (
    pIDLY_CE : out STD_LOGIC;
    pIDLY_INC : out STD_LOGIC;
    pIDLY_LD : out STD_LOGIC;
    pVld_0 : out STD_LOGIC;
    pAlignErr_q_reg : out STD_LOGIC;
    iIn_q_reg : out STD_LOGIC;
    pAllVld : out STD_LOGIC;
    pBitslip_reg : out STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pVld_2 : in STD_LOGIC;
    pVld_1 : in STD_LOGIC;
    pAlignErr_q : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    pIDLY_CE_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_19 : entity is "PhaseAlign";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_19;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_19 is
  signal \iIn_q_i_2__1_n_0\ : STD_LOGIC;
  signal \^palignerr_q_reg\ : STD_LOGIC;
  signal \pAligned_i_1__1_n_0\ : STD_LOGIC;
  signal \pAligned_i_2__1_n_0\ : STD_LOGIC;
  signal pBlankBegin : STD_LOGIC;
  signal pBlankBegin0 : STD_LOGIC;
  signal \pCenterTap[0]_i_1_n_0\ : STD_LOGIC;
  signal \pCenterTap[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pCenterTap[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \pCenterTap[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pCenterTap[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_3__1_n_0\ : STD_LOGIC;
  signal \pCenterTap[5]_i_5__1_n_0\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[0]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[1]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[2]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[3]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[4]\ : STD_LOGIC;
  signal \pCenterTap_reg_n_0_[5]\ : STD_LOGIC;
  signal \pCtlTknCnt[6]_i_4__1_n_0\ : STD_LOGIC;
  signal \pCtlTknCnt[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \pCtlTknCnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \pCtlTknOvf_i_1__1_n_0\ : STD_LOGIC;
  signal pCtlTknOvf_reg_n_0 : STD_LOGIC;
  signal pCtlTknRst : STD_LOGIC;
  signal \pDataQ_reg_n_0_[0]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[1]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[2]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[3]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[4]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[5]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[6]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[7]\ : STD_LOGIC;
  signal \pDataQ_reg_n_0_[8]\ : STD_LOGIC;
  signal \pDelayCenter_i_1__1_n_0\ : STD_LOGIC;
  signal \pDelayCenter_i_2__1_n_0\ : STD_LOGIC;
  signal pDelayCenter_reg_n_0 : STD_LOGIC;
  signal \pDelayOvf_i_1__1_n_0\ : STD_LOGIC;
  signal pDelayOvf_reg_n_0 : STD_LOGIC;
  signal pDelayWaitCnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pDelayWaitCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \pDelayWaitCnt[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \pDelayWaitOvf_i_1__1_n_0\ : STD_LOGIC;
  signal pDelayWaitOvf_reg_n_0 : STD_LOGIC;
  signal \pError_i_1__1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pEyeOpenCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal pEyeOpenRst : STD_LOGIC;
  signal pFoundEyeFlag : STD_LOGIC;
  signal \pFoundEyeFlag_i_1__1_n_0\ : STD_LOGIC;
  signal \pFoundEyeFlag_i_2__1_n_0\ : STD_LOGIC;
  signal \pFoundEyeFlag_i_3__1_n_0\ : STD_LOGIC;
  signal \pFoundEyeFlag_i_4__1_n_0\ : STD_LOGIC;
  signal \pFoundEyeFlag_i_5__1_n_0\ : STD_LOGIC;
  signal pFoundJtrFlag : STD_LOGIC;
  signal \pFoundJtrFlag_i_1__1_n_0\ : STD_LOGIC;
  signal \pFoundJtrFlag_i_2__1_n_0\ : STD_LOGIC;
  signal \pIDLY_CE_i_1__1_n_0\ : STD_LOGIC;
  signal \pIDLY_CE_i_2__0_n_0\ : STD_LOGIC;
  signal \pIDLY_CE_i_3__0_n_0\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \pIDLY_CNT_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \^pidly_inc\ : STD_LOGIC;
  signal pIDLY_INC_1 : STD_LOGIC;
  signal \pIDLY_INC_i_1__1_n_0\ : STD_LOGIC;
  signal \pIDLY_LD_i_1__1_n_0\ : STD_LOGIC;
  signal pState : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \pStateNxt__0_n_0\ : STD_LOGIC;
  signal \pStateNxt__1_n_0\ : STD_LOGIC;
  signal \pStateNxt__2_n_0\ : STD_LOGIC;
  signal \pStateNxt__3_n_0\ : STD_LOGIC;
  signal \pStateNxt__4\ : STD_LOGIC;
  signal pStateNxt_n_0 : STD_LOGIC;
  signal \pState[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[10]_i_2__1_n_0\ : STD_LOGIC;
  signal \pState[10]_i_3__1_n_0\ : STD_LOGIC;
  signal \pState[10]_i_4__1_n_0\ : STD_LOGIC;
  signal \pState[10]_i_5__1_n_0\ : STD_LOGIC;
  signal \pState[10]_i_6__1_n_0\ : STD_LOGIC;
  signal \pState[10]_i_7__1_n_0\ : STD_LOGIC;
  signal \pState[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \pState[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \pState[9]_i_1__1_n_0\ : STD_LOGIC;
  signal pTknFlag : STD_LOGIC;
  signal pTknFlag0 : STD_LOGIC;
  signal pTknFlagQ : STD_LOGIC;
  signal \pTknFlag_i_2__1_n_0\ : STD_LOGIC;
  signal \pTknFlag_i_3__1_n_0\ : STD_LOGIC;
  signal \^pvld_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pCenterTap[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pCtlTknCnt[0]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pCtlTknCnt[1]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pCtlTknCnt[2]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pCtlTknCnt[3]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pCtlTknCnt[4]_i_1__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pCtlTknCnt[6]_i_3__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pCtlTknCnt[6]_i_4__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pCtlTknCnt[6]_i_5__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pDelayWaitCnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pDelayWaitCnt[1]_i_4__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pDelayWaitOvf_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[0]_i_1__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[1]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pEyeOpenCnt[2]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pFoundEyeFlag_i_3__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pFoundEyeFlag_i_4__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pFoundEyeFlag_i_5__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pFoundJtrFlag_i_2__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pIDLY_CE_i_3__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pIDLY_INC_i_2__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pIDLY_LD_i_1__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of pStateNxt : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pStateNxt__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pState[10]_i_2__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \pState[10]_i_4__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pState[10]_i_6__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pState[2]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pState[4]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pState[5]_i_2__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pState[6]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pState[7]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pState[8]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \pState[9]_i_1__1\ : label is "soft_lutpair12";
begin
  pAlignErr_q_reg <= \^palignerr_q_reg\;
  pIDLY_INC <= \^pidly_inc\;
  pVld_0 <= \^pvld_0\;
\iIn_q_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEF"
    )
        port map (
      I0 => \iIn_q_i_2__1_n_0\,
      I1 => pState(3),
      I2 => pState(2),
      I3 => pState(1),
      I4 => pState(0),
      I5 => pState(4),
      O => iIn_q_reg
    );
\iIn_q_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pState(7),
      I1 => pState(5),
      I2 => pState(10),
      I3 => pState(9),
      I4 => pState(6),
      I5 => pState(8),
      O => \iIn_q_i_2__1_n_0\
    );
\pAligned_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => pState(6),
      I1 => pState(8),
      I2 => \pAligned_i_2__1_n_0\,
      I3 => pState(9),
      I4 => pState(0),
      I5 => pState(10),
      O => \pAligned_i_1__1_n_0\
    );
\pAligned_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pState(3),
      I1 => pState(4),
      I2 => pState(2),
      I3 => pState(1),
      I4 => pState(7),
      I5 => pState(5),
      O => \pAligned_i_2__1_n_0\
    );
pAligned_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pAligned_i_1__1_n_0\,
      Q => \^pvld_0\,
      R => '0'
    );
\pBitslip_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^palignerr_q_reg\,
      I1 => pAlignErr_q,
      O => pBitslip_reg
    );
\pBlankBegin_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pTknFlag,
      I1 => pTknFlagQ,
      O => pBlankBegin0
    );
pBlankBegin_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pBlankBegin0,
      Q => pBlankBegin,
      R => '0'
    );
\pCenterTap[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \pCenterTap_reg_n_0_[0]\,
      I1 => \pCenterTap[5]_i_3__1_n_0\,
      I2 => pEyeOpenRst,
      O => \pCenterTap[0]_i_1_n_0\
    );
\pCenterTap[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[1]\,
      I3 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[1]_i_1__1_n_0\
    );
\pCenterTap[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[2]\,
      I3 => \pCenterTap_reg_n_0_[1]\,
      I4 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[2]_i_1__1_n_0\
    );
\pCenterTap[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[0]\,
      I3 => \pCenterTap_reg_n_0_[1]\,
      I4 => \pCenterTap_reg_n_0_[2]\,
      I5 => \pCenterTap_reg_n_0_[3]\,
      O => \pCenterTap[3]_i_1__1_n_0\
    );
\pCenterTap[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[4]\,
      I3 => \pCenterTap[5]_i_5__1_n_0\,
      O => \pCenterTap[4]_i_1__1_n_0\
    );
\pCenterTap[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pCenterTap[5]_i_3__1_n_0\,
      I1 => pEyeOpenRst,
      O => \pCenterTap[5]_i_1__1_n_0\
    );
\pCenterTap[5]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I1 => pEyeOpenRst,
      I2 => \pCenterTap_reg_n_0_[5]\,
      I3 => \pCenterTap[5]_i_5__1_n_0\,
      I4 => \pCenterTap_reg_n_0_[4]\,
      O => \pCenterTap[5]_i_2__1_n_0\
    );
\pCenterTap[5]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \iIn_q_i_2__1_n_0\,
      I1 => pState(3),
      I2 => pState(4),
      I3 => pState(0),
      I4 => pState(1),
      I5 => pState(2),
      O => \pCenterTap[5]_i_3__1_n_0\
    );
\pCenterTap[5]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000C40"
    )
        port map (
      I0 => pFoundEyeFlag,
      I1 => \pFoundJtrFlag_i_2__1_n_0\,
      I2 => pState(4),
      I3 => pState(0),
      I4 => pState(3),
      I5 => \iIn_q_i_2__1_n_0\,
      O => pEyeOpenRst
    );
\pCenterTap[5]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \pCenterTap_reg_n_0_[3]\,
      I1 => \pCenterTap_reg_n_0_[2]\,
      I2 => \pCenterTap_reg_n_0_[1]\,
      I3 => \pCenterTap_reg_n_0_[0]\,
      O => \pCenterTap[5]_i_5__1_n_0\
    );
\pCenterTap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pCenterTap[0]_i_1_n_0\,
      Q => \pCenterTap_reg_n_0_[0]\,
      R => '0'
    );
\pCenterTap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__1_n_0\,
      D => \pCenterTap[1]_i_1__1_n_0\,
      Q => \pCenterTap_reg_n_0_[1]\,
      R => '0'
    );
\pCenterTap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__1_n_0\,
      D => \pCenterTap[2]_i_1__1_n_0\,
      Q => \pCenterTap_reg_n_0_[2]\,
      R => '0'
    );
\pCenterTap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__1_n_0\,
      D => \pCenterTap[3]_i_1__1_n_0\,
      Q => \pCenterTap_reg_n_0_[3]\,
      R => '0'
    );
\pCenterTap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__1_n_0\,
      D => \pCenterTap[4]_i_1__1_n_0\,
      Q => \pCenterTap_reg_n_0_[4]\,
      R => '0'
    );
\pCenterTap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pCenterTap[5]_i_1__1_n_0\,
      D => \pCenterTap[5]_i_2__1_n_0\,
      Q => \pCenterTap_reg_n_0_[5]\,
      R => '0'
    );
\pCtlTknCnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(0),
      O => p_0_in(0)
    );
\pCtlTknCnt[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(0),
      I1 => \pCtlTknCnt_reg__0\(1),
      O => p_0_in(1)
    );
\pCtlTknCnt[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(2),
      I1 => \pCtlTknCnt_reg__0\(0),
      I2 => \pCtlTknCnt_reg__0\(1),
      O => p_0_in(2)
    );
\pCtlTknCnt[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(3),
      I1 => \pCtlTknCnt_reg__0\(1),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(2),
      O => p_0_in(3)
    );
\pCtlTknCnt[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(4),
      I1 => \pCtlTknCnt_reg__0\(2),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(1),
      I4 => \pCtlTknCnt_reg__0\(3),
      O => p_0_in(4)
    );
\pCtlTknCnt[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(5),
      I1 => \pCtlTknCnt_reg__0\(2),
      I2 => \pCtlTknCnt_reg__0\(0),
      I3 => \pCtlTknCnt_reg__0\(1),
      I4 => \pCtlTknCnt_reg__0\(3),
      I5 => \pCtlTknCnt_reg__0\(4),
      O => p_0_in(5)
    );
\pCtlTknCnt[6]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in_0,
      O => pCtlTknRst
    );
\pCtlTknCnt[6]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(6),
      I1 => \pCtlTknCnt[6]_i_4__1_n_0\,
      I2 => \pCtlTknCnt_reg__0\(5),
      O => p_0_in(6)
    );
\pCtlTknCnt[6]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \pState[10]_i_6__1_n_0\,
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(10),
      I4 => \pCtlTknCnt[6]_i_5__0_n_0\,
      O => p_0_in_0
    );
\pCtlTknCnt[6]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \pCtlTknCnt_reg__0\(4),
      I1 => \pCtlTknCnt_reg__0\(3),
      I2 => \pCtlTknCnt_reg__0\(1),
      I3 => \pCtlTknCnt_reg__0\(0),
      I4 => \pCtlTknCnt_reg__0\(2),
      O => \pCtlTknCnt[6]_i_4__1_n_0\
    );
\pCtlTknCnt[6]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(8),
      I1 => pState(6),
      I2 => pState(9),
      I3 => pState(7),
      O => \pCtlTknCnt[6]_i_5__0_n_0\
    );
\pCtlTknCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(0),
      Q => \pCtlTknCnt_reg__0\(0),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(1),
      Q => \pCtlTknCnt_reg__0\(1),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(2),
      Q => \pCtlTknCnt_reg__0\(2),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(3),
      Q => \pCtlTknCnt_reg__0\(3),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(4),
      Q => \pCtlTknCnt_reg__0\(4),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(5),
      Q => \pCtlTknCnt_reg__0\(5),
      R => pCtlTknRst
    );
\pCtlTknCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => p_0_in(6),
      Q => \pCtlTknCnt_reg__0\(6),
      R => pCtlTknRst
    );
\pCtlTknOvf_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C000AAAA"
    )
        port map (
      I0 => pCtlTknOvf_reg_n_0,
      I1 => \pCtlTknCnt_reg__0\(6),
      I2 => \pCtlTknCnt[6]_i_4__1_n_0\,
      I3 => \pCtlTknCnt_reg__0\(5),
      I4 => p_0_in_0,
      O => \pCtlTknOvf_i_1__1_n_0\
    );
pCtlTknOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pCtlTknOvf_i_1__1_n_0\,
      Q => pCtlTknOvf_reg_n_0,
      R => '0'
    );
\pDataQ_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(0),
      Q => \pDataQ_reg_n_0_[0]\,
      R => '0'
    );
\pDataQ_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(1),
      Q => \pDataQ_reg_n_0_[1]\,
      R => '0'
    );
\pDataQ_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(2),
      Q => \pDataQ_reg_n_0_[2]\,
      R => '0'
    );
\pDataQ_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(3),
      Q => \pDataQ_reg_n_0_[3]\,
      R => '0'
    );
\pDataQ_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(4),
      Q => \pDataQ_reg_n_0_[4]\,
      R => '0'
    );
\pDataQ_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(5),
      Q => \pDataQ_reg_n_0_[5]\,
      R => '0'
    );
\pDataQ_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(6),
      Q => \pDataQ_reg_n_0_[6]\,
      R => '0'
    );
\pDataQ_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(7),
      Q => \pDataQ_reg_n_0_[7]\,
      R => '0'
    );
\pDataQ_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => D(8),
      Q => \pDataQ_reg_n_0_[8]\,
      R => '0'
    );
\pDelayCenter_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      I1 => \pCenterTap_reg_n_0_[4]\,
      I2 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I3 => \pCenterTap_reg_n_0_[5]\,
      I4 => \pDelayCenter_i_2__1_n_0\,
      O => \pDelayCenter_i_1__1_n_0\
    );
\pDelayCenter_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \pCenterTap_reg_n_0_[1]\,
      I1 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      I2 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I3 => \pCenterTap_reg_n_0_[2]\,
      I4 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      I5 => \pCenterTap_reg_n_0_[3]\,
      O => \pDelayCenter_i_2__1_n_0\
    );
pDelayCenter_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayCenter_i_1__1_n_0\,
      Q => pDelayCenter_reg_n_0,
      R => '0'
    );
\pDelayOvf_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \pIDLY_CNT_Q_reg_n_0_[1]\,
      I1 => \pIDLY_CNT_Q_reg_n_0_[0]\,
      I2 => \pIDLY_CNT_Q_reg_n_0_[4]\,
      I3 => \pIDLY_CNT_Q_reg_n_0_[3]\,
      I4 => \pIDLY_CNT_Q_reg_n_0_[2]\,
      O => \pDelayOvf_i_1__1_n_0\
    );
pDelayOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayOvf_i_1__1_n_0\,
      Q => pDelayOvf_reg_n_0,
      R => '0'
    );
\pDelayWaitCnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => pDelayWaitCnt(0),
      I1 => p_2_in,
      O => \pDelayWaitCnt[0]_i_1_n_0\
    );
\pDelayWaitCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => pDelayWaitCnt(1),
      I1 => pDelayWaitCnt(0),
      I2 => p_2_in,
      O => \pDelayWaitCnt[1]_i_1_n_0\
    );
\pDelayWaitCnt[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000014"
    )
        port map (
      I0 => \pDelayWaitCnt[1]_i_3__1_n_0\,
      I1 => pState(6),
      I2 => pState(8),
      I3 => pState(3),
      I4 => \pDelayWaitCnt[1]_i_4__1_n_0\,
      I5 => \pFoundEyeFlag_i_3__1_n_0\,
      O => p_2_in
    );
\pDelayWaitCnt[1]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pState(5),
      I1 => pState(7),
      O => \pDelayWaitCnt[1]_i_3__1_n_0\
    );
\pDelayWaitCnt[1]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pState(10),
      I1 => pState(9),
      O => \pDelayWaitCnt[1]_i_4__1_n_0\
    );
\pDelayWaitCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayWaitCnt[0]_i_1_n_0\,
      Q => pDelayWaitCnt(0),
      R => '0'
    );
\pDelayWaitCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayWaitCnt[1]_i_1_n_0\,
      Q => pDelayWaitCnt(1),
      R => '0'
    );
\pDelayWaitOvf_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30AA"
    )
        port map (
      I0 => pDelayWaitOvf_reg_n_0,
      I1 => pDelayWaitCnt(0),
      I2 => pDelayWaitCnt(1),
      I3 => p_2_in,
      O => \pDelayWaitOvf_i_1__1_n_0\
    );
pDelayWaitOvf_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pDelayWaitOvf_i_1__1_n_0\,
      Q => pDelayWaitOvf_reg_n_0,
      R => '0'
    );
\pError_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => pState(6),
      I1 => pState(8),
      I2 => \pAligned_i_2__1_n_0\,
      I3 => pState(0),
      I4 => pState(10),
      I5 => pState(9),
      O => \pError_i_1__1_n_0\
    );
pError_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pError_i_1__1_n_0\,
      Q => \^palignerr_q_reg\,
      R => '0'
    );
\pEyeOpenCnt[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \pCenterTap[5]_i_3__1_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => pEyeOpenRst,
      O => \pEyeOpenCnt[0]_i_1__1_n_0\
    );
\pEyeOpenCnt[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \pCenterTap[5]_i_3__1_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => \pEyeOpenCnt_reg_n_0_[1]\,
      I3 => pEyeOpenRst,
      O => \pEyeOpenCnt[1]_i_1__1_n_0\
    );
\pEyeOpenCnt[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \pCenterTap[5]_i_3__1_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[1]\,
      I2 => \pEyeOpenCnt_reg_n_0_[0]\,
      I3 => \pEyeOpenCnt_reg_n_0_[2]\,
      I4 => pEyeOpenRst,
      O => \pEyeOpenCnt[2]_i_1__1_n_0\
    );
\pEyeOpenCnt[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[3]\,
      I1 => \pEyeOpenCnt_reg_n_0_[2]\,
      I2 => \pEyeOpenCnt_reg_n_0_[0]\,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pCenterTap[5]_i_3__1_n_0\,
      I5 => pEyeOpenRst,
      O => \pEyeOpenCnt[3]_i_1__1_n_0\
    );
\pEyeOpenCnt[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \pEyeOpenCnt[4]_i_2__1_n_0\,
      I1 => \pEyeOpenCnt_reg_n_0_[3]\,
      I2 => \pEyeOpenCnt_reg_n_0_[4]\,
      I3 => pEyeOpenRst,
      O => \pEyeOpenCnt[4]_i_1__1_n_0\
    );
\pEyeOpenCnt[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \pFoundEyeFlag_i_3__1_n_0\,
      I1 => pState(3),
      I2 => \iIn_q_i_2__1_n_0\,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pEyeOpenCnt_reg_n_0_[0]\,
      I5 => \pEyeOpenCnt_reg_n_0_[2]\,
      O => \pEyeOpenCnt[4]_i_2__1_n_0\
    );
\pEyeOpenCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[0]_i_1__1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[0]\,
      R => '0'
    );
\pEyeOpenCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[1]_i_1__1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[1]\,
      R => '0'
    );
\pEyeOpenCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[2]_i_1__1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[2]\,
      R => '0'
    );
\pEyeOpenCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[3]_i_1__1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[3]\,
      R => '0'
    );
\pEyeOpenCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pEyeOpenCnt[4]_i_1__1_n_0\,
      Q => \pEyeOpenCnt_reg_n_0_[4]\,
      R => '0'
    );
pFIFO_reg_0_31_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^pvld_0\,
      I1 => pVld_2,
      I2 => pVld_1,
      O => pAllVld
    );
\pFoundEyeFlag_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBFB0000AA0A"
    )
        port map (
      I0 => \pFoundEyeFlag_i_2__1_n_0\,
      I1 => pState(0),
      I2 => \pFoundEyeFlag_i_3__1_n_0\,
      I3 => \pFoundEyeFlag_i_4__1_n_0\,
      I4 => \iIn_q_i_2__1_n_0\,
      I5 => pFoundEyeFlag,
      O => \pFoundEyeFlag_i_1__1_n_0\
    );
\pFoundEyeFlag_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000030008000000"
    )
        port map (
      I0 => pFoundJtrFlag,
      I1 => \pEyeOpenCnt_reg_n_0_[0]\,
      I2 => \pFoundEyeFlag_i_5__1_n_0\,
      I3 => pState(3),
      I4 => \pEyeOpenCnt_reg_n_0_[1]\,
      I5 => \pEyeOpenCnt_reg_n_0_[4]\,
      O => \pFoundEyeFlag_i_2__1_n_0\
    );
\pFoundEyeFlag_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(4),
      I1 => pState(0),
      I2 => pState(1),
      I3 => pState(2),
      O => \pFoundEyeFlag_i_3__1_n_0\
    );
\pFoundEyeFlag_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pState(1),
      I1 => pState(2),
      I2 => pState(4),
      I3 => pState(3),
      O => \pFoundEyeFlag_i_4__1_n_0\
    );
\pFoundEyeFlag_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[2]\,
      I1 => \pEyeOpenCnt_reg_n_0_[3]\,
      O => \pFoundEyeFlag_i_5__1_n_0\
    );
pFoundEyeFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pFoundEyeFlag_i_1__1_n_0\,
      Q => pFoundEyeFlag,
      R => '0'
    );
\pFoundJtrFlag_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABA8AAAAAAAAAA"
    )
        port map (
      I0 => pFoundJtrFlag,
      I1 => \iIn_q_i_2__1_n_0\,
      I2 => pState(3),
      I3 => pState(0),
      I4 => pState(4),
      I5 => \pFoundJtrFlag_i_2__1_n_0\,
      O => \pFoundJtrFlag_i_1__1_n_0\
    );
\pFoundJtrFlag_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pState(2),
      I1 => pState(1),
      O => \pFoundJtrFlag_i_2__1_n_0\
    );
pFoundJtrFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pFoundJtrFlag_i_1__1_n_0\,
      Q => pFoundJtrFlag,
      R => '0'
    );
\pIDLY_CE_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \pIDLY_CE_i_2__0_n_0\,
      I1 => \pIDLY_CE_i_3__0_n_0\,
      I2 => pState(7),
      I3 => pState(0),
      I4 => pState(5),
      I5 => \pFoundEyeFlag_i_4__1_n_0\,
      O => \pIDLY_CE_i_1__1_n_0\
    );
\pIDLY_CE_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \pFoundEyeFlag_i_4__1_n_0\,
      I1 => pState(10),
      I2 => pState(0),
      I3 => pState(5),
      I4 => \pCtlTknCnt[6]_i_5__0_n_0\,
      O => \pIDLY_CE_i_2__0_n_0\
    );
\pIDLY_CE_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(8),
      I1 => pState(6),
      I2 => pState(9),
      I3 => pState(10),
      O => \pIDLY_CE_i_3__0_n_0\
    );
pIDLY_CE_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pIDLY_CE_i_1__1_n_0\,
      Q => pIDLY_CE,
      R => '0'
    );
\pIDLY_CNT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(0),
      Q => \pIDLY_CNT_Q_reg_n_0_[0]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(1),
      Q => \pIDLY_CNT_Q_reg_n_0_[1]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(2),
      Q => \pIDLY_CNT_Q_reg_n_0_[2]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(3),
      Q => \pIDLY_CNT_Q_reg_n_0_[3]\,
      R => '0'
    );
\pIDLY_CNT_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pIDLY_CE_reg_0(4),
      Q => \pIDLY_CNT_Q_reg_n_0_[4]\,
      R => '0'
    );
\pIDLY_INC_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => pIDLY_INC_1,
      I1 => \^pidly_inc\,
      I2 => \pIDLY_CE_i_2__0_n_0\,
      O => \pIDLY_INC_i_1__1_n_0\
    );
\pIDLY_INC_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \pFoundEyeFlag_i_4__1_n_0\,
      I1 => pState(5),
      I2 => pState(0),
      I3 => pState(7),
      I4 => \pIDLY_CE_i_3__0_n_0\,
      O => pIDLY_INC_1
    );
pIDLY_INC_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pIDLY_INC_i_1__1_n_0\,
      Q => \^pidly_inc\,
      R => '0'
    );
\pIDLY_LD_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => pState(5),
      I1 => pState(7),
      I2 => \pFoundEyeFlag_i_4__1_n_0\,
      I3 => pState(0),
      I4 => \pIDLY_CE_i_3__0_n_0\,
      O => \pIDLY_LD_i_1__1_n_0\
    );
pIDLY_LD_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pIDLY_LD_i_1__1_n_0\,
      Q => pIDLY_LD,
      R => '0'
    );
pStateNxt: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => pState(0),
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(3),
      I4 => pState(4),
      O => pStateNxt_n_0
    );
\pStateNxt__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEE8"
    )
        port map (
      I0 => pState(0),
      I1 => pState(1),
      I2 => pState(2),
      I3 => pState(3),
      I4 => pState(4),
      O => \pStateNxt__0_n_0\
    );
\pStateNxt__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010116"
    )
        port map (
      I0 => pState(5),
      I1 => pState(6),
      I2 => pState(7),
      I3 => pState(8),
      I4 => pState(9),
      I5 => pState(10),
      O => \pStateNxt__1_n_0\
    );
\pStateNxt__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFEE8"
    )
        port map (
      I0 => pState(5),
      I1 => pState(6),
      I2 => pState(7),
      I3 => pState(8),
      I4 => pState(9),
      I5 => pState(10),
      O => \pStateNxt__2_n_0\
    );
\pStateNxt__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => pStateNxt_n_0,
      I1 => \pStateNxt__0_n_0\,
      I2 => \pStateNxt__1_n_0\,
      I3 => \pStateNxt__2_n_0\,
      O => \pStateNxt__3_n_0\
    );
\pState[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      O => \pState[0]_i_1__1_n_0\
    );
\pState[10]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
        port map (
      I0 => \pState[10]_i_3__1_n_0\,
      I1 => \pState[10]_i_4__1_n_0\,
      I2 => pState(7),
      I3 => pState(8),
      I4 => \pState[10]_i_5__1_n_0\,
      O => \pStateNxt__4\
    );
\pState[10]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(6),
      I2 => pDelayOvf_reg_n_0,
      O => \pState[10]_i_2__1_n_0\
    );
\pState[10]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFCF8888"
    )
        port map (
      I0 => pState(1),
      I1 => \pIDLY_CE_i_3__0_n_0\,
      I2 => pTknFlagQ,
      I3 => pCtlTknOvf_reg_n_0,
      I4 => pState(2),
      I5 => \pState[10]_i_6__1_n_0\,
      O => \pState[10]_i_3__1_n_0\
    );
\pState[10]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => pState(9),
      I1 => pState(10),
      I2 => pState(7),
      I3 => pState(6),
      O => \pState[10]_i_4__1_n_0\
    );
\pState[10]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55005455"
    )
        port map (
      I0 => \pIDLY_CE_i_3__0_n_0\,
      I1 => \out\(0),
      I2 => pBlankBegin,
      I3 => pState(1),
      I4 => pState(2),
      I5 => \pState[10]_i_7__1_n_0\,
      O => \pState[10]_i_5__1_n_0\
    );
\pState[10]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pState(5),
      I1 => pState(0),
      I2 => pState(4),
      I3 => pState(3),
      O => \pState[10]_i_6__1_n_0\
    );
\pState[10]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEC0"
    )
        port map (
      I0 => pDelayWaitOvf_reg_n_0,
      I1 => pState(9),
      I2 => pState(10),
      I3 => pState(7),
      I4 => pState(6),
      I5 => pState(8),
      O => \pState[10]_i_7__1_n_0\
    );
\pState[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08AAAAAA08AA08"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(2),
      I2 => pTknFlagQ,
      I3 => pState(0),
      I4 => pDelayOvf_reg_n_0,
      I5 => pState(6),
      O => \pState[1]_i_1__1_n_0\
    );
\pState[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(1),
      I2 => pBlankBegin,
      O => \pState[2]_i_1__1_n_0\
    );
\pState[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pTknFlagQ,
      I2 => pState(2),
      O => \pState[3]_i_1__1_n_0\
    );
\pState[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0808"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(3),
      I2 => \pState[5]_i_2__1_n_0\,
      I3 => pBlankBegin,
      I4 => pState(1),
      O => \pState[4]_i_1__1_n_0\
    );
\pState[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => \pState[5]_i_2__1_n_0\,
      I2 => pState(3),
      I3 => pFoundEyeFlag,
      I4 => pState(4),
      O => \pState[5]_i_1__1_n_0\
    );
\pState[5]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \pEyeOpenCnt_reg_n_0_[3]\,
      I1 => \pEyeOpenCnt_reg_n_0_[2]\,
      I2 => \pEyeOpenCnt_reg_n_0_[4]\,
      I3 => \pEyeOpenCnt_reg_n_0_[1]\,
      I4 => \pEyeOpenCnt_reg_n_0_[0]\,
      O => \pState[5]_i_2__1_n_0\
    );
\pState[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(5),
      O => \pState[6]_i_1__1_n_0\
    );
\pState[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA080808"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(8),
      I2 => pDelayCenter_reg_n_0,
      I3 => pFoundEyeFlag,
      I4 => pState(4),
      O => \pState[7]_i_1__1_n_0\
    );
\pState[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(7),
      O => \pState[8]_i_1__1_n_0\
    );
\pState[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pStateNxt__3_n_0\,
      I1 => pState(8),
      I2 => pDelayCenter_reg_n_0,
      O => \pState[9]_i_1__1_n_0\
    );
\pState_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[0]_i_1__1_n_0\,
      Q => pState(0),
      S => SS(0)
    );
\pState_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[10]_i_2__1_n_0\,
      Q => pState(10),
      R => SS(0)
    );
\pState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[1]_i_1__1_n_0\,
      Q => pState(1),
      R => SS(0)
    );
\pState_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[2]_i_1__1_n_0\,
      Q => pState(2),
      R => SS(0)
    );
\pState_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[3]_i_1__1_n_0\,
      Q => pState(3),
      R => SS(0)
    );
\pState_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[4]_i_1__1_n_0\,
      Q => pState(4),
      R => SS(0)
    );
\pState_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[5]_i_1__1_n_0\,
      Q => pState(5),
      R => SS(0)
    );
\pState_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[6]_i_1__1_n_0\,
      Q => pState(6),
      R => SS(0)
    );
\pState_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[7]_i_1__1_n_0\,
      Q => pState(7),
      R => SS(0)
    );
\pState_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[8]_i_1__1_n_0\,
      Q => pState(8),
      R => SS(0)
    );
\pState_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => \pStateNxt__4\,
      D => \pState[9]_i_1__1_n_0\,
      Q => pState(9),
      R => SS(0)
    );
pTknFlagQ_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTknFlag,
      Q => pTknFlagQ,
      R => '0'
    );
\pTknFlag_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30000808"
    )
        port map (
      I0 => \pTknFlag_i_2__1_n_0\,
      I1 => \pDataQ_reg_n_0_[8]\,
      I2 => \pDataQ_reg_n_0_[0]\,
      I3 => \pTknFlag_i_3__1_n_0\,
      I4 => \pDataQ_reg_n_0_[3]\,
      O => pTknFlag0
    );
\pTknFlag_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \pDataQ_reg_n_0_[4]\,
      I1 => \pDataQ_reg_n_0_[5]\,
      I2 => \pDataQ_reg_n_0_[7]\,
      I3 => \pDataQ_reg_n_0_[1]\,
      I4 => \pDataQ_reg_n_0_[2]\,
      I5 => \pDataQ_reg_n_0_[6]\,
      O => \pTknFlag_i_2__1_n_0\
    );
\pTknFlag_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \pDataQ_reg_n_0_[4]\,
      I1 => \pDataQ_reg_n_0_[5]\,
      I2 => \pDataQ_reg_n_0_[7]\,
      I3 => \pDataQ_reg_n_0_[1]\,
      I4 => \pDataQ_reg_n_0_[2]\,
      I5 => \pDataQ_reg_n_0_[6]\,
      O => \pTknFlag_i_3__1_n_0\
    );
pTknFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pTknFlag0,
      Q => pTknFlag,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15 is
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
      C => RefClk,
      CE => '1',
      D => D(0),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_22 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_22 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_22;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_22 is
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
      C => RefClk,
      CE => '1',
      D => D(0),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_4 is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    rDlyRst_reg : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rDlyRst_reg_0 : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_4 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_4 is
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
  SS(0) <= oSyncStages(1);
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
rDlyRst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => E(0),
      I1 => rDlyRst_reg_0,
      I2 => oSyncStages(1),
      O => rDlyRst_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5 is
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
      C => rMMCM_LckdRisingFlag_reg,
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
      C => rMMCM_LckdRisingFlag_reg,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Filter.sIn_q_reg\ : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    SCL_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7 is
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
\Filter.cntPeriods[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \Filter.sIn_q_reg\,
      O => SS(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => SCL_I,
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_8 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    sIn_q : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    SDA_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_8 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_8 is
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
\Filter.cntPeriods[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => sIn_q,
      O => SS(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => SDA_I,
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_9 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \oSyncStages_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_9 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_9 is
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
      C => RefClk,
      CE => '1',
      D => D(0),
      PRE => \oSyncStages_reg[1]_0\(0),
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
      PRE => \oSyncStages_reg[1]_0\(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdFallingFlag_reg : out STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \rMMCM_Reset_q_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\ is
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
  D(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \rMMCM_Reset_q_reg[0]\(0),
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
rMMCM_LckdFallingFlag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => oSyncStages(1),
      O => rMMCM_LckdFallingFlag_reg
    );
rMMCM_LckdRisingFlag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => Q(0),
      O => rMMCM_LckdRisingFlag_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    \oSyncStages_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\ is
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
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      CLR => \oSyncStages_reg[1]_0\(0),
      D => D(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      CLR => \oSyncStages_reg[1]_0\(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_16\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_16\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_16\ is
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
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      CLR => AS(0),
      D => D(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      CLR => AS(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_23\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_23\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_23\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_23\ is
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
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      CLR => AS(0),
      D => D(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      CLR => AS(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    in0 : in STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge is
  signal aRst_int : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of aRst_int : signal is "true";
begin
  aRst_int <= in0;
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5
     port map (
      AS(0) => aRst_int,
      \out\(0) => \out\(0),
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_2 is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    rDlyRst_reg : out STD_LOGIC;
    aRst_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rDlyRst_reg_0 : in STD_LOGIC;
    RefClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_2 : entity is "ResetBridge";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_2 is
  signal aRst_int_0 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of aRst_int_0 : signal is "true";
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_4
     port map (
      AS(0) => aRst_int_0,
      E(0) => E(0),
      RefClk => RefClk,
      SS(0) => SS(0),
      rDlyRst_reg => rDlyRst_reg,
      rDlyRst_reg_0 => rDlyRst_reg_0
    );
\aRst_int_inferred_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aRst_n,
      O => aRst_int_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_3 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    aDlyLckd : in STD_LOGIC;
    RefClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_3 : entity is "ResetBridge";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_3 is
  signal aRst_int : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of aRst_int : signal is "true";
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync
     port map (
      AS(0) => aRst_int,
      RefClk => RefClk,
      \out\(0) => \out\(0)
    );
aRst_int_inferred_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aDlyLckd,
      O => aRst_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    iIn_q_reg_0 : out STD_LOGIC;
    iIn_q_reg_1 : out STD_LOGIC;
    iIn_q_reg_2 : out STD_LOGIC;
    iIn_q_reg_3 : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rTimeoutCnt_reg : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase is
  signal iIn_q : STD_LOGIC;
  signal \^iin_q_reg_0\ : STD_LOGIC;
  signal \^iin_q_reg_1\ : STD_LOGIC;
  signal \^iin_q_reg_2\ : STD_LOGIC;
  signal \^iin_q_reg_3\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
begin
  iIn_q_reg_0 <= \^iin_q_reg_0\;
  iIn_q_reg_1 <= \^iin_q_reg_1\;
  iIn_q_reg_2 <= \^iin_q_reg_2\;
  iIn_q_reg_3 <= \^iin_q_reg_3\;
SyncAsyncx: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\
     port map (
      D(0) => iIn_q,
      \oSyncStages_reg[1]_0\(0) => \oSyncStages_reg[1]\(0),
      \out\(0) => \out\(0),
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
\iIn_q_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^iin_q_reg_0\,
      I1 => \^iin_q_reg_1\,
      I2 => \^iin_q_reg_2\,
      I3 => \^iin_q_reg_3\,
      O => p_0_out
    );
\iIn_q_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => rTimeoutCnt_reg(7),
      I1 => rTimeoutCnt_reg(20),
      I2 => rTimeoutCnt_reg(23),
      I3 => rTimeoutCnt_reg(13),
      I4 => rTimeoutCnt_reg(8),
      I5 => rTimeoutCnt_reg(11),
      O => \^iin_q_reg_0\
    );
iIn_q_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rTimeoutCnt_reg(22),
      I1 => rTimeoutCnt_reg(18),
      I2 => rTimeoutCnt_reg(21),
      I3 => rTimeoutCnt_reg(14),
      I4 => rTimeoutCnt_reg(16),
      I5 => rTimeoutCnt_reg(17),
      O => \^iin_q_reg_1\
    );
iIn_q_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rTimeoutCnt_reg(12),
      I1 => rTimeoutCnt_reg(15),
      I2 => rTimeoutCnt_reg(19),
      I3 => rTimeoutCnt_reg(10),
      I4 => rTimeoutCnt_reg(6),
      I5 => rTimeoutCnt_reg(9),
      O => \^iin_q_reg_2\
    );
iIn_q_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rTimeoutCnt_reg(3),
      I1 => rTimeoutCnt_reg(4),
      I2 => rTimeoutCnt_reg(5),
      I3 => rTimeoutCnt_reg(2),
      I4 => rTimeoutCnt_reg(0),
      I5 => rTimeoutCnt_reg(1),
      O => \^iin_q_reg_3\
    );
iIn_q_reg: unisim.vcomponents.FDCE
     port map (
      C => RefClk,
      CE => '1',
      CLR => \oSyncStages_reg[1]\(0),
      D => p_0_out,
      Q => iIn_q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_13 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    iIn_q_reg_0 : out STD_LOGIC;
    iIn_q_reg_1 : out STD_LOGIC;
    iIn_q_reg_2 : out STD_LOGIC;
    iIn_q_reg_3 : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    rTimeoutCnt_reg : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_13 : entity is "SyncBase";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_13 is
  signal \iIn_q_i_1__3_n_0\ : STD_LOGIC;
  signal \^iin_q_reg_0\ : STD_LOGIC;
  signal \^iin_q_reg_1\ : STD_LOGIC;
  signal \^iin_q_reg_2\ : STD_LOGIC;
  signal \^iin_q_reg_3\ : STD_LOGIC;
  signal iIn_q_reg_n_0 : STD_LOGIC;
begin
  iIn_q_reg_0 <= \^iin_q_reg_0\;
  iIn_q_reg_1 <= \^iin_q_reg_1\;
  iIn_q_reg_2 <= \^iin_q_reg_2\;
  iIn_q_reg_3 <= \^iin_q_reg_3\;
SyncAsyncx: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_16\
     port map (
      AS(0) => AS(0),
      D(0) => iIn_q_reg_n_0,
      \out\(0) => \out\(0),
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
\iIn_q_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^iin_q_reg_0\,
      I1 => \^iin_q_reg_1\,
      I2 => \^iin_q_reg_2\,
      I3 => \^iin_q_reg_3\,
      O => \iIn_q_i_1__3_n_0\
    );
\iIn_q_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => rTimeoutCnt_reg(7),
      I1 => rTimeoutCnt_reg(20),
      I2 => rTimeoutCnt_reg(23),
      I3 => rTimeoutCnt_reg(13),
      I4 => rTimeoutCnt_reg(8),
      I5 => rTimeoutCnt_reg(11),
      O => \^iin_q_reg_0\
    );
\iIn_q_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rTimeoutCnt_reg(22),
      I1 => rTimeoutCnt_reg(18),
      I2 => rTimeoutCnt_reg(21),
      I3 => rTimeoutCnt_reg(14),
      I4 => rTimeoutCnt_reg(16),
      I5 => rTimeoutCnt_reg(17),
      O => \^iin_q_reg_1\
    );
\iIn_q_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rTimeoutCnt_reg(12),
      I1 => rTimeoutCnt_reg(15),
      I2 => rTimeoutCnt_reg(19),
      I3 => rTimeoutCnt_reg(10),
      I4 => rTimeoutCnt_reg(6),
      I5 => rTimeoutCnt_reg(9),
      O => \^iin_q_reg_2\
    );
\iIn_q_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rTimeoutCnt_reg(3),
      I1 => rTimeoutCnt_reg(4),
      I2 => rTimeoutCnt_reg(5),
      I3 => rTimeoutCnt_reg(2),
      I4 => rTimeoutCnt_reg(0),
      I5 => rTimeoutCnt_reg(1),
      O => \^iin_q_reg_3\
    );
iIn_q_reg: unisim.vcomponents.FDCE
     port map (
      C => RefClk,
      CE => '1',
      CLR => AS(0),
      D => \iIn_q_i_1__3_n_0\,
      Q => iIn_q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_20 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    iIn_q_reg_0 : out STD_LOGIC;
    iIn_q_reg_1 : out STD_LOGIC;
    iIn_q_reg_2 : out STD_LOGIC;
    iIn_q_reg_3 : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    rTimeoutCnt_reg : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_20 : entity is "SyncBase";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_20 is
  signal \iIn_q_i_1__4_n_0\ : STD_LOGIC;
  signal \^iin_q_reg_0\ : STD_LOGIC;
  signal \^iin_q_reg_1\ : STD_LOGIC;
  signal \^iin_q_reg_2\ : STD_LOGIC;
  signal \^iin_q_reg_3\ : STD_LOGIC;
  signal iIn_q_reg_n_0 : STD_LOGIC;
begin
  iIn_q_reg_0 <= \^iin_q_reg_0\;
  iIn_q_reg_1 <= \^iin_q_reg_1\;
  iIn_q_reg_2 <= \^iin_q_reg_2\;
  iIn_q_reg_3 <= \^iin_q_reg_3\;
SyncAsyncx: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_23\
     port map (
      AS(0) => AS(0),
      D(0) => iIn_q_reg_n_0,
      \out\(0) => \out\(0),
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
\iIn_q_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^iin_q_reg_0\,
      I1 => \^iin_q_reg_1\,
      I2 => \^iin_q_reg_2\,
      I3 => \^iin_q_reg_3\,
      O => \iIn_q_i_1__4_n_0\
    );
\iIn_q_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => rTimeoutCnt_reg(7),
      I1 => rTimeoutCnt_reg(20),
      I2 => rTimeoutCnt_reg(23),
      I3 => rTimeoutCnt_reg(13),
      I4 => rTimeoutCnt_reg(8),
      I5 => rTimeoutCnt_reg(11),
      O => \^iin_q_reg_0\
    );
\iIn_q_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rTimeoutCnt_reg(22),
      I1 => rTimeoutCnt_reg(18),
      I2 => rTimeoutCnt_reg(21),
      I3 => rTimeoutCnt_reg(14),
      I4 => rTimeoutCnt_reg(16),
      I5 => rTimeoutCnt_reg(17),
      O => \^iin_q_reg_1\
    );
\iIn_q_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rTimeoutCnt_reg(12),
      I1 => rTimeoutCnt_reg(15),
      I2 => rTimeoutCnt_reg(19),
      I3 => rTimeoutCnt_reg(10),
      I4 => rTimeoutCnt_reg(6),
      I5 => rTimeoutCnt_reg(9),
      O => \^iin_q_reg_2\
    );
\iIn_q_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rTimeoutCnt_reg(3),
      I1 => rTimeoutCnt_reg(4),
      I2 => rTimeoutCnt_reg(5),
      I3 => rTimeoutCnt_reg(2),
      I4 => rTimeoutCnt_reg(0),
      I5 => rTimeoutCnt_reg(1),
      O => \^iin_q_reg_3\
    );
iIn_q_reg: unisim.vcomponents.FDCE
     port map (
      C => RefClk,
      CE => '1',
      CLR => AS(0),
      D => \iIn_q_i_1__4_n_0\,
      Q => iIn_q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pState_reg[3]\ : in STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0\ : entity is "SyncBase";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0\ is
  signal iIn_q_reg_n_0 : STD_LOGIC;
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_9
     port map (
      D(0) => iIn_q_reg_n_0,
      RefClk => RefClk,
      \oSyncStages_reg[1]_0\(0) => \oSyncStages_reg[1]\(0),
      \out\(0) => \out\(0)
    );
iIn_q_reg: unisim.vcomponents.FDPE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pState_reg[3]\,
      PRE => \oSyncStages_reg[1]\(0),
      Q => iIn_q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_14\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pState_reg[3]\ : in STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_14\ : entity is "SyncBase";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_14\ is
  signal iIn_q_reg_n_0 : STD_LOGIC;
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15
     port map (
      AS(0) => AS(0),
      D(0) => iIn_q_reg_n_0,
      RefClk => RefClk,
      \out\(0) => \out\(0)
    );
iIn_q_reg: unisim.vcomponents.FDPE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pState_reg[3]\,
      PRE => AS(0),
      Q => iIn_q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_21\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pState_reg[3]\ : in STD_LOGIC;
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_21\ : entity is "SyncBase";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_21\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_21\ is
  signal iIn_q_reg_n_0 : STD_LOGIC;
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_22
     port map (
      AS(0) => AS(0),
      D(0) => iIn_q_reg_n_0,
      RefClk => RefClk,
      \out\(0) => \out\(0)
    );
iIn_q_reg: unisim.vcomponents.FDPE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pState_reg[3]\,
      PRE => AS(0),
      Q => iIn_q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWI_SlaveCtl is
  port (
    sI2C_End : out STD_LOGIC;
    sI2C_Done : out STD_LOGIC;
    rd_wrn_reg_0 : out STD_LOGIC;
    SDA_T : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RefClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sState : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sState_reg[0]\ : in STD_LOGIC;
    \sAddr_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sAddr_reg[2]\ : in STD_LOGIC;
    \sAddr_reg[5]\ : in STD_LOGIC;
    SDA_I : in STD_LOGIC;
    SCL_I : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWI_SlaveCtl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWI_SlaveCtl is
  signal DONE_O_i_2_n_0 : STD_LOGIC;
  signal DONE_O_i_3_n_0 : STD_LOGIC;
  signal DONE_O_i_4_n_0 : STD_LOGIC;
  signal DONE_O_i_5_n_0 : STD_LOGIC;
  signal END_O_i_2_n_0 : STD_LOGIC;
  signal \FSM_gray_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_7_n_0\ : STD_LOGIC;
  signal GlitchF_SCL_n_0 : STD_LOGIC;
  signal GlitchF_SCL_n_1 : STD_LOGIC;
  signal SyncSCL_n_1 : STD_LOGIC;
  signal SyncSDA_n_1 : STD_LOGIC;
  signal \bitCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[2]_i_2_n_0\ : STD_LOGIC;
  signal \bitCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitCount_reg_n_0_[2]\ : STD_LOGIC;
  signal dScl : STD_LOGIC;
  signal dSda : STD_LOGIC;
  signal \dataByte[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_2_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_3_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_4_n_0\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[0]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[2]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[3]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[4]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[5]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[6]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[7]\ : STD_LOGIC;
  signal ddScl : STD_LOGIC;
  signal ddSda : STD_LOGIC;
  signal fStart : STD_LOGIC;
  signal fStop : STD_LOGIC;
  signal iDone : STD_LOGIC;
  signal iEnd : STD_LOGIC;
  signal rd_wrn_i_1_n_0 : STD_LOGIC;
  signal rd_wrn_i_2_n_0 : STD_LOGIC;
  signal \^rd_wrn_reg_0\ : STD_LOGIC;
  signal \^si2c_done\ : STD_LOGIC;
  signal sIn_q : STD_LOGIC;
  signal sOut : STD_LOGIC;
  signal sScl : STD_LOGIC;
  signal sSda : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DONE_O_i_4 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_7\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \FSM_gray_state[2]_i_7\ : label is "soft_lutpair93";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[0]\ : label is "stidle:000,staddress:001,stturnaround:011,stsack:010,stwrite:110,stmack:100,stread:111";
  attribute KEEP : string;
  attribute KEEP of \FSM_gray_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[1]\ : label is "stidle:000,staddress:001,stturnaround:011,stsack:010,stwrite:110,stmack:100,stread:111";
  attribute KEEP of \FSM_gray_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[2]\ : label is "stidle:000,staddress:001,stturnaround:011,stsack:010,stwrite:110,stmack:100,stread:111";
  attribute KEEP of \FSM_gray_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \bitCount[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \bitCount[2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \dataByte[0]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \dataByte[1]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \dataByte[2]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \dataByte[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \dataByte[4]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \dataByte[5]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \dataByte[6]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \dataByte[7]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of rd_wrn_i_2 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \sAddr_rep[0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \sAddr_rep[1]_i_1\ : label is "soft_lutpair89";
begin
  rd_wrn_reg_0 <= \^rd_wrn_reg_0\;
  sI2C_Done <= \^si2c_done\;
DONE_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000573000"
    )
        port map (
      I0 => DONE_O_i_2_n_0,
      I1 => DONE_O_i_3_n_0,
      I2 => state(0),
      I3 => ddScl,
      I4 => dScl,
      I5 => DONE_O_i_4_n_0,
      O => iDone
    );
DONE_O_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \dataByte_reg_n_0_[3]\,
      I1 => \dataByte_reg_n_0_[5]\,
      I2 => \dataByte_reg_n_0_[6]\,
      I3 => \dataByte_reg_n_0_[4]\,
      I4 => DONE_O_i_5_n_0,
      O => DONE_O_i_2_n_0
    );
DONE_O_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => DONE_O_i_3_n_0
    );
DONE_O_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bitCount_reg_n_0_[2]\,
      I1 => \bitCount_reg_n_0_[1]\,
      I2 => \bitCount_reg_n_0_[0]\,
      O => DONE_O_i_4_n_0
    );
DONE_O_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \dataByte_reg_n_0_[1]\,
      I1 => \dataByte_reg_n_0_[2]\,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => \dataByte_reg_n_0_[0]\,
      O => DONE_O_i_5_n_0
    );
DONE_O_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => iDone,
      Q => \^si2c_done\,
      R => '0'
    );
END_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666600006E660000"
    )
        port map (
      I0 => dSda,
      I1 => ddSda,
      I2 => state(1),
      I3 => END_O_i_2_n_0,
      I4 => dScl,
      I5 => ddScl,
      O => iEnd
    );
END_O_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      O => END_O_i_2_n_0
    );
END_O_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => iEnd,
      Q => sI2C_End,
      R => '0'
    );
\FSM_gray_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABAFFBABABA00"
    )
        port map (
      I0 => \FSM_gray_state[0]_i_2_n_0\,
      I1 => \FSM_gray_state[0]_i_3_n_0\,
      I2 => \FSM_gray_state[1]_i_2_n_0\,
      I3 => \FSM_gray_state[1]_i_5_n_0\,
      I4 => \FSM_gray_state[2]_i_5_n_0\,
      I5 => state(0),
      O => \FSM_gray_state[0]_i_1_n_0\
    );
\FSM_gray_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \FSM_gray_state[0]_i_2_n_0\
    );
\FSM_gray_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFEF"
    )
        port map (
      I0 => \FSM_gray_state[1]_i_6_n_0\,
      I1 => \dataByte_reg_n_0_[3]\,
      I2 => \dataByte_reg_n_0_[4]\,
      I3 => \dataByte_reg_n_0_[2]\,
      I4 => \FSM_gray_state[0]_i_4_n_0\,
      I5 => END_O_i_2_n_0,
      O => \FSM_gray_state[0]_i_3_n_0\
    );
\FSM_gray_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F44444444444"
    )
        port map (
      I0 => state(0),
      I1 => \^rd_wrn_reg_0\,
      I2 => ddSda,
      I3 => dScl,
      I4 => dSda,
      I5 => state(1),
      O => \FSM_gray_state[0]_i_4_n_0\
    );
\FSM_gray_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8AFF8A8A8A00"
    )
        port map (
      I0 => \FSM_gray_state[1]_i_2_n_0\,
      I1 => \FSM_gray_state[1]_i_3_n_0\,
      I2 => \FSM_gray_state[1]_i_4_n_0\,
      I3 => \FSM_gray_state[1]_i_5_n_0\,
      I4 => \FSM_gray_state[2]_i_5_n_0\,
      I5 => state(1),
      O => \FSM_gray_state[1]_i_1_n_0\
    );
\FSM_gray_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EFFFEF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => ddSda,
      I3 => dScl,
      I4 => dSda,
      O => \FSM_gray_state[1]_i_2_n_0\
    );
\FSM_gray_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_gray_state[1]_i_6_n_0\,
      I2 => \dataByte_reg_n_0_[3]\,
      I3 => \dataByte_reg_n_0_[4]\,
      I4 => \dataByte_reg_n_0_[2]\,
      O => \FSM_gray_state[1]_i_3_n_0\
    );
\FSM_gray_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF010F0FF"
    )
        port map (
      I0 => sState(1),
      I1 => sState(0),
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      I5 => fStart,
      O => \FSM_gray_state[1]_i_4_n_0\
    );
\FSM_gray_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBBBBBAAAAA"
    )
        port map (
      I0 => \FSM_gray_state[2]_i_4_n_0\,
      I1 => \FSM_gray_state[2]_i_6_n_0\,
      I2 => rd_wrn_i_2_n_0,
      I3 => fStop,
      I4 => state(0),
      I5 => fStart,
      O => \FSM_gray_state[1]_i_5_n_0\
    );
\FSM_gray_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \dataByte_reg_n_0_[5]\,
      I3 => \dataByte_reg_n_0_[6]\,
      I4 => \dataByte_reg_n_0_[1]\,
      I5 => \dataByte_reg_n_0_[0]\,
      O => \FSM_gray_state[1]_i_6_n_0\
    );
\FSM_gray_state[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ddSda,
      I1 => dScl,
      I2 => dSda,
      O => fStart
    );
\FSM_gray_state[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => dSda,
      I1 => dScl,
      I2 => ddSda,
      O => fStop
    );
\FSM_gray_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \FSM_gray_state[2]_i_2_n_0\,
      I1 => \FSM_gray_state[2]_i_3_n_0\,
      I2 => \FSM_gray_state[2]_i_4_n_0\,
      I3 => \FSM_gray_state[2]_i_5_n_0\,
      I4 => state(2),
      O => \FSM_gray_state[2]_i_1_n_0\
    );
\FSM_gray_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B70000B700000700"
    )
        port map (
      I0 => dSda,
      I1 => dScl,
      I2 => ddSda,
      I3 => state(2),
      I4 => state(0),
      I5 => state(1),
      O => \FSM_gray_state[2]_i_2_n_0\
    );
\FSM_gray_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF400840"
    )
        port map (
      I0 => dSda,
      I1 => dScl,
      I2 => ddSda,
      I3 => state(0),
      I4 => rd_wrn_i_2_n_0,
      I5 => \FSM_gray_state[2]_i_6_n_0\,
      O => \FSM_gray_state[2]_i_3_n_0\
    );
\FSM_gray_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660066066660000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => ddSda,
      I3 => dSda,
      I4 => ddScl,
      I5 => dScl,
      O => \FSM_gray_state[2]_i_4_n_0\
    );
\FSM_gray_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050505450515050"
    )
        port map (
      I0 => DONE_O_i_3_n_0,
      I1 => state(0),
      I2 => \FSM_gray_state[2]_i_7_n_0\,
      I3 => DONE_O_i_4_n_0,
      I4 => dScl,
      I5 => ddScl,
      O => \FSM_gray_state[2]_i_5_n_0\
    );
\FSM_gray_state[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => \FSM_gray_state[2]_i_6_n_0\
    );
\FSM_gray_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => dSda,
      I1 => dScl,
      I2 => ddSda,
      O => \FSM_gray_state[2]_i_7_n_0\
    );
\FSM_gray_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \FSM_gray_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_gray_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \FSM_gray_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_gray_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \FSM_gray_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
GlitchF_SCL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter
     port map (
      \Filter.sOut_reg_0\ => GlitchF_SCL_n_0,
      RefClk => RefClk,
      SS(0) => SyncSCL_n_1,
      dScl_reg => GlitchF_SCL_n_1,
      \out\(0) => sScl
    );
GlitchF_SDA: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_6
     port map (
      RefClk => RefClk,
      SS(0) => SyncSDA_n_1,
      \out\(0) => sSda,
      sIn_q => sIn_q,
      sOut => sOut
    );
SDA_T_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFF3"
    )
        port map (
      I0 => \dataByte_reg_n_0_[7]\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      O => SDA_T
    );
SyncSCL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7
     port map (
      \Filter.sIn_q_reg\ => GlitchF_SCL_n_0,
      RefClk => RefClk,
      SCL_I => SCL_I,
      SS(0) => SyncSCL_n_1,
      \out\(0) => sScl
    );
SyncSDA: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_8
     port map (
      RefClk => RefClk,
      SDA_I => SDA_I,
      SS(0) => SyncSDA_n_1,
      \out\(0) => sSda,
      sIn_q => sIn_q
    );
\bitCount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \bitCount_reg_n_0_[0]\,
      I1 => \bitCount[2]_i_2_n_0\,
      I2 => \dataByte[7]_i_3_n_0\,
      O => \bitCount[0]_i_1_n_0\
    );
\bitCount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6FF"
    )
        port map (
      I0 => \bitCount_reg_n_0_[1]\,
      I1 => \bitCount[2]_i_2_n_0\,
      I2 => \bitCount_reg_n_0_[0]\,
      I3 => \dataByte[7]_i_3_n_0\,
      O => \bitCount[1]_i_1_n_0\
    );
\bitCount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA6FFFF"
    )
        port map (
      I0 => \bitCount_reg_n_0_[2]\,
      I1 => \bitCount[2]_i_2_n_0\,
      I2 => \bitCount_reg_n_0_[1]\,
      I3 => \bitCount_reg_n_0_[0]\,
      I4 => \dataByte[7]_i_3_n_0\,
      O => \bitCount[2]_i_1_n_0\
    );
\bitCount[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00801800"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => dScl,
      I4 => ddScl,
      O => \bitCount[2]_i_2_n_0\
    );
\bitCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \bitCount[0]_i_1_n_0\,
      Q => \bitCount_reg_n_0_[0]\,
      R => '0'
    );
\bitCount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \bitCount[1]_i_1_n_0\,
      Q => \bitCount_reg_n_0_[1]\,
      R => '0'
    );
\bitCount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \bitCount[2]_i_1_n_0\,
      Q => \bitCount_reg_n_0_[2]\,
      R => '0'
    );
dScl_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => GlitchF_SCL_n_1,
      Q => dScl,
      R => '0'
    );
dSda_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => sOut,
      Q => dSda,
      R => '0'
    );
\dataByte[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dSda,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => Q(0),
      O => \dataByte[0]_i_1_n_0\
    );
\dataByte[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[0]\,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => Q(1),
      O => \dataByte[1]_i_1_n_0\
    );
\dataByte[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[1]\,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => Q(2),
      O => \dataByte[2]_i_1_n_0\
    );
\dataByte[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[2]\,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => Q(3),
      O => \dataByte[3]_i_1_n_0\
    );
\dataByte[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[3]\,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => Q(4),
      O => \dataByte[4]_i_1_n_0\
    );
\dataByte[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[4]\,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => Q(5),
      O => \dataByte[5]_i_1_n_0\
    );
\dataByte[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[5]\,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => Q(6),
      O => \dataByte[6]_i_1_n_0\
    );
\dataByte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24000040FFFFFFFF"
    )
        port map (
      I0 => ddScl,
      I1 => dScl,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => \dataByte[7]_i_3_n_0\,
      O => \dataByte[7]_i_1_n_0\
    );
\dataByte[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[6]\,
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => Q(7),
      O => \dataByte[7]_i_2_n_0\
    );
\dataByte[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EF00EF00EF0000"
    )
        port map (
      I0 => \dataByte[7]_i_4_n_0\,
      I1 => dScl,
      I2 => ddScl,
      I3 => fStart,
      I4 => state(0),
      I5 => \FSM_gray_state[2]_i_6_n_0\,
      O => \dataByte[7]_i_3_n_0\
    );
\dataByte[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFA3F"
    )
        port map (
      I0 => ddSda,
      I1 => \^rd_wrn_reg_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      O => \dataByte[7]_i_4_n_0\
    );
\dataByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[0]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[0]\,
      R => '0'
    );
\dataByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[1]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[1]\,
      R => '0'
    );
\dataByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[2]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[2]\,
      R => '0'
    );
\dataByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[3]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[3]\,
      R => '0'
    );
\dataByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[4]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[4]\,
      R => '0'
    );
\dataByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[5]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[5]\,
      R => '0'
    );
\dataByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[6]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[6]\,
      R => '0'
    );
\dataByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[7]_i_2_n_0\,
      Q => \dataByte_reg_n_0_[7]\,
      R => '0'
    );
ddScl_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => dScl,
      Q => ddScl,
      R => '0'
    );
ddSda_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => dSda,
      Q => ddSda,
      R => '0'
    );
rd_wrn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => dSda,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => rd_wrn_i_2_n_0,
      I5 => \^rd_wrn_reg_0\,
      O => rd_wrn_i_1_n_0
    );
rd_wrn_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => ddScl,
      I1 => dScl,
      I2 => \bitCount_reg_n_0_[0]\,
      I3 => \bitCount_reg_n_0_[1]\,
      I4 => \bitCount_reg_n_0_[2]\,
      O => rd_wrn_i_2_n_0
    );
rd_wrn_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => rd_wrn_i_1_n_0,
      Q => \^rd_wrn_reg_0\,
      R => '0'
    );
\sAddr_rep[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \dataByte_reg_n_0_[0]\,
      I1 => sState(1),
      I2 => \sAddr_reg[7]\(0),
      O => D(0)
    );
\sAddr_rep[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[1]\,
      I1 => sState(1),
      I2 => \sAddr_reg[7]\(1),
      I3 => \sAddr_reg[7]\(0),
      O => D(1)
    );
\sAddr_rep[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBB888"
    )
        port map (
      I0 => \dataByte_reg_n_0_[2]\,
      I1 => sState(1),
      I2 => \sAddr_reg[7]\(1),
      I3 => \sAddr_reg[7]\(0),
      I4 => \sAddr_reg[7]\(2),
      O => D(2)
    );
\sAddr_rep[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[3]\,
      I1 => \sState_reg[0]\,
      I2 => \sAddr_reg[7]\(3),
      I3 => \sAddr_reg[7]\(1),
      I4 => \sAddr_reg[7]\(0),
      I5 => \sAddr_reg[7]\(2),
      O => D(3)
    );
\sAddr_rep[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[4]\,
      I1 => sState(1),
      I2 => \sAddr_reg[7]\(4),
      I3 => \sAddr_reg[2]\,
      I4 => \sAddr_reg[7]\(3),
      O => D(4)
    );
\sAddr_rep[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[5]\,
      I1 => \sState_reg[0]\,
      I2 => \sAddr_reg[7]\(5),
      I3 => \sAddr_reg[7]\(3),
      I4 => \sAddr_reg[2]\,
      I5 => \sAddr_reg[7]\(4),
      O => D(5)
    );
\sAddr_rep[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[6]\,
      I1 => sState(1),
      I2 => \sAddr_reg[7]\(6),
      I3 => \sAddr_reg[5]\,
      O => D(6)
    );
\sAddr_rep[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sState(0),
      I1 => \^si2c_done\,
      O => E(0)
    );
\sAddr_rep[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \dataByte_reg_n_0_[7]\,
      I1 => sState(1),
      I2 => \sAddr_reg[7]\(7),
      I3 => \sAddr_reg[5]\,
      I4 => \sAddr_reg[7]\(6),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EEPROM_8b is
  port (
    SDA_T : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    SDA_I : in STD_LOGIC;
    SCL_I : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EEPROM_8b;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EEPROM_8b is
  signal I2C_SlaveController_n_10 : STD_LOGIC;
  signal I2C_SlaveController_n_11 : STD_LOGIC;
  signal I2C_SlaveController_n_12 : STD_LOGIC;
  signal I2C_SlaveController_n_2 : STD_LOGIC;
  signal I2C_SlaveController_n_4 : STD_LOGIC;
  signal I2C_SlaveController_n_5 : STD_LOGIC;
  signal I2C_SlaveController_n_6 : STD_LOGIC;
  signal I2C_SlaveController_n_7 : STD_LOGIC;
  signal I2C_SlaveController_n_8 : STD_LOGIC;
  signal I2C_SlaveController_n_9 : STD_LOGIC;
  signal sAddr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sAddr_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sAddr_rep[5]_i_2_n_0\ : STD_LOGIC;
  signal \sAddr_rep[5]_i_3_n_0\ : STD_LOGIC;
  signal \sAddr_rep[7]_i_3_n_0\ : STD_LOGIC;
  signal sI2C_DataOut : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sI2C_DataOut[0]_i_4_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[0]_i_5_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[0]_i_6_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[0]_i_7_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[1]_i_4_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[1]_i_5_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[1]_i_6_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[1]_i_7_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[2]_i_4_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[2]_i_5_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[2]_i_6_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[2]_i_7_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[3]_i_4_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[3]_i_5_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[3]_i_6_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[3]_i_7_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[4]_i_4_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[4]_i_5_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[4]_i_6_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[4]_i_7_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[5]_i_4_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[5]_i_5_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[5]_i_6_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[5]_i_7_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[6]_i_4_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[6]_i_5_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[6]_i_6_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[6]_i_7_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[7]_i_4_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[7]_i_5_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[7]_i_6_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[7]_i_7_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal sI2C_Done : STD_LOGIC;
  signal sI2C_End : STD_LOGIC;
  signal sState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sState[0]_i_1_n_0\ : STD_LOGIC;
  signal \sState[1]_i_1_n_0\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \sAddr_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \sAddr_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \sAddr_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \sAddr_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \sAddr_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \sAddr_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \sAddr_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \sAddr_reg_rep[7]\ : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sState[0]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \sState[1]_i_1\ : label is "soft_lutpair95";
begin
I2C_SlaveController: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWI_SlaveCtl
     port map (
      D(7) => I2C_SlaveController_n_5,
      D(6) => I2C_SlaveController_n_6,
      D(5) => I2C_SlaveController_n_7,
      D(4) => I2C_SlaveController_n_8,
      D(3) => I2C_SlaveController_n_9,
      D(2) => I2C_SlaveController_n_10,
      D(1) => I2C_SlaveController_n_11,
      D(0) => I2C_SlaveController_n_12,
      E(0) => I2C_SlaveController_n_4,
      Q(7 downto 0) => sI2C_DataOut(7 downto 0),
      RefClk => RefClk,
      SCL_I => SCL_I,
      SDA_I => SDA_I,
      SDA_T => SDA_T,
      rd_wrn_reg_0 => I2C_SlaveController_n_2,
      \sAddr_reg[2]\ => \sAddr_rep[5]_i_3_n_0\,
      \sAddr_reg[5]\ => \sAddr_rep[7]_i_3_n_0\,
      \sAddr_reg[7]\(7 downto 0) => sAddr(7 downto 0),
      sI2C_Done => sI2C_Done,
      sI2C_End => sI2C_End,
      sState(1 downto 0) => sState(1 downto 0),
      \sState_reg[0]\ => \sAddr_rep[5]_i_2_n_0\
    );
\sAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_12,
      Q => sAddr(0),
      R => '0'
    );
\sAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_11,
      Q => sAddr(1),
      R => '0'
    );
\sAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_10,
      Q => sAddr(2),
      R => '0'
    );
\sAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_9,
      Q => sAddr(3),
      R => '0'
    );
\sAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_8,
      Q => sAddr(4),
      R => '0'
    );
\sAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_7,
      Q => sAddr(5),
      R => '0'
    );
\sAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_6,
      Q => sAddr(6),
      R => '0'
    );
\sAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_5,
      Q => sAddr(7),
      R => '0'
    );
\sAddr_reg_rep[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_12,
      Q => sAddr_0(0),
      R => '0'
    );
\sAddr_reg_rep[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_11,
      Q => sAddr_0(1),
      R => '0'
    );
\sAddr_reg_rep[2]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_10,
      Q => sAddr_0(2),
      R => '0'
    );
\sAddr_reg_rep[3]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_9,
      Q => sAddr_0(3),
      R => '0'
    );
\sAddr_reg_rep[4]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_8,
      Q => sAddr_0(4),
      R => '0'
    );
\sAddr_reg_rep[5]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_7,
      Q => sAddr_0(5),
      R => '0'
    );
\sAddr_reg_rep[6]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_6,
      Q => sAddr_0(6),
      R => '0'
    );
\sAddr_reg_rep[7]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => I2C_SlaveController_n_4,
      D => I2C_SlaveController_n_5,
      Q => sAddr_0(7),
      R => '0'
    );
\sAddr_rep[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sState(0),
      I1 => sState(1),
      O => \sAddr_rep[5]_i_2_n_0\
    );
\sAddr_rep[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sAddr(2),
      I1 => sAddr(0),
      I2 => sAddr(1),
      O => \sAddr_rep[5]_i_3_n_0\
    );
\sAddr_rep[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sAddr(5),
      I1 => sAddr(3),
      I2 => sAddr(1),
      I3 => sAddr(0),
      I4 => sAddr(2),
      I5 => sAddr(4),
      O => \sAddr_rep[7]_i_3_n_0\
    );
\sI2C_DataOut[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111110330133052"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(2),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[0]_i_4_n_0\
    );
\sI2C_DataOut[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2100110013132520"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(2),
      I3 => sAddr_0(1),
      I4 => sAddr_0(5),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[0]_i_5_n_0\
    );
\sI2C_DataOut[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5315134445114515"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(2),
      I3 => sAddr_0(1),
      I4 => sAddr_0(4),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[0]_i_6_n_0\
    );
\sI2C_DataOut[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040311741100404"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(2),
      I4 => sAddr_0(4),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[0]_i_7_n_0\
    );
\sI2C_DataOut[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0242000002110234"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(5),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[1]_i_4_n_0\
    );
\sI2C_DataOut[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5114404144040606"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(5),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[1]_i_5_n_0\
    );
\sI2C_DataOut[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"584A000002074D55"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(4),
      I2 => sAddr_0(7),
      I3 => sAddr_0(2),
      I4 => sAddr_0(1),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[1]_i_6_n_0\
    );
\sI2C_DataOut[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011055300402002"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(5),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[1]_i_7_n_0\
    );
\sI2C_DataOut[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0204001212152132"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(2),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[2]_i_4_n_0\
    );
\sI2C_DataOut[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5111050002400400"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(5),
      I3 => sAddr_0(1),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[2]_i_5_n_0\
    );
\sI2C_DataOut[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1202044642462151"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(2),
      I3 => sAddr_0(1),
      I4 => sAddr_0(5),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[2]_i_6_n_0\
    );
\sI2C_DataOut[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A020334004020301"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(5),
      I5 => sAddr_0(2),
      O => \sI2C_DataOut[2]_i_7_n_0\
    );
\sI2C_DataOut[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0122044201510740"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(5),
      I3 => sAddr_0(1),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[3]_i_4_n_0\
    );
\sI2C_DataOut[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5154004144200040"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(5),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[3]_i_5_n_0\
    );
\sI2C_DataOut[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3060404614072111"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(2),
      I4 => sAddr_0(4),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[3]_i_6_n_0\
    );
\sI2C_DataOut[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9020034204200323"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(5),
      I5 => sAddr_0(2),
      O => \sI2C_DataOut[3]_i_7_n_0\
    );
\sI2C_DataOut[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4232240222531532"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(5),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[4]_i_4_n_0\
    );
\sI2C_DataOut[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4104554610004041"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(5),
      I5 => sAddr_0(2),
      O => \sI2C_DataOut[4]_i_5_n_0\
    );
\sI2C_DataOut[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5642066155214111"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(2),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[4]_i_6_n_0\
    );
\sI2C_DataOut[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"805542021810520A"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(1),
      I2 => sAddr_0(7),
      I3 => sAddr_0(2),
      I4 => sAddr_0(5),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[4]_i_7_n_0\
    );
\sI2C_DataOut[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4206202442114530"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(2),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[5]_i_4_n_0\
    );
\sI2C_DataOut[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1460021020244600"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(4),
      I3 => sAddr_0(2),
      I4 => sAddr_0(5),
      I5 => sAddr_0(1),
      O => \sI2C_DataOut[5]_i_5_n_0\
    );
\sI2C_DataOut[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440623417060131"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(2),
      I4 => sAddr_0(4),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[5]_i_6_n_0\
    );
\sI2C_DataOut[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9324520227001103"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(5),
      I5 => sAddr_0(2),
      O => \sI2C_DataOut[5]_i_7_n_0\
    );
\sI2C_DataOut[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4602202220155232"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(5),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[6]_i_4_n_0\
    );
\sI2C_DataOut[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001100000462200"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(5),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[6]_i_5_n_0\
    );
\sI2C_DataOut[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014044444014311"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(5),
      I4 => sAddr_0(2),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[6]_i_6_n_0\
    );
\sI2C_DataOut[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020632415020101"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(4),
      I4 => sAddr_0(5),
      I5 => sAddr_0(2),
      O => \sI2C_DataOut[6]_i_7_n_0\
    );
\sI2C_DataOut[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000204001310300"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(4),
      I3 => sAddr_0(1),
      I4 => sAddr_0(2),
      I5 => sAddr_0(5),
      O => \sI2C_DataOut[7]_i_4_n_0\
    );
\sI2C_DataOut[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005004200000000"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(2),
      I2 => sAddr_0(7),
      I3 => sAddr_0(5),
      I4 => sAddr_0(4),
      I5 => sAddr_0(1),
      O => \sI2C_DataOut[7]_i_5_n_0\
    );
\sI2C_DataOut[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000043000111"
    )
        port map (
      I0 => sAddr_0(4),
      I1 => sAddr_0(5),
      I2 => sAddr_0(1),
      I3 => sAddr_0(2),
      I4 => sAddr_0(7),
      I5 => sAddr_0(6),
      O => \sI2C_DataOut[7]_i_6_n_0\
    );
\sI2C_DataOut[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014061020000001"
    )
        port map (
      I0 => sAddr_0(6),
      I1 => sAddr_0(7),
      I2 => sAddr_0(1),
      I3 => sAddr_0(2),
      I4 => sAddr_0(5),
      I5 => sAddr_0(4),
      O => \sI2C_DataOut[7]_i_7_n_0\
    );
\sI2C_DataOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sI2C_DataOut_reg[0]_i_1_n_0\,
      Q => sI2C_DataOut(0),
      R => '0'
    );
\sI2C_DataOut_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sI2C_DataOut_reg[0]_i_2_n_0\,
      I1 => \sI2C_DataOut_reg[0]_i_3_n_0\,
      O => \sI2C_DataOut_reg[0]_i_1_n_0\,
      S => sAddr_0(0)
    );
\sI2C_DataOut_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[0]_i_4_n_0\,
      I1 => \sI2C_DataOut[0]_i_5_n_0\,
      O => \sI2C_DataOut_reg[0]_i_2_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[0]_i_6_n_0\,
      I1 => \sI2C_DataOut[0]_i_7_n_0\,
      O => \sI2C_DataOut_reg[0]_i_3_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sI2C_DataOut_reg[1]_i_1_n_0\,
      Q => sI2C_DataOut(1),
      R => '0'
    );
\sI2C_DataOut_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sI2C_DataOut_reg[1]_i_2_n_0\,
      I1 => \sI2C_DataOut_reg[1]_i_3_n_0\,
      O => \sI2C_DataOut_reg[1]_i_1_n_0\,
      S => sAddr_0(0)
    );
\sI2C_DataOut_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[1]_i_4_n_0\,
      I1 => \sI2C_DataOut[1]_i_5_n_0\,
      O => \sI2C_DataOut_reg[1]_i_2_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[1]_i_6_n_0\,
      I1 => \sI2C_DataOut[1]_i_7_n_0\,
      O => \sI2C_DataOut_reg[1]_i_3_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sI2C_DataOut_reg[2]_i_1_n_0\,
      Q => sI2C_DataOut(2),
      R => '0'
    );
\sI2C_DataOut_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sI2C_DataOut_reg[2]_i_2_n_0\,
      I1 => \sI2C_DataOut_reg[2]_i_3_n_0\,
      O => \sI2C_DataOut_reg[2]_i_1_n_0\,
      S => sAddr_0(0)
    );
\sI2C_DataOut_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[2]_i_4_n_0\,
      I1 => \sI2C_DataOut[2]_i_5_n_0\,
      O => \sI2C_DataOut_reg[2]_i_2_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[2]_i_6_n_0\,
      I1 => \sI2C_DataOut[2]_i_7_n_0\,
      O => \sI2C_DataOut_reg[2]_i_3_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sI2C_DataOut_reg[3]_i_1_n_0\,
      Q => sI2C_DataOut(3),
      R => '0'
    );
\sI2C_DataOut_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sI2C_DataOut_reg[3]_i_2_n_0\,
      I1 => \sI2C_DataOut_reg[3]_i_3_n_0\,
      O => \sI2C_DataOut_reg[3]_i_1_n_0\,
      S => sAddr_0(0)
    );
\sI2C_DataOut_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[3]_i_4_n_0\,
      I1 => \sI2C_DataOut[3]_i_5_n_0\,
      O => \sI2C_DataOut_reg[3]_i_2_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[3]_i_6_n_0\,
      I1 => \sI2C_DataOut[3]_i_7_n_0\,
      O => \sI2C_DataOut_reg[3]_i_3_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sI2C_DataOut_reg[4]_i_1_n_0\,
      Q => sI2C_DataOut(4),
      R => '0'
    );
\sI2C_DataOut_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sI2C_DataOut_reg[4]_i_2_n_0\,
      I1 => \sI2C_DataOut_reg[4]_i_3_n_0\,
      O => \sI2C_DataOut_reg[4]_i_1_n_0\,
      S => sAddr_0(0)
    );
\sI2C_DataOut_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[4]_i_4_n_0\,
      I1 => \sI2C_DataOut[4]_i_5_n_0\,
      O => \sI2C_DataOut_reg[4]_i_2_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[4]_i_6_n_0\,
      I1 => \sI2C_DataOut[4]_i_7_n_0\,
      O => \sI2C_DataOut_reg[4]_i_3_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sI2C_DataOut_reg[5]_i_1_n_0\,
      Q => sI2C_DataOut(5),
      R => '0'
    );
\sI2C_DataOut_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sI2C_DataOut_reg[5]_i_2_n_0\,
      I1 => \sI2C_DataOut_reg[5]_i_3_n_0\,
      O => \sI2C_DataOut_reg[5]_i_1_n_0\,
      S => sAddr_0(0)
    );
\sI2C_DataOut_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[5]_i_4_n_0\,
      I1 => \sI2C_DataOut[5]_i_5_n_0\,
      O => \sI2C_DataOut_reg[5]_i_2_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[5]_i_6_n_0\,
      I1 => \sI2C_DataOut[5]_i_7_n_0\,
      O => \sI2C_DataOut_reg[5]_i_3_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sI2C_DataOut_reg[6]_i_1_n_0\,
      Q => sI2C_DataOut(6),
      R => '0'
    );
\sI2C_DataOut_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sI2C_DataOut_reg[6]_i_2_n_0\,
      I1 => \sI2C_DataOut_reg[6]_i_3_n_0\,
      O => \sI2C_DataOut_reg[6]_i_1_n_0\,
      S => sAddr_0(0)
    );
\sI2C_DataOut_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[6]_i_4_n_0\,
      I1 => \sI2C_DataOut[6]_i_5_n_0\,
      O => \sI2C_DataOut_reg[6]_i_2_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[6]_i_6_n_0\,
      I1 => \sI2C_DataOut[6]_i_7_n_0\,
      O => \sI2C_DataOut_reg[6]_i_3_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sI2C_DataOut_reg[7]_i_1_n_0\,
      Q => sI2C_DataOut(7),
      R => '0'
    );
\sI2C_DataOut_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sI2C_DataOut_reg[7]_i_2_n_0\,
      I1 => \sI2C_DataOut_reg[7]_i_3_n_0\,
      O => \sI2C_DataOut_reg[7]_i_1_n_0\,
      S => sAddr_0(0)
    );
\sI2C_DataOut_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[7]_i_4_n_0\,
      I1 => \sI2C_DataOut[7]_i_5_n_0\,
      O => \sI2C_DataOut_reg[7]_i_2_n_0\,
      S => sAddr_0(3)
    );
\sI2C_DataOut_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[7]_i_6_n_0\,
      I1 => \sI2C_DataOut[7]_i_7_n_0\,
      O => \sI2C_DataOut_reg[7]_i_3_n_0\,
      S => sAddr_0(3)
    );
\sState[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"024E"
    )
        port map (
      I0 => sI2C_Done,
      I1 => sState(0),
      I2 => sState(1),
      I3 => sI2C_End,
      O => \sState[0]_i_1_n_0\
    );
\sState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0004FF04"
    )
        port map (
      I0 => I2C_SlaveController_n_2,
      I1 => sI2C_Done,
      I2 => sState(0),
      I3 => sState(1),
      I4 => sI2C_End,
      O => \sState[1]_i_1_n_0\
    );
\sState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sState[0]_i_1_n_0\,
      Q => sState(0),
      R => '0'
    );
\sState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \sState[1]_i_1_n_0\,
      Q => sState(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Clocking is
  port (
    \pDataQ_reg[8]\ : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    in0 : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    aRst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Clocking;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Clocking is
  signal CLKFBIN : STD_LOGIC;
  signal CLK_IN_hdmi_clk : STD_LOGIC;
  signal CLK_OUT_5x_hdmi_clk : STD_LOGIC;
  signal LockLostReset_n_1 : STD_LOGIC;
  signal MMCM_LockSync_n_0 : STD_LOGIC;
  signal MMCM_LockSync_n_1 : STD_LOGIC;
  signal MMCM_LockSync_n_2 : STD_LOGIC;
  signal RdyLostReset_n_0 : STD_LOGIC;
  signal aDlyLckd : STD_LOGIC;
  signal aMMCM_Locked : STD_LOGIC;
  signal \^apixelclklckd\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rDlyRstCnt0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rDlyRstCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rDlyRstCnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \rDlyRstCnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \rDlyRstCnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \rDlyRstCnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \rDlyRstCnt_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rDlyRst_reg_n_0 : STD_LOGIC;
  signal rLockLostRst : STD_LOGIC;
  signal rMMCM_LckdFallingFlag : STD_LOGIC;
  signal rMMCM_LckdRisingFlag_reg_n_0 : STD_LOGIC;
  signal \rMMCM_Locked_q_reg_n_0_[0]\ : STD_LOGIC;
  signal rMMCM_Reset_q : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \rMMCM_Reset_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \rMMCM_Reset_q_reg_n_0_[0]\ : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_DVI_ClkGenerator_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of DVI_ClkGenerator : label is "PRIMITIVE";
  attribute box_type of IDelayCtrlX : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of InputBuffer : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of InputBuffer : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of InputBuffer : label is "AUTO";
  attribute box_type of InputBuffer : label is "PRIMITIVE";
  attribute box_type of PixelClkBuffer : label is "PRIMITIVE";
  attribute box_type of SerialClkBuffer : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rDlyRstCnt[1]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \rDlyRstCnt[2]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \rDlyRstCnt[3]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \rDlyRstCnt[4]_i_2\ : label is "soft_lutpair96";
begin
  aPixelClkLckd <= \^apixelclklckd\;
DVI_ClkGenerator: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 5.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 6.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 1.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.000000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => CLKFBIN,
      CLKFBOUT => CLKFBIN,
      CLKFBOUTB => NLW_DVI_ClkGenerator_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_DVI_ClkGenerator_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => CLK_IN_hdmi_clk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_DVI_ClkGenerator_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => CLK_OUT_5x_hdmi_clk,
      CLKOUT0B => NLW_DVI_ClkGenerator_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_DVI_ClkGenerator_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_DVI_ClkGenerator_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_DVI_ClkGenerator_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_DVI_ClkGenerator_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_DVI_ClkGenerator_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_DVI_ClkGenerator_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_DVI_ClkGenerator_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_DVI_ClkGenerator_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_DVI_ClkGenerator_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_DVI_ClkGenerator_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_DVI_ClkGenerator_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => aMMCM_Locked,
      PSCLK => '0',
      PSDONE => NLW_DVI_ClkGenerator_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => \rMMCM_Reset_q_reg_n_0_[0]\
    );
IDelayCtrlX: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => aDlyLckd,
      REFCLK => RefClk,
      RST => rDlyRst_reg_n_0
    );
InputBuffer: unisim.vcomponents.IBUFDS
     port map (
      I => TMDS_Clk_p,
      IB => TMDS_Clk_n,
      O => CLK_IN_hdmi_clk
    );
LockLostReset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_2
     port map (
      E(0) => \rDlyRstCnt[4]_i_1_n_0\,
      RefClk => RefClk,
      SS(0) => rLockLostRst,
      aRst_n => aRst_n,
      rDlyRst_reg => LockLostReset_n_1,
      rDlyRst_reg_0 => rDlyRst_reg_n_0
    );
MMCM_LockSync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\
     port map (
      D(0) => MMCM_LockSync_n_0,
      Q(0) => p_0_in,
      RefClk => RefClk,
      rMMCM_LckdFallingFlag_reg => MMCM_LockSync_n_1,
      rMMCM_LckdRisingFlag_reg => MMCM_LockSync_n_2,
      \rMMCM_Reset_q_reg[0]\(0) => aMMCM_Locked
    );
PixelClkBuffer: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "5",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => rMMCM_LckdRisingFlag_reg_n_0,
      I => CLK_OUT_5x_hdmi_clk,
      O => PixelClk
    );
RdyLostReset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_3
     port map (
      RefClk => RefClk,
      aDlyLckd => aDlyLckd,
      \out\(0) => RdyLostReset_n_0
    );
SerialClkBuffer: unisim.vcomponents.BUFIO
     port map (
      I => CLK_OUT_5x_hdmi_clk,
      O => \pDataQ_reg[8]\
    );
aLocked_reg: unisim.vcomponents.FDCE
     port map (
      C => RefClk,
      CE => '1',
      CLR => RdyLostReset_n_0,
      D => \rMMCM_Locked_q_reg_n_0_[0]\,
      Q => \^apixelclklckd\
    );
\aRst_int_inferred_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^apixelclklckd\,
      O => in0
    );
\rDlyRstCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rDlyRstCnt_reg__0\(0),
      O => rDlyRstCnt0(0)
    );
\rDlyRstCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rDlyRstCnt_reg__0\(0),
      I1 => \rDlyRstCnt_reg__0\(1),
      O => \rDlyRstCnt[1]_i_1_n_0\
    );
\rDlyRstCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \rDlyRstCnt_reg__0\(1),
      I1 => \rDlyRstCnt_reg__0\(0),
      I2 => \rDlyRstCnt_reg__0\(2),
      O => \rDlyRstCnt[2]_i_1_n_0\
    );
\rDlyRstCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \rDlyRstCnt_reg__0\(1),
      I1 => \rDlyRstCnt_reg__0\(0),
      I2 => \rDlyRstCnt_reg__0\(2),
      I3 => \rDlyRstCnt_reg__0\(3),
      O => \rDlyRstCnt[3]_i_1_n_0\
    );
\rDlyRstCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rDlyRstCnt_reg__0\(2),
      I1 => \rDlyRstCnt_reg__0\(0),
      I2 => \rDlyRstCnt_reg__0\(1),
      I3 => \rDlyRstCnt_reg__0\(3),
      I4 => \rDlyRstCnt_reg__0\(4),
      O => \rDlyRstCnt[4]_i_1_n_0\
    );
\rDlyRstCnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \rDlyRstCnt_reg__0\(3),
      I1 => \rDlyRstCnt_reg__0\(2),
      I2 => \rDlyRstCnt_reg__0\(0),
      I3 => \rDlyRstCnt_reg__0\(1),
      I4 => \rDlyRstCnt_reg__0\(4),
      O => \rDlyRstCnt[4]_i_2_n_0\
    );
\rDlyRstCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \rDlyRstCnt[4]_i_1_n_0\,
      D => rDlyRstCnt0(0),
      Q => \rDlyRstCnt_reg__0\(0),
      S => rLockLostRst
    );
\rDlyRstCnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \rDlyRstCnt[4]_i_1_n_0\,
      D => \rDlyRstCnt[1]_i_1_n_0\,
      Q => \rDlyRstCnt_reg__0\(1),
      S => rLockLostRst
    );
\rDlyRstCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \rDlyRstCnt[4]_i_1_n_0\,
      D => \rDlyRstCnt[2]_i_1_n_0\,
      Q => \rDlyRstCnt_reg__0\(2),
      S => rLockLostRst
    );
\rDlyRstCnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \rDlyRstCnt[4]_i_1_n_0\,
      D => \rDlyRstCnt[3]_i_1_n_0\,
      Q => \rDlyRstCnt_reg__0\(3),
      S => rLockLostRst
    );
\rDlyRstCnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => \rDlyRstCnt[4]_i_1_n_0\,
      D => \rDlyRstCnt[4]_i_2_n_0\,
      Q => \rDlyRstCnt_reg__0\(4),
      S => rLockLostRst
    );
rDlyRst_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => LockLostReset_n_1,
      Q => rDlyRst_reg_n_0,
      R => '0'
    );
rMMCM_LckdFallingFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => MMCM_LockSync_n_1,
      Q => rMMCM_LckdFallingFlag,
      R => '0'
    );
rMMCM_LckdRisingFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => MMCM_LockSync_n_2,
      Q => rMMCM_LckdRisingFlag_reg_n_0,
      R => '0'
    );
\rMMCM_Locked_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => p_0_in,
      Q => \rMMCM_Locked_q_reg_n_0_[0]\,
      R => '0'
    );
\rMMCM_Locked_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => MMCM_LockSync_n_0,
      Q => p_0_in,
      R => '0'
    );
\rMMCM_Reset_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rMMCM_LckdFallingFlag,
      I1 => rMMCM_Reset_q(1),
      O => \rMMCM_Reset_q[0]_i_1_n_0\
    );
\rMMCM_Reset_q_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => RefClk,
      CE => '1',
      D => \rMMCM_Reset_q[0]_i_1_n_0\,
      PRE => rLockLostRst,
      Q => \rMMCM_Reset_q_reg_n_0_[0]\
    );
\rMMCM_Reset_q_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => RefClk,
      CE => '1',
      D => rMMCM_LckdFallingFlag,
      PRE => rLockLostRst,
      Q => rMMCM_Reset_q(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder is
  port (
    vid_pVDE : out STD_LOGIC;
    pVld_0 : out STD_LOGIC;
    pRdy_0 : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    pAllVld : out STD_LOGIC;
    \pDataIn_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    vid_pData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    \rMMCM_Reset_q_reg[0]\ : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    pAligned_reg : in STD_LOGIC;
    pVld_2 : in STD_LOGIC;
    pVld_1 : in STD_LOGIC;
    pRdy_1 : in STD_LOGIC;
    pRdy_2 : in STD_LOGIC;
    pRst_n : in STD_LOGIC;
    pAllVldBgnFlag : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder is
  signal ChannelBondX_n_11 : STD_LOGIC;
  signal ChannelBondX_n_12 : STD_LOGIC;
  signal PhaseAlignX_n_4 : STD_LOGIC;
  signal PhaseAlignX_n_5 : STD_LOGIC;
  signal PhaseAlignX_n_7 : STD_LOGIC;
  signal SyncBaseOvf_n_1 : STD_LOGIC;
  signal SyncBaseOvf_n_2 : STD_LOGIC;
  signal SyncBaseOvf_n_3 : STD_LOGIC;
  signal SyncBaseOvf_n_4 : STD_LOGIC;
  signal pAlignErr_q : STD_LOGIC;
  signal \pAlignRst_i_1__1_n_0\ : STD_LOGIC;
  signal pAlignRst_reg_n_0 : STD_LOGIC;
  signal \^pallvld\ : STD_LOGIC;
  signal pBitslipCnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pBitslipCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pBitslipCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal pBitslip_reg_n_0 : STD_LOGIC;
  signal pDataIn : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pDataInRaw : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pIDLY_CE : STD_LOGIC;
  signal pIDLY_CNT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pIDLY_INC : STD_LOGIC;
  signal pIDLY_LD : STD_LOGIC;
  signal pTimeoutOvf : STD_LOGIC;
  signal pVde : STD_LOGIC;
  signal \rTimeoutCnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt[0]_i_3__1_n_0\ : STD_LOGIC;
  signal rTimeoutCnt_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rTimeoutCnt_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal rTimeoutRst : STD_LOGIC;
  signal \^vid_phsync\ : STD_LOGIC;
  signal \^vid_pvsync\ : STD_LOGIC;
  signal \NLW_rTimeoutCnt_reg[20]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pBitslipCnt[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pBitslipCnt[1]_i_1\ : label is "soft_lutpair28";
begin
  pAllVld <= \^pallvld\;
  vid_pHSync <= \^vid_phsync\;
  vid_pVSync <= \^vid_pvsync\;
ChannelBondX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_17
     port map (
      D(7 downto 0) => pDataIn(7 downto 0),
      pAligned_reg => pAligned_reg,
      pAllVld => \^pallvld\,
      pAllVldBgnFlag => pAllVldBgnFlag,
      pC0_reg => ChannelBondX_n_12,
      pC1_reg => ChannelBondX_n_11,
      pDataInRaw(9 downto 0) => pDataInRaw(9 downto 0),
      \pDataIn_reg[7]\(0) => \pDataIn_reg[7]_0\(0),
      pMeRdy_int_reg_0 => pRdy_0,
      pRdy_1 => pRdy_1,
      pRdy_2 => pRdy_2,
      pVde => pVde,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg,
      vid_pHSync => \^vid_phsync\,
      vid_pVSync => \^vid_pvsync\
    );
InputSERDES_X: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_18
     port map (
      AS(0) => AS(0),
      CLKB => CLKB,
      D(4 downto 0) => pIDLY_CNT(4 downto 0),
      TMDS_Data_n(0) => TMDS_Data_n(0),
      TMDS_Data_p(0) => TMDS_Data_p(0),
      pBitslip_reg => pBitslip_reg_n_0,
      pDataInRaw(9 downto 0) => pDataInRaw(9 downto 0),
      pIDLY_CE => pIDLY_CE,
      pIDLY_INC => pIDLY_INC,
      pIDLY_LD => pIDLY_LD,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg,
      \rMMCM_Reset_q_reg[0]\ => \rMMCM_Reset_q_reg[0]\
    );
PhaseAlignX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_19
     port map (
      D(8 downto 0) => pDataInRaw(8 downto 0),
      SS(0) => pAlignRst_reg_n_0,
      iIn_q_reg => PhaseAlignX_n_5,
      \out\(0) => pTimeoutOvf,
      pAlignErr_q => pAlignErr_q,
      pAlignErr_q_reg => PhaseAlignX_n_4,
      pAllVld => \^pallvld\,
      pBitslip_reg => PhaseAlignX_n_7,
      pIDLY_CE => pIDLY_CE,
      pIDLY_CE_reg_0(4 downto 0) => pIDLY_CNT(4 downto 0),
      pIDLY_INC => pIDLY_INC,
      pIDLY_LD => pIDLY_LD,
      pVld_0 => pVld_0,
      pVld_1 => pVld_1,
      pVld_2 => pVld_2,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
SyncBaseOvf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_20
     port map (
      AS(0) => AS(0),
      RefClk => RefClk,
      iIn_q_reg_0 => SyncBaseOvf_n_1,
      iIn_q_reg_1 => SyncBaseOvf_n_2,
      iIn_q_reg_2 => SyncBaseOvf_n_3,
      iIn_q_reg_3 => SyncBaseOvf_n_4,
      \out\(0) => pTimeoutOvf,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg,
      rTimeoutCnt_reg(23 downto 0) => rTimeoutCnt_reg(23 downto 0)
    );
SyncBaseRst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_21\
     port map (
      AS(0) => AS(0),
      RefClk => RefClk,
      \out\(0) => rTimeoutRst,
      \pState_reg[3]\ => PhaseAlignX_n_5,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
pAlignErr_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => PhaseAlignX_n_4,
      Q => pAlignErr_q,
      R => '0'
    );
\pAlignRst_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDDDDD"
    )
        port map (
      I0 => pRst_n,
      I1 => pBitslip_reg_n_0,
      I2 => pBitslipCnt(1),
      I3 => pBitslipCnt(0),
      I4 => pAlignRst_reg_n_0,
      O => \pAlignRst_i_1__1_n_0\
    );
pAlignRst_reg: unisim.vcomponents.FDPE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pAlignRst_i_1__1_n_0\,
      PRE => AS(0),
      Q => pAlignRst_reg_n_0
    );
\pBitslipCnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pBitslipCnt(0),
      I1 => pBitslipCnt(1),
      I2 => pBitslip_reg_n_0,
      O => \pBitslipCnt[0]_i_1_n_0\
    );
\pBitslipCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => pBitslipCnt(0),
      I1 => pBitslipCnt(1),
      I2 => pBitslip_reg_n_0,
      O => \pBitslipCnt[1]_i_1_n_0\
    );
\pBitslipCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pBitslipCnt[0]_i_1_n_0\,
      Q => pBitslipCnt(0),
      R => '0'
    );
\pBitslipCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pBitslipCnt[1]_i_1_n_0\,
      Q => pBitslipCnt(1),
      R => '0'
    );
pBitslip_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => PhaseAlignX_n_7,
      Q => pBitslip_reg_n_0,
      R => '0'
    );
pC0_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => ChannelBondX_n_12,
      Q => \^vid_phsync\,
      R => SR(0)
    );
pC1_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => ChannelBondX_n_11,
      Q => \^vid_pvsync\,
      R => SR(0)
    );
\pDataIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(0),
      Q => vid_pData(0),
      R => SR(0)
    );
\pDataIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(1),
      Q => vid_pData(1),
      R => SR(0)
    );
\pDataIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(2),
      Q => vid_pData(2),
      R => SR(0)
    );
\pDataIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(3),
      Q => vid_pData(3),
      R => SR(0)
    );
\pDataIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(4),
      Q => vid_pData(4),
      R => SR(0)
    );
\pDataIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(5),
      Q => vid_pData(5),
      R => SR(0)
    );
\pDataIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(6),
      Q => vid_pData(6),
      R => SR(0)
    );
\pDataIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(7),
      Q => vid_pData(7),
      R => SR(0)
    );
pVde_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pVde,
      Q => vid_pVDE,
      R => SR(0)
    );
\rTimeoutCnt[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => SyncBaseOvf_n_1,
      I1 => SyncBaseOvf_n_2,
      I2 => SyncBaseOvf_n_3,
      I3 => SyncBaseOvf_n_4,
      O => \rTimeoutCnt[0]_i_1__1_n_0\
    );
\rTimeoutCnt[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rTimeoutCnt_reg(0),
      O => \rTimeoutCnt[0]_i_3__1_n_0\
    );
\rTimeoutCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2__1_n_7\,
      Q => rTimeoutCnt_reg(0),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[0]_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rTimeoutCnt_reg[0]_i_2__1_n_0\,
      CO(2) => \rTimeoutCnt_reg[0]_i_2__1_n_1\,
      CO(1) => \rTimeoutCnt_reg[0]_i_2__1_n_2\,
      CO(0) => \rTimeoutCnt_reg[0]_i_2__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rTimeoutCnt_reg[0]_i_2__1_n_4\,
      O(2) => \rTimeoutCnt_reg[0]_i_2__1_n_5\,
      O(1) => \rTimeoutCnt_reg[0]_i_2__1_n_6\,
      O(0) => \rTimeoutCnt_reg[0]_i_2__1_n_7\,
      S(3 downto 1) => rTimeoutCnt_reg(3 downto 1),
      S(0) => \rTimeoutCnt[0]_i_3__1_n_0\
    );
\rTimeoutCnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1__1_n_5\,
      Q => rTimeoutCnt_reg(10),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1__1_n_4\,
      Q => rTimeoutCnt_reg(11),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1__1_n_7\,
      Q => rTimeoutCnt_reg(12),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[8]_i_1__1_n_0\,
      CO(3) => \rTimeoutCnt_reg[12]_i_1__1_n_0\,
      CO(2) => \rTimeoutCnt_reg[12]_i_1__1_n_1\,
      CO(1) => \rTimeoutCnt_reg[12]_i_1__1_n_2\,
      CO(0) => \rTimeoutCnt_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[12]_i_1__1_n_4\,
      O(2) => \rTimeoutCnt_reg[12]_i_1__1_n_5\,
      O(1) => \rTimeoutCnt_reg[12]_i_1__1_n_6\,
      O(0) => \rTimeoutCnt_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(15 downto 12)
    );
\rTimeoutCnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1__1_n_6\,
      Q => rTimeoutCnt_reg(13),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1__1_n_5\,
      Q => rTimeoutCnt_reg(14),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1__1_n_4\,
      Q => rTimeoutCnt_reg(15),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1__1_n_7\,
      Q => rTimeoutCnt_reg(16),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[12]_i_1__1_n_0\,
      CO(3) => \rTimeoutCnt_reg[16]_i_1__1_n_0\,
      CO(2) => \rTimeoutCnt_reg[16]_i_1__1_n_1\,
      CO(1) => \rTimeoutCnt_reg[16]_i_1__1_n_2\,
      CO(0) => \rTimeoutCnt_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[16]_i_1__1_n_4\,
      O(2) => \rTimeoutCnt_reg[16]_i_1__1_n_5\,
      O(1) => \rTimeoutCnt_reg[16]_i_1__1_n_6\,
      O(0) => \rTimeoutCnt_reg[16]_i_1__1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(19 downto 16)
    );
\rTimeoutCnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1__1_n_6\,
      Q => rTimeoutCnt_reg(17),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1__1_n_5\,
      Q => rTimeoutCnt_reg(18),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1__1_n_4\,
      Q => rTimeoutCnt_reg(19),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2__1_n_6\,
      Q => rTimeoutCnt_reg(1),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1__1_n_7\,
      Q => rTimeoutCnt_reg(20),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[16]_i_1__1_n_0\,
      CO(3) => \NLW_rTimeoutCnt_reg[20]_i_1__1_CO_UNCONNECTED\(3),
      CO(2) => \rTimeoutCnt_reg[20]_i_1__1_n_1\,
      CO(1) => \rTimeoutCnt_reg[20]_i_1__1_n_2\,
      CO(0) => \rTimeoutCnt_reg[20]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[20]_i_1__1_n_4\,
      O(2) => \rTimeoutCnt_reg[20]_i_1__1_n_5\,
      O(1) => \rTimeoutCnt_reg[20]_i_1__1_n_6\,
      O(0) => \rTimeoutCnt_reg[20]_i_1__1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(23 downto 20)
    );
\rTimeoutCnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1__1_n_6\,
      Q => rTimeoutCnt_reg(21),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1__1_n_5\,
      Q => rTimeoutCnt_reg(22),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1__1_n_4\,
      Q => rTimeoutCnt_reg(23),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2__1_n_5\,
      Q => rTimeoutCnt_reg(2),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2__1_n_4\,
      Q => rTimeoutCnt_reg(3),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1__1_n_7\,
      Q => rTimeoutCnt_reg(4),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[0]_i_2__1_n_0\,
      CO(3) => \rTimeoutCnt_reg[4]_i_1__1_n_0\,
      CO(2) => \rTimeoutCnt_reg[4]_i_1__1_n_1\,
      CO(1) => \rTimeoutCnt_reg[4]_i_1__1_n_2\,
      CO(0) => \rTimeoutCnt_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[4]_i_1__1_n_4\,
      O(2) => \rTimeoutCnt_reg[4]_i_1__1_n_5\,
      O(1) => \rTimeoutCnt_reg[4]_i_1__1_n_6\,
      O(0) => \rTimeoutCnt_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(7 downto 4)
    );
\rTimeoutCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1__1_n_6\,
      Q => rTimeoutCnt_reg(5),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1__1_n_5\,
      Q => rTimeoutCnt_reg(6),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1__1_n_4\,
      Q => rTimeoutCnt_reg(7),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1__1_n_7\,
      Q => rTimeoutCnt_reg(8),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[4]_i_1__1_n_0\,
      CO(3) => \rTimeoutCnt_reg[8]_i_1__1_n_0\,
      CO(2) => \rTimeoutCnt_reg[8]_i_1__1_n_1\,
      CO(1) => \rTimeoutCnt_reg[8]_i_1__1_n_2\,
      CO(0) => \rTimeoutCnt_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[8]_i_1__1_n_4\,
      O(2) => \rTimeoutCnt_reg[8]_i_1__1_n_5\,
      O(1) => \rTimeoutCnt_reg[8]_i_1__1_n_6\,
      O(0) => \rTimeoutCnt_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(11 downto 8)
    );
\rTimeoutCnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__1_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1__1_n_6\,
      Q => rTimeoutCnt_reg(9),
      R => rTimeoutRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_0 is
  port (
    pMeRdy_int_reg : out STD_LOGIC;
    pRdy_1 : out STD_LOGIC;
    pVld_1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    vid_pData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    \rMMCM_Reset_q_reg[0]\ : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    pVld_2 : in STD_LOGIC;
    pVld_0 : in STD_LOGIC;
    pRdy_2 : in STD_LOGIC;
    pRdy_0 : in STD_LOGIC;
    pRst_n : in STD_LOGIC;
    pAllVldBgnFlag : in STD_LOGIC;
    pAllVld : in STD_LOGIC;
    pMeRdy_int_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_0 : entity is "TMDS_Decoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_0 is
  signal PhaseAlignX_n_4 : STD_LOGIC;
  signal PhaseAlignX_n_5 : STD_LOGIC;
  signal PhaseAlignX_n_7 : STD_LOGIC;
  signal SyncBaseOvf_n_1 : STD_LOGIC;
  signal SyncBaseOvf_n_2 : STD_LOGIC;
  signal SyncBaseOvf_n_3 : STD_LOGIC;
  signal SyncBaseOvf_n_4 : STD_LOGIC;
  signal pAlignErr_q : STD_LOGIC;
  signal \pAlignRst_i_1__0_n_0\ : STD_LOGIC;
  signal pAlignRst_reg_n_0 : STD_LOGIC;
  signal pBitslipCnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pBitslipCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pBitslipCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal pBitslip_reg_n_0 : STD_LOGIC;
  signal pDataIn : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pDataInRaw : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pIDLY_CE : STD_LOGIC;
  signal pIDLY_CNT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pIDLY_INC : STD_LOGIC;
  signal pIDLY_LD : STD_LOGIC;
  signal \^pmerdy_int_reg\ : STD_LOGIC;
  signal pTimeoutOvf : STD_LOGIC;
  signal \rTimeoutCnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal rTimeoutCnt_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rTimeoutCnt_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal rTimeoutRst : STD_LOGIC;
  signal \NLW_rTimeoutCnt_reg[20]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pBitslipCnt[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pBitslipCnt[1]_i_1\ : label is "soft_lutpair56";
begin
  pMeRdy_int_reg <= \^pmerdy_int_reg\;
ChannelBondX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond_10
     port map (
      D(7 downto 0) => pDataIn(7 downto 0),
      SR(0) => \^pmerdy_int_reg\,
      pAllVld => pAllVld,
      pAllVldBgnFlag => pAllVldBgnFlag,
      pDataInRaw(9 downto 0) => pDataInRaw(9 downto 0),
      \pDataIn_reg[7]\(0) => SR(0),
      pMeRdy_int_reg_0 => pRdy_1,
      pRdy_0 => pRdy_0,
      pRdy_2 => pRdy_2,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
InputSERDES_X: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES_11
     port map (
      AS(0) => AS(0),
      CLKB => CLKB,
      D(4 downto 0) => pIDLY_CNT(4 downto 0),
      TMDS_Data_n(0) => TMDS_Data_n(0),
      TMDS_Data_p(0) => TMDS_Data_p(0),
      pBitslip_reg => pBitslip_reg_n_0,
      pDataInRaw(9 downto 0) => pDataInRaw(9 downto 0),
      pIDLY_CE => pIDLY_CE,
      pIDLY_INC => pIDLY_INC,
      pIDLY_LD => pIDLY_LD,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg,
      \rMMCM_Reset_q_reg[0]\ => \rMMCM_Reset_q_reg[0]\
    );
PhaseAlignX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign_12
     port map (
      D(8 downto 0) => pDataInRaw(8 downto 0),
      SS(0) => pAlignRst_reg_n_0,
      iIn_q_reg => PhaseAlignX_n_5,
      \out\(0) => pTimeoutOvf,
      pAlignErr_q => pAlignErr_q,
      pAlignErr_q_reg => PhaseAlignX_n_4,
      pBitslip_reg => PhaseAlignX_n_7,
      pIDLY_CE => pIDLY_CE,
      pIDLY_CE_reg_0(4 downto 0) => pIDLY_CNT(4 downto 0),
      pIDLY_INC => pIDLY_INC,
      pIDLY_LD => pIDLY_LD,
      pMeRdy_int_reg => \^pmerdy_int_reg\,
      pVld_0 => pVld_0,
      pVld_1 => pVld_1,
      pVld_2 => pVld_2,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
SyncBaseOvf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase_13
     port map (
      AS(0) => AS(0),
      RefClk => RefClk,
      iIn_q_reg_0 => SyncBaseOvf_n_1,
      iIn_q_reg_1 => SyncBaseOvf_n_2,
      iIn_q_reg_2 => SyncBaseOvf_n_3,
      iIn_q_reg_3 => SyncBaseOvf_n_4,
      \out\(0) => pTimeoutOvf,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg,
      rTimeoutCnt_reg(23 downto 0) => rTimeoutCnt_reg(23 downto 0)
    );
SyncBaseRst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0_14\
     port map (
      AS(0) => AS(0),
      RefClk => RefClk,
      \out\(0) => rTimeoutRst,
      \pState_reg[3]\ => PhaseAlignX_n_5,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
pAlignErr_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => PhaseAlignX_n_4,
      Q => pAlignErr_q,
      R => '0'
    );
\pAlignRst_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDDDDD"
    )
        port map (
      I0 => pRst_n,
      I1 => pBitslip_reg_n_0,
      I2 => pBitslipCnt(1),
      I3 => pBitslipCnt(0),
      I4 => pAlignRst_reg_n_0,
      O => \pAlignRst_i_1__0_n_0\
    );
pAlignRst_reg: unisim.vcomponents.FDPE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pAlignRst_i_1__0_n_0\,
      PRE => AS(0),
      Q => pAlignRst_reg_n_0
    );
\pBitslipCnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pBitslipCnt(0),
      I1 => pBitslipCnt(1),
      I2 => pBitslip_reg_n_0,
      O => \pBitslipCnt[0]_i_1_n_0\
    );
\pBitslipCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => pBitslipCnt(0),
      I1 => pBitslipCnt(1),
      I2 => pBitslip_reg_n_0,
      O => \pBitslipCnt[1]_i_1_n_0\
    );
\pBitslipCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pBitslipCnt[0]_i_1_n_0\,
      Q => pBitslipCnt(0),
      R => '0'
    );
\pBitslipCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pBitslipCnt[1]_i_1_n_0\,
      Q => pBitslipCnt(1),
      R => '0'
    );
pBitslip_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => PhaseAlignX_n_7,
      Q => pBitslip_reg_n_0,
      R => '0'
    );
\pDataIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(0),
      Q => vid_pData(0),
      R => pMeRdy_int_reg_0(0)
    );
\pDataIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(1),
      Q => vid_pData(1),
      R => pMeRdy_int_reg_0(0)
    );
\pDataIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(2),
      Q => vid_pData(2),
      R => pMeRdy_int_reg_0(0)
    );
\pDataIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(3),
      Q => vid_pData(3),
      R => pMeRdy_int_reg_0(0)
    );
\pDataIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(4),
      Q => vid_pData(4),
      R => pMeRdy_int_reg_0(0)
    );
\pDataIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(5),
      Q => vid_pData(5),
      R => pMeRdy_int_reg_0(0)
    );
\pDataIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(6),
      Q => vid_pData(6),
      R => pMeRdy_int_reg_0(0)
    );
\pDataIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(7),
      Q => vid_pData(7),
      R => pMeRdy_int_reg_0(0)
    );
\rTimeoutCnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => SyncBaseOvf_n_1,
      I1 => SyncBaseOvf_n_2,
      I2 => SyncBaseOvf_n_3,
      I3 => SyncBaseOvf_n_4,
      O => \rTimeoutCnt[0]_i_1__0_n_0\
    );
\rTimeoutCnt[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rTimeoutCnt_reg(0),
      O => \rTimeoutCnt[0]_i_3__0_n_0\
    );
\rTimeoutCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2__0_n_7\,
      Q => rTimeoutCnt_reg(0),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rTimeoutCnt_reg[0]_i_2__0_n_0\,
      CO(2) => \rTimeoutCnt_reg[0]_i_2__0_n_1\,
      CO(1) => \rTimeoutCnt_reg[0]_i_2__0_n_2\,
      CO(0) => \rTimeoutCnt_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rTimeoutCnt_reg[0]_i_2__0_n_4\,
      O(2) => \rTimeoutCnt_reg[0]_i_2__0_n_5\,
      O(1) => \rTimeoutCnt_reg[0]_i_2__0_n_6\,
      O(0) => \rTimeoutCnt_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => rTimeoutCnt_reg(3 downto 1),
      S(0) => \rTimeoutCnt[0]_i_3__0_n_0\
    );
\rTimeoutCnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1__0_n_5\,
      Q => rTimeoutCnt_reg(10),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1__0_n_4\,
      Q => rTimeoutCnt_reg(11),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1__0_n_7\,
      Q => rTimeoutCnt_reg(12),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[8]_i_1__0_n_0\,
      CO(3) => \rTimeoutCnt_reg[12]_i_1__0_n_0\,
      CO(2) => \rTimeoutCnt_reg[12]_i_1__0_n_1\,
      CO(1) => \rTimeoutCnt_reg[12]_i_1__0_n_2\,
      CO(0) => \rTimeoutCnt_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[12]_i_1__0_n_4\,
      O(2) => \rTimeoutCnt_reg[12]_i_1__0_n_5\,
      O(1) => \rTimeoutCnt_reg[12]_i_1__0_n_6\,
      O(0) => \rTimeoutCnt_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(15 downto 12)
    );
\rTimeoutCnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1__0_n_6\,
      Q => rTimeoutCnt_reg(13),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1__0_n_5\,
      Q => rTimeoutCnt_reg(14),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1__0_n_4\,
      Q => rTimeoutCnt_reg(15),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1__0_n_7\,
      Q => rTimeoutCnt_reg(16),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[12]_i_1__0_n_0\,
      CO(3) => \rTimeoutCnt_reg[16]_i_1__0_n_0\,
      CO(2) => \rTimeoutCnt_reg[16]_i_1__0_n_1\,
      CO(1) => \rTimeoutCnt_reg[16]_i_1__0_n_2\,
      CO(0) => \rTimeoutCnt_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[16]_i_1__0_n_4\,
      O(2) => \rTimeoutCnt_reg[16]_i_1__0_n_5\,
      O(1) => \rTimeoutCnt_reg[16]_i_1__0_n_6\,
      O(0) => \rTimeoutCnt_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(19 downto 16)
    );
\rTimeoutCnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1__0_n_6\,
      Q => rTimeoutCnt_reg(17),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1__0_n_5\,
      Q => rTimeoutCnt_reg(18),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1__0_n_4\,
      Q => rTimeoutCnt_reg(19),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2__0_n_6\,
      Q => rTimeoutCnt_reg(1),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1__0_n_7\,
      Q => rTimeoutCnt_reg(20),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[16]_i_1__0_n_0\,
      CO(3) => \NLW_rTimeoutCnt_reg[20]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \rTimeoutCnt_reg[20]_i_1__0_n_1\,
      CO(1) => \rTimeoutCnt_reg[20]_i_1__0_n_2\,
      CO(0) => \rTimeoutCnt_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[20]_i_1__0_n_4\,
      O(2) => \rTimeoutCnt_reg[20]_i_1__0_n_5\,
      O(1) => \rTimeoutCnt_reg[20]_i_1__0_n_6\,
      O(0) => \rTimeoutCnt_reg[20]_i_1__0_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(23 downto 20)
    );
\rTimeoutCnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1__0_n_6\,
      Q => rTimeoutCnt_reg(21),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1__0_n_5\,
      Q => rTimeoutCnt_reg(22),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1__0_n_4\,
      Q => rTimeoutCnt_reg(23),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2__0_n_5\,
      Q => rTimeoutCnt_reg(2),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2__0_n_4\,
      Q => rTimeoutCnt_reg(3),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1__0_n_7\,
      Q => rTimeoutCnt_reg(4),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[0]_i_2__0_n_0\,
      CO(3) => \rTimeoutCnt_reg[4]_i_1__0_n_0\,
      CO(2) => \rTimeoutCnt_reg[4]_i_1__0_n_1\,
      CO(1) => \rTimeoutCnt_reg[4]_i_1__0_n_2\,
      CO(0) => \rTimeoutCnt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[4]_i_1__0_n_4\,
      O(2) => \rTimeoutCnt_reg[4]_i_1__0_n_5\,
      O(1) => \rTimeoutCnt_reg[4]_i_1__0_n_6\,
      O(0) => \rTimeoutCnt_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(7 downto 4)
    );
\rTimeoutCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1__0_n_6\,
      Q => rTimeoutCnt_reg(5),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1__0_n_5\,
      Q => rTimeoutCnt_reg(6),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1__0_n_4\,
      Q => rTimeoutCnt_reg(7),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1__0_n_7\,
      Q => rTimeoutCnt_reg(8),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[4]_i_1__0_n_0\,
      CO(3) => \rTimeoutCnt_reg[8]_i_1__0_n_0\,
      CO(2) => \rTimeoutCnt_reg[8]_i_1__0_n_1\,
      CO(1) => \rTimeoutCnt_reg[8]_i_1__0_n_2\,
      CO(0) => \rTimeoutCnt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[8]_i_1__0_n_4\,
      O(2) => \rTimeoutCnt_reg[8]_i_1__0_n_5\,
      O(1) => \rTimeoutCnt_reg[8]_i_1__0_n_6\,
      O(0) => \rTimeoutCnt_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(11 downto 8)
    );
\rTimeoutCnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1__0_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1__0_n_6\,
      Q => rTimeoutCnt_reg(9),
      R => rTimeoutRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_1 is
  port (
    pAllVldBgnFlag : out STD_LOGIC;
    pVld_2 : out STD_LOGIC;
    pRdy_2 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    vid_pData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    rMMCM_LckdRisingFlag_reg : in STD_LOGIC;
    \rMMCM_Reset_q_reg[0]\ : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    pAllVld : in STD_LOGIC;
    pAligned_reg : in STD_LOGIC;
    pVld_1 : in STD_LOGIC;
    pVld_0 : in STD_LOGIC;
    pRdy_0 : in STD_LOGIC;
    pRdy_1 : in STD_LOGIC;
    pRst_n : in STD_LOGIC;
    pMeRdy_int_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_1 : entity is "TMDS_Decoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_1 is
  signal PhaseAlignX_n_4 : STD_LOGIC;
  signal PhaseAlignX_n_5 : STD_LOGIC;
  signal PhaseAlignX_n_7 : STD_LOGIC;
  signal SyncBaseOvf_n_1 : STD_LOGIC;
  signal SyncBaseOvf_n_2 : STD_LOGIC;
  signal SyncBaseOvf_n_3 : STD_LOGIC;
  signal SyncBaseOvf_n_4 : STD_LOGIC;
  signal pAlignErr_q : STD_LOGIC;
  signal pAlignRst : STD_LOGIC;
  signal pAlignRst_i_1_n_0 : STD_LOGIC;
  signal pAllVldBgnFlag0 : STD_LOGIC;
  signal pAllVld_q : STD_LOGIC;
  signal pBitslipCnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pBitslipCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pBitslipCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal pBitslip_reg_n_0 : STD_LOGIC;
  signal pDataIn : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pDataInRaw : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pIDLY_CE : STD_LOGIC;
  signal pIDLY_CNT : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pIDLY_INC : STD_LOGIC;
  signal pIDLY_LD : STD_LOGIC;
  signal pTimeoutOvf : STD_LOGIC;
  signal \rTimeoutCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt[0]_i_3_n_0\ : STD_LOGIC;
  signal rTimeoutCnt_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rTimeoutCnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rTimeoutCnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal rTimeoutRst : STD_LOGIC;
  signal \NLW_rTimeoutCnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pBitslipCnt[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \pBitslipCnt[1]_i_1\ : label is "soft_lutpair82";
begin
ChannelBondX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ChannelBond
     port map (
      D(7 downto 0) => pDataIn(7 downto 0),
      SR(0) => SR(0),
      pAligned_reg => pAligned_reg,
      pAllVld => pAllVld,
      pAllVldBgnFlag => pAllVldBgnFlag,
      pAllVldBgnFlag0 => pAllVldBgnFlag0,
      pAllVld_q => pAllVld_q,
      pDataInRaw(9 downto 0) => pDataInRaw(9 downto 0),
      pMeRdy_int_reg_0 => pRdy_2,
      pRdy_0 => pRdy_0,
      pRdy_1 => pRdy_1,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
InputSERDES_X: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputSERDES
     port map (
      CLKB => CLKB,
      D(4 downto 0) => pIDLY_CNT(4 downto 0),
      TMDS_Data_n(0) => TMDS_Data_n(0),
      TMDS_Data_p(0) => TMDS_Data_p(0),
      \out\(0) => \out\(0),
      pBitslip_reg => pBitslip_reg_n_0,
      pDataInRaw(9 downto 0) => pDataInRaw(9 downto 0),
      pIDLY_CE => pIDLY_CE,
      pIDLY_INC => pIDLY_INC,
      pIDLY_LD => pIDLY_LD,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg,
      \rMMCM_Reset_q_reg[0]\ => \rMMCM_Reset_q_reg[0]\
    );
PhaseAlignX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PhaseAlign
     port map (
      D(8 downto 0) => pDataInRaw(8 downto 0),
      SR(0) => pAlignRst,
      iIn_q_reg => PhaseAlignX_n_5,
      \out\(0) => pTimeoutOvf,
      pAlignErr_q => pAlignErr_q,
      pAlignErr_q_reg => PhaseAlignX_n_4,
      pAllVldBgnFlag0 => pAllVldBgnFlag0,
      pAllVld_q => pAllVld_q,
      pBitslip_reg => PhaseAlignX_n_7,
      pIDLY_CE => pIDLY_CE,
      pIDLY_CE_reg_0(4 downto 0) => pIDLY_CNT(4 downto 0),
      pIDLY_INC => pIDLY_INC,
      pIDLY_LD => pIDLY_LD,
      pVld_0 => pVld_0,
      pVld_1 => pVld_1,
      pVld_2 => pVld_2,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
SyncBaseOvf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase
     port map (
      RefClk => RefClk,
      iIn_q_reg_0 => SyncBaseOvf_n_1,
      iIn_q_reg_1 => SyncBaseOvf_n_2,
      iIn_q_reg_2 => SyncBaseOvf_n_3,
      iIn_q_reg_3 => SyncBaseOvf_n_4,
      \oSyncStages_reg[1]\(0) => \out\(0),
      \out\(0) => pTimeoutOvf,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg,
      rTimeoutCnt_reg(23 downto 0) => rTimeoutCnt_reg(23 downto 0)
    );
SyncBaseRst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncBase__parameterized0\
     port map (
      RefClk => RefClk,
      \oSyncStages_reg[1]\(0) => \out\(0),
      \out\(0) => rTimeoutRst,
      \pState_reg[3]\ => PhaseAlignX_n_5,
      rMMCM_LckdRisingFlag_reg => rMMCM_LckdRisingFlag_reg
    );
pAlignErr_q_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => PhaseAlignX_n_4,
      Q => pAlignErr_q,
      R => '0'
    );
pAlignRst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDDDDD"
    )
        port map (
      I0 => pRst_n,
      I1 => pBitslip_reg_n_0,
      I2 => pBitslipCnt(1),
      I3 => pBitslipCnt(0),
      I4 => pAlignRst,
      O => pAlignRst_i_1_n_0
    );
pAlignRst_reg: unisim.vcomponents.FDPE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pAlignRst_i_1_n_0,
      PRE => \out\(0),
      Q => pAlignRst
    );
\pBitslipCnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pBitslipCnt(0),
      I1 => pBitslipCnt(1),
      I2 => pBitslip_reg_n_0,
      O => \pBitslipCnt[0]_i_1_n_0\
    );
\pBitslipCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => pBitslipCnt(0),
      I1 => pBitslipCnt(1),
      I2 => pBitslip_reg_n_0,
      O => \pBitslipCnt[1]_i_1_n_0\
    );
\pBitslipCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pBitslipCnt[0]_i_1_n_0\,
      Q => pBitslipCnt(0),
      R => '0'
    );
\pBitslipCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => \pBitslipCnt[1]_i_1_n_0\,
      Q => pBitslipCnt(1),
      R => '0'
    );
pBitslip_reg: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => PhaseAlignX_n_7,
      Q => pBitslip_reg_n_0,
      R => '0'
    );
\pDataIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(0),
      Q => vid_pData(0),
      R => pMeRdy_int_reg(0)
    );
\pDataIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(1),
      Q => vid_pData(1),
      R => pMeRdy_int_reg(0)
    );
\pDataIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(2),
      Q => vid_pData(2),
      R => pMeRdy_int_reg(0)
    );
\pDataIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(3),
      Q => vid_pData(3),
      R => pMeRdy_int_reg(0)
    );
\pDataIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(4),
      Q => vid_pData(4),
      R => pMeRdy_int_reg(0)
    );
\pDataIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(5),
      Q => vid_pData(5),
      R => pMeRdy_int_reg(0)
    );
\pDataIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(6),
      Q => vid_pData(6),
      R => pMeRdy_int_reg(0)
    );
\pDataIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rMMCM_LckdRisingFlag_reg,
      CE => '1',
      D => pDataIn(7),
      Q => vid_pData(7),
      R => pMeRdy_int_reg(0)
    );
\rTimeoutCnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => SyncBaseOvf_n_1,
      I1 => SyncBaseOvf_n_2,
      I2 => SyncBaseOvf_n_3,
      I3 => SyncBaseOvf_n_4,
      O => \rTimeoutCnt[0]_i_1_n_0\
    );
\rTimeoutCnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rTimeoutCnt_reg(0),
      O => \rTimeoutCnt[0]_i_3_n_0\
    );
\rTimeoutCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2_n_7\,
      Q => rTimeoutCnt_reg(0),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rTimeoutCnt_reg[0]_i_2_n_0\,
      CO(2) => \rTimeoutCnt_reg[0]_i_2_n_1\,
      CO(1) => \rTimeoutCnt_reg[0]_i_2_n_2\,
      CO(0) => \rTimeoutCnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rTimeoutCnt_reg[0]_i_2_n_4\,
      O(2) => \rTimeoutCnt_reg[0]_i_2_n_5\,
      O(1) => \rTimeoutCnt_reg[0]_i_2_n_6\,
      O(0) => \rTimeoutCnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => rTimeoutCnt_reg(3 downto 1),
      S(0) => \rTimeoutCnt[0]_i_3_n_0\
    );
\rTimeoutCnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1_n_5\,
      Q => rTimeoutCnt_reg(10),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1_n_4\,
      Q => rTimeoutCnt_reg(11),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1_n_7\,
      Q => rTimeoutCnt_reg(12),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[8]_i_1_n_0\,
      CO(3) => \rTimeoutCnt_reg[12]_i_1_n_0\,
      CO(2) => \rTimeoutCnt_reg[12]_i_1_n_1\,
      CO(1) => \rTimeoutCnt_reg[12]_i_1_n_2\,
      CO(0) => \rTimeoutCnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[12]_i_1_n_4\,
      O(2) => \rTimeoutCnt_reg[12]_i_1_n_5\,
      O(1) => \rTimeoutCnt_reg[12]_i_1_n_6\,
      O(0) => \rTimeoutCnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(15 downto 12)
    );
\rTimeoutCnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1_n_6\,
      Q => rTimeoutCnt_reg(13),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1_n_5\,
      Q => rTimeoutCnt_reg(14),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[12]_i_1_n_4\,
      Q => rTimeoutCnt_reg(15),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1_n_7\,
      Q => rTimeoutCnt_reg(16),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[12]_i_1_n_0\,
      CO(3) => \rTimeoutCnt_reg[16]_i_1_n_0\,
      CO(2) => \rTimeoutCnt_reg[16]_i_1_n_1\,
      CO(1) => \rTimeoutCnt_reg[16]_i_1_n_2\,
      CO(0) => \rTimeoutCnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[16]_i_1_n_4\,
      O(2) => \rTimeoutCnt_reg[16]_i_1_n_5\,
      O(1) => \rTimeoutCnt_reg[16]_i_1_n_6\,
      O(0) => \rTimeoutCnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(19 downto 16)
    );
\rTimeoutCnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1_n_6\,
      Q => rTimeoutCnt_reg(17),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1_n_5\,
      Q => rTimeoutCnt_reg(18),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[16]_i_1_n_4\,
      Q => rTimeoutCnt_reg(19),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2_n_6\,
      Q => rTimeoutCnt_reg(1),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1_n_7\,
      Q => rTimeoutCnt_reg(20),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[16]_i_1_n_0\,
      CO(3) => \NLW_rTimeoutCnt_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rTimeoutCnt_reg[20]_i_1_n_1\,
      CO(1) => \rTimeoutCnt_reg[20]_i_1_n_2\,
      CO(0) => \rTimeoutCnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[20]_i_1_n_4\,
      O(2) => \rTimeoutCnt_reg[20]_i_1_n_5\,
      O(1) => \rTimeoutCnt_reg[20]_i_1_n_6\,
      O(0) => \rTimeoutCnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(23 downto 20)
    );
\rTimeoutCnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1_n_6\,
      Q => rTimeoutCnt_reg(21),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1_n_5\,
      Q => rTimeoutCnt_reg(22),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[20]_i_1_n_4\,
      Q => rTimeoutCnt_reg(23),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2_n_5\,
      Q => rTimeoutCnt_reg(2),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[0]_i_2_n_4\,
      Q => rTimeoutCnt_reg(3),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1_n_7\,
      Q => rTimeoutCnt_reg(4),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[0]_i_2_n_0\,
      CO(3) => \rTimeoutCnt_reg[4]_i_1_n_0\,
      CO(2) => \rTimeoutCnt_reg[4]_i_1_n_1\,
      CO(1) => \rTimeoutCnt_reg[4]_i_1_n_2\,
      CO(0) => \rTimeoutCnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[4]_i_1_n_4\,
      O(2) => \rTimeoutCnt_reg[4]_i_1_n_5\,
      O(1) => \rTimeoutCnt_reg[4]_i_1_n_6\,
      O(0) => \rTimeoutCnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(7 downto 4)
    );
\rTimeoutCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1_n_6\,
      Q => rTimeoutCnt_reg(5),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1_n_5\,
      Q => rTimeoutCnt_reg(6),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[4]_i_1_n_4\,
      Q => rTimeoutCnt_reg(7),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1_n_7\,
      Q => rTimeoutCnt_reg(8),
      R => rTimeoutRst
    );
\rTimeoutCnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rTimeoutCnt_reg[4]_i_1_n_0\,
      CO(3) => \rTimeoutCnt_reg[8]_i_1_n_0\,
      CO(2) => \rTimeoutCnt_reg[8]_i_1_n_1\,
      CO(1) => \rTimeoutCnt_reg[8]_i_1_n_2\,
      CO(0) => \rTimeoutCnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rTimeoutCnt_reg[8]_i_1_n_4\,
      O(2) => \rTimeoutCnt_reg[8]_i_1_n_5\,
      O(1) => \rTimeoutCnt_reg[8]_i_1_n_6\,
      O(0) => \rTimeoutCnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => rTimeoutCnt_reg(11 downto 8)
    );
\rTimeoutCnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => \rTimeoutCnt[0]_i_1_n_0\,
      D => \rTimeoutCnt_reg[8]_i_1_n_6\,
      Q => rTimeoutCnt_reg(9),
      R => rTimeoutRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb is
  port (
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    vid_pData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    SerialClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    SDA_I : in STD_LOGIC;
    SDA_O : out STD_LOGIC;
    SDA_T : out STD_LOGIC;
    SCL_I : in STD_LOGIC;
    SCL_O : out STD_LOGIC;
    SCL_T : out STD_LOGIC;
    pRst : in STD_LOGIC;
    pRst_n : in STD_LOGIC
  );
  attribute kAddBUFG : string;
  attribute kAddBUFG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb : entity is "FALSE";
  attribute kClkRange : integer;
  attribute kClkRange of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb : entity is 1;
  attribute kDebug : string;
  attribute kDebug of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb : entity is "FALSE";
  attribute kEdidFileName : string;
  attribute kEdidFileName of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb : entity is "dgl_720p_cea.data";
  attribute kEmulateDDC : string;
  attribute kEmulateDDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb : entity is "TRUE";
  attribute kIDLY_TapValuePs : integer;
  attribute kIDLY_TapValuePs of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb : entity is 78;
  attribute kIDLY_TapWidth : integer;
  attribute kIDLY_TapWidth of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb : entity is 5;
  attribute kRstActiveHigh : string;
  attribute kRstActiveHigh of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb : entity is "FALSE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \ChannelBondX/pAllVldBgnFlag\ : STD_LOGIC;
  signal \DataDecoders[0].DecoderX_n_6\ : STD_LOGIC;
  signal \DataDecoders[1].DecoderX_n_0\ : STD_LOGIC;
  signal \DataDecoders[1].DecoderX_n_3\ : STD_LOGIC;
  signal \DataDecoders[2].DecoderX_n_3\ : STD_LOGIC;
  signal \^pixelclk\ : STD_LOGIC;
  signal \^serialclk\ : STD_LOGIC;
  signal TMDS_ClockingX_n_3 : STD_LOGIC;
  signal pAllVld : STD_LOGIC;
  signal pLockLostRst : STD_LOGIC;
  signal pRdy_0 : STD_LOGIC;
  signal pRdy_1 : STD_LOGIC;
  signal pRdy_2 : STD_LOGIC;
  signal pVld_0 : STD_LOGIC;
  signal pVld_1 : STD_LOGIC;
  signal pVld_2 : STD_LOGIC;
begin
  PixelClk <= \^pixelclk\;
  SCL_O <= \<const0>\;
  SCL_T <= \<const1>\;
  SDA_O <= \<const0>\;
  SerialClk <= \^serialclk\;
\DataDecoders[0].DecoderX\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder
     port map (
      AS(0) => pLockLostRst,
      CLKB => \^serialclk\,
      RefClk => RefClk,
      SR(0) => \DataDecoders[2].DecoderX_n_3\,
      TMDS_Data_n(0) => TMDS_Data_n(0),
      TMDS_Data_p(0) => TMDS_Data_p(0),
      pAligned_reg => \DataDecoders[1].DecoderX_n_0\,
      pAllVld => pAllVld,
      pAllVldBgnFlag => \ChannelBondX/pAllVldBgnFlag\,
      \pDataIn_reg[7]_0\(0) => \DataDecoders[0].DecoderX_n_6\,
      pRdy_0 => pRdy_0,
      pRdy_1 => pRdy_1,
      pRdy_2 => pRdy_2,
      pRst_n => pRst_n,
      pVld_0 => pVld_0,
      pVld_1 => pVld_1,
      pVld_2 => pVld_2,
      rMMCM_LckdRisingFlag_reg => \^pixelclk\,
      \rMMCM_Reset_q_reg[0]\ => \^serialclk\,
      vid_pData(7 downto 0) => vid_pData(15 downto 8),
      vid_pHSync => vid_pHSync,
      vid_pVDE => vid_pVDE,
      vid_pVSync => vid_pVSync
    );
\DataDecoders[1].DecoderX\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_0
     port map (
      AS(0) => pLockLostRst,
      CLKB => \^serialclk\,
      RefClk => RefClk,
      SR(0) => \DataDecoders[1].DecoderX_n_3\,
      TMDS_Data_n(0) => TMDS_Data_n(1),
      TMDS_Data_p(0) => TMDS_Data_p(1),
      pAllVld => pAllVld,
      pAllVldBgnFlag => \ChannelBondX/pAllVldBgnFlag\,
      pMeRdy_int_reg => \DataDecoders[1].DecoderX_n_0\,
      pMeRdy_int_reg_0(0) => \DataDecoders[0].DecoderX_n_6\,
      pRdy_0 => pRdy_0,
      pRdy_1 => pRdy_1,
      pRdy_2 => pRdy_2,
      pRst_n => pRst_n,
      pVld_0 => pVld_0,
      pVld_1 => pVld_1,
      pVld_2 => pVld_2,
      rMMCM_LckdRisingFlag_reg => \^pixelclk\,
      \rMMCM_Reset_q_reg[0]\ => \^serialclk\,
      vid_pData(7 downto 0) => vid_pData(7 downto 0)
    );
\DataDecoders[2].DecoderX\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Decoder_1
     port map (
      CLKB => \^serialclk\,
      RefClk => RefClk,
      SR(0) => \DataDecoders[2].DecoderX_n_3\,
      TMDS_Data_n(0) => TMDS_Data_n(2),
      TMDS_Data_p(0) => TMDS_Data_p(2),
      \out\(0) => pLockLostRst,
      pAligned_reg => \DataDecoders[1].DecoderX_n_0\,
      pAllVld => pAllVld,
      pAllVldBgnFlag => \ChannelBondX/pAllVldBgnFlag\,
      pMeRdy_int_reg(0) => \DataDecoders[1].DecoderX_n_3\,
      pRdy_0 => pRdy_0,
      pRdy_1 => pRdy_1,
      pRdy_2 => pRdy_2,
      pRst_n => pRst_n,
      pVld_0 => pVld_0,
      pVld_1 => pVld_1,
      pVld_2 => pVld_2,
      rMMCM_LckdRisingFlag_reg => \^pixelclk\,
      \rMMCM_Reset_q_reg[0]\ => \^serialclk\,
      vid_pData(7 downto 0) => vid_pData(23 downto 16)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\GenerateDDC.DDC_EEPROM\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EEPROM_8b
     port map (
      RefClk => RefClk,
      SCL_I => SCL_I,
      SDA_I => SDA_I,
      SDA_T => SDA_T
    );
LockLostReset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge
     port map (
      in0 => TMDS_ClockingX_n_3,
      \out\(0) => pLockLostRst,
      rMMCM_LckdRisingFlag_reg => \^pixelclk\
    );
TMDS_ClockingX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TMDS_Clocking
     port map (
      PixelClk => \^pixelclk\,
      RefClk => RefClk,
      TMDS_Clk_n => TMDS_Clk_n,
      TMDS_Clk_p => TMDS_Clk_p,
      aPixelClkLckd => aPixelClkLckd,
      aRst_n => aRst_n,
      in0 => TMDS_ClockingX_n_3,
      \pDataQ_reg[8]\ => \^serialclk\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    TMDS_Clk_p : in STD_LOGIC;
    TMDS_Clk_n : in STD_LOGIC;
    TMDS_Data_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RefClk : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    vid_pData : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : out STD_LOGIC;
    vid_pHSync : out STD_LOGIC;
    vid_pVSync : out STD_LOGIC;
    PixelClk : out STD_LOGIC;
    aPixelClkLckd : out STD_LOGIC;
    SDA_I : in STD_LOGIC;
    SDA_O : out STD_LOGIC;
    SDA_T : out STD_LOGIC;
    SCL_I : in STD_LOGIC;
    SCL_O : out STD_LOGIC;
    SCL_T : out STD_LOGIC;
    pRst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_dvi2rgb_1_1,dvi2rgb,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dvi2rgb,Vivado 2017.4_AR70530_AR70530";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_SerialClk_UNCONNECTED : STD_LOGIC;
  attribute kAddBUFG : string;
  attribute kAddBUFG of U0 : label is "FALSE";
  attribute kClkRange : integer;
  attribute kClkRange of U0 : label is 1;
  attribute kDebug : string;
  attribute kDebug of U0 : label is "FALSE";
  attribute kEdidFileName : string;
  attribute kEdidFileName of U0 : label is "dgl_720p_cea.data";
  attribute kEmulateDDC : string;
  attribute kEmulateDDC of U0 : label is "TRUE";
  attribute kIDLY_TapValuePs : integer;
  attribute kIDLY_TapValuePs of U0 : label is 78;
  attribute kIDLY_TapWidth : integer;
  attribute kIDLY_TapWidth of U0 : label is 5;
  attribute kRstActiveHigh : string;
  attribute kRstActiveHigh of U0 : label is "FALSE";
  attribute x_interface_info : string;
  attribute x_interface_info of PixelClk : signal is "xilinx.com:signal:clock:1.0 PixelClk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of PixelClk : signal is "XIL_INTERFACENAME PixelClk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_dvi2rgb_1_1_PixelClk";
  attribute x_interface_info of RefClk : signal is "xilinx.com:signal:clock:1.0 RefClk CLK";
  attribute x_interface_parameter of RefClk : signal is "XIL_INTERFACENAME RefClk, FREQ_HZ 2e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of SCL_I : signal is "xilinx.com:interface:iic:1.0 DDC SCL_I";
  attribute x_interface_info of SCL_O : signal is "xilinx.com:interface:iic:1.0 DDC SCL_O";
  attribute x_interface_info of SCL_T : signal is "xilinx.com:interface:iic:1.0 DDC SCL_T";
  attribute x_interface_info of SDA_I : signal is "xilinx.com:interface:iic:1.0 DDC SDA_I";
  attribute x_interface_parameter of SDA_I : signal is "XIL_INTERFACENAME DDC, BOARD.ASSOCIATED_PARAM IIC_BOARD_INTERFACE";
  attribute x_interface_info of SDA_O : signal is "xilinx.com:interface:iic:1.0 DDC SDA_O";
  attribute x_interface_info of SDA_T : signal is "xilinx.com:interface:iic:1.0 DDC SDA_T";
  attribute x_interface_info of TMDS_Clk_n : signal is "digilentinc.com:interface:tmds:1.0 TMDS CLK_N, xilinx.com:signal:clock:1.0 TMDS_Clk_n CLK";
  attribute x_interface_parameter of TMDS_Clk_n : signal is "XIL_INTERFACENAME TMDS_Clk_n, ASSOCIATED_RESET aRst_n, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of TMDS_Clk_p : signal is "digilentinc.com:interface:tmds:1.0 TMDS CLK_P, xilinx.com:signal:clock:1.0 TMDS_Clk_p CLK";
  attribute x_interface_parameter of TMDS_Clk_p : signal is "XIL_INTERFACENAME TMDS, BOARD.ASSOCIATED_PARAM TMDS_BOARD_INTERFACE, XIL_INTERFACENAME TMDS_Clk_p, ASSOCIATED_RESET pRst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of aRst_n : signal is "xilinx.com:signal:reset:1.0 AsyncRst_n RST";
  attribute x_interface_parameter of aRst_n : signal is "XIL_INTERFACENAME AsyncRst_n, POLARITY ACTIVE_LOW";
  attribute x_interface_info of pRst_n : signal is "xilinx.com:signal:reset:1.0 SyncRst_n RST";
  attribute x_interface_parameter of pRst_n : signal is "XIL_INTERFACENAME SyncRst_n, POLARITY ACTIVE_LOW";
  attribute x_interface_info of vid_pHSync : signal is "xilinx.com:interface:vid_io:1.0 RGB HSYNC";
  attribute x_interface_info of vid_pVDE : signal is "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO";
  attribute x_interface_info of vid_pVSync : signal is "xilinx.com:interface:vid_io:1.0 RGB VSYNC";
  attribute x_interface_info of TMDS_Data_n : signal is "digilentinc.com:interface:tmds:1.0 TMDS DATA_N";
  attribute x_interface_info of TMDS_Data_p : signal is "digilentinc.com:interface:tmds:1.0 TMDS DATA_P";
  attribute x_interface_info of vid_pData : signal is "xilinx.com:interface:vid_io:1.0 RGB DATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvi2rgb
     port map (
      PixelClk => PixelClk,
      RefClk => RefClk,
      SCL_I => SCL_I,
      SCL_O => SCL_O,
      SCL_T => SCL_T,
      SDA_I => SDA_I,
      SDA_O => SDA_O,
      SDA_T => SDA_T,
      SerialClk => NLW_U0_SerialClk_UNCONNECTED,
      TMDS_Clk_n => TMDS_Clk_n,
      TMDS_Clk_p => TMDS_Clk_p,
      TMDS_Data_n(2 downto 0) => TMDS_Data_n(2 downto 0),
      TMDS_Data_p(2 downto 0) => TMDS_Data_p(2 downto 0),
      aPixelClkLckd => aPixelClkLckd,
      aRst => '0',
      aRst_n => aRst_n,
      pRst => '0',
      pRst_n => pRst_n,
      vid_pData(23 downto 0) => vid_pData(23 downto 0),
      vid_pHSync => vid_pHSync,
      vid_pVDE => vid_pVDE,
      vid_pVSync => vid_pVSync
    );
end STRUCTURE;
