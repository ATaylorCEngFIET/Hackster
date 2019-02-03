-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Dec  3 15:42:15 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/hdl_projects/Zybo_EV_Platform/block_compile.srcs/sources_1/bd/design_1/ip/design_1_AXI_BayerToRGB_0_0_1/design_1_AXI_BayerToRGB_0_0_sim_netlist.vhdl
-- Design      : design_1_AXI_BayerToRGB_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_BayerToRGB_0_0_LineBuffer is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \sPixel_reg[2][9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    StreamClk : in STD_LOGIC;
    sLineBufferWrite_reg : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sLineBufferReadDataBuf_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXI_BayerToRGB_0_0_LineBuffer : entity is "LineBuffer";
end design_1_AXI_BayerToRGB_0_0_LineBuffer;

architecture STRUCTURE of design_1_AXI_BayerToRGB_0_0_LineBuffer is
  signal \^d\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_pLineBuffer_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_pLineBuffer_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_pLineBuffer_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_pLineBuffer_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_pLineBuffer_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_pLineBuffer_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_pLineBuffer_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_pLineBuffer_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal NLW_pLineBuffer_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pLineBuffer_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pLineBuffer_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pLineBuffer_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of pLineBuffer_reg : label is "p0_d10";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of pLineBuffer_reg : label is "p0_d10";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of pLineBuffer_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of pLineBuffer_reg : label is 20480;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of pLineBuffer_reg : label is "pLineBuffer";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of pLineBuffer_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of pLineBuffer_reg : label is 2047;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of pLineBuffer_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of pLineBuffer_reg : label is 9;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sPixel[2][0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sPixel[2][1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sPixel[2][2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sPixel[2][3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sPixel[2][4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sPixel[2][5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sPixel[2][6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sPixel[2][7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sPixel[2][8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sPixel[2][9]_i_1\ : label is "soft_lutpair0";
begin
  D(9 downto 0) <= \^d\(9 downto 0);
pLineBuffer_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => ADDRARDADDR(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => ADDRARDADDR(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_pLineBuffer_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_pLineBuffer_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => StreamClk,
      CLKBWRCLK => StreamClk,
      DBITERR => NLW_pLineBuffer_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 10) => B"0000000000000000000000",
      DIADI(9 downto 0) => Q(9 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000001111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_pLineBuffer_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 10) => NLW_pLineBuffer_reg_DOBDO_UNCONNECTED(31 downto 10),
      DOBDO(9 downto 0) => \^d\(9 downto 0),
      DOPADOP(3 downto 0) => NLW_pLineBuffer_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_pLineBuffer_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_pLineBuffer_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => sLineBufferWrite_reg,
      ENBWREN => sLineBufferWrite_reg,
      INJECTDBITERR => NLW_pLineBuffer_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_pLineBuffer_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_pLineBuffer_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_pLineBuffer_reg_SBITERR_UNCONNECTED,
      WEA(3) => sLineBufferWrite_reg,
      WEA(2) => sLineBufferWrite_reg,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
\sPixel[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(0),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(0),
      O => \sPixel_reg[2][9]\(0)
    );
\sPixel[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(1),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(1),
      O => \sPixel_reg[2][9]\(1)
    );
\sPixel[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(2),
      O => \sPixel_reg[2][9]\(2)
    );
\sPixel[2][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(3),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(3),
      O => \sPixel_reg[2][9]\(3)
    );
\sPixel[2][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(4),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(4),
      O => \sPixel_reg[2][9]\(4)
    );
\sPixel[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(5),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(5),
      O => \sPixel_reg[2][9]\(5)
    );
\sPixel[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(6),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(6),
      O => \sPixel_reg[2][9]\(6)
    );
\sPixel[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(7),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(7),
      O => \sPixel_reg[2][9]\(7)
    );
\sPixel[2][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(8),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(8),
      O => \sPixel_reg[2][9]\(8)
    );
\sPixel[2][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(9),
      I1 => sLineBufferWrite_reg,
      I2 => \sLineBufferReadDataBuf_reg[9]\(9),
      O => \sPixel_reg[2][9]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_BayerToRGB_0_0_AXI_BayerToRGB is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    StreamClk : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    sStreamReset_n : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXI_BayerToRGB_0_0_AXI_BayerToRGB : entity is "AXI_BayerToRGB";
end design_1_AXI_BayerToRGB_0_0_AXI_BayerToRGB;

architecture STRUCTURE of design_1_AXI_BayerToRGB_0_0_AXI_BayerToRGB is
  signal LineBufferInst_n_10 : STD_LOGIC;
  signal LineBufferInst_n_11 : STD_LOGIC;
  signal LineBufferInst_n_12 : STD_LOGIC;
  signal LineBufferInst_n_13 : STD_LOGIC;
  signal LineBufferInst_n_14 : STD_LOGIC;
  signal LineBufferInst_n_15 : STD_LOGIC;
  signal LineBufferInst_n_16 : STD_LOGIC;
  signal LineBufferInst_n_17 : STD_LOGIC;
  signal LineBufferInst_n_18 : STD_LOGIC;
  signal LineBufferInst_n_19 : STD_LOGIC;
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^m_axis_video_tvalid\ : STD_LOGIC;
  signal m_axis_video_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \sAXIMasterBlue[0]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[1]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[2]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[3]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[4]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[5]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[6]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[7]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[8]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[9]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterBlue[9]_i_2_n_0\ : STD_LOGIC;
  signal sAXIMasterGreen1_in : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \sAXIMasterGreen[10]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[3]_i_2_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[3]_i_3_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[3]_i_4_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[3]_i_5_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[3]_i_6_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[3]_i_7_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[3]_i_8_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[3]_i_9_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[7]_i_2_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[7]_i_3_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[7]_i_4_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[7]_i_5_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[7]_i_6_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[7]_i_7_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[7]_i_8_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[7]_i_9_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[9]_i_2_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[9]_i_3_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[9]_i_4_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen[9]_i_5_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sAXIMasterGreen_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \sAXIMasterRed[0]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[1]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[2]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[3]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[4]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[5]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[6]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[7]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[8]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[8]_i_3_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[8]_i_4_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[9]_i_1_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[9]_i_2_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[9]_i_3_n_0\ : STD_LOGIC;
  signal \sAXIMasterRed[9]_i_4_n_0\ : STD_LOGIC;
  signal sAXI_SlaveLastAsserted_i_1_n_0 : STD_LOGIC;
  signal sAXI_SlaveLastAsserted_reg_n_0 : STD_LOGIC;
  signal \sCntColumns[10]_i_1_n_0\ : STD_LOGIC;
  signal \sCntColumns[10]_i_3_n_0\ : STD_LOGIC;
  signal \sCntColumns_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \sCntLines[0]_i_1_n_0\ : STD_LOGIC;
  signal \sCntLines[0]_i_2_n_0\ : STD_LOGIC;
  signal \sCntLines[0]_i_3_n_0\ : STD_LOGIC;
  signal sCntLines_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sCntRemPixels : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sCntRemPixels[0]_i_1_n_0\ : STD_LOGIC;
  signal \sCntRemPixels[1]_i_1_n_0\ : STD_LOGIC;
  signal sCoverInitialLatency : STD_LOGIC;
  signal sCoverInitialLatency_i_1_n_0 : STD_LOGIC;
  signal sCrntPositionIndicatorDly1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sCrntPositionIndicatorDly2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sCrntPositionIndicatorDly3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sLineBufferCrntAddr : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal sLineBufferReadData : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sLineBufferReadDataBuf : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sLineBufferReadDataBuf_0 : STD_LOGIC;
  signal sLineBufferWriteData : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sLineBufferWriteDataDly : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \sLineBufferWriteData[0]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[1]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[2]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[3]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[4]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[5]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[6]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[7]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[8]_i_1_n_0\ : STD_LOGIC;
  signal \sLineBufferWriteData[9]_i_1_n_0\ : STD_LOGIC;
  signal sLineBufferWrite_reg_n_0 : STD_LOGIC;
  signal sOtherPixelsData : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[0]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[10]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[11]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[12]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[13]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[14]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[15]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[16]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[17]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[18]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[19]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[1]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[20]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[21]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[22]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[23]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[24]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[25]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[26]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[27]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[28]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[29]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[2]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[3]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[4]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[5]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[6]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[7]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[8]\ : STD_LOGIC;
  signal \sOtherPixelsData_reg_n_0_[9]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \sPixel_reg_n_0_[3][9]\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstColumn]_i_1_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstColumn]_i_2_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstColumn]_i_3_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstColumn]_i_4_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][FirstLine]_i_1_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][Last]_i_1_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg[0][User]_i_1_n_0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[0][FirstColumn]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[0][FirstLine]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[0][Last]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[0][User]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[1][FirstColumn]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[1][FirstLine]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[1][Last]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[1][User]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[2][FirstColumn]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[2][FirstLine]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[2][Last]__0\ : STD_LOGIC;
  signal \sStrobesShiftReg_reg[2][User]__0\ : STD_LOGIC;
  signal \NLW_sAXIMasterGreen_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_sAXIMasterGreen_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sAXIMasterGreen_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \sAXIMasterGreen_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \sAXIMasterGreen_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \sAXIMasterGreen_reg[9]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sAXIMasterRed[8]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sAXIMasterRed[9]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sCntColumns[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sCntColumns[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sCntColumns[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sCntColumns[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sCntColumns[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sCntColumns[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sCntColumns[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sCntColumns[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sCntLines[0]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sCntRemPixels[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sCntRemPixels[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sOtherPixelsData[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sOtherPixelsData[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sOtherPixelsData[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sOtherPixelsData[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sOtherPixelsData[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sOtherPixelsData[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sOtherPixelsData[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sOtherPixelsData[17]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sOtherPixelsData[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sOtherPixelsData[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sOtherPixelsData[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sOtherPixelsData[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sOtherPixelsData[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sOtherPixelsData[24]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sOtherPixelsData[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sOtherPixelsData[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sOtherPixelsData[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sOtherPixelsData[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sOtherPixelsData[29]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sOtherPixelsData[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sOtherPixelsData[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sOtherPixelsData[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sOtherPixelsData[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sOtherPixelsData[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sOtherPixelsData[9]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sStrobesShiftReg[0][FirstColumn]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of s_axis_video_tready_INST_0 : label is "soft_lutpair18";
begin
  m_axis_video_tdata(29 downto 0) <= \^m_axis_video_tdata\(29 downto 0);
  m_axis_video_tvalid <= \^m_axis_video_tvalid\;
LineBufferInst: entity work.design_1_AXI_BayerToRGB_0_0_LineBuffer
     port map (
      ADDRARDADDR(10 downto 1) => sLineBufferCrntAddr(10 downto 1),
      ADDRARDADDR(0) => sCrntPositionIndicatorDly1(0),
      D(9 downto 0) => sLineBufferReadData(9 downto 0),
      Q(9 downto 0) => sLineBufferWriteData(9 downto 0),
      StreamClk => StreamClk,
      \sLineBufferReadDataBuf_reg[9]\(9 downto 0) => sLineBufferReadDataBuf(9 downto 0),
      sLineBufferWrite_reg => sLineBufferWrite_reg_n_0,
      \sPixel_reg[2][9]\(9) => LineBufferInst_n_10,
      \sPixel_reg[2][9]\(8) => LineBufferInst_n_11,
      \sPixel_reg[2][9]\(7) => LineBufferInst_n_12,
      \sPixel_reg[2][9]\(6) => LineBufferInst_n_13,
      \sPixel_reg[2][9]\(5) => LineBufferInst_n_14,
      \sPixel_reg[2][9]\(4) => LineBufferInst_n_15,
      \sPixel_reg[2][9]\(3) => LineBufferInst_n_16,
      \sPixel_reg[2][9]\(2) => LineBufferInst_n_17,
      \sPixel_reg[2][9]\(1) => LineBufferInst_n_18,
      \sPixel_reg[2][9]\(0) => LineBufferInst_n_19
    );
m_axis_video_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8FFFFAAA80000"
    )
        port map (
      I0 => sCoverInitialLatency,
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      I3 => s_axis_video_tvalid,
      I4 => m_axis_video_tready,
      I5 => \^m_axis_video_tvalid\,
      O => m_axis_video_tvalid_i_1_n_0
    );
m_axis_video_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => m_axis_video_tvalid_i_1_n_0,
      Q => \^m_axis_video_tvalid\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sAXIMasterBlue[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][0]\,
      I1 => \sPixel_reg_n_0_[1][0]\,
      I2 => \sPixel_reg_n_0_[2][0]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][0]\,
      O => \sAXIMasterBlue[0]_i_1_n_0\
    );
\sAXIMasterBlue[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][1]\,
      I1 => \sPixel_reg_n_0_[1][1]\,
      I2 => \sPixel_reg_n_0_[2][1]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][1]\,
      O => \sAXIMasterBlue[1]_i_1_n_0\
    );
\sAXIMasterBlue[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][2]\,
      I1 => \sPixel_reg_n_0_[1][2]\,
      I2 => \sPixel_reg_n_0_[2][2]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][2]\,
      O => \sAXIMasterBlue[2]_i_1_n_0\
    );
\sAXIMasterBlue[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][3]\,
      I1 => \sPixel_reg_n_0_[1][3]\,
      I2 => \sPixel_reg_n_0_[2][3]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][3]\,
      O => \sAXIMasterBlue[3]_i_1_n_0\
    );
\sAXIMasterBlue[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][4]\,
      I1 => \sPixel_reg_n_0_[1][4]\,
      I2 => \sPixel_reg_n_0_[2][4]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][4]\,
      O => \sAXIMasterBlue[4]_i_1_n_0\
    );
\sAXIMasterBlue[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][5]\,
      I1 => \sPixel_reg_n_0_[1][5]\,
      I2 => \sPixel_reg_n_0_[2][5]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][5]\,
      O => \sAXIMasterBlue[5]_i_1_n_0\
    );
\sAXIMasterBlue[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][6]\,
      I1 => \sPixel_reg_n_0_[1][6]\,
      I2 => \sPixel_reg_n_0_[2][6]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][6]\,
      O => \sAXIMasterBlue[6]_i_1_n_0\
    );
\sAXIMasterBlue[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][7]\,
      I1 => \sPixel_reg_n_0_[1][7]\,
      I2 => \sPixel_reg_n_0_[2][7]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][7]\,
      O => \sAXIMasterBlue[7]_i_1_n_0\
    );
\sAXIMasterBlue[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][8]\,
      I1 => \sPixel_reg_n_0_[1][8]\,
      I2 => \sPixel_reg_n_0_[2][8]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][8]\,
      O => \sAXIMasterBlue[8]_i_1_n_0\
    );
\sAXIMasterBlue[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE00FE"
    )
        port map (
      I0 => \sAXIMasterBlue[9]_i_2_n_0\,
      I1 => \sStrobesShiftReg_reg[2][FirstColumn]__0\,
      I2 => \sStrobesShiftReg_reg[2][FirstLine]__0\,
      I3 => \sAXIMasterRed[9]_i_4_n_0\,
      I4 => \^m_axis_video_tdata\(19),
      O => \sAXIMasterBlue[9]_i_1_n_0\
    );
\sAXIMasterBlue[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[0][9]\,
      I1 => \sPixel_reg_n_0_[1][9]\,
      I2 => \sPixel_reg_n_0_[2][9]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[3][9]\,
      O => \sAXIMasterBlue[9]_i_2_n_0\
    );
\sAXIMasterBlue_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[0]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(10),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[1]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(11),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[2]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(12),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[3]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(13),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[4]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(14),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[5]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(15),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[6]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(16),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[7]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(17),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterBlue[8]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(18),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterBlue_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sAXIMasterBlue[9]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(19),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sAXIMasterGreen[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE00FE"
    )
        port map (
      I0 => sAXIMasterGreen1_in(10),
      I1 => \sStrobesShiftReg_reg[2][FirstColumn]__0\,
      I2 => \sStrobesShiftReg_reg[2][FirstLine]__0\,
      I3 => \sAXIMasterRed[9]_i_4_n_0\,
      I4 => \^m_axis_video_tdata\(9),
      O => \sAXIMasterGreen[10]_i_1_n_0\
    );
\sAXIMasterGreen[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][3]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][3]\,
      O => \sAXIMasterGreen[3]_i_2_n_0\
    );
\sAXIMasterGreen[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][2]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][2]\,
      O => \sAXIMasterGreen[3]_i_3_n_0\
    );
\sAXIMasterGreen[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][1]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][1]\,
      O => \sAXIMasterGreen[3]_i_4_n_0\
    );
\sAXIMasterGreen[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][0]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][0]\,
      O => \sAXIMasterGreen[3]_i_5_n_0\
    );
\sAXIMasterGreen[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][3]\,
      I1 => \sPixel_reg_n_0_[3][3]\,
      I2 => \sPixel_reg_n_0_[1][3]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][3]\,
      O => \sAXIMasterGreen[3]_i_6_n_0\
    );
\sAXIMasterGreen[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][2]\,
      I1 => \sPixel_reg_n_0_[3][2]\,
      I2 => \sPixel_reg_n_0_[1][2]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][2]\,
      O => \sAXIMasterGreen[3]_i_7_n_0\
    );
\sAXIMasterGreen[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][1]\,
      I1 => \sPixel_reg_n_0_[3][1]\,
      I2 => \sPixel_reg_n_0_[1][1]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][1]\,
      O => \sAXIMasterGreen[3]_i_8_n_0\
    );
\sAXIMasterGreen[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][0]\,
      I1 => \sPixel_reg_n_0_[3][0]\,
      I2 => \sPixel_reg_n_0_[1][0]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][0]\,
      O => \sAXIMasterGreen[3]_i_9_n_0\
    );
\sAXIMasterGreen[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][7]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][7]\,
      O => \sAXIMasterGreen[7]_i_2_n_0\
    );
\sAXIMasterGreen[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][6]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][6]\,
      O => \sAXIMasterGreen[7]_i_3_n_0\
    );
\sAXIMasterGreen[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][5]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][5]\,
      O => \sAXIMasterGreen[7]_i_4_n_0\
    );
\sAXIMasterGreen[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][4]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][4]\,
      O => \sAXIMasterGreen[7]_i_5_n_0\
    );
\sAXIMasterGreen[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][7]\,
      I1 => \sPixel_reg_n_0_[3][7]\,
      I2 => \sPixel_reg_n_0_[1][7]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][7]\,
      O => \sAXIMasterGreen[7]_i_6_n_0\
    );
\sAXIMasterGreen[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][6]\,
      I1 => \sPixel_reg_n_0_[3][6]\,
      I2 => \sPixel_reg_n_0_[1][6]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][6]\,
      O => \sAXIMasterGreen[7]_i_7_n_0\
    );
\sAXIMasterGreen[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][5]\,
      I1 => \sPixel_reg_n_0_[3][5]\,
      I2 => \sPixel_reg_n_0_[1][5]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][5]\,
      O => \sAXIMasterGreen[7]_i_8_n_0\
    );
\sAXIMasterGreen[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][4]\,
      I1 => \sPixel_reg_n_0_[3][4]\,
      I2 => \sPixel_reg_n_0_[1][4]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][4]\,
      O => \sAXIMasterGreen[7]_i_9_n_0\
    );
\sAXIMasterGreen[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][9]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][9]\,
      O => \sAXIMasterGreen[9]_i_2_n_0\
    );
\sAXIMasterGreen[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][8]\,
      I1 => sCrntPositionIndicatorDly3(0),
      I2 => sCrntPositionIndicatorDly3(1),
      I3 => \sPixel_reg_n_0_[2][8]\,
      O => \sAXIMasterGreen[9]_i_3_n_0\
    );
\sAXIMasterGreen[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][9]\,
      I1 => \sPixel_reg_n_0_[3][9]\,
      I2 => \sPixel_reg_n_0_[1][9]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][9]\,
      O => \sAXIMasterGreen[9]_i_4_n_0\
    );
\sAXIMasterGreen[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A33335A5ACCCC5A"
    )
        port map (
      I0 => \sPixel_reg_n_0_[2][8]\,
      I1 => \sPixel_reg_n_0_[3][8]\,
      I2 => \sPixel_reg_n_0_[1][8]\,
      I3 => sCrntPositionIndicatorDly3(1),
      I4 => sCrntPositionIndicatorDly3(0),
      I5 => \sPixel_reg_n_0_[0][8]\,
      O => \sAXIMasterGreen[9]_i_5_n_0\
    );
\sAXIMasterGreen_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sAXIMasterGreen[10]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(9),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sAXIMasterGreen_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(1),
      Q => \^m_axis_video_tdata\(0),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(2),
      Q => \^m_axis_video_tdata\(1),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(3),
      Q => \^m_axis_video_tdata\(2),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sAXIMasterGreen_reg[3]_i_1_n_0\,
      CO(2) => \sAXIMasterGreen_reg[3]_i_1_n_1\,
      CO(1) => \sAXIMasterGreen_reg[3]_i_1_n_2\,
      CO(0) => \sAXIMasterGreen_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sAXIMasterGreen[3]_i_2_n_0\,
      DI(2) => \sAXIMasterGreen[3]_i_3_n_0\,
      DI(1) => \sAXIMasterGreen[3]_i_4_n_0\,
      DI(0) => \sAXIMasterGreen[3]_i_5_n_0\,
      O(3 downto 1) => sAXIMasterGreen1_in(3 downto 1),
      O(0) => \NLW_sAXIMasterGreen_reg[3]_i_1_O_UNCONNECTED\(0),
      S(3) => \sAXIMasterGreen[3]_i_6_n_0\,
      S(2) => \sAXIMasterGreen[3]_i_7_n_0\,
      S(1) => \sAXIMasterGreen[3]_i_8_n_0\,
      S(0) => \sAXIMasterGreen[3]_i_9_n_0\
    );
\sAXIMasterGreen_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(4),
      Q => \^m_axis_video_tdata\(3),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(5),
      Q => \^m_axis_video_tdata\(4),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(6),
      Q => \^m_axis_video_tdata\(5),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(7),
      Q => \^m_axis_video_tdata\(6),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sAXIMasterGreen_reg[3]_i_1_n_0\,
      CO(3) => \sAXIMasterGreen_reg[7]_i_1_n_0\,
      CO(2) => \sAXIMasterGreen_reg[7]_i_1_n_1\,
      CO(1) => \sAXIMasterGreen_reg[7]_i_1_n_2\,
      CO(0) => \sAXIMasterGreen_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sAXIMasterGreen[7]_i_2_n_0\,
      DI(2) => \sAXIMasterGreen[7]_i_3_n_0\,
      DI(1) => \sAXIMasterGreen[7]_i_4_n_0\,
      DI(0) => \sAXIMasterGreen[7]_i_5_n_0\,
      O(3 downto 0) => sAXIMasterGreen1_in(7 downto 4),
      S(3) => \sAXIMasterGreen[7]_i_6_n_0\,
      S(2) => \sAXIMasterGreen[7]_i_7_n_0\,
      S(1) => \sAXIMasterGreen[7]_i_8_n_0\,
      S(0) => \sAXIMasterGreen[7]_i_9_n_0\
    );
\sAXIMasterGreen_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(8),
      Q => \^m_axis_video_tdata\(7),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sAXIMasterGreen1_in(9),
      Q => \^m_axis_video_tdata\(8),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterGreen_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sAXIMasterGreen_reg[7]_i_1_n_0\,
      CO(3) => \NLW_sAXIMasterGreen_reg[9]_i_1_CO_UNCONNECTED\(3),
      CO(2) => sAXIMasterGreen1_in(10),
      CO(1) => \NLW_sAXIMasterGreen_reg[9]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \sAXIMasterGreen_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \sAXIMasterGreen[9]_i_2_n_0\,
      DI(0) => \sAXIMasterGreen[9]_i_3_n_0\,
      O(3 downto 2) => \NLW_sAXIMasterGreen_reg[9]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => sAXIMasterGreen1_in(9 downto 8),
      S(3 downto 2) => B"01",
      S(1) => \sAXIMasterGreen[9]_i_4_n_0\,
      S(0) => \sAXIMasterGreen[9]_i_5_n_0\
    );
\sAXIMasterRed[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][0]\,
      I1 => \sPixel_reg_n_0_[2][0]\,
      I2 => \sPixel_reg_n_0_[1][0]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][0]\,
      O => \sAXIMasterRed[0]_i_1_n_0\
    );
\sAXIMasterRed[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][1]\,
      I1 => \sPixel_reg_n_0_[2][1]\,
      I2 => \sPixel_reg_n_0_[1][1]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][1]\,
      O => \sAXIMasterRed[1]_i_1_n_0\
    );
\sAXIMasterRed[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][2]\,
      I1 => \sPixel_reg_n_0_[2][2]\,
      I2 => \sPixel_reg_n_0_[1][2]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][2]\,
      O => \sAXIMasterRed[2]_i_1_n_0\
    );
\sAXIMasterRed[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][3]\,
      I1 => \sPixel_reg_n_0_[2][3]\,
      I2 => \sPixel_reg_n_0_[1][3]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][3]\,
      O => \sAXIMasterRed[3]_i_1_n_0\
    );
\sAXIMasterRed[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][4]\,
      I1 => \sPixel_reg_n_0_[2][4]\,
      I2 => \sPixel_reg_n_0_[1][4]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][4]\,
      O => \sAXIMasterRed[4]_i_1_n_0\
    );
\sAXIMasterRed[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][5]\,
      I1 => \sPixel_reg_n_0_[2][5]\,
      I2 => \sPixel_reg_n_0_[1][5]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][5]\,
      O => \sAXIMasterRed[5]_i_1_n_0\
    );
\sAXIMasterRed[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][6]\,
      I1 => \sPixel_reg_n_0_[2][6]\,
      I2 => \sPixel_reg_n_0_[1][6]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][6]\,
      O => \sAXIMasterRed[6]_i_1_n_0\
    );
\sAXIMasterRed[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][7]\,
      I1 => \sPixel_reg_n_0_[2][7]\,
      I2 => \sPixel_reg_n_0_[1][7]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][7]\,
      O => \sAXIMasterRed[7]_i_1_n_0\
    );
\sAXIMasterRed[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E000FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => \sAXIMasterRed[8]_i_4_n_0\,
      I2 => m_axis_video_tready,
      I3 => \sStrobesShiftReg_reg[2][FirstColumn]__0\,
      I4 => \sStrobesShiftReg_reg[2][FirstLine]__0\,
      I5 => sStreamReset_n,
      O => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      I3 => s_axis_video_tvalid,
      O => sOtherPixelsData
    );
\sAXIMasterRed[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][8]\,
      I1 => \sPixel_reg_n_0_[2][8]\,
      I2 => \sPixel_reg_n_0_[1][8]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][8]\,
      O => \sAXIMasterRed[8]_i_3_n_0\
    );
\sAXIMasterRed[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sCntRemPixels(0),
      I1 => sCntRemPixels(1),
      O => \sAXIMasterRed[8]_i_4_n_0\
    );
\sAXIMasterRed[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sStreamReset_n,
      O => \sAXIMasterRed[9]_i_1_n_0\
    );
\sAXIMasterRed[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE00FE"
    )
        port map (
      I0 => \sAXIMasterRed[9]_i_3_n_0\,
      I1 => \sStrobesShiftReg_reg[2][FirstColumn]__0\,
      I2 => \sStrobesShiftReg_reg[2][FirstLine]__0\,
      I3 => \sAXIMasterRed[9]_i_4_n_0\,
      I4 => \^m_axis_video_tdata\(29),
      O => \sAXIMasterRed[9]_i_2_n_0\
    );
\sAXIMasterRed[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CCAA00F0CCAA"
    )
        port map (
      I0 => \sPixel_reg_n_0_[3][9]\,
      I1 => \sPixel_reg_n_0_[2][9]\,
      I2 => \sPixel_reg_n_0_[1][9]\,
      I3 => sCrntPositionIndicatorDly3(0),
      I4 => sCrntPositionIndicatorDly3(1),
      I5 => \sPixel_reg_n_0_[0][9]\,
      O => \sAXIMasterRed[9]_i_3_n_0\
    );
\sAXIMasterRed[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => m_axis_video_tready,
      O => \sAXIMasterRed[9]_i_4_n_0\
    );
\sAXIMasterRed_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[0]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(20),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[1]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(21),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[2]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(22),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[3]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(23),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[4]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(24),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[5]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(25),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[6]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(26),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[7]_i_1_n_0\,
      Q => \^m_axis_video_tdata\(27),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sAXIMasterRed[8]_i_3_n_0\,
      Q => \^m_axis_video_tdata\(28),
      R => \sAXIMasterRed[8]_i_1_n_0\
    );
\sAXIMasterRed_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sAXIMasterRed[9]_i_2_n_0\,
      Q => \^m_axis_video_tdata\(29),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
sAXI_SlaveLastAsserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F0008FFFF0000"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => s_axis_video_tlast,
      I2 => sCntRemPixels(0),
      I3 => sCntRemPixels(1),
      I4 => sAXI_SlaveLastAsserted_reg_n_0,
      I5 => m_axis_video_tready,
      O => sAXI_SlaveLastAsserted_i_1_n_0
    );
sAXI_SlaveLastAsserted_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => sAXI_SlaveLastAsserted_i_1_n_0,
      Q => sAXI_SlaveLastAsserted_reg_n_0,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sCntColumns[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sCntColumns_reg__0\(0),
      O => plusOp(0)
    );
\sCntColumns[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2000FFFF"
    )
        port map (
      I0 => sCntRemPixels(0),
      I1 => sCntRemPixels(1),
      I2 => sAXI_SlaveLastAsserted_reg_n_0,
      I3 => m_axis_video_tready,
      I4 => sStreamReset_n,
      O => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sCntColumns[10]_i_3_n_0\,
      I1 => \sCntColumns_reg__0\(6),
      I2 => \sCntColumns_reg__0\(9),
      I3 => \sCntColumns_reg__0\(8),
      I4 => \sCntColumns_reg__0\(7),
      I5 => \sCntColumns_reg__0\(10),
      O => plusOp(10)
    );
\sCntColumns[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sCntColumns_reg__0\(4),
      I1 => \sCntColumns_reg__0\(2),
      I2 => \sCntColumns_reg__0\(0),
      I3 => \sCntColumns_reg__0\(1),
      I4 => \sCntColumns_reg__0\(3),
      I5 => \sCntColumns_reg__0\(5),
      O => \sCntColumns[10]_i_3_n_0\
    );
\sCntColumns[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sCntColumns_reg__0\(0),
      I1 => \sCntColumns_reg__0\(1),
      O => plusOp(1)
    );
\sCntColumns[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sCntColumns_reg__0\(1),
      I1 => \sCntColumns_reg__0\(0),
      I2 => \sCntColumns_reg__0\(2),
      O => plusOp(2)
    );
\sCntColumns[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sCntColumns_reg__0\(2),
      I1 => \sCntColumns_reg__0\(0),
      I2 => \sCntColumns_reg__0\(1),
      I3 => \sCntColumns_reg__0\(3),
      O => plusOp(3)
    );
\sCntColumns[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sCntColumns_reg__0\(3),
      I1 => \sCntColumns_reg__0\(1),
      I2 => \sCntColumns_reg__0\(0),
      I3 => \sCntColumns_reg__0\(2),
      I4 => \sCntColumns_reg__0\(4),
      O => plusOp(4)
    );
\sCntColumns[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sCntColumns_reg__0\(4),
      I1 => \sCntColumns_reg__0\(2),
      I2 => \sCntColumns_reg__0\(0),
      I3 => \sCntColumns_reg__0\(1),
      I4 => \sCntColumns_reg__0\(3),
      I5 => \sCntColumns_reg__0\(5),
      O => plusOp(5)
    );
\sCntColumns[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sCntColumns[10]_i_3_n_0\,
      I1 => \sCntColumns_reg__0\(6),
      O => plusOp(6)
    );
\sCntColumns[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sCntColumns[10]_i_3_n_0\,
      I1 => \sCntColumns_reg__0\(6),
      I2 => \sCntColumns_reg__0\(7),
      O => plusOp(7)
    );
\sCntColumns[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sCntColumns[10]_i_3_n_0\,
      I1 => \sCntColumns_reg__0\(6),
      I2 => \sCntColumns_reg__0\(7),
      I3 => \sCntColumns_reg__0\(8),
      O => plusOp(8)
    );
\sCntColumns[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sCntColumns[10]_i_3_n_0\,
      I1 => \sCntColumns_reg__0\(6),
      I2 => \sCntColumns_reg__0\(7),
      I3 => \sCntColumns_reg__0\(8),
      I4 => \sCntColumns_reg__0\(9),
      O => plusOp(9)
    );
\sCntColumns_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(0),
      Q => \sCntColumns_reg__0\(0),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(10),
      Q => \sCntColumns_reg__0\(10),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(1),
      Q => \sCntColumns_reg__0\(1),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(2),
      Q => \sCntColumns_reg__0\(2),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(3),
      Q => \sCntColumns_reg__0\(3),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(4),
      Q => \sCntColumns_reg__0\(4),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(5),
      Q => \sCntColumns_reg__0\(5),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(6),
      Q => \sCntColumns_reg__0\(6),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(7),
      Q => \sCntColumns_reg__0\(7),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(8),
      Q => \sCntColumns_reg__0\(8),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntColumns_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => plusOp(9),
      Q => \sCntColumns_reg__0\(9),
      R => \sCntColumns[10]_i_1_n_0\
    );
\sCntLines[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28280028"
    )
        port map (
      I0 => sStreamReset_n,
      I1 => \sCntLines[0]_i_2_n_0\,
      I2 => sCntLines_reg(0),
      I3 => s_axis_video_tuser,
      I4 => \sCntLines[0]_i_3_n_0\,
      O => \sCntLines[0]_i_1_n_0\
    );
\sCntLines[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => sAXI_SlaveLastAsserted_reg_n_0,
      I2 => sCntRemPixels(1),
      I3 => sCntRemPixels(0),
      O => \sCntLines[0]_i_2_n_0\
    );
\sCntLines[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => m_axis_video_tready,
      O => \sCntLines[0]_i_3_n_0\
    );
\sCntLines_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => StreamClk,
      CE => '1',
      D => \sCntLines[0]_i_1_n_0\,
      Q => sCntLines_reg(0),
      R => '0'
    );
\sCntRemPixels[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => sCntRemPixels(1),
      I1 => s_axis_video_tvalid,
      I2 => sCntRemPixels(0),
      O => \sCntRemPixels[0]_i_1_n_0\
    );
\sCntRemPixels[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      O => \sCntRemPixels[1]_i_1_n_0\
    );
\sCntRemPixels_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntRemPixels[0]_i_1_n_0\,
      Q => sCntRemPixels(0),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sCntRemPixels_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntRemPixels[1]_i_1_n_0\,
      Q => sCntRemPixels(1),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
sCoverInitialLatency_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sStrobesShiftReg_reg[1][User]__0\,
      I1 => sCoverInitialLatency,
      O => sCoverInitialLatency_i_1_n_0
    );
sCoverInitialLatency_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => sCoverInitialLatency_i_1_n_0,
      Q => sCoverInitialLatency,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sCrntPositionIndicatorDly1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(0),
      Q => sCrntPositionIndicatorDly1(0),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sCrntPositionIndicatorDly1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sCntLines_reg(0),
      Q => sCrntPositionIndicatorDly1(1),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sCrntPositionIndicatorDly2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sCrntPositionIndicatorDly1(0),
      Q => sCrntPositionIndicatorDly2(0),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sCrntPositionIndicatorDly2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sCrntPositionIndicatorDly1(1),
      Q => sCrntPositionIndicatorDly2(1),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sCrntPositionIndicatorDly3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sCrntPositionIndicatorDly2(0),
      Q => sCrntPositionIndicatorDly3(0),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sCrntPositionIndicatorDly3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sCrntPositionIndicatorDly2(1),
      Q => sCrntPositionIndicatorDly3(1),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(10),
      Q => sLineBufferCrntAddr(10),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(1),
      Q => sLineBufferCrntAddr(1),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(2),
      Q => sLineBufferCrntAddr(2),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(3),
      Q => sLineBufferCrntAddr(3),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(4),
      Q => sLineBufferCrntAddr(4),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(5),
      Q => sLineBufferCrntAddr(5),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(6),
      Q => sLineBufferCrntAddr(6),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(7),
      Q => sLineBufferCrntAddr(7),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(8),
      Q => sLineBufferCrntAddr(8),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferCrntAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sCntColumns_reg__0\(9),
      Q => sLineBufferCrntAddr(9),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55570000"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      I3 => s_axis_video_tvalid,
      I4 => sLineBufferWrite_reg_n_0,
      O => sLineBufferReadDataBuf_0
    );
\sLineBufferReadDataBuf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(0),
      Q => sLineBufferReadDataBuf(0),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(1),
      Q => sLineBufferReadDataBuf(1),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(2),
      Q => sLineBufferReadDataBuf(2),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(3),
      Q => sLineBufferReadDataBuf(3),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(4),
      Q => sLineBufferReadDataBuf(4),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(5),
      Q => sLineBufferReadDataBuf(5),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(6),
      Q => sLineBufferReadDataBuf(6),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(7),
      Q => sLineBufferReadDataBuf(7),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(8),
      Q => sLineBufferReadDataBuf(8),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferReadDataBuf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sLineBufferReadDataBuf_0,
      D => sLineBufferReadData(9),
      Q => sLineBufferReadDataBuf(9),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(0),
      Q => sLineBufferWriteDataDly(0),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(1),
      Q => sLineBufferWriteDataDly(1),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(2),
      Q => sLineBufferWriteDataDly(2),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(3),
      Q => sLineBufferWriteDataDly(3),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(4),
      Q => sLineBufferWriteDataDly(4),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(5),
      Q => sLineBufferWriteDataDly(5),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(6),
      Q => sLineBufferWriteDataDly(6),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(7),
      Q => sLineBufferWriteDataDly(7),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(8),
      Q => sLineBufferWriteDataDly(8),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteDataDly_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteData(9),
      Q => sLineBufferWriteDataDly(9),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[0]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(0),
      O => \sLineBufferWriteData[0]_i_1_n_0\
    );
\sLineBufferWriteData[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[1]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(1),
      O => \sLineBufferWriteData[1]_i_1_n_0\
    );
\sLineBufferWriteData[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[2]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(2),
      O => \sLineBufferWriteData[2]_i_1_n_0\
    );
\sLineBufferWriteData[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[3]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(3),
      O => \sLineBufferWriteData[3]_i_1_n_0\
    );
\sLineBufferWriteData[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[4]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(4),
      O => \sLineBufferWriteData[4]_i_1_n_0\
    );
\sLineBufferWriteData[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[5]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(5),
      O => \sLineBufferWriteData[5]_i_1_n_0\
    );
\sLineBufferWriteData[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[6]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(6),
      O => \sLineBufferWriteData[6]_i_1_n_0\
    );
\sLineBufferWriteData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[7]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(7),
      O => \sLineBufferWriteData[7]_i_1_n_0\
    );
\sLineBufferWriteData[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[8]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(8),
      O => \sLineBufferWriteData[8]_i_1_n_0\
    );
\sLineBufferWriteData[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[9]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(9),
      O => \sLineBufferWriteData[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[0]_i_1_n_0\,
      Q => sLineBufferWriteData(0),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[1]_i_1_n_0\,
      Q => sLineBufferWriteData(1),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[2]_i_1_n_0\,
      Q => sLineBufferWriteData(2),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[3]_i_1_n_0\,
      Q => sLineBufferWriteData(3),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[4]_i_1_n_0\,
      Q => sLineBufferWriteData(4),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[5]_i_1_n_0\,
      Q => sLineBufferWriteData(5),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[6]_i_1_n_0\,
      Q => sLineBufferWriteData(6),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[7]_i_1_n_0\,
      Q => sLineBufferWriteData(7),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[8]_i_1_n_0\,
      Q => sLineBufferWriteData(8),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sLineBufferWriteData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sLineBufferWriteData[9]_i_1_n_0\,
      Q => sLineBufferWriteData(9),
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
sLineBufferWrite_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => sOtherPixelsData,
      Q => sLineBufferWrite_reg_n_0,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[10]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(10),
      O => p_1_in(0)
    );
\sOtherPixelsData[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[20]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(20),
      O => p_1_in(10)
    );
\sOtherPixelsData[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[21]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(21),
      O => p_1_in(11)
    );
\sOtherPixelsData[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[22]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(22),
      O => p_1_in(12)
    );
\sOtherPixelsData[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[23]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(23),
      O => p_1_in(13)
    );
\sOtherPixelsData[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[24]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(24),
      O => p_1_in(14)
    );
\sOtherPixelsData[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[25]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(25),
      O => p_1_in(15)
    );
\sOtherPixelsData[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[26]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(26),
      O => p_1_in(16)
    );
\sOtherPixelsData[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[27]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(27),
      O => p_1_in(17)
    );
\sOtherPixelsData[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[28]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(28),
      O => p_1_in(18)
    );
\sOtherPixelsData[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[29]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(29),
      O => p_1_in(19)
    );
\sOtherPixelsData[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[11]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(11),
      O => p_1_in(1)
    );
\sOtherPixelsData[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(30),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(20)
    );
\sOtherPixelsData[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(31),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(21)
    );
\sOtherPixelsData[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(32),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(22)
    );
\sOtherPixelsData[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(33),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(23)
    );
\sOtherPixelsData[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(34),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(24)
    );
\sOtherPixelsData[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(35),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(25)
    );
\sOtherPixelsData[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(36),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(26)
    );
\sOtherPixelsData[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(37),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(27)
    );
\sOtherPixelsData[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(38),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(28)
    );
\sOtherPixelsData[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(39),
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => p_1_in(29)
    );
\sOtherPixelsData[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[12]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(12),
      O => p_1_in(2)
    );
\sOtherPixelsData[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[13]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(13),
      O => p_1_in(3)
    );
\sOtherPixelsData[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[14]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(14),
      O => p_1_in(4)
    );
\sOtherPixelsData[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[15]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(15),
      O => p_1_in(5)
    );
\sOtherPixelsData[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[16]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(16),
      O => p_1_in(6)
    );
\sOtherPixelsData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[17]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(17),
      O => p_1_in(7)
    );
\sOtherPixelsData[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[18]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(18),
      O => p_1_in(8)
    );
\sOtherPixelsData[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \sOtherPixelsData_reg_n_0_[19]\,
      I1 => sCntRemPixels(0),
      I2 => sCntRemPixels(1),
      I3 => s_axis_video_tdata(19),
      O => p_1_in(9)
    );
\sOtherPixelsData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(0),
      Q => \sOtherPixelsData_reg_n_0_[0]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(10),
      Q => \sOtherPixelsData_reg_n_0_[10]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(11),
      Q => \sOtherPixelsData_reg_n_0_[11]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(12),
      Q => \sOtherPixelsData_reg_n_0_[12]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(13),
      Q => \sOtherPixelsData_reg_n_0_[13]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(14),
      Q => \sOtherPixelsData_reg_n_0_[14]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(15),
      Q => \sOtherPixelsData_reg_n_0_[15]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(16),
      Q => \sOtherPixelsData_reg_n_0_[16]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(17),
      Q => \sOtherPixelsData_reg_n_0_[17]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(18),
      Q => \sOtherPixelsData_reg_n_0_[18]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(19),
      Q => \sOtherPixelsData_reg_n_0_[19]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(1),
      Q => \sOtherPixelsData_reg_n_0_[1]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(20),
      Q => \sOtherPixelsData_reg_n_0_[20]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(21),
      Q => \sOtherPixelsData_reg_n_0_[21]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(22),
      Q => \sOtherPixelsData_reg_n_0_[22]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(23),
      Q => \sOtherPixelsData_reg_n_0_[23]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(24),
      Q => \sOtherPixelsData_reg_n_0_[24]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(25),
      Q => \sOtherPixelsData_reg_n_0_[25]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(26),
      Q => \sOtherPixelsData_reg_n_0_[26]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(27),
      Q => \sOtherPixelsData_reg_n_0_[27]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(28),
      Q => \sOtherPixelsData_reg_n_0_[28]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(29),
      Q => \sOtherPixelsData_reg_n_0_[29]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(2),
      Q => \sOtherPixelsData_reg_n_0_[2]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(3),
      Q => \sOtherPixelsData_reg_n_0_[3]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(4),
      Q => \sOtherPixelsData_reg_n_0_[4]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(5),
      Q => \sOtherPixelsData_reg_n_0_[5]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(6),
      Q => \sOtherPixelsData_reg_n_0_[6]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(7),
      Q => \sOtherPixelsData_reg_n_0_[7]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(8),
      Q => \sOtherPixelsData_reg_n_0_[8]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sOtherPixelsData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => p_1_in(9),
      Q => \sOtherPixelsData_reg_n_0_[9]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(0),
      Q => \sPixel_reg_n_0_[0][0]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(1),
      Q => \sPixel_reg_n_0_[0][1]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(2),
      Q => \sPixel_reg_n_0_[0][2]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(3),
      Q => \sPixel_reg_n_0_[0][3]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(4),
      Q => \sPixel_reg_n_0_[0][4]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(5),
      Q => \sPixel_reg_n_0_[0][5]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(6),
      Q => \sPixel_reg_n_0_[0][6]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(7),
      Q => \sPixel_reg_n_0_[0][7]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(8),
      Q => \sPixel_reg_n_0_[0][8]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => sLineBufferWriteDataDly(9),
      Q => \sPixel_reg_n_0_[0][9]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][0]\,
      Q => \sPixel_reg_n_0_[1][0]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][1]\,
      Q => \sPixel_reg_n_0_[1][1]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][2]\,
      Q => \sPixel_reg_n_0_[1][2]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][3]\,
      Q => \sPixel_reg_n_0_[1][3]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][4]\,
      Q => \sPixel_reg_n_0_[1][4]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][5]\,
      Q => \sPixel_reg_n_0_[1][5]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][6]\,
      Q => \sPixel_reg_n_0_[1][6]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][7]\,
      Q => \sPixel_reg_n_0_[1][7]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][8]\,
      Q => \sPixel_reg_n_0_[1][8]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[0][9]\,
      Q => \sPixel_reg_n_0_[1][9]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_19,
      Q => \sPixel_reg_n_0_[2][0]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_18,
      Q => \sPixel_reg_n_0_[2][1]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_17,
      Q => \sPixel_reg_n_0_[2][2]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_16,
      Q => \sPixel_reg_n_0_[2][3]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_15,
      Q => \sPixel_reg_n_0_[2][4]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_14,
      Q => \sPixel_reg_n_0_[2][5]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_13,
      Q => \sPixel_reg_n_0_[2][6]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_12,
      Q => \sPixel_reg_n_0_[2][7]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_11,
      Q => \sPixel_reg_n_0_[2][8]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => LineBufferInst_n_10,
      Q => \sPixel_reg_n_0_[2][9]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][0]\,
      Q => \sPixel_reg_n_0_[3][0]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][1]\,
      Q => \sPixel_reg_n_0_[3][1]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][2]\,
      Q => \sPixel_reg_n_0_[3][2]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][3]\,
      Q => \sPixel_reg_n_0_[3][3]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][4]\,
      Q => \sPixel_reg_n_0_[3][4]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][5]\,
      Q => \sPixel_reg_n_0_[3][5]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][6]\,
      Q => \sPixel_reg_n_0_[3][6]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][7]\,
      Q => \sPixel_reg_n_0_[3][7]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][8]\,
      Q => \sPixel_reg_n_0_[3][8]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sPixel_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sPixel_reg_n_0_[2][9]\,
      Q => \sPixel_reg_n_0_[3][9]\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg[0][FirstColumn]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808000808080"
    )
        port map (
      I0 => \sStrobesShiftReg[0][FirstColumn]_i_2_n_0\,
      I1 => \sStrobesShiftReg[0][FirstColumn]_i_3_n_0\,
      I2 => \sStrobesShiftReg[0][FirstColumn]_i_4_n_0\,
      I3 => \sAXIMasterRed[9]_i_4_n_0\,
      I4 => sStreamReset_n,
      I5 => \sStrobesShiftReg_reg[0][FirstColumn]__0\,
      O => \sStrobesShiftReg[0][FirstColumn]_i_1_n_0\
    );
\sStrobesShiftReg[0][FirstColumn]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sCntRemPixels(0),
      I1 => sCntRemPixels(1),
      I2 => sAXI_SlaveLastAsserted_reg_n_0,
      O => \sStrobesShiftReg[0][FirstColumn]_i_2_n_0\
    );
\sStrobesShiftReg[0][FirstColumn]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \sCntColumns_reg__0\(8),
      I1 => \sCntColumns_reg__0\(9),
      I2 => \sCntColumns_reg__0\(6),
      I3 => \sCntColumns_reg__0\(7),
      I4 => \sCntColumns_reg__0\(10),
      I5 => sStreamReset_n,
      O => \sStrobesShiftReg[0][FirstColumn]_i_3_n_0\
    );
\sStrobesShiftReg[0][FirstColumn]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sCntColumns_reg__0\(2),
      I1 => \sCntColumns_reg__0\(3),
      I2 => \sCntColumns_reg__0\(0),
      I3 => \sCntColumns_reg__0\(1),
      I4 => \sCntColumns_reg__0\(5),
      I5 => \sCntColumns_reg__0\(4),
      O => \sStrobesShiftReg[0][FirstColumn]_i_4_n_0\
    );
\sStrobesShiftReg[0][FirstLine]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00C00000"
    )
        port map (
      I0 => \sStrobesShiftReg_reg[0][Last]__0\,
      I1 => s_axis_video_tuser,
      I2 => s_axis_video_tvalid,
      I3 => \sAXIMasterRed[8]_i_4_n_0\,
      I4 => m_axis_video_tready,
      I5 => \sStrobesShiftReg_reg[0][FirstLine]__0\,
      O => \sStrobesShiftReg[0][FirstLine]_i_1_n_0\
    );
\sStrobesShiftReg[0][Last]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A800A8A8A8A8A8"
    )
        port map (
      I0 => sStreamReset_n,
      I1 => \sCntLines[0]_i_2_n_0\,
      I2 => \sStrobesShiftReg_reg[0][Last]__0\,
      I3 => m_axis_video_tready,
      I4 => \sAXIMasterRed[8]_i_4_n_0\,
      I5 => s_axis_video_tvalid,
      O => \sStrobesShiftReg[0][Last]_i_1_n_0\
    );
\sStrobesShiftReg[0][User]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => s_axis_video_tuser,
      I1 => s_axis_video_tvalid,
      I2 => sCntRemPixels(0),
      I3 => sCntRemPixels(1),
      I4 => m_axis_video_tready,
      I5 => \sStrobesShiftReg_reg[0][User]__0\,
      O => \sStrobesShiftReg[0][User]_i_1_n_0\
    );
\sStrobesShiftReg_reg[0][FirstColumn]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sStrobesShiftReg[0][FirstColumn]_i_1_n_0\,
      Q => \sStrobesShiftReg_reg[0][FirstColumn]__0\,
      R => '0'
    );
\sStrobesShiftReg_reg[0][FirstLine]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sStrobesShiftReg[0][FirstLine]_i_1_n_0\,
      Q => \sStrobesShiftReg_reg[0][FirstLine]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[0][Last]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sStrobesShiftReg[0][Last]_i_1_n_0\,
      Q => \sStrobesShiftReg_reg[0][Last]__0\,
      R => '0'
    );
\sStrobesShiftReg_reg[0][User]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => \sStrobesShiftReg[0][User]_i_1_n_0\,
      Q => \sStrobesShiftReg_reg[0][User]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[1][FirstColumn]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[0][FirstColumn]__0\,
      Q => \sStrobesShiftReg_reg[1][FirstColumn]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[1][FirstLine]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[0][FirstLine]__0\,
      Q => \sStrobesShiftReg_reg[1][FirstLine]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[1][Last]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[0][Last]__0\,
      Q => \sStrobesShiftReg_reg[1][Last]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[1][User]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[0][User]__0\,
      Q => \sStrobesShiftReg_reg[1][User]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[2][FirstColumn]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[1][FirstColumn]__0\,
      Q => \sStrobesShiftReg_reg[2][FirstColumn]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[2][FirstLine]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[1][FirstLine]__0\,
      Q => \sStrobesShiftReg_reg[2][FirstLine]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[2][Last]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[1][Last]__0\,
      Q => \sStrobesShiftReg_reg[2][Last]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[2][User]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[1][User]__0\,
      Q => \sStrobesShiftReg_reg[2][User]__0\,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[3][Last]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[2][Last]__0\,
      Q => m_axis_video_tlast,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
\sStrobesShiftReg_reg[3][User]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => sOtherPixelsData,
      D => \sStrobesShiftReg_reg[2][User]__0\,
      Q => m_axis_video_tuser,
      R => \sAXIMasterRed[9]_i_1_n_0\
    );
s_axis_video_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => sCntRemPixels(1),
      I2 => sCntRemPixels(0),
      O => s_axis_video_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_BayerToRGB_0_0 is
  port (
    StreamClk : in STD_LOGIC;
    sStreamReset_n : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_AXI_BayerToRGB_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_AXI_BayerToRGB_0_0 : entity is "design_1_AXI_BayerToRGB_0_0,AXI_BayerToRGB,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_AXI_BayerToRGB_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_AXI_BayerToRGB_0_0 : entity is "AXI_BayerToRGB,Vivado 2017.4";
end design_1_AXI_BayerToRGB_0_0;

architecture STRUCTURE of design_1_AXI_BayerToRGB_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of StreamClk : signal is "xilinx.com:signal:clock:1.0 AXI_Stream_Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of StreamClk : signal is "XIL_INTERFACENAME AXI_Stream_Clk, ASSOCIATED_BUSIF AXI_Stream_Master:AXI_Slave_Interface, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TLAST";
  attribute x_interface_info of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TREADY";
  attribute x_interface_parameter of m_axis_video_tready : signal is "XIL_INTERFACENAME AXI_Stream_Master, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute x_interface_info of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TUSER";
  attribute x_interface_info of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TVALID";
  attribute x_interface_info of sStreamReset_n : signal is "xilinx.com:signal:reset:1.0 AXI_Stream_Reset_n RST";
  attribute x_interface_parameter of sStreamReset_n : signal is "XIL_INTERFACENAME AXI_Stream_Reset_n, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TLAST";
  attribute x_interface_info of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TREADY";
  attribute x_interface_parameter of s_axis_video_tready : signal is "XIL_INTERFACENAME AXI_Slave_Interface, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute x_interface_info of s_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TUSER";
  attribute x_interface_info of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TVALID";
  attribute x_interface_info of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TDATA";
  attribute x_interface_info of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TDATA";
begin
  m_axis_video_tdata(31) <= \<const0>\;
  m_axis_video_tdata(30) <= \<const0>\;
  m_axis_video_tdata(29 downto 0) <= \^m_axis_video_tdata\(29 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_AXI_BayerToRGB_0_0_AXI_BayerToRGB
     port map (
      StreamClk => StreamClk,
      m_axis_video_tdata(29 downto 0) => \^m_axis_video_tdata\(29 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tvalid => m_axis_video_tvalid,
      sStreamReset_n => sStreamReset_n,
      s_axis_video_tdata(39 downto 0) => s_axis_video_tdata(39 downto 0),
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
