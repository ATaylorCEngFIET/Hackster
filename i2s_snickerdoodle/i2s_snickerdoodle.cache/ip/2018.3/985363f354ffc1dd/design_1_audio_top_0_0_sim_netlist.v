// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Apr  7 14:16:24 2019
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_audio_top_0_0_sim_netlist.v
// Design      : design_1_audio_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_top
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    AudioA_TDATA,
    AudioA_TVALID,
    AudioA_TREADY,
    AudioA_TKEEP,
    AudioA_TSTRB,
    AudioA_TUSER,
    AudioA_TLAST,
    AudioA_TID,
    AudioA_TDEST,
    AudioB_TDATA,
    AudioB_TVALID,
    AudioB_TREADY,
    AudioB_TKEEP,
    AudioB_TSTRB,
    AudioB_TUSER,
    AudioB_TLAST,
    AudioB_TID,
    AudioB_TDEST);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0]AudioA_TDATA;
  input AudioA_TVALID;
  output AudioA_TREADY;
  input [3:0]AudioA_TKEEP;
  input [3:0]AudioA_TSTRB;
  input [0:0]AudioA_TUSER;
  input [0:0]AudioA_TLAST;
  input [0:0]AudioA_TID;
  input [0:0]AudioA_TDEST;
  output [31:0]AudioB_TDATA;
  output AudioB_TVALID;
  input AudioB_TREADY;
  output [3:0]AudioB_TKEEP;
  output [3:0]AudioB_TSTRB;
  output [0:0]AudioB_TUSER;
  output [0:0]AudioB_TLAST;
  output [0:0]AudioB_TID;
  output [0:0]AudioB_TDEST;

  wire \<const0> ;
  wire [31:0]AudioA_TDATA;
  wire [0:0]AudioA_TDEST;
  wire [0:0]AudioA_TID;
  wire [3:0]AudioA_TKEEP;
  wire [0:0]AudioA_TLAST;
  wire AudioA_TREADY;
  wire [3:0]AudioA_TSTRB;
  wire [0:0]AudioA_TUSER;
  wire AudioA_TVALID;
  wire AudioA_V_data_V_0_ack_in;
  wire [31:0]AudioA_V_data_V_0_data_out;
  wire AudioA_V_data_V_0_load_B;
  wire [31:0]AudioA_V_data_V_0_payload_A;
  wire \AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ;
  wire [31:0]AudioA_V_data_V_0_payload_B;
  wire AudioA_V_data_V_0_sel;
  wire AudioA_V_data_V_0_sel_rd_i_1_n_0;
  wire AudioA_V_data_V_0_sel_wr;
  wire AudioA_V_data_V_0_sel_wr_i_1_n_0;
  wire \AudioA_V_data_V_0_state[0]_i_1_n_0 ;
  wire \AudioA_V_data_V_0_state[1]_i_1_n_0 ;
  wire \AudioA_V_data_V_0_state_reg_n_0_[0] ;
  wire AudioA_V_dest_V_0_payload_A;
  wire \AudioA_V_dest_V_0_payload_A[0]_i_1_n_0 ;
  wire AudioA_V_dest_V_0_payload_B;
  wire \AudioA_V_dest_V_0_payload_B[0]_i_1_n_0 ;
  wire AudioA_V_dest_V_0_sel;
  wire AudioA_V_dest_V_0_sel_rd_i_1_n_0;
  wire AudioA_V_dest_V_0_sel_wr;
  wire AudioA_V_dest_V_0_sel_wr_i_1_n_0;
  wire \AudioA_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \AudioA_V_dest_V_0_state[1]_i_2_n_0 ;
  wire \AudioA_V_dest_V_0_state_reg_n_0_[0] ;
  wire AudioA_V_id_V_0_ack_in;
  wire AudioA_V_id_V_0_payload_A;
  wire \AudioA_V_id_V_0_payload_A[0]_i_1_n_0 ;
  wire AudioA_V_id_V_0_payload_B;
  wire \AudioA_V_id_V_0_payload_B[0]_i_1_n_0 ;
  wire AudioA_V_id_V_0_sel;
  wire AudioA_V_id_V_0_sel_rd_i_1_n_0;
  wire AudioA_V_id_V_0_sel_wr;
  wire AudioA_V_id_V_0_sel_wr_i_1_n_0;
  wire \AudioA_V_id_V_0_state[0]_i_1_n_0 ;
  wire \AudioA_V_id_V_0_state[1]_i_1_n_0 ;
  wire \AudioA_V_id_V_0_state_reg_n_0_[0] ;
  wire AudioA_V_keep_V_0_ack_in;
  wire [3:0]AudioA_V_keep_V_0_data_out;
  wire AudioA_V_keep_V_0_load_B;
  wire [3:0]AudioA_V_keep_V_0_payload_A;
  wire \AudioA_V_keep_V_0_payload_A[3]_i_1_n_0 ;
  wire [3:0]AudioA_V_keep_V_0_payload_B;
  wire AudioA_V_keep_V_0_sel;
  wire AudioA_V_keep_V_0_sel_rd_i_1_n_0;
  wire AudioA_V_keep_V_0_sel_wr;
  wire AudioA_V_keep_V_0_sel_wr_i_1_n_0;
  wire \AudioA_V_keep_V_0_state[0]_i_1_n_0 ;
  wire \AudioA_V_keep_V_0_state[1]_i_1_n_0 ;
  wire \AudioA_V_keep_V_0_state_reg_n_0_[0] ;
  wire AudioA_V_last_V_0_ack_in;
  wire AudioA_V_last_V_0_payload_A;
  wire \AudioA_V_last_V_0_payload_A[0]_i_1_n_0 ;
  wire AudioA_V_last_V_0_payload_B;
  wire \AudioA_V_last_V_0_payload_B[0]_i_1_n_0 ;
  wire AudioA_V_last_V_0_sel;
  wire AudioA_V_last_V_0_sel_rd_i_1_n_0;
  wire AudioA_V_last_V_0_sel_wr;
  wire AudioA_V_last_V_0_sel_wr_i_1_n_0;
  wire \AudioA_V_last_V_0_state[0]_i_1_n_0 ;
  wire \AudioA_V_last_V_0_state[1]_i_1_n_0 ;
  wire \AudioA_V_last_V_0_state_reg_n_0_[0] ;
  wire AudioA_V_strb_V_0_ack_in;
  wire [3:0]AudioA_V_strb_V_0_data_out;
  wire AudioA_V_strb_V_0_load_B;
  wire [3:0]AudioA_V_strb_V_0_payload_A;
  wire \AudioA_V_strb_V_0_payload_A[3]_i_1_n_0 ;
  wire [3:0]AudioA_V_strb_V_0_payload_B;
  wire AudioA_V_strb_V_0_sel;
  wire AudioA_V_strb_V_0_sel_rd_i_1_n_0;
  wire AudioA_V_strb_V_0_sel_wr;
  wire AudioA_V_strb_V_0_sel_wr_i_1_n_0;
  wire \AudioA_V_strb_V_0_state[0]_i_1_n_0 ;
  wire \AudioA_V_strb_V_0_state[1]_i_1_n_0 ;
  wire \AudioA_V_strb_V_0_state_reg_n_0_[0] ;
  wire AudioA_V_user_V_0_ack_in;
  wire AudioA_V_user_V_0_payload_A;
  wire \AudioA_V_user_V_0_payload_A[0]_i_1_n_0 ;
  wire AudioA_V_user_V_0_payload_B;
  wire \AudioA_V_user_V_0_payload_B[0]_i_1_n_0 ;
  wire AudioA_V_user_V_0_sel;
  wire AudioA_V_user_V_0_sel_rd_i_1_n_0;
  wire AudioA_V_user_V_0_sel_wr;
  wire AudioA_V_user_V_0_sel_wr_i_1_n_0;
  wire \AudioA_V_user_V_0_state[0]_i_1_n_0 ;
  wire \AudioA_V_user_V_0_state[1]_i_1_n_0 ;
  wire \AudioA_V_user_V_0_state_reg_n_0_[0] ;
  wire [31:0]AudioB_TDATA;
  wire [0:0]AudioB_TDEST;
  wire [0:0]AudioB_TID;
  wire [3:0]AudioB_TKEEP;
  wire [0:0]AudioB_TLAST;
  wire AudioB_TREADY;
  wire [3:0]AudioB_TSTRB;
  wire [0:0]AudioB_TUSER;
  wire AudioB_TVALID;
  wire AudioB_V_data_V_1_ack_in;
  wire AudioB_V_data_V_1_load_B;
  wire [31:0]AudioB_V_data_V_1_payload_A;
  wire \AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ;
  wire [31:0]AudioB_V_data_V_1_payload_B;
  wire AudioB_V_data_V_1_sel;
  wire AudioB_V_data_V_1_sel_rd_i_1_n_0;
  wire AudioB_V_data_V_1_sel_wr;
  wire AudioB_V_data_V_1_sel_wr_i_1_n_0;
  wire \AudioB_V_data_V_1_state[0]_i_1_n_0 ;
  wire \AudioB_V_data_V_1_state[1]_i_1_n_0 ;
  wire \AudioB_V_data_V_1_state_reg_n_0_[0] ;
  wire AudioB_V_dest_V_1_ack_in;
  wire AudioB_V_dest_V_1_payload_A;
  wire \AudioB_V_dest_V_1_payload_A[0]_i_1_n_0 ;
  wire \AudioB_V_dest_V_1_payload_A[0]_i_2_n_0 ;
  wire AudioB_V_dest_V_1_payload_B;
  wire \AudioB_V_dest_V_1_payload_B[0]_i_1_n_0 ;
  wire AudioB_V_dest_V_1_sel;
  wire AudioB_V_dest_V_1_sel_rd_i_1_n_0;
  wire AudioB_V_dest_V_1_sel_wr;
  wire AudioB_V_dest_V_1_sel_wr_i_1_n_0;
  wire \AudioB_V_dest_V_1_state[0]_i_1_n_0 ;
  wire \AudioB_V_dest_V_1_state[1]_i_1_n_0 ;
  wire AudioB_V_id_V_1_ack_in;
  wire AudioB_V_id_V_1_payload_A;
  wire \AudioB_V_id_V_1_payload_A[0]_i_1_n_0 ;
  wire \AudioB_V_id_V_1_payload_A[0]_i_2_n_0 ;
  wire AudioB_V_id_V_1_payload_B;
  wire \AudioB_V_id_V_1_payload_B[0]_i_1_n_0 ;
  wire AudioB_V_id_V_1_sel;
  wire AudioB_V_id_V_1_sel_rd_i_1_n_0;
  wire AudioB_V_id_V_1_sel_wr;
  wire AudioB_V_id_V_1_sel_wr_i_1_n_0;
  wire \AudioB_V_id_V_1_state[0]_i_1_n_0 ;
  wire \AudioB_V_id_V_1_state[1]_i_1_n_0 ;
  wire \AudioB_V_id_V_1_state_reg_n_0_[0] ;
  wire AudioB_V_keep_V_1_ack_in;
  wire AudioB_V_keep_V_1_load_B;
  wire [3:0]AudioB_V_keep_V_1_payload_A;
  wire \AudioB_V_keep_V_1_payload_A[3]_i_1_n_0 ;
  wire [3:0]AudioB_V_keep_V_1_payload_B;
  wire AudioB_V_keep_V_1_sel;
  wire AudioB_V_keep_V_1_sel_rd_i_1_n_0;
  wire AudioB_V_keep_V_1_sel_wr;
  wire AudioB_V_keep_V_1_sel_wr_i_1_n_0;
  wire \AudioB_V_keep_V_1_state[0]_i_1_n_0 ;
  wire \AudioB_V_keep_V_1_state[1]_i_1_n_0 ;
  wire \AudioB_V_keep_V_1_state_reg_n_0_[0] ;
  wire AudioB_V_last_V_1_ack_in;
  wire AudioB_V_last_V_1_payload_A;
  wire \AudioB_V_last_V_1_payload_A[0]_i_1_n_0 ;
  wire \AudioB_V_last_V_1_payload_A[0]_i_2_n_0 ;
  wire AudioB_V_last_V_1_payload_B;
  wire \AudioB_V_last_V_1_payload_B[0]_i_1_n_0 ;
  wire AudioB_V_last_V_1_sel;
  wire AudioB_V_last_V_1_sel_rd_i_1_n_0;
  wire AudioB_V_last_V_1_sel_wr;
  wire AudioB_V_last_V_1_sel_wr_i_1_n_0;
  wire \AudioB_V_last_V_1_state[0]_i_1_n_0 ;
  wire \AudioB_V_last_V_1_state[1]_i_1_n_0 ;
  wire \AudioB_V_last_V_1_state_reg_n_0_[0] ;
  wire AudioB_V_strb_V_1_ack_in;
  wire AudioB_V_strb_V_1_load_B;
  wire [3:0]AudioB_V_strb_V_1_payload_A;
  wire \AudioB_V_strb_V_1_payload_A[3]_i_1_n_0 ;
  wire [3:0]AudioB_V_strb_V_1_payload_B;
  wire AudioB_V_strb_V_1_sel;
  wire AudioB_V_strb_V_1_sel_rd_i_1_n_0;
  wire AudioB_V_strb_V_1_sel_wr;
  wire AudioB_V_strb_V_1_sel_wr_i_1_n_0;
  wire \AudioB_V_strb_V_1_state[0]_i_1_n_0 ;
  wire \AudioB_V_strb_V_1_state[1]_i_1_n_0 ;
  wire \AudioB_V_strb_V_1_state_reg_n_0_[0] ;
  wire AudioB_V_user_V_1_ack_in;
  wire AudioB_V_user_V_1_payload_A;
  wire \AudioB_V_user_V_1_payload_A[0]_i_1_n_0 ;
  wire \AudioB_V_user_V_1_payload_A[0]_i_2_n_0 ;
  wire AudioB_V_user_V_1_payload_B;
  wire \AudioB_V_user_V_1_payload_B[0]_i_1_n_0 ;
  wire AudioB_V_user_V_1_sel;
  wire AudioB_V_user_V_1_sel_rd_i_1_n_0;
  wire AudioB_V_user_V_1_sel_wr;
  wire AudioB_V_user_V_1_sel_wr_i_1_n_0;
  wire \AudioB_V_user_V_1_state[0]_i_1_n_0 ;
  wire \AudioB_V_user_V_1_state[1]_i_1_n_0 ;
  wire \AudioB_V_user_V_1_state_reg_n_0_[0] ;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm[2]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire ap_CS_fsm_state2;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire p_186_in;

  assign ap_done = \<const0> ;
  assign ap_ready = \<const0> ;
  LUT3 #(
    .INIT(8'h0D)) 
    \AudioA_V_data_V_0_payload_A[31]_i_1 
       (.I0(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I1(AudioA_V_data_V_0_ack_in),
        .I2(AudioA_V_data_V_0_sel_wr),
        .O(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ));
  FDRE \AudioA_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[0]),
        .Q(AudioA_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[10]),
        .Q(AudioA_V_data_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[11]),
        .Q(AudioA_V_data_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[12]),
        .Q(AudioA_V_data_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[13]),
        .Q(AudioA_V_data_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[14]),
        .Q(AudioA_V_data_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[15]),
        .Q(AudioA_V_data_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[16]),
        .Q(AudioA_V_data_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[17]),
        .Q(AudioA_V_data_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[18]),
        .Q(AudioA_V_data_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[19]),
        .Q(AudioA_V_data_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[1]),
        .Q(AudioA_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[20]),
        .Q(AudioA_V_data_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[21]),
        .Q(AudioA_V_data_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[22]),
        .Q(AudioA_V_data_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[23]),
        .Q(AudioA_V_data_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[24]),
        .Q(AudioA_V_data_V_0_payload_A[24]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[25]),
        .Q(AudioA_V_data_V_0_payload_A[25]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[26]),
        .Q(AudioA_V_data_V_0_payload_A[26]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[27]),
        .Q(AudioA_V_data_V_0_payload_A[27]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[28]),
        .Q(AudioA_V_data_V_0_payload_A[28]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[29]),
        .Q(AudioA_V_data_V_0_payload_A[29]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[2]),
        .Q(AudioA_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[30]),
        .Q(AudioA_V_data_V_0_payload_A[30]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[31]),
        .Q(AudioA_V_data_V_0_payload_A[31]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[3]),
        .Q(AudioA_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[4]),
        .Q(AudioA_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[5]),
        .Q(AudioA_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[6]),
        .Q(AudioA_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[7]),
        .Q(AudioA_V_data_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[8]),
        .Q(AudioA_V_data_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\AudioA_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(AudioA_TDATA[9]),
        .Q(AudioA_V_data_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \AudioA_V_data_V_0_payload_B[31]_i_1 
       (.I0(AudioA_V_data_V_0_sel_wr),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioA_V_data_V_0_ack_in),
        .O(AudioA_V_data_V_0_load_B));
  FDRE \AudioA_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[0]),
        .Q(AudioA_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[10]),
        .Q(AudioA_V_data_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[11]),
        .Q(AudioA_V_data_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[12]),
        .Q(AudioA_V_data_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[13]),
        .Q(AudioA_V_data_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[14]),
        .Q(AudioA_V_data_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[15]),
        .Q(AudioA_V_data_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[16]),
        .Q(AudioA_V_data_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[17]),
        .Q(AudioA_V_data_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[18]),
        .Q(AudioA_V_data_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[19]),
        .Q(AudioA_V_data_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[1]),
        .Q(AudioA_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[20]),
        .Q(AudioA_V_data_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[21]),
        .Q(AudioA_V_data_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[22]),
        .Q(AudioA_V_data_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[23]),
        .Q(AudioA_V_data_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[24]),
        .Q(AudioA_V_data_V_0_payload_B[24]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[25]),
        .Q(AudioA_V_data_V_0_payload_B[25]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[26]),
        .Q(AudioA_V_data_V_0_payload_B[26]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[27]),
        .Q(AudioA_V_data_V_0_payload_B[27]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[28]),
        .Q(AudioA_V_data_V_0_payload_B[28]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[29]),
        .Q(AudioA_V_data_V_0_payload_B[29]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[2]),
        .Q(AudioA_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[30]),
        .Q(AudioA_V_data_V_0_payload_B[30]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[31]),
        .Q(AudioA_V_data_V_0_payload_B[31]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[3]),
        .Q(AudioA_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[4]),
        .Q(AudioA_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[5]),
        .Q(AudioA_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[6]),
        .Q(AudioA_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[7]),
        .Q(AudioA_V_data_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[8]),
        .Q(AudioA_V_data_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \AudioA_V_data_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(AudioA_V_data_V_0_load_B),
        .D(AudioA_TDATA[9]),
        .Q(AudioA_V_data_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    AudioA_V_data_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_data_V_0_sel_rd_i_1_n_0),
        .Q(AudioA_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioA_V_data_V_0_sel_wr_i_1
       (.I0(AudioA_TVALID),
        .I1(AudioA_V_data_V_0_ack_in),
        .I2(AudioA_V_data_V_0_sel_wr),
        .O(AudioA_V_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_data_V_0_sel_wr_i_1_n_0),
        .Q(AudioA_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA820A8A0A8A0A8A0)) 
    \AudioA_V_data_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(AudioA_V_data_V_0_ack_in),
        .I2(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_TVALID),
        .I4(ap_CS_fsm_state2),
        .I5(AudioB_V_data_V_1_ack_in),
        .O(\AudioA_V_data_V_0_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F88FFFF)) 
    \AudioA_V_data_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(AudioB_V_data_V_1_ack_in),
        .I2(AudioA_TVALID),
        .I3(AudioA_V_data_V_0_ack_in),
        .I4(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .O(\AudioA_V_data_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_data_V_0_state[0]_i_1_n_0 ),
        .Q(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_data_V_0_state[1]_i_1_n_0 ),
        .Q(AudioA_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \AudioA_V_dest_V_0_payload_A[0]_i_1 
       (.I0(AudioA_TDEST),
        .I1(\AudioA_V_dest_V_0_state_reg_n_0_[0] ),
        .I2(AudioA_TREADY),
        .I3(AudioA_V_dest_V_0_sel_wr),
        .I4(AudioA_V_dest_V_0_payload_A),
        .O(\AudioA_V_dest_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \AudioA_V_dest_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_dest_V_0_payload_A[0]_i_1_n_0 ),
        .Q(AudioA_V_dest_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \AudioA_V_dest_V_0_payload_B[0]_i_1 
       (.I0(AudioA_TDEST),
        .I1(AudioA_V_dest_V_0_sel_wr),
        .I2(\AudioA_V_dest_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_TREADY),
        .I4(AudioA_V_dest_V_0_payload_B),
        .O(\AudioA_V_dest_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \AudioA_V_dest_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_dest_V_0_payload_B[0]_i_1_n_0 ),
        .Q(AudioA_V_dest_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioA_V_dest_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(\AudioA_V_dest_V_0_state_reg_n_0_[0] ),
        .I4(AudioA_V_dest_V_0_sel),
        .O(AudioA_V_dest_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_dest_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_dest_V_0_sel_rd_i_1_n_0),
        .Q(AudioA_V_dest_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    AudioA_V_dest_V_0_sel_wr_i_1
       (.I0(AudioA_TVALID),
        .I1(AudioA_TREADY),
        .I2(AudioA_V_dest_V_0_sel_wr),
        .O(AudioA_V_dest_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_dest_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_dest_V_0_sel_wr_i_1_n_0),
        .Q(AudioA_V_dest_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \AudioA_V_dest_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(AudioA_TREADY),
        .I2(\AudioA_V_dest_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_TVALID),
        .I4(p_186_in),
        .O(\AudioA_V_dest_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \AudioA_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \AudioA_V_dest_V_0_state[1]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(AudioA_TVALID),
        .I4(AudioA_TREADY),
        .I5(\AudioA_V_dest_V_0_state_reg_n_0_[0] ),
        .O(\AudioA_V_dest_V_0_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\AudioA_V_dest_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_dest_V_0_state[1]_i_2_n_0 ),
        .Q(AudioA_TREADY),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \AudioA_V_id_V_0_payload_A[0]_i_1 
       (.I0(AudioA_TID),
        .I1(\AudioA_V_id_V_0_state_reg_n_0_[0] ),
        .I2(AudioA_V_id_V_0_ack_in),
        .I3(AudioA_V_id_V_0_sel_wr),
        .I4(AudioA_V_id_V_0_payload_A),
        .O(\AudioA_V_id_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \AudioA_V_id_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_id_V_0_payload_A[0]_i_1_n_0 ),
        .Q(AudioA_V_id_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \AudioA_V_id_V_0_payload_B[0]_i_1 
       (.I0(AudioA_TID),
        .I1(AudioA_V_id_V_0_sel_wr),
        .I2(\AudioA_V_id_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_V_id_V_0_ack_in),
        .I4(AudioA_V_id_V_0_payload_B),
        .O(\AudioA_V_id_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \AudioA_V_id_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_id_V_0_payload_B[0]_i_1_n_0 ),
        .Q(AudioA_V_id_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioA_V_id_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(\AudioA_V_id_V_0_state_reg_n_0_[0] ),
        .I4(AudioA_V_id_V_0_sel),
        .O(AudioA_V_id_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_id_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_id_V_0_sel_rd_i_1_n_0),
        .Q(AudioA_V_id_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioA_V_id_V_0_sel_wr_i_1
       (.I0(AudioA_TVALID),
        .I1(AudioA_V_id_V_0_ack_in),
        .I2(AudioA_V_id_V_0_sel_wr),
        .O(AudioA_V_id_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_id_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_id_V_0_sel_wr_i_1_n_0),
        .Q(AudioA_V_id_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \AudioA_V_id_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(AudioA_V_id_V_0_ack_in),
        .I2(\AudioA_V_id_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_TVALID),
        .I4(p_186_in),
        .O(\AudioA_V_id_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \AudioA_V_id_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(AudioA_TVALID),
        .I4(AudioA_V_id_V_0_ack_in),
        .I5(\AudioA_V_id_V_0_state_reg_n_0_[0] ),
        .O(\AudioA_V_id_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_id_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_id_V_0_state[0]_i_1_n_0 ),
        .Q(\AudioA_V_id_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_id_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_id_V_0_state[1]_i_1_n_0 ),
        .Q(AudioA_V_id_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \AudioA_V_keep_V_0_payload_A[3]_i_1 
       (.I0(\AudioA_V_keep_V_0_state_reg_n_0_[0] ),
        .I1(AudioA_V_keep_V_0_ack_in),
        .I2(AudioA_V_keep_V_0_sel_wr),
        .O(\AudioA_V_keep_V_0_payload_A[3]_i_1_n_0 ));
  FDRE \AudioA_V_keep_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\AudioA_V_keep_V_0_payload_A[3]_i_1_n_0 ),
        .D(AudioA_TKEEP[0]),
        .Q(AudioA_V_keep_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \AudioA_V_keep_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\AudioA_V_keep_V_0_payload_A[3]_i_1_n_0 ),
        .D(AudioA_TKEEP[1]),
        .Q(AudioA_V_keep_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \AudioA_V_keep_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\AudioA_V_keep_V_0_payload_A[3]_i_1_n_0 ),
        .D(AudioA_TKEEP[2]),
        .Q(AudioA_V_keep_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \AudioA_V_keep_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\AudioA_V_keep_V_0_payload_A[3]_i_1_n_0 ),
        .D(AudioA_TKEEP[3]),
        .Q(AudioA_V_keep_V_0_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \AudioA_V_keep_V_0_payload_B[3]_i_1 
       (.I0(AudioA_V_keep_V_0_sel_wr),
        .I1(\AudioA_V_keep_V_0_state_reg_n_0_[0] ),
        .I2(AudioA_V_keep_V_0_ack_in),
        .O(AudioA_V_keep_V_0_load_B));
  FDRE \AudioA_V_keep_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(AudioA_V_keep_V_0_load_B),
        .D(AudioA_TKEEP[0]),
        .Q(AudioA_V_keep_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \AudioA_V_keep_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(AudioA_V_keep_V_0_load_B),
        .D(AudioA_TKEEP[1]),
        .Q(AudioA_V_keep_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \AudioA_V_keep_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(AudioA_V_keep_V_0_load_B),
        .D(AudioA_TKEEP[2]),
        .Q(AudioA_V_keep_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \AudioA_V_keep_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(AudioA_V_keep_V_0_load_B),
        .D(AudioA_TKEEP[3]),
        .Q(AudioA_V_keep_V_0_payload_B[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioA_V_keep_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(\AudioA_V_keep_V_0_state_reg_n_0_[0] ),
        .I4(AudioA_V_keep_V_0_sel),
        .O(AudioA_V_keep_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_keep_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_keep_V_0_sel_rd_i_1_n_0),
        .Q(AudioA_V_keep_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioA_V_keep_V_0_sel_wr_i_1
       (.I0(AudioA_TVALID),
        .I1(AudioA_V_keep_V_0_ack_in),
        .I2(AudioA_V_keep_V_0_sel_wr),
        .O(AudioA_V_keep_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_keep_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_keep_V_0_sel_wr_i_1_n_0),
        .Q(AudioA_V_keep_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \AudioA_V_keep_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(AudioA_V_keep_V_0_ack_in),
        .I2(\AudioA_V_keep_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_TVALID),
        .I4(p_186_in),
        .O(\AudioA_V_keep_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \AudioA_V_keep_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(AudioA_TVALID),
        .I4(AudioA_V_keep_V_0_ack_in),
        .I5(\AudioA_V_keep_V_0_state_reg_n_0_[0] ),
        .O(\AudioA_V_keep_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_keep_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_keep_V_0_state[0]_i_1_n_0 ),
        .Q(\AudioA_V_keep_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_keep_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_keep_V_0_state[1]_i_1_n_0 ),
        .Q(AudioA_V_keep_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \AudioA_V_last_V_0_payload_A[0]_i_1 
       (.I0(AudioA_TLAST),
        .I1(\AudioA_V_last_V_0_state_reg_n_0_[0] ),
        .I2(AudioA_V_last_V_0_ack_in),
        .I3(AudioA_V_last_V_0_sel_wr),
        .I4(AudioA_V_last_V_0_payload_A),
        .O(\AudioA_V_last_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \AudioA_V_last_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_last_V_0_payload_A[0]_i_1_n_0 ),
        .Q(AudioA_V_last_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \AudioA_V_last_V_0_payload_B[0]_i_1 
       (.I0(AudioA_TLAST),
        .I1(AudioA_V_last_V_0_sel_wr),
        .I2(\AudioA_V_last_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_V_last_V_0_ack_in),
        .I4(AudioA_V_last_V_0_payload_B),
        .O(\AudioA_V_last_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \AudioA_V_last_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_last_V_0_payload_B[0]_i_1_n_0 ),
        .Q(AudioA_V_last_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioA_V_last_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(\AudioA_V_last_V_0_state_reg_n_0_[0] ),
        .I4(AudioA_V_last_V_0_sel),
        .O(AudioA_V_last_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_last_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_last_V_0_sel_rd_i_1_n_0),
        .Q(AudioA_V_last_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioA_V_last_V_0_sel_wr_i_1
       (.I0(AudioA_TVALID),
        .I1(AudioA_V_last_V_0_ack_in),
        .I2(AudioA_V_last_V_0_sel_wr),
        .O(AudioA_V_last_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_last_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_last_V_0_sel_wr_i_1_n_0),
        .Q(AudioA_V_last_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \AudioA_V_last_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(AudioA_V_last_V_0_ack_in),
        .I2(\AudioA_V_last_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_TVALID),
        .I4(p_186_in),
        .O(\AudioA_V_last_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \AudioA_V_last_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(AudioA_TVALID),
        .I4(AudioA_V_last_V_0_ack_in),
        .I5(\AudioA_V_last_V_0_state_reg_n_0_[0] ),
        .O(\AudioA_V_last_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_last_V_0_state[0]_i_1_n_0 ),
        .Q(\AudioA_V_last_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_last_V_0_state[1]_i_1_n_0 ),
        .Q(AudioA_V_last_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \AudioA_V_strb_V_0_payload_A[3]_i_1 
       (.I0(\AudioA_V_strb_V_0_state_reg_n_0_[0] ),
        .I1(AudioA_V_strb_V_0_ack_in),
        .I2(AudioA_V_strb_V_0_sel_wr),
        .O(\AudioA_V_strb_V_0_payload_A[3]_i_1_n_0 ));
  FDRE \AudioA_V_strb_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\AudioA_V_strb_V_0_payload_A[3]_i_1_n_0 ),
        .D(AudioA_TSTRB[0]),
        .Q(AudioA_V_strb_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \AudioA_V_strb_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\AudioA_V_strb_V_0_payload_A[3]_i_1_n_0 ),
        .D(AudioA_TSTRB[1]),
        .Q(AudioA_V_strb_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \AudioA_V_strb_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\AudioA_V_strb_V_0_payload_A[3]_i_1_n_0 ),
        .D(AudioA_TSTRB[2]),
        .Q(AudioA_V_strb_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \AudioA_V_strb_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\AudioA_V_strb_V_0_payload_A[3]_i_1_n_0 ),
        .D(AudioA_TSTRB[3]),
        .Q(AudioA_V_strb_V_0_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \AudioA_V_strb_V_0_payload_B[3]_i_1 
       (.I0(AudioA_V_strb_V_0_sel_wr),
        .I1(\AudioA_V_strb_V_0_state_reg_n_0_[0] ),
        .I2(AudioA_V_strb_V_0_ack_in),
        .O(AudioA_V_strb_V_0_load_B));
  FDRE \AudioA_V_strb_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(AudioA_V_strb_V_0_load_B),
        .D(AudioA_TSTRB[0]),
        .Q(AudioA_V_strb_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \AudioA_V_strb_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(AudioA_V_strb_V_0_load_B),
        .D(AudioA_TSTRB[1]),
        .Q(AudioA_V_strb_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \AudioA_V_strb_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(AudioA_V_strb_V_0_load_B),
        .D(AudioA_TSTRB[2]),
        .Q(AudioA_V_strb_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \AudioA_V_strb_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(AudioA_V_strb_V_0_load_B),
        .D(AudioA_TSTRB[3]),
        .Q(AudioA_V_strb_V_0_payload_B[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioA_V_strb_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(\AudioA_V_strb_V_0_state_reg_n_0_[0] ),
        .I4(AudioA_V_strb_V_0_sel),
        .O(AudioA_V_strb_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_strb_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_strb_V_0_sel_rd_i_1_n_0),
        .Q(AudioA_V_strb_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioA_V_strb_V_0_sel_wr_i_1
       (.I0(AudioA_TVALID),
        .I1(AudioA_V_strb_V_0_ack_in),
        .I2(AudioA_V_strb_V_0_sel_wr),
        .O(AudioA_V_strb_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_strb_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_strb_V_0_sel_wr_i_1_n_0),
        .Q(AudioA_V_strb_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \AudioA_V_strb_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(AudioA_V_strb_V_0_ack_in),
        .I2(\AudioA_V_strb_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_TVALID),
        .I4(p_186_in),
        .O(\AudioA_V_strb_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \AudioA_V_strb_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(AudioA_TVALID),
        .I4(AudioA_V_strb_V_0_ack_in),
        .I5(\AudioA_V_strb_V_0_state_reg_n_0_[0] ),
        .O(\AudioA_V_strb_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_strb_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_strb_V_0_state[0]_i_1_n_0 ),
        .Q(\AudioA_V_strb_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_strb_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_strb_V_0_state[1]_i_1_n_0 ),
        .Q(AudioA_V_strb_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \AudioA_V_user_V_0_payload_A[0]_i_1 
       (.I0(AudioA_TUSER),
        .I1(\AudioA_V_user_V_0_state_reg_n_0_[0] ),
        .I2(AudioA_V_user_V_0_ack_in),
        .I3(AudioA_V_user_V_0_sel_wr),
        .I4(AudioA_V_user_V_0_payload_A),
        .O(\AudioA_V_user_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \AudioA_V_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_user_V_0_payload_A[0]_i_1_n_0 ),
        .Q(AudioA_V_user_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \AudioA_V_user_V_0_payload_B[0]_i_1 
       (.I0(AudioA_TUSER),
        .I1(AudioA_V_user_V_0_sel_wr),
        .I2(\AudioA_V_user_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_V_user_V_0_ack_in),
        .I4(AudioA_V_user_V_0_payload_B),
        .O(\AudioA_V_user_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \AudioA_V_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_user_V_0_payload_B[0]_i_1_n_0 ),
        .Q(AudioA_V_user_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioA_V_user_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(\AudioA_V_user_V_0_state_reg_n_0_[0] ),
        .I4(AudioA_V_user_V_0_sel),
        .O(AudioA_V_user_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_user_V_0_sel_rd_i_1_n_0),
        .Q(AudioA_V_user_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioA_V_user_V_0_sel_wr_i_1
       (.I0(AudioA_TVALID),
        .I1(AudioA_V_user_V_0_ack_in),
        .I2(AudioA_V_user_V_0_sel_wr),
        .O(AudioA_V_user_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioA_V_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioA_V_user_V_0_sel_wr_i_1_n_0),
        .Q(AudioA_V_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \AudioA_V_user_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(AudioA_V_user_V_0_ack_in),
        .I2(\AudioA_V_user_V_0_state_reg_n_0_[0] ),
        .I3(AudioA_TVALID),
        .I4(p_186_in),
        .O(\AudioA_V_user_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \AudioA_V_user_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(AudioA_TVALID),
        .I4(AudioA_V_user_V_0_ack_in),
        .I5(\AudioA_V_user_V_0_state_reg_n_0_[0] ),
        .O(\AudioA_V_user_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_user_V_0_state[0]_i_1_n_0 ),
        .Q(\AudioA_V_user_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioA_V_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioA_V_user_V_0_state[1]_i_1_n_0 ),
        .Q(AudioA_V_user_V_0_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[0]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[0]),
        .I1(AudioB_V_data_V_1_payload_A[0]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[10]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[10]),
        .I1(AudioB_V_data_V_1_payload_A[10]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[11]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[11]),
        .I1(AudioB_V_data_V_1_payload_A[11]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[12]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[12]),
        .I1(AudioB_V_data_V_1_payload_A[12]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[13]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[13]),
        .I1(AudioB_V_data_V_1_payload_A[13]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[14]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[14]),
        .I1(AudioB_V_data_V_1_payload_A[14]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[15]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[15]),
        .I1(AudioB_V_data_V_1_payload_A[15]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[16]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[16]),
        .I1(AudioB_V_data_V_1_payload_A[16]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[17]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[17]),
        .I1(AudioB_V_data_V_1_payload_A[17]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[18]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[18]),
        .I1(AudioB_V_data_V_1_payload_A[18]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[19]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[19]),
        .I1(AudioB_V_data_V_1_payload_A[19]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[1]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[1]),
        .I1(AudioB_V_data_V_1_payload_A[1]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[20]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[20]),
        .I1(AudioB_V_data_V_1_payload_A[20]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[21]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[21]),
        .I1(AudioB_V_data_V_1_payload_A[21]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[22]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[22]),
        .I1(AudioB_V_data_V_1_payload_A[22]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[23]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[23]),
        .I1(AudioB_V_data_V_1_payload_A[23]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[24]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[24]),
        .I1(AudioB_V_data_V_1_payload_A[24]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[25]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[25]),
        .I1(AudioB_V_data_V_1_payload_A[25]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[26]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[26]),
        .I1(AudioB_V_data_V_1_payload_A[26]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[27]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[27]),
        .I1(AudioB_V_data_V_1_payload_A[27]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[28]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[28]),
        .I1(AudioB_V_data_V_1_payload_A[28]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[29]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[29]),
        .I1(AudioB_V_data_V_1_payload_A[29]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[2]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[2]),
        .I1(AudioB_V_data_V_1_payload_A[2]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[30]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[30]),
        .I1(AudioB_V_data_V_1_payload_A[30]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[31]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[31]),
        .I1(AudioB_V_data_V_1_payload_A[31]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[3]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[3]),
        .I1(AudioB_V_data_V_1_payload_A[3]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[4]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[4]),
        .I1(AudioB_V_data_V_1_payload_A[4]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[5]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[5]),
        .I1(AudioB_V_data_V_1_payload_A[5]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[6]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[6]),
        .I1(AudioB_V_data_V_1_payload_A[6]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[7]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[7]),
        .I1(AudioB_V_data_V_1_payload_A[7]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[8]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[8]),
        .I1(AudioB_V_data_V_1_payload_A[8]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_TDATA[9]_INST_0 
       (.I0(AudioB_V_data_V_1_payload_B[9]),
        .I1(AudioB_V_data_V_1_payload_A[9]),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TDEST[0]_INST_0 
       (.I0(AudioB_V_dest_V_1_payload_B),
        .I1(AudioB_V_dest_V_1_sel),
        .I2(AudioB_V_dest_V_1_payload_A),
        .O(AudioB_TDEST));
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TID[0]_INST_0 
       (.I0(AudioB_V_id_V_1_payload_B),
        .I1(AudioB_V_id_V_1_sel),
        .I2(AudioB_V_id_V_1_payload_A),
        .O(AudioB_TID));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TKEEP[0]_INST_0 
       (.I0(AudioB_V_keep_V_1_payload_B[0]),
        .I1(AudioB_V_keep_V_1_sel),
        .I2(AudioB_V_keep_V_1_payload_A[0]),
        .O(AudioB_TKEEP[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TKEEP[1]_INST_0 
       (.I0(AudioB_V_keep_V_1_payload_B[1]),
        .I1(AudioB_V_keep_V_1_sel),
        .I2(AudioB_V_keep_V_1_payload_A[1]),
        .O(AudioB_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TKEEP[2]_INST_0 
       (.I0(AudioB_V_keep_V_1_payload_B[2]),
        .I1(AudioB_V_keep_V_1_sel),
        .I2(AudioB_V_keep_V_1_payload_A[2]),
        .O(AudioB_TKEEP[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TKEEP[3]_INST_0 
       (.I0(AudioB_V_keep_V_1_payload_B[3]),
        .I1(AudioB_V_keep_V_1_sel),
        .I2(AudioB_V_keep_V_1_payload_A[3]),
        .O(AudioB_TKEEP[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TLAST[0]_INST_0 
       (.I0(AudioB_V_last_V_1_payload_B),
        .I1(AudioB_V_last_V_1_sel),
        .I2(AudioB_V_last_V_1_payload_A),
        .O(AudioB_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TSTRB[0]_INST_0 
       (.I0(AudioB_V_strb_V_1_payload_B[0]),
        .I1(AudioB_V_strb_V_1_sel),
        .I2(AudioB_V_strb_V_1_payload_A[0]),
        .O(AudioB_TSTRB[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TSTRB[1]_INST_0 
       (.I0(AudioB_V_strb_V_1_payload_B[1]),
        .I1(AudioB_V_strb_V_1_sel),
        .I2(AudioB_V_strb_V_1_payload_A[1]),
        .O(AudioB_TSTRB[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TSTRB[2]_INST_0 
       (.I0(AudioB_V_strb_V_1_payload_B[2]),
        .I1(AudioB_V_strb_V_1_sel),
        .I2(AudioB_V_strb_V_1_payload_A[2]),
        .O(AudioB_TSTRB[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TSTRB[3]_INST_0 
       (.I0(AudioB_V_strb_V_1_payload_B[3]),
        .I1(AudioB_V_strb_V_1_sel),
        .I2(AudioB_V_strb_V_1_payload_A[3]),
        .O(AudioB_TSTRB[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_TUSER[0]_INST_0 
       (.I0(AudioB_V_user_V_1_payload_B),
        .I1(AudioB_V_user_V_1_sel),
        .I2(AudioB_V_user_V_1_payload_A),
        .O(AudioB_TUSER));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[0]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[0]),
        .I1(AudioA_V_data_V_0_payload_A[0]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[10]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[10]),
        .I1(AudioA_V_data_V_0_payload_A[10]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[11]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[11]),
        .I1(AudioA_V_data_V_0_payload_A[11]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[12]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[12]),
        .I1(AudioA_V_data_V_0_payload_A[12]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[13]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[13]),
        .I1(AudioA_V_data_V_0_payload_A[13]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[14]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[14]),
        .I1(AudioA_V_data_V_0_payload_A[14]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[15]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[15]),
        .I1(AudioA_V_data_V_0_payload_A[15]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[16]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[16]),
        .I1(AudioA_V_data_V_0_payload_A[16]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[17]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[17]),
        .I1(AudioA_V_data_V_0_payload_A[17]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[18]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[18]),
        .I1(AudioA_V_data_V_0_payload_A[18]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[19]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[19]),
        .I1(AudioA_V_data_V_0_payload_A[19]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[1]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[1]),
        .I1(AudioA_V_data_V_0_payload_A[1]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[20]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[20]),
        .I1(AudioA_V_data_V_0_payload_A[20]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[21]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[21]),
        .I1(AudioA_V_data_V_0_payload_A[21]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[22]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[22]),
        .I1(AudioA_V_data_V_0_payload_A[22]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[23]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[23]),
        .I1(AudioA_V_data_V_0_payload_A[23]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[24]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[24]),
        .I1(AudioA_V_data_V_0_payload_A[24]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[25]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[25]),
        .I1(AudioA_V_data_V_0_payload_A[25]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[26]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[26]),
        .I1(AudioA_V_data_V_0_payload_A[26]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[27]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[27]),
        .I1(AudioA_V_data_V_0_payload_A[27]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[28]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[28]),
        .I1(AudioA_V_data_V_0_payload_A[28]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[29]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[29]),
        .I1(AudioA_V_data_V_0_payload_A[29]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[2]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[2]),
        .I1(AudioA_V_data_V_0_payload_A[2]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[30]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[30]),
        .I1(AudioA_V_data_V_0_payload_A[30]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[30]));
  LUT3 #(
    .INIT(8'h0D)) 
    \AudioB_V_data_V_1_payload_A[31]_i_1 
       (.I0(\AudioB_V_data_V_1_state_reg_n_0_[0] ),
        .I1(AudioB_V_data_V_1_ack_in),
        .I2(AudioB_V_data_V_1_sel_wr),
        .O(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[31]_i_2 
       (.I0(AudioA_V_data_V_0_payload_B[31]),
        .I1(AudioA_V_data_V_0_payload_A[31]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[3]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[3]),
        .I1(AudioA_V_data_V_0_payload_A[3]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[4]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[4]),
        .I1(AudioA_V_data_V_0_payload_A[4]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[5]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[5]),
        .I1(AudioA_V_data_V_0_payload_A[5]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[6]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[6]),
        .I1(AudioA_V_data_V_0_payload_A[6]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[7]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[7]),
        .I1(AudioA_V_data_V_0_payload_A[7]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[8]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[8]),
        .I1(AudioA_V_data_V_0_payload_A[8]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \AudioB_V_data_V_1_payload_A[9]_i_1 
       (.I0(AudioA_V_data_V_0_payload_B[9]),
        .I1(AudioA_V_data_V_0_payload_A[9]),
        .I2(AudioA_V_data_V_0_sel),
        .O(AudioA_V_data_V_0_data_out[9]));
  FDRE \AudioB_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[0]),
        .Q(AudioB_V_data_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[10]),
        .Q(AudioB_V_data_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[11]),
        .Q(AudioB_V_data_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[12]),
        .Q(AudioB_V_data_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[13]),
        .Q(AudioB_V_data_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[14]),
        .Q(AudioB_V_data_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[15]),
        .Q(AudioB_V_data_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[16]),
        .Q(AudioB_V_data_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[17]),
        .Q(AudioB_V_data_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[18]),
        .Q(AudioB_V_data_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[19]),
        .Q(AudioB_V_data_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[1]),
        .Q(AudioB_V_data_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[20]),
        .Q(AudioB_V_data_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[21]),
        .Q(AudioB_V_data_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[22]),
        .Q(AudioB_V_data_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[23]),
        .Q(AudioB_V_data_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[24]),
        .Q(AudioB_V_data_V_1_payload_A[24]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[25]),
        .Q(AudioB_V_data_V_1_payload_A[25]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[26]),
        .Q(AudioB_V_data_V_1_payload_A[26]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[27]),
        .Q(AudioB_V_data_V_1_payload_A[27]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[28]),
        .Q(AudioB_V_data_V_1_payload_A[28]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[29]),
        .Q(AudioB_V_data_V_1_payload_A[29]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[2]),
        .Q(AudioB_V_data_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[30]),
        .Q(AudioB_V_data_V_1_payload_A[30]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[31]),
        .Q(AudioB_V_data_V_1_payload_A[31]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[3]),
        .Q(AudioB_V_data_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[4]),
        .Q(AudioB_V_data_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[5]),
        .Q(AudioB_V_data_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[6]),
        .Q(AudioB_V_data_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[7]),
        .Q(AudioB_V_data_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[8]),
        .Q(AudioB_V_data_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\AudioB_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(AudioA_V_data_V_0_data_out[9]),
        .Q(AudioB_V_data_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \AudioB_V_data_V_1_payload_B[31]_i_1 
       (.I0(AudioB_V_data_V_1_sel_wr),
        .I1(\AudioB_V_data_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .O(AudioB_V_data_V_1_load_B));
  FDRE \AudioB_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[0]),
        .Q(AudioB_V_data_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[10]),
        .Q(AudioB_V_data_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[11]),
        .Q(AudioB_V_data_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[12]),
        .Q(AudioB_V_data_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[13]),
        .Q(AudioB_V_data_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[14]),
        .Q(AudioB_V_data_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[15]),
        .Q(AudioB_V_data_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[16]),
        .Q(AudioB_V_data_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[17]),
        .Q(AudioB_V_data_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[18]),
        .Q(AudioB_V_data_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[19]),
        .Q(AudioB_V_data_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[1]),
        .Q(AudioB_V_data_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[20]),
        .Q(AudioB_V_data_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[21]),
        .Q(AudioB_V_data_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[22]),
        .Q(AudioB_V_data_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[23]),
        .Q(AudioB_V_data_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[24]),
        .Q(AudioB_V_data_V_1_payload_B[24]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[25]),
        .Q(AudioB_V_data_V_1_payload_B[25]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[26]),
        .Q(AudioB_V_data_V_1_payload_B[26]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[27]),
        .Q(AudioB_V_data_V_1_payload_B[27]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[28]),
        .Q(AudioB_V_data_V_1_payload_B[28]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[29]),
        .Q(AudioB_V_data_V_1_payload_B[29]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[2]),
        .Q(AudioB_V_data_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[30]),
        .Q(AudioB_V_data_V_1_payload_B[30]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[31]),
        .Q(AudioB_V_data_V_1_payload_B[31]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[3]),
        .Q(AudioB_V_data_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[4]),
        .Q(AudioB_V_data_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[5]),
        .Q(AudioB_V_data_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[6]),
        .Q(AudioB_V_data_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[7]),
        .Q(AudioB_V_data_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[8]),
        .Q(AudioB_V_data_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \AudioB_V_data_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(AudioB_V_data_V_1_load_B),
        .D(AudioA_V_data_V_0_data_out[9]),
        .Q(AudioB_V_data_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioB_V_data_V_1_sel_rd_i_1
       (.I0(AudioB_TREADY),
        .I1(\AudioB_V_data_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_sel),
        .O(AudioB_V_data_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_data_V_1_sel_rd_i_1_n_0),
        .Q(AudioB_V_data_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    AudioB_V_data_V_1_sel_wr_i_1
       (.I0(AudioB_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AudioB_V_data_V_1_sel_wr),
        .O(AudioB_V_data_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_data_V_1_sel_wr_i_1_n_0),
        .Q(AudioB_V_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA8A8088808880888)) 
    \AudioB_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\AudioB_V_data_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(AudioB_TREADY),
        .I4(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I5(ap_CS_fsm_state2),
        .O(\AudioB_V_data_V_1_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFF0FF)) 
    \AudioB_V_data_V_1_state[1]_i_1 
       (.I0(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state2),
        .I2(AudioB_TREADY),
        .I3(\AudioB_V_data_V_1_state_reg_n_0_[0] ),
        .I4(AudioB_V_data_V_1_ack_in),
        .O(\AudioB_V_data_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_data_V_1_state[0]_i_1_n_0 ),
        .Q(\AudioB_V_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_data_V_1_state[1]_i_1_n_0 ),
        .Q(AudioB_V_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \AudioB_V_dest_V_1_payload_A[0]_i_1 
       (.I0(AudioA_V_dest_V_0_payload_B),
        .I1(AudioA_V_dest_V_0_sel),
        .I2(AudioA_V_dest_V_0_payload_A),
        .I3(\AudioB_V_dest_V_1_payload_A[0]_i_2_n_0 ),
        .I4(AudioB_V_dest_V_1_sel_wr),
        .I5(AudioB_V_dest_V_1_payload_A),
        .O(\AudioB_V_dest_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \AudioB_V_dest_V_1_payload_A[0]_i_2 
       (.I0(AudioB_TVALID),
        .I1(AudioB_V_dest_V_1_ack_in),
        .O(\AudioB_V_dest_V_1_payload_A[0]_i_2_n_0 ));
  FDRE \AudioB_V_dest_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_dest_V_1_payload_A[0]_i_1_n_0 ),
        .Q(AudioB_V_dest_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \AudioB_V_dest_V_1_payload_B[0]_i_1 
       (.I0(AudioA_V_dest_V_0_payload_B),
        .I1(AudioA_V_dest_V_0_sel),
        .I2(AudioA_V_dest_V_0_payload_A),
        .I3(AudioB_V_dest_V_1_sel_wr),
        .I4(\AudioB_V_dest_V_1_payload_A[0]_i_2_n_0 ),
        .I5(AudioB_V_dest_V_1_payload_B),
        .O(\AudioB_V_dest_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \AudioB_V_dest_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_dest_V_1_payload_B[0]_i_1_n_0 ),
        .Q(AudioB_V_dest_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioB_V_dest_V_1_sel_rd_i_1
       (.I0(AudioB_TREADY),
        .I1(AudioB_TVALID),
        .I2(AudioB_V_dest_V_1_sel),
        .O(AudioB_V_dest_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_dest_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_dest_V_1_sel_rd_i_1_n_0),
        .Q(AudioB_V_dest_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioB_V_dest_V_1_sel_wr_i_1
       (.I0(AudioB_V_dest_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AudioB_V_data_V_1_ack_in),
        .I4(AudioB_V_dest_V_1_sel_wr),
        .O(AudioB_V_dest_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_dest_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_dest_V_1_sel_wr_i_1_n_0),
        .Q(AudioB_V_dest_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \AudioB_V_dest_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(AudioB_TVALID),
        .I2(AudioB_V_dest_V_1_ack_in),
        .I3(AudioB_TREADY),
        .I4(p_186_in),
        .O(\AudioB_V_dest_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \AudioB_V_dest_V_1_state[0]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(AudioB_V_data_V_1_ack_in),
        .O(p_186_in));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \AudioB_V_dest_V_1_state[1]_i_1 
       (.I0(AudioB_V_data_V_1_ack_in),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(AudioB_TREADY),
        .I4(AudioB_TVALID),
        .I5(AudioB_V_dest_V_1_ack_in),
        .O(\AudioB_V_dest_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_dest_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_dest_V_1_state[0]_i_1_n_0 ),
        .Q(AudioB_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_dest_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_dest_V_1_state[1]_i_1_n_0 ),
        .Q(AudioB_V_dest_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \AudioB_V_id_V_1_payload_A[0]_i_1 
       (.I0(AudioA_V_id_V_0_payload_B),
        .I1(AudioA_V_id_V_0_sel),
        .I2(AudioA_V_id_V_0_payload_A),
        .I3(\AudioB_V_id_V_1_payload_A[0]_i_2_n_0 ),
        .I4(AudioB_V_id_V_1_sel_wr),
        .I5(AudioB_V_id_V_1_payload_A),
        .O(\AudioB_V_id_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AudioB_V_id_V_1_payload_A[0]_i_2 
       (.I0(AudioB_V_id_V_1_ack_in),
        .I1(\AudioB_V_id_V_1_state_reg_n_0_[0] ),
        .O(\AudioB_V_id_V_1_payload_A[0]_i_2_n_0 ));
  FDRE \AudioB_V_id_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_id_V_1_payload_A[0]_i_1_n_0 ),
        .Q(AudioB_V_id_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \AudioB_V_id_V_1_payload_B[0]_i_1 
       (.I0(AudioA_V_id_V_0_payload_B),
        .I1(AudioA_V_id_V_0_sel),
        .I2(AudioA_V_id_V_0_payload_A),
        .I3(AudioB_V_id_V_1_sel_wr),
        .I4(\AudioB_V_id_V_1_payload_A[0]_i_2_n_0 ),
        .I5(AudioB_V_id_V_1_payload_B),
        .O(\AudioB_V_id_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \AudioB_V_id_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_id_V_1_payload_B[0]_i_1_n_0 ),
        .Q(AudioB_V_id_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioB_V_id_V_1_sel_rd_i_1
       (.I0(AudioB_TREADY),
        .I1(\AudioB_V_id_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_id_V_1_sel),
        .O(AudioB_V_id_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_id_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_id_V_1_sel_rd_i_1_n_0),
        .Q(AudioB_V_id_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioB_V_id_V_1_sel_wr_i_1
       (.I0(AudioB_V_id_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AudioB_V_data_V_1_ack_in),
        .I4(AudioB_V_id_V_1_sel_wr),
        .O(AudioB_V_id_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_id_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_id_V_1_sel_wr_i_1_n_0),
        .Q(AudioB_V_id_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \AudioB_V_id_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\AudioB_V_id_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_id_V_1_ack_in),
        .I3(AudioB_TREADY),
        .I4(p_186_in),
        .O(\AudioB_V_id_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \AudioB_V_id_V_1_state[1]_i_1 
       (.I0(AudioB_V_data_V_1_ack_in),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(AudioB_TREADY),
        .I4(\AudioB_V_id_V_1_state_reg_n_0_[0] ),
        .I5(AudioB_V_id_V_1_ack_in),
        .O(\AudioB_V_id_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_id_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_id_V_1_state[0]_i_1_n_0 ),
        .Q(\AudioB_V_id_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_id_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_id_V_1_state[1]_i_1_n_0 ),
        .Q(AudioB_V_id_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_V_keep_V_1_payload_A[0]_i_1 
       (.I0(AudioA_V_keep_V_0_payload_B[0]),
        .I1(AudioA_V_keep_V_0_sel),
        .I2(AudioA_V_keep_V_0_payload_A[0]),
        .O(AudioA_V_keep_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_V_keep_V_1_payload_A[1]_i_1 
       (.I0(AudioA_V_keep_V_0_payload_B[1]),
        .I1(AudioA_V_keep_V_0_sel),
        .I2(AudioA_V_keep_V_0_payload_A[1]),
        .O(AudioA_V_keep_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_V_keep_V_1_payload_A[2]_i_1 
       (.I0(AudioA_V_keep_V_0_payload_B[2]),
        .I1(AudioA_V_keep_V_0_sel),
        .I2(AudioA_V_keep_V_0_payload_A[2]),
        .O(AudioA_V_keep_V_0_data_out[2]));
  LUT3 #(
    .INIT(8'h0D)) 
    \AudioB_V_keep_V_1_payload_A[3]_i_1 
       (.I0(\AudioB_V_keep_V_1_state_reg_n_0_[0] ),
        .I1(AudioB_V_keep_V_1_ack_in),
        .I2(AudioB_V_keep_V_1_sel_wr),
        .O(\AudioB_V_keep_V_1_payload_A[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_V_keep_V_1_payload_A[3]_i_2 
       (.I0(AudioA_V_keep_V_0_payload_B[3]),
        .I1(AudioA_V_keep_V_0_sel),
        .I2(AudioA_V_keep_V_0_payload_A[3]),
        .O(AudioA_V_keep_V_0_data_out[3]));
  FDRE \AudioB_V_keep_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\AudioB_V_keep_V_1_payload_A[3]_i_1_n_0 ),
        .D(AudioA_V_keep_V_0_data_out[0]),
        .Q(AudioB_V_keep_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \AudioB_V_keep_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\AudioB_V_keep_V_1_payload_A[3]_i_1_n_0 ),
        .D(AudioA_V_keep_V_0_data_out[1]),
        .Q(AudioB_V_keep_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \AudioB_V_keep_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\AudioB_V_keep_V_1_payload_A[3]_i_1_n_0 ),
        .D(AudioA_V_keep_V_0_data_out[2]),
        .Q(AudioB_V_keep_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \AudioB_V_keep_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\AudioB_V_keep_V_1_payload_A[3]_i_1_n_0 ),
        .D(AudioA_V_keep_V_0_data_out[3]),
        .Q(AudioB_V_keep_V_1_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \AudioB_V_keep_V_1_payload_B[3]_i_1 
       (.I0(AudioB_V_keep_V_1_sel_wr),
        .I1(\AudioB_V_keep_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_keep_V_1_ack_in),
        .O(AudioB_V_keep_V_1_load_B));
  FDRE \AudioB_V_keep_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(AudioB_V_keep_V_1_load_B),
        .D(AudioA_V_keep_V_0_data_out[0]),
        .Q(AudioB_V_keep_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \AudioB_V_keep_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(AudioB_V_keep_V_1_load_B),
        .D(AudioA_V_keep_V_0_data_out[1]),
        .Q(AudioB_V_keep_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \AudioB_V_keep_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(AudioB_V_keep_V_1_load_B),
        .D(AudioA_V_keep_V_0_data_out[2]),
        .Q(AudioB_V_keep_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \AudioB_V_keep_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(AudioB_V_keep_V_1_load_B),
        .D(AudioA_V_keep_V_0_data_out[3]),
        .Q(AudioB_V_keep_V_1_payload_B[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioB_V_keep_V_1_sel_rd_i_1
       (.I0(AudioB_TREADY),
        .I1(\AudioB_V_keep_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_keep_V_1_sel),
        .O(AudioB_V_keep_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_keep_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_keep_V_1_sel_rd_i_1_n_0),
        .Q(AudioB_V_keep_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioB_V_keep_V_1_sel_wr_i_1
       (.I0(AudioB_V_keep_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AudioB_V_data_V_1_ack_in),
        .I4(AudioB_V_keep_V_1_sel_wr),
        .O(AudioB_V_keep_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_keep_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_keep_V_1_sel_wr_i_1_n_0),
        .Q(AudioB_V_keep_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \AudioB_V_keep_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\AudioB_V_keep_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_keep_V_1_ack_in),
        .I3(AudioB_TREADY),
        .I4(p_186_in),
        .O(\AudioB_V_keep_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \AudioB_V_keep_V_1_state[1]_i_1 
       (.I0(AudioB_V_data_V_1_ack_in),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(AudioB_TREADY),
        .I4(\AudioB_V_keep_V_1_state_reg_n_0_[0] ),
        .I5(AudioB_V_keep_V_1_ack_in),
        .O(\AudioB_V_keep_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_keep_V_1_state[0]_i_1_n_0 ),
        .Q(\AudioB_V_keep_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_keep_V_1_state[1]_i_1_n_0 ),
        .Q(AudioB_V_keep_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \AudioB_V_last_V_1_payload_A[0]_i_1 
       (.I0(AudioA_V_last_V_0_payload_B),
        .I1(AudioA_V_last_V_0_sel),
        .I2(AudioA_V_last_V_0_payload_A),
        .I3(\AudioB_V_last_V_1_payload_A[0]_i_2_n_0 ),
        .I4(AudioB_V_last_V_1_sel_wr),
        .I5(AudioB_V_last_V_1_payload_A),
        .O(\AudioB_V_last_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AudioB_V_last_V_1_payload_A[0]_i_2 
       (.I0(AudioB_V_last_V_1_ack_in),
        .I1(\AudioB_V_last_V_1_state_reg_n_0_[0] ),
        .O(\AudioB_V_last_V_1_payload_A[0]_i_2_n_0 ));
  FDRE \AudioB_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(AudioB_V_last_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \AudioB_V_last_V_1_payload_B[0]_i_1 
       (.I0(AudioA_V_last_V_0_payload_B),
        .I1(AudioA_V_last_V_0_sel),
        .I2(AudioA_V_last_V_0_payload_A),
        .I3(AudioB_V_last_V_1_sel_wr),
        .I4(\AudioB_V_last_V_1_payload_A[0]_i_2_n_0 ),
        .I5(AudioB_V_last_V_1_payload_B),
        .O(\AudioB_V_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \AudioB_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(AudioB_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioB_V_last_V_1_sel_rd_i_1
       (.I0(\AudioB_V_last_V_1_state_reg_n_0_[0] ),
        .I1(AudioB_TREADY),
        .I2(AudioB_V_last_V_1_sel),
        .O(AudioB_V_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_last_V_1_sel_rd_i_1_n_0),
        .Q(AudioB_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioB_V_last_V_1_sel_wr_i_1
       (.I0(AudioB_V_last_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AudioB_V_data_V_1_ack_in),
        .I4(AudioB_V_last_V_1_sel_wr),
        .O(AudioB_V_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_last_V_1_sel_wr_i_1_n_0),
        .Q(AudioB_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \AudioB_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\AudioB_V_last_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_last_V_1_ack_in),
        .I3(AudioB_TREADY),
        .I4(p_186_in),
        .O(\AudioB_V_last_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \AudioB_V_last_V_1_state[1]_i_1 
       (.I0(AudioB_V_data_V_1_ack_in),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(AudioB_TREADY),
        .I4(\AudioB_V_last_V_1_state_reg_n_0_[0] ),
        .I5(AudioB_V_last_V_1_ack_in),
        .O(\AudioB_V_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(\AudioB_V_last_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_last_V_1_state[1]_i_1_n_0 ),
        .Q(AudioB_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_V_strb_V_1_payload_A[0]_i_1 
       (.I0(AudioA_V_strb_V_0_payload_B[0]),
        .I1(AudioA_V_strb_V_0_sel),
        .I2(AudioA_V_strb_V_0_payload_A[0]),
        .O(AudioA_V_strb_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_V_strb_V_1_payload_A[1]_i_1 
       (.I0(AudioA_V_strb_V_0_payload_B[1]),
        .I1(AudioA_V_strb_V_0_sel),
        .I2(AudioA_V_strb_V_0_payload_A[1]),
        .O(AudioA_V_strb_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_V_strb_V_1_payload_A[2]_i_1 
       (.I0(AudioA_V_strb_V_0_payload_B[2]),
        .I1(AudioA_V_strb_V_0_sel),
        .I2(AudioA_V_strb_V_0_payload_A[2]),
        .O(AudioA_V_strb_V_0_data_out[2]));
  LUT3 #(
    .INIT(8'h0D)) 
    \AudioB_V_strb_V_1_payload_A[3]_i_1 
       (.I0(\AudioB_V_strb_V_1_state_reg_n_0_[0] ),
        .I1(AudioB_V_strb_V_1_ack_in),
        .I2(AudioB_V_strb_V_1_sel_wr),
        .O(\AudioB_V_strb_V_1_payload_A[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AudioB_V_strb_V_1_payload_A[3]_i_2 
       (.I0(AudioA_V_strb_V_0_payload_B[3]),
        .I1(AudioA_V_strb_V_0_sel),
        .I2(AudioA_V_strb_V_0_payload_A[3]),
        .O(AudioA_V_strb_V_0_data_out[3]));
  FDRE \AudioB_V_strb_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\AudioB_V_strb_V_1_payload_A[3]_i_1_n_0 ),
        .D(AudioA_V_strb_V_0_data_out[0]),
        .Q(AudioB_V_strb_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \AudioB_V_strb_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\AudioB_V_strb_V_1_payload_A[3]_i_1_n_0 ),
        .D(AudioA_V_strb_V_0_data_out[1]),
        .Q(AudioB_V_strb_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \AudioB_V_strb_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\AudioB_V_strb_V_1_payload_A[3]_i_1_n_0 ),
        .D(AudioA_V_strb_V_0_data_out[2]),
        .Q(AudioB_V_strb_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \AudioB_V_strb_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\AudioB_V_strb_V_1_payload_A[3]_i_1_n_0 ),
        .D(AudioA_V_strb_V_0_data_out[3]),
        .Q(AudioB_V_strb_V_1_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \AudioB_V_strb_V_1_payload_B[3]_i_1 
       (.I0(AudioB_V_strb_V_1_sel_wr),
        .I1(\AudioB_V_strb_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_strb_V_1_ack_in),
        .O(AudioB_V_strb_V_1_load_B));
  FDRE \AudioB_V_strb_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(AudioB_V_strb_V_1_load_B),
        .D(AudioA_V_strb_V_0_data_out[0]),
        .Q(AudioB_V_strb_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \AudioB_V_strb_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(AudioB_V_strb_V_1_load_B),
        .D(AudioA_V_strb_V_0_data_out[1]),
        .Q(AudioB_V_strb_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \AudioB_V_strb_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(AudioB_V_strb_V_1_load_B),
        .D(AudioA_V_strb_V_0_data_out[2]),
        .Q(AudioB_V_strb_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \AudioB_V_strb_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(AudioB_V_strb_V_1_load_B),
        .D(AudioA_V_strb_V_0_data_out[3]),
        .Q(AudioB_V_strb_V_1_payload_B[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioB_V_strb_V_1_sel_rd_i_1
       (.I0(\AudioB_V_strb_V_1_state_reg_n_0_[0] ),
        .I1(AudioB_TREADY),
        .I2(AudioB_V_strb_V_1_sel),
        .O(AudioB_V_strb_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_strb_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_strb_V_1_sel_rd_i_1_n_0),
        .Q(AudioB_V_strb_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioB_V_strb_V_1_sel_wr_i_1
       (.I0(AudioB_V_strb_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AudioB_V_data_V_1_ack_in),
        .I4(AudioB_V_strb_V_1_sel_wr),
        .O(AudioB_V_strb_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_strb_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_strb_V_1_sel_wr_i_1_n_0),
        .Q(AudioB_V_strb_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \AudioB_V_strb_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\AudioB_V_strb_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_strb_V_1_ack_in),
        .I3(AudioB_TREADY),
        .I4(p_186_in),
        .O(\AudioB_V_strb_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \AudioB_V_strb_V_1_state[1]_i_1 
       (.I0(AudioB_V_data_V_1_ack_in),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(AudioB_TREADY),
        .I4(\AudioB_V_strb_V_1_state_reg_n_0_[0] ),
        .I5(AudioB_V_strb_V_1_ack_in),
        .O(\AudioB_V_strb_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_strb_V_1_state[0]_i_1_n_0 ),
        .Q(\AudioB_V_strb_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_strb_V_1_state[1]_i_1_n_0 ),
        .Q(AudioB_V_strb_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \AudioB_V_user_V_1_payload_A[0]_i_1 
       (.I0(AudioA_V_user_V_0_payload_B),
        .I1(AudioA_V_user_V_0_sel),
        .I2(AudioA_V_user_V_0_payload_A),
        .I3(\AudioB_V_user_V_1_payload_A[0]_i_2_n_0 ),
        .I4(AudioB_V_user_V_1_sel_wr),
        .I5(AudioB_V_user_V_1_payload_A),
        .O(\AudioB_V_user_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AudioB_V_user_V_1_payload_A[0]_i_2 
       (.I0(AudioB_V_user_V_1_ack_in),
        .I1(\AudioB_V_user_V_1_state_reg_n_0_[0] ),
        .O(\AudioB_V_user_V_1_payload_A[0]_i_2_n_0 ));
  FDRE \AudioB_V_user_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_user_V_1_payload_A[0]_i_1_n_0 ),
        .Q(AudioB_V_user_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \AudioB_V_user_V_1_payload_B[0]_i_1 
       (.I0(AudioA_V_user_V_0_payload_B),
        .I1(AudioA_V_user_V_0_sel),
        .I2(AudioA_V_user_V_0_payload_A),
        .I3(AudioB_V_user_V_1_sel_wr),
        .I4(\AudioB_V_user_V_1_payload_A[0]_i_2_n_0 ),
        .I5(AudioB_V_user_V_1_payload_B),
        .O(\AudioB_V_user_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \AudioB_V_user_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_user_V_1_payload_B[0]_i_1_n_0 ),
        .Q(AudioB_V_user_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    AudioB_V_user_V_1_sel_rd_i_1
       (.I0(\AudioB_V_user_V_1_state_reg_n_0_[0] ),
        .I1(AudioB_TREADY),
        .I2(AudioB_V_user_V_1_sel),
        .O(AudioB_V_user_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_user_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_user_V_1_sel_rd_i_1_n_0),
        .Q(AudioB_V_user_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    AudioB_V_user_V_1_sel_wr_i_1
       (.I0(AudioB_V_user_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I3(AudioB_V_data_V_1_ack_in),
        .I4(AudioB_V_user_V_1_sel_wr),
        .O(AudioB_V_user_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    AudioB_V_user_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AudioB_V_user_V_1_sel_wr_i_1_n_0),
        .Q(AudioB_V_user_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \AudioB_V_user_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\AudioB_V_user_V_1_state_reg_n_0_[0] ),
        .I2(AudioB_V_user_V_1_ack_in),
        .I3(AudioB_TREADY),
        .I4(p_186_in),
        .O(\AudioB_V_user_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \AudioB_V_user_V_1_state[1]_i_1 
       (.I0(AudioB_V_data_V_1_ack_in),
        .I1(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(AudioB_TREADY),
        .I4(\AudioB_V_user_V_1_state_reg_n_0_[0] ),
        .I5(AudioB_V_user_V_1_ack_in),
        .O(\AudioB_V_user_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_user_V_1_state[0]_i_1_n_0 ),
        .Q(\AudioB_V_user_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AudioB_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\AudioB_V_user_V_1_state[1]_i_1_n_0 ),
        .Q(AudioB_V_user_V_1_ack_in),
        .R(ap_rst_n_inv));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\ap_CS_fsm_reg_n_0_[2] ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88BBB888BBBBB888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\ap_CS_fsm_reg_n_0_[2] ),
        .I3(AudioB_V_data_V_1_ack_in),
        .I4(ap_CS_fsm_state2),
        .I5(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h41510111)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state2),
        .I2(AudioB_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm_reg_n_0_[2] ),
        .I4(\AudioA_V_data_V_0_state_reg_n_0_[0] ),
        .O(\ap_CS_fsm[2]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_audio_top_0_0,audio_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "audio_top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    AudioA_TVALID,
    AudioA_TREADY,
    AudioA_TDATA,
    AudioA_TDEST,
    AudioA_TKEEP,
    AudioA_TSTRB,
    AudioA_TUSER,
    AudioA_TLAST,
    AudioA_TID,
    AudioB_TVALID,
    AudioB_TREADY,
    AudioB_TDATA,
    AudioB_TDEST,
    AudioB_TKEEP,
    AudioB_TSTRB,
    AudioB_TUSER,
    AudioB_TLAST,
    AudioB_TID);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF AudioA:AudioB, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME AudioA, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input AudioA_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TREADY" *) output AudioA_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TDATA" *) input [31:0]AudioA_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TDEST" *) input [0:0]AudioA_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TKEEP" *) input [3:0]AudioA_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TSTRB" *) input [3:0]AudioA_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TUSER" *) input [0:0]AudioA_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TLAST" *) input [0:0]AudioA_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioA TID" *) input [0:0]AudioA_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME AudioB, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output AudioB_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TREADY" *) input AudioB_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TDATA" *) output [31:0]AudioB_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TDEST" *) output [0:0]AudioB_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TKEEP" *) output [3:0]AudioB_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TSTRB" *) output [3:0]AudioB_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TUSER" *) output [0:0]AudioB_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TLAST" *) output [0:0]AudioB_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AudioB TID" *) output [0:0]AudioB_TID;

  wire [31:0]AudioA_TDATA;
  wire [0:0]AudioA_TDEST;
  wire [0:0]AudioA_TID;
  wire [3:0]AudioA_TKEEP;
  wire [0:0]AudioA_TLAST;
  wire AudioA_TREADY;
  wire [3:0]AudioA_TSTRB;
  wire [0:0]AudioA_TUSER;
  wire AudioA_TVALID;
  wire [31:0]AudioB_TDATA;
  wire [0:0]AudioB_TDEST;
  wire [0:0]AudioB_TID;
  wire [3:0]AudioB_TKEEP;
  wire [0:0]AudioB_TLAST;
  wire AudioB_TREADY;
  wire [3:0]AudioB_TSTRB;
  wire [0:0]AudioB_TUSER;
  wire AudioB_TVALID;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_top U0
       (.AudioA_TDATA(AudioA_TDATA),
        .AudioA_TDEST(AudioA_TDEST),
        .AudioA_TID(AudioA_TID),
        .AudioA_TKEEP(AudioA_TKEEP),
        .AudioA_TLAST(AudioA_TLAST),
        .AudioA_TREADY(AudioA_TREADY),
        .AudioA_TSTRB(AudioA_TSTRB),
        .AudioA_TUSER(AudioA_TUSER),
        .AudioA_TVALID(AudioA_TVALID),
        .AudioB_TDATA(AudioB_TDATA),
        .AudioB_TDEST(AudioB_TDEST),
        .AudioB_TID(AudioB_TID),
        .AudioB_TKEEP(AudioB_TKEEP),
        .AudioB_TLAST(AudioB_TLAST),
        .AudioB_TREADY(AudioB_TREADY),
        .AudioB_TSTRB(AudioB_TSTRB),
        .AudioB_TUSER(AudioB_TUSER),
        .AudioB_TVALID(AudioB_TVALID),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
