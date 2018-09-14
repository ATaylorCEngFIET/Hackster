-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Sep  9 16:05:29 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_zed_ali3_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_zed_ali3_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_generator_pll_7_to_1_diff_sdr is
  port (
    async : out STD_LOGIC;
    pll_locked : out STD_LOGIC;
    txclk_div : out STD_LOGIC;
    txclk : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_generator_pll_7_to_1_diff_sdr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_generator_pll_7_to_1_diff_sdr is
  signal CLKFBIN : STD_LOGIC;
  signal mmcmout_x1 : STD_LOGIC;
  signal mmcmout_x7 : STD_LOGIC;
  signal \^pll_locked\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT0B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT1B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT2B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT3_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT3B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT4_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_CLKOUT6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_DRDY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_PSDONE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop8.tx_mmcm_adv_inst_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of \loop8.loop6.bufg_mmcm_x1\ : label is "PRIMITIVE";
  attribute box_type of \loop8.loop9a.bufio_mmcm_xn\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \loop8.tx_mmcm_adv_inst\ : label is "MMCM_ADV";
  attribute box_type of \loop8.tx_mmcm_adv_inst\ : label is "PRIMITIVE";
begin
  pll_locked <= \^pll_locked\;
\loop8.loop6.bufg_mmcm_x1\: unisim.vcomponents.BUFG
     port map (
      I => mmcmout_x1,
      O => txclk_div
    );
\loop8.loop9a.bufio_mmcm_xn\: unisim.vcomponents.BUFIO
     port map (
      I => mmcmout_x7,
      O => txclk
    );
\loop8.tx_mmcm_adv_inst\: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 21.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 30.000000,
      CLKIN2_PERIOD => 30.000000,
      CLKOUT0_DIVIDE_F => 3.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 21,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 21,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 8,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 8,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 8,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_PSINCDEC_INVERTED => '0',
      REF_JITTER1 => 0.000000,
      REF_JITTER2 => 0.000000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => CLKFBIN,
      CLKFBOUT => CLKFBIN,
      CLKFBOUTB => \NLW_loop8.tx_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED\,
      CLKFBSTOPPED => \NLW_loop8.tx_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED\,
      CLKIN1 => clk_in,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => \NLW_loop8.tx_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED\,
      CLKOUT0 => mmcmout_x7,
      CLKOUT0B => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT0B_UNCONNECTED\,
      CLKOUT1 => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT1_UNCONNECTED\,
      CLKOUT1B => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT1B_UNCONNECTED\,
      CLKOUT2 => mmcmout_x1,
      CLKOUT2B => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT2B_UNCONNECTED\,
      CLKOUT3 => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT3_UNCONNECTED\,
      CLKOUT3B => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT3B_UNCONNECTED\,
      CLKOUT4 => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT4_UNCONNECTED\,
      CLKOUT5 => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT5_UNCONNECTED\,
      CLKOUT6 => \NLW_loop8.tx_mmcm_adv_inst_CLKOUT6_UNCONNECTED\,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => \NLW_loop8.tx_mmcm_adv_inst_DO_UNCONNECTED\(15 downto 0),
      DRDY => \NLW_loop8.tx_mmcm_adv_inst_DRDY_UNCONNECTED\,
      DWE => '0',
      LOCKED => \^pll_locked\,
      PSCLK => '0',
      PSDONE => \NLW_loop8.tx_mmcm_adv_inst_PSDONE_UNCONNECTED\,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset_in
    );
\use_fdp.fda_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pll_locked\,
      O => async
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serdes_7_to_1_diff_sdr is
  port (
    ALI_CLK_P : out STD_LOGIC;
    ALI_CLK_N : out STD_LOGIC;
    ALI_DATA_P : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ALI_DATA_N : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txclk : in STD_LOGIC;
    txclk_div : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \red_r_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \blue_r_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    de : in STD_LOGIC;
    vsync : in STD_LOGIC;
    hsync : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serdes_7_to_1_diff_sdr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serdes_7_to_1_diff_sdr is
  signal I : STD_LOGIC;
  signal RST : STD_LOGIC;
  signal tx_data_out_0 : STD_LOGIC;
  signal tx_data_out_1 : STD_LOGIC;
  signal tx_data_out_2 : STD_LOGIC;
  signal tx_data_out_3 : STD_LOGIC;
  signal \NLW_loop0[0].oserdes_m_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[0].oserdes_m_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[0].oserdes_m_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[0].oserdes_m_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[0].oserdes_m_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[0].oserdes_m_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[1].oserdes_m_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[1].oserdes_m_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[1].oserdes_m_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[1].oserdes_m_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[1].oserdes_m_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[1].oserdes_m_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[2].oserdes_m_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[2].oserdes_m_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[2].oserdes_m_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[2].oserdes_m_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[2].oserdes_m_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[2].oserdes_m_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[3].oserdes_m_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[3].oserdes_m_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[3].oserdes_m_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[3].oserdes_m_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[3].oserdes_m_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_loop0[3].oserdes_m_TQ_UNCONNECTED\ : STD_LOGIC;
  signal NLW_oserdes_cm_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_cm_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_cm_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_cm_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_cm_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_cm_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of io_clk_out : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of io_clk_out : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of io_clk_out : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[0].io_data_out\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \loop0[0].io_data_out\ : label is "OBUFDS";
  attribute box_type of \loop0[0].io_data_out\ : label is "PRIMITIVE";
  attribute box_type of \loop0[0].oserdes_m\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[1].io_data_out\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \loop0[1].io_data_out\ : label is "OBUFDS";
  attribute box_type of \loop0[1].io_data_out\ : label is "PRIMITIVE";
  attribute box_type of \loop0[1].oserdes_m\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[2].io_data_out\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \loop0[2].io_data_out\ : label is "OBUFDS";
  attribute box_type of \loop0[2].io_data_out\ : label is "PRIMITIVE";
  attribute box_type of \loop0[2].oserdes_m\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \loop0[3].io_data_out\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \loop0[3].io_data_out\ : label is "OBUFDS";
  attribute box_type of \loop0[3].io_data_out\ : label is "PRIMITIVE";
  attribute box_type of \loop0[3].oserdes_m\ : label is "PRIMITIVE";
  attribute box_type of oserdes_cm : label is "PRIMITIVE";
begin
io_clk_out: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => I,
      O => ALI_CLK_P,
      OB => ALI_CLK_N
    );
\loop0[0].io_data_out\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tx_data_out_0,
      O => ALI_DATA_P(0),
      OB => ALI_DATA_N(0)
    );
\loop0[0].oserdes_m\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "SDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 7,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => txclk,
      CLKDIV => txclk_div,
      D1 => Q(0),
      D2 => \red_r_reg[7]\(5),
      D3 => \red_r_reg[7]\(4),
      D4 => \red_r_reg[7]\(3),
      D5 => \red_r_reg[7]\(2),
      D6 => \red_r_reg[7]\(1),
      D7 => \red_r_reg[7]\(0),
      D8 => '0',
      OCE => '1',
      OFB => \NLW_loop0[0].oserdes_m_OFB_UNCONNECTED\,
      OQ => tx_data_out_0,
      RST => RST,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_loop0[0].oserdes_m_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_loop0[0].oserdes_m_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_loop0[0].oserdes_m_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_loop0[0].oserdes_m_TFB_UNCONNECTED\,
      TQ => \NLW_loop0[0].oserdes_m_TQ_UNCONNECTED\
    );
\loop0[1].io_data_out\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tx_data_out_1,
      O => ALI_DATA_P(1),
      OB => ALI_DATA_N(1)
    );
\loop0[1].oserdes_m\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "SDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 7,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => txclk,
      CLKDIV => txclk_div,
      D1 => \blue_r_reg[7]\(1),
      D2 => \blue_r_reg[7]\(0),
      D3 => Q(5),
      D4 => Q(4),
      D5 => Q(3),
      D6 => Q(2),
      D7 => Q(1),
      D8 => '0',
      OCE => '1',
      OFB => \NLW_loop0[1].oserdes_m_OFB_UNCONNECTED\,
      OQ => tx_data_out_1,
      RST => RST,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_loop0[1].oserdes_m_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_loop0[1].oserdes_m_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_loop0[1].oserdes_m_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_loop0[1].oserdes_m_TFB_UNCONNECTED\,
      TQ => \NLW_loop0[1].oserdes_m_TQ_UNCONNECTED\
    );
\loop0[2].io_data_out\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tx_data_out_2,
      O => ALI_DATA_P(2),
      OB => ALI_DATA_N(2)
    );
\loop0[2].oserdes_m\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "SDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 7,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => txclk,
      CLKDIV => txclk_div,
      D1 => de,
      D2 => vsync,
      D3 => hsync,
      D4 => \blue_r_reg[7]\(5),
      D5 => \blue_r_reg[7]\(4),
      D6 => \blue_r_reg[7]\(3),
      D7 => \blue_r_reg[7]\(2),
      D8 => '0',
      OCE => '1',
      OFB => \NLW_loop0[2].oserdes_m_OFB_UNCONNECTED\,
      OQ => tx_data_out_2,
      RST => RST,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_loop0[2].oserdes_m_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_loop0[2].oserdes_m_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_loop0[2].oserdes_m_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_loop0[2].oserdes_m_TFB_UNCONNECTED\,
      TQ => \NLW_loop0[2].oserdes_m_TQ_UNCONNECTED\
    );
\loop0[3].io_data_out\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tx_data_out_3,
      O => ALI_DATA_P(3),
      OB => ALI_DATA_N(3)
    );
\loop0[3].oserdes_m\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "SDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 7,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => txclk,
      CLKDIV => txclk_div,
      D1 => '0',
      D2 => \blue_r_reg[7]\(7),
      D3 => \blue_r_reg[7]\(6),
      D4 => Q(7),
      D5 => Q(6),
      D6 => \red_r_reg[7]\(7),
      D7 => \red_r_reg[7]\(6),
      D8 => '0',
      OCE => '1',
      OFB => \NLW_loop0[3].oserdes_m_OFB_UNCONNECTED\,
      OQ => tx_data_out_3,
      RST => RST,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_loop0[3].oserdes_m_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_loop0[3].oserdes_m_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_loop0[3].oserdes_m_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_loop0[3].oserdes_m_TFB_UNCONNECTED\,
      TQ => \NLW_loop0[3].oserdes_m_TQ_UNCONNECTED\
    );
oserdes_cm: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "SDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 7,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => txclk,
      CLKDIV => txclk_div,
      D1 => '1',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '0',
      OCE => '1',
      OFB => NLW_oserdes_cm_OFB_UNCONNECTED,
      OQ => I,
      RST => RST,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_oserdes_cm_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_oserdes_cm_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_cm_TBYTEOUT_UNCONNECTED,
      TCE => '1',
      TFB => NLW_oserdes_cm_TFB_UNCONNECTED,
      TQ => NLW_oserdes_cm_TQ_UNCONNECTED
    );
reset_int_reg: unisim.vcomponents.FDPE
     port map (
      C => txclk_div,
      CE => '1',
      D => '0',
      PRE => reset_out,
      Q => RST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchro is
  port (
    reset_out : out STD_LOGIC;
    async : in STD_LOGIC;
    txclk_div : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchro;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchro is
  signal temp : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \use_fdp.fda\ : label is "FDP";
  attribute box_type : string;
  attribute box_type of \use_fdp.fda\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \use_fdp.fdb\ : label is "FDP";
  attribute box_type of \use_fdp.fdb\ : label is "PRIMITIVE";
begin
\use_fdp.fda\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => txclk_div,
      CE => '1',
      D => async,
      PRE => '0',
      Q => temp
    );
\use_fdp.fdb\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => txclk_div,
      CE => '1',
      D => temp,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_zed_ali3_controller_core is
  port (
    ALI_CLK_P : out STD_LOGIC;
    ALI_CLK_N : out STD_LOGIC;
    ALI_DATA_P : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ALI_DATA_N : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_out : out STD_LOGIC;
    reset_out : out STD_LOGIC;
    pll_locked : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \red_r_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \blue_r_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    de : in STD_LOGIC;
    vsync : in STD_LOGIC;
    hsync : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_zed_ali3_controller_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_zed_ali3_controller_core is
  signal clk_gen_txclk : STD_LOGIC;
  signal clk_gen_txclk_div : STD_LOGIC;
  signal clock_generator_serdes_n_0 : STD_LOGIC;
  signal \^reset_out\ : STD_LOGIC;
  signal NLW_clk_inbufg_O_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of clk_inbufg : label is "PRIMITIVE";
  attribute box_type of pclkbufg : label is "PRIMITIVE";
begin
  reset_out <= \^reset_out\;
clk_inbufg: unisim.vcomponents.BUFG
     port map (
      I => clk_in,
      O => NLW_clk_inbufg_O_UNCONNECTED
    );
clock_generator_serdes: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_generator_pll_7_to_1_diff_sdr
     port map (
      async => clock_generator_serdes_n_0,
      clk_in => clk_in,
      pll_locked => pll_locked,
      reset_in => reset_in,
      txclk => clk_gen_txclk,
      txclk_div => clk_gen_txclk_div
    );
pclkbufg: unisim.vcomponents.BUFG
     port map (
      I => clk_gen_txclk_div,
      O => clk_out
    );
synchro_reset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchro
     port map (
      async => clock_generator_serdes_n_0,
      reset_out => \^reset_out\,
      txclk_div => clk_gen_txclk_div
    );
videoout: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serdes_7_to_1_diff_sdr
     port map (
      ALI_CLK_N => ALI_CLK_N,
      ALI_CLK_P => ALI_CLK_P,
      ALI_DATA_N(3 downto 0) => ALI_DATA_N(3 downto 0),
      ALI_DATA_P(3 downto 0) => ALI_DATA_P(3 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      \blue_r_reg[7]\(7 downto 0) => \blue_r_reg[7]\(7 downto 0),
      de => de,
      hsync => hsync,
      \red_r_reg[7]\(7 downto 0) => \red_r_reg[7]\(7 downto 0),
      reset_out => \^reset_out\,
      txclk => clk_gen_txclk,
      txclk_div => clk_gen_txclk_div,
      vsync => vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_zed_ali3_controller is
  port (
    pll_locked : out STD_LOGIC;
    reset_out : out STD_LOGIC;
    ALI_CLK_P : out STD_LOGIC;
    ALI_CLK_N : out STD_LOGIC;
    ALI_DATA_P : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ALI_DATA_N : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_out : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    video_de : in STD_LOGIC;
    video_vsync : in STD_LOGIC;
    video_hsync : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_zed_ali3_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_zed_ali3_controller is
  signal blue : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^clk_out\ : STD_LOGIC;
  signal de : STD_LOGIC;
  signal green : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hsync : STD_LOGIC;
  signal red : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vsync : STD_LOGIC;
begin
  clk_out <= \^clk_out\;
\blue_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(0),
      Q => blue(0),
      R => '0'
    );
\blue_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(1),
      Q => blue(1),
      R => '0'
    );
\blue_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(2),
      Q => blue(2),
      R => '0'
    );
\blue_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(3),
      Q => blue(3),
      R => '0'
    );
\blue_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(4),
      Q => blue(4),
      R => '0'
    );
\blue_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(5),
      Q => blue(5),
      R => '0'
    );
\blue_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(6),
      Q => blue(6),
      R => '0'
    );
\blue_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(7),
      Q => blue(7),
      R => '0'
    );
de_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_de,
      Q => de,
      R => '0'
    );
\green_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(8),
      Q => green(0),
      R => '0'
    );
\green_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(9),
      Q => green(1),
      R => '0'
    );
\green_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(10),
      Q => green(2),
      R => '0'
    );
\green_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(11),
      Q => green(3),
      R => '0'
    );
\green_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(12),
      Q => green(4),
      R => '0'
    );
\green_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(13),
      Q => green(5),
      R => '0'
    );
\green_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(14),
      Q => green(6),
      R => '0'
    );
\green_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(15),
      Q => green(7),
      R => '0'
    );
hsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_hsync,
      Q => hsync,
      R => '0'
    );
\red_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(16),
      Q => red(0),
      R => '0'
    );
\red_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(17),
      Q => red(1),
      R => '0'
    );
\red_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(18),
      Q => red(2),
      R => '0'
    );
\red_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(19),
      Q => red(3),
      R => '0'
    );
\red_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(20),
      Q => red(4),
      R => '0'
    );
\red_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(21),
      Q => red(5),
      R => '0'
    );
\red_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(22),
      Q => red(6),
      R => '0'
    );
\red_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_data(23),
      Q => red(7),
      R => '0'
    );
vsync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_out\,
      CE => '1',
      D => video_vsync,
      Q => vsync,
      R => '0'
    );
zed_ali3_controller_core_l: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_zed_ali3_controller_core
     port map (
      ALI_CLK_N => ALI_CLK_N,
      ALI_CLK_P => ALI_CLK_P,
      ALI_DATA_N(3 downto 0) => ALI_DATA_N(3 downto 0),
      ALI_DATA_P(3 downto 0) => ALI_DATA_P(3 downto 0),
      Q(7 downto 0) => green(7 downto 0),
      \blue_r_reg[7]\(7 downto 0) => blue(7 downto 0),
      clk_in => clk_in,
      clk_out => \^clk_out\,
      de => de,
      hsync => hsync,
      pll_locked => pll_locked,
      \red_r_reg[7]\(7 downto 0) => red(7 downto 0),
      reset_in => reset_in,
      reset_out => reset_out,
      vsync => vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    reset_in : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    pll_locked : out STD_LOGIC;
    reset_out : out STD_LOGIC;
    clk_out : out STD_LOGIC;
    video_de : in STD_LOGIC;
    video_vsync : in STD_LOGIC;
    video_hsync : in STD_LOGIC;
    video_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALI_RST_N : out STD_LOGIC;
    ALI_CLK_N : out STD_LOGIC;
    ALI_CLK_P : out STD_LOGIC;
    ALI_DATA_N : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ALI_DATA_P : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_zed_ali3_controller_0_0,zed_ali3_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zed_ali3_controller,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of ALI_CLK_N : signal is "xilinx.com:signal:clock:1.0 ALI_CLK_N CLK, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_CLK_N";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ALI_CLK_N : signal is "XIL_INTERFACENAME ALI_CLK_N, ASSOCIATED_RESET ALI_RST_N, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ALI_CLK_P : signal is "xilinx.com:signal:clock:1.0 ALI_CLK_P CLK, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_CLK_P";
  attribute x_interface_parameter of ALI_CLK_P : signal is "XIL_INTERFACENAME ALI_CLK_P, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ALI_RST_N : signal is "xilinx.com:signal:reset:1.0 ALI_RST_N RST, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_RST_N";
  attribute x_interface_parameter of ALI_RST_N : signal is "XIL_INTERFACENAME ALI_RST_N, POLARITY ACTIVE_LOW";
  attribute x_interface_info of reset_in : signal is "xilinx.com:signal:reset:1.0 reset_in RST";
  attribute x_interface_parameter of reset_in : signal is "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW";
  attribute x_interface_info of reset_out : signal is "xilinx.com:signal:reset:1.0 reset_out RST";
  attribute x_interface_parameter of reset_out : signal is "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW";
  attribute x_interface_info of video_de : signal is "xilinx.com:interface:vid_io:1.0 VID_IO_IN ACTIVE_VIDEO";
  attribute x_interface_info of video_hsync : signal is "xilinx.com:interface:vid_io:1.0 VID_IO_IN HSYNC";
  attribute x_interface_info of video_vsync : signal is "xilinx.com:interface:vid_io:1.0 VID_IO_IN VSYNC";
  attribute x_interface_info of ALI_DATA_N : signal is "avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_DATA_N";
  attribute x_interface_info of ALI_DATA_P : signal is "avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_DATA_P";
  attribute x_interface_info of video_data : signal is "xilinx.com:interface:vid_io:1.0 VID_IO_IN DATA";
begin
  ALI_RST_N <= \<const1>\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_zed_ali3_controller
     port map (
      ALI_CLK_N => ALI_CLK_N,
      ALI_CLK_P => ALI_CLK_P,
      ALI_DATA_N(3 downto 0) => ALI_DATA_N(3 downto 0),
      ALI_DATA_P(3 downto 0) => ALI_DATA_P(3 downto 0),
      clk_in => clk_in,
      clk_out => clk_out,
      pll_locked => pll_locked,
      reset_in => reset_in,
      reset_out => reset_out,
      video_data(23 downto 0) => video_data(23 downto 0),
      video_de => video_de,
      video_hsync => video_hsync,
      video_vsync => video_vsync
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
