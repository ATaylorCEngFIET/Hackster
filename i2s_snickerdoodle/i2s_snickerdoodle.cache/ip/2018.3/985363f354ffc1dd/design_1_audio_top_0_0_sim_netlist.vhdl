-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Apr  7 14:16:24 2019
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_audio_top_0_0_sim_netlist.vhdl
-- Design      : design_1_audio_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_top is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    AudioA_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AudioA_TVALID : in STD_LOGIC;
    AudioA_TREADY : out STD_LOGIC;
    AudioA_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioA_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioA_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AudioB_TVALID : out STD_LOGIC;
    AudioB_TREADY : in STD_LOGIC;
    AudioB_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioB_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioB_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^audioa_tready\ : STD_LOGIC;
  signal AudioA_V_data_V_0_ack_in : STD_LOGIC;
  signal AudioA_V_data_V_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AudioA_V_data_V_0_load_B : STD_LOGIC;
  signal AudioA_V_data_V_0_payload_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_data_V_0_payload_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AudioA_V_data_V_0_sel : STD_LOGIC;
  signal AudioA_V_data_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioA_V_data_V_0_sel_wr : STD_LOGIC;
  signal AudioA_V_data_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioA_V_data_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_data_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_data_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioA_V_dest_V_0_payload_A : STD_LOGIC;
  signal \AudioA_V_dest_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_dest_V_0_payload_B : STD_LOGIC;
  signal \AudioA_V_dest_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_dest_V_0_sel : STD_LOGIC;
  signal AudioA_V_dest_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioA_V_dest_V_0_sel_wr : STD_LOGIC;
  signal AudioA_V_dest_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioA_V_dest_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_dest_V_0_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \AudioA_V_dest_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioA_V_id_V_0_ack_in : STD_LOGIC;
  signal AudioA_V_id_V_0_payload_A : STD_LOGIC;
  signal \AudioA_V_id_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_id_V_0_payload_B : STD_LOGIC;
  signal \AudioA_V_id_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_id_V_0_sel : STD_LOGIC;
  signal AudioA_V_id_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioA_V_id_V_0_sel_wr : STD_LOGIC;
  signal AudioA_V_id_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioA_V_id_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_id_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_id_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioA_V_keep_V_0_ack_in : STD_LOGIC;
  signal AudioA_V_keep_V_0_data_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AudioA_V_keep_V_0_load_B : STD_LOGIC;
  signal AudioA_V_keep_V_0_payload_A : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \AudioA_V_keep_V_0_payload_A[3]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_keep_V_0_payload_B : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AudioA_V_keep_V_0_sel : STD_LOGIC;
  signal AudioA_V_keep_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioA_V_keep_V_0_sel_wr : STD_LOGIC;
  signal AudioA_V_keep_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioA_V_keep_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_keep_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_keep_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioA_V_last_V_0_ack_in : STD_LOGIC;
  signal AudioA_V_last_V_0_payload_A : STD_LOGIC;
  signal \AudioA_V_last_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_last_V_0_payload_B : STD_LOGIC;
  signal \AudioA_V_last_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_last_V_0_sel : STD_LOGIC;
  signal AudioA_V_last_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioA_V_last_V_0_sel_wr : STD_LOGIC;
  signal AudioA_V_last_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioA_V_last_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_last_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_last_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioA_V_strb_V_0_ack_in : STD_LOGIC;
  signal AudioA_V_strb_V_0_data_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AudioA_V_strb_V_0_load_B : STD_LOGIC;
  signal AudioA_V_strb_V_0_payload_A : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \AudioA_V_strb_V_0_payload_A[3]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_strb_V_0_payload_B : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AudioA_V_strb_V_0_sel : STD_LOGIC;
  signal AudioA_V_strb_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioA_V_strb_V_0_sel_wr : STD_LOGIC;
  signal AudioA_V_strb_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioA_V_strb_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_strb_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_strb_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioA_V_user_V_0_ack_in : STD_LOGIC;
  signal AudioA_V_user_V_0_payload_A : STD_LOGIC;
  signal \AudioA_V_user_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_user_V_0_payload_B : STD_LOGIC;
  signal \AudioA_V_user_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioA_V_user_V_0_sel : STD_LOGIC;
  signal AudioA_V_user_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioA_V_user_V_0_sel_wr : STD_LOGIC;
  signal AudioA_V_user_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioA_V_user_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_user_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioA_V_user_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^audiob_tvalid\ : STD_LOGIC;
  signal AudioB_V_data_V_1_ack_in : STD_LOGIC;
  signal AudioB_V_data_V_1_load_B : STD_LOGIC;
  signal AudioB_V_data_V_1_payload_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\ : STD_LOGIC;
  signal AudioB_V_data_V_1_payload_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AudioB_V_data_V_1_sel : STD_LOGIC;
  signal AudioB_V_data_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioB_V_data_V_1_sel_wr : STD_LOGIC;
  signal AudioB_V_data_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioB_V_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_data_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioB_V_dest_V_1_ack_in : STD_LOGIC;
  signal AudioB_V_dest_V_1_payload_A : STD_LOGIC;
  signal \AudioB_V_dest_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_dest_V_1_payload_A[0]_i_2_n_0\ : STD_LOGIC;
  signal AudioB_V_dest_V_1_payload_B : STD_LOGIC;
  signal \AudioB_V_dest_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioB_V_dest_V_1_sel : STD_LOGIC;
  signal AudioB_V_dest_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioB_V_dest_V_1_sel_wr : STD_LOGIC;
  signal AudioB_V_dest_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioB_V_dest_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_dest_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal AudioB_V_id_V_1_ack_in : STD_LOGIC;
  signal AudioB_V_id_V_1_payload_A : STD_LOGIC;
  signal \AudioB_V_id_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_id_V_1_payload_A[0]_i_2_n_0\ : STD_LOGIC;
  signal AudioB_V_id_V_1_payload_B : STD_LOGIC;
  signal \AudioB_V_id_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioB_V_id_V_1_sel : STD_LOGIC;
  signal AudioB_V_id_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioB_V_id_V_1_sel_wr : STD_LOGIC;
  signal AudioB_V_id_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioB_V_id_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_id_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_id_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioB_V_keep_V_1_ack_in : STD_LOGIC;
  signal AudioB_V_keep_V_1_load_B : STD_LOGIC;
  signal AudioB_V_keep_V_1_payload_A : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \AudioB_V_keep_V_1_payload_A[3]_i_1_n_0\ : STD_LOGIC;
  signal AudioB_V_keep_V_1_payload_B : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AudioB_V_keep_V_1_sel : STD_LOGIC;
  signal AudioB_V_keep_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioB_V_keep_V_1_sel_wr : STD_LOGIC;
  signal AudioB_V_keep_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioB_V_keep_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_keep_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_keep_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioB_V_last_V_1_ack_in : STD_LOGIC;
  signal AudioB_V_last_V_1_payload_A : STD_LOGIC;
  signal \AudioB_V_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_last_V_1_payload_A[0]_i_2_n_0\ : STD_LOGIC;
  signal AudioB_V_last_V_1_payload_B : STD_LOGIC;
  signal \AudioB_V_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioB_V_last_V_1_sel : STD_LOGIC;
  signal AudioB_V_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioB_V_last_V_1_sel_wr : STD_LOGIC;
  signal AudioB_V_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioB_V_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_last_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioB_V_strb_V_1_ack_in : STD_LOGIC;
  signal AudioB_V_strb_V_1_load_B : STD_LOGIC;
  signal AudioB_V_strb_V_1_payload_A : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \AudioB_V_strb_V_1_payload_A[3]_i_1_n_0\ : STD_LOGIC;
  signal AudioB_V_strb_V_1_payload_B : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AudioB_V_strb_V_1_sel : STD_LOGIC;
  signal AudioB_V_strb_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioB_V_strb_V_1_sel_wr : STD_LOGIC;
  signal AudioB_V_strb_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioB_V_strb_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_strb_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_strb_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal AudioB_V_user_V_1_ack_in : STD_LOGIC;
  signal AudioB_V_user_V_1_payload_A : STD_LOGIC;
  signal \AudioB_V_user_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_user_V_1_payload_A[0]_i_2_n_0\ : STD_LOGIC;
  signal AudioB_V_user_V_1_payload_B : STD_LOGIC;
  signal \AudioB_V_user_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal AudioB_V_user_V_1_sel : STD_LOGIC;
  signal AudioB_V_user_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal AudioB_V_user_V_1_sel_wr : STD_LOGIC;
  signal AudioB_V_user_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \AudioB_V_user_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_user_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \AudioB_V_user_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[2]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal p_186_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AudioA_V_data_V_0_sel_rd_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of AudioA_V_data_V_0_sel_wr_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of AudioA_V_id_V_0_sel_wr_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of AudioA_V_keep_V_0_sel_wr_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of AudioA_V_last_V_0_sel_wr_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of AudioA_V_strb_V_0_sel_wr_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of AudioA_V_user_V_0_sel_wr_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \AudioB_TDATA[0]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \AudioB_TDATA[10]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \AudioB_TDATA[11]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \AudioB_TDATA[12]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \AudioB_TDATA[13]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \AudioB_TDATA[14]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \AudioB_TDATA[15]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \AudioB_TDATA[16]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \AudioB_TDATA[17]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \AudioB_TDATA[18]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \AudioB_TDATA[19]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \AudioB_TDATA[1]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \AudioB_TDATA[20]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \AudioB_TDATA[21]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \AudioB_TDATA[22]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \AudioB_TDATA[23]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \AudioB_TDATA[24]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \AudioB_TDATA[25]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \AudioB_TDATA[26]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \AudioB_TDATA[27]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \AudioB_TDATA[28]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \AudioB_TDATA[29]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \AudioB_TDATA[2]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \AudioB_TDATA[30]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \AudioB_TDATA[31]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \AudioB_TDATA[3]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \AudioB_TDATA[4]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \AudioB_TDATA[5]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \AudioB_TDATA[6]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \AudioB_TDATA[7]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \AudioB_TDATA[8]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \AudioB_TDATA[9]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \AudioB_TDEST[0]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \AudioB_TKEEP[0]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \AudioB_TKEEP[1]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \AudioB_TKEEP[2]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \AudioB_TKEEP[3]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \AudioB_TSTRB[0]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \AudioB_TSTRB[1]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \AudioB_TSTRB[2]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \AudioB_TSTRB[3]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[10]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[15]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[16]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[17]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[18]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[20]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[21]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[22]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[24]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[26]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[27]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[28]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[29]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[30]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[31]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \AudioB_V_data_V_1_payload_A[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of AudioB_V_data_V_1_sel_rd_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of AudioB_V_data_V_1_sel_wr_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \AudioB_V_dest_V_1_payload_A[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of AudioB_V_dest_V_1_sel_rd_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \AudioB_V_dest_V_1_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \AudioB_V_dest_V_1_state[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \AudioB_V_id_V_1_payload_A[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of AudioB_V_id_V_1_sel_rd_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \AudioB_V_id_V_1_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \AudioB_V_keep_V_1_payload_A[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \AudioB_V_keep_V_1_payload_A[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \AudioB_V_keep_V_1_payload_A[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \AudioB_V_keep_V_1_payload_A[3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of AudioB_V_keep_V_1_sel_rd_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \AudioB_V_last_V_1_payload_A[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of AudioB_V_last_V_1_sel_rd_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \AudioB_V_last_V_1_state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \AudioB_V_strb_V_1_payload_A[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \AudioB_V_strb_V_1_payload_A[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \AudioB_V_strb_V_1_payload_A[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \AudioB_V_strb_V_1_payload_A[3]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of AudioB_V_strb_V_1_sel_rd_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \AudioB_V_user_V_1_payload_A[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of AudioB_V_user_V_1_sel_rd_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \AudioB_V_user_V_1_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair5";
begin
  AudioA_TREADY <= \^audioa_tready\;
  AudioB_TVALID <= \^audiob_tvalid\;
  ap_done <= \<const0>\;
  ap_ready <= \<const0>\;
\AudioA_V_data_V_0_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I1 => AudioA_V_data_V_0_ack_in,
      I2 => AudioA_V_data_V_0_sel_wr,
      O => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\
    );
\AudioA_V_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(0),
      Q => AudioA_V_data_V_0_payload_A(0),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(10),
      Q => AudioA_V_data_V_0_payload_A(10),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(11),
      Q => AudioA_V_data_V_0_payload_A(11),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(12),
      Q => AudioA_V_data_V_0_payload_A(12),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(13),
      Q => AudioA_V_data_V_0_payload_A(13),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(14),
      Q => AudioA_V_data_V_0_payload_A(14),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(15),
      Q => AudioA_V_data_V_0_payload_A(15),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(16),
      Q => AudioA_V_data_V_0_payload_A(16),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(17),
      Q => AudioA_V_data_V_0_payload_A(17),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(18),
      Q => AudioA_V_data_V_0_payload_A(18),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(19),
      Q => AudioA_V_data_V_0_payload_A(19),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(1),
      Q => AudioA_V_data_V_0_payload_A(1),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(20),
      Q => AudioA_V_data_V_0_payload_A(20),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(21),
      Q => AudioA_V_data_V_0_payload_A(21),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(22),
      Q => AudioA_V_data_V_0_payload_A(22),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(23),
      Q => AudioA_V_data_V_0_payload_A(23),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(24),
      Q => AudioA_V_data_V_0_payload_A(24),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(25),
      Q => AudioA_V_data_V_0_payload_A(25),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(26),
      Q => AudioA_V_data_V_0_payload_A(26),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(27),
      Q => AudioA_V_data_V_0_payload_A(27),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(28),
      Q => AudioA_V_data_V_0_payload_A(28),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(29),
      Q => AudioA_V_data_V_0_payload_A(29),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(2),
      Q => AudioA_V_data_V_0_payload_A(2),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(30),
      Q => AudioA_V_data_V_0_payload_A(30),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(31),
      Q => AudioA_V_data_V_0_payload_A(31),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(3),
      Q => AudioA_V_data_V_0_payload_A(3),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(4),
      Q => AudioA_V_data_V_0_payload_A(4),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(5),
      Q => AudioA_V_data_V_0_payload_A(5),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(6),
      Q => AudioA_V_data_V_0_payload_A(6),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(7),
      Q => AudioA_V_data_V_0_payload_A(7),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(8),
      Q => AudioA_V_data_V_0_payload_A(8),
      R => '0'
    );
\AudioA_V_data_V_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_data_V_0_payload_A[31]_i_1_n_0\,
      D => AudioA_TDATA(9),
      Q => AudioA_V_data_V_0_payload_A(9),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => AudioA_V_data_V_0_sel_wr,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioA_V_data_V_0_ack_in,
      O => AudioA_V_data_V_0_load_B
    );
\AudioA_V_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(0),
      Q => AudioA_V_data_V_0_payload_B(0),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(10),
      Q => AudioA_V_data_V_0_payload_B(10),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(11),
      Q => AudioA_V_data_V_0_payload_B(11),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(12),
      Q => AudioA_V_data_V_0_payload_B(12),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(13),
      Q => AudioA_V_data_V_0_payload_B(13),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(14),
      Q => AudioA_V_data_V_0_payload_B(14),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(15),
      Q => AudioA_V_data_V_0_payload_B(15),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(16),
      Q => AudioA_V_data_V_0_payload_B(16),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(17),
      Q => AudioA_V_data_V_0_payload_B(17),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(18),
      Q => AudioA_V_data_V_0_payload_B(18),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(19),
      Q => AudioA_V_data_V_0_payload_B(19),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(1),
      Q => AudioA_V_data_V_0_payload_B(1),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(20),
      Q => AudioA_V_data_V_0_payload_B(20),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(21),
      Q => AudioA_V_data_V_0_payload_B(21),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(22),
      Q => AudioA_V_data_V_0_payload_B(22),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(23),
      Q => AudioA_V_data_V_0_payload_B(23),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(24),
      Q => AudioA_V_data_V_0_payload_B(24),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(25),
      Q => AudioA_V_data_V_0_payload_B(25),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(26),
      Q => AudioA_V_data_V_0_payload_B(26),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(27),
      Q => AudioA_V_data_V_0_payload_B(27),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(28),
      Q => AudioA_V_data_V_0_payload_B(28),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(29),
      Q => AudioA_V_data_V_0_payload_B(29),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(2),
      Q => AudioA_V_data_V_0_payload_B(2),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(30),
      Q => AudioA_V_data_V_0_payload_B(30),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(31),
      Q => AudioA_V_data_V_0_payload_B(31),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(3),
      Q => AudioA_V_data_V_0_payload_B(3),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(4),
      Q => AudioA_V_data_V_0_payload_B(4),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(5),
      Q => AudioA_V_data_V_0_payload_B(5),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(6),
      Q => AudioA_V_data_V_0_payload_B(6),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(7),
      Q => AudioA_V_data_V_0_payload_B(7),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(8),
      Q => AudioA_V_data_V_0_payload_B(8),
      R => '0'
    );
\AudioA_V_data_V_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_data_V_0_load_B,
      D => AudioA_TDATA(9),
      Q => AudioA_V_data_V_0_payload_B(9),
      R => '0'
    );
AudioA_V_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_sel_rd_i_1_n_0
    );
AudioA_V_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_data_V_0_sel_rd_i_1_n_0,
      Q => AudioA_V_data_V_0_sel,
      R => ap_rst_n_inv
    );
AudioA_V_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioA_TVALID,
      I1 => AudioA_V_data_V_0_ack_in,
      I2 => AudioA_V_data_V_0_sel_wr,
      O => AudioA_V_data_V_0_sel_wr_i_1_n_0
    );
AudioA_V_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_data_V_0_sel_wr_i_1_n_0,
      Q => AudioA_V_data_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\AudioA_V_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A820A8A0A8A0A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => AudioA_V_data_V_0_ack_in,
      I2 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_TVALID,
      I4 => ap_CS_fsm_state2,
      I5 => AudioB_V_data_V_1_ack_in,
      O => \AudioA_V_data_V_0_state[0]_i_1_n_0\
    );
\AudioA_V_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F88FFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => AudioB_V_data_V_1_ack_in,
      I2 => AudioA_TVALID,
      I3 => AudioA_V_data_V_0_ack_in,
      I4 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      O => \AudioA_V_data_V_0_state[1]_i_1_n_0\
    );
\AudioA_V_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_data_V_0_state[0]_i_1_n_0\,
      Q => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioA_V_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_data_V_0_state[1]_i_1_n_0\,
      Q => AudioA_V_data_V_0_ack_in,
      R => ap_rst_n_inv
    );
\AudioA_V_dest_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => AudioA_TDEST(0),
      I1 => \AudioA_V_dest_V_0_state_reg_n_0_[0]\,
      I2 => \^audioa_tready\,
      I3 => AudioA_V_dest_V_0_sel_wr,
      I4 => AudioA_V_dest_V_0_payload_A,
      O => \AudioA_V_dest_V_0_payload_A[0]_i_1_n_0\
    );
\AudioA_V_dest_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_dest_V_0_payload_A[0]_i_1_n_0\,
      Q => AudioA_V_dest_V_0_payload_A,
      R => '0'
    );
\AudioA_V_dest_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB8808"
    )
        port map (
      I0 => AudioA_TDEST(0),
      I1 => AudioA_V_dest_V_0_sel_wr,
      I2 => \AudioA_V_dest_V_0_state_reg_n_0_[0]\,
      I3 => \^audioa_tready\,
      I4 => AudioA_V_dest_V_0_payload_B,
      O => \AudioA_V_dest_V_0_payload_B[0]_i_1_n_0\
    );
\AudioA_V_dest_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_dest_V_0_payload_B[0]_i_1_n_0\,
      Q => AudioA_V_dest_V_0_payload_B,
      R => '0'
    );
AudioA_V_dest_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => \AudioA_V_dest_V_0_state_reg_n_0_[0]\,
      I4 => AudioA_V_dest_V_0_sel,
      O => AudioA_V_dest_V_0_sel_rd_i_1_n_0
    );
AudioA_V_dest_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_dest_V_0_sel_rd_i_1_n_0,
      Q => AudioA_V_dest_V_0_sel,
      R => ap_rst_n_inv
    );
AudioA_V_dest_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioA_TVALID,
      I1 => \^audioa_tready\,
      I2 => AudioA_V_dest_V_0_sel_wr,
      O => AudioA_V_dest_V_0_sel_wr_i_1_n_0
    );
AudioA_V_dest_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_dest_V_0_sel_wr_i_1_n_0,
      Q => AudioA_V_dest_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\AudioA_V_dest_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^audioa_tready\,
      I2 => \AudioA_V_dest_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_TVALID,
      I4 => p_186_in,
      O => \AudioA_V_dest_V_0_state[0]_i_1_n_0\
    );
\AudioA_V_dest_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\AudioA_V_dest_V_0_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF8080FFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => AudioA_TVALID,
      I4 => \^audioa_tready\,
      I5 => \AudioA_V_dest_V_0_state_reg_n_0_[0]\,
      O => \AudioA_V_dest_V_0_state[1]_i_2_n_0\
    );
\AudioA_V_dest_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_dest_V_0_state[0]_i_1_n_0\,
      Q => \AudioA_V_dest_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioA_V_dest_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_dest_V_0_state[1]_i_2_n_0\,
      Q => \^audioa_tready\,
      R => ap_rst_n_inv
    );
\AudioA_V_id_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => AudioA_TID(0),
      I1 => \AudioA_V_id_V_0_state_reg_n_0_[0]\,
      I2 => AudioA_V_id_V_0_ack_in,
      I3 => AudioA_V_id_V_0_sel_wr,
      I4 => AudioA_V_id_V_0_payload_A,
      O => \AudioA_V_id_V_0_payload_A[0]_i_1_n_0\
    );
\AudioA_V_id_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_id_V_0_payload_A[0]_i_1_n_0\,
      Q => AudioA_V_id_V_0_payload_A,
      R => '0'
    );
\AudioA_V_id_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB8808"
    )
        port map (
      I0 => AudioA_TID(0),
      I1 => AudioA_V_id_V_0_sel_wr,
      I2 => \AudioA_V_id_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_V_id_V_0_ack_in,
      I4 => AudioA_V_id_V_0_payload_B,
      O => \AudioA_V_id_V_0_payload_B[0]_i_1_n_0\
    );
\AudioA_V_id_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_id_V_0_payload_B[0]_i_1_n_0\,
      Q => AudioA_V_id_V_0_payload_B,
      R => '0'
    );
AudioA_V_id_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => \AudioA_V_id_V_0_state_reg_n_0_[0]\,
      I4 => AudioA_V_id_V_0_sel,
      O => AudioA_V_id_V_0_sel_rd_i_1_n_0
    );
AudioA_V_id_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_id_V_0_sel_rd_i_1_n_0,
      Q => AudioA_V_id_V_0_sel,
      R => ap_rst_n_inv
    );
AudioA_V_id_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioA_TVALID,
      I1 => AudioA_V_id_V_0_ack_in,
      I2 => AudioA_V_id_V_0_sel_wr,
      O => AudioA_V_id_V_0_sel_wr_i_1_n_0
    );
AudioA_V_id_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_id_V_0_sel_wr_i_1_n_0,
      Q => AudioA_V_id_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\AudioA_V_id_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => AudioA_V_id_V_0_ack_in,
      I2 => \AudioA_V_id_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_TVALID,
      I4 => p_186_in,
      O => \AudioA_V_id_V_0_state[0]_i_1_n_0\
    );
\AudioA_V_id_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF8080FFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => AudioA_TVALID,
      I4 => AudioA_V_id_V_0_ack_in,
      I5 => \AudioA_V_id_V_0_state_reg_n_0_[0]\,
      O => \AudioA_V_id_V_0_state[1]_i_1_n_0\
    );
\AudioA_V_id_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_id_V_0_state[0]_i_1_n_0\,
      Q => \AudioA_V_id_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioA_V_id_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_id_V_0_state[1]_i_1_n_0\,
      Q => AudioA_V_id_V_0_ack_in,
      R => ap_rst_n_inv
    );
\AudioA_V_keep_V_0_payload_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \AudioA_V_keep_V_0_state_reg_n_0_[0]\,
      I1 => AudioA_V_keep_V_0_ack_in,
      I2 => AudioA_V_keep_V_0_sel_wr,
      O => \AudioA_V_keep_V_0_payload_A[3]_i_1_n_0\
    );
\AudioA_V_keep_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_keep_V_0_payload_A[3]_i_1_n_0\,
      D => AudioA_TKEEP(0),
      Q => AudioA_V_keep_V_0_payload_A(0),
      R => '0'
    );
\AudioA_V_keep_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_keep_V_0_payload_A[3]_i_1_n_0\,
      D => AudioA_TKEEP(1),
      Q => AudioA_V_keep_V_0_payload_A(1),
      R => '0'
    );
\AudioA_V_keep_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_keep_V_0_payload_A[3]_i_1_n_0\,
      D => AudioA_TKEEP(2),
      Q => AudioA_V_keep_V_0_payload_A(2),
      R => '0'
    );
\AudioA_V_keep_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_keep_V_0_payload_A[3]_i_1_n_0\,
      D => AudioA_TKEEP(3),
      Q => AudioA_V_keep_V_0_payload_A(3),
      R => '0'
    );
\AudioA_V_keep_V_0_payload_B[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => AudioA_V_keep_V_0_sel_wr,
      I1 => \AudioA_V_keep_V_0_state_reg_n_0_[0]\,
      I2 => AudioA_V_keep_V_0_ack_in,
      O => AudioA_V_keep_V_0_load_B
    );
\AudioA_V_keep_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_keep_V_0_load_B,
      D => AudioA_TKEEP(0),
      Q => AudioA_V_keep_V_0_payload_B(0),
      R => '0'
    );
\AudioA_V_keep_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_keep_V_0_load_B,
      D => AudioA_TKEEP(1),
      Q => AudioA_V_keep_V_0_payload_B(1),
      R => '0'
    );
\AudioA_V_keep_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_keep_V_0_load_B,
      D => AudioA_TKEEP(2),
      Q => AudioA_V_keep_V_0_payload_B(2),
      R => '0'
    );
\AudioA_V_keep_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_keep_V_0_load_B,
      D => AudioA_TKEEP(3),
      Q => AudioA_V_keep_V_0_payload_B(3),
      R => '0'
    );
AudioA_V_keep_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => \AudioA_V_keep_V_0_state_reg_n_0_[0]\,
      I4 => AudioA_V_keep_V_0_sel,
      O => AudioA_V_keep_V_0_sel_rd_i_1_n_0
    );
AudioA_V_keep_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_keep_V_0_sel_rd_i_1_n_0,
      Q => AudioA_V_keep_V_0_sel,
      R => ap_rst_n_inv
    );
AudioA_V_keep_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioA_TVALID,
      I1 => AudioA_V_keep_V_0_ack_in,
      I2 => AudioA_V_keep_V_0_sel_wr,
      O => AudioA_V_keep_V_0_sel_wr_i_1_n_0
    );
AudioA_V_keep_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_keep_V_0_sel_wr_i_1_n_0,
      Q => AudioA_V_keep_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\AudioA_V_keep_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => AudioA_V_keep_V_0_ack_in,
      I2 => \AudioA_V_keep_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_TVALID,
      I4 => p_186_in,
      O => \AudioA_V_keep_V_0_state[0]_i_1_n_0\
    );
\AudioA_V_keep_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF8080FFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => AudioA_TVALID,
      I4 => AudioA_V_keep_V_0_ack_in,
      I5 => \AudioA_V_keep_V_0_state_reg_n_0_[0]\,
      O => \AudioA_V_keep_V_0_state[1]_i_1_n_0\
    );
\AudioA_V_keep_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_keep_V_0_state[0]_i_1_n_0\,
      Q => \AudioA_V_keep_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioA_V_keep_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_keep_V_0_state[1]_i_1_n_0\,
      Q => AudioA_V_keep_V_0_ack_in,
      R => ap_rst_n_inv
    );
\AudioA_V_last_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => AudioA_TLAST(0),
      I1 => \AudioA_V_last_V_0_state_reg_n_0_[0]\,
      I2 => AudioA_V_last_V_0_ack_in,
      I3 => AudioA_V_last_V_0_sel_wr,
      I4 => AudioA_V_last_V_0_payload_A,
      O => \AudioA_V_last_V_0_payload_A[0]_i_1_n_0\
    );
\AudioA_V_last_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_last_V_0_payload_A[0]_i_1_n_0\,
      Q => AudioA_V_last_V_0_payload_A,
      R => '0'
    );
\AudioA_V_last_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB8808"
    )
        port map (
      I0 => AudioA_TLAST(0),
      I1 => AudioA_V_last_V_0_sel_wr,
      I2 => \AudioA_V_last_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_V_last_V_0_ack_in,
      I4 => AudioA_V_last_V_0_payload_B,
      O => \AudioA_V_last_V_0_payload_B[0]_i_1_n_0\
    );
\AudioA_V_last_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_last_V_0_payload_B[0]_i_1_n_0\,
      Q => AudioA_V_last_V_0_payload_B,
      R => '0'
    );
AudioA_V_last_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => \AudioA_V_last_V_0_state_reg_n_0_[0]\,
      I4 => AudioA_V_last_V_0_sel,
      O => AudioA_V_last_V_0_sel_rd_i_1_n_0
    );
AudioA_V_last_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_last_V_0_sel_rd_i_1_n_0,
      Q => AudioA_V_last_V_0_sel,
      R => ap_rst_n_inv
    );
AudioA_V_last_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioA_TVALID,
      I1 => AudioA_V_last_V_0_ack_in,
      I2 => AudioA_V_last_V_0_sel_wr,
      O => AudioA_V_last_V_0_sel_wr_i_1_n_0
    );
AudioA_V_last_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_last_V_0_sel_wr_i_1_n_0,
      Q => AudioA_V_last_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\AudioA_V_last_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => AudioA_V_last_V_0_ack_in,
      I2 => \AudioA_V_last_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_TVALID,
      I4 => p_186_in,
      O => \AudioA_V_last_V_0_state[0]_i_1_n_0\
    );
\AudioA_V_last_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF8080FFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => AudioA_TVALID,
      I4 => AudioA_V_last_V_0_ack_in,
      I5 => \AudioA_V_last_V_0_state_reg_n_0_[0]\,
      O => \AudioA_V_last_V_0_state[1]_i_1_n_0\
    );
\AudioA_V_last_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_last_V_0_state[0]_i_1_n_0\,
      Q => \AudioA_V_last_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioA_V_last_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_last_V_0_state[1]_i_1_n_0\,
      Q => AudioA_V_last_V_0_ack_in,
      R => ap_rst_n_inv
    );
\AudioA_V_strb_V_0_payload_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \AudioA_V_strb_V_0_state_reg_n_0_[0]\,
      I1 => AudioA_V_strb_V_0_ack_in,
      I2 => AudioA_V_strb_V_0_sel_wr,
      O => \AudioA_V_strb_V_0_payload_A[3]_i_1_n_0\
    );
\AudioA_V_strb_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_strb_V_0_payload_A[3]_i_1_n_0\,
      D => AudioA_TSTRB(0),
      Q => AudioA_V_strb_V_0_payload_A(0),
      R => '0'
    );
\AudioA_V_strb_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_strb_V_0_payload_A[3]_i_1_n_0\,
      D => AudioA_TSTRB(1),
      Q => AudioA_V_strb_V_0_payload_A(1),
      R => '0'
    );
\AudioA_V_strb_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_strb_V_0_payload_A[3]_i_1_n_0\,
      D => AudioA_TSTRB(2),
      Q => AudioA_V_strb_V_0_payload_A(2),
      R => '0'
    );
\AudioA_V_strb_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioA_V_strb_V_0_payload_A[3]_i_1_n_0\,
      D => AudioA_TSTRB(3),
      Q => AudioA_V_strb_V_0_payload_A(3),
      R => '0'
    );
\AudioA_V_strb_V_0_payload_B[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => AudioA_V_strb_V_0_sel_wr,
      I1 => \AudioA_V_strb_V_0_state_reg_n_0_[0]\,
      I2 => AudioA_V_strb_V_0_ack_in,
      O => AudioA_V_strb_V_0_load_B
    );
\AudioA_V_strb_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_strb_V_0_load_B,
      D => AudioA_TSTRB(0),
      Q => AudioA_V_strb_V_0_payload_B(0),
      R => '0'
    );
\AudioA_V_strb_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_strb_V_0_load_B,
      D => AudioA_TSTRB(1),
      Q => AudioA_V_strb_V_0_payload_B(1),
      R => '0'
    );
\AudioA_V_strb_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_strb_V_0_load_B,
      D => AudioA_TSTRB(2),
      Q => AudioA_V_strb_V_0_payload_B(2),
      R => '0'
    );
\AudioA_V_strb_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioA_V_strb_V_0_load_B,
      D => AudioA_TSTRB(3),
      Q => AudioA_V_strb_V_0_payload_B(3),
      R => '0'
    );
AudioA_V_strb_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => \AudioA_V_strb_V_0_state_reg_n_0_[0]\,
      I4 => AudioA_V_strb_V_0_sel,
      O => AudioA_V_strb_V_0_sel_rd_i_1_n_0
    );
AudioA_V_strb_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_strb_V_0_sel_rd_i_1_n_0,
      Q => AudioA_V_strb_V_0_sel,
      R => ap_rst_n_inv
    );
AudioA_V_strb_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioA_TVALID,
      I1 => AudioA_V_strb_V_0_ack_in,
      I2 => AudioA_V_strb_V_0_sel_wr,
      O => AudioA_V_strb_V_0_sel_wr_i_1_n_0
    );
AudioA_V_strb_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_strb_V_0_sel_wr_i_1_n_0,
      Q => AudioA_V_strb_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\AudioA_V_strb_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => AudioA_V_strb_V_0_ack_in,
      I2 => \AudioA_V_strb_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_TVALID,
      I4 => p_186_in,
      O => \AudioA_V_strb_V_0_state[0]_i_1_n_0\
    );
\AudioA_V_strb_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF8080FFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => AudioA_TVALID,
      I4 => AudioA_V_strb_V_0_ack_in,
      I5 => \AudioA_V_strb_V_0_state_reg_n_0_[0]\,
      O => \AudioA_V_strb_V_0_state[1]_i_1_n_0\
    );
\AudioA_V_strb_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_strb_V_0_state[0]_i_1_n_0\,
      Q => \AudioA_V_strb_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioA_V_strb_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_strb_V_0_state[1]_i_1_n_0\,
      Q => AudioA_V_strb_V_0_ack_in,
      R => ap_rst_n_inv
    );
\AudioA_V_user_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => AudioA_TUSER(0),
      I1 => \AudioA_V_user_V_0_state_reg_n_0_[0]\,
      I2 => AudioA_V_user_V_0_ack_in,
      I3 => AudioA_V_user_V_0_sel_wr,
      I4 => AudioA_V_user_V_0_payload_A,
      O => \AudioA_V_user_V_0_payload_A[0]_i_1_n_0\
    );
\AudioA_V_user_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_user_V_0_payload_A[0]_i_1_n_0\,
      Q => AudioA_V_user_V_0_payload_A,
      R => '0'
    );
\AudioA_V_user_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB8808"
    )
        port map (
      I0 => AudioA_TUSER(0),
      I1 => AudioA_V_user_V_0_sel_wr,
      I2 => \AudioA_V_user_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_V_user_V_0_ack_in,
      I4 => AudioA_V_user_V_0_payload_B,
      O => \AudioA_V_user_V_0_payload_B[0]_i_1_n_0\
    );
\AudioA_V_user_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_user_V_0_payload_B[0]_i_1_n_0\,
      Q => AudioA_V_user_V_0_payload_B,
      R => '0'
    );
AudioA_V_user_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => \AudioA_V_user_V_0_state_reg_n_0_[0]\,
      I4 => AudioA_V_user_V_0_sel,
      O => AudioA_V_user_V_0_sel_rd_i_1_n_0
    );
AudioA_V_user_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_user_V_0_sel_rd_i_1_n_0,
      Q => AudioA_V_user_V_0_sel,
      R => ap_rst_n_inv
    );
AudioA_V_user_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioA_TVALID,
      I1 => AudioA_V_user_V_0_ack_in,
      I2 => AudioA_V_user_V_0_sel_wr,
      O => AudioA_V_user_V_0_sel_wr_i_1_n_0
    );
AudioA_V_user_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioA_V_user_V_0_sel_wr_i_1_n_0,
      Q => AudioA_V_user_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\AudioA_V_user_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => AudioA_V_user_V_0_ack_in,
      I2 => \AudioA_V_user_V_0_state_reg_n_0_[0]\,
      I3 => AudioA_TVALID,
      I4 => p_186_in,
      O => \AudioA_V_user_V_0_state[0]_i_1_n_0\
    );
\AudioA_V_user_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF8080FFFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => AudioA_TVALID,
      I4 => AudioA_V_user_V_0_ack_in,
      I5 => \AudioA_V_user_V_0_state_reg_n_0_[0]\,
      O => \AudioA_V_user_V_0_state[1]_i_1_n_0\
    );
\AudioA_V_user_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_user_V_0_state[0]_i_1_n_0\,
      Q => \AudioA_V_user_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioA_V_user_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioA_V_user_V_0_state[1]_i_1_n_0\,
      Q => AudioA_V_user_V_0_ack_in,
      R => ap_rst_n_inv
    );
\AudioB_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(0),
      I1 => AudioB_V_data_V_1_payload_A(0),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(0)
    );
\AudioB_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(10),
      I1 => AudioB_V_data_V_1_payload_A(10),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(10)
    );
\AudioB_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(11),
      I1 => AudioB_V_data_V_1_payload_A(11),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(11)
    );
\AudioB_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(12),
      I1 => AudioB_V_data_V_1_payload_A(12),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(12)
    );
\AudioB_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(13),
      I1 => AudioB_V_data_V_1_payload_A(13),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(13)
    );
\AudioB_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(14),
      I1 => AudioB_V_data_V_1_payload_A(14),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(14)
    );
\AudioB_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(15),
      I1 => AudioB_V_data_V_1_payload_A(15),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(15)
    );
\AudioB_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(16),
      I1 => AudioB_V_data_V_1_payload_A(16),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(16)
    );
\AudioB_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(17),
      I1 => AudioB_V_data_V_1_payload_A(17),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(17)
    );
\AudioB_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(18),
      I1 => AudioB_V_data_V_1_payload_A(18),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(18)
    );
\AudioB_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(19),
      I1 => AudioB_V_data_V_1_payload_A(19),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(19)
    );
\AudioB_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(1),
      I1 => AudioB_V_data_V_1_payload_A(1),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(1)
    );
\AudioB_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(20),
      I1 => AudioB_V_data_V_1_payload_A(20),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(20)
    );
\AudioB_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(21),
      I1 => AudioB_V_data_V_1_payload_A(21),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(21)
    );
\AudioB_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(22),
      I1 => AudioB_V_data_V_1_payload_A(22),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(22)
    );
\AudioB_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(23),
      I1 => AudioB_V_data_V_1_payload_A(23),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(23)
    );
\AudioB_TDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(24),
      I1 => AudioB_V_data_V_1_payload_A(24),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(24)
    );
\AudioB_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(25),
      I1 => AudioB_V_data_V_1_payload_A(25),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(25)
    );
\AudioB_TDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(26),
      I1 => AudioB_V_data_V_1_payload_A(26),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(26)
    );
\AudioB_TDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(27),
      I1 => AudioB_V_data_V_1_payload_A(27),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(27)
    );
\AudioB_TDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(28),
      I1 => AudioB_V_data_V_1_payload_A(28),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(28)
    );
\AudioB_TDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(29),
      I1 => AudioB_V_data_V_1_payload_A(29),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(29)
    );
\AudioB_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(2),
      I1 => AudioB_V_data_V_1_payload_A(2),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(2)
    );
\AudioB_TDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(30),
      I1 => AudioB_V_data_V_1_payload_A(30),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(30)
    );
\AudioB_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(31),
      I1 => AudioB_V_data_V_1_payload_A(31),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(31)
    );
\AudioB_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(3),
      I1 => AudioB_V_data_V_1_payload_A(3),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(3)
    );
\AudioB_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(4),
      I1 => AudioB_V_data_V_1_payload_A(4),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(4)
    );
\AudioB_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(5),
      I1 => AudioB_V_data_V_1_payload_A(5),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(5)
    );
\AudioB_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(6),
      I1 => AudioB_V_data_V_1_payload_A(6),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(6)
    );
\AudioB_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(7),
      I1 => AudioB_V_data_V_1_payload_A(7),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(7)
    );
\AudioB_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(8),
      I1 => AudioB_V_data_V_1_payload_A(8),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(8)
    );
\AudioB_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioB_V_data_V_1_payload_B(9),
      I1 => AudioB_V_data_V_1_payload_A(9),
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_TDATA(9)
    );
\AudioB_TDEST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_dest_V_1_payload_B,
      I1 => AudioB_V_dest_V_1_sel,
      I2 => AudioB_V_dest_V_1_payload_A,
      O => AudioB_TDEST(0)
    );
\AudioB_TID[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_id_V_1_payload_B,
      I1 => AudioB_V_id_V_1_sel,
      I2 => AudioB_V_id_V_1_payload_A,
      O => AudioB_TID(0)
    );
\AudioB_TKEEP[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_keep_V_1_payload_B(0),
      I1 => AudioB_V_keep_V_1_sel,
      I2 => AudioB_V_keep_V_1_payload_A(0),
      O => AudioB_TKEEP(0)
    );
\AudioB_TKEEP[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_keep_V_1_payload_B(1),
      I1 => AudioB_V_keep_V_1_sel,
      I2 => AudioB_V_keep_V_1_payload_A(1),
      O => AudioB_TKEEP(1)
    );
\AudioB_TKEEP[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_keep_V_1_payload_B(2),
      I1 => AudioB_V_keep_V_1_sel,
      I2 => AudioB_V_keep_V_1_payload_A(2),
      O => AudioB_TKEEP(2)
    );
\AudioB_TKEEP[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_keep_V_1_payload_B(3),
      I1 => AudioB_V_keep_V_1_sel,
      I2 => AudioB_V_keep_V_1_payload_A(3),
      O => AudioB_TKEEP(3)
    );
\AudioB_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_last_V_1_payload_B,
      I1 => AudioB_V_last_V_1_sel,
      I2 => AudioB_V_last_V_1_payload_A,
      O => AudioB_TLAST(0)
    );
\AudioB_TSTRB[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_strb_V_1_payload_B(0),
      I1 => AudioB_V_strb_V_1_sel,
      I2 => AudioB_V_strb_V_1_payload_A(0),
      O => AudioB_TSTRB(0)
    );
\AudioB_TSTRB[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_strb_V_1_payload_B(1),
      I1 => AudioB_V_strb_V_1_sel,
      I2 => AudioB_V_strb_V_1_payload_A(1),
      O => AudioB_TSTRB(1)
    );
\AudioB_TSTRB[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_strb_V_1_payload_B(2),
      I1 => AudioB_V_strb_V_1_sel,
      I2 => AudioB_V_strb_V_1_payload_A(2),
      O => AudioB_TSTRB(2)
    );
\AudioB_TSTRB[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_strb_V_1_payload_B(3),
      I1 => AudioB_V_strb_V_1_sel,
      I2 => AudioB_V_strb_V_1_payload_A(3),
      O => AudioB_TSTRB(3)
    );
\AudioB_TUSER[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioB_V_user_V_1_payload_B,
      I1 => AudioB_V_user_V_1_sel,
      I2 => AudioB_V_user_V_1_payload_A,
      O => AudioB_TUSER(0)
    );
\AudioB_V_data_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(0),
      I1 => AudioA_V_data_V_0_payload_A(0),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(0)
    );
\AudioB_V_data_V_1_payload_A[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(10),
      I1 => AudioA_V_data_V_0_payload_A(10),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(10)
    );
\AudioB_V_data_V_1_payload_A[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(11),
      I1 => AudioA_V_data_V_0_payload_A(11),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(11)
    );
\AudioB_V_data_V_1_payload_A[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(12),
      I1 => AudioA_V_data_V_0_payload_A(12),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(12)
    );
\AudioB_V_data_V_1_payload_A[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(13),
      I1 => AudioA_V_data_V_0_payload_A(13),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(13)
    );
\AudioB_V_data_V_1_payload_A[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(14),
      I1 => AudioA_V_data_V_0_payload_A(14),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(14)
    );
\AudioB_V_data_V_1_payload_A[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(15),
      I1 => AudioA_V_data_V_0_payload_A(15),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(15)
    );
\AudioB_V_data_V_1_payload_A[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(16),
      I1 => AudioA_V_data_V_0_payload_A(16),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(16)
    );
\AudioB_V_data_V_1_payload_A[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(17),
      I1 => AudioA_V_data_V_0_payload_A(17),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(17)
    );
\AudioB_V_data_V_1_payload_A[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(18),
      I1 => AudioA_V_data_V_0_payload_A(18),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(18)
    );
\AudioB_V_data_V_1_payload_A[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(19),
      I1 => AudioA_V_data_V_0_payload_A(19),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(19)
    );
\AudioB_V_data_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(1),
      I1 => AudioA_V_data_V_0_payload_A(1),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(1)
    );
\AudioB_V_data_V_1_payload_A[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(20),
      I1 => AudioA_V_data_V_0_payload_A(20),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(20)
    );
\AudioB_V_data_V_1_payload_A[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(21),
      I1 => AudioA_V_data_V_0_payload_A(21),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(21)
    );
\AudioB_V_data_V_1_payload_A[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(22),
      I1 => AudioA_V_data_V_0_payload_A(22),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(22)
    );
\AudioB_V_data_V_1_payload_A[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(23),
      I1 => AudioA_V_data_V_0_payload_A(23),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(23)
    );
\AudioB_V_data_V_1_payload_A[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(24),
      I1 => AudioA_V_data_V_0_payload_A(24),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(24)
    );
\AudioB_V_data_V_1_payload_A[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(25),
      I1 => AudioA_V_data_V_0_payload_A(25),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(25)
    );
\AudioB_V_data_V_1_payload_A[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(26),
      I1 => AudioA_V_data_V_0_payload_A(26),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(26)
    );
\AudioB_V_data_V_1_payload_A[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(27),
      I1 => AudioA_V_data_V_0_payload_A(27),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(27)
    );
\AudioB_V_data_V_1_payload_A[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(28),
      I1 => AudioA_V_data_V_0_payload_A(28),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(28)
    );
\AudioB_V_data_V_1_payload_A[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(29),
      I1 => AudioA_V_data_V_0_payload_A(29),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(29)
    );
\AudioB_V_data_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(2),
      I1 => AudioA_V_data_V_0_payload_A(2),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(2)
    );
\AudioB_V_data_V_1_payload_A[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(30),
      I1 => AudioA_V_data_V_0_payload_A(30),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(30)
    );
\AudioB_V_data_V_1_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \AudioB_V_data_V_1_state_reg_n_0_[0]\,
      I1 => AudioB_V_data_V_1_ack_in,
      I2 => AudioB_V_data_V_1_sel_wr,
      O => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\
    );
\AudioB_V_data_V_1_payload_A[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(31),
      I1 => AudioA_V_data_V_0_payload_A(31),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(31)
    );
\AudioB_V_data_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(3),
      I1 => AudioA_V_data_V_0_payload_A(3),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(3)
    );
\AudioB_V_data_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(4),
      I1 => AudioA_V_data_V_0_payload_A(4),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(4)
    );
\AudioB_V_data_V_1_payload_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(5),
      I1 => AudioA_V_data_V_0_payload_A(5),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(5)
    );
\AudioB_V_data_V_1_payload_A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(6),
      I1 => AudioA_V_data_V_0_payload_A(6),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(6)
    );
\AudioB_V_data_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(7),
      I1 => AudioA_V_data_V_0_payload_A(7),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(7)
    );
\AudioB_V_data_V_1_payload_A[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(8),
      I1 => AudioA_V_data_V_0_payload_A(8),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(8)
    );
\AudioB_V_data_V_1_payload_A[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => AudioA_V_data_V_0_payload_B(9),
      I1 => AudioA_V_data_V_0_payload_A(9),
      I2 => AudioA_V_data_V_0_sel,
      O => AudioA_V_data_V_0_data_out(9)
    );
\AudioB_V_data_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(0),
      Q => AudioB_V_data_V_1_payload_A(0),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(10),
      Q => AudioB_V_data_V_1_payload_A(10),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(11),
      Q => AudioB_V_data_V_1_payload_A(11),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(12),
      Q => AudioB_V_data_V_1_payload_A(12),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(13),
      Q => AudioB_V_data_V_1_payload_A(13),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(14),
      Q => AudioB_V_data_V_1_payload_A(14),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(15),
      Q => AudioB_V_data_V_1_payload_A(15),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(16),
      Q => AudioB_V_data_V_1_payload_A(16),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(17),
      Q => AudioB_V_data_V_1_payload_A(17),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(18),
      Q => AudioB_V_data_V_1_payload_A(18),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(19),
      Q => AudioB_V_data_V_1_payload_A(19),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(1),
      Q => AudioB_V_data_V_1_payload_A(1),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(20),
      Q => AudioB_V_data_V_1_payload_A(20),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(21),
      Q => AudioB_V_data_V_1_payload_A(21),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(22),
      Q => AudioB_V_data_V_1_payload_A(22),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(23),
      Q => AudioB_V_data_V_1_payload_A(23),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(24),
      Q => AudioB_V_data_V_1_payload_A(24),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(25),
      Q => AudioB_V_data_V_1_payload_A(25),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(26),
      Q => AudioB_V_data_V_1_payload_A(26),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(27),
      Q => AudioB_V_data_V_1_payload_A(27),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(28),
      Q => AudioB_V_data_V_1_payload_A(28),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(29),
      Q => AudioB_V_data_V_1_payload_A(29),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(2),
      Q => AudioB_V_data_V_1_payload_A(2),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(30),
      Q => AudioB_V_data_V_1_payload_A(30),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(31),
      Q => AudioB_V_data_V_1_payload_A(31),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(3),
      Q => AudioB_V_data_V_1_payload_A(3),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(4),
      Q => AudioB_V_data_V_1_payload_A(4),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(5),
      Q => AudioB_V_data_V_1_payload_A(5),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(6),
      Q => AudioB_V_data_V_1_payload_A(6),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(7),
      Q => AudioB_V_data_V_1_payload_A(7),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(8),
      Q => AudioB_V_data_V_1_payload_A(8),
      R => '0'
    );
\AudioB_V_data_V_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_data_V_1_payload_A[31]_i_1_n_0\,
      D => AudioA_V_data_V_0_data_out(9),
      Q => AudioB_V_data_V_1_payload_A(9),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => AudioB_V_data_V_1_sel_wr,
      I1 => \AudioB_V_data_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      O => AudioB_V_data_V_1_load_B
    );
\AudioB_V_data_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(0),
      Q => AudioB_V_data_V_1_payload_B(0),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(10),
      Q => AudioB_V_data_V_1_payload_B(10),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(11),
      Q => AudioB_V_data_V_1_payload_B(11),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(12),
      Q => AudioB_V_data_V_1_payload_B(12),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(13),
      Q => AudioB_V_data_V_1_payload_B(13),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(14),
      Q => AudioB_V_data_V_1_payload_B(14),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(15),
      Q => AudioB_V_data_V_1_payload_B(15),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(16),
      Q => AudioB_V_data_V_1_payload_B(16),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(17),
      Q => AudioB_V_data_V_1_payload_B(17),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(18),
      Q => AudioB_V_data_V_1_payload_B(18),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(19),
      Q => AudioB_V_data_V_1_payload_B(19),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(1),
      Q => AudioB_V_data_V_1_payload_B(1),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(20),
      Q => AudioB_V_data_V_1_payload_B(20),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(21),
      Q => AudioB_V_data_V_1_payload_B(21),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(22),
      Q => AudioB_V_data_V_1_payload_B(22),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(23),
      Q => AudioB_V_data_V_1_payload_B(23),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(24),
      Q => AudioB_V_data_V_1_payload_B(24),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(25),
      Q => AudioB_V_data_V_1_payload_B(25),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(26),
      Q => AudioB_V_data_V_1_payload_B(26),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(27),
      Q => AudioB_V_data_V_1_payload_B(27),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(28),
      Q => AudioB_V_data_V_1_payload_B(28),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(29),
      Q => AudioB_V_data_V_1_payload_B(29),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(2),
      Q => AudioB_V_data_V_1_payload_B(2),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(30),
      Q => AudioB_V_data_V_1_payload_B(30),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(31),
      Q => AudioB_V_data_V_1_payload_B(31),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(3),
      Q => AudioB_V_data_V_1_payload_B(3),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(4),
      Q => AudioB_V_data_V_1_payload_B(4),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(5),
      Q => AudioB_V_data_V_1_payload_B(5),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(6),
      Q => AudioB_V_data_V_1_payload_B(6),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(7),
      Q => AudioB_V_data_V_1_payload_B(7),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(8),
      Q => AudioB_V_data_V_1_payload_B(8),
      R => '0'
    );
\AudioB_V_data_V_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_data_V_1_load_B,
      D => AudioA_V_data_V_0_data_out(9),
      Q => AudioB_V_data_V_1_payload_B(9),
      R => '0'
    );
AudioB_V_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioB_TREADY,
      I1 => \AudioB_V_data_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_sel,
      O => AudioB_V_data_V_1_sel_rd_i_1_n_0
    );
AudioB_V_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_data_V_1_sel_rd_i_1_n_0,
      Q => AudioB_V_data_V_1_sel,
      R => ap_rst_n_inv
    );
AudioB_V_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => AudioB_V_data_V_1_ack_in,
      I1 => ap_CS_fsm_state2,
      I2 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I3 => AudioB_V_data_V_1_sel_wr,
      O => AudioB_V_data_V_1_sel_wr_i_1_n_0
    );
AudioB_V_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_data_V_1_sel_wr_i_1_n_0,
      Q => AudioB_V_data_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\AudioB_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8088808880888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \AudioB_V_data_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => AudioB_TREADY,
      I4 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I5 => ap_CS_fsm_state2,
      O => \AudioB_V_data_V_1_state[0]_i_1_n_0\
    );
\AudioB_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFF0FF"
    )
        port map (
      I0 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I1 => ap_CS_fsm_state2,
      I2 => AudioB_TREADY,
      I3 => \AudioB_V_data_V_1_state_reg_n_0_[0]\,
      I4 => AudioB_V_data_V_1_ack_in,
      O => \AudioB_V_data_V_1_state[1]_i_1_n_0\
    );
\AudioB_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_data_V_1_state[0]_i_1_n_0\,
      Q => \AudioB_V_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioB_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_data_V_1_state[1]_i_1_n_0\,
      Q => AudioB_V_data_V_1_ack_in,
      R => ap_rst_n_inv
    );
\AudioB_V_dest_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => AudioA_V_dest_V_0_payload_B,
      I1 => AudioA_V_dest_V_0_sel,
      I2 => AudioA_V_dest_V_0_payload_A,
      I3 => \AudioB_V_dest_V_1_payload_A[0]_i_2_n_0\,
      I4 => AudioB_V_dest_V_1_sel_wr,
      I5 => AudioB_V_dest_V_1_payload_A,
      O => \AudioB_V_dest_V_1_payload_A[0]_i_1_n_0\
    );
\AudioB_V_dest_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^audiob_tvalid\,
      I1 => AudioB_V_dest_V_1_ack_in,
      O => \AudioB_V_dest_V_1_payload_A[0]_i_2_n_0\
    );
\AudioB_V_dest_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_dest_V_1_payload_A[0]_i_1_n_0\,
      Q => AudioB_V_dest_V_1_payload_A,
      R => '0'
    );
\AudioB_V_dest_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => AudioA_V_dest_V_0_payload_B,
      I1 => AudioA_V_dest_V_0_sel,
      I2 => AudioA_V_dest_V_0_payload_A,
      I3 => AudioB_V_dest_V_1_sel_wr,
      I4 => \AudioB_V_dest_V_1_payload_A[0]_i_2_n_0\,
      I5 => AudioB_V_dest_V_1_payload_B,
      O => \AudioB_V_dest_V_1_payload_B[0]_i_1_n_0\
    );
\AudioB_V_dest_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_dest_V_1_payload_B[0]_i_1_n_0\,
      Q => AudioB_V_dest_V_1_payload_B,
      R => '0'
    );
AudioB_V_dest_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioB_TREADY,
      I1 => \^audiob_tvalid\,
      I2 => AudioB_V_dest_V_1_sel,
      O => AudioB_V_dest_V_1_sel_rd_i_1_n_0
    );
AudioB_V_dest_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_dest_V_1_sel_rd_i_1_n_0,
      Q => AudioB_V_dest_V_1_sel,
      R => ap_rst_n_inv
    );
AudioB_V_dest_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => AudioB_V_dest_V_1_ack_in,
      I1 => ap_CS_fsm_state2,
      I2 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I3 => AudioB_V_data_V_1_ack_in,
      I4 => AudioB_V_dest_V_1_sel_wr,
      O => AudioB_V_dest_V_1_sel_wr_i_1_n_0
    );
AudioB_V_dest_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_dest_V_1_sel_wr_i_1_n_0,
      Q => AudioB_V_dest_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\AudioB_V_dest_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^audiob_tvalid\,
      I2 => AudioB_V_dest_V_1_ack_in,
      I3 => AudioB_TREADY,
      I4 => p_186_in,
      O => \AudioB_V_dest_V_1_state[0]_i_1_n_0\
    );
\AudioB_V_dest_V_1_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => AudioB_V_data_V_1_ack_in,
      O => p_186_in
    );
\AudioB_V_dest_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFF00FFFF"
    )
        port map (
      I0 => AudioB_V_data_V_1_ack_in,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => AudioB_TREADY,
      I4 => \^audiob_tvalid\,
      I5 => AudioB_V_dest_V_1_ack_in,
      O => \AudioB_V_dest_V_1_state[1]_i_1_n_0\
    );
\AudioB_V_dest_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_dest_V_1_state[0]_i_1_n_0\,
      Q => \^audiob_tvalid\,
      R => '0'
    );
\AudioB_V_dest_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_dest_V_1_state[1]_i_1_n_0\,
      Q => AudioB_V_dest_V_1_ack_in,
      R => ap_rst_n_inv
    );
\AudioB_V_id_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => AudioA_V_id_V_0_payload_B,
      I1 => AudioA_V_id_V_0_sel,
      I2 => AudioA_V_id_V_0_payload_A,
      I3 => \AudioB_V_id_V_1_payload_A[0]_i_2_n_0\,
      I4 => AudioB_V_id_V_1_sel_wr,
      I5 => AudioB_V_id_V_1_payload_A,
      O => \AudioB_V_id_V_1_payload_A[0]_i_1_n_0\
    );
\AudioB_V_id_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => AudioB_V_id_V_1_ack_in,
      I1 => \AudioB_V_id_V_1_state_reg_n_0_[0]\,
      O => \AudioB_V_id_V_1_payload_A[0]_i_2_n_0\
    );
\AudioB_V_id_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_id_V_1_payload_A[0]_i_1_n_0\,
      Q => AudioB_V_id_V_1_payload_A,
      R => '0'
    );
\AudioB_V_id_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => AudioA_V_id_V_0_payload_B,
      I1 => AudioA_V_id_V_0_sel,
      I2 => AudioA_V_id_V_0_payload_A,
      I3 => AudioB_V_id_V_1_sel_wr,
      I4 => \AudioB_V_id_V_1_payload_A[0]_i_2_n_0\,
      I5 => AudioB_V_id_V_1_payload_B,
      O => \AudioB_V_id_V_1_payload_B[0]_i_1_n_0\
    );
\AudioB_V_id_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_id_V_1_payload_B[0]_i_1_n_0\,
      Q => AudioB_V_id_V_1_payload_B,
      R => '0'
    );
AudioB_V_id_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioB_TREADY,
      I1 => \AudioB_V_id_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_id_V_1_sel,
      O => AudioB_V_id_V_1_sel_rd_i_1_n_0
    );
AudioB_V_id_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_id_V_1_sel_rd_i_1_n_0,
      Q => AudioB_V_id_V_1_sel,
      R => ap_rst_n_inv
    );
AudioB_V_id_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => AudioB_V_id_V_1_ack_in,
      I1 => ap_CS_fsm_state2,
      I2 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I3 => AudioB_V_data_V_1_ack_in,
      I4 => AudioB_V_id_V_1_sel_wr,
      O => AudioB_V_id_V_1_sel_wr_i_1_n_0
    );
AudioB_V_id_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_id_V_1_sel_wr_i_1_n_0,
      Q => AudioB_V_id_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\AudioB_V_id_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \AudioB_V_id_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_id_V_1_ack_in,
      I3 => AudioB_TREADY,
      I4 => p_186_in,
      O => \AudioB_V_id_V_1_state[0]_i_1_n_0\
    );
\AudioB_V_id_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFF00FFFF"
    )
        port map (
      I0 => AudioB_V_data_V_1_ack_in,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => AudioB_TREADY,
      I4 => \AudioB_V_id_V_1_state_reg_n_0_[0]\,
      I5 => AudioB_V_id_V_1_ack_in,
      O => \AudioB_V_id_V_1_state[1]_i_1_n_0\
    );
\AudioB_V_id_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_id_V_1_state[0]_i_1_n_0\,
      Q => \AudioB_V_id_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioB_V_id_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_id_V_1_state[1]_i_1_n_0\,
      Q => AudioB_V_id_V_1_ack_in,
      R => ap_rst_n_inv
    );
\AudioB_V_keep_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioA_V_keep_V_0_payload_B(0),
      I1 => AudioA_V_keep_V_0_sel,
      I2 => AudioA_V_keep_V_0_payload_A(0),
      O => AudioA_V_keep_V_0_data_out(0)
    );
\AudioB_V_keep_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioA_V_keep_V_0_payload_B(1),
      I1 => AudioA_V_keep_V_0_sel,
      I2 => AudioA_V_keep_V_0_payload_A(1),
      O => AudioA_V_keep_V_0_data_out(1)
    );
\AudioB_V_keep_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioA_V_keep_V_0_payload_B(2),
      I1 => AudioA_V_keep_V_0_sel,
      I2 => AudioA_V_keep_V_0_payload_A(2),
      O => AudioA_V_keep_V_0_data_out(2)
    );
\AudioB_V_keep_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \AudioB_V_keep_V_1_state_reg_n_0_[0]\,
      I1 => AudioB_V_keep_V_1_ack_in,
      I2 => AudioB_V_keep_V_1_sel_wr,
      O => \AudioB_V_keep_V_1_payload_A[3]_i_1_n_0\
    );
\AudioB_V_keep_V_1_payload_A[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioA_V_keep_V_0_payload_B(3),
      I1 => AudioA_V_keep_V_0_sel,
      I2 => AudioA_V_keep_V_0_payload_A(3),
      O => AudioA_V_keep_V_0_data_out(3)
    );
\AudioB_V_keep_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_keep_V_1_payload_A[3]_i_1_n_0\,
      D => AudioA_V_keep_V_0_data_out(0),
      Q => AudioB_V_keep_V_1_payload_A(0),
      R => '0'
    );
\AudioB_V_keep_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_keep_V_1_payload_A[3]_i_1_n_0\,
      D => AudioA_V_keep_V_0_data_out(1),
      Q => AudioB_V_keep_V_1_payload_A(1),
      R => '0'
    );
\AudioB_V_keep_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_keep_V_1_payload_A[3]_i_1_n_0\,
      D => AudioA_V_keep_V_0_data_out(2),
      Q => AudioB_V_keep_V_1_payload_A(2),
      R => '0'
    );
\AudioB_V_keep_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_keep_V_1_payload_A[3]_i_1_n_0\,
      D => AudioA_V_keep_V_0_data_out(3),
      Q => AudioB_V_keep_V_1_payload_A(3),
      R => '0'
    );
\AudioB_V_keep_V_1_payload_B[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => AudioB_V_keep_V_1_sel_wr,
      I1 => \AudioB_V_keep_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_keep_V_1_ack_in,
      O => AudioB_V_keep_V_1_load_B
    );
\AudioB_V_keep_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_keep_V_1_load_B,
      D => AudioA_V_keep_V_0_data_out(0),
      Q => AudioB_V_keep_V_1_payload_B(0),
      R => '0'
    );
\AudioB_V_keep_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_keep_V_1_load_B,
      D => AudioA_V_keep_V_0_data_out(1),
      Q => AudioB_V_keep_V_1_payload_B(1),
      R => '0'
    );
\AudioB_V_keep_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_keep_V_1_load_B,
      D => AudioA_V_keep_V_0_data_out(2),
      Q => AudioB_V_keep_V_1_payload_B(2),
      R => '0'
    );
\AudioB_V_keep_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_keep_V_1_load_B,
      D => AudioA_V_keep_V_0_data_out(3),
      Q => AudioB_V_keep_V_1_payload_B(3),
      R => '0'
    );
AudioB_V_keep_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => AudioB_TREADY,
      I1 => \AudioB_V_keep_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_keep_V_1_sel,
      O => AudioB_V_keep_V_1_sel_rd_i_1_n_0
    );
AudioB_V_keep_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_keep_V_1_sel_rd_i_1_n_0,
      Q => AudioB_V_keep_V_1_sel,
      R => ap_rst_n_inv
    );
AudioB_V_keep_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => AudioB_V_keep_V_1_ack_in,
      I1 => ap_CS_fsm_state2,
      I2 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I3 => AudioB_V_data_V_1_ack_in,
      I4 => AudioB_V_keep_V_1_sel_wr,
      O => AudioB_V_keep_V_1_sel_wr_i_1_n_0
    );
AudioB_V_keep_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_keep_V_1_sel_wr_i_1_n_0,
      Q => AudioB_V_keep_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\AudioB_V_keep_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \AudioB_V_keep_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_keep_V_1_ack_in,
      I3 => AudioB_TREADY,
      I4 => p_186_in,
      O => \AudioB_V_keep_V_1_state[0]_i_1_n_0\
    );
\AudioB_V_keep_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFF00FFFF"
    )
        port map (
      I0 => AudioB_V_data_V_1_ack_in,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => AudioB_TREADY,
      I4 => \AudioB_V_keep_V_1_state_reg_n_0_[0]\,
      I5 => AudioB_V_keep_V_1_ack_in,
      O => \AudioB_V_keep_V_1_state[1]_i_1_n_0\
    );
\AudioB_V_keep_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_keep_V_1_state[0]_i_1_n_0\,
      Q => \AudioB_V_keep_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioB_V_keep_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_keep_V_1_state[1]_i_1_n_0\,
      Q => AudioB_V_keep_V_1_ack_in,
      R => ap_rst_n_inv
    );
\AudioB_V_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => AudioA_V_last_V_0_payload_B,
      I1 => AudioA_V_last_V_0_sel,
      I2 => AudioA_V_last_V_0_payload_A,
      I3 => \AudioB_V_last_V_1_payload_A[0]_i_2_n_0\,
      I4 => AudioB_V_last_V_1_sel_wr,
      I5 => AudioB_V_last_V_1_payload_A,
      O => \AudioB_V_last_V_1_payload_A[0]_i_1_n_0\
    );
\AudioB_V_last_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => AudioB_V_last_V_1_ack_in,
      I1 => \AudioB_V_last_V_1_state_reg_n_0_[0]\,
      O => \AudioB_V_last_V_1_payload_A[0]_i_2_n_0\
    );
\AudioB_V_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_last_V_1_payload_A[0]_i_1_n_0\,
      Q => AudioB_V_last_V_1_payload_A,
      R => '0'
    );
\AudioB_V_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => AudioA_V_last_V_0_payload_B,
      I1 => AudioA_V_last_V_0_sel,
      I2 => AudioA_V_last_V_0_payload_A,
      I3 => AudioB_V_last_V_1_sel_wr,
      I4 => \AudioB_V_last_V_1_payload_A[0]_i_2_n_0\,
      I5 => AudioB_V_last_V_1_payload_B,
      O => \AudioB_V_last_V_1_payload_B[0]_i_1_n_0\
    );
\AudioB_V_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_last_V_1_payload_B[0]_i_1_n_0\,
      Q => AudioB_V_last_V_1_payload_B,
      R => '0'
    );
AudioB_V_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \AudioB_V_last_V_1_state_reg_n_0_[0]\,
      I1 => AudioB_TREADY,
      I2 => AudioB_V_last_V_1_sel,
      O => AudioB_V_last_V_1_sel_rd_i_1_n_0
    );
AudioB_V_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_last_V_1_sel_rd_i_1_n_0,
      Q => AudioB_V_last_V_1_sel,
      R => ap_rst_n_inv
    );
AudioB_V_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => AudioB_V_last_V_1_ack_in,
      I1 => ap_CS_fsm_state2,
      I2 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I3 => AudioB_V_data_V_1_ack_in,
      I4 => AudioB_V_last_V_1_sel_wr,
      O => AudioB_V_last_V_1_sel_wr_i_1_n_0
    );
AudioB_V_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_last_V_1_sel_wr_i_1_n_0,
      Q => AudioB_V_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\AudioB_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \AudioB_V_last_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_last_V_1_ack_in,
      I3 => AudioB_TREADY,
      I4 => p_186_in,
      O => \AudioB_V_last_V_1_state[0]_i_1_n_0\
    );
\AudioB_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFF00FFFF"
    )
        port map (
      I0 => AudioB_V_data_V_1_ack_in,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => AudioB_TREADY,
      I4 => \AudioB_V_last_V_1_state_reg_n_0_[0]\,
      I5 => AudioB_V_last_V_1_ack_in,
      O => \AudioB_V_last_V_1_state[1]_i_1_n_0\
    );
\AudioB_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_last_V_1_state[0]_i_1_n_0\,
      Q => \AudioB_V_last_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioB_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_last_V_1_state[1]_i_1_n_0\,
      Q => AudioB_V_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\AudioB_V_strb_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioA_V_strb_V_0_payload_B(0),
      I1 => AudioA_V_strb_V_0_sel,
      I2 => AudioA_V_strb_V_0_payload_A(0),
      O => AudioA_V_strb_V_0_data_out(0)
    );
\AudioB_V_strb_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioA_V_strb_V_0_payload_B(1),
      I1 => AudioA_V_strb_V_0_sel,
      I2 => AudioA_V_strb_V_0_payload_A(1),
      O => AudioA_V_strb_V_0_data_out(1)
    );
\AudioB_V_strb_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioA_V_strb_V_0_payload_B(2),
      I1 => AudioA_V_strb_V_0_sel,
      I2 => AudioA_V_strb_V_0_payload_A(2),
      O => AudioA_V_strb_V_0_data_out(2)
    );
\AudioB_V_strb_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \AudioB_V_strb_V_1_state_reg_n_0_[0]\,
      I1 => AudioB_V_strb_V_1_ack_in,
      I2 => AudioB_V_strb_V_1_sel_wr,
      O => \AudioB_V_strb_V_1_payload_A[3]_i_1_n_0\
    );
\AudioB_V_strb_V_1_payload_A[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => AudioA_V_strb_V_0_payload_B(3),
      I1 => AudioA_V_strb_V_0_sel,
      I2 => AudioA_V_strb_V_0_payload_A(3),
      O => AudioA_V_strb_V_0_data_out(3)
    );
\AudioB_V_strb_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_strb_V_1_payload_A[3]_i_1_n_0\,
      D => AudioA_V_strb_V_0_data_out(0),
      Q => AudioB_V_strb_V_1_payload_A(0),
      R => '0'
    );
\AudioB_V_strb_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_strb_V_1_payload_A[3]_i_1_n_0\,
      D => AudioA_V_strb_V_0_data_out(1),
      Q => AudioB_V_strb_V_1_payload_A(1),
      R => '0'
    );
\AudioB_V_strb_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_strb_V_1_payload_A[3]_i_1_n_0\,
      D => AudioA_V_strb_V_0_data_out(2),
      Q => AudioB_V_strb_V_1_payload_A(2),
      R => '0'
    );
\AudioB_V_strb_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \AudioB_V_strb_V_1_payload_A[3]_i_1_n_0\,
      D => AudioA_V_strb_V_0_data_out(3),
      Q => AudioB_V_strb_V_1_payload_A(3),
      R => '0'
    );
\AudioB_V_strb_V_1_payload_B[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => AudioB_V_strb_V_1_sel_wr,
      I1 => \AudioB_V_strb_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_strb_V_1_ack_in,
      O => AudioB_V_strb_V_1_load_B
    );
\AudioB_V_strb_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_strb_V_1_load_B,
      D => AudioA_V_strb_V_0_data_out(0),
      Q => AudioB_V_strb_V_1_payload_B(0),
      R => '0'
    );
\AudioB_V_strb_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_strb_V_1_load_B,
      D => AudioA_V_strb_V_0_data_out(1),
      Q => AudioB_V_strb_V_1_payload_B(1),
      R => '0'
    );
\AudioB_V_strb_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_strb_V_1_load_B,
      D => AudioA_V_strb_V_0_data_out(2),
      Q => AudioB_V_strb_V_1_payload_B(2),
      R => '0'
    );
\AudioB_V_strb_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AudioB_V_strb_V_1_load_B,
      D => AudioA_V_strb_V_0_data_out(3),
      Q => AudioB_V_strb_V_1_payload_B(3),
      R => '0'
    );
AudioB_V_strb_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \AudioB_V_strb_V_1_state_reg_n_0_[0]\,
      I1 => AudioB_TREADY,
      I2 => AudioB_V_strb_V_1_sel,
      O => AudioB_V_strb_V_1_sel_rd_i_1_n_0
    );
AudioB_V_strb_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_strb_V_1_sel_rd_i_1_n_0,
      Q => AudioB_V_strb_V_1_sel,
      R => ap_rst_n_inv
    );
AudioB_V_strb_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => AudioB_V_strb_V_1_ack_in,
      I1 => ap_CS_fsm_state2,
      I2 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I3 => AudioB_V_data_V_1_ack_in,
      I4 => AudioB_V_strb_V_1_sel_wr,
      O => AudioB_V_strb_V_1_sel_wr_i_1_n_0
    );
AudioB_V_strb_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_strb_V_1_sel_wr_i_1_n_0,
      Q => AudioB_V_strb_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\AudioB_V_strb_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \AudioB_V_strb_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_strb_V_1_ack_in,
      I3 => AudioB_TREADY,
      I4 => p_186_in,
      O => \AudioB_V_strb_V_1_state[0]_i_1_n_0\
    );
\AudioB_V_strb_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFF00FFFF"
    )
        port map (
      I0 => AudioB_V_data_V_1_ack_in,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => AudioB_TREADY,
      I4 => \AudioB_V_strb_V_1_state_reg_n_0_[0]\,
      I5 => AudioB_V_strb_V_1_ack_in,
      O => \AudioB_V_strb_V_1_state[1]_i_1_n_0\
    );
\AudioB_V_strb_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_strb_V_1_state[0]_i_1_n_0\,
      Q => \AudioB_V_strb_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioB_V_strb_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_strb_V_1_state[1]_i_1_n_0\,
      Q => AudioB_V_strb_V_1_ack_in,
      R => ap_rst_n_inv
    );
\AudioB_V_user_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => AudioA_V_user_V_0_payload_B,
      I1 => AudioA_V_user_V_0_sel,
      I2 => AudioA_V_user_V_0_payload_A,
      I3 => \AudioB_V_user_V_1_payload_A[0]_i_2_n_0\,
      I4 => AudioB_V_user_V_1_sel_wr,
      I5 => AudioB_V_user_V_1_payload_A,
      O => \AudioB_V_user_V_1_payload_A[0]_i_1_n_0\
    );
\AudioB_V_user_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => AudioB_V_user_V_1_ack_in,
      I1 => \AudioB_V_user_V_1_state_reg_n_0_[0]\,
      O => \AudioB_V_user_V_1_payload_A[0]_i_2_n_0\
    );
\AudioB_V_user_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_user_V_1_payload_A[0]_i_1_n_0\,
      Q => AudioB_V_user_V_1_payload_A,
      R => '0'
    );
\AudioB_V_user_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => AudioA_V_user_V_0_payload_B,
      I1 => AudioA_V_user_V_0_sel,
      I2 => AudioA_V_user_V_0_payload_A,
      I3 => AudioB_V_user_V_1_sel_wr,
      I4 => \AudioB_V_user_V_1_payload_A[0]_i_2_n_0\,
      I5 => AudioB_V_user_V_1_payload_B,
      O => \AudioB_V_user_V_1_payload_B[0]_i_1_n_0\
    );
\AudioB_V_user_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_user_V_1_payload_B[0]_i_1_n_0\,
      Q => AudioB_V_user_V_1_payload_B,
      R => '0'
    );
AudioB_V_user_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \AudioB_V_user_V_1_state_reg_n_0_[0]\,
      I1 => AudioB_TREADY,
      I2 => AudioB_V_user_V_1_sel,
      O => AudioB_V_user_V_1_sel_rd_i_1_n_0
    );
AudioB_V_user_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_user_V_1_sel_rd_i_1_n_0,
      Q => AudioB_V_user_V_1_sel,
      R => ap_rst_n_inv
    );
AudioB_V_user_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => AudioB_V_user_V_1_ack_in,
      I1 => ap_CS_fsm_state2,
      I2 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I3 => AudioB_V_data_V_1_ack_in,
      I4 => AudioB_V_user_V_1_sel_wr,
      O => AudioB_V_user_V_1_sel_wr_i_1_n_0
    );
AudioB_V_user_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => AudioB_V_user_V_1_sel_wr_i_1_n_0,
      Q => AudioB_V_user_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\AudioB_V_user_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \AudioB_V_user_V_1_state_reg_n_0_[0]\,
      I2 => AudioB_V_user_V_1_ack_in,
      I3 => AudioB_TREADY,
      I4 => p_186_in,
      O => \AudioB_V_user_V_1_state[0]_i_1_n_0\
    );
\AudioB_V_user_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFF00FFFF"
    )
        port map (
      I0 => AudioB_V_data_V_1_ack_in,
      I1 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => AudioB_TREADY,
      I4 => \AudioB_V_user_V_1_state_reg_n_0_[0]\,
      I5 => AudioB_V_user_V_1_ack_in,
      O => \AudioB_V_user_V_1_state[1]_i_1_n_0\
    );
\AudioB_V_user_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_user_V_1_state[0]_i_1_n_0\,
      Q => \AudioB_V_user_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\AudioB_V_user_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \AudioB_V_user_V_1_state[1]_i_1_n_0\,
      Q => AudioB_V_user_V_1_ack_in,
      R => ap_rst_n_inv
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \ap_CS_fsm_reg_n_0_[2]\,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_start,
      O => \ap_CS_fsm[0]_i_1_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB888BBBBB888"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \ap_CS_fsm_reg_n_0_[2]\,
      I3 => AudioB_V_data_V_1_ack_in,
      I4 => ap_CS_fsm_state2,
      I5 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      O => \ap_CS_fsm[1]_i_1_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41510111"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_CS_fsm_state2,
      I2 => AudioB_V_data_V_1_ack_in,
      I3 => \ap_CS_fsm_reg_n_0_[2]\,
      I4 => \AudioA_V_data_V_0_state_reg_n_0_[0]\,
      O => \ap_CS_fsm[2]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1_n_0\,
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_0\,
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[2]_i_1_n_0\,
      Q => \ap_CS_fsm_reg_n_0_[2]\,
      R => ap_rst_n_inv
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    AudioA_TVALID : in STD_LOGIC;
    AudioA_TREADY : out STD_LOGIC;
    AudioA_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AudioA_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioA_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioA_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioA_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TVALID : out STD_LOGIC;
    AudioB_TREADY : in STD_LOGIC;
    AudioB_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AudioB_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioB_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AudioB_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    AudioB_TID : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_audio_top_0_0,audio_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "audio_top,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of AudioA_TREADY : signal is "xilinx.com:interface:axis:1.0 AudioA TREADY";
  attribute x_interface_info of AudioA_TVALID : signal is "xilinx.com:interface:axis:1.0 AudioA TVALID";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of AudioA_TVALID : signal is "XIL_INTERFACENAME AudioA, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of AudioB_TREADY : signal is "xilinx.com:interface:axis:1.0 AudioB TREADY";
  attribute x_interface_info of AudioB_TVALID : signal is "xilinx.com:interface:axis:1.0 AudioB TVALID";
  attribute x_interface_parameter of AudioB_TVALID : signal is "XIL_INTERFACENAME AudioB, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF AudioA:AudioB, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute x_interface_info of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute x_interface_info of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  attribute x_interface_info of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute x_interface_parameter of ap_start : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of AudioA_TDATA : signal is "xilinx.com:interface:axis:1.0 AudioA TDATA";
  attribute x_interface_info of AudioA_TDEST : signal is "xilinx.com:interface:axis:1.0 AudioA TDEST";
  attribute x_interface_info of AudioA_TID : signal is "xilinx.com:interface:axis:1.0 AudioA TID";
  attribute x_interface_info of AudioA_TKEEP : signal is "xilinx.com:interface:axis:1.0 AudioA TKEEP";
  attribute x_interface_info of AudioA_TLAST : signal is "xilinx.com:interface:axis:1.0 AudioA TLAST";
  attribute x_interface_info of AudioA_TSTRB : signal is "xilinx.com:interface:axis:1.0 AudioA TSTRB";
  attribute x_interface_info of AudioA_TUSER : signal is "xilinx.com:interface:axis:1.0 AudioA TUSER";
  attribute x_interface_info of AudioB_TDATA : signal is "xilinx.com:interface:axis:1.0 AudioB TDATA";
  attribute x_interface_info of AudioB_TDEST : signal is "xilinx.com:interface:axis:1.0 AudioB TDEST";
  attribute x_interface_info of AudioB_TID : signal is "xilinx.com:interface:axis:1.0 AudioB TID";
  attribute x_interface_info of AudioB_TKEEP : signal is "xilinx.com:interface:axis:1.0 AudioB TKEEP";
  attribute x_interface_info of AudioB_TLAST : signal is "xilinx.com:interface:axis:1.0 AudioB TLAST";
  attribute x_interface_info of AudioB_TSTRB : signal is "xilinx.com:interface:axis:1.0 AudioB TSTRB";
  attribute x_interface_info of AudioB_TUSER : signal is "xilinx.com:interface:axis:1.0 AudioB TUSER";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_top
     port map (
      AudioA_TDATA(31 downto 0) => AudioA_TDATA(31 downto 0),
      AudioA_TDEST(0) => AudioA_TDEST(0),
      AudioA_TID(0) => AudioA_TID(0),
      AudioA_TKEEP(3 downto 0) => AudioA_TKEEP(3 downto 0),
      AudioA_TLAST(0) => AudioA_TLAST(0),
      AudioA_TREADY => AudioA_TREADY,
      AudioA_TSTRB(3 downto 0) => AudioA_TSTRB(3 downto 0),
      AudioA_TUSER(0) => AudioA_TUSER(0),
      AudioA_TVALID => AudioA_TVALID,
      AudioB_TDATA(31 downto 0) => AudioB_TDATA(31 downto 0),
      AudioB_TDEST(0) => AudioB_TDEST(0),
      AudioB_TID(0) => AudioB_TID(0),
      AudioB_TKEEP(3 downto 0) => AudioB_TKEEP(3 downto 0),
      AudioB_TLAST(0) => AudioB_TLAST(0),
      AudioB_TREADY => AudioB_TREADY,
      AudioB_TSTRB(3 downto 0) => AudioB_TSTRB(3 downto 0),
      AudioB_TUSER(0) => AudioB_TUSER(0),
      AudioB_TVALID => AudioB_TVALID,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start
    );
end STRUCTURE;
