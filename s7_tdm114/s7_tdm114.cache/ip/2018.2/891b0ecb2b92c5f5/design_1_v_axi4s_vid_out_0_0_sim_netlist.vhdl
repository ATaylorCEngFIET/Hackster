-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Sep  9 16:03:42 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_axi4s_vid_out_0_0_sim_netlist.vhdl
-- Design      : design_1_v_axi4s_vid_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_formatter is
  port (
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    fivid_reset_full_frame : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_io_out_ce : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    src_in : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_formatter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_formatter is
  signal \^fivid_reset_full_frame\ : STD_LOGIC;
  signal fivid_reset_full_frame_i_1_n_0 : STD_LOGIC;
  signal vblank_rising : STD_LOGIC;
  signal vblank_rising_i_1_n_0 : STD_LOGIC;
  signal vtg_vblank_1 : STD_LOGIC;
  signal vtg_vblank_1_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of vblank_rising_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of vtg_vblank_1_i_1 : label is "soft_lutpair5";
begin
  fivid_reset_full_frame <= \^fivid_reset_full_frame\;
fivid_reset_full_frame_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => \^fivid_reset_full_frame\,
      I1 => vblank_rising,
      I2 => vid_io_out_ce,
      I3 => src_in,
      I4 => aresetn,
      O => fivid_reset_full_frame_i_1_n_0
    );
fivid_reset_full_frame_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => fivid_reset_full_frame_i_1_n_0,
      Q => \^fivid_reset_full_frame\,
      R => '0'
    );
\in_data_mux_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => vid_data(0),
      R => SR(0)
    );
\in_data_mux_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => vid_data(1),
      R => SR(0)
    );
\in_data_mux_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => vid_data(2),
      R => SR(0)
    );
\in_data_mux_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => vid_data(3),
      R => SR(0)
    );
\in_data_mux_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => vid_data(4),
      R => SR(0)
    );
\in_data_mux_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => vid_data(5),
      R => SR(0)
    );
\in_data_mux_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => vid_data(6),
      R => SR(0)
    );
\in_data_mux_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => vid_data(7),
      R => SR(0)
    );
in_de_mux_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_active_video,
      Q => vid_active_video,
      R => SR(0)
    );
in_field_id_mux_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_field_id,
      Q => vid_field_id,
      R => SR(0)
    );
in_hblank_mux_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_hblank,
      Q => vid_hblank,
      R => SR(0)
    );
in_hsync_mux_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_hsync,
      Q => vid_hsync,
      R => SR(0)
    );
in_vblank_mux_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_vblank,
      Q => vid_vblank,
      R => SR(0)
    );
in_vsync_mux_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_vsync,
      Q => vid_vsync,
      R => SR(0)
    );
vblank_rising_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => vtg_vblank,
      I1 => vtg_vblank_1,
      I2 => vid_io_out_ce,
      I3 => vblank_rising,
      O => vblank_rising_i_1_n_0
    );
vblank_rising_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => vblank_rising_i_1_n_0,
      Q => vblank_rising,
      R => '0'
    );
vtg_vblank_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vtg_vblank,
      I1 => vid_io_out_ce,
      I2 => vtg_vblank_1,
      O => vtg_vblank_1_i_1_n_0
    );
vtg_vblank_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => vtg_vblank_1_i_1_n_0,
      Q => vtg_vblank_1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_sync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_eol_dly : out STD_LOGIC;
    src_in : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_rd_en : out STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 27 downto 0 );
    vid_io_out_ce : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vtg_vsync : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fifo_eol_re : in STD_LOGIC;
    fifo_pix_cnt : in STD_LOGIC;
    \FSM_sequential_state_reg[3]_0\ : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    fivid_reset_full_frame : in STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg_2\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[10]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_sync is
  signal \FSM_sequential_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal fifo_eol_cnt : STD_LOGIC;
  signal \fifo_eol_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_eol_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal fifo_eol_cnt_dly : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal fifo_eol_cnt_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \fifo_eol_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \fifo_eol_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal fifo_eol_error : STD_LOGIC;
  signal fifo_eol_error1 : STD_LOGIC;
  signal \fifo_eol_error1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal fifo_eol_error1_carry_i_1_n_0 : STD_LOGIC;
  signal fifo_eol_error1_carry_i_2_n_0 : STD_LOGIC;
  signal fifo_eol_error1_carry_i_3_n_0 : STD_LOGIC;
  signal fifo_eol_error1_carry_i_4_n_0 : STD_LOGIC;
  signal fifo_eol_error1_carry_n_0 : STD_LOGIC;
  signal fifo_eol_error1_carry_n_1 : STD_LOGIC;
  signal fifo_eol_error1_carry_n_2 : STD_LOGIC;
  signal fifo_eol_error1_carry_n_3 : STD_LOGIC;
  signal fifo_eol_error2 : STD_LOGIC;
  signal fifo_eol_error_i_1_n_0 : STD_LOGIC;
  signal fifo_eol_error_i_3_n_0 : STD_LOGIC;
  signal fifo_eol_error_i_4_n_0 : STD_LOGIC;
  signal fifo_eol_re_dly : STD_LOGIC;
  signal \fifo_pix_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal fifo_pix_cnt_dly : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \fifo_pix_cnt_dly1__11\ : STD_LOGIC;
  signal \fifo_pix_cnt_dly[12]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt_dly[12]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt_dly[12]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt_dly[12]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt_dly[12]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt_dly[12]_i_8_n_0\ : STD_LOGIC;
  signal fifo_pix_cnt_dly_0 : STD_LOGIC;
  signal fifo_pix_cnt_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \fifo_pix_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \fifo_pix_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal fifo_pix_error : STD_LOGIC;
  signal fifo_pix_error0 : STD_LOGIC;
  signal fifo_pix_error1 : STD_LOGIC;
  signal \fifo_pix_error1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal fifo_pix_error1_carry_i_1_n_0 : STD_LOGIC;
  signal fifo_pix_error1_carry_i_2_n_0 : STD_LOGIC;
  signal fifo_pix_error1_carry_i_3_n_0 : STD_LOGIC;
  signal fifo_pix_error1_carry_i_4_n_0 : STD_LOGIC;
  signal fifo_pix_error1_carry_n_0 : STD_LOGIC;
  signal fifo_pix_error1_carry_n_1 : STD_LOGIC;
  signal fifo_pix_error1_carry_n_2 : STD_LOGIC;
  signal fifo_pix_error1_carry_n_3 : STD_LOGIC;
  signal fifo_pix_error_i_1_n_0 : STD_LOGIC;
  signal fifo_sof_cnt : STD_LOGIC;
  signal \fifo_sof_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_sof_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_sof_dly : STD_LOGIC;
  signal \next_state0__0\ : STD_LOGIC;
  signal next_state119_out : STD_LOGIC;
  signal next_state125_out : STD_LOGIC;
  signal \next_state1__0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_15_in : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal sof_ignore : STD_LOGIC;
  signal sof_ignore_i_1_n_0 : STD_LOGIC;
  signal \^src_in\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of state : signal is "yes";
  signal state_dly : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state_dly[3]_i_1_n_0\ : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^status\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal status_reg1 : STD_LOGIC;
  signal \status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \status_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \status_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal vtg_de_dly : STD_LOGIC;
  signal vtg_lag : STD_LOGIC;
  signal \vtg_lag[0]_i_1_n_0\ : STD_LOGIC;
  signal \vtg_lag[0]_i_4_n_0\ : STD_LOGIC;
  signal vtg_lag_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \vtg_lag_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \vtg_lag_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \vtg_lag_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \vtg_lag_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \vtg_lag_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \vtg_lag_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \vtg_lag_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \vtg_lag_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \vtg_lag_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \vtg_lag_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \vtg_lag_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \vtg_lag_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \vtg_lag_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \vtg_lag_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \vtg_lag_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \vtg_lag_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \vtg_lag_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \vtg_lag_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \vtg_lag_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \vtg_lag_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \vtg_lag_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \vtg_lag_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \vtg_lag_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \vtg_lag_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \vtg_lag_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \vtg_lag_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \vtg_lag_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \vtg_lag_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \vtg_lag_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \vtg_lag_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \vtg_lag_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \vtg_lag_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \vtg_lag_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \vtg_lag_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \vtg_lag_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \vtg_lag_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \vtg_lag_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \vtg_lag_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \vtg_lag_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \vtg_lag_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \vtg_lag_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \vtg_lag_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \vtg_lag_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \vtg_lag_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \vtg_lag_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \vtg_lag_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \vtg_lag_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \vtg_lag_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \vtg_lag_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \vtg_lag_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \vtg_lag_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \vtg_lag_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \vtg_lag_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \vtg_lag_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \vtg_lag_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \vtg_lag_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \vtg_lag_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \vtg_lag_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \vtg_lag_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \vtg_lag_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \vtg_lag_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \vtg_lag_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \vtg_lag_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \vtg_lag_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 13 );
  signal vtg_sof : STD_LOGIC;
  signal vtg_sof_cnt : STD_LOGIC;
  signal \vtg_sof_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \vtg_sof_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \vtg_sof_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vtg_sof_dly : STD_LOGIC;
  signal vtg_vsync_bp_i_1_n_0 : STD_LOGIC;
  signal vtg_vsync_bp_reg_n_0 : STD_LOGIC;
  signal vtg_vsync_dly : STD_LOGIC;
  signal \NLW_fifo_eol_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fifo_eol_cnt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_eol_error1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fifo_eol_error1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_fifo_eol_error1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fifo_pix_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fifo_pix_cnt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_pix_error1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fifo_pix_error1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_fifo_pix_error1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vtg_lag_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_16\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_18\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_8\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001";
  attribute KEEP of \FSM_sequential_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of fifo_pix_error_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifo_sof_cnt[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \fifo_sof_cnt[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \fifo_sof_cnt[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_sof_cnt[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_sof_cnt[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fifo_sof_cnt[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifo_sof_cnt[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \vtg_sof_cnt[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \vtg_sof_cnt[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \vtg_sof_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vtg_sof_cnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vtg_sof_cnt[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vtg_sof_cnt[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \vtg_sof_cnt[7]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of vtg_sof_dly_i_1 : label is "soft_lutpair11";
begin
  \out\(0) <= \^out\(0);
  src_in <= \^src_in\;
  status(27 downto 0) <= \^status\(27 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEFEA"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_4_n_0\,
      I3 => \FSM_sequential_state[0]_i_5_n_0\,
      I4 => \FSM_sequential_state[0]_i_6_n_0\,
      I5 => \FSM_sequential_state[0]_i_7_n_0\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => dout(1),
      I1 => fifo_sof_dly,
      I2 => \^out\(0),
      O => \FSM_sequential_state[0]_i_10_n_0\
    );
\FSM_sequential_state[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5DDFFFFFFFFFFFF"
    )
        port map (
      I0 => p_15_in,
      I1 => fifo_eol_re_dly,
      I2 => vtg_active_video,
      I3 => vtg_de_dly,
      I4 => state(0),
      I5 => state(1),
      O => \FSM_sequential_state[0]_i_11_n_0\
    );
\FSM_sequential_state[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => vtg_sof_dly,
      I1 => dout(1),
      I2 => fifo_sof_dly,
      O => p_15_in
    );
\FSM_sequential_state[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDDDDFDD"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => vtg_active_video,
      I3 => vtg_de_dly,
      I4 => fifo_eol_re_dly,
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_13_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => state(2),
      I1 => \^out\(0),
      I2 => state(0),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555455"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => vtg_active_video,
      I3 => vtg_de_dly,
      I4 => fifo_eol_re_dly,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222A22"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(0),
      I2 => vtg_active_video,
      I3 => vtg_de_dly,
      I4 => fifo_eol_re_dly,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BB8BBBBB"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_8_n_0\,
      I1 => state(0),
      I2 => \FSM_sequential_state[3]_i_9_n_0\,
      I3 => \FSM_sequential_state[3]_i_10_n_0\,
      I4 => \FSM_sequential_state[3]_i_11_n_0\,
      I5 => \FSM_sequential_state[0]_i_9_n_0\,
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000400FFFFFFFF"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_sequential_state[3]_i_9_n_0\,
      I2 => \FSM_sequential_state[3]_i_10_n_0\,
      I3 => \FSM_sequential_state[3]_i_11_n_0\,
      I4 => \FSM_sequential_state[0]_i_10_n_0\,
      I5 => \FSM_sequential_state[0]_i_11_n_0\,
      O => \FSM_sequential_state[0]_i_6_n_0\
    );
\FSM_sequential_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000008A00CF"
    )
        port map (
      I0 => next_state119_out,
      I1 => sof_ignore,
      I2 => p_15_in,
      I3 => \FSM_sequential_state[0]_i_13_n_0\,
      I4 => next_state125_out,
      I5 => \FSM_sequential_state[3]_i_14_n_0\,
      O => \FSM_sequential_state[0]_i_7_n_0\
    );
\FSM_sequential_state[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \^out\(0),
      I1 => vtg_field_id,
      I2 => vtg_active_video,
      I3 => vtg_vsync_bp_reg_n_0,
      I4 => vtg_de_dly,
      O => \FSM_sequential_state[0]_i_8_n_0\
    );
\FSM_sequential_state[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => \^out\(0),
      O => \FSM_sequential_state[0]_i_9_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => state(2),
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => state(1),
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB0BBBBFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_state[3]_i_6_n_0\,
      I2 => \FSM_sequential_state[1]_i_7_n_0\,
      I3 => p_20_in,
      I4 => \^out\(0),
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_9_n_0\,
      I1 => \FSM_sequential_state[3]_i_10_n_0\,
      I2 => \FSM_sequential_state[3]_i_11_n_0\,
      I3 => \FSM_sequential_state[1]_i_8_n_0\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \grdc.rd_data_count_i_reg[10]\,
      I1 => \^out\(0),
      I2 => state(0),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555145555"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \^out\(0),
      I3 => vtg_active_video,
      I4 => vtg_de_dly,
      I5 => fifo_eol_re_dly,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEFEFFEFEEFE"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(0),
      I2 => vtg_de_dly,
      I3 => vtg_active_video,
      I4 => fifo_eol_re_dly,
      I5 => \FSM_sequential_state[3]_i_19_n_0\,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => state(0),
      I1 => vtg_sof_dly,
      I2 => dout(1),
      I3 => fifo_sof_dly,
      I4 => \next_state1__0\,
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFF0BFFF"
    )
        port map (
      I0 => dout(1),
      I1 => fifo_sof_dly,
      I2 => state(0),
      I3 => \^out\(0),
      I4 => fifo_eol_re_dly,
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFF00000000"
    )
        port map (
      I0 => p_20_in,
      I1 => \next_state1__0\,
      I2 => p_22_in,
      I3 => vtg_sof_dly,
      I4 => state(0),
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => fifo_eol_re_dly,
      I1 => vtg_active_video,
      I2 => vtg_de_dly,
      O => p_20_in
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => vtg_active_video,
      I1 => vtg_de_dly,
      I2 => fifo_eol_re_dly,
      O => \next_state1__0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_sof_dly,
      I1 => dout(1),
      O => p_22_in
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000908001019080"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^out\(0),
      I3 => \gen_wr_a.gen_word_narrow.mem_reg_2\,
      I4 => state(2),
      I5 => \grdc.rd_data_count_i_reg[10]\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg[3]_0\,
      I2 => state(0),
      I3 => \FSM_sequential_state[3]_i_4_n_0\,
      I4 => state(1),
      I5 => \FSM_sequential_state[3]_i_5_n_0\,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_22_n_0\,
      I1 => \vtg_lag_reg__0\(28),
      I2 => \vtg_lag_reg__0\(29),
      I3 => \vtg_lag_reg__0\(31),
      I4 => \vtg_lag_reg__0\(30),
      O => \FSM_sequential_state[3]_i_10_n_0\
    );
\FSM_sequential_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \vtg_lag_reg__0\(20),
      I1 => \vtg_lag_reg__0\(19),
      I2 => \vtg_lag_reg__0\(18),
      I3 => \vtg_lag_reg__0\(21),
      I4 => \vtg_lag_reg__0\(22),
      I5 => \FSM_sequential_state[3]_i_23_n_0\,
      O => \FSM_sequential_state[3]_i_11_n_0\
    );
\FSM_sequential_state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => vtg_de_dly,
      I1 => vtg_vsync_bp_reg_n_0,
      I2 => vtg_active_video,
      I3 => vtg_field_id,
      O => \next_state0__0\
    );
\FSM_sequential_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022F022F2F02022F"
    )
        port map (
      I0 => vtg_de_dly,
      I1 => vtg_active_video,
      I2 => fifo_eol_re_dly,
      I3 => vtg_sof_dly,
      I4 => fifo_sof_dly,
      I5 => dout(1),
      O => \FSM_sequential_state[3]_i_13_n_0\
    );
\FSM_sequential_state[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0D0D0D000"
    )
        port map (
      I0 => vtg_de_dly,
      I1 => vtg_active_video,
      I2 => fifo_eol_re_dly,
      I3 => state(0),
      I4 => state(1),
      I5 => \FSM_sequential_state[0]_i_9_n_0\,
      O => \FSM_sequential_state[3]_i_14_n_0\
    );
\FSM_sequential_state[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(7),
      I1 => \fifo_sof_cnt_reg__0\(5),
      I2 => \fifo_sof_cnt_reg__0\(6),
      O => \FSM_sequential_state[3]_i_15_n_0\
    );
\FSM_sequential_state[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(3),
      I1 => \fifo_sof_cnt_reg__0\(4),
      I2 => \fifo_sof_cnt_reg__0\(0),
      I3 => \fifo_sof_cnt_reg__0\(1),
      I4 => \fifo_sof_cnt_reg__0\(2),
      O => \FSM_sequential_state[3]_i_16_n_0\
    );
\FSM_sequential_state[3]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(7),
      I1 => \vtg_sof_cnt_reg__0\(5),
      I2 => \vtg_sof_cnt_reg__0\(6),
      O => \FSM_sequential_state[3]_i_17_n_0\
    );
\FSM_sequential_state[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(3),
      I1 => \vtg_sof_cnt_reg__0\(4),
      I2 => \vtg_sof_cnt_reg__0\(0),
      I3 => \vtg_sof_cnt_reg__0\(1),
      I4 => \vtg_sof_cnt_reg__0\(2),
      O => \FSM_sequential_state[3]_i_18_n_0\
    );
\FSM_sequential_state[3]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(2),
      I1 => \^out\(0),
      I2 => state(1),
      I3 => state(0),
      O => \FSM_sequential_state[3]_i_19_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => state(2),
      I1 => \FSM_sequential_state[3]_i_6_n_0\,
      I2 => \next_state1__0\,
      I3 => next_state125_out,
      I4 => next_state119_out,
      I5 => \status_reg[7]_i_2_n_0\,
      O => \FSM_sequential_state[3]_i_2_n_0\
    );
\FSM_sequential_state[3]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => vtg_lag_reg(1),
      I1 => vtg_lag_reg(0),
      I2 => vtg_lag_reg(3),
      I3 => vtg_lag_reg(2),
      O => \FSM_sequential_state[3]_i_20_n_0\
    );
\FSM_sequential_state[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => vtg_lag_reg(10),
      I1 => vtg_lag_reg(12),
      I2 => vtg_lag_reg(11),
      I3 => vtg_lag_reg(9),
      I4 => vtg_lag_reg(7),
      I5 => vtg_lag_reg(8),
      O => \FSM_sequential_state[3]_i_21_n_0\
    );
\FSM_sequential_state[3]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \vtg_lag_reg__0\(27),
      I1 => \vtg_lag_reg__0\(26),
      I2 => \vtg_lag_reg__0\(23),
      I3 => \vtg_lag_reg__0\(24),
      I4 => \vtg_lag_reg__0\(25),
      O => \FSM_sequential_state[3]_i_22_n_0\
    );
\FSM_sequential_state[3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \vtg_lag_reg__0\(15),
      I1 => \vtg_lag_reg__0\(13),
      I2 => \vtg_lag_reg__0\(14),
      I3 => \vtg_lag_reg__0\(17),
      I4 => \vtg_lag_reg__0\(16),
      O => \FSM_sequential_state[3]_i_23_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000000"
    )
        port map (
      I0 => p_22_in,
      I1 => \FSM_sequential_state[3]_i_9_n_0\,
      I2 => \FSM_sequential_state[3]_i_10_n_0\,
      I3 => \FSM_sequential_state[3]_i_11_n_0\,
      I4 => \^out\(0),
      I5 => \next_state0__0\,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880003"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_13_n_0\,
      I1 => state(0),
      I2 => \next_state1__0\,
      I3 => \FSM_sequential_state[3]_i_14_n_0\,
      I4 => \^out\(0),
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => fifo_sof_dly,
      I1 => dout(1),
      I2 => vtg_sof_dly,
      I3 => sof_ignore,
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000E000E0000000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_15_n_0\,
      I1 => \FSM_sequential_state[3]_i_16_n_0\,
      I2 => vtg_sof_dly,
      I3 => p_22_in,
      I4 => \FSM_sequential_state[3]_i_17_n_0\,
      I5 => \FSM_sequential_state[3]_i_18_n_0\,
      O => next_state125_out
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => vtg_sof_dly,
      I1 => fifo_sof_dly,
      I2 => dout(1),
      I3 => sof_ignore,
      I4 => \FSM_sequential_state[3]_i_19_n_0\,
      O => next_state119_out
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_20_n_0\,
      I1 => vtg_lag_reg(6),
      I2 => vtg_lag_reg(5),
      I3 => vtg_lag_reg(4),
      I4 => \FSM_sequential_state[3]_i_21_n_0\,
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      S => \status_reg[28]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => \status_reg[28]_i_1_n_0\
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => \status_reg[28]_i_1_n_0\
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => \FSM_sequential_state[3]_i_1_n_0\,
      Q => \^out\(0),
      R => \status_reg[28]_i_1_n_0\
    );
\fifo_eol_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => \fifo_pix_cnt_dly[12]_i_1_n_0\,
      I1 => fifo_sof_dly,
      I2 => dout(1),
      I3 => vid_io_out_ce,
      O => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => fifo_eol_re_dly,
      O => fifo_eol_cnt
    );
\fifo_eol_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_eol_cnt_reg(0),
      O => \fifo_eol_cnt[0]_i_4_n_0\
    );
\fifo_eol_cnt_dly[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => fifo_sof_dly,
      I1 => dout(1),
      I2 => vid_io_out_ce,
      O => fifo_sof_cnt
    );
\fifo_eol_cnt_dly_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(0),
      Q => fifo_eol_cnt_dly(0),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(10),
      Q => fifo_eol_cnt_dly(10),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(11),
      Q => fifo_eol_cnt_dly(11),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(12),
      Q => fifo_eol_cnt_dly(12),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(1),
      Q => fifo_eol_cnt_dly(1),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(2),
      Q => fifo_eol_cnt_dly(2),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(3),
      Q => fifo_eol_cnt_dly(3),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(4),
      Q => fifo_eol_cnt_dly(4),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(5),
      Q => fifo_eol_cnt_dly(5),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(6),
      Q => fifo_eol_cnt_dly(6),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(7),
      Q => fifo_eol_cnt_dly(7),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(8),
      Q => fifo_eol_cnt_dly(8),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_dly_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => fifo_eol_cnt_reg(9),
      Q => fifo_eol_cnt_dly(9),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_eol_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[0]_i_3_n_7\,
      Q => fifo_eol_cnt_reg(0),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \fifo_eol_cnt_reg[0]_i_3_n_0\,
      CO(2) => \fifo_eol_cnt_reg[0]_i_3_n_1\,
      CO(1) => \fifo_eol_cnt_reg[0]_i_3_n_2\,
      CO(0) => \fifo_eol_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \fifo_eol_cnt_reg[0]_i_3_n_4\,
      O(2) => \fifo_eol_cnt_reg[0]_i_3_n_5\,
      O(1) => \fifo_eol_cnt_reg[0]_i_3_n_6\,
      O(0) => \fifo_eol_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => fifo_eol_cnt_reg(3 downto 1),
      S(0) => \fifo_eol_cnt[0]_i_4_n_0\
    );
\fifo_eol_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[8]_i_1_n_5\,
      Q => fifo_eol_cnt_reg(10),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[8]_i_1_n_4\,
      Q => fifo_eol_cnt_reg(11),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[12]_i_1_n_7\,
      Q => fifo_eol_cnt_reg(12),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_eol_cnt_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_fifo_eol_cnt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_fifo_eol_cnt_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \fifo_eol_cnt_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => fifo_eol_cnt_reg(12)
    );
\fifo_eol_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[0]_i_3_n_6\,
      Q => fifo_eol_cnt_reg(1),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[0]_i_3_n_5\,
      Q => fifo_eol_cnt_reg(2),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[0]_i_3_n_4\,
      Q => fifo_eol_cnt_reg(3),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[4]_i_1_n_7\,
      Q => fifo_eol_cnt_reg(4),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_eol_cnt_reg[0]_i_3_n_0\,
      CO(3) => \fifo_eol_cnt_reg[4]_i_1_n_0\,
      CO(2) => \fifo_eol_cnt_reg[4]_i_1_n_1\,
      CO(1) => \fifo_eol_cnt_reg[4]_i_1_n_2\,
      CO(0) => \fifo_eol_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fifo_eol_cnt_reg[4]_i_1_n_4\,
      O(2) => \fifo_eol_cnt_reg[4]_i_1_n_5\,
      O(1) => \fifo_eol_cnt_reg[4]_i_1_n_6\,
      O(0) => \fifo_eol_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => fifo_eol_cnt_reg(7 downto 4)
    );
\fifo_eol_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[4]_i_1_n_6\,
      Q => fifo_eol_cnt_reg(5),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[4]_i_1_n_5\,
      Q => fifo_eol_cnt_reg(6),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[4]_i_1_n_4\,
      Q => fifo_eol_cnt_reg(7),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[8]_i_1_n_7\,
      Q => fifo_eol_cnt_reg(8),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
\fifo_eol_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_eol_cnt_reg[4]_i_1_n_0\,
      CO(3) => \fifo_eol_cnt_reg[8]_i_1_n_0\,
      CO(2) => \fifo_eol_cnt_reg[8]_i_1_n_1\,
      CO(1) => \fifo_eol_cnt_reg[8]_i_1_n_2\,
      CO(0) => \fifo_eol_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fifo_eol_cnt_reg[8]_i_1_n_4\,
      O(2) => \fifo_eol_cnt_reg[8]_i_1_n_5\,
      O(1) => \fifo_eol_cnt_reg[8]_i_1_n_6\,
      O(0) => \fifo_eol_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => fifo_eol_cnt_reg(11 downto 8)
    );
\fifo_eol_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_eol_cnt,
      D => \fifo_eol_cnt_reg[8]_i_1_n_6\,
      Q => fifo_eol_cnt_reg(9),
      R => \fifo_eol_cnt[0]_i_1_n_0\
    );
fifo_eol_dly_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => dout(0),
      Q => fifo_eol_dly,
      R => \status_reg[28]_i_1_n_0\
    );
fifo_eol_error1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fifo_eol_error1_carry_n_0,
      CO(2) => fifo_eol_error1_carry_n_1,
      CO(1) => fifo_eol_error1_carry_n_2,
      CO(0) => fifo_eol_error1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_fifo_eol_error1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => fifo_eol_error1_carry_i_1_n_0,
      S(2) => fifo_eol_error1_carry_i_2_n_0,
      S(1) => fifo_eol_error1_carry_i_3_n_0,
      S(0) => fifo_eol_error1_carry_i_4_n_0
    );
\fifo_eol_error1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => fifo_eol_error1_carry_n_0,
      CO(3 downto 1) => \NLW_fifo_eol_error1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => fifo_eol_error1,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => \NLW_fifo_eol_error1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \fifo_eol_error1_carry__0_i_1_n_0\
    );
\fifo_eol_error1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fifo_eol_cnt_dly(12),
      I1 => fifo_eol_cnt_reg(12),
      O => \fifo_eol_error1_carry__0_i_1_n_0\
    );
fifo_eol_error1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_eol_cnt_reg(9),
      I1 => fifo_eol_cnt_dly(9),
      I2 => fifo_eol_cnt_dly(11),
      I3 => fifo_eol_cnt_reg(11),
      I4 => fifo_eol_cnt_dly(10),
      I5 => fifo_eol_cnt_reg(10),
      O => fifo_eol_error1_carry_i_1_n_0
    );
fifo_eol_error1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_eol_cnt_reg(6),
      I1 => fifo_eol_cnt_dly(6),
      I2 => fifo_eol_cnt_dly(8),
      I3 => fifo_eol_cnt_reg(8),
      I4 => fifo_eol_cnt_dly(7),
      I5 => fifo_eol_cnt_reg(7),
      O => fifo_eol_error1_carry_i_2_n_0
    );
fifo_eol_error1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_eol_cnt_reg(3),
      I1 => fifo_eol_cnt_dly(3),
      I2 => fifo_eol_cnt_dly(5),
      I3 => fifo_eol_cnt_reg(5),
      I4 => fifo_eol_cnt_dly(4),
      I5 => fifo_eol_cnt_reg(4),
      O => fifo_eol_error1_carry_i_3_n_0
    );
fifo_eol_error1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_eol_cnt_reg(0),
      I1 => fifo_eol_cnt_dly(0),
      I2 => fifo_eol_cnt_dly(2),
      I3 => fifo_eol_cnt_reg(2),
      I4 => fifo_eol_cnt_dly(1),
      I5 => fifo_eol_cnt_reg(1),
      O => fifo_eol_error1_carry_i_4_n_0
    );
fifo_eol_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => fifo_eol_error1,
      I1 => fifo_eol_error2,
      I2 => vid_io_out_ce,
      I3 => dout(1),
      I4 => fifo_sof_dly,
      I5 => fifo_eol_error,
      O => fifo_eol_error_i_1_n_0
    );
fifo_eol_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => fifo_eol_error_i_3_n_0,
      I1 => fifo_eol_error_i_4_n_0,
      I2 => fifo_eol_cnt_dly(6),
      I3 => fifo_eol_cnt_dly(7),
      I4 => fifo_eol_cnt_dly(4),
      I5 => fifo_eol_cnt_dly(5),
      O => fifo_eol_error2
    );
fifo_eol_error_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => fifo_eol_cnt_dly(11),
      I1 => fifo_eol_cnt_dly(9),
      I2 => fifo_eol_cnt_dly(8),
      I3 => fifo_eol_cnt_dly(12),
      I4 => fifo_eol_cnt_dly(10),
      O => fifo_eol_error_i_3_n_0
    );
fifo_eol_error_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifo_eol_cnt_dly(2),
      I1 => fifo_eol_cnt_dly(3),
      I2 => fifo_eol_cnt_dly(0),
      I3 => fifo_eol_cnt_dly(1),
      O => fifo_eol_error_i_4_n_0
    );
fifo_eol_error_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => fifo_eol_error_i_1_n_0,
      Q => fifo_eol_error,
      R => \status_reg[28]_i_1_n_0\
    );
fifo_eol_re_dly_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => fifo_eol_re,
      Q => fifo_eol_re_dly,
      R => \status_reg[28]_i_1_n_0\
    );
\fifo_pix_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \fifo_pix_cnt_dly[12]_i_1_n_0\,
      I1 => fifo_eol_re_dly,
      I2 => vid_io_out_ce,
      O => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AA00020022"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => state(1),
      I2 => \^out\(0),
      I3 => state(2),
      I4 => state(0),
      I5 => vtg_active_video,
      O => fifo_rd_en
    );
\fifo_pix_cnt[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_pix_cnt_reg(0),
      O => \fifo_pix_cnt[0]_i_5_n_0\
    );
\fifo_pix_cnt_dly[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0102FFFF"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => \^out\(0),
      I4 => aresetn,
      O => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => \fifo_pix_cnt_dly[12]_i_3_n_0\,
      I2 => \fifo_pix_cnt_dly1__11\,
      I3 => fifo_eol_re_dly,
      O => fifo_pix_cnt_dly_0
    );
\fifo_pix_cnt_dly[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \fifo_pix_cnt_dly[12]_i_5_n_0\,
      I1 => fifo_eol_cnt_reg(5),
      I2 => fifo_eol_cnt_reg(4),
      I3 => fifo_eol_cnt_reg(6),
      I4 => \fifo_pix_cnt_dly[12]_i_6_n_0\,
      O => \fifo_pix_cnt_dly[12]_i_3_n_0\
    );
\fifo_pix_cnt_dly[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \fifo_pix_cnt_dly[12]_i_7_n_0\,
      I1 => fifo_pix_cnt_dly(5),
      I2 => fifo_pix_cnt_dly(4),
      I3 => fifo_pix_cnt_dly(6),
      I4 => \fifo_pix_cnt_dly[12]_i_8_n_0\,
      O => \fifo_pix_cnt_dly1__11\
    );
\fifo_pix_cnt_dly[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifo_eol_cnt_reg(1),
      I1 => fifo_eol_cnt_reg(0),
      I2 => fifo_eol_cnt_reg(3),
      I3 => fifo_eol_cnt_reg(2),
      O => \fifo_pix_cnt_dly[12]_i_5_n_0\
    );
\fifo_pix_cnt_dly[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => fifo_eol_cnt_reg(11),
      I1 => fifo_eol_cnt_reg(10),
      I2 => fifo_eol_cnt_reg(12),
      I3 => fifo_eol_cnt_reg(7),
      I4 => fifo_eol_cnt_reg(8),
      I5 => fifo_eol_cnt_reg(9),
      O => \fifo_pix_cnt_dly[12]_i_6_n_0\
    );
\fifo_pix_cnt_dly[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fifo_pix_cnt_dly(1),
      I1 => fifo_pix_cnt_dly(0),
      I2 => fifo_pix_cnt_dly(3),
      I3 => fifo_pix_cnt_dly(2),
      O => \fifo_pix_cnt_dly[12]_i_7_n_0\
    );
\fifo_pix_cnt_dly[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => fifo_pix_cnt_dly(11),
      I1 => fifo_pix_cnt_dly(10),
      I2 => fifo_pix_cnt_dly(12),
      I3 => fifo_pix_cnt_dly(7),
      I4 => fifo_pix_cnt_dly(8),
      I5 => fifo_pix_cnt_dly(9),
      O => \fifo_pix_cnt_dly[12]_i_8_n_0\
    );
\fifo_pix_cnt_dly_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(0),
      Q => fifo_pix_cnt_dly(0),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(10),
      Q => fifo_pix_cnt_dly(10),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(11),
      Q => fifo_pix_cnt_dly(11),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(12),
      Q => fifo_pix_cnt_dly(12),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(1),
      Q => fifo_pix_cnt_dly(1),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(2),
      Q => fifo_pix_cnt_dly(2),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(3),
      Q => fifo_pix_cnt_dly(3),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(4),
      Q => fifo_pix_cnt_dly(4),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(5),
      Q => fifo_pix_cnt_dly(5),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(6),
      Q => fifo_pix_cnt_dly(6),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(7),
      Q => fifo_pix_cnt_dly(7),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(8),
      Q => fifo_pix_cnt_dly(8),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_dly_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt_dly_0,
      D => fifo_pix_cnt_reg(9),
      Q => fifo_pix_cnt_dly(9),
      R => \fifo_pix_cnt_dly[12]_i_1_n_0\
    );
\fifo_pix_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[0]_i_3_n_7\,
      Q => fifo_pix_cnt_reg(0),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \fifo_pix_cnt_reg[0]_i_3_n_0\,
      CO(2) => \fifo_pix_cnt_reg[0]_i_3_n_1\,
      CO(1) => \fifo_pix_cnt_reg[0]_i_3_n_2\,
      CO(0) => \fifo_pix_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \fifo_pix_cnt_reg[0]_i_3_n_4\,
      O(2) => \fifo_pix_cnt_reg[0]_i_3_n_5\,
      O(1) => \fifo_pix_cnt_reg[0]_i_3_n_6\,
      O(0) => \fifo_pix_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => fifo_pix_cnt_reg(3 downto 1),
      S(0) => \fifo_pix_cnt[0]_i_5_n_0\
    );
\fifo_pix_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[8]_i_1_n_5\,
      Q => fifo_pix_cnt_reg(10),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[8]_i_1_n_4\,
      Q => fifo_pix_cnt_reg(11),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[12]_i_1_n_7\,
      Q => fifo_pix_cnt_reg(12),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_pix_cnt_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_fifo_pix_cnt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_fifo_pix_cnt_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \fifo_pix_cnt_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => fifo_pix_cnt_reg(12)
    );
\fifo_pix_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[0]_i_3_n_6\,
      Q => fifo_pix_cnt_reg(1),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[0]_i_3_n_5\,
      Q => fifo_pix_cnt_reg(2),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[0]_i_3_n_4\,
      Q => fifo_pix_cnt_reg(3),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[4]_i_1_n_7\,
      Q => fifo_pix_cnt_reg(4),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_pix_cnt_reg[0]_i_3_n_0\,
      CO(3) => \fifo_pix_cnt_reg[4]_i_1_n_0\,
      CO(2) => \fifo_pix_cnt_reg[4]_i_1_n_1\,
      CO(1) => \fifo_pix_cnt_reg[4]_i_1_n_2\,
      CO(0) => \fifo_pix_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fifo_pix_cnt_reg[4]_i_1_n_4\,
      O(2) => \fifo_pix_cnt_reg[4]_i_1_n_5\,
      O(1) => \fifo_pix_cnt_reg[4]_i_1_n_6\,
      O(0) => \fifo_pix_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => fifo_pix_cnt_reg(7 downto 4)
    );
\fifo_pix_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[4]_i_1_n_6\,
      Q => fifo_pix_cnt_reg(5),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[4]_i_1_n_5\,
      Q => fifo_pix_cnt_reg(6),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[4]_i_1_n_4\,
      Q => fifo_pix_cnt_reg(7),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[8]_i_1_n_7\,
      Q => fifo_pix_cnt_reg(8),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
\fifo_pix_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_pix_cnt_reg[4]_i_1_n_0\,
      CO(3) => \fifo_pix_cnt_reg[8]_i_1_n_0\,
      CO(2) => \fifo_pix_cnt_reg[8]_i_1_n_1\,
      CO(1) => \fifo_pix_cnt_reg[8]_i_1_n_2\,
      CO(0) => \fifo_pix_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \fifo_pix_cnt_reg[8]_i_1_n_4\,
      O(2) => \fifo_pix_cnt_reg[8]_i_1_n_5\,
      O(1) => \fifo_pix_cnt_reg[8]_i_1_n_6\,
      O(0) => \fifo_pix_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => fifo_pix_cnt_reg(11 downto 8)
    );
\fifo_pix_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_pix_cnt,
      D => \fifo_pix_cnt_reg[8]_i_1_n_6\,
      Q => fifo_pix_cnt_reg(9),
      R => \fifo_pix_cnt[0]_i_1_n_0\
    );
fifo_pix_error1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fifo_pix_error1_carry_n_0,
      CO(2) => fifo_pix_error1_carry_n_1,
      CO(1) => fifo_pix_error1_carry_n_2,
      CO(0) => fifo_pix_error1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_fifo_pix_error1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => fifo_pix_error1_carry_i_1_n_0,
      S(2) => fifo_pix_error1_carry_i_2_n_0,
      S(1) => fifo_pix_error1_carry_i_3_n_0,
      S(0) => fifo_pix_error1_carry_i_4_n_0
    );
\fifo_pix_error1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => fifo_pix_error1_carry_n_0,
      CO(3 downto 1) => \NLW_fifo_pix_error1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => fifo_pix_error1,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => \NLW_fifo_pix_error1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \fifo_pix_error1_carry__0_i_1_n_0\
    );
\fifo_pix_error1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fifo_pix_cnt_dly(12),
      I1 => fifo_pix_cnt_reg(12),
      O => \fifo_pix_error1_carry__0_i_1_n_0\
    );
fifo_pix_error1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_pix_cnt_reg(9),
      I1 => fifo_pix_cnt_dly(9),
      I2 => fifo_pix_cnt_dly(11),
      I3 => fifo_pix_cnt_reg(11),
      I4 => fifo_pix_cnt_dly(10),
      I5 => fifo_pix_cnt_reg(10),
      O => fifo_pix_error1_carry_i_1_n_0
    );
fifo_pix_error1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_pix_cnt_reg(6),
      I1 => fifo_pix_cnt_dly(6),
      I2 => fifo_pix_cnt_dly(8),
      I3 => fifo_pix_cnt_reg(8),
      I4 => fifo_pix_cnt_dly(7),
      I5 => fifo_pix_cnt_reg(7),
      O => fifo_pix_error1_carry_i_2_n_0
    );
fifo_pix_error1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_pix_cnt_reg(3),
      I1 => fifo_pix_cnt_dly(3),
      I2 => fifo_pix_cnt_dly(5),
      I3 => fifo_pix_cnt_reg(5),
      I4 => fifo_pix_cnt_dly(4),
      I5 => fifo_pix_cnt_reg(4),
      O => fifo_pix_error1_carry_i_3_n_0
    );
fifo_pix_error1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_pix_cnt_reg(0),
      I1 => fifo_pix_cnt_dly(0),
      I2 => fifo_pix_cnt_dly(2),
      I3 => fifo_pix_cnt_reg(2),
      I4 => fifo_pix_cnt_dly(1),
      I5 => fifo_pix_cnt_reg(1),
      O => fifo_pix_error1_carry_i_4_n_0
    );
fifo_pix_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7AA00"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => fifo_sof_dly,
      I2 => dout(1),
      I3 => fifo_pix_error0,
      I4 => fifo_pix_error,
      O => fifo_pix_error_i_1_n_0
    );
fifo_pix_error_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => fifo_eol_re_dly,
      I1 => \fifo_pix_cnt_dly1__11\,
      I2 => fifo_pix_error1,
      O => fifo_pix_error0
    );
fifo_pix_error_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => fifo_pix_error_i_1_n_0,
      Q => fifo_pix_error,
      R => \status_reg[28]_i_1_n_0\
    );
\fifo_sof_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\fifo_sof_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(0),
      I1 => \fifo_sof_cnt_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\fifo_sof_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(0),
      I1 => \fifo_sof_cnt_reg__0\(1),
      I2 => \fifo_sof_cnt_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\fifo_sof_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(1),
      I1 => \fifo_sof_cnt_reg__0\(0),
      I2 => \fifo_sof_cnt_reg__0\(2),
      I3 => \fifo_sof_cnt_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\fifo_sof_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(2),
      I1 => \fifo_sof_cnt_reg__0\(0),
      I2 => \fifo_sof_cnt_reg__0\(1),
      I3 => \fifo_sof_cnt_reg__0\(3),
      I4 => \fifo_sof_cnt_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\fifo_sof_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(3),
      I1 => \fifo_sof_cnt_reg__0\(1),
      I2 => \fifo_sof_cnt_reg__0\(0),
      I3 => \fifo_sof_cnt_reg__0\(2),
      I4 => \fifo_sof_cnt_reg__0\(4),
      I5 => \fifo_sof_cnt_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\fifo_sof_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \fifo_sof_cnt[7]_i_2_n_0\,
      I1 => \fifo_sof_cnt_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\fifo_sof_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \fifo_sof_cnt[7]_i_2_n_0\,
      I1 => \fifo_sof_cnt_reg__0\(6),
      I2 => \fifo_sof_cnt_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\fifo_sof_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \fifo_sof_cnt_reg__0\(5),
      I1 => \fifo_sof_cnt_reg__0\(3),
      I2 => \fifo_sof_cnt_reg__0\(1),
      I3 => \fifo_sof_cnt_reg__0\(0),
      I4 => \fifo_sof_cnt_reg__0\(2),
      I5 => \fifo_sof_cnt_reg__0\(4),
      O => \fifo_sof_cnt[7]_i_2_n_0\
    );
\fifo_sof_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => \p_0_in__0\(0),
      Q => \fifo_sof_cnt_reg__0\(0),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\fifo_sof_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => \p_0_in__0\(1),
      Q => \fifo_sof_cnt_reg__0\(1),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\fifo_sof_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => \p_0_in__0\(2),
      Q => \fifo_sof_cnt_reg__0\(2),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\fifo_sof_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => \p_0_in__0\(3),
      Q => \fifo_sof_cnt_reg__0\(3),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\fifo_sof_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => \p_0_in__0\(4),
      Q => \fifo_sof_cnt_reg__0\(4),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\fifo_sof_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => \p_0_in__0\(5),
      Q => \fifo_sof_cnt_reg__0\(5),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\fifo_sof_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => \p_0_in__0\(6),
      Q => \fifo_sof_cnt_reg__0\(6),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\fifo_sof_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => fifo_sof_cnt,
      D => \p_0_in__0\(7),
      Q => \fifo_sof_cnt_reg__0\(7),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
fifo_sof_dly_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => dout(1),
      Q => fifo_sof_dly,
      R => \status_reg[28]_i_1_n_0\
    );
\in_data_mux[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAB8F00000000"
    )
        port map (
      I0 => vtg_active_video,
      I1 => state(0),
      I2 => state(2),
      I3 => \^out\(0),
      I4 => state(1),
      I5 => vid_io_out_ce,
      O => E(0)
    );
in_de_mux_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^src_in\,
      I1 => aresetn,
      I2 => fivid_reset_full_frame,
      O => SR(0)
    );
locked_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^out\(0),
      I3 => state(2),
      O => p_3_in
    );
locked_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_3_in,
      Q => \^src_in\,
      R => '0'
    );
sof_ignore_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDF00"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => dout(2),
      I2 => \fifo_pix_cnt_dly[12]_i_3_n_0\,
      I3 => sof_ignore,
      I4 => \vtg_lag[0]_i_1_n_0\,
      O => sof_ignore_i_1_n_0
    );
sof_ignore_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => sof_ignore_i_1_n_0,
      Q => sof_ignore,
      R => '0'
    );
\state_dly[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2E7"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      O => state_reg(0)
    );
\state_dly[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"405D"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      O => state_reg(1)
    );
\state_dly[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0748"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => state_reg(2)
    );
\state_dly[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aresetn,
      I1 => vid_io_out_ce,
      O => \state_dly[3]_i_1_n_0\
    );
\state_dly[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECC8"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => state_reg(3)
    );
\state_dly_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \state_dly[3]_i_1_n_0\,
      D => state_reg(0),
      Q => state_dly(0),
      R => '0'
    );
\state_dly_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \state_dly[3]_i_1_n_0\,
      D => state_reg(1),
      Q => state_dly(1),
      R => '0'
    );
\state_dly_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \state_dly[3]_i_1_n_0\,
      D => state_reg(2),
      Q => state_dly(2),
      R => '0'
    );
\state_dly_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \state_dly[3]_i_1_n_0\,
      D => state_reg(3),
      Q => state_dly(3),
      R => '0'
    );
\status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \^out\(0),
      I3 => state(2),
      I4 => \status_reg[0]_i_2_n_0\,
      I5 => \^status\(0),
      O => \status_reg[0]_i_1_n_0\
    );
\status_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \status_reg[0]_i_2_n_0\
    );
\status_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \status_reg[10]_i_3_n_0\,
      I3 => state(2),
      I4 => \^out\(0),
      I5 => \^status\(10),
      O => \status_reg[10]_i_1_n_0\
    );
\status_reg[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => state_dly(3),
      I1 => state_reg(3),
      I2 => \status_reg[10]_i_4_n_0\,
      I3 => state_reg(0),
      I4 => state_dly(0),
      O => status_reg1
    );
\status_reg[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \status_reg[10]_i_3_n_0\
    );
\status_reg[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDEDEB77EBEDBEED"
    )
        port map (
      I0 => state_dly(1),
      I1 => state_dly(2),
      I2 => \^out\(0),
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => \status_reg[10]_i_4_n_0\
    );
\status_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \^out\(0),
      I4 => \status_reg[11]_i_2_n_0\,
      I5 => \^status\(11),
      O => \status_reg[11]_i_1_n_0\
    );
\status_reg[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \^out\(0),
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => \status_reg[11]_i_2_n_0\
    );
\status_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => \^out\(0),
      I4 => \status_reg[12]_i_2_n_0\,
      I5 => \^status\(12),
      O => \status_reg[12]_i_1_n_0\
    );
\status_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \^out\(0),
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => \status_reg[12]_i_2_n_0\
    );
\status_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => \status_reg[1]_i_2_n_0\,
      I5 => \^status\(1),
      O => \status_reg[1]_i_1_n_0\
    );
\status_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => state(0),
      I3 => state(2),
      I4 => \^out\(0),
      I5 => state(1),
      O => \status_reg[1]_i_2_n_0\
    );
\status_reg[28]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \status_reg[28]_i_1_n_0\
    );
\status_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFF00100000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \^out\(0),
      I4 => \status_reg[2]_i_2_n_0\,
      I5 => \^status\(2),
      O => \status_reg[2]_i_1_n_0\
    );
\status_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \^out\(0),
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => \status_reg[2]_i_2_n_0\
    );
\status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \^out\(0),
      I3 => state(2),
      I4 => \status_reg[9]_i_2_n_0\,
      I5 => \^status\(3),
      O => \status_reg[3]_i_1_n_0\
    );
\status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000080"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \status_reg[10]_i_3_n_0\,
      I3 => \^out\(0),
      I4 => state(2),
      I5 => \^status\(4),
      O => \status_reg[4]_i_1_n_0\
    );
\status_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => \status_reg[5]_i_2_n_0\,
      I5 => \^status\(5),
      O => \status_reg[5]_i_1_n_0\
    );
\status_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      I5 => \^out\(0),
      O => \status_reg[5]_i_2_n_0\
    );
\status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \status_reg[6]_i_2_n_0\,
      I5 => \^status\(6),
      O => \status_reg[6]_i_1_n_0\
    );
\status_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      I5 => \^out\(0),
      O => \status_reg[6]_i_2_n_0\
    );
\status_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \^out\(0),
      I3 => state(2),
      I4 => \status_reg[7]_i_2_n_0\,
      I5 => \^status\(7),
      O => \status_reg[7]_i_1_n_0\
    );
\status_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \status_reg[7]_i_2_n_0\
    );
\status_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \status_reg[10]_i_3_n_0\,
      I3 => \^out\(0),
      I4 => state(2),
      I5 => \^status\(8),
      O => \status_reg[8]_i_1_n_0\
    );
\status_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08000000"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => status_reg1,
      I2 => \status_reg[9]_i_2_n_0\,
      I3 => \^out\(0),
      I4 => state(2),
      I5 => \^status\(9),
      O => \status_reg[9]_i_1_n_0\
    );
\status_reg[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \status_reg[9]_i_2_n_0\
    );
\status_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[0]_i_1_n_0\,
      Q => \^status\(0),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[10]_i_1_n_0\,
      Q => \^status\(10),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[11]_i_1_n_0\,
      Q => \^status\(11),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[12]_i_1_n_0\,
      Q => \^status\(12),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => fifo_pix_error,
      Q => \^status\(13),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => fifo_eol_error,
      Q => \^status\(14),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(0),
      Q => \^status\(15),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(1),
      Q => \^status\(16),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(2),
      Q => \^status\(17),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(3),
      Q => \^status\(18),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[1]_i_1_n_0\,
      Q => \^status\(1),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(4),
      Q => \^status\(19),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(5),
      Q => \^status\(20),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(6),
      Q => \^status\(21),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(7),
      Q => \^status\(22),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(8),
      Q => \^status\(23),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(9),
      Q => \^status\(24),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(10),
      Q => \^status\(25),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(11),
      Q => \^status\(26),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_lag_reg(12),
      Q => \^status\(27),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[2]_i_1_n_0\,
      Q => \^status\(2),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[3]_i_1_n_0\,
      Q => \^status\(3),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[4]_i_1_n_0\,
      Q => \^status\(4),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[5]_i_1_n_0\,
      Q => \^status\(5),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[6]_i_1_n_0\,
      Q => \^status\(6),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[7]_i_1_n_0\,
      Q => \^status\(7),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[8]_i_1_n_0\,
      Q => \^status\(8),
      R => \status_reg[28]_i_1_n_0\
    );
\status_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \status_reg[9]_i_1_n_0\,
      Q => \^status\(9),
      R => \status_reg[28]_i_1_n_0\
    );
vtg_ce_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22022200"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => state(2),
      I2 => \^out\(0),
      I3 => state(1),
      I4 => state(0),
      O => vtg_ce
    );
vtg_de_dly_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_active_video,
      Q => vtg_de_dly,
      R => \status_reg[28]_i_1_n_0\
    );
\vtg_lag[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(0),
      I2 => state(2),
      I3 => state(0),
      I4 => aresetn,
      O => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080002"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \^out\(0),
      O => vtg_lag
    );
\vtg_lag[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vtg_lag_reg(0),
      O => \vtg_lag[0]_i_4_n_0\
    );
\vtg_lag_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[0]_i_3_n_7\,
      Q => vtg_lag_reg(0),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \vtg_lag_reg[0]_i_3_n_0\,
      CO(2) => \vtg_lag_reg[0]_i_3_n_1\,
      CO(1) => \vtg_lag_reg[0]_i_3_n_2\,
      CO(0) => \vtg_lag_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \vtg_lag_reg[0]_i_3_n_4\,
      O(2) => \vtg_lag_reg[0]_i_3_n_5\,
      O(1) => \vtg_lag_reg[0]_i_3_n_6\,
      O(0) => \vtg_lag_reg[0]_i_3_n_7\,
      S(3 downto 1) => vtg_lag_reg(3 downto 1),
      S(0) => \vtg_lag[0]_i_4_n_0\
    );
\vtg_lag_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[8]_i_1_n_5\,
      Q => vtg_lag_reg(10),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[8]_i_1_n_4\,
      Q => vtg_lag_reg(11),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[12]_i_1_n_7\,
      Q => vtg_lag_reg(12),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vtg_lag_reg[8]_i_1_n_0\,
      CO(3) => \vtg_lag_reg[12]_i_1_n_0\,
      CO(2) => \vtg_lag_reg[12]_i_1_n_1\,
      CO(1) => \vtg_lag_reg[12]_i_1_n_2\,
      CO(0) => \vtg_lag_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vtg_lag_reg[12]_i_1_n_4\,
      O(2) => \vtg_lag_reg[12]_i_1_n_5\,
      O(1) => \vtg_lag_reg[12]_i_1_n_6\,
      O(0) => \vtg_lag_reg[12]_i_1_n_7\,
      S(3 downto 1) => \vtg_lag_reg__0\(15 downto 13),
      S(0) => vtg_lag_reg(12)
    );
\vtg_lag_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[12]_i_1_n_6\,
      Q => \vtg_lag_reg__0\(13),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[12]_i_1_n_5\,
      Q => \vtg_lag_reg__0\(14),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[12]_i_1_n_4\,
      Q => \vtg_lag_reg__0\(15),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[16]_i_1_n_7\,
      Q => \vtg_lag_reg__0\(16),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vtg_lag_reg[12]_i_1_n_0\,
      CO(3) => \vtg_lag_reg[16]_i_1_n_0\,
      CO(2) => \vtg_lag_reg[16]_i_1_n_1\,
      CO(1) => \vtg_lag_reg[16]_i_1_n_2\,
      CO(0) => \vtg_lag_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vtg_lag_reg[16]_i_1_n_4\,
      O(2) => \vtg_lag_reg[16]_i_1_n_5\,
      O(1) => \vtg_lag_reg[16]_i_1_n_6\,
      O(0) => \vtg_lag_reg[16]_i_1_n_7\,
      S(3 downto 0) => \vtg_lag_reg__0\(19 downto 16)
    );
\vtg_lag_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[16]_i_1_n_6\,
      Q => \vtg_lag_reg__0\(17),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[16]_i_1_n_5\,
      Q => \vtg_lag_reg__0\(18),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[16]_i_1_n_4\,
      Q => \vtg_lag_reg__0\(19),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[0]_i_3_n_6\,
      Q => vtg_lag_reg(1),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[20]_i_1_n_7\,
      Q => \vtg_lag_reg__0\(20),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vtg_lag_reg[16]_i_1_n_0\,
      CO(3) => \vtg_lag_reg[20]_i_1_n_0\,
      CO(2) => \vtg_lag_reg[20]_i_1_n_1\,
      CO(1) => \vtg_lag_reg[20]_i_1_n_2\,
      CO(0) => \vtg_lag_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vtg_lag_reg[20]_i_1_n_4\,
      O(2) => \vtg_lag_reg[20]_i_1_n_5\,
      O(1) => \vtg_lag_reg[20]_i_1_n_6\,
      O(0) => \vtg_lag_reg[20]_i_1_n_7\,
      S(3 downto 0) => \vtg_lag_reg__0\(23 downto 20)
    );
\vtg_lag_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[20]_i_1_n_6\,
      Q => \vtg_lag_reg__0\(21),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[20]_i_1_n_5\,
      Q => \vtg_lag_reg__0\(22),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[20]_i_1_n_4\,
      Q => \vtg_lag_reg__0\(23),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[24]_i_1_n_7\,
      Q => \vtg_lag_reg__0\(24),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vtg_lag_reg[20]_i_1_n_0\,
      CO(3) => \vtg_lag_reg[24]_i_1_n_0\,
      CO(2) => \vtg_lag_reg[24]_i_1_n_1\,
      CO(1) => \vtg_lag_reg[24]_i_1_n_2\,
      CO(0) => \vtg_lag_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vtg_lag_reg[24]_i_1_n_4\,
      O(2) => \vtg_lag_reg[24]_i_1_n_5\,
      O(1) => \vtg_lag_reg[24]_i_1_n_6\,
      O(0) => \vtg_lag_reg[24]_i_1_n_7\,
      S(3 downto 0) => \vtg_lag_reg__0\(27 downto 24)
    );
\vtg_lag_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[24]_i_1_n_6\,
      Q => \vtg_lag_reg__0\(25),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[24]_i_1_n_5\,
      Q => \vtg_lag_reg__0\(26),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[24]_i_1_n_4\,
      Q => \vtg_lag_reg__0\(27),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[28]_i_1_n_7\,
      Q => \vtg_lag_reg__0\(28),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vtg_lag_reg[24]_i_1_n_0\,
      CO(3) => \NLW_vtg_lag_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \vtg_lag_reg[28]_i_1_n_1\,
      CO(1) => \vtg_lag_reg[28]_i_1_n_2\,
      CO(0) => \vtg_lag_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vtg_lag_reg[28]_i_1_n_4\,
      O(2) => \vtg_lag_reg[28]_i_1_n_5\,
      O(1) => \vtg_lag_reg[28]_i_1_n_6\,
      O(0) => \vtg_lag_reg[28]_i_1_n_7\,
      S(3 downto 0) => \vtg_lag_reg__0\(31 downto 28)
    );
\vtg_lag_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[28]_i_1_n_6\,
      Q => \vtg_lag_reg__0\(29),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[0]_i_3_n_5\,
      Q => vtg_lag_reg(2),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[28]_i_1_n_5\,
      Q => \vtg_lag_reg__0\(30),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[28]_i_1_n_4\,
      Q => \vtg_lag_reg__0\(31),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[0]_i_3_n_4\,
      Q => vtg_lag_reg(3),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[4]_i_1_n_7\,
      Q => vtg_lag_reg(4),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vtg_lag_reg[0]_i_3_n_0\,
      CO(3) => \vtg_lag_reg[4]_i_1_n_0\,
      CO(2) => \vtg_lag_reg[4]_i_1_n_1\,
      CO(1) => \vtg_lag_reg[4]_i_1_n_2\,
      CO(0) => \vtg_lag_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vtg_lag_reg[4]_i_1_n_4\,
      O(2) => \vtg_lag_reg[4]_i_1_n_5\,
      O(1) => \vtg_lag_reg[4]_i_1_n_6\,
      O(0) => \vtg_lag_reg[4]_i_1_n_7\,
      S(3 downto 0) => vtg_lag_reg(7 downto 4)
    );
\vtg_lag_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[4]_i_1_n_6\,
      Q => vtg_lag_reg(5),
      S => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[4]_i_1_n_5\,
      Q => vtg_lag_reg(6),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[4]_i_1_n_4\,
      Q => vtg_lag_reg(7),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[8]_i_1_n_7\,
      Q => vtg_lag_reg(8),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_lag_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vtg_lag_reg[4]_i_1_n_0\,
      CO(3) => \vtg_lag_reg[8]_i_1_n_0\,
      CO(2) => \vtg_lag_reg[8]_i_1_n_1\,
      CO(1) => \vtg_lag_reg[8]_i_1_n_2\,
      CO(0) => \vtg_lag_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vtg_lag_reg[8]_i_1_n_4\,
      O(2) => \vtg_lag_reg[8]_i_1_n_5\,
      O(1) => \vtg_lag_reg[8]_i_1_n_6\,
      O(0) => \vtg_lag_reg[8]_i_1_n_7\,
      S(3 downto 0) => vtg_lag_reg(11 downto 8)
    );
\vtg_lag_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_lag,
      D => \vtg_lag_reg[8]_i_1_n_6\,
      Q => vtg_lag_reg(9),
      R => \vtg_lag[0]_i_1_n_0\
    );
\vtg_sof_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(0),
      O => p_0_in(0)
    );
\vtg_sof_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(0),
      I1 => \vtg_sof_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\vtg_sof_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(0),
      I1 => \vtg_sof_cnt_reg__0\(1),
      I2 => \vtg_sof_cnt_reg__0\(2),
      O => p_0_in(2)
    );
\vtg_sof_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(1),
      I1 => \vtg_sof_cnt_reg__0\(0),
      I2 => \vtg_sof_cnt_reg__0\(2),
      I3 => \vtg_sof_cnt_reg__0\(3),
      O => p_0_in(3)
    );
\vtg_sof_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(2),
      I1 => \vtg_sof_cnt_reg__0\(0),
      I2 => \vtg_sof_cnt_reg__0\(1),
      I3 => \vtg_sof_cnt_reg__0\(3),
      I4 => \vtg_sof_cnt_reg__0\(4),
      O => p_0_in(4)
    );
\vtg_sof_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(3),
      I1 => \vtg_sof_cnt_reg__0\(1),
      I2 => \vtg_sof_cnt_reg__0\(0),
      I3 => \vtg_sof_cnt_reg__0\(2),
      I4 => \vtg_sof_cnt_reg__0\(4),
      I5 => \vtg_sof_cnt_reg__0\(5),
      O => p_0_in(5)
    );
\vtg_sof_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \vtg_sof_cnt[7]_i_4_n_0\,
      I1 => \vtg_sof_cnt_reg__0\(6),
      O => p_0_in(6)
    );
\vtg_sof_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"071BFFFF"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => aresetn,
      O => \vtg_sof_cnt[7]_i_1_n_0\
    );
\vtg_sof_cnt[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => vtg_sof_dly,
      O => vtg_sof_cnt
    );
\vtg_sof_cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \vtg_sof_cnt[7]_i_4_n_0\,
      I1 => \vtg_sof_cnt_reg__0\(6),
      I2 => \vtg_sof_cnt_reg__0\(7),
      O => p_0_in(7)
    );
\vtg_sof_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \vtg_sof_cnt_reg__0\(5),
      I1 => \vtg_sof_cnt_reg__0\(3),
      I2 => \vtg_sof_cnt_reg__0\(1),
      I3 => \vtg_sof_cnt_reg__0\(0),
      I4 => \vtg_sof_cnt_reg__0\(2),
      I5 => \vtg_sof_cnt_reg__0\(4),
      O => \vtg_sof_cnt[7]_i_4_n_0\
    );
\vtg_sof_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_sof_cnt,
      D => p_0_in(0),
      Q => \vtg_sof_cnt_reg__0\(0),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\vtg_sof_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_sof_cnt,
      D => p_0_in(1),
      Q => \vtg_sof_cnt_reg__0\(1),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\vtg_sof_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_sof_cnt,
      D => p_0_in(2),
      Q => \vtg_sof_cnt_reg__0\(2),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\vtg_sof_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_sof_cnt,
      D => p_0_in(3),
      Q => \vtg_sof_cnt_reg__0\(3),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\vtg_sof_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_sof_cnt,
      D => p_0_in(4),
      Q => \vtg_sof_cnt_reg__0\(4),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\vtg_sof_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_sof_cnt,
      D => p_0_in(5),
      Q => \vtg_sof_cnt_reg__0\(5),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\vtg_sof_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_sof_cnt,
      D => p_0_in(6),
      Q => \vtg_sof_cnt_reg__0\(6),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
\vtg_sof_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vtg_sof_cnt,
      D => p_0_in(7),
      Q => \vtg_sof_cnt_reg__0\(7),
      R => \vtg_sof_cnt[7]_i_1_n_0\
    );
vtg_sof_dly_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => vtg_active_video,
      I1 => vtg_vsync_bp_reg_n_0,
      I2 => vtg_de_dly,
      O => vtg_sof
    );
vtg_sof_dly_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_sof,
      Q => vtg_sof_dly,
      R => \status_reg[28]_i_1_n_0\
    );
vtg_vsync_bp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AEAA0000"
    )
        port map (
      I0 => vtg_vsync_bp_reg_n_0,
      I1 => vid_io_out_ce,
      I2 => vtg_vsync,
      I3 => vtg_vsync_dly,
      I4 => aresetn,
      I5 => vtg_de_dly,
      O => vtg_vsync_bp_i_1_n_0
    );
vtg_vsync_bp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => vtg_vsync_bp_i_1_n_0,
      Q => vtg_vsync_bp_reg_n_0,
      R => '0'
    );
vtg_vsync_dly_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vid_io_out_ce,
      D => vtg_vsync,
      Q => vtg_vsync_dly,
      R => \status_reg[28]_i_1_n_0\
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
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
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
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \gwdc.wr_data_count_i[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \gwdc.wr_data_count_i[3]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  \count_value_i_reg[1]_0\(0) <= \^count_value_i_reg[1]_0\(0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \out\(0),
      I2 => rd_en,
      I3 => \out\(1),
      I4 => ram_empty_i,
      I5 => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A8AA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => ram_empty_i,
      I4 => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \out\(0),
      I2 => rd_en,
      I3 => \out\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_0\(0),
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
      Q => count_value_i(0),
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
      Q => \^count_value_i_reg[1]_0\(0),
      R => '0'
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      O => \^di\(0)
    );
\gwdc.wr_data_count_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => Q(1),
      I2 => \^count_value_i_reg[1]_0\(0),
      I3 => \count_value_i_reg[1]_1\(1),
      O => S(1)
    );
\gwdc.wr_data_count_i[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      I2 => \count_value_i_reg[1]_1\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[13]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \count_value_i_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[12]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clr_full : in STD_LOGIC;
    ram_wr_en_pf : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \count_value_i[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_15_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_16_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_3\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \NLW_count_value_i_reg[13]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_value_i_reg[13]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  CO(0) <= \^co\(0);
  Q(12 downto 0) <= \^q\(12 downto 0);
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
\count_value_i[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[3]_i_1__0_n_7\,
      Q => \^q\(0),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[11]_i_1__0_n_5\,
      Q => \^q\(10),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[11]_i_1__0_n_4\,
      Q => \^q\(11),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[11]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__0_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[13]_i_1__0_n_7\,
      Q => \^q\(12),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[13]_i_1__0_n_6\,
      Q => \count_value_i_reg_n_0_[13]\,
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[13]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__0_n_0\,
      CO(3 downto 1) => \NLW_count_value_i_reg[13]_i_1__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_value_i_reg[13]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_value_i_reg[13]_i_1__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_value_i_reg[13]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[13]_i_1__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \count_value_i_reg_n_0_[13]\,
      S(0) => \^q\(12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[3]_i_1__0_n_6\,
      Q => \^q\(1),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[3]_i_1__0_n_5\,
      Q => \^q\(2),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[3]_i_1__0_n_4\,
      Q => \^q\(3),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[3]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__0_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__0_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[7]_i_1__0_n_7\,
      Q => \^q\(4),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[7]_i_1__0_n_6\,
      Q => \^q\(5),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[7]_i_1__0_n_5\,
      Q => \^q\(6),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[7]_i_1__0_n_4\,
      Q => \^q\(7),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__0_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[11]_i_1__0_n_7\,
      Q => \^q\(8),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i_reg[11]_i_1__0_n_6\,
      Q => \^q\(9),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003B2A2A2A"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      I1 => \^count_value_i_reg[0]_0\,
      I2 => \^co\(0),
      I3 => going_full1,
      I4 => ram_wr_en_pf,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[13]_0\(6),
      I2 => \count_value_i_reg[13]_0\(8),
      I3 => \^q\(8),
      I4 => \count_value_i_reg[13]_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[13]_0\(3),
      I2 => \count_value_i_reg[13]_0\(5),
      I3 => \^q\(5),
      I4 => \count_value_i_reg[13]_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[13]_0\(0),
      I2 => \count_value_i_reg[13]_0\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[13]_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \count_value_i_reg[11]_0\(9),
      I2 => \count_value_i_reg[11]_0\(11),
      I3 => \^q\(11),
      I4 => \count_value_i_reg[11]_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[11]_0\(6),
      I2 => \count_value_i_reg[11]_0\(8),
      I3 => \^q\(8),
      I4 => \count_value_i_reg[11]_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[11]_0\(3),
      I2 => \count_value_i_reg[11]_0\(5),
      I3 => \^q\(5),
      I4 => \count_value_i_reg[11]_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_15_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[11]_0\(0),
      I2 => \count_value_i_reg[11]_0\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[11]_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_16_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \count_value_i_reg[13]_0\(9),
      I2 => \count_value_i_reg[13]_0\(11),
      I3 => \^q\(11),
      I4 => \count_value_i_reg[13]_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_0\,
      CO(3 downto 1) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^co\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \count_value_i_reg[12]_0\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_0\,
      CO(3 downto 1) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => going_full1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \count_value_i_reg[12]_1\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_0\,
      CO(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_1\,
      CO(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_2\,
      CO(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0\,
      S(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0\,
      S(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0\,
      S(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_0\,
      CO(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_1\,
      CO(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_2\,
      CO(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0\,
      S(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0\,
      S(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_15_n_0\,
      S(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_16_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAAAFFFFBFBF"
    )
        port map (
      I0 => clr_full,
      I1 => ram_wr_en_pf,
      I2 => going_full1,
      I3 => \^co\(0),
      I4 => \^count_value_i_reg[0]_0\,
      I5 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \count_value_i_reg[13]_0\(11),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \count_value_i_reg[13]_0\(10),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \count_value_i_reg[13]_0\(9),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i_reg[13]_0\(8),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \count_value_i_reg[13]_0\(12),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[13]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[13]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[13]_0\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \count_value_i_reg[13]_0\(7),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[13]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i_reg[13]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i_reg[13]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^count_value_i_reg[0]_0\
    );
\gwdc.wr_data_count_i[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(10),
      I1 => \count_value_i_reg[13]_0\(10),
      I2 => \^q\(11),
      I3 => \count_value_i_reg[13]_0\(11),
      O => \grdc.rd_data_count_i_reg[11]\(3)
    );
\gwdc.wr_data_count_i[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(9),
      I1 => \count_value_i_reg[13]_0\(9),
      I2 => \^q\(10),
      I3 => \count_value_i_reg[13]_0\(10),
      O => \grdc.rd_data_count_i_reg[11]\(2)
    );
\gwdc.wr_data_count_i[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i_reg[13]_0\(8),
      I2 => \^q\(9),
      I3 => \count_value_i_reg[13]_0\(9),
      O => \grdc.rd_data_count_i_reg[11]\(1)
    );
\gwdc.wr_data_count_i[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \count_value_i_reg[13]_0\(7),
      I2 => \^q\(8),
      I3 => \count_value_i_reg[13]_0\(8),
      O => \grdc.rd_data_count_i_reg[11]\(0)
    );
\gwdc.wr_data_count_i[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(12),
      I1 => \count_value_i_reg[13]_0\(12),
      I2 => \count_value_i_reg_n_0_[13]\,
      I3 => \count_value_i_reg[13]_0\(13),
      O => S(1)
    );
\gwdc.wr_data_count_i[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(11),
      I1 => \count_value_i_reg[13]_0\(11),
      I2 => \^q\(12),
      I3 => \count_value_i_reg[13]_0\(12),
      O => S(0)
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[13]_0\(1),
      O => DI(0)
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[13]_0\(2),
      I2 => \^q\(3),
      I3 => \count_value_i_reg[13]_0\(3),
      O => \grdc.rd_data_count_i_reg[3]\(0)
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[13]_0\(6),
      I2 => \^q\(7),
      I3 => \count_value_i_reg[13]_0\(7),
      O => \grdc.rd_data_count_i_reg[7]\(3)
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i_reg[13]_0\(5),
      I2 => \^q\(6),
      I3 => \count_value_i_reg[13]_0\(6),
      O => \grdc.rd_data_count_i_reg[7]\(2)
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i_reg[13]_0\(4),
      I2 => \^q\(5),
      I3 => \count_value_i_reg[13]_0\(5),
      O => \grdc.rd_data_count_i_reg[7]\(1)
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[13]_0\(3),
      I2 => \^q\(4),
      I3 => \count_value_i_reg[13]_0\(4),
      O => \grdc.rd_data_count_i_reg[7]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_wr_en_pf : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[10]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[12]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    d_out_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[11]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[12]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[12]_3\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count_value_i_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_value_i_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gwdc.wr_data_count_i_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gwdc.wr_data_count_i_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[3]_i_1_n_7\,
      Q => \^q\(0),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[11]_i_1_n_5\,
      Q => \^q\(10),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[11]_i_1_n_4\,
      Q => \^q\(11),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1_n_4\,
      O(2) => \count_value_i_reg[11]_i_1_n_5\,
      O(1) => \count_value_i_reg[11]_i_1_n_6\,
      O(0) => \count_value_i_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[13]_i_1_n_7\,
      Q => \^q\(12),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[13]_i_1_n_6\,
      Q => \^q\(13),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_value_i_reg[13]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_value_i_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_value_i_reg[13]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_value_i_reg[13]_i_1_n_6\,
      O(0) => \count_value_i_reg[13]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^q\(13 downto 12)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[3]_i_1_n_6\,
      Q => \^q\(1),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[3]_i_1_n_5\,
      Q => \^q\(2),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[3]_i_1_n_4\,
      Q => \^q\(3),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => S(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[7]_i_1_n_7\,
      Q => \^q\(4),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[7]_i_1_n_6\,
      Q => \^q\(5),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[7]_i_1_n_5\,
      Q => \^q\(6),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[7]_i_1_n_4\,
      Q => \^q\(7),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[11]_i_1_n_7\,
      Q => \^q\(8),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[11]_i_1_n_6\,
      Q => \^q\(9),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \count_value_i_reg[12]_3\(11),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I1 => going_empty1,
      I2 => CO(0),
      I3 => ram_wr_en_pf,
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \count_value_i_reg[11]_0\(9),
      I2 => \count_value_i_reg[11]_0\(11),
      I3 => \^q\(11),
      I4 => \count_value_i_reg[11]_0\(10),
      I5 => \^q\(10),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[11]_0\(6),
      I2 => \count_value_i_reg[11]_0\(8),
      I3 => \^q\(8),
      I4 => \count_value_i_reg[11]_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[11]_0\(3),
      I2 => \count_value_i_reg[11]_0\(5),
      I3 => \^q\(5),
      I4 => \count_value_i_reg[11]_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_7_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[11]_0\(0),
      I2 => \count_value_i_reg[11]_0\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[11]_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_8_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_0\,
      CO(3 downto 1) => \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => going_empty1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \count_value_i_reg[12]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_0\,
      CO(2) => \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_1\,
      CO(1) => \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_2\,
      CO(0) => \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      S(2) => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\,
      S(1) => \gen_pntr_flags_cc.ram_empty_i_i_7_n_0\,
      S(0) => \gen_pntr_flags_cc.ram_empty_i_i_8_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\(11 downto 8),
      S(3 downto 0) => \count_value_i_reg[11]_1\(3 downto 0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_0\,
      CO(3 downto 0) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\(12),
      S(3 downto 1) => B"000",
      S(0) => \count_value_i_reg[12]_2\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 1) => \^q\(3 downto 1),
      DI(0) => d_out_reg(0),
      O(3 downto 0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\(3 downto 0),
      S(3 downto 0) => \count_value_i_reg[3]_0\(3 downto 0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\(7 downto 4),
      S(3 downto 0) => \count_value_i_reg[7]_0\(3 downto 0)
    );
\gwdc.wr_data_count_i[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      I1 => \count_value_i_reg[12]_3\(9),
      O => \gwdc.wr_data_count_i[11]_i_2_n_0\
    );
\gwdc.wr_data_count_i[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \count_value_i_reg[12]_3\(8),
      O => \gwdc.wr_data_count_i[11]_i_3_n_0\
    );
\gwdc.wr_data_count_i[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i_reg[12]_3\(7),
      O => \gwdc.wr_data_count_i[11]_i_4_n_0\
    );
\gwdc.wr_data_count_i[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \count_value_i_reg[12]_3\(6),
      O => \gwdc.wr_data_count_i[11]_i_5_n_0\
    );
\gwdc.wr_data_count_i[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(11),
      I1 => \count_value_i_reg[12]_3\(10),
      O => \gwdc.wr_data_count_i[13]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[12]_3\(1),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[12]_3\(0),
      I3 => \count_value_i_reg[12]_3\(1),
      I4 => \^q\(2),
      O => \gwdc.wr_data_count_i[3]_i_6_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[12]_3\(5),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i_reg[12]_3\(4),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i_reg[12]_3\(3),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[12]_3\(2),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(3) => \gwdc.wr_data_count_i_reg[11]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[11]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[11]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[11]_i_2_n_0\,
      DI(2) => \gwdc.wr_data_count_i[11]_i_3_n_0\,
      DI(1) => \gwdc.wr_data_count_i[11]_i_4_n_0\,
      DI(0) => \gwdc.wr_data_count_i[11]_i_5_n_0\,
      O(3 downto 0) => D(11 downto 8),
      S(3 downto 0) => \count_value_i_reg[10]_0\(3 downto 0)
    );
\gwdc.wr_data_count_i_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[11]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gwdc.wr_data_count_i_reg[13]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gwdc.wr_data_count_i_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gwdc.wr_data_count_i[13]_i_2_n_0\,
      O(3 downto 2) => \NLW_gwdc.wr_data_count_i_reg[13]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => D(13 downto 12),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \count_value_i_reg[12]_1\(1 downto 0)
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \count_value_i_reg[2]_0\(2),
      S(2) => \gwdc.wr_data_count_i[3]_i_6_n_0\,
      S(1 downto 0) => \count_value_i_reg[2]_0\(1 downto 0)
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      DI(2) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      DI(1) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      DI(0) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \count_value_i_reg[6]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_value_i_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__1_n_7\,
      Q => \^q\(0),
      S => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__1_n_5\,
      Q => \^q\(10),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__1_n_4\,
      Q => \^q\(11),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[11]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__1_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[12]_i_1_n_7\,
      Q => \count_value_i_reg_n_0_[12]\,
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__1_n_0\,
      CO(3 downto 0) => \NLW_count_value_i_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_value_i_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_value_i_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \count_value_i_reg_n_0_[12]\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__1_n_6\,
      Q => \^q\(1),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__1_n_5\,
      Q => \^q\(2),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__1_n_4\,
      Q => \^q\(3),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[3]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__1_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__1_n_7\,
      Q => \^q\(4),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__1_n_6\,
      Q => \^q\(5),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__1_n_5\,
      Q => \^q\(6),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__1_n_4\,
      Q => \^q\(7),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[7]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__1_n_7\,
      Q => \^q\(8),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__1_n_6\,
      Q => \^q\(9),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[12]\,
      I1 => \count_value_i_reg[12]_0\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_reg_0 : in STD_LOGIC;
    \count_value_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_wr_en_pf : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i_reg[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[13]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_value_i_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[3]_i_1__2_n_7\,
      Q => \^q\(0),
      S => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[11]_i_1__2_n_5\,
      Q => \^q\(10),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[11]_i_1__2_n_4\,
      Q => \^q\(11),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[11]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(3) => \count_value_i_reg[11]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[11]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__2_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[12]_i_1__0_n_7\,
      Q => \count_value_i_reg_n_0_[12]\,
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[11]_i_1__2_n_0\,
      CO(3 downto 0) => \NLW_count_value_i_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_value_i_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_value_i_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \count_value_i_reg_n_0_[12]\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[3]_i_1__2_n_6\,
      Q => \^q\(1),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[3]_i_1__2_n_5\,
      Q => \^q\(2),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[3]_i_1__2_n_4\,
      Q => \^q\(3),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[3]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__2_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => d_out_reg(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[7]_i_1__2_n_7\,
      Q => \^q\(4),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[7]_i_1__2_n_6\,
      Q => \^q\(5),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[7]_i_1__2_n_5\,
      Q => \^q\(6),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[7]_i_1__2_n_4\,
      Q => \^q\(7),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[7]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__2_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[11]_i_1__2_n_7\,
      Q => \^q\(8),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => ram_wr_en_pf,
      D => \count_value_i_reg[11]_i_1__2_n_6\,
      Q => \^q\(9),
      R => \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[12]\,
      I1 => \count_value_i_reg[12]_0\(12),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \count_value_i_reg[12]_0\(11),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \count_value_i_reg[12]_0\(10),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \count_value_i_reg[12]_0\(9),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \count_value_i_reg[12]_0\(8),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[12]\,
      I1 => \count_value_i_reg[12]_0\(12),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[13]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[12]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[12]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[12]_0\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[12]_0\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \count_value_i_reg[12]_0\(7),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[12]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i_reg[12]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i_reg[12]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 0) => D(11 downto 8),
      S(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_2_n_0\,
      S(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_3_n_0\,
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_4_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => D(12),
      S(3 downto 1) => B"000",
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[13]_i_2_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => d_out_reg_0,
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0\,
      S(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0\,
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0\,
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0\,
      S(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0\,
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\ : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    write_only : out STD_LOGIC;
    read_only : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \count_value_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_i217_in : in STD_LOGIC;
    ram_wr_en_pf_q : in STD_LOGIC;
    ram_rd_en_pf_q : in STD_LOGIC;
    prog_full : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^clr_full\ : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair1";
begin
  clr_full <= \^clr_full\;
  rst_d1 <= \^rst_d1\;
\count_value_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I3 => wr_en,
      I4 => \count_value_i_reg[0]\(0),
      O => S(0)
    );
\count_value_i[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I3 => wr_en,
      I4 => \count_value_i_reg[0]_0\(0),
      O => \count_value_i_reg[3]\(0)
    );
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => \^clr_full\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0010FFFF"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => wr_en,
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I4 => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I5 => \gen_fwft.empty_fwft_i_reg\,
      O => DI(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg\,
      I1 => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I3 => wr_en,
      I4 => \^rst_d1\,
      O => read_only
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000404"
    )
        port map (
      I0 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \^rst_d1\,
      I3 => \gen_fwft.empty_fwft_i_reg\,
      I4 => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      O => write_only
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I3 => wr_en,
      I4 => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550040"
    )
        port map (
      I0 => \^clr_full\,
      I1 => prog_full_i217_in,
      I2 => ram_wr_en_pf_q,
      I3 => ram_rd_en_pf_q,
      I4 => prog_full,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    ram_wr_en_pf : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ : out STD_LOGIC;
    underflow_i0 : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    write_only_q : in STD_LOGIC;
    prog_empty : in STD_LOGIC;
    prog_empty_i1 : in STD_LOGIC;
    read_only_q : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    \count_value_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ram_wr_en_pf\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of wr_rst_busy_INST_0 : label is "soft_lutpair2";
begin
  Q(0) <= \^q\(0);
  ram_wr_en_pf <= \^ram_wr_en_pf\;
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F00D0"
    )
        port map (
      I0 => \^ram_wr_en_pf\,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I2 => \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I3 => \gen_fwft.empty_fwft_i_reg\,
      I4 => \count_value_i_reg[0]\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFC4C"
    )
        port map (
      I0 => write_only_q,
      I1 => prog_empty,
      I2 => prog_empty_i1,
      I3 => read_only_q,
      I4 => \^q\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\
    );
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => \^ram_wr_en_pf\
    );
\grdc.rd_data_count_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^q\(0),
      I1 => \out\(0),
      I2 => \out\(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg\,
      I1 => \^q\(0),
      I2 => rd_en,
      O => underflow_i0
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
      I0 => \^q\(0),
      I1 => rst_d1,
      O => wr_rst_busy
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
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 10 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
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
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 90112;
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
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8192;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
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
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 13;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 8191;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "p0_d4";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 3;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 8191;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "p0_d4";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 3;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 90112;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 8191;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 3;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 8191;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "p0_d4";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 4;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 7;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 8191;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "p0_d4";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 4;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 90112;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 8191;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 4;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 7;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 8191;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "p0_d3";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 8;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 10;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 8191;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "p0_d3";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 8;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 10;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 90112;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 8191;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 8;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 10;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
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
\gen_wr_a.gen_word_narrow.mem_reg_0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 2) => addra(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"00",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 2) => addrb(12 downto 0),
      ADDRBWRADDR(1 downto 0) => B"00",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 4) => B"0000000000000000000000000000",
      DIADI(3 downto 0) => dina(3 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000001111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 4) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED\(31 downto 4),
      DOBDO(3 downto 0) => doutb(3 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED\,
      WEA(3) => ena,
      WEA(2) => ena,
      WEA(1) => ena,
      WEA(0) => ena,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_1\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 2) => addra(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"00",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 2) => addrb(12 downto 0),
      ADDRBWRADDR(1 downto 0) => B"00",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED\,
      DIADI(31 downto 4) => B"0000000000000000000000000000",
      DIADI(3 downto 0) => dina(7 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000000001111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 4) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED\(31 downto 4),
      DOBDO(3 downto 0) => doutb(7 downto 4),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED\,
      WEA(3) => ena,
      WEA(2) => ena,
      WEA(1) => ena,
      WEA(0) => ena,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_2\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 2) => addra(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"00",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 2) => addrb(12 downto 0),
      ADDRBWRADDR(1 downto 0) => B"00",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED\,
      DIADI(31 downto 3) => B"00000000000000000000000000000",
      DIADI(2 downto 0) => dina(10 downto 8),
      DIBDI(31 downto 0) => B"00000000000000000000000000000111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 3) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED\(31 downto 3),
      DOBDO(2 downto 0) => doutb(10 downto 8),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED\,
      WEA(3) => ena,
      WEA(2) => ena,
      WEA(1) => ena,
      WEA(0) => ena,
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single is
  port (
    src_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single is
  signal xpm_cdc_single_inst_n_0 : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
xpm_cdc_single_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
     port map (
      dest_clk => aclk,
      dest_out => xpm_cdc_single_inst_n_0,
      src_clk => '0',
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single__xdcDup__1\ is
  port (
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single__xdcDup__1\ : entity is "v_axi4s_vid_out_v4_0_9_cdc_single";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single__xdcDup__1\ is
  signal xpm_cdc_single_inst_n_0 : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
begin
xpm_cdc_single_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\
     port map (
      dest_clk => aclk,
      dest_out => xpm_cdc_single_inst_n_0,
      src_clk => '0',
      src_in => '0'
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
    din : in STD_LOGIC_VECTOR ( 10 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 13 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 13 downto 0 );
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
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
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
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8192;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 90112;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8192;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8187;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8187;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 14;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 14;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 13;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0707";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 14;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 14;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 13;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_fwft.curr_fwft_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \gen_fwft.curr_fwft_state\ : signal is "yes";
  signal \gen_fwft.empty_fwft_i_reg0\ : STD_LOGIC;
  signal \gen_fwft.next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal overflow_i0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal prog_empty_i1 : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal prog_full_i217_in : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_pf_q : STD_LOGIC;
  signal ram_wr_en_pf : STD_LOGIC;
  signal ram_wr_en_pf_q : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_17 : STD_LOGIC;
  signal rdp_inst_n_18 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdp_inst_n_27 : STD_LOGIC;
  signal rdp_inst_n_28 : STD_LOGIC;
  signal rdp_inst_n_29 : STD_LOGIC;
  signal rdp_inst_n_30 : STD_LOGIC;
  signal rdp_inst_n_31 : STD_LOGIC;
  signal rdp_inst_n_32 : STD_LOGIC;
  signal rdp_inst_n_33 : STD_LOGIC;
  signal rdp_inst_n_34 : STD_LOGIC;
  signal rdp_inst_n_35 : STD_LOGIC;
  signal rdp_inst_n_36 : STD_LOGIC;
  signal rdp_inst_n_37 : STD_LOGIC;
  signal rdp_inst_n_38 : STD_LOGIC;
  signal rdp_inst_n_39 : STD_LOGIC;
  signal rdp_inst_n_40 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_10 : STD_LOGIC;
  signal rdpp1_inst_n_11 : STD_LOGIC;
  signal rdpp1_inst_n_12 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal rdpp1_inst_n_9 : STD_LOGIC;
  signal read_only : STD_LOGIC;
  signal read_only_q : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_3 : STD_LOGIC;
  signal rst_d1_inst_n_7 : STD_LOGIC;
  signal rst_d1_inst_n_8 : STD_LOGIC;
  signal rst_d1_inst_n_9 : STD_LOGIC;
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal write_only : STD_LOGIC;
  signal write_only_q : STD_LOGIC;
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrp_inst_n_42 : STD_LOGIC;
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_10 : STD_LOGIC;
  signal wrpp1_inst_n_11 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_25 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp1_inst_n_9 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_6 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute KEEP of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "yes";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 13;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 13;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
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
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 8191;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 90112;
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
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 8192;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
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
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 13;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 13;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 13;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 13;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  wr_ack <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state\(0),
      I1 => rd_en,
      I2 => \gen_fwft.curr_fwft_state\(1),
      I3 => ram_empty_i,
      O => \gen_fwft.next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_fwft.curr_fwft_state\(1),
      I2 => \gen_fwft.curr_fwft_state\(0),
      O => \gen_fwft.next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.next_fwft_state__0\(0),
      Q => \gen_fwft.curr_fwft_state\(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.next_fwft_state__0\(1),
      Q => \gen_fwft.curr_fwft_state\(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_fwft.curr_fwft_state\(0),
      I2 => \gen_fwft.curr_fwft_state\(1),
      I3 => \^empty\,
      O => \gen_fwft.empty_fwft_i_reg0\
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.empty_fwft_i_reg0\,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      Q(1 downto 0) => rd_pntr_ext(1 downto 0),
      S(1) => \gen_fwft.rdpp1_inst_n_0\,
      S(0) => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[1]_0\(0) => count_value_i(1),
      \count_value_i_reg[1]_1\(1 downto 0) => wr_pntr_ext(1 downto 0),
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0) => \^rd_rst_busy\,
      \out\(1 downto 0) => \gen_fwft.curr_fwft_state\(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_28,
      Q => \^full\,
      S => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_26,
      Q => full_n,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
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
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(10),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[10]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(11),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[11]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(12),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[12]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(8),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(9),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_4_n_0\,
      O => prog_empty_i1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[11]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[10]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[12]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7]\,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8]\,
      I5 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_4,
      Q => \^prog_empty\,
      R => '0'
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => read_only,
      Q => read_only_q,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => write_only,
      Q => write_only_q,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(10),
      Q => diff_pntr_pf_q(10),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(11),
      Q => diff_pntr_pf_q(11),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(12),
      Q => diff_pntr_pf_q(12),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(13),
      Q => diff_pntr_pf_q(13),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(1),
      Q => diff_pntr_pf_q(1),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(9),
      Q => diff_pntr_pf_q(9),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\,
      I2 => diff_pntr_pf_q(8),
      I3 => diff_pntr_pf_q(9),
      I4 => diff_pntr_pf_q(6),
      I5 => diff_pntr_pf_q(7),
      O => prog_full_i217_in
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => diff_pntr_pf_q(4),
      I1 => diff_pntr_pf_q(11),
      I2 => diff_pntr_pf_q(10),
      I3 => diff_pntr_pf_q(12),
      I4 => diff_pntr_pf_q(13),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => diff_pntr_pf_q(1),
      I1 => diff_pntr_pf_q(5),
      I2 => diff_pntr_pf_q(2),
      I3 => diff_pntr_pf_q(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_9,
      Q => \^prog_full\,
      S => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_27,
      Q => ram_rd_en_pf_q,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_wr_en_pf,
      Q => ram_wr_en_pf_q,
      R => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(12 downto 0) => wr_pntr_ext(12 downto 0),
      addrb(12 downto 0) => rd_pntr_ext(12 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(10 downto 0) => din(10 downto 0),
      dinb(10 downto 0) => B"00000000000",
      douta(10 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(10 downto 0),
      doutb(10 downto 0) => dout(10 downto 0),
      ena => ram_wr_en_pf,
      enb => rdp_inst_n_27,
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
      INIT => X"62"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state\(0),
      I1 => \gen_fwft.curr_fwft_state\(1),
      I2 => rd_en,
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
\grdc.rd_data_count_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(10),
      Q => rd_data_count(10),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(11),
      Q => rd_data_count(11),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(12),
      Q => rd_data_count(12),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(13),
      Q => rd_data_count(13),
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
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => rd_data_count(9),
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
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => wr_data_count(0),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(10),
      Q => wr_data_count(10),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(11),
      Q => wr_data_count(11),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(12),
      Q => wr_data_count(12),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(13),
      Q => wr_data_count(13),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => wr_data_count(1),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => wr_data_count(2),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => wr_data_count(3),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => wr_data_count(4),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => wr_data_count(5),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => wr_data_count(6),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => wr_data_count(7),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => wr_data_count(8),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => wr_data_count(9),
      R => \^rd_rst_busy\
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      CO(0) => leaving_empty0,
      DI(0) => rdp_inst_n_13,
      Q(12 downto 0) => rd_pntr_ext(12 downto 0),
      S(1) => rdp_inst_n_14,
      S(0) => rdp_inst_n_15,
      clr_full => clr_full,
      \count_value_i_reg[0]_0\ => rdp_inst_n_27,
      \count_value_i_reg[11]_0\(11) => wrpp1_inst_n_0,
      \count_value_i_reg[11]_0\(10) => wrpp1_inst_n_1,
      \count_value_i_reg[11]_0\(9) => wrpp1_inst_n_2,
      \count_value_i_reg[11]_0\(8) => wrpp1_inst_n_3,
      \count_value_i_reg[11]_0\(7) => wrpp1_inst_n_4,
      \count_value_i_reg[11]_0\(6) => wrpp1_inst_n_5,
      \count_value_i_reg[11]_0\(5) => wrpp1_inst_n_6,
      \count_value_i_reg[11]_0\(4) => wrpp1_inst_n_7,
      \count_value_i_reg[11]_0\(3) => wrpp1_inst_n_8,
      \count_value_i_reg[11]_0\(2) => wrpp1_inst_n_9,
      \count_value_i_reg[11]_0\(1) => wrpp1_inst_n_10,
      \count_value_i_reg[11]_0\(0) => wrpp1_inst_n_11,
      \count_value_i_reg[12]_0\(0) => wrp_inst_n_42,
      \count_value_i_reg[12]_1\(0) => wrpp1_inst_n_25,
      \count_value_i_reg[13]_0\(13) => wrp_inst_n_1,
      \count_value_i_reg[13]_0\(12 downto 0) => wr_pntr_ext(12 downto 0),
      \count_value_i_reg[1]_0\(0) => count_value_i(1),
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_28,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => \^full\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ => rdp_inst_n_26,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\(3) => rdp_inst_n_36,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\(2) => rdp_inst_n_37,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\(1) => rdp_inst_n_38,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]\(0) => rdp_inst_n_39,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\(0) => rdp_inst_n_40,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(2) => rdp_inst_n_29,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(1) => rdp_inst_n_30,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(0) => rdp_inst_n_31,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(3) => rdp_inst_n_32,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(2) => rdp_inst_n_33,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(1) => rdp_inst_n_34,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]\(0) => rdp_inst_n_35,
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0) => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[11]\(3) => rdp_inst_n_22,
      \grdc.rd_data_count_i_reg[11]\(2) => rdp_inst_n_23,
      \grdc.rd_data_count_i_reg[11]\(1) => rdp_inst_n_24,
      \grdc.rd_data_count_i_reg[11]\(0) => rdp_inst_n_25,
      \grdc.rd_data_count_i_reg[3]\(0) => rdp_inst_n_17,
      \grdc.rd_data_count_i_reg[7]\(3) => rdp_inst_n_18,
      \grdc.rd_data_count_i_reg[7]\(2) => rdp_inst_n_19,
      \grdc.rd_data_count_i_reg[7]\(1) => rdp_inst_n_20,
      \grdc.rd_data_count_i_reg[7]\(0) => rdp_inst_n_21,
      \out\(1 downto 0) => \gen_fwft.curr_fwft_state\(1 downto 0),
      ram_empty_i => ram_empty_i,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_27,
      Q(11) => rdpp1_inst_n_0,
      Q(10) => rdpp1_inst_n_1,
      Q(9) => rdpp1_inst_n_2,
      Q(8) => rdpp1_inst_n_3,
      Q(7) => rdpp1_inst_n_4,
      Q(6) => rdpp1_inst_n_5,
      Q(5) => rdpp1_inst_n_6,
      Q(4) => rdpp1_inst_n_7,
      Q(3) => rdpp1_inst_n_8,
      Q(2) => rdpp1_inst_n_9,
      Q(1) => rdpp1_inst_n_10,
      Q(0) => rdpp1_inst_n_11,
      S(0) => rdpp1_inst_n_12,
      \count_value_i_reg[12]_0\(0) => wr_pntr_ext(12),
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0) => \^rd_rst_busy\,
      \out\(1 downto 0) => \gen_fwft.curr_fwft_state\(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      DI(0) => p_1_in,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_27,
      Q(0) => \^rd_rst_busy\,
      S(0) => rst_d1_inst_n_7,
      clr_full => clr_full,
      \count_value_i_reg[0]\(0) => wr_pntr_ext(0),
      \count_value_i_reg[0]_0\(0) => wrpp1_inst_n_11,
      \count_value_i_reg[3]\(0) => rst_d1_inst_n_8,
      \gen_fwft.empty_fwft_i_reg\ => \^empty\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\ => rst_d1_inst_n_3,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ => rst_d1_inst_n_9,
      overflow_i0 => overflow_i0,
      prog_full => \^prog_full\,
      prog_full_i217_in => prog_full_i217_in,
      ram_rd_en_pf_q => ram_rd_en_pf_q,
      ram_wr_en_pf_q => ram_wr_en_pf_q,
      read_only => read_only,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only => write_only
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0\
     port map (
      CO(0) => leaving_empty0,
      D(13 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(13 downto 0),
      DI(1) => rdp_inst_n_13,
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_27,
      Q(13) => wrp_inst_n_1,
      Q(12 downto 0) => wr_pntr_ext(12 downto 0),
      S(0) => rst_d1_inst_n_7,
      \count_value_i_reg[10]_0\(3) => rdp_inst_n_22,
      \count_value_i_reg[10]_0\(2) => rdp_inst_n_23,
      \count_value_i_reg[10]_0\(1) => rdp_inst_n_24,
      \count_value_i_reg[10]_0\(0) => rdp_inst_n_25,
      \count_value_i_reg[11]_0\(11) => rdpp1_inst_n_0,
      \count_value_i_reg[11]_0\(10) => rdpp1_inst_n_1,
      \count_value_i_reg[11]_0\(9) => rdpp1_inst_n_2,
      \count_value_i_reg[11]_0\(8) => rdpp1_inst_n_3,
      \count_value_i_reg[11]_0\(7) => rdpp1_inst_n_4,
      \count_value_i_reg[11]_0\(6) => rdpp1_inst_n_5,
      \count_value_i_reg[11]_0\(5) => rdpp1_inst_n_6,
      \count_value_i_reg[11]_0\(4) => rdpp1_inst_n_7,
      \count_value_i_reg[11]_0\(3) => rdpp1_inst_n_8,
      \count_value_i_reg[11]_0\(2) => rdpp1_inst_n_9,
      \count_value_i_reg[11]_0\(1) => rdpp1_inst_n_10,
      \count_value_i_reg[11]_0\(0) => rdpp1_inst_n_11,
      \count_value_i_reg[11]_1\(3) => rdp_inst_n_36,
      \count_value_i_reg[11]_1\(2) => rdp_inst_n_37,
      \count_value_i_reg[11]_1\(1) => rdp_inst_n_38,
      \count_value_i_reg[11]_1\(0) => rdp_inst_n_39,
      \count_value_i_reg[12]_0\(0) => rdpp1_inst_n_12,
      \count_value_i_reg[12]_1\(1) => rdp_inst_n_14,
      \count_value_i_reg[12]_1\(0) => rdp_inst_n_15,
      \count_value_i_reg[12]_2\(0) => rdp_inst_n_40,
      \count_value_i_reg[12]_3\(11 downto 0) => rd_pntr_ext(12 downto 1),
      \count_value_i_reg[1]_0\(0) => count_value_i(1),
      \count_value_i_reg[2]_0\(2) => rdp_inst_n_17,
      \count_value_i_reg[2]_0\(1) => \gen_fwft.rdpp1_inst_n_0\,
      \count_value_i_reg[2]_0\(0) => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[3]_0\(3) => rdp_inst_n_29,
      \count_value_i_reg[3]_0\(2) => rdp_inst_n_30,
      \count_value_i_reg[3]_0\(1) => rdp_inst_n_31,
      \count_value_i_reg[3]_0\(0) => xpm_fifo_rst_inst_n_6,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_18,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_19,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_21,
      \count_value_i_reg[7]_0\(3) => rdp_inst_n_32,
      \count_value_i_reg[7]_0\(2) => rdp_inst_n_33,
      \count_value_i_reg[7]_0\(1) => rdp_inst_n_34,
      \count_value_i_reg[7]_0\(0) => rdp_inst_n_35,
      d_out_reg(0) => p_1_in,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\(0) => wrp_inst_n_42,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]\(12 downto 0) => diff_pntr_pe(12 downto 0),
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0) => \^rd_rst_busy\,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_wr_en_pf => ram_wr_en_pf,
      wr_clk => wr_clk
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1\
     port map (
      D(12 downto 0) => diff_pntr_pf_q0(13 downto 1),
      Q(11) => wrpp1_inst_n_0,
      Q(10) => wrpp1_inst_n_1,
      Q(9) => wrpp1_inst_n_2,
      Q(8) => wrpp1_inst_n_3,
      Q(7) => wrpp1_inst_n_4,
      Q(6) => wrpp1_inst_n_5,
      Q(5) => wrpp1_inst_n_6,
      Q(4) => wrpp1_inst_n_7,
      Q(3) => wrpp1_inst_n_8,
      Q(2) => wrpp1_inst_n_9,
      Q(1) => wrpp1_inst_n_10,
      Q(0) => wrpp1_inst_n_11,
      \count_value_i_reg[12]_0\(12 downto 0) => rd_pntr_ext(12 downto 0),
      d_out_reg(0) => rst_d1_inst_n_8,
      d_out_reg_0 => rst_d1_inst_n_3,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\(0) => wrpp1_inst_n_25,
      \gen_rst_cc.fifo_wr_rst_cc_reg[2]\(0) => \^rd_rst_busy\,
      ram_wr_en_pf => ram_wr_en_pf,
      wr_clk => wr_clk
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_27,
      Q(0) => \^rd_rst_busy\,
      SR(0) => \grdc.rd_data_count_i0\,
      \count_value_i_reg[0]\(0) => rd_pntr_ext(0),
      \gen_fwft.empty_fwft_i_reg\ => \^empty\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\(0) => xpm_fifo_rst_inst_n_6,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ => xpm_fifo_rst_inst_n_4,
      \out\(1 downto 0) => \gen_fwft.curr_fwft_state\(1 downto 0),
      prog_empty => \^prog_empty\,
      prog_empty_i1 => prog_empty_i1,
      ram_wr_en_pf => ram_wr_en_pf,
      rd_en => rd_en,
      read_only_q => read_only_q,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      write_only_q => write_only_q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  port (
    overflow : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    fifo_pix_cnt : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    fifo_eol_re : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 10 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_eol_dly : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal fifo_empty : STD_LOGIC;
  signal fifo_level_rd : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal full_i : STD_LOGIC;
  signal vid_reset : STD_LOGIC;
  signal wr_en_i : STD_LOGIC;
  signal wr_rst_busy_i : STD_LOGIC;
  signal xpm_fifo_base_inst_n_10 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_11 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_12 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_13 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_14 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_15 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_16 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_19 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_20 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_33 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_5 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_50 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_51 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_52 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_53 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_6 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_7 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_8 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_9 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_n_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s_axis_video_tready_INST_0 : label is "soft_lutpair3";
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 8192;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 90112;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 8192;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 8187;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 8187;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 14;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 14;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 13;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is "0707";
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 14;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 14;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 13;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute SOFT_HLUTNM of xpm_fifo_base_inst_i_2 : label is "soft_lutpair3";
begin
  dout(10 downto 0) <= \^dout\(10 downto 0);
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dout\(9),
      I1 => \^dout\(10),
      O => \FSM_sequential_state_reg[2]_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_8_n_0\,
      I1 => fifo_level_rd(10),
      I2 => fifo_level_rd(11),
      I3 => fifo_level_rd(13),
      I4 => fifo_level_rd(12),
      O => \FSM_sequential_state_reg[2]\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => fifo_level_rd(9),
      I1 => fifo_level_rd(8),
      I2 => fifo_level_rd(5),
      I3 => fifo_level_rd(6),
      I4 => fifo_level_rd(7),
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \out\(0),
      I1 => \^dout\(10),
      I2 => \^dout\(9),
      O => \FSM_sequential_state_reg[3]\
    );
fifo_eol_re_dly_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dout\(8),
      I1 => fifo_eol_dly,
      O => fifo_eol_re
    );
\fifo_pix_cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => vid_io_out_ce,
      I1 => fifo_empty,
      I2 => fifo_rd_en,
      O => fifo_pix_cnt
    );
s_axis_video_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => wr_rst_busy_i,
      I1 => aresetn,
      I2 => full_i,
      O => s_axis_video_tready
    );
xpm_fifo_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => xpm_fifo_base_inst_n_50,
      almost_full => xpm_fifo_base_inst_n_19,
      data_valid => xpm_fifo_base_inst_n_51,
      dbiterr => xpm_fifo_base_inst_n_53,
      din(10 downto 0) => din(10 downto 0),
      dout(10 downto 0) => \^dout\(10 downto 0),
      empty => fifo_empty,
      full => full_i,
      full_n => NLW_xpm_fifo_base_inst_full_n_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => xpm_fifo_base_inst_n_33,
      prog_full => xpm_fifo_base_inst_n_2,
      rd_clk => aclk,
      rd_data_count(13 downto 0) => fifo_level_rd(13 downto 0),
      rd_en => E(0),
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => vid_reset,
      sbiterr => xpm_fifo_base_inst_n_52,
      sleep => '0',
      underflow => underflow,
      wr_ack => xpm_fifo_base_inst_n_20,
      wr_clk => aclk,
      wr_data_count(13) => xpm_fifo_base_inst_n_3,
      wr_data_count(12) => xpm_fifo_base_inst_n_4,
      wr_data_count(11) => xpm_fifo_base_inst_n_5,
      wr_data_count(10) => xpm_fifo_base_inst_n_6,
      wr_data_count(9) => xpm_fifo_base_inst_n_7,
      wr_data_count(8) => xpm_fifo_base_inst_n_8,
      wr_data_count(7) => xpm_fifo_base_inst_n_9,
      wr_data_count(6) => xpm_fifo_base_inst_n_10,
      wr_data_count(5) => xpm_fifo_base_inst_n_11,
      wr_data_count(4) => xpm_fifo_base_inst_n_12,
      wr_data_count(3) => xpm_fifo_base_inst_n_13,
      wr_data_count(2) => xpm_fifo_base_inst_n_14,
      wr_data_count(1) => xpm_fifo_base_inst_n_15,
      wr_data_count(0) => xpm_fifo_base_inst_n_16,
      wr_en => wr_en_i,
      wr_rst_busy => wr_rst_busy_i
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => vid_reset
    );
xpm_fifo_base_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => wr_rst_busy_i,
      I2 => aresetn,
      I3 => full_i,
      I4 => aclken,
      O => wr_en_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_fifo_sync is
  port (
    overflow : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    fifo_pix_cnt : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    fifo_eol_re : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 10 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_eol_dly : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_fifo_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_fifo_sync is
begin
XPM_FIFO_SYNC_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
     port map (
      E(0) => E(0),
      \FSM_sequential_state_reg[2]\ => \FSM_sequential_state_reg[2]\,
      \FSM_sequential_state_reg[2]_0\ => \FSM_sequential_state_reg[2]_0\,
      \FSM_sequential_state_reg[3]\ => \FSM_sequential_state_reg[3]\,
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      din(10 downto 0) => din(10 downto 0),
      dout(10 downto 0) => dout(10 downto 0),
      fifo_eol_dly => fifo_eol_dly,
      fifo_eol_re => fifo_eol_re,
      fifo_pix_cnt => fifo_pix_cnt,
      fifo_rd_en => fifo_rd_en,
      \out\(0) => \out\(0),
      overflow => overflow,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      underflow => underflow,
      vid_io_out_ce => vid_io_out_ce
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_coupler is
  port (
    overflow : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 10 downto 0 );
    underflow : out STD_LOGIC;
    fifo_pix_cnt : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    fifo_eol_re : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 10 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aclken : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_eol_dly : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_coupler;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_coupler is
begin
\generate_sync_fifo.FIFO_INST\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_fifo_sync
     port map (
      E(0) => E(0),
      \FSM_sequential_state_reg[2]\ => \FSM_sequential_state_reg[2]\,
      \FSM_sequential_state_reg[2]_0\ => \FSM_sequential_state_reg[2]_0\,
      \FSM_sequential_state_reg[3]\ => \FSM_sequential_state_reg[3]\,
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      din(10 downto 0) => din(10 downto 0),
      dout(10 downto 0) => dout(10 downto 0),
      fifo_eol_dly => fifo_eol_dly,
      fifo_eol_re => fifo_eol_re,
      fifo_pix_cnt => fifo_pix_cnt,
      fifo_rd_en => fifo_rd_en,
      \out\(0) => \out\(0),
      overflow => overflow,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      underflow => underflow,
      vid_io_out_ce => vid_io_out_ce
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 31 downto 0 );
    repeat_en : in STD_LOGIC;
    remap_420_en : in STD_LOGIC
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 13;
  attribute C_ADDR_WIDTH_PIXEL_REMAP_420 : integer;
  attribute C_ADDR_WIDTH_PIXEL_REMAP_420 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 10;
  attribute C_COMPONENTS_PER_PIXEL : integer;
  attribute C_COMPONENTS_PER_PIXEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is "spartan7";
  attribute C_HAS_ASYNC_CLK : integer;
  attribute C_HAS_ASYNC_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 0;
  attribute C_HYSTERESIS_LEVEL : integer;
  attribute C_HYSTERESIS_LEVEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 32;
  attribute C_INCLUDE_PIXEL_REMAP_420 : integer;
  attribute C_INCLUDE_PIXEL_REMAP_420 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 0;
  attribute C_INCLUDE_PIXEL_REPEAT : integer;
  attribute C_INCLUDE_PIXEL_REPEAT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 0;
  attribute C_NATIVE_COMPONENT_WIDTH : integer;
  attribute C_NATIVE_COMPONENT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 8;
  attribute C_NATIVE_DATA_WIDTH : integer;
  attribute C_NATIVE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 8;
  attribute C_PIXELS_PER_CLOCK : integer;
  attribute C_PIXELS_PER_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 1;
  attribute C_SYNC_LOCK_THRESHOLD : integer;
  attribute C_SYNC_LOCK_THRESHOLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 4;
  attribute C_S_AXIS_COMPONENT_WIDTH : integer;
  attribute C_S_AXIS_COMPONENT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 8;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 8;
  attribute C_VTG_MASTER_SLAVE : integer;
  attribute C_VTG_MASTER_SLAVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 is
  signal \<const0>\ : STD_LOGIC;
  signal COUPLER_INST_n_15 : STD_LOGIC;
  signal COUPLER_INST_n_16 : STD_LOGIC;
  signal COUPLER_INST_n_18 : STD_LOGIC;
  signal SYNC_INST_n_0 : STD_LOGIC;
  signal fifo_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_eol : STD_LOGIC;
  signal fifo_eol_dly : STD_LOGIC;
  signal fifo_eol_re : STD_LOGIC;
  signal fifo_fid : STD_LOGIC;
  signal fifo_pix_cnt : STD_LOGIC;
  signal fifo_rd_en : STD_LOGIC;
  signal fifo_sof : STD_LOGIC;
  signal fivid_reset_full_frame : STD_LOGIC;
  signal in_data_mux : STD_LOGIC;
  signal in_de_mux0 : STD_LOGIC;
  signal \^locked\ : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 28 downto 0 );
begin
  locked <= \^locked\;
  status(31) <= \<const0>\;
  status(30) <= \<const0>\;
  status(29) <= \<const0>\;
  status(28 downto 16) <= \^status\(28 downto 16);
  status(15) <= \<const0>\;
  status(14 downto 0) <= \^status\(14 downto 0);
CDC_SINGLE_LOCKED_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single
     port map (
      aclk => aclk,
      src_in => \^locked\
    );
CDC_SINGLE_REMAP_UNDERFLOW_INST: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single__xdcDup__1\
     port map (
      aclk => aclk
    );
COUPLER_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_coupler
     port map (
      E(0) => in_data_mux,
      \FSM_sequential_state_reg[2]\ => COUPLER_INST_n_16,
      \FSM_sequential_state_reg[2]_0\ => COUPLER_INST_n_18,
      \FSM_sequential_state_reg[3]\ => COUPLER_INST_n_15,
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      din(10) => fid,
      din(9) => s_axis_video_tuser,
      din(8) => s_axis_video_tlast,
      din(7 downto 0) => s_axis_video_tdata(7 downto 0),
      dout(10) => fifo_fid,
      dout(9) => fifo_sof,
      dout(8) => fifo_eol,
      dout(7 downto 0) => fifo_data(7 downto 0),
      fifo_eol_dly => fifo_eol_dly,
      fifo_eol_re => fifo_eol_re,
      fifo_pix_cnt => fifo_pix_cnt,
      fifo_rd_en => fifo_rd_en,
      \out\(0) => SYNC_INST_n_0,
      overflow => overflow,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      underflow => underflow,
      vid_io_out_ce => vid_io_out_ce
    );
FORMATTER_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_formatter
     port map (
      D(7 downto 0) => fifo_data(7 downto 0),
      E(0) => in_data_mux,
      SR(0) => in_de_mux0,
      aclk => aclk,
      aresetn => aresetn,
      fivid_reset_full_frame => fivid_reset_full_frame,
      src_in => \^locked\,
      vid_active_video => vid_active_video,
      vid_data(7 downto 0) => vid_data(7 downto 0),
      vid_field_id => vid_field_id,
      vid_hblank => vid_hblank,
      vid_hsync => vid_hsync,
      vid_io_out_ce => vid_io_out_ce,
      vid_vblank => vid_vblank,
      vid_vsync => vid_vsync,
      vtg_active_video => vtg_active_video,
      vtg_field_id => vtg_field_id,
      vtg_hblank => vtg_hblank,
      vtg_hsync => vtg_hsync,
      vtg_vblank => vtg_vblank,
      vtg_vsync => vtg_vsync
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
SYNC_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_sync
     port map (
      E(0) => in_data_mux,
      \FSM_sequential_state_reg[3]_0\ => COUPLER_INST_n_15,
      SR(0) => in_de_mux0,
      aclk => aclk,
      aresetn => aresetn,
      dout(2) => fifo_fid,
      dout(1) => fifo_sof,
      dout(0) => fifo_eol,
      fifo_eol_dly => fifo_eol_dly,
      fifo_eol_re => fifo_eol_re,
      fifo_pix_cnt => fifo_pix_cnt,
      fifo_rd_en => fifo_rd_en,
      fivid_reset_full_frame => fivid_reset_full_frame,
      \gen_wr_a.gen_word_narrow.mem_reg_2\ => COUPLER_INST_n_18,
      \grdc.rd_data_count_i_reg[10]\ => COUPLER_INST_n_16,
      \out\(0) => SYNC_INST_n_0,
      src_in => \^locked\,
      status(27 downto 15) => \^status\(28 downto 16),
      status(14 downto 0) => \^status\(14 downto 0),
      vid_io_out_ce => vid_io_out_ce,
      vtg_active_video => vtg_active_video,
      vtg_ce => vtg_ce,
      vtg_field_id => vtg_field_id,
      vtg_vsync => vtg_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_v_axi4s_vid_out_0_0,v_axi4s_vid_out_v4_0_9,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "v_axi4s_vid_out_v4_0_9,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of inst : label is 13;
  attribute C_ADDR_WIDTH_PIXEL_REMAP_420 : integer;
  attribute C_ADDR_WIDTH_PIXEL_REMAP_420 of inst : label is 10;
  attribute C_COMPONENTS_PER_PIXEL : integer;
  attribute C_COMPONENTS_PER_PIXEL of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "spartan7";
  attribute C_HAS_ASYNC_CLK : integer;
  attribute C_HAS_ASYNC_CLK of inst : label is 0;
  attribute C_HYSTERESIS_LEVEL : integer;
  attribute C_HYSTERESIS_LEVEL of inst : label is 32;
  attribute C_INCLUDE_PIXEL_REMAP_420 : integer;
  attribute C_INCLUDE_PIXEL_REMAP_420 of inst : label is 0;
  attribute C_INCLUDE_PIXEL_REPEAT : integer;
  attribute C_INCLUDE_PIXEL_REPEAT of inst : label is 0;
  attribute C_NATIVE_COMPONENT_WIDTH : integer;
  attribute C_NATIVE_COMPONENT_WIDTH of inst : label is 8;
  attribute C_NATIVE_DATA_WIDTH : integer;
  attribute C_NATIVE_DATA_WIDTH of inst : label is 8;
  attribute C_PIXELS_PER_CLOCK : integer;
  attribute C_PIXELS_PER_CLOCK of inst : label is 1;
  attribute C_SYNC_LOCK_THRESHOLD : integer;
  attribute C_SYNC_LOCK_THRESHOLD of inst : label is 4;
  attribute C_S_AXIS_COMPONENT_WIDTH : integer;
  attribute C_S_AXIS_COMPONENT_WIDTH of inst : label is 8;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 8;
  attribute C_VTG_MASTER_SLAVE : integer;
  attribute C_VTG_MASTER_SLAVE of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in, FREQ_HZ 74250000, PHASE 0.000";
  attribute X_INTERFACE_INFO of aclken : signal is "xilinx.com:signal:clockenable:1.0 aclken_intf CE";
  attribute X_INTERFACE_PARAMETER of aclken : signal is "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn_intf RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 video_in TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_video_tlast : signal is "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:Y_400:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_Y {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value Y} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 8}";
  attribute X_INTERFACE_INFO of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 video_in TREADY";
  attribute X_INTERFACE_INFO of s_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 video_in TUSER";
  attribute X_INTERFACE_INFO of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 video_in TVALID";
  attribute X_INTERFACE_INFO of vid_active_video : signal is "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vid_field_id : signal is "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD";
  attribute X_INTERFACE_INFO of vid_hblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK";
  attribute X_INTERFACE_INFO of vid_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC";
  attribute X_INTERFACE_INFO of vid_io_out_ce : signal is "xilinx.com:signal:clockenable:1.0 vid_io_out_ce_intf CE";
  attribute X_INTERFACE_PARAMETER of vid_io_out_ce : signal is "XIL_INTERFACENAME vid_io_out_ce_intf, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of vid_vblank : signal is "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK";
  attribute X_INTERFACE_INFO of vid_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC";
  attribute X_INTERFACE_INFO of vtg_active_video : signal is "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of vtg_field_id : signal is "xilinx.com:interface:video_timing:2.0 vtiming_in FIELD";
  attribute X_INTERFACE_INFO of vtg_hblank : signal is "xilinx.com:interface:video_timing:2.0 vtiming_in HBLANK";
  attribute X_INTERFACE_INFO of vtg_hsync : signal is "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC";
  attribute X_INTERFACE_INFO of vtg_vblank : signal is "xilinx.com:interface:video_timing:2.0 vtiming_in VBLANK";
  attribute X_INTERFACE_INFO of vtg_vsync : signal is "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC";
  attribute X_INTERFACE_INFO of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 video_in TDATA";
  attribute X_INTERFACE_INFO of vid_data : signal is "xilinx.com:interface:vid_io:1.0 vid_io_out DATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      fid => fid,
      locked => locked,
      overflow => overflow,
      remap_420_en => '0',
      repeat_en => '0',
      s_axis_video_tdata(7 downto 0) => s_axis_video_tdata(7 downto 0),
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tvalid => s_axis_video_tvalid,
      status(31 downto 0) => status(31 downto 0),
      underflow => underflow,
      vid_active_video => vid_active_video,
      vid_data(7 downto 0) => vid_data(7 downto 0),
      vid_field_id => vid_field_id,
      vid_hblank => vid_hblank,
      vid_hsync => vid_hsync,
      vid_io_out_ce => vid_io_out_ce,
      vid_io_out_clk => '0',
      vid_io_out_reset => '0',
      vid_vblank => vid_vblank,
      vid_vsync => vid_vsync,
      vtg_active_video => vtg_active_video,
      vtg_ce => vtg_ce,
      vtg_field_id => vtg_field_id,
      vtg_hblank => vtg_hblank,
      vtg_hsync => vtg_hsync,
      vtg_vblank => vtg_vblank,
      vtg_vsync => vtg_vsync
    );
end STRUCTURE;
