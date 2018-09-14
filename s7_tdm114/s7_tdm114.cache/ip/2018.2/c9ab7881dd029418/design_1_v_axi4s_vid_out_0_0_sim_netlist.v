// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  9 16:52:27 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_axi4s_vid_out_0_0_sim_netlist.v
// Design      : design_1_v_axi4s_vid_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_v_axi4s_vid_out_0_0,v_axi4s_vid_out_v4_0_9,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_axi4s_vid_out_v4_0_9,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_ce,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    locked,
    overflow,
    underflow,
    status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDATA" *) input [23:0]s_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TVALID" *) input s_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output s_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TUSER" *) input s_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *) input s_axis_video_tlast;
  input fid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_out_ce_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_ce_intf, POLARITY ACTIVE_LOW" *) input vid_io_out_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC" *) output vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK" *) output vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK" *) output vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD" *) output vid_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out DATA" *) output [23:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC" *) input vtg_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC" *) input vtg_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VBLANK" *) input vtg_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HBLANK" *) input vtg_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO" *) input vtg_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in FIELD" *) input vtg_field_id;
  output vtg_ce;
  output locked;
  output overflow;
  output underflow;
  output [31:0]status;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire fid;
  wire locked;
  wire overflow;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [31:0]status;
  wire underflow;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_ce;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vsync;

  (* C_ADDR_WIDTH = "13" *) 
  (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) 
  (* C_COMPONENTS_PER_PIXEL = "3" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_ASYNC_CLK = "0" *) 
  (* C_HYSTERESIS_LEVEL = "32" *) 
  (* C_INCLUDE_PIXEL_REMAP_420 = "0" *) 
  (* C_INCLUDE_PIXEL_REPEAT = "0" *) 
  (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
  (* C_NATIVE_DATA_WIDTH = "24" *) 
  (* C_PIXELS_PER_CLOCK = "1" *) 
  (* C_SYNC_LOCK_THRESHOLD = "4" *) 
  (* C_S_AXIS_COMPONENT_WIDTH = "8" *) 
  (* C_S_AXIS_TDATA_WIDTH = "24" *) 
  (* C_VTG_MASTER_SLAVE = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9 inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .fid(fid),
        .locked(locked),
        .overflow(overflow),
        .remap_420_en(1'b0),
        .repeat_en(1'b0),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .status(status),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(1'b0),
        .vid_io_out_reset(1'b0),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtg_active_video(vtg_active_video),
        .vtg_ce(vtg_ce),
        .vtg_field_id(vtg_field_id),
        .vtg_hblank(vtg_hblank),
        .vtg_hsync(vtg_hsync),
        .vtg_vblank(vtg_vblank),
        .vtg_vsync(vtg_vsync));
endmodule

(* C_ADDR_WIDTH = "13" *) (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) (* C_COMPONENTS_PER_PIXEL = "3" *) 
(* C_FAMILY = "spartan7" *) (* C_HAS_ASYNC_CLK = "0" *) (* C_HYSTERESIS_LEVEL = "32" *) 
(* C_INCLUDE_PIXEL_REMAP_420 = "0" *) (* C_INCLUDE_PIXEL_REPEAT = "0" *) (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
(* C_NATIVE_DATA_WIDTH = "24" *) (* C_PIXELS_PER_CLOCK = "1" *) (* C_SYNC_LOCK_THRESHOLD = "4" *) 
(* C_S_AXIS_COMPONENT_WIDTH = "8" *) (* C_S_AXIS_TDATA_WIDTH = "24" *) (* C_VTG_MASTER_SLAVE = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_clk,
    vid_io_out_ce,
    vid_io_out_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    locked,
    overflow,
    underflow,
    status,
    repeat_en,
    remap_420_en);
  input aclk;
  input aclken;
  input aresetn;
  input [23:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  output s_axis_video_tready;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input fid;
  input vid_io_out_clk;
  input vid_io_out_ce;
  input vid_io_out_reset;
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output [23:0]vid_data;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_active_video;
  input vtg_field_id;
  output vtg_ce;
  output locked;
  output overflow;
  output underflow;
  output [31:0]status;
  input repeat_en;
  input remap_420_en;

  wire \<const0> ;
  wire COUPLER_INST_n_31;
  wire COUPLER_INST_n_32;
  wire COUPLER_INST_n_34;
  wire SYNC_INST_n_0;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire fid;
  wire [23:0]fifo_data;
  wire fifo_eol;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire fifo_fid;
  wire fifo_pix_cnt;
  wire fifo_rd_en;
  wire fifo_sof;
  wire fivid_reset_full_frame;
  wire in_data_mux;
  wire in_de_mux0;
  wire locked;
  wire overflow;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [28:0]\^status ;
  wire underflow;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_ce;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vsync;

  assign status[31] = \<const0> ;
  assign status[30] = \<const0> ;
  assign status[29] = \<const0> ;
  assign status[28:16] = \^status [28:16];
  assign status[15] = \<const0> ;
  assign status[14:0] = \^status [14:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single CDC_SINGLE_LOCKED_INST
       (.aclk(aclk),
        .src_in(locked));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single__xdcDup__1 CDC_SINGLE_REMAP_UNDERFLOW_INST
       (.aclk(aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_coupler COUPLER_INST
       (.E(in_data_mux),
        .\FSM_sequential_state_reg[2] (COUPLER_INST_n_32),
        .\FSM_sequential_state_reg[2]_0 (COUPLER_INST_n_34),
        .\FSM_sequential_state_reg[3] (COUPLER_INST_n_31),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din({fid,s_axis_video_tuser,s_axis_video_tlast,s_axis_video_tdata}),
        .dout({fifo_fid,fifo_sof,fifo_eol,fifo_data}),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .fifo_pix_cnt(fifo_pix_cnt),
        .fifo_rd_en(fifo_rd_en),
        .out(SYNC_INST_n_0),
        .overflow(overflow),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .underflow(underflow),
        .vid_io_out_ce(vid_io_out_ce));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_formatter FORMATTER_INST
       (.D(fifo_data),
        .E(in_data_mux),
        .SR(in_de_mux0),
        .aclk(aclk),
        .aresetn(aresetn),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .src_in(locked),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtg_active_video(vtg_active_video),
        .vtg_field_id(vtg_field_id),
        .vtg_hblank(vtg_hblank),
        .vtg_hsync(vtg_hsync),
        .vtg_vblank(vtg_vblank),
        .vtg_vsync(vtg_vsync));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_sync SYNC_INST
       (.E(in_data_mux),
        .\FSM_sequential_state_reg[3]_0 (COUPLER_INST_n_31),
        .SR(in_de_mux0),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout({fifo_fid,fifo_sof,fifo_eol}),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .fifo_pix_cnt(fifo_pix_cnt),
        .fifo_rd_en(fifo_rd_en),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .\gen_wr_a.gen_word_narrow.mem_reg_6 (COUPLER_INST_n_34),
        .\grdc.rd_data_count_i_reg[10] (COUPLER_INST_n_32),
        .out(SYNC_INST_n_0),
        .src_in(locked),
        .status({\^status [28:16],\^status [14:0]}),
        .vid_io_out_ce(vid_io_out_ce),
        .vtg_active_video(vtg_active_video),
        .vtg_ce(vtg_ce),
        .vtg_field_id(vtg_field_id),
        .vtg_vsync(vtg_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single
   (src_in,
    aclk);
  input src_in;
  input aclk;

  wire aclk;
  wire src_in;
  wire xpm_cdc_single_inst_n_0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(xpm_cdc_single_inst_n_0),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_9_cdc_single" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_cdc_single__xdcDup__1
   (aclk);
  input aclk;

  wire aclk;
  wire xpm_cdc_single_inst_n_0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(xpm_cdc_single_inst_n_0),
        .src_clk(1'b0),
        .src_in(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_coupler
   (overflow,
    dout,
    underflow,
    fifo_pix_cnt,
    s_axis_video_tready,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[2] ,
    fifo_eol_re,
    \FSM_sequential_state_reg[2]_0 ,
    aclk,
    din,
    E,
    aresetn,
    vid_io_out_ce,
    fifo_rd_en,
    s_axis_video_tvalid,
    aclken,
    out,
    fifo_eol_dly);
  output overflow;
  output [26:0]dout;
  output underflow;
  output fifo_pix_cnt;
  output s_axis_video_tready;
  output \FSM_sequential_state_reg[3] ;
  output \FSM_sequential_state_reg[2] ;
  output fifo_eol_re;
  output \FSM_sequential_state_reg[2]_0 ;
  input aclk;
  input [26:0]din;
  input [0:0]E;
  input aresetn;
  input vid_io_out_ce;
  input fifo_rd_en;
  input s_axis_video_tvalid;
  input aclken;
  input [0:0]out;
  input fifo_eol_dly;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[3] ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [26:0]din;
  wire [26:0]dout;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire fifo_pix_cnt;
  wire fifo_rd_en;
  wire [0:0]out;
  wire overflow;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;
  wire underflow;
  wire vid_io_out_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_fifo_sync \generate_sync_fifo.FIFO_INST 
       (.E(E),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .\FSM_sequential_state_reg[2]_0 (\FSM_sequential_state_reg[2]_0 ),
        .\FSM_sequential_state_reg[3] (\FSM_sequential_state_reg[3] ),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din(din),
        .dout(dout),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .fifo_pix_cnt(fifo_pix_cnt),
        .fifo_rd_en(fifo_rd_en),
        .out(out),
        .overflow(overflow),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .underflow(underflow),
        .vid_io_out_ce(vid_io_out_ce));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_fifo_sync
   (overflow,
    dout,
    underflow,
    fifo_pix_cnt,
    s_axis_video_tready,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[2] ,
    fifo_eol_re,
    \FSM_sequential_state_reg[2]_0 ,
    aclk,
    din,
    E,
    aresetn,
    vid_io_out_ce,
    fifo_rd_en,
    s_axis_video_tvalid,
    aclken,
    out,
    fifo_eol_dly);
  output overflow;
  output [26:0]dout;
  output underflow;
  output fifo_pix_cnt;
  output s_axis_video_tready;
  output \FSM_sequential_state_reg[3] ;
  output \FSM_sequential_state_reg[2] ;
  output fifo_eol_re;
  output \FSM_sequential_state_reg[2]_0 ;
  input aclk;
  input [26:0]din;
  input [0:0]E;
  input aresetn;
  input vid_io_out_ce;
  input fifo_rd_en;
  input s_axis_video_tvalid;
  input aclken;
  input [0:0]out;
  input fifo_eol_dly;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[3] ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [26:0]din;
  wire [26:0]dout;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire fifo_pix_cnt;
  wire fifo_rd_en;
  wire [0:0]out;
  wire overflow;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;
  wire underflow;
  wire vid_io_out_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync XPM_FIFO_SYNC_INST
       (.E(E),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .\FSM_sequential_state_reg[2]_0 (\FSM_sequential_state_reg[2]_0 ),
        .\FSM_sequential_state_reg[3] (\FSM_sequential_state_reg[3] ),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din(din),
        .dout(dout),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .fifo_pix_cnt(fifo_pix_cnt),
        .fifo_rd_en(fifo_rd_en),
        .out(out),
        .overflow(overflow),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .underflow(underflow),
        .vid_io_out_ce(vid_io_out_ce));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_formatter
   (vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    fivid_reset_full_frame,
    vid_data,
    SR,
    vid_io_out_ce,
    vtg_active_video,
    aclk,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_field_id,
    src_in,
    aresetn,
    E,
    D);
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output fivid_reset_full_frame;
  output [23:0]vid_data;
  input [0:0]SR;
  input vid_io_out_ce;
  input vtg_active_video;
  input aclk;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_field_id;
  input src_in;
  input aresetn;
  input [0:0]E;
  input [23:0]D;

  wire [23:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire fivid_reset_full_frame;
  wire fivid_reset_full_frame_i_1_n_0;
  wire src_in;
  wire vblank_rising;
  wire vblank_rising_i_1_n_0;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vblank_1;
  wire vtg_vblank_1_i_1_n_0;
  wire vtg_vsync;

  LUT5 #(
    .INIT(32'hEA000000)) 
    fivid_reset_full_frame_i_1
       (.I0(fivid_reset_full_frame),
        .I1(vblank_rising),
        .I2(vid_io_out_ce),
        .I3(src_in),
        .I4(aresetn),
        .O(fivid_reset_full_frame_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fivid_reset_full_frame_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fivid_reset_full_frame_i_1_n_0),
        .Q(fivid_reset_full_frame),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(vid_data[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(D[10]),
        .Q(vid_data[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(D[11]),
        .Q(vid_data[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(D[12]),
        .Q(vid_data[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(D[13]),
        .Q(vid_data[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(D[14]),
        .Q(vid_data[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(D[15]),
        .Q(vid_data[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(D[16]),
        .Q(vid_data[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(D[17]),
        .Q(vid_data[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(D[18]),
        .Q(vid_data[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(D[19]),
        .Q(vid_data[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(vid_data[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(D[20]),
        .Q(vid_data[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(D[21]),
        .Q(vid_data[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(D[22]),
        .Q(vid_data[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(D[23]),
        .Q(vid_data[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(vid_data[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(vid_data[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(vid_data[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(vid_data[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(vid_data[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(vid_data[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(vid_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(vid_data[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    in_de_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_active_video),
        .Q(vid_active_video),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    in_field_id_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_field_id),
        .Q(vid_field_id),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    in_hblank_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_hblank),
        .Q(vid_hblank),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    in_hsync_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_hsync),
        .Q(vid_hsync),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    in_vblank_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_vblank),
        .Q(vid_vblank),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    in_vsync_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_vsync),
        .Q(vid_vsync),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    vblank_rising_i_1
       (.I0(vtg_vblank),
        .I1(vtg_vblank_1),
        .I2(vid_io_out_ce),
        .I3(vblank_rising),
        .O(vblank_rising_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vblank_rising_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vblank_rising_i_1_n_0),
        .Q(vblank_rising),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    vtg_vblank_1_i_1
       (.I0(vtg_vblank),
        .I1(vid_io_out_ce),
        .I2(vtg_vblank_1),
        .O(vtg_vblank_1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vblank_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vtg_vblank_1_i_1_n_0),
        .Q(vtg_vblank_1),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_9_sync
   (out,
    fifo_eol_dly,
    src_in,
    SR,
    E,
    fifo_rd_en,
    vtg_ce,
    status,
    vid_io_out_ce,
    vtg_active_video,
    aclk,
    vtg_vsync,
    dout,
    fifo_eol_re,
    fifo_pix_cnt,
    \FSM_sequential_state_reg[3]_0 ,
    vtg_field_id,
    aresetn,
    fivid_reset_full_frame,
    \gen_wr_a.gen_word_narrow.mem_reg_6 ,
    \grdc.rd_data_count_i_reg[10] );
  output [0:0]out;
  output fifo_eol_dly;
  output src_in;
  output [0:0]SR;
  output [0:0]E;
  output fifo_rd_en;
  output vtg_ce;
  output [27:0]status;
  input vid_io_out_ce;
  input vtg_active_video;
  input aclk;
  input vtg_vsync;
  input [2:0]dout;
  input fifo_eol_re;
  input fifo_pix_cnt;
  input \FSM_sequential_state_reg[3]_0 ;
  input vtg_field_id;
  input aresetn;
  input fivid_reset_full_frame;
  input \gen_wr_a.gen_word_narrow.mem_reg_6 ;
  input \grdc.rd_data_count_i_reg[10] ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_11_n_0 ;
  wire \FSM_sequential_state[0]_i_13_n_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_8_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_13_n_0 ;
  wire \FSM_sequential_state[3]_i_14_n_0 ;
  wire \FSM_sequential_state[3]_i_15_n_0 ;
  wire \FSM_sequential_state[3]_i_16_n_0 ;
  wire \FSM_sequential_state[3]_i_17_n_0 ;
  wire \FSM_sequential_state[3]_i_18_n_0 ;
  wire \FSM_sequential_state[3]_i_19_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_20_n_0 ;
  wire \FSM_sequential_state[3]_i_21_n_0 ;
  wire \FSM_sequential_state[3]_i_22_n_0 ;
  wire \FSM_sequential_state[3]_i_23_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire [2:0]dout;
  wire fifo_eol_cnt;
  wire \fifo_eol_cnt[0]_i_1_n_0 ;
  wire \fifo_eol_cnt[0]_i_4_n_0 ;
  wire [12:0]fifo_eol_cnt_dly;
  wire [12:0]fifo_eol_cnt_reg;
  wire \fifo_eol_cnt_reg[0]_i_3_n_0 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_1 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_2 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_3 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_4 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_5 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_6 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_7 ;
  wire \fifo_eol_cnt_reg[12]_i_1_n_7 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_1 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_4 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_5 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_6 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_7 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_1 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_4 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_5 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_6 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_7 ;
  wire fifo_eol_dly;
  wire fifo_eol_error;
  wire fifo_eol_error1;
  wire fifo_eol_error1_carry__0_i_1_n_0;
  wire fifo_eol_error1_carry_i_1_n_0;
  wire fifo_eol_error1_carry_i_2_n_0;
  wire fifo_eol_error1_carry_i_3_n_0;
  wire fifo_eol_error1_carry_i_4_n_0;
  wire fifo_eol_error1_carry_n_0;
  wire fifo_eol_error1_carry_n_1;
  wire fifo_eol_error1_carry_n_2;
  wire fifo_eol_error1_carry_n_3;
  wire fifo_eol_error2;
  wire fifo_eol_error_i_1_n_0;
  wire fifo_eol_error_i_3_n_0;
  wire fifo_eol_error_i_4_n_0;
  wire fifo_eol_re;
  wire fifo_eol_re_dly;
  wire fifo_pix_cnt;
  wire \fifo_pix_cnt[0]_i_1_n_0 ;
  wire \fifo_pix_cnt[0]_i_5_n_0 ;
  wire [12:0]fifo_pix_cnt_dly;
  wire fifo_pix_cnt_dly1__11;
  wire \fifo_pix_cnt_dly[12]_i_1_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_3_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_5_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_6_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_7_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_8_n_0 ;
  wire fifo_pix_cnt_dly_0;
  wire [12:0]fifo_pix_cnt_reg;
  wire \fifo_pix_cnt_reg[0]_i_3_n_0 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_1 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_2 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_3 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_4 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_5 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_6 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_7 ;
  wire \fifo_pix_cnt_reg[12]_i_1_n_7 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_0 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_1 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_2 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_3 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_4 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_5 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_6 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_7 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_0 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_1 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_2 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_3 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_4 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_5 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_6 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_7 ;
  wire fifo_pix_error;
  wire fifo_pix_error0;
  wire fifo_pix_error1;
  wire fifo_pix_error1_carry__0_i_1_n_0;
  wire fifo_pix_error1_carry_i_1_n_0;
  wire fifo_pix_error1_carry_i_2_n_0;
  wire fifo_pix_error1_carry_i_3_n_0;
  wire fifo_pix_error1_carry_i_4_n_0;
  wire fifo_pix_error1_carry_n_0;
  wire fifo_pix_error1_carry_n_1;
  wire fifo_pix_error1_carry_n_2;
  wire fifo_pix_error1_carry_n_3;
  wire fifo_pix_error_i_1_n_0;
  wire fifo_rd_en;
  wire fifo_sof_cnt;
  wire \fifo_sof_cnt[7]_i_2_n_0 ;
  wire [7:0]fifo_sof_cnt_reg__0;
  wire fifo_sof_dly;
  wire fivid_reset_full_frame;
  wire \gen_wr_a.gen_word_narrow.mem_reg_6 ;
  wire \grdc.rd_data_count_i_reg[10] ;
  wire next_state0__0;
  wire next_state119_out;
  wire next_state125_out;
  wire next_state1__0;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire p_15_in;
  wire p_20_in;
  wire p_22_in;
  wire p_3_in;
  wire sof_ignore;
  wire sof_ignore_i_1_n_0;
  wire src_in;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire [3:0]state_dly;
  wire \state_dly[3]_i_1_n_0 ;
  wire [3:0]state_reg;
  wire [27:0]status;
  wire status_reg1;
  wire \status_reg[0]_i_1_n_0 ;
  wire \status_reg[0]_i_2_n_0 ;
  wire \status_reg[10]_i_1_n_0 ;
  wire \status_reg[10]_i_3_n_0 ;
  wire \status_reg[10]_i_4_n_0 ;
  wire \status_reg[11]_i_1_n_0 ;
  wire \status_reg[11]_i_2_n_0 ;
  wire \status_reg[12]_i_1_n_0 ;
  wire \status_reg[12]_i_2_n_0 ;
  wire \status_reg[1]_i_1_n_0 ;
  wire \status_reg[1]_i_2_n_0 ;
  wire \status_reg[28]_i_1_n_0 ;
  wire \status_reg[2]_i_1_n_0 ;
  wire \status_reg[2]_i_2_n_0 ;
  wire \status_reg[3]_i_1_n_0 ;
  wire \status_reg[4]_i_1_n_0 ;
  wire \status_reg[5]_i_1_n_0 ;
  wire \status_reg[5]_i_2_n_0 ;
  wire \status_reg[6]_i_1_n_0 ;
  wire \status_reg[6]_i_2_n_0 ;
  wire \status_reg[7]_i_1_n_0 ;
  wire \status_reg[7]_i_2_n_0 ;
  wire \status_reg[8]_i_1_n_0 ;
  wire \status_reg[9]_i_1_n_0 ;
  wire \status_reg[9]_i_2_n_0 ;
  wire vid_io_out_ce;
  wire vtg_active_video;
  wire vtg_ce;
  wire vtg_de_dly;
  wire vtg_field_id;
  wire vtg_lag;
  wire \vtg_lag[0]_i_1_n_0 ;
  wire \vtg_lag[0]_i_4_n_0 ;
  wire [12:0]vtg_lag_reg;
  wire \vtg_lag_reg[0]_i_3_n_0 ;
  wire \vtg_lag_reg[0]_i_3_n_1 ;
  wire \vtg_lag_reg[0]_i_3_n_2 ;
  wire \vtg_lag_reg[0]_i_3_n_3 ;
  wire \vtg_lag_reg[0]_i_3_n_4 ;
  wire \vtg_lag_reg[0]_i_3_n_5 ;
  wire \vtg_lag_reg[0]_i_3_n_6 ;
  wire \vtg_lag_reg[0]_i_3_n_7 ;
  wire \vtg_lag_reg[12]_i_1_n_0 ;
  wire \vtg_lag_reg[12]_i_1_n_1 ;
  wire \vtg_lag_reg[12]_i_1_n_2 ;
  wire \vtg_lag_reg[12]_i_1_n_3 ;
  wire \vtg_lag_reg[12]_i_1_n_4 ;
  wire \vtg_lag_reg[12]_i_1_n_5 ;
  wire \vtg_lag_reg[12]_i_1_n_6 ;
  wire \vtg_lag_reg[12]_i_1_n_7 ;
  wire \vtg_lag_reg[16]_i_1_n_0 ;
  wire \vtg_lag_reg[16]_i_1_n_1 ;
  wire \vtg_lag_reg[16]_i_1_n_2 ;
  wire \vtg_lag_reg[16]_i_1_n_3 ;
  wire \vtg_lag_reg[16]_i_1_n_4 ;
  wire \vtg_lag_reg[16]_i_1_n_5 ;
  wire \vtg_lag_reg[16]_i_1_n_6 ;
  wire \vtg_lag_reg[16]_i_1_n_7 ;
  wire \vtg_lag_reg[20]_i_1_n_0 ;
  wire \vtg_lag_reg[20]_i_1_n_1 ;
  wire \vtg_lag_reg[20]_i_1_n_2 ;
  wire \vtg_lag_reg[20]_i_1_n_3 ;
  wire \vtg_lag_reg[20]_i_1_n_4 ;
  wire \vtg_lag_reg[20]_i_1_n_5 ;
  wire \vtg_lag_reg[20]_i_1_n_6 ;
  wire \vtg_lag_reg[20]_i_1_n_7 ;
  wire \vtg_lag_reg[24]_i_1_n_0 ;
  wire \vtg_lag_reg[24]_i_1_n_1 ;
  wire \vtg_lag_reg[24]_i_1_n_2 ;
  wire \vtg_lag_reg[24]_i_1_n_3 ;
  wire \vtg_lag_reg[24]_i_1_n_4 ;
  wire \vtg_lag_reg[24]_i_1_n_5 ;
  wire \vtg_lag_reg[24]_i_1_n_6 ;
  wire \vtg_lag_reg[24]_i_1_n_7 ;
  wire \vtg_lag_reg[28]_i_1_n_1 ;
  wire \vtg_lag_reg[28]_i_1_n_2 ;
  wire \vtg_lag_reg[28]_i_1_n_3 ;
  wire \vtg_lag_reg[28]_i_1_n_4 ;
  wire \vtg_lag_reg[28]_i_1_n_5 ;
  wire \vtg_lag_reg[28]_i_1_n_6 ;
  wire \vtg_lag_reg[28]_i_1_n_7 ;
  wire \vtg_lag_reg[4]_i_1_n_0 ;
  wire \vtg_lag_reg[4]_i_1_n_1 ;
  wire \vtg_lag_reg[4]_i_1_n_2 ;
  wire \vtg_lag_reg[4]_i_1_n_3 ;
  wire \vtg_lag_reg[4]_i_1_n_4 ;
  wire \vtg_lag_reg[4]_i_1_n_5 ;
  wire \vtg_lag_reg[4]_i_1_n_6 ;
  wire \vtg_lag_reg[4]_i_1_n_7 ;
  wire \vtg_lag_reg[8]_i_1_n_0 ;
  wire \vtg_lag_reg[8]_i_1_n_1 ;
  wire \vtg_lag_reg[8]_i_1_n_2 ;
  wire \vtg_lag_reg[8]_i_1_n_3 ;
  wire \vtg_lag_reg[8]_i_1_n_4 ;
  wire \vtg_lag_reg[8]_i_1_n_5 ;
  wire \vtg_lag_reg[8]_i_1_n_6 ;
  wire \vtg_lag_reg[8]_i_1_n_7 ;
  wire [31:13]vtg_lag_reg__0;
  wire vtg_sof;
  wire vtg_sof_cnt;
  wire \vtg_sof_cnt[7]_i_1_n_0 ;
  wire \vtg_sof_cnt[7]_i_4_n_0 ;
  wire [7:0]vtg_sof_cnt_reg__0;
  wire vtg_sof_dly;
  wire vtg_vsync;
  wire vtg_vsync_bp_i_1_n_0;
  wire vtg_vsync_bp_reg_n_0;
  wire vtg_vsync_dly;
  wire [3:0]\NLW_fifo_eol_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_fifo_eol_cnt_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_fifo_eol_error1_carry_O_UNCONNECTED;
  wire [3:1]NLW_fifo_eol_error1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fifo_eol_error1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_fifo_pix_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_fifo_pix_cnt_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_fifo_pix_error1_carry_O_UNCONNECTED;
  wire [3:1]NLW_fifo_pix_error1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fifo_pix_error1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_vtg_lag_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFEA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(\FSM_sequential_state[0]_i_5_n_0 ),
        .I4(\FSM_sequential_state[0]_i_6_n_0 ),
        .I5(\FSM_sequential_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(dout[1]),
        .I1(fifo_sof_dly),
        .I2(out),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hD5DDFFFFFFFFFFFF)) 
    \FSM_sequential_state[0]_i_11 
       (.I0(p_15_in),
        .I1(fifo_eol_re_dly),
        .I2(vtg_active_video),
        .I3(vtg_de_dly),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_sequential_state[0]_i_12 
       (.I0(vtg_sof_dly),
        .I1(dout[1]),
        .I2(fifo_sof_dly),
        .O(p_15_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDDFDD)) 
    \FSM_sequential_state[0]_i_13 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(vtg_active_video),
        .I3(vtg_de_dly),
        .I4(fifo_eol_re_dly),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[2]),
        .I1(out),
        .I2(state[0]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55555455)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(vtg_active_video),
        .I3(vtg_de_dly),
        .I4(fifo_eol_re_dly),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h22222A22)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(state[1]),
        .I1(out),
        .I2(vtg_active_video),
        .I3(vtg_de_dly),
        .I4(fifo_eol_re_dly),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BB8BBBBB)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\FSM_sequential_state[0]_i_8_n_0 ),
        .I1(state[0]),
        .I2(\FSM_sequential_state[3]_i_9_n_0 ),
        .I3(\FSM_sequential_state[3]_i_10_n_0 ),
        .I4(\FSM_sequential_state[3]_i_11_n_0 ),
        .I5(\FSM_sequential_state[0]_i_9_n_0 ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000400FFFFFFFF)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[3]_i_9_n_0 ),
        .I2(\FSM_sequential_state[3]_i_10_n_0 ),
        .I3(\FSM_sequential_state[3]_i_11_n_0 ),
        .I4(\FSM_sequential_state[0]_i_10_n_0 ),
        .I5(\FSM_sequential_state[0]_i_11_n_0 ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000008A00CF)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(next_state119_out),
        .I1(sof_ignore),
        .I2(p_15_in),
        .I3(\FSM_sequential_state[0]_i_13_n_0 ),
        .I4(next_state125_out),
        .I5(\FSM_sequential_state[3]_i_14_n_0 ),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(out),
        .I1(vtg_field_id),
        .I2(vtg_active_video),
        .I3(vtg_vsync_bp_reg_n_0),
        .I4(vtg_de_dly),
        .O(\FSM_sequential_state[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(state[2]),
        .I1(out),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(state[1]),
        .I5(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB0BBBBFFFFFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_state[3]_i_6_n_0 ),
        .I2(\FSM_sequential_state[1]_i_7_n_0 ),
        .I3(p_20_in),
        .I4(out),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[3]_i_9_n_0 ),
        .I1(\FSM_sequential_state[3]_i_10_n_0 ),
        .I2(\FSM_sequential_state[3]_i_11_n_0 ),
        .I3(\FSM_sequential_state[1]_i_8_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\grdc.rd_data_count_i_reg[10] ),
        .I1(out),
        .I2(state[0]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555145555)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(out),
        .I3(vtg_active_video),
        .I4(vtg_de_dly),
        .I5(fifo_eol_re_dly),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEFEFFEFEEFE)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(out),
        .I1(state[0]),
        .I2(vtg_de_dly),
        .I3(vtg_active_video),
        .I4(fifo_eol_re_dly),
        .I5(\FSM_sequential_state[3]_i_19_n_0 ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(state[0]),
        .I1(vtg_sof_dly),
        .I2(dout[1]),
        .I3(fifo_sof_dly),
        .I4(next_state1__0),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFF0BFFF)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(dout[1]),
        .I1(fifo_sof_dly),
        .I2(state[0]),
        .I3(out),
        .I4(fifo_eol_re_dly),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFF00000000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(p_20_in),
        .I1(next_state1__0),
        .I2(p_22_in),
        .I3(vtg_sof_dly),
        .I4(state[0]),
        .I5(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(fifo_eol_re_dly),
        .I1(vtg_active_video),
        .I2(vtg_de_dly),
        .O(p_20_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(vtg_active_video),
        .I1(vtg_de_dly),
        .I2(fifo_eol_re_dly),
        .O(next_state1__0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .O(p_22_in));
  LUT6 #(
    .INIT(64'h0000908001019080)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(out),
        .I3(\gen_wr_a.gen_word_narrow.mem_reg_6 ),
        .I4(state[2]),
        .I5(\grdc.rd_data_count_i_reg[10] ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[3]_0 ),
        .I2(state[0]),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(state[1]),
        .I5(\FSM_sequential_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(\FSM_sequential_state[3]_i_22_n_0 ),
        .I1(vtg_lag_reg__0[28]),
        .I2(vtg_lag_reg__0[29]),
        .I3(vtg_lag_reg__0[31]),
        .I4(vtg_lag_reg__0[30]),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(vtg_lag_reg__0[20]),
        .I1(vtg_lag_reg__0[19]),
        .I2(vtg_lag_reg__0[18]),
        .I3(vtg_lag_reg__0[21]),
        .I4(vtg_lag_reg__0[22]),
        .I5(\FSM_sequential_state[3]_i_23_n_0 ),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_state[3]_i_12 
       (.I0(vtg_de_dly),
        .I1(vtg_vsync_bp_reg_n_0),
        .I2(vtg_active_video),
        .I3(vtg_field_id),
        .O(next_state0__0));
  LUT6 #(
    .INIT(64'h022F022F2F02022F)) 
    \FSM_sequential_state[3]_i_13 
       (.I0(vtg_de_dly),
        .I1(vtg_active_video),
        .I2(fifo_eol_re_dly),
        .I3(vtg_sof_dly),
        .I4(fifo_sof_dly),
        .I5(dout[1]),
        .O(\FSM_sequential_state[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0D0D0D000)) 
    \FSM_sequential_state[3]_i_14 
       (.I0(vtg_de_dly),
        .I1(vtg_active_video),
        .I2(fifo_eol_re_dly),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\FSM_sequential_state[0]_i_9_n_0 ),
        .O(\FSM_sequential_state[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[3]_i_15 
       (.I0(fifo_sof_cnt_reg__0[7]),
        .I1(fifo_sof_cnt_reg__0[5]),
        .I2(fifo_sof_cnt_reg__0[6]),
        .O(\FSM_sequential_state[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_sequential_state[3]_i_16 
       (.I0(fifo_sof_cnt_reg__0[3]),
        .I1(fifo_sof_cnt_reg__0[4]),
        .I2(fifo_sof_cnt_reg__0[0]),
        .I3(fifo_sof_cnt_reg__0[1]),
        .I4(fifo_sof_cnt_reg__0[2]),
        .O(\FSM_sequential_state[3]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[3]_i_17 
       (.I0(vtg_sof_cnt_reg__0[7]),
        .I1(vtg_sof_cnt_reg__0[5]),
        .I2(vtg_sof_cnt_reg__0[6]),
        .O(\FSM_sequential_state[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_sequential_state[3]_i_18 
       (.I0(vtg_sof_cnt_reg__0[3]),
        .I1(vtg_sof_cnt_reg__0[4]),
        .I2(vtg_sof_cnt_reg__0[0]),
        .I3(vtg_sof_cnt_reg__0[1]),
        .I4(vtg_sof_cnt_reg__0[2]),
        .O(\FSM_sequential_state[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[3]_i_19 
       (.I0(state[2]),
        .I1(out),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[3]_i_6_n_0 ),
        .I2(next_state1__0),
        .I3(next_state125_out),
        .I4(next_state119_out),
        .I5(\status_reg[7]_i_2_n_0 ),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[3]_i_20 
       (.I0(vtg_lag_reg[1]),
        .I1(vtg_lag_reg[0]),
        .I2(vtg_lag_reg[3]),
        .I3(vtg_lag_reg[2]),
        .O(\FSM_sequential_state[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[3]_i_21 
       (.I0(vtg_lag_reg[10]),
        .I1(vtg_lag_reg[12]),
        .I2(vtg_lag_reg[11]),
        .I3(vtg_lag_reg[9]),
        .I4(vtg_lag_reg[7]),
        .I5(vtg_lag_reg[8]),
        .O(\FSM_sequential_state[3]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[3]_i_22 
       (.I0(vtg_lag_reg__0[27]),
        .I1(vtg_lag_reg__0[26]),
        .I2(vtg_lag_reg__0[23]),
        .I3(vtg_lag_reg__0[24]),
        .I4(vtg_lag_reg__0[25]),
        .O(\FSM_sequential_state[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[3]_i_23 
       (.I0(vtg_lag_reg__0[15]),
        .I1(vtg_lag_reg__0[13]),
        .I2(vtg_lag_reg__0[14]),
        .I3(vtg_lag_reg__0[17]),
        .I4(vtg_lag_reg__0[16]),
        .O(\FSM_sequential_state[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(p_22_in),
        .I1(\FSM_sequential_state[3]_i_9_n_0 ),
        .I2(\FSM_sequential_state[3]_i_10_n_0 ),
        .I3(\FSM_sequential_state[3]_i_11_n_0 ),
        .I4(out),
        .I5(next_state0__0),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88880003)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\FSM_sequential_state[3]_i_13_n_0 ),
        .I1(state[0]),
        .I2(next_state1__0),
        .I3(\FSM_sequential_state[3]_i_14_n_0 ),
        .I4(out),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .I2(vtg_sof_dly),
        .I3(sof_ignore),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE000E000E0000000)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\FSM_sequential_state[3]_i_15_n_0 ),
        .I1(\FSM_sequential_state[3]_i_16_n_0 ),
        .I2(vtg_sof_dly),
        .I3(p_22_in),
        .I4(\FSM_sequential_state[3]_i_17_n_0 ),
        .I5(\FSM_sequential_state[3]_i_18_n_0 ),
        .O(next_state125_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(vtg_sof_dly),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(sof_ignore),
        .I4(\FSM_sequential_state[3]_i_19_n_0 ),
        .O(next_state119_out));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(\FSM_sequential_state[3]_i_20_n_0 ),
        .I1(vtg_lag_reg[6]),
        .I2(vtg_lag_reg[5]),
        .I3(vtg_lag_reg[4]),
        .I4(\FSM_sequential_state[3]_i_21_n_0 ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .S(\status_reg[28]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\status_reg[28]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(\status_reg[28]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(out),
        .R(\status_reg[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \fifo_eol_cnt[0]_i_1 
       (.I0(\fifo_pix_cnt_dly[12]_i_1_n_0 ),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(vid_io_out_ce),
        .O(\fifo_eol_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_eol_cnt[0]_i_2 
       (.I0(vid_io_out_ce),
        .I1(fifo_eol_re_dly),
        .O(fifo_eol_cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_eol_cnt[0]_i_4 
       (.I0(fifo_eol_cnt_reg[0]),
        .O(\fifo_eol_cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \fifo_eol_cnt_dly[12]_i_1 
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .I2(vid_io_out_ce),
        .O(fifo_sof_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[0] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[0]),
        .Q(fifo_eol_cnt_dly[0]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[10] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[10]),
        .Q(fifo_eol_cnt_dly[10]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[11] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[11]),
        .Q(fifo_eol_cnt_dly[11]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[12] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[12]),
        .Q(fifo_eol_cnt_dly[12]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[1] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[1]),
        .Q(fifo_eol_cnt_dly[1]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[2] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[2]),
        .Q(fifo_eol_cnt_dly[2]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[3] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[3]),
        .Q(fifo_eol_cnt_dly[3]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[4] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[4]),
        .Q(fifo_eol_cnt_dly[4]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[5] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[5]),
        .Q(fifo_eol_cnt_dly[5]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[6] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[6]),
        .Q(fifo_eol_cnt_dly[6]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[7] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[7]),
        .Q(fifo_eol_cnt_dly[7]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[8] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[8]),
        .Q(fifo_eol_cnt_dly[8]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[9] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(fifo_eol_cnt_reg[9]),
        .Q(fifo_eol_cnt_dly[9]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[0] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_7 ),
        .Q(fifo_eol_cnt_reg[0]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\fifo_eol_cnt_reg[0]_i_3_n_0 ,\fifo_eol_cnt_reg[0]_i_3_n_1 ,\fifo_eol_cnt_reg[0]_i_3_n_2 ,\fifo_eol_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\fifo_eol_cnt_reg[0]_i_3_n_4 ,\fifo_eol_cnt_reg[0]_i_3_n_5 ,\fifo_eol_cnt_reg[0]_i_3_n_6 ,\fifo_eol_cnt_reg[0]_i_3_n_7 }),
        .S({fifo_eol_cnt_reg[3:1],\fifo_eol_cnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[10] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_5 ),
        .Q(fifo_eol_cnt_reg[10]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[11] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_4 ),
        .Q(fifo_eol_cnt_reg[11]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[12] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[12]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[12]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[12]_i_1 
       (.CI(\fifo_eol_cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_fifo_eol_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fifo_eol_cnt_reg[12]_i_1_O_UNCONNECTED [3:1],\fifo_eol_cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,fifo_eol_cnt_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[1] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_6 ),
        .Q(fifo_eol_cnt_reg[1]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[2] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_5 ),
        .Q(fifo_eol_cnt_reg[2]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[3] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_4 ),
        .Q(fifo_eol_cnt_reg[3]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[4] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[4]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[4]_i_1 
       (.CI(\fifo_eol_cnt_reg[0]_i_3_n_0 ),
        .CO({\fifo_eol_cnt_reg[4]_i_1_n_0 ,\fifo_eol_cnt_reg[4]_i_1_n_1 ,\fifo_eol_cnt_reg[4]_i_1_n_2 ,\fifo_eol_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_eol_cnt_reg[4]_i_1_n_4 ,\fifo_eol_cnt_reg[4]_i_1_n_5 ,\fifo_eol_cnt_reg[4]_i_1_n_6 ,\fifo_eol_cnt_reg[4]_i_1_n_7 }),
        .S(fifo_eol_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[5] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_6 ),
        .Q(fifo_eol_cnt_reg[5]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[6] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_5 ),
        .Q(fifo_eol_cnt_reg[6]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[7] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_4 ),
        .Q(fifo_eol_cnt_reg[7]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[8] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[8]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[8]_i_1 
       (.CI(\fifo_eol_cnt_reg[4]_i_1_n_0 ),
        .CO({\fifo_eol_cnt_reg[8]_i_1_n_0 ,\fifo_eol_cnt_reg[8]_i_1_n_1 ,\fifo_eol_cnt_reg[8]_i_1_n_2 ,\fifo_eol_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_eol_cnt_reg[8]_i_1_n_4 ,\fifo_eol_cnt_reg[8]_i_1_n_5 ,\fifo_eol_cnt_reg[8]_i_1_n_6 ,\fifo_eol_cnt_reg[8]_i_1_n_7 }),
        .S(fifo_eol_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[9] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_6 ),
        .Q(fifo_eol_cnt_reg[9]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(dout[0]),
        .Q(fifo_eol_dly),
        .R(\status_reg[28]_i_1_n_0 ));
  CARRY4 fifo_eol_error1_carry
       (.CI(1'b0),
        .CO({fifo_eol_error1_carry_n_0,fifo_eol_error1_carry_n_1,fifo_eol_error1_carry_n_2,fifo_eol_error1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_fifo_eol_error1_carry_O_UNCONNECTED[3:0]),
        .S({fifo_eol_error1_carry_i_1_n_0,fifo_eol_error1_carry_i_2_n_0,fifo_eol_error1_carry_i_3_n_0,fifo_eol_error1_carry_i_4_n_0}));
  CARRY4 fifo_eol_error1_carry__0
       (.CI(fifo_eol_error1_carry_n_0),
        .CO({NLW_fifo_eol_error1_carry__0_CO_UNCONNECTED[3:1],fifo_eol_error1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_fifo_eol_error1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,fifo_eol_error1_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_eol_error1_carry__0_i_1
       (.I0(fifo_eol_cnt_dly[12]),
        .I1(fifo_eol_cnt_reg[12]),
        .O(fifo_eol_error1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_1
       (.I0(fifo_eol_cnt_reg[9]),
        .I1(fifo_eol_cnt_dly[9]),
        .I2(fifo_eol_cnt_dly[11]),
        .I3(fifo_eol_cnt_reg[11]),
        .I4(fifo_eol_cnt_dly[10]),
        .I5(fifo_eol_cnt_reg[10]),
        .O(fifo_eol_error1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_2
       (.I0(fifo_eol_cnt_reg[6]),
        .I1(fifo_eol_cnt_dly[6]),
        .I2(fifo_eol_cnt_dly[8]),
        .I3(fifo_eol_cnt_reg[8]),
        .I4(fifo_eol_cnt_dly[7]),
        .I5(fifo_eol_cnt_reg[7]),
        .O(fifo_eol_error1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_3
       (.I0(fifo_eol_cnt_reg[3]),
        .I1(fifo_eol_cnt_dly[3]),
        .I2(fifo_eol_cnt_dly[5]),
        .I3(fifo_eol_cnt_reg[5]),
        .I4(fifo_eol_cnt_dly[4]),
        .I5(fifo_eol_cnt_reg[4]),
        .O(fifo_eol_error1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_4
       (.I0(fifo_eol_cnt_reg[0]),
        .I1(fifo_eol_cnt_dly[0]),
        .I2(fifo_eol_cnt_dly[2]),
        .I3(fifo_eol_cnt_reg[2]),
        .I4(fifo_eol_cnt_dly[1]),
        .I5(fifo_eol_cnt_reg[1]),
        .O(fifo_eol_error1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    fifo_eol_error_i_1
       (.I0(fifo_eol_error1),
        .I1(fifo_eol_error2),
        .I2(vid_io_out_ce),
        .I3(dout[1]),
        .I4(fifo_sof_dly),
        .I5(fifo_eol_error),
        .O(fifo_eol_error_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fifo_eol_error_i_2
       (.I0(fifo_eol_error_i_3_n_0),
        .I1(fifo_eol_error_i_4_n_0),
        .I2(fifo_eol_cnt_dly[6]),
        .I3(fifo_eol_cnt_dly[7]),
        .I4(fifo_eol_cnt_dly[4]),
        .I5(fifo_eol_cnt_dly[5]),
        .O(fifo_eol_error2));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    fifo_eol_error_i_3
       (.I0(fifo_eol_cnt_dly[11]),
        .I1(fifo_eol_cnt_dly[9]),
        .I2(fifo_eol_cnt_dly[8]),
        .I3(fifo_eol_cnt_dly[12]),
        .I4(fifo_eol_cnt_dly[10]),
        .O(fifo_eol_error_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_eol_error_i_4
       (.I0(fifo_eol_cnt_dly[2]),
        .I1(fifo_eol_cnt_dly[3]),
        .I2(fifo_eol_cnt_dly[0]),
        .I3(fifo_eol_cnt_dly[1]),
        .O(fifo_eol_error_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fifo_eol_error_i_1_n_0),
        .Q(fifo_eol_error),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_re_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(fifo_eol_re),
        .Q(fifo_eol_re_dly),
        .R(\status_reg[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \fifo_pix_cnt[0]_i_1 
       (.I0(\fifo_pix_cnt_dly[12]_i_1_n_0 ),
        .I1(fifo_eol_re_dly),
        .I2(vid_io_out_ce),
        .O(\fifo_pix_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AA00020022)) 
    \fifo_pix_cnt[0]_i_4 
       (.I0(vid_io_out_ce),
        .I1(state[1]),
        .I2(out),
        .I3(state[2]),
        .I4(state[0]),
        .I5(vtg_active_video),
        .O(fifo_rd_en));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_pix_cnt[0]_i_5 
       (.I0(fifo_pix_cnt_reg[0]),
        .O(\fifo_pix_cnt[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0102FFFF)) 
    \fifo_pix_cnt_dly[12]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(out),
        .I4(aresetn),
        .O(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA800)) 
    \fifo_pix_cnt_dly[12]_i_2 
       (.I0(vid_io_out_ce),
        .I1(\fifo_pix_cnt_dly[12]_i_3_n_0 ),
        .I2(fifo_pix_cnt_dly1__11),
        .I3(fifo_eol_re_dly),
        .O(fifo_pix_cnt_dly_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \fifo_pix_cnt_dly[12]_i_3 
       (.I0(\fifo_pix_cnt_dly[12]_i_5_n_0 ),
        .I1(fifo_eol_cnt_reg[5]),
        .I2(fifo_eol_cnt_reg[4]),
        .I3(fifo_eol_cnt_reg[6]),
        .I4(\fifo_pix_cnt_dly[12]_i_6_n_0 ),
        .O(\fifo_pix_cnt_dly[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \fifo_pix_cnt_dly[12]_i_4 
       (.I0(\fifo_pix_cnt_dly[12]_i_7_n_0 ),
        .I1(fifo_pix_cnt_dly[5]),
        .I2(fifo_pix_cnt_dly[4]),
        .I3(fifo_pix_cnt_dly[6]),
        .I4(\fifo_pix_cnt_dly[12]_i_8_n_0 ),
        .O(fifo_pix_cnt_dly1__11));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo_pix_cnt_dly[12]_i_5 
       (.I0(fifo_eol_cnt_reg[1]),
        .I1(fifo_eol_cnt_reg[0]),
        .I2(fifo_eol_cnt_reg[3]),
        .I3(fifo_eol_cnt_reg[2]),
        .O(\fifo_pix_cnt_dly[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fifo_pix_cnt_dly[12]_i_6 
       (.I0(fifo_eol_cnt_reg[11]),
        .I1(fifo_eol_cnt_reg[10]),
        .I2(fifo_eol_cnt_reg[12]),
        .I3(fifo_eol_cnt_reg[7]),
        .I4(fifo_eol_cnt_reg[8]),
        .I5(fifo_eol_cnt_reg[9]),
        .O(\fifo_pix_cnt_dly[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo_pix_cnt_dly[12]_i_7 
       (.I0(fifo_pix_cnt_dly[1]),
        .I1(fifo_pix_cnt_dly[0]),
        .I2(fifo_pix_cnt_dly[3]),
        .I3(fifo_pix_cnt_dly[2]),
        .O(\fifo_pix_cnt_dly[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fifo_pix_cnt_dly[12]_i_8 
       (.I0(fifo_pix_cnt_dly[11]),
        .I1(fifo_pix_cnt_dly[10]),
        .I2(fifo_pix_cnt_dly[12]),
        .I3(fifo_pix_cnt_dly[7]),
        .I4(fifo_pix_cnt_dly[8]),
        .I5(fifo_pix_cnt_dly[9]),
        .O(\fifo_pix_cnt_dly[12]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[0] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[0]),
        .Q(fifo_pix_cnt_dly[0]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[10] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[10]),
        .Q(fifo_pix_cnt_dly[10]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[11] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[11]),
        .Q(fifo_pix_cnt_dly[11]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[12] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[12]),
        .Q(fifo_pix_cnt_dly[12]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[1] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[1]),
        .Q(fifo_pix_cnt_dly[1]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[2] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[2]),
        .Q(fifo_pix_cnt_dly[2]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[3] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[3]),
        .Q(fifo_pix_cnt_dly[3]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[4] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[4]),
        .Q(fifo_pix_cnt_dly[4]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[5] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[5]),
        .Q(fifo_pix_cnt_dly[5]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[6] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[6]),
        .Q(fifo_pix_cnt_dly[6]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[7] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[7]),
        .Q(fifo_pix_cnt_dly[7]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[8] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[8]),
        .Q(fifo_pix_cnt_dly[8]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[9] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[9]),
        .Q(fifo_pix_cnt_dly[9]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[0] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_7 ),
        .Q(fifo_pix_cnt_reg[0]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\fifo_pix_cnt_reg[0]_i_3_n_0 ,\fifo_pix_cnt_reg[0]_i_3_n_1 ,\fifo_pix_cnt_reg[0]_i_3_n_2 ,\fifo_pix_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\fifo_pix_cnt_reg[0]_i_3_n_4 ,\fifo_pix_cnt_reg[0]_i_3_n_5 ,\fifo_pix_cnt_reg[0]_i_3_n_6 ,\fifo_pix_cnt_reg[0]_i_3_n_7 }),
        .S({fifo_pix_cnt_reg[3:1],\fifo_pix_cnt[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[10] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_5 ),
        .Q(fifo_pix_cnt_reg[10]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[11] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_4 ),
        .Q(fifo_pix_cnt_reg[11]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[12] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[12]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[12]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[12]_i_1 
       (.CI(\fifo_pix_cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_fifo_pix_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fifo_pix_cnt_reg[12]_i_1_O_UNCONNECTED [3:1],\fifo_pix_cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,fifo_pix_cnt_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[1] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_6 ),
        .Q(fifo_pix_cnt_reg[1]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[2] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_5 ),
        .Q(fifo_pix_cnt_reg[2]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[3] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_4 ),
        .Q(fifo_pix_cnt_reg[3]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[4] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[4]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[4]_i_1 
       (.CI(\fifo_pix_cnt_reg[0]_i_3_n_0 ),
        .CO({\fifo_pix_cnt_reg[4]_i_1_n_0 ,\fifo_pix_cnt_reg[4]_i_1_n_1 ,\fifo_pix_cnt_reg[4]_i_1_n_2 ,\fifo_pix_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_pix_cnt_reg[4]_i_1_n_4 ,\fifo_pix_cnt_reg[4]_i_1_n_5 ,\fifo_pix_cnt_reg[4]_i_1_n_6 ,\fifo_pix_cnt_reg[4]_i_1_n_7 }),
        .S(fifo_pix_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[5] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_6 ),
        .Q(fifo_pix_cnt_reg[5]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[6] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_5 ),
        .Q(fifo_pix_cnt_reg[6]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[7] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_4 ),
        .Q(fifo_pix_cnt_reg[7]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[8] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[8]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[8]_i_1 
       (.CI(\fifo_pix_cnt_reg[4]_i_1_n_0 ),
        .CO({\fifo_pix_cnt_reg[8]_i_1_n_0 ,\fifo_pix_cnt_reg[8]_i_1_n_1 ,\fifo_pix_cnt_reg[8]_i_1_n_2 ,\fifo_pix_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_pix_cnt_reg[8]_i_1_n_4 ,\fifo_pix_cnt_reg[8]_i_1_n_5 ,\fifo_pix_cnt_reg[8]_i_1_n_6 ,\fifo_pix_cnt_reg[8]_i_1_n_7 }),
        .S(fifo_pix_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[9] 
       (.C(aclk),
        .CE(fifo_pix_cnt),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_6 ),
        .Q(fifo_pix_cnt_reg[9]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 fifo_pix_error1_carry
       (.CI(1'b0),
        .CO({fifo_pix_error1_carry_n_0,fifo_pix_error1_carry_n_1,fifo_pix_error1_carry_n_2,fifo_pix_error1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_fifo_pix_error1_carry_O_UNCONNECTED[3:0]),
        .S({fifo_pix_error1_carry_i_1_n_0,fifo_pix_error1_carry_i_2_n_0,fifo_pix_error1_carry_i_3_n_0,fifo_pix_error1_carry_i_4_n_0}));
  CARRY4 fifo_pix_error1_carry__0
       (.CI(fifo_pix_error1_carry_n_0),
        .CO({NLW_fifo_pix_error1_carry__0_CO_UNCONNECTED[3:1],fifo_pix_error1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_fifo_pix_error1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,fifo_pix_error1_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_pix_error1_carry__0_i_1
       (.I0(fifo_pix_cnt_dly[12]),
        .I1(fifo_pix_cnt_reg[12]),
        .O(fifo_pix_error1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_1
       (.I0(fifo_pix_cnt_reg[9]),
        .I1(fifo_pix_cnt_dly[9]),
        .I2(fifo_pix_cnt_dly[11]),
        .I3(fifo_pix_cnt_reg[11]),
        .I4(fifo_pix_cnt_dly[10]),
        .I5(fifo_pix_cnt_reg[10]),
        .O(fifo_pix_error1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_2
       (.I0(fifo_pix_cnt_reg[6]),
        .I1(fifo_pix_cnt_dly[6]),
        .I2(fifo_pix_cnt_dly[8]),
        .I3(fifo_pix_cnt_reg[8]),
        .I4(fifo_pix_cnt_dly[7]),
        .I5(fifo_pix_cnt_reg[7]),
        .O(fifo_pix_error1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_3
       (.I0(fifo_pix_cnt_reg[3]),
        .I1(fifo_pix_cnt_dly[3]),
        .I2(fifo_pix_cnt_dly[5]),
        .I3(fifo_pix_cnt_reg[5]),
        .I4(fifo_pix_cnt_dly[4]),
        .I5(fifo_pix_cnt_reg[4]),
        .O(fifo_pix_error1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_4
       (.I0(fifo_pix_cnt_reg[0]),
        .I1(fifo_pix_cnt_dly[0]),
        .I2(fifo_pix_cnt_dly[2]),
        .I3(fifo_pix_cnt_reg[2]),
        .I4(fifo_pix_cnt_dly[1]),
        .I5(fifo_pix_cnt_reg[1]),
        .O(fifo_pix_error1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFF7AA00)) 
    fifo_pix_error_i_1
       (.I0(vid_io_out_ce),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(fifo_pix_error0),
        .I4(fifo_pix_error),
        .O(fifo_pix_error_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_pix_error_i_2
       (.I0(fifo_eol_re_dly),
        .I1(fifo_pix_cnt_dly1__11),
        .I2(fifo_pix_error1),
        .O(fifo_pix_error0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_pix_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fifo_pix_error_i_1_n_0),
        .Q(fifo_pix_error),
        .R(\status_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_sof_cnt[0]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[1]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_sof_cnt[2]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .I2(fifo_sof_cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_sof_cnt[3]_i_1 
       (.I0(fifo_sof_cnt_reg__0[1]),
        .I1(fifo_sof_cnt_reg__0[0]),
        .I2(fifo_sof_cnt_reg__0[2]),
        .I3(fifo_sof_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fifo_sof_cnt[4]_i_1 
       (.I0(fifo_sof_cnt_reg__0[2]),
        .I1(fifo_sof_cnt_reg__0[0]),
        .I2(fifo_sof_cnt_reg__0[1]),
        .I3(fifo_sof_cnt_reg__0[3]),
        .I4(fifo_sof_cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fifo_sof_cnt[5]_i_1 
       (.I0(fifo_sof_cnt_reg__0[3]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .I2(fifo_sof_cnt_reg__0[0]),
        .I3(fifo_sof_cnt_reg__0[2]),
        .I4(fifo_sof_cnt_reg__0[4]),
        .I5(fifo_sof_cnt_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[6]_i_1 
       (.I0(\fifo_sof_cnt[7]_i_2_n_0 ),
        .I1(fifo_sof_cnt_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_sof_cnt[7]_i_1 
       (.I0(\fifo_sof_cnt[7]_i_2_n_0 ),
        .I1(fifo_sof_cnt_reg__0[6]),
        .I2(fifo_sof_cnt_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo_sof_cnt[7]_i_2 
       (.I0(fifo_sof_cnt_reg__0[5]),
        .I1(fifo_sof_cnt_reg__0[3]),
        .I2(fifo_sof_cnt_reg__0[1]),
        .I3(fifo_sof_cnt_reg__0[0]),
        .I4(fifo_sof_cnt_reg__0[2]),
        .I5(fifo_sof_cnt_reg__0[4]),
        .O(\fifo_sof_cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[0] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(p_0_in__0[0]),
        .Q(fifo_sof_cnt_reg__0[0]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[1] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(p_0_in__0[1]),
        .Q(fifo_sof_cnt_reg__0[1]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[2] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(p_0_in__0[2]),
        .Q(fifo_sof_cnt_reg__0[2]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[3] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(p_0_in__0[3]),
        .Q(fifo_sof_cnt_reg__0[3]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[4] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(p_0_in__0[4]),
        .Q(fifo_sof_cnt_reg__0[4]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[5] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(p_0_in__0[5]),
        .Q(fifo_sof_cnt_reg__0[5]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[6] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(p_0_in__0[6]),
        .Q(fifo_sof_cnt_reg__0[6]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[7] 
       (.C(aclk),
        .CE(fifo_sof_cnt),
        .D(p_0_in__0[7]),
        .Q(fifo_sof_cnt_reg__0[7]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_sof_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(dout[1]),
        .Q(fifo_sof_dly),
        .R(\status_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAB8F00000000)) 
    \in_data_mux[23]_i_1 
       (.I0(vtg_active_video),
        .I1(state[0]),
        .I2(state[2]),
        .I3(out),
        .I4(state[1]),
        .I5(vid_io_out_ce),
        .O(E));
  LUT3 #(
    .INIT(8'h7F)) 
    in_de_mux_i_1
       (.I0(src_in),
        .I1(aresetn),
        .I2(fivid_reset_full_frame),
        .O(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    locked_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(out),
        .I3(state[2]),
        .O(p_3_in));
  FDRE locked_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(src_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFDF00)) 
    sof_ignore_i_1
       (.I0(vid_io_out_ce),
        .I1(dout[2]),
        .I2(\fifo_pix_cnt_dly[12]_i_3_n_0 ),
        .I3(sof_ignore),
        .I4(\vtg_lag[0]_i_1_n_0 ),
        .O(sof_ignore_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sof_ignore_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sof_ignore_i_1_n_0),
        .Q(sof_ignore),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA2E7)) 
    \state_dly[0]_i_1 
       (.I0(out),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(state_reg[0]));
  LUT4 #(
    .INIT(16'h405D)) 
    \state_dly[1]_i_1 
       (.I0(out),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(state_reg[1]));
  LUT4 #(
    .INIT(16'h0748)) 
    \state_dly[2]_i_1 
       (.I0(out),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(state_reg[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_dly[3]_i_1 
       (.I0(aresetn),
        .I1(vid_io_out_ce),
        .O(\state_dly[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hECC8)) 
    \state_dly[3]_i_2 
       (.I0(out),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(state_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[0] 
       (.C(aclk),
        .CE(\state_dly[3]_i_1_n_0 ),
        .D(state_reg[0]),
        .Q(state_dly[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[1] 
       (.C(aclk),
        .CE(\state_dly[3]_i_1_n_0 ),
        .D(state_reg[1]),
        .Q(state_dly[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[2] 
       (.C(aclk),
        .CE(\state_dly[3]_i_1_n_0 ),
        .D(state_reg[2]),
        .Q(state_dly[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[3] 
       (.C(aclk),
        .CE(\state_dly[3]_i_1_n_0 ),
        .D(state_reg[3]),
        .Q(state_dly[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000008)) 
    \status_reg[0]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(out),
        .I3(state[2]),
        .I4(\status_reg[0]_i_2_n_0 ),
        .I5(status[0]),
        .O(\status_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \status_reg[0]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\status_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \status_reg[10]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(\status_reg[10]_i_3_n_0 ),
        .I3(state[2]),
        .I4(out),
        .I5(status[10]),
        .O(\status_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \status_reg[10]_i_2 
       (.I0(state_dly[3]),
        .I1(state_reg[3]),
        .I2(\status_reg[10]_i_4_n_0 ),
        .I3(state_reg[0]),
        .I4(state_dly[0]),
        .O(status_reg1));
  LUT2 #(
    .INIT(4'h8)) 
    \status_reg[10]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\status_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEDEDEB77EBEDBEED)) 
    \status_reg[10]_i_4 
       (.I0(state_dly[1]),
        .I1(state_dly[2]),
        .I2(out),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\status_reg[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \status_reg[11]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(out),
        .I4(\status_reg[11]_i_2_n_0 ),
        .I5(status[11]),
        .O(\status_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \status_reg[11]_i_2 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(out),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\status_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \status_reg[12]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(out),
        .I4(\status_reg[12]_i_2_n_0 ),
        .I5(status[12]),
        .O(\status_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \status_reg[12]_i_2 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(\status_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \status_reg[1]_i_1 
       (.I0(out),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\status_reg[1]_i_2_n_0 ),
        .I5(status[1]),
        .O(\status_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \status_reg[1]_i_2 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(state[0]),
        .I3(state[2]),
        .I4(out),
        .I5(state[1]),
        .O(\status_reg[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \status_reg[28]_i_1 
       (.I0(aresetn),
        .O(\status_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    \status_reg[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(out),
        .I4(\status_reg[2]_i_2_n_0 ),
        .I5(status[2]),
        .O(\status_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \status_reg[2]_i_2 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(out),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\status_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000008)) 
    \status_reg[3]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(out),
        .I3(state[2]),
        .I4(\status_reg[9]_i_2_n_0 ),
        .I5(status[3]),
        .O(\status_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000080)) 
    \status_reg[4]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(\status_reg[10]_i_3_n_0 ),
        .I3(out),
        .I4(state[2]),
        .I5(status[4]),
        .O(\status_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \status_reg[5]_i_1 
       (.I0(out),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\status_reg[5]_i_2_n_0 ),
        .I5(status[5]),
        .O(\status_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \status_reg[5]_i_2 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(out),
        .O(\status_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \status_reg[6]_i_1 
       (.I0(out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\status_reg[6]_i_2_n_0 ),
        .I5(status[6]),
        .O(\status_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \status_reg[6]_i_2 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(out),
        .O(\status_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \status_reg[7]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(out),
        .I3(state[2]),
        .I4(\status_reg[7]_i_2_n_0 ),
        .I5(status[7]),
        .O(\status_reg[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \status_reg[7]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\status_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \status_reg[8]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(\status_reg[10]_i_3_n_0 ),
        .I3(out),
        .I4(state[2]),
        .I5(status[8]),
        .O(\status_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \status_reg[9]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg1),
        .I2(\status_reg[9]_i_2_n_0 ),
        .I3(out),
        .I4(state[2]),
        .I5(status[9]),
        .O(\status_reg[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[9]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\status_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[0]_i_1_n_0 ),
        .Q(status[0]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[10]_i_1_n_0 ),
        .Q(status[10]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[11]_i_1_n_0 ),
        .Q(status[11]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[12]_i_1_n_0 ),
        .Q(status[12]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[13] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(fifo_pix_error),
        .Q(status[13]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[14] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(fifo_eol_error),
        .Q(status[14]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[16] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[0]),
        .Q(status[15]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[17] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[1]),
        .Q(status[16]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[18] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[2]),
        .Q(status[17]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[19] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[3]),
        .Q(status[18]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[1]_i_1_n_0 ),
        .Q(status[1]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[20] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[4]),
        .Q(status[19]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[21] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[5]),
        .Q(status[20]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[22] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[6]),
        .Q(status[21]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[23] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[7]),
        .Q(status[22]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[24] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[8]),
        .Q(status[23]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[25] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[9]),
        .Q(status[24]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[26] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[10]),
        .Q(status[25]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[27] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[11]),
        .Q(status[26]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[28] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[12]),
        .Q(status[27]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[2]_i_1_n_0 ),
        .Q(status[2]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[3]_i_1_n_0 ),
        .Q(status[3]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[4]_i_1_n_0 ),
        .Q(status[4]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[5]_i_1_n_0 ),
        .Q(status[5]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[6]_i_1_n_0 ),
        .Q(status[6]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[7]_i_1_n_0 ),
        .Q(status[7]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[8]_i_1_n_0 ),
        .Q(status[8]),
        .R(\status_reg[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[9]_i_1_n_0 ),
        .Q(status[9]),
        .R(\status_reg[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22022200)) 
    vtg_ce_INST_0
       (.I0(vid_io_out_ce),
        .I1(state[2]),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .O(vtg_ce));
  FDRE #(
    .INIT(1'b0)) 
    vtg_de_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_active_video),
        .Q(vtg_de_dly),
        .R(\status_reg[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \vtg_lag[0]_i_1 
       (.I0(state[1]),
        .I1(out),
        .I2(state[2]),
        .I3(state[0]),
        .I4(aresetn),
        .O(\vtg_lag[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080002)) 
    \vtg_lag[0]_i_2 
       (.I0(vid_io_out_ce),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(out),
        .O(vtg_lag));
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_lag[0]_i_4 
       (.I0(vtg_lag_reg[0]),
        .O(\vtg_lag[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[0] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_7 ),
        .Q(vtg_lag_reg[0]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\vtg_lag_reg[0]_i_3_n_0 ,\vtg_lag_reg[0]_i_3_n_1 ,\vtg_lag_reg[0]_i_3_n_2 ,\vtg_lag_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\vtg_lag_reg[0]_i_3_n_4 ,\vtg_lag_reg[0]_i_3_n_5 ,\vtg_lag_reg[0]_i_3_n_6 ,\vtg_lag_reg[0]_i_3_n_7 }),
        .S({vtg_lag_reg[3:1],\vtg_lag[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[10] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_5 ),
        .Q(vtg_lag_reg[10]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[11] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_4 ),
        .Q(vtg_lag_reg[11]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[12] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_7 ),
        .Q(vtg_lag_reg[12]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[12]_i_1 
       (.CI(\vtg_lag_reg[8]_i_1_n_0 ),
        .CO({\vtg_lag_reg[12]_i_1_n_0 ,\vtg_lag_reg[12]_i_1_n_1 ,\vtg_lag_reg[12]_i_1_n_2 ,\vtg_lag_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[12]_i_1_n_4 ,\vtg_lag_reg[12]_i_1_n_5 ,\vtg_lag_reg[12]_i_1_n_6 ,\vtg_lag_reg[12]_i_1_n_7 }),
        .S({vtg_lag_reg__0[15:13],vtg_lag_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[13] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[13]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[14] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[14]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[15] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[15]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[16] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[16]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[16]_i_1 
       (.CI(\vtg_lag_reg[12]_i_1_n_0 ),
        .CO({\vtg_lag_reg[16]_i_1_n_0 ,\vtg_lag_reg[16]_i_1_n_1 ,\vtg_lag_reg[16]_i_1_n_2 ,\vtg_lag_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[16]_i_1_n_4 ,\vtg_lag_reg[16]_i_1_n_5 ,\vtg_lag_reg[16]_i_1_n_6 ,\vtg_lag_reg[16]_i_1_n_7 }),
        .S(vtg_lag_reg__0[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[17] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[17]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[18] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[18]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[19] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[19]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[1] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_6 ),
        .Q(vtg_lag_reg[1]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[20] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[20]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[20]_i_1 
       (.CI(\vtg_lag_reg[16]_i_1_n_0 ),
        .CO({\vtg_lag_reg[20]_i_1_n_0 ,\vtg_lag_reg[20]_i_1_n_1 ,\vtg_lag_reg[20]_i_1_n_2 ,\vtg_lag_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[20]_i_1_n_4 ,\vtg_lag_reg[20]_i_1_n_5 ,\vtg_lag_reg[20]_i_1_n_6 ,\vtg_lag_reg[20]_i_1_n_7 }),
        .S(vtg_lag_reg__0[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[21] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[21]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[22] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[22]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[23] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[23]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[24] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[24]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[24]_i_1 
       (.CI(\vtg_lag_reg[20]_i_1_n_0 ),
        .CO({\vtg_lag_reg[24]_i_1_n_0 ,\vtg_lag_reg[24]_i_1_n_1 ,\vtg_lag_reg[24]_i_1_n_2 ,\vtg_lag_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[24]_i_1_n_4 ,\vtg_lag_reg[24]_i_1_n_5 ,\vtg_lag_reg[24]_i_1_n_6 ,\vtg_lag_reg[24]_i_1_n_7 }),
        .S(vtg_lag_reg__0[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[25] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[25]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[26] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[26]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[27] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[27]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[28] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[28]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[28]_i_1 
       (.CI(\vtg_lag_reg[24]_i_1_n_0 ),
        .CO({\NLW_vtg_lag_reg[28]_i_1_CO_UNCONNECTED [3],\vtg_lag_reg[28]_i_1_n_1 ,\vtg_lag_reg[28]_i_1_n_2 ,\vtg_lag_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[28]_i_1_n_4 ,\vtg_lag_reg[28]_i_1_n_5 ,\vtg_lag_reg[28]_i_1_n_6 ,\vtg_lag_reg[28]_i_1_n_7 }),
        .S(vtg_lag_reg__0[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[29] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[29]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[2] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_5 ),
        .Q(vtg_lag_reg[2]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[30] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[30]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[31] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[31]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[3] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_4 ),
        .Q(vtg_lag_reg[3]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[4] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_7 ),
        .Q(vtg_lag_reg[4]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[4]_i_1 
       (.CI(\vtg_lag_reg[0]_i_3_n_0 ),
        .CO({\vtg_lag_reg[4]_i_1_n_0 ,\vtg_lag_reg[4]_i_1_n_1 ,\vtg_lag_reg[4]_i_1_n_2 ,\vtg_lag_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[4]_i_1_n_4 ,\vtg_lag_reg[4]_i_1_n_5 ,\vtg_lag_reg[4]_i_1_n_6 ,\vtg_lag_reg[4]_i_1_n_7 }),
        .S(vtg_lag_reg[7:4]));
  FDSE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[5] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_6 ),
        .Q(vtg_lag_reg[5]),
        .S(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[6] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_5 ),
        .Q(vtg_lag_reg[6]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[7] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_4 ),
        .Q(vtg_lag_reg[7]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[8] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_7 ),
        .Q(vtg_lag_reg[8]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[8]_i_1 
       (.CI(\vtg_lag_reg[4]_i_1_n_0 ),
        .CO({\vtg_lag_reg[8]_i_1_n_0 ,\vtg_lag_reg[8]_i_1_n_1 ,\vtg_lag_reg[8]_i_1_n_2 ,\vtg_lag_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[8]_i_1_n_4 ,\vtg_lag_reg[8]_i_1_n_5 ,\vtg_lag_reg[8]_i_1_n_6 ,\vtg_lag_reg[8]_i_1_n_7 }),
        .S(vtg_lag_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[9] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_6 ),
        .Q(vtg_lag_reg[9]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_sof_cnt[0]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[1]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vtg_sof_cnt[2]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .I2(vtg_sof_cnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vtg_sof_cnt[3]_i_1 
       (.I0(vtg_sof_cnt_reg__0[1]),
        .I1(vtg_sof_cnt_reg__0[0]),
        .I2(vtg_sof_cnt_reg__0[2]),
        .I3(vtg_sof_cnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vtg_sof_cnt[4]_i_1 
       (.I0(vtg_sof_cnt_reg__0[2]),
        .I1(vtg_sof_cnt_reg__0[0]),
        .I2(vtg_sof_cnt_reg__0[1]),
        .I3(vtg_sof_cnt_reg__0[3]),
        .I4(vtg_sof_cnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vtg_sof_cnt[5]_i_1 
       (.I0(vtg_sof_cnt_reg__0[3]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .I2(vtg_sof_cnt_reg__0[0]),
        .I3(vtg_sof_cnt_reg__0[2]),
        .I4(vtg_sof_cnt_reg__0[4]),
        .I5(vtg_sof_cnt_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[6]_i_1 
       (.I0(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I1(vtg_sof_cnt_reg__0[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h071BFFFF)) 
    \vtg_sof_cnt[7]_i_1 
       (.I0(out),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(aresetn),
        .O(\vtg_sof_cnt[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vtg_sof_cnt[7]_i_2 
       (.I0(vid_io_out_ce),
        .I1(vtg_sof_dly),
        .O(vtg_sof_cnt));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vtg_sof_cnt[7]_i_3 
       (.I0(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I1(vtg_sof_cnt_reg__0[6]),
        .I2(vtg_sof_cnt_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vtg_sof_cnt[7]_i_4 
       (.I0(vtg_sof_cnt_reg__0[5]),
        .I1(vtg_sof_cnt_reg__0[3]),
        .I2(vtg_sof_cnt_reg__0[1]),
        .I3(vtg_sof_cnt_reg__0[0]),
        .I4(vtg_sof_cnt_reg__0[2]),
        .I5(vtg_sof_cnt_reg__0[4]),
        .O(\vtg_sof_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[0] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[0]),
        .Q(vtg_sof_cnt_reg__0[0]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[1] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[1]),
        .Q(vtg_sof_cnt_reg__0[1]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[2] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[2]),
        .Q(vtg_sof_cnt_reg__0[2]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[3] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[3]),
        .Q(vtg_sof_cnt_reg__0[3]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[4] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[4]),
        .Q(vtg_sof_cnt_reg__0[4]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[5] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[5]),
        .Q(vtg_sof_cnt_reg__0[5]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[6] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[6]),
        .Q(vtg_sof_cnt_reg__0[6]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[7] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[7]),
        .Q(vtg_sof_cnt_reg__0[7]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    vtg_sof_dly_i_1
       (.I0(vtg_active_video),
        .I1(vtg_vsync_bp_reg_n_0),
        .I2(vtg_de_dly),
        .O(vtg_sof));
  FDRE #(
    .INIT(1'b0)) 
    vtg_sof_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_sof),
        .Q(vtg_sof_dly),
        .R(\status_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEAA0000)) 
    vtg_vsync_bp_i_1
       (.I0(vtg_vsync_bp_reg_n_0),
        .I1(vid_io_out_ce),
        .I2(vtg_vsync),
        .I3(vtg_vsync_dly),
        .I4(aresetn),
        .I5(vtg_de_dly),
        .O(vtg_vsync_bp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_bp_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vtg_vsync_bp_i_1_n_0),
        .Q(vtg_vsync_bp_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_vsync),
        .Q(vtg_vsync_dly),
        .R(\status_reg[28]_i_1_n_0 ));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
   (S,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    \count_value_i_reg[1]_1 ,
    out,
    rd_en,
    ram_empty_i,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] ,
    rd_clk);
  output [1:0]S;
  output [0:0]DI;
  output [0:0]\count_value_i_reg[1]_0 ;
  input [1:0]Q;
  input [1:0]\count_value_i_reg[1]_1 ;
  input [1:0]out;
  input rd_en;
  input ram_empty_i;
  input [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  input rd_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[1]_1 ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  wire [1:0]out;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(count_value_i),
        .I1(out[0]),
        .I2(rd_en),
        .I3(out[1]),
        .I4(ram_empty_i),
        .I5(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(ram_empty_i),
        .I4(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(count_value_i),
        .I1(out[0]),
        .I2(rd_en),
        .I3(out[1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(count_value_i),
        .I1(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[3]_i_7 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\count_value_i_reg[1]_0 ),
        .I3(\count_value_i_reg[1]_1 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[3]_i_8 
       (.I0(count_value_i),
        .I1(Q[0]),
        .I2(\count_value_i_reg[1]_1 [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    DI,
    S,
    CO,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[11] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[0]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] ,
    \count_value_i_reg[13]_0 ,
    \count_value_i_reg[11]_0 ,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[12]_0 ,
    \count_value_i_reg[12]_1 ,
    ram_empty_i,
    rd_en,
    out,
    clr_full,
    ram_wr_en_pf,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] ,
    rd_clk);
  output [12:0]Q;
  output [0:0]DI;
  output [1:0]S;
  output [0:0]CO;
  output [0:0]\grdc.rd_data_count_i_reg[3] ;
  output [3:0]\grdc.rd_data_count_i_reg[7] ;
  output [3:0]\grdc.rd_data_count_i_reg[11] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  output \count_value_i_reg[0]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output [2:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  output [3:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  output [3:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] ;
  output [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] ;
  input [13:0]\count_value_i_reg[13]_0 ;
  input [11:0]\count_value_i_reg[11]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input [0:0]\count_value_i_reg[12]_0 ;
  input [0:0]\count_value_i_reg[12]_1 ;
  input ram_empty_i;
  input rd_en;
  input [1:0]out;
  input clr_full;
  input ram_wr_en_pf;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  input rd_clk;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [12:0]Q;
  wire [1:0]S;
  wire clr_full;
  wire \count_value_i[3]_i_2__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [11:0]\count_value_i_reg[11]_0 ;
  wire \count_value_i_reg[11]_i_1__0_n_0 ;
  wire \count_value_i_reg[11]_i_1__0_n_1 ;
  wire \count_value_i_reg[11]_i_1__0_n_2 ;
  wire \count_value_i_reg[11]_i_1__0_n_3 ;
  wire \count_value_i_reg[11]_i_1__0_n_4 ;
  wire \count_value_i_reg[11]_i_1__0_n_5 ;
  wire \count_value_i_reg[11]_i_1__0_n_6 ;
  wire \count_value_i_reg[11]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[12]_0 ;
  wire [0:0]\count_value_i_reg[12]_1 ;
  wire [13:0]\count_value_i_reg[13]_0 ;
  wire \count_value_i_reg[13]_i_1__0_n_3 ;
  wire \count_value_i_reg[13]_i_1__0_n_6 ;
  wire \count_value_i_reg[13]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_1 ;
  wire \count_value_i_reg[3]_i_1__0_n_2 ;
  wire \count_value_i_reg[3]_i_1__0_n_3 ;
  wire \count_value_i_reg[3]_i_1__0_n_4 ;
  wire \count_value_i_reg[3]_i_1__0_n_5 ;
  wire \count_value_i_reg[3]_i_1__0_n_6 ;
  wire \count_value_i_reg[3]_i_1__0_n_7 ;
  wire \count_value_i_reg[7]_i_1__0_n_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_1 ;
  wire \count_value_i_reg[7]_i_1__0_n_2 ;
  wire \count_value_i_reg[7]_i_1__0_n_3 ;
  wire \count_value_i_reg[7]_i_1__0_n_4 ;
  wire \count_value_i_reg[7]_i_1__0_n_5 ;
  wire \count_value_i_reg[7]_i_1__0_n_6 ;
  wire \count_value_i_reg[7]_i_1__0_n_7 ;
  wire \count_value_i_reg_n_0_[13] ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_15_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_16_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_3 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_3 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire [3:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] ;
  wire [2:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  wire [3:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  wire going_full1;
  wire [3:0]\grdc.rd_data_count_i_reg[11] ;
  wire [0:0]\grdc.rd_data_count_i_reg[3] ;
  wire [3:0]\grdc.rd_data_count_i_reg[7] ;
  wire [1:0]out;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_clk;
  wire rd_en;
  wire [3:1]\NLW_count_value_i_reg[13]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_value_i_reg[13]_i_1__0_O_UNCONNECTED ;
  wire [3:1]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_2__0 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(out[0]),
        .I3(out[1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[3]_i_1__0_n_7 ),
        .Q(Q[0]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[11]_i_1__0_n_5 ),
        .Q(Q[10]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[11]_i_1__0_n_4 ),
        .Q(Q[11]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[11]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__0_n_0 ),
        .CO({\count_value_i_reg[11]_i_1__0_n_0 ,\count_value_i_reg[11]_i_1__0_n_1 ,\count_value_i_reg[11]_i_1__0_n_2 ,\count_value_i_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[11]_i_1__0_n_4 ,\count_value_i_reg[11]_i_1__0_n_5 ,\count_value_i_reg[11]_i_1__0_n_6 ,\count_value_i_reg[11]_i_1__0_n_7 }),
        .S(Q[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[13]_i_1__0_n_7 ),
        .Q(Q[12]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[13] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[13]_i_1__0_n_6 ),
        .Q(\count_value_i_reg_n_0_[13] ),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[13]_i_1__0 
       (.CI(\count_value_i_reg[11]_i_1__0_n_0 ),
        .CO({\NLW_count_value_i_reg[13]_i_1__0_CO_UNCONNECTED [3:1],\count_value_i_reg[13]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[13]_i_1__0_O_UNCONNECTED [3:2],\count_value_i_reg[13]_i_1__0_n_6 ,\count_value_i_reg[13]_i_1__0_n_7 }),
        .S({1'b0,1'b0,\count_value_i_reg_n_0_[13] ,Q[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[3]_i_1__0_n_6 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[3]_i_1__0_n_5 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[3]_i_1__0_n_4 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__0_n_0 ,\count_value_i_reg[3]_i_1__0_n_1 ,\count_value_i_reg[3]_i_1__0_n_2 ,\count_value_i_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__0_n_4 ,\count_value_i_reg[3]_i_1__0_n_5 ,\count_value_i_reg[3]_i_1__0_n_6 ,\count_value_i_reg[3]_i_1__0_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[7]_i_1__0_n_7 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[7]_i_1__0_n_6 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[7]_i_1__0_n_5 ),
        .Q(Q[6]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[7]_i_1__0_n_4 ),
        .Q(Q[7]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[7]_i_1__0 
       (.CI(\count_value_i_reg[3]_i_1__0_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__0_n_0 ,\count_value_i_reg[7]_i_1__0_n_1 ,\count_value_i_reg[7]_i_1__0_n_2 ,\count_value_i_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__0_n_4 ,\count_value_i_reg[7]_i_1__0_n_5 ,\count_value_i_reg[7]_i_1__0_n_6 ,\count_value_i_reg[7]_i_1__0_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[11]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[11]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(CO),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[13]_0 [6]),
        .I2(\count_value_i_reg[13]_0 [8]),
        .I3(Q[8]),
        .I4(\count_value_i_reg[13]_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[13]_0 [3]),
        .I2(\count_value_i_reg[13]_0 [5]),
        .I3(Q[5]),
        .I4(\count_value_i_reg[13]_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[13]_0 [0]),
        .I2(\count_value_i_reg[13]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[13]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[11]_0 [9]),
        .I2(\count_value_i_reg[11]_0 [11]),
        .I3(Q[11]),
        .I4(\count_value_i_reg[11]_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[11]_0 [6]),
        .I2(\count_value_i_reg[11]_0 [8]),
        .I3(Q[8]),
        .I4(\count_value_i_reg[11]_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_15 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[11]_0 [3]),
        .I2(\count_value_i_reg[11]_0 [5]),
        .I3(Q[5]),
        .I4(\count_value_i_reg[11]_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_16 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[11]_0 [0]),
        .I2(\count_value_i_reg[11]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[11]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[13]_0 [9]),
        .I2(\count_value_i_reg[13]_0 [11]),
        .I3(Q[11]),
        .I4(\count_value_i_reg[13]_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2 
       (.CI(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_0 ),
        .CO({\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\count_value_i_reg[12]_0 }));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3 
       (.CI(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_0 ),
        .CO({\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED [3:1],going_full1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\count_value_i_reg[12]_1 }));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_5_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 }));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_7_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_13_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_14_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_15_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_16_n_0 }));
  LUT6 #(
    .INIT(64'hFFAAAAAAFFFFBFBF)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(ram_wr_en_pf),
        .I2(going_full1),
        .I3(CO),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[11]_i_2 
       (.I0(Q[11]),
        .I1(\count_value_i_reg[13]_0 [11]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[11]_i_3 
       (.I0(Q[10]),
        .I1(\count_value_i_reg[13]_0 [10]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[11]_i_4 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[13]_0 [9]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[11]_i_5 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[13]_0 [8]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[12]_i_2 
       (.I0(Q[12]),
        .I1(\count_value_i_reg[13]_0 [12]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_3 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[13]_0 [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_4 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[13]_0 [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_5 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[13]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[13]_0 [7]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[13]_0 [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[13]_0 [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[13]_0 [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] [0]));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\count_value_i_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_6 
       (.I0(Q[10]),
        .I1(\count_value_i_reg[13]_0 [10]),
        .I2(Q[11]),
        .I3(\count_value_i_reg[13]_0 [11]),
        .O(\grdc.rd_data_count_i_reg[11] [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_7 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[13]_0 [9]),
        .I2(Q[10]),
        .I3(\count_value_i_reg[13]_0 [10]),
        .O(\grdc.rd_data_count_i_reg[11] [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_8 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[13]_0 [8]),
        .I2(Q[9]),
        .I3(\count_value_i_reg[13]_0 [9]),
        .O(\grdc.rd_data_count_i_reg[11] [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_9 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[13]_0 [7]),
        .I2(Q[8]),
        .I3(\count_value_i_reg[13]_0 [8]),
        .O(\grdc.rd_data_count_i_reg[11] [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[13]_i_3 
       (.I0(Q[12]),
        .I1(\count_value_i_reg[13]_0 [12]),
        .I2(\count_value_i_reg_n_0_[13] ),
        .I3(\count_value_i_reg[13]_0 [13]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[13]_i_4 
       (.I0(Q[11]),
        .I1(\count_value_i_reg[13]_0 [11]),
        .I2(Q[12]),
        .I3(\count_value_i_reg[13]_0 [12]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\count_value_i_reg[13]_0 [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[13]_0 [2]),
        .I2(Q[3]),
        .I3(\count_value_i_reg[13]_0 [3]),
        .O(\grdc.rd_data_count_i_reg[3] ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[13]_0 [6]),
        .I2(Q[7]),
        .I3(\count_value_i_reg[13]_0 [7]),
        .O(\grdc.rd_data_count_i_reg[7] [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[13]_0 [5]),
        .I2(Q[6]),
        .I3(\count_value_i_reg[13]_0 [6]),
        .O(\grdc.rd_data_count_i_reg[7] [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[13]_0 [4]),
        .I2(Q[5]),
        .I3(\count_value_i_reg[13]_0 [5]),
        .O(\grdc.rd_data_count_i_reg[7] [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[13]_0 [3]),
        .I2(Q[4]),
        .I3(\count_value_i_reg[13]_0 [4]),
        .O(\grdc.rd_data_count_i_reg[7] [0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0
   (ram_empty_i0,
    Q,
    D,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    CO,
    ram_wr_en_pf,
    ram_empty_i,
    \count_value_i_reg[11]_0 ,
    S,
    \count_value_i_reg[12]_0 ,
    DI,
    \count_value_i_reg[2]_0 ,
    \count_value_i_reg[6]_0 ,
    \count_value_i_reg[10]_0 ,
    \count_value_i_reg[12]_1 ,
    d_out_reg,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[7]_0 ,
    \count_value_i_reg[11]_1 ,
    \count_value_i_reg[12]_2 ,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[12]_3 ,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] ,
    wr_clk);
  output ram_empty_i0;
  output [13:0]Q;
  output [13:0]D;
  output [12:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] ;
  output [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [0:0]CO;
  input ram_wr_en_pf;
  input ram_empty_i;
  input [11:0]\count_value_i_reg[11]_0 ;
  input [0:0]S;
  input [0:0]\count_value_i_reg[12]_0 ;
  input [1:0]DI;
  input [2:0]\count_value_i_reg[2]_0 ;
  input [3:0]\count_value_i_reg[6]_0 ;
  input [3:0]\count_value_i_reg[10]_0 ;
  input [1:0]\count_value_i_reg[12]_1 ;
  input [0:0]d_out_reg;
  input [3:0]\count_value_i_reg[3]_0 ;
  input [3:0]\count_value_i_reg[7]_0 ;
  input [3:0]\count_value_i_reg[11]_1 ;
  input [0:0]\count_value_i_reg[12]_2 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input [11:0]\count_value_i_reg[12]_3 ;
  input [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  input wr_clk;

  wire [0:0]CO;
  wire [13:0]D;
  wire [1:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [13:0]Q;
  wire [0:0]S;
  wire [3:0]\count_value_i_reg[10]_0 ;
  wire [11:0]\count_value_i_reg[11]_0 ;
  wire [3:0]\count_value_i_reg[11]_1 ;
  wire \count_value_i_reg[11]_i_1_n_0 ;
  wire \count_value_i_reg[11]_i_1_n_1 ;
  wire \count_value_i_reg[11]_i_1_n_2 ;
  wire \count_value_i_reg[11]_i_1_n_3 ;
  wire \count_value_i_reg[11]_i_1_n_4 ;
  wire \count_value_i_reg[11]_i_1_n_5 ;
  wire \count_value_i_reg[11]_i_1_n_6 ;
  wire \count_value_i_reg[11]_i_1_n_7 ;
  wire [0:0]\count_value_i_reg[12]_0 ;
  wire [1:0]\count_value_i_reg[12]_1 ;
  wire [0:0]\count_value_i_reg[12]_2 ;
  wire [11:0]\count_value_i_reg[12]_3 ;
  wire \count_value_i_reg[13]_i_1_n_3 ;
  wire \count_value_i_reg[13]_i_1_n_6 ;
  wire \count_value_i_reg[13]_i_1_n_7 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [2:0]\count_value_i_reg[2]_0 ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1_n_0 ;
  wire \count_value_i_reg[3]_i_1_n_1 ;
  wire \count_value_i_reg[3]_i_1_n_2 ;
  wire \count_value_i_reg[3]_i_1_n_3 ;
  wire \count_value_i_reg[3]_i_1_n_4 ;
  wire \count_value_i_reg[3]_i_1_n_5 ;
  wire \count_value_i_reg[3]_i_1_n_6 ;
  wire \count_value_i_reg[3]_i_1_n_7 ;
  wire [3:0]\count_value_i_reg[6]_0 ;
  wire [3:0]\count_value_i_reg[7]_0 ;
  wire \count_value_i_reg[7]_i_1_n_0 ;
  wire \count_value_i_reg[7]_i_1_n_1 ;
  wire \count_value_i_reg[7]_i_1_n_2 ;
  wire \count_value_i_reg[7]_i_1_n_3 ;
  wire \count_value_i_reg[7]_i_1_n_4 ;
  wire \count_value_i_reg[7]_i_1_n_5 ;
  wire \count_value_i_reg[7]_i_1_n_6 ;
  wire \count_value_i_reg[7]_i_1_n_7 ;
  wire [0:0]d_out_reg;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_1 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_2 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_3 ;
  wire [12:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  wire going_empty1;
  wire \gwdc.wr_data_count_i[11]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[13]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[13]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire wr_clk;
  wire [3:1]\NLW_count_value_i_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_value_i_reg[13]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gwdc.wr_data_count_i_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gwdc.wr_data_count_i_reg[13]_i_1_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[11]_i_1_n_5 ),
        .Q(Q[10]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[11]_i_1_n_4 ),
        .Q(Q[11]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[11]_i_1 
       (.CI(\count_value_i_reg[7]_i_1_n_0 ),
        .CO({\count_value_i_reg[11]_i_1_n_0 ,\count_value_i_reg[11]_i_1_n_1 ,\count_value_i_reg[11]_i_1_n_2 ,\count_value_i_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[11]_i_1_n_4 ,\count_value_i_reg[11]_i_1_n_5 ,\count_value_i_reg[11]_i_1_n_6 ,\count_value_i_reg[11]_i_1_n_7 }),
        .S(Q[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[13]_i_1_n_7 ),
        .Q(Q[12]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[13] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[13]_i_1_n_6 ),
        .Q(Q[13]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[13]_i_1 
       (.CI(\count_value_i_reg[11]_i_1_n_0 ),
        .CO({\NLW_count_value_i_reg[13]_i_1_CO_UNCONNECTED [3:1],\count_value_i_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[13]_i_1_O_UNCONNECTED [3:2],\count_value_i_reg[13]_i_1_n_6 ,\count_value_i_reg[13]_i_1_n_7 }),
        .S({1'b0,1'b0,Q[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1_n_0 ,\count_value_i_reg[3]_i_1_n_1 ,\count_value_i_reg[3]_i_1_n_2 ,\count_value_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1_n_4 ,\count_value_i_reg[3]_i_1_n_5 ,\count_value_i_reg[3]_i_1_n_6 ,\count_value_i_reg[3]_i_1_n_7 }),
        .S({Q[3:1],S}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[7]_i_1 
       (.CI(\count_value_i_reg[3]_i_1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1_n_0 ,\count_value_i_reg[7]_i_1_n_1 ,\count_value_i_reg[7]_i_1_n_2 ,\count_value_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1_n_4 ,\count_value_i_reg[7]_i_1_n_5 ,\count_value_i_reg[7]_i_1_n_6 ,\count_value_i_reg[7]_i_1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[11]_i_1_n_7 ),
        .Q(Q[8]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[11]_i_1_n_6 ),
        .Q(Q[9]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[12]),
        .I1(\count_value_i_reg[12]_3 [11]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I1(going_empty1),
        .I2(CO),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[11]_0 [9]),
        .I2(\count_value_i_reg[11]_0 [11]),
        .I3(Q[11]),
        .I4(\count_value_i_reg[11]_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[11]_0 [6]),
        .I2(\count_value_i_reg[11]_0 [8]),
        .I3(Q[8]),
        .I4(\count_value_i_reg[11]_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_7 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[11]_0 [3]),
        .I2(\count_value_i_reg[11]_0 [5]),
        .I3(Q[5]),
        .I4(\count_value_i_reg[11]_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_8 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[11]_0 [0]),
        .I2(\count_value_i_reg[11]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[11]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_8_n_0 ));
  CARRY4 \gen_pntr_flags_cc.ram_empty_i_reg_i_2 
       (.CI(\gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_0 ),
        .CO({\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_CO_UNCONNECTED [3:1],going_empty1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\count_value_i_reg[12]_0 }));
  CARRY4 \gen_pntr_flags_cc.ram_empty_i_reg_i_3 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_0 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_1 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_2 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_8_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] [11:8]),
        .S(\count_value_i_reg[11]_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11]_i_1_n_0 ),
        .CO(\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12]_i_1_O_UNCONNECTED [3:1],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] [12]}),
        .S({1'b0,1'b0,1'b0,\count_value_i_reg[12]_2 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],d_out_reg}),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] [3:0]),
        .S(\count_value_i_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0 ),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] [7:4]),
        .S(\count_value_i_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_2 
       (.I0(Q[10]),
        .I1(\count_value_i_reg[12]_3 [9]),
        .O(\gwdc.wr_data_count_i[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_3 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[12]_3 [8]),
        .O(\gwdc.wr_data_count_i[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_4 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[12]_3 [7]),
        .O(\gwdc.wr_data_count_i[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_5 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[12]_3 [6]),
        .O(\gwdc.wr_data_count_i[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[13]_i_2 
       (.I0(Q[11]),
        .I1(\count_value_i_reg[12]_3 [10]),
        .O(\gwdc.wr_data_count_i[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[12]_3 [1]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[3]_i_6 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\count_value_i_reg[12]_3 [0]),
        .I3(\count_value_i_reg[12]_3 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[12]_3 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[12]_3 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[12]_3 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[12]_3 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  CARRY4 \gwdc.wr_data_count_i_reg[11]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CO({\gwdc.wr_data_count_i_reg[11]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[11]_i_2_n_0 ,\gwdc.wr_data_count_i[11]_i_3_n_0 ,\gwdc.wr_data_count_i[11]_i_4_n_0 ,\gwdc.wr_data_count_i[11]_i_5_n_0 }),
        .O(D[11:8]),
        .S(\count_value_i_reg[10]_0 ));
  CARRY4 \gwdc.wr_data_count_i_reg[13]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[11]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[13]_i_1_CO_UNCONNECTED [3:1],\gwdc.wr_data_count_i_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\gwdc.wr_data_count_i[13]_i_2_n_0 }),
        .O({\NLW_gwdc.wr_data_count_i_reg[13]_i_1_O_UNCONNECTED [3:2],D[13:12]}),
        .S({1'b0,1'b0,\count_value_i_reg[12]_1 }));
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[3]_i_2_n_0 ,DI,Q[0]}),
        .O(D[3:0]),
        .S({\count_value_i_reg[2]_0 [2],\gwdc.wr_data_count_i[3]_i_6_n_0 ,\count_value_i_reg[2]_0 [1:0]}));
  CARRY4 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 }),
        .O(D[7:4]),
        .S(\count_value_i_reg[6]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (Q,
    S,
    ram_empty_i,
    rd_en,
    out,
    \count_value_i_reg[12]_0 ,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    rd_clk);
  output [11:0]Q;
  output [0:0]S;
  input ram_empty_i;
  input rd_en;
  input [1:0]out;
  input [0:0]\count_value_i_reg[12]_0 ;
  input [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  input \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input rd_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [11:0]Q;
  wire [0:0]S;
  wire \count_value_i[3]_i_2__1_n_0 ;
  wire \count_value_i_reg[11]_i_1__1_n_0 ;
  wire \count_value_i_reg[11]_i_1__1_n_1 ;
  wire \count_value_i_reg[11]_i_1__1_n_2 ;
  wire \count_value_i_reg[11]_i_1__1_n_3 ;
  wire \count_value_i_reg[11]_i_1__1_n_4 ;
  wire \count_value_i_reg[11]_i_1__1_n_5 ;
  wire \count_value_i_reg[11]_i_1__1_n_6 ;
  wire \count_value_i_reg[11]_i_1__1_n_7 ;
  wire [0:0]\count_value_i_reg[12]_0 ;
  wire \count_value_i_reg[12]_i_1_n_7 ;
  wire \count_value_i_reg[3]_i_1__1_n_0 ;
  wire \count_value_i_reg[3]_i_1__1_n_1 ;
  wire \count_value_i_reg[3]_i_1__1_n_2 ;
  wire \count_value_i_reg[3]_i_1__1_n_3 ;
  wire \count_value_i_reg[3]_i_1__1_n_4 ;
  wire \count_value_i_reg[3]_i_1__1_n_5 ;
  wire \count_value_i_reg[3]_i_1__1_n_6 ;
  wire \count_value_i_reg[3]_i_1__1_n_7 ;
  wire \count_value_i_reg[7]_i_1__1_n_0 ;
  wire \count_value_i_reg[7]_i_1__1_n_1 ;
  wire \count_value_i_reg[7]_i_1__1_n_2 ;
  wire \count_value_i_reg[7]_i_1__1_n_3 ;
  wire \count_value_i_reg[7]_i_1__1_n_4 ;
  wire \count_value_i_reg[7]_i_1__1_n_5 ;
  wire \count_value_i_reg[7]_i_1__1_n_6 ;
  wire \count_value_i_reg[7]_i_1__1_n_7 ;
  wire \count_value_i_reg_n_0_[12] ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  wire [1:0]out;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [3:0]\NLW_count_value_i_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_value_i_reg[12]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_2__1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(out[0]),
        .I3(out[1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__1_n_7 ),
        .Q(Q[0]),
        .S(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__1_n_5 ),
        .Q(Q[10]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__1_n_4 ),
        .Q(Q[11]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[11]_i_1__1 
       (.CI(\count_value_i_reg[7]_i_1__1_n_0 ),
        .CO({\count_value_i_reg[11]_i_1__1_n_0 ,\count_value_i_reg[11]_i_1__1_n_1 ,\count_value_i_reg[11]_i_1__1_n_2 ,\count_value_i_reg[11]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[11]_i_1__1_n_4 ,\count_value_i_reg[11]_i_1__1_n_5 ,\count_value_i_reg[11]_i_1__1_n_6 ,\count_value_i_reg[11]_i_1__1_n_7 }),
        .S(Q[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[12]_i_1_n_7 ),
        .Q(\count_value_i_reg_n_0_[12] ),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[12]_i_1 
       (.CI(\count_value_i_reg[11]_i_1__1_n_0 ),
        .CO(\NLW_count_value_i_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[12]_i_1_O_UNCONNECTED [3:1],\count_value_i_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\count_value_i_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__1_n_6 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__1_n_5 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__1_n_4 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[3]_i_1__1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__1_n_0 ,\count_value_i_reg[3]_i_1__1_n_1 ,\count_value_i_reg[3]_i_1__1_n_2 ,\count_value_i_reg[3]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__1_n_4 ,\count_value_i_reg[3]_i_1__1_n_5 ,\count_value_i_reg[3]_i_1__1_n_6 ,\count_value_i_reg[3]_i_1__1_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_2__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__1_n_7 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__1_n_6 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__1_n_5 ),
        .Q(Q[6]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__1_n_4 ),
        .Q(Q[7]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[7]_i_1__1 
       (.CI(\count_value_i_reg[3]_i_1__1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__1_n_0 ,\count_value_i_reg[7]_i_1__1_n_1 ,\count_value_i_reg[7]_i_1__1_n_2 ,\count_value_i_reg[7]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__1_n_4 ,\count_value_i_reg[7]_i_1__1_n_5 ,\count_value_i_reg[7]_i_1__1_n_6 ,\count_value_i_reg[7]_i_1__1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__1_n_7 ),
        .Q(Q[8]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__1_n_6 ),
        .Q(Q[9]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(\count_value_i_reg_n_0_[12] ),
        .I1(\count_value_i_reg[12]_0 ),
        .O(S));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1
   (Q,
    D,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    d_out_reg,
    d_out_reg_0,
    \count_value_i_reg[12]_0 ,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] ,
    ram_wr_en_pf,
    wr_clk);
  output [11:0]Q;
  output [12:0]D;
  output [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input [0:0]d_out_reg;
  input d_out_reg_0;
  input [12:0]\count_value_i_reg[12]_0 ;
  input [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  input ram_wr_en_pf;
  input wr_clk;

  wire [12:0]D;
  wire [11:0]Q;
  wire \count_value_i_reg[11]_i_1__2_n_0 ;
  wire \count_value_i_reg[11]_i_1__2_n_1 ;
  wire \count_value_i_reg[11]_i_1__2_n_2 ;
  wire \count_value_i_reg[11]_i_1__2_n_3 ;
  wire \count_value_i_reg[11]_i_1__2_n_4 ;
  wire \count_value_i_reg[11]_i_1__2_n_5 ;
  wire \count_value_i_reg[11]_i_1__2_n_6 ;
  wire \count_value_i_reg[11]_i_1__2_n_7 ;
  wire [12:0]\count_value_i_reg[12]_0 ;
  wire \count_value_i_reg[12]_i_1__0_n_7 ;
  wire \count_value_i_reg[3]_i_1__2_n_0 ;
  wire \count_value_i_reg[3]_i_1__2_n_1 ;
  wire \count_value_i_reg[3]_i_1__2_n_2 ;
  wire \count_value_i_reg[3]_i_1__2_n_3 ;
  wire \count_value_i_reg[3]_i_1__2_n_4 ;
  wire \count_value_i_reg[3]_i_1__2_n_5 ;
  wire \count_value_i_reg[3]_i_1__2_n_6 ;
  wire \count_value_i_reg[3]_i_1__2_n_7 ;
  wire \count_value_i_reg[7]_i_1__2_n_0 ;
  wire \count_value_i_reg[7]_i_1__2_n_1 ;
  wire \count_value_i_reg[7]_i_1__2_n_2 ;
  wire \count_value_i_reg[7]_i_1__2_n_3 ;
  wire \count_value_i_reg[7]_i_1__2_n_4 ;
  wire \count_value_i_reg[7]_i_1__2_n_5 ;
  wire \count_value_i_reg[7]_i_1__2_n_6 ;
  wire \count_value_i_reg[7]_i_1__2_n_7 ;
  wire \count_value_i_reg_n_0_[12] ;
  wire [0:0]d_out_reg;
  wire d_out_reg_0;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[13]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2] ;
  wire ram_wr_en_pf;
  wire wr_clk;
  wire [3:0]\NLW_count_value_i_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_value_i_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1_O_UNCONNECTED ;

  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1__2_n_7 ),
        .Q(Q[0]),
        .S(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[11]_i_1__2_n_5 ),
        .Q(Q[10]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[11]_i_1__2_n_4 ),
        .Q(Q[11]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[11]_i_1__2 
       (.CI(\count_value_i_reg[7]_i_1__2_n_0 ),
        .CO({\count_value_i_reg[11]_i_1__2_n_0 ,\count_value_i_reg[11]_i_1__2_n_1 ,\count_value_i_reg[11]_i_1__2_n_2 ,\count_value_i_reg[11]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[11]_i_1__2_n_4 ,\count_value_i_reg[11]_i_1__2_n_5 ,\count_value_i_reg[11]_i_1__2_n_6 ,\count_value_i_reg[11]_i_1__2_n_7 }),
        .S(Q[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[12]_i_1__0_n_7 ),
        .Q(\count_value_i_reg_n_0_[12] ),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[12]_i_1__0 
       (.CI(\count_value_i_reg[11]_i_1__2_n_0 ),
        .CO(\NLW_count_value_i_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[12]_i_1__0_O_UNCONNECTED [3:1],\count_value_i_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,\count_value_i_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1__2_n_6 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1__2_n_5 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1__2_n_4 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[3]_i_1__2 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__2_n_0 ,\count_value_i_reg[3]_i_1__2_n_1 ,\count_value_i_reg[3]_i_1__2_n_2 ,\count_value_i_reg[3]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__2_n_4 ,\count_value_i_reg[3]_i_1__2_n_5 ,\count_value_i_reg[3]_i_1__2_n_6 ,\count_value_i_reg[3]_i_1__2_n_7 }),
        .S({Q[3:1],d_out_reg}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1__2_n_7 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1__2_n_6 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1__2_n_5 ),
        .Q(Q[6]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1__2_n_4 ),
        .Q(Q[7]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  CARRY4 \count_value_i_reg[7]_i_1__2 
       (.CI(\count_value_i_reg[3]_i_1__2_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__2_n_0 ,\count_value_i_reg[7]_i_1__2_n_1 ,\count_value_i_reg[7]_i_1__2_n_2 ,\count_value_i_reg[7]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__2_n_4 ,\count_value_i_reg[7]_i_1__2_n_5 ,\count_value_i_reg[7]_i_1__2_n_6 ,\count_value_i_reg[7]_i_1__2_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[11]_i_1__2_n_7 ),
        .Q(Q[8]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[11]_i_1__2_n_6 ),
        .Q(Q[9]),
        .R(\gen_rst_cc.fifo_wr_rst_cc_reg[2] ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(\count_value_i_reg_n_0_[12] ),
        .I1(\count_value_i_reg[12]_0 [12]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_2 
       (.I0(Q[11]),
        .I1(\count_value_i_reg[12]_0 [11]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_3 
       (.I0(Q[10]),
        .I1(\count_value_i_reg[12]_0 [10]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_4 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[12]_0 [9]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_5 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[12]_0 [8]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[13]_i_2 
       (.I0(\count_value_i_reg_n_0_[12] ),
        .I1(\count_value_i_reg[12]_0 [12]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[12]_0 [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[12]_0 [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[12]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[12]_0 [0]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[12]_0 [7]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[12]_0 [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[12]_0 [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[12]_0 [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ));
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(D[11:8]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[12]_i_5_n_0 }));
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12]_i_1_n_0 ),
        .CO(\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13]_i_1_O_UNCONNECTED [3:1],D[12]}),
        .S({1'b0,1'b0,1'b0,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[13]_i_2_n_0 }));
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_3 }),
        .CYINIT(d_out_reg_0),
        .DI(Q[3:0]),
        .O(D[3:0]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0 }));
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(D[7:4]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 }));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
(* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) (* EN_DVLD = "1'b0" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "8192" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "221184" *) (* FIFO_WRITE_DEPTH = "8192" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "8187" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "8187" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "14" *) (* RD_DC_WIDTH_EXT = "14" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "13" *) (* READ_DATA_WIDTH = "27" *) 
(* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "27" *) (* WR_DATA_COUNT_WIDTH = "14" *) 
(* WR_DC_WIDTH_EXT = "14" *) (* WR_PNTR_WIDTH = "13" *) (* WR_RD_RATIO = "0" *) 
(* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [26:0]din;
  output full;
  output full_n;
  output prog_full;
  output [13:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [26:0]dout;
  output empty;
  output prog_empty;
  output [13:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:1]count_value_i;
  wire [12:0]diff_pntr_pe;
  wire [13:1]diff_pntr_pf_q;
  wire [13:1]diff_pntr_pf_q0;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire full;
  wire full_n;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_fwft.curr_fwft_state ;
  wire \gen_fwft.empty_fwft_i_reg0 ;
  wire [1:0]\gen_fwft.next_fwft_state__0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[10] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[11] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[12] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ;
  wire [13:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire leaving_empty0;
  wire overflow;
  wire overflow_i0;
  wire p_1_in;
  wire prog_empty;
  wire prog_empty_i1;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf;
  wire ram_wr_en_pf_q;
  wire rd_clk;
  wire [13:0]rd_data_count;
  wire rd_en;
  wire [12:0]rd_pntr_ext;
  wire rd_rst_busy;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rdp_inst_n_26;
  wire rdp_inst_n_27;
  wire rdp_inst_n_28;
  wire rdp_inst_n_29;
  wire rdp_inst_n_30;
  wire rdp_inst_n_31;
  wire rdp_inst_n_32;
  wire rdp_inst_n_33;
  wire rdp_inst_n_34;
  wire rdp_inst_n_35;
  wire rdp_inst_n_36;
  wire rdp_inst_n_37;
  wire rdp_inst_n_38;
  wire rdp_inst_n_39;
  wire rdp_inst_n_40;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_11;
  wire rdpp1_inst_n_12;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire read_only;
  wire read_only_q;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_3;
  wire rst_d1_inst_n_7;
  wire rst_d1_inst_n_8;
  wire rst_d1_inst_n_9;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [13:0]wr_data_count;
  wire wr_en;
  wire [12:0]wr_pntr_ext;
  wire wr_rst_busy;
  wire write_only;
  wire write_only_q;
  wire wrp_inst_n_1;
  wire wrp_inst_n_42;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_11;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_25;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_4;
  wire xpm_fifo_rst_inst_n_6;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [26:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.next_fwft_state__0 [0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .O(\gen_fwft.next_fwft_state__0 [1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.next_fwft_state__0 [0]),
        .Q(\gen_fwft.curr_fwft_state [0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.next_fwft_state__0 [1]),
        .Q(\gen_fwft.curr_fwft_state [1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [0]),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(empty),
        .O(\gen_fwft.empty_fwft_i_reg0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.empty_fwft_i_reg0 ),
        .Q(empty),
        .S(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_2 ),
        .Q(rd_pntr_ext[1:0]),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\count_value_i_reg[1]_1 (wr_pntr_ext[1:0]),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2] (rd_rst_busy),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_28),
        .Q(full),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_26),
        .Q(full_n),
        .R(rd_rst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[10]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[10] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[11]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[11] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[12]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[12] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[8]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[9]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9] ),
        .R(rd_rst_busy));
  LUT5 #(
    .INIT(32'h00020000)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_4_n_0 ),
        .O(prog_empty_i1));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[11] ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[10] ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[12] ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_4 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_4_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_4),
        .Q(prog_empty),
        .R(1'b0));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(read_only),
        .Q(read_only_q),
        .R(rd_rst_busy));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(write_only),
        .Q(write_only_q),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[11]),
        .Q(diff_pntr_pf_q[11]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[12] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[12]),
        .Q(diff_pntr_pf_q[12]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[13] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[13]),
        .Q(diff_pntr_pf_q[13]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[1]),
        .Q(diff_pntr_pf_q[1]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ),
        .I2(diff_pntr_pf_q[8]),
        .I3(diff_pntr_pf_q[9]),
        .I4(diff_pntr_pf_q[6]),
        .I5(diff_pntr_pf_q[7]),
        .O(prog_full_i217_in));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3 
       (.I0(diff_pntr_pf_q[4]),
        .I1(diff_pntr_pf_q[11]),
        .I2(diff_pntr_pf_q[10]),
        .I3(diff_pntr_pf_q[12]),
        .I4(diff_pntr_pf_q[13]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4 
       (.I0(diff_pntr_pf_q[1]),
        .I1(diff_pntr_pf_q[5]),
        .I2(diff_pntr_pf_q[2]),
        .I3(diff_pntr_pf_q[3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_9),
        .Q(prog_full),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_27),
        .Q(ram_rd_en_pf_q),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_wr_en_pf),
        .Q(ram_wr_en_pf_q),
        .R(rd_rst_busy));
  (* ADDR_WIDTH_A = "13" *) 
  (* ADDR_WIDTH_B = "13" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "27" *) 
  (* BYTE_WRITE_WIDTH_B = "27" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "26" *) 
  (* \MEM.ADDRESS_SPACE_END  = "8191" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "27" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "221184" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "8192" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "27" *) 
  (* P_MIN_WIDTH_DATA_A = "27" *) 
  (* P_MIN_WIDTH_DATA_B = "27" *) 
  (* P_MIN_WIDTH_DATA_ECC = "27" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "27" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "13" *) 
  (* P_WIDTH_ADDR_READ_B = "13" *) 
  (* P_WIDTH_ADDR_WRITE_A = "13" *) 
  (* P_WIDTH_ADDR_WRITE_B = "13" *) 
  (* P_WIDTH_COL_WRITE_A = "27" *) 
  (* P_WIDTH_COL_WRITE_B = "27" *) 
  (* READ_DATA_WIDTH_A = "27" *) 
  (* READ_DATA_WIDTH_B = "27" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "27" *) 
  (* WRITE_DATA_WIDTH_B = "27" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [26:0]),
        .doutb(dout),
        .ena(ram_wr_en_pf),
        .enb(rdp_inst_n_27),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(rd_data_count[10]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [11]),
        .Q(rd_data_count[11]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[12] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [12]),
        .Q(rd_data_count[12]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[13] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [13]),
        .Q(rd_data_count[13]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[9]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(wr_data_count[0]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(wr_data_count[10]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [11]),
        .Q(wr_data_count[11]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[12] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [12]),
        .Q(wr_data_count[12]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[13] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [13]),
        .Q(wr_data_count[13]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[1]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[2]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[3]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[4]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[5]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(wr_data_count[6]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(wr_data_count[7]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(wr_data_count[8]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(wr_data_count[9]),
        .R(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
       (.CO(leaving_empty0),
        .DI(rdp_inst_n_13),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_14,rdp_inst_n_15}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdp_inst_n_27),
        .\count_value_i_reg[11]_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11}),
        .\count_value_i_reg[12]_0 (wrp_inst_n_42),
        .\count_value_i_reg[12]_1 (wrpp1_inst_n_25),
        .\count_value_i_reg[13]_0 ({wrp_inst_n_1,wr_pntr_ext}),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_28),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (full),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (rdp_inst_n_26),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[11] ({rdp_inst_n_36,rdp_inst_n_37,rdp_inst_n_38,rdp_inst_n_39}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] (rdp_inst_n_40),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ({rdp_inst_n_29,rdp_inst_n_30,rdp_inst_n_31}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ({rdp_inst_n_32,rdp_inst_n_33,rdp_inst_n_34,rdp_inst_n_35}),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2] (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[11] ({rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25}),
        .\grdc.rd_data_count_i_reg[3] (rdp_inst_n_17),
        .\grdc.rd_data_count_i_reg[7] ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_27),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10,rdpp1_inst_n_11}),
        .S(rdpp1_inst_n_12),
        .\count_value_i_reg[12]_0 (wr_pntr_ext[12]),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2] (rd_rst_busy),
        .out(\gen_fwft.curr_fwft_state ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.DI(p_1_in),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_27),
        .Q(rd_rst_busy),
        .S(rst_d1_inst_n_7),
        .clr_full(clr_full),
        .\count_value_i_reg[0] (wr_pntr_ext[0]),
        .\count_value_i_reg[0]_0 (wrpp1_inst_n_11),
        .\count_value_i_reg[3] (rst_d1_inst_n_8),
        .\gen_fwft.empty_fwft_i_reg (empty),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] (rst_d1_inst_n_3),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg (rst_d1_inst_n_9),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .prog_full_i217_in(prog_full_i217_in),
        .ram_rd_en_pf_q(ram_rd_en_pf_q),
        .ram_wr_en_pf_q(ram_wr_en_pf_q),
        .read_only(read_only),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .write_only(write_only));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0 wrp_inst
       (.CO(leaving_empty0),
        .D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_13,\gen_fwft.rdpp1_inst_n_2 }),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_27),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S(rst_d1_inst_n_7),
        .\count_value_i_reg[10]_0 ({rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25}),
        .\count_value_i_reg[11]_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10,rdpp1_inst_n_11}),
        .\count_value_i_reg[11]_1 ({rdp_inst_n_36,rdp_inst_n_37,rdp_inst_n_38,rdp_inst_n_39}),
        .\count_value_i_reg[12]_0 (rdpp1_inst_n_12),
        .\count_value_i_reg[12]_1 ({rdp_inst_n_14,rdp_inst_n_15}),
        .\count_value_i_reg[12]_2 (rdp_inst_n_40),
        .\count_value_i_reg[12]_3 (rd_pntr_ext[12:1]),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\count_value_i_reg[2]_0 ({rdp_inst_n_17,\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[3]_0 ({rdp_inst_n_29,rdp_inst_n_30,rdp_inst_n_31,xpm_fifo_rst_inst_n_6}),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .\count_value_i_reg[7]_0 ({rdp_inst_n_32,rdp_inst_n_33,rdp_inst_n_34,rdp_inst_n_35}),
        .d_out_reg(p_1_in),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (wrp_inst_n_42),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[12] (diff_pntr_pe),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2] (rd_rst_busy),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11}),
        .\count_value_i_reg[12]_0 (rd_pntr_ext),
        .d_out_reg(rst_d1_inst_n_8),
        .d_out_reg_0(rst_d1_inst_n_3),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (wrpp1_inst_n_25),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2] (rd_rst_busy),
        .ram_wr_en_pf(ram_wr_en_pf),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_27),
        .Q(rd_rst_busy),
        .SR(\grdc.rd_data_count_i0 ),
        .\count_value_i_reg[0] (rd_pntr_ext[0]),
        .\gen_fwft.empty_fwft_i_reg (empty),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] (xpm_fifo_rst_inst_n_6),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg (xpm_fifo_rst_inst_n_4),
        .out(\gen_fwft.curr_fwft_state ),
        .prog_empty(prog_empty),
        .prog_empty_i1(prog_empty_i1),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .read_only_q(read_only_q),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy),
        .write_only_q(write_only_q));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    overflow_i0,
    DI,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] ,
    clr_full,
    write_only,
    read_only,
    S,
    \count_value_i_reg[3] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ,
    Q,
    wr_clk,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    wr_en,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \gen_fwft.empty_fwft_i_reg ,
    rst,
    \count_value_i_reg[0] ,
    \count_value_i_reg[0]_0 ,
    prog_full_i217_in,
    ram_wr_en_pf_q,
    ram_rd_en_pf_q,
    prog_full);
  output rst_d1;
  output overflow_i0;
  output [0:0]DI;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] ;
  output clr_full;
  output write_only;
  output read_only;
  output [0:0]S;
  output [0:0]\count_value_i_reg[3] ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  input [0:0]Q;
  input wr_clk;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input \gen_fwft.empty_fwft_i_reg ;
  input rst;
  input [0:0]\count_value_i_reg[0] ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input prog_full_i217_in;
  input ram_wr_en_pf_q;
  input ram_rd_en_pf_q;
  input prog_full;

  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [0:0]Q;
  wire [0:0]S;
  wire clr_full;
  wire [0:0]\count_value_i_reg[0] ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[3] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire read_only;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire write_only;

  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .I4(\count_value_i_reg[0] ),
        .O(S));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_2__2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .I4(\count_value_i_reg[0]_0 ),
        .O(\count_value_i_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
  LUT6 #(
    .INIT(64'hFFFFFFFF0010FFFF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(wr_en),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I4(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I5(\gen_fwft.empty_fwft_i_reg ),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44444044)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg ),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .I4(rst_d1),
        .O(read_only));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04000404)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I1(wr_en),
        .I2(rst_d1),
        .I3(\gen_fwft.empty_fwft_i_reg ),
        .I4(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .O(write_only));
  LUT5 #(
    .INIT(32'h00000100)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .I4(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] ));
  LUT5 #(
    .INIT(32'h51550040)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1 
       (.I0(clr_full),
        .I1(prog_full_i217_in),
        .I2(ram_wr_en_pf_q),
        .I3(ram_rd_en_pf_q),
        .I4(prog_full),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (ram_wr_en_pf,
    Q,
    wr_rst_busy,
    SR,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ,
    underflow_i0,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ,
    rst,
    wr_en,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    rst_d1,
    out,
    write_only_q,
    prog_empty,
    prog_empty_i1,
    read_only_q,
    \gen_fwft.empty_fwft_i_reg ,
    rd_en,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0] ,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  output wr_rst_busy;
  output [0:0]SR;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  output underflow_i0;
  output [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  input rst;
  input wr_en;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input rst_d1;
  input [1:0]out;
  input write_only_q;
  input prog_empty;
  input prog_empty_i1;
  input read_only_q;
  input \gen_fwft.empty_fwft_i_reg ;
  input rd_en;
  input \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [0:0]\count_value_i_reg[0] ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]\count_value_i_reg[0] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire [1:0]out;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire prog_empty;
  wire prog_empty_i1;
  wire ram_wr_en_pf;
  wire rd_en;
  wire read_only_q;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire write_only_q;

  LUT5 #(
    .INIT(32'hFF2F00D0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_6 
       (.I0(ram_wr_en_pf),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(\gen_fwft.empty_fwft_i_reg ),
        .I4(\count_value_i_reg[0] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ));
  LUT5 #(
    .INIT(32'hFFFFFC4C)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1 
       (.I0(write_only_q),
        .I1(prog_empty),
        .I2(prog_empty_i1),
        .I3(read_only_q),
        .I4(Q),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[13]_i_1 
       (.I0(Q),
        .I1(out[0]),
        .I2(out[1]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg ),
        .I1(Q),
        .I2(rd_en),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(Q),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
   (overflow,
    dout,
    underflow,
    fifo_pix_cnt,
    s_axis_video_tready,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[2] ,
    fifo_eol_re,
    \FSM_sequential_state_reg[2]_0 ,
    aclk,
    din,
    E,
    aresetn,
    vid_io_out_ce,
    fifo_rd_en,
    s_axis_video_tvalid,
    aclken,
    out,
    fifo_eol_dly);
  output overflow;
  output [26:0]dout;
  output underflow;
  output fifo_pix_cnt;
  output s_axis_video_tready;
  output \FSM_sequential_state_reg[3] ;
  output \FSM_sequential_state_reg[2] ;
  output fifo_eol_re;
  output \FSM_sequential_state_reg[2]_0 ;
  input aclk;
  input [26:0]din;
  input [0:0]E;
  input aresetn;
  input vid_io_out_ce;
  input fifo_rd_en;
  input s_axis_video_tvalid;
  input aclken;
  input [0:0]out;
  input fifo_eol_dly;

  wire [0:0]E;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[3] ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [26:0]din;
  wire [26:0]dout;
  wire fifo_empty;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire [13:0]fifo_level_rd;
  wire fifo_pix_cnt;
  wire fifo_rd_en;
  wire full_i;
  wire [0:0]out;
  wire overflow;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;
  wire underflow;
  wire vid_io_out_ce;
  wire vid_reset;
  wire wr_en_i;
  wire wr_rst_busy_i;
  wire xpm_fifo_base_inst_n_10;
  wire xpm_fifo_base_inst_n_11;
  wire xpm_fifo_base_inst_n_12;
  wire xpm_fifo_base_inst_n_13;
  wire xpm_fifo_base_inst_n_14;
  wire xpm_fifo_base_inst_n_15;
  wire xpm_fifo_base_inst_n_16;
  wire xpm_fifo_base_inst_n_19;
  wire xpm_fifo_base_inst_n_2;
  wire xpm_fifo_base_inst_n_20;
  wire xpm_fifo_base_inst_n_3;
  wire xpm_fifo_base_inst_n_4;
  wire xpm_fifo_base_inst_n_49;
  wire xpm_fifo_base_inst_n_5;
  wire xpm_fifo_base_inst_n_6;
  wire xpm_fifo_base_inst_n_66;
  wire xpm_fifo_base_inst_n_67;
  wire xpm_fifo_base_inst_n_68;
  wire xpm_fifo_base_inst_n_69;
  wire xpm_fifo_base_inst_n_7;
  wire xpm_fifo_base_inst_n_8;
  wire xpm_fifo_base_inst_n_9;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(dout[25]),
        .I1(dout[26]),
        .O(\FSM_sequential_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\FSM_sequential_state[2]_i_8_n_0 ),
        .I1(fifo_level_rd[10]),
        .I2(fifo_level_rd[11]),
        .I3(fifo_level_rd[13]),
        .I4(fifo_level_rd[12]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(fifo_level_rd[9]),
        .I1(fifo_level_rd[8]),
        .I2(fifo_level_rd[5]),
        .I3(fifo_level_rd[6]),
        .I4(fifo_level_rd[7]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(out),
        .I1(dout[26]),
        .I2(dout[25]),
        .O(\FSM_sequential_state_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_eol_re_dly_i_1
       (.I0(dout[24]),
        .I1(fifo_eol_dly),
        .O(fifo_eol_re));
  LUT3 #(
    .INIT(8'h20)) 
    \fifo_pix_cnt[0]_i_2 
       (.I0(vid_io_out_ce),
        .I1(fifo_empty),
        .I2(fifo_rd_en),
        .O(fifo_pix_cnt));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axis_video_tready_INST_0
       (.I0(wr_rst_busy_i),
        .I1(aresetn),
        .I2(full_i),
        .O(s_axis_video_tready));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "8192" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "221184" *) 
  (* FIFO_WRITE_DEPTH = "8192" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "8187" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "8187" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "14" *) 
  (* RD_DC_WIDTH_EXT = "14" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "13" *) 
  (* READ_DATA_WIDTH = "27" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "27" *) 
  (* WR_DATA_COUNT_WIDTH = "14" *) 
  (* WR_DC_WIDTH_EXT = "14" *) 
  (* WR_PNTR_WIDTH = "13" *) 
  (* WR_RD_RATIO = "0" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(xpm_fifo_base_inst_n_66),
        .almost_full(xpm_fifo_base_inst_n_19),
        .data_valid(xpm_fifo_base_inst_n_67),
        .dbiterr(xpm_fifo_base_inst_n_69),
        .din(din),
        .dout(dout),
        .empty(fifo_empty),
        .full(full_i),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(xpm_fifo_base_inst_n_49),
        .prog_full(xpm_fifo_base_inst_n_2),
        .rd_clk(aclk),
        .rd_data_count(fifo_level_rd),
        .rd_en(E),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(vid_reset),
        .sbiterr(xpm_fifo_base_inst_n_68),
        .sleep(1'b0),
        .underflow(underflow),
        .wr_ack(xpm_fifo_base_inst_n_20),
        .wr_clk(aclk),
        .wr_data_count({xpm_fifo_base_inst_n_3,xpm_fifo_base_inst_n_4,xpm_fifo_base_inst_n_5,xpm_fifo_base_inst_n_6,xpm_fifo_base_inst_n_7,xpm_fifo_base_inst_n_8,xpm_fifo_base_inst_n_9,xpm_fifo_base_inst_n_10,xpm_fifo_base_inst_n_11,xpm_fifo_base_inst_n_12,xpm_fifo_base_inst_n_13,xpm_fifo_base_inst_n_14,xpm_fifo_base_inst_n_15,xpm_fifo_base_inst_n_16}),
        .wr_en(wr_en_i),
        .wr_rst_busy(wr_rst_busy_i));
  LUT1 #(
    .INIT(2'h1)) 
    xpm_fifo_base_inst_i_1
       (.I0(aresetn),
        .O(vid_reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    xpm_fifo_base_inst_i_2
       (.I0(s_axis_video_tvalid),
        .I1(wr_rst_busy_i),
        .I2(aresetn),
        .I3(full_i),
        .I4(aclken),
        .O(wr_en_i));
endmodule

(* ADDR_WIDTH_A = "13" *) (* ADDR_WIDTH_B = "13" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "27" *) (* BYTE_WRITE_WIDTH_B = "27" *) (* CLOCKING_MODE = "0" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "0" *) 
(* MEMORY_SIZE = "221184" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "8192" *) (* P_MEMORY_OPT = "yes" *) 
(* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "27" *) (* P_MIN_WIDTH_DATA_A = "27" *) 
(* P_MIN_WIDTH_DATA_B = "27" *) (* P_MIN_WIDTH_DATA_ECC = "27" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) 
(* P_MIN_WIDTH_DATA_SHFT = "27" *) (* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
(* P_WIDTH_ADDR_READ_A = "13" *) (* P_WIDTH_ADDR_READ_B = "13" *) (* P_WIDTH_ADDR_WRITE_A = "13" *) 
(* P_WIDTH_ADDR_WRITE_B = "13" *) (* P_WIDTH_COL_WRITE_A = "27" *) (* P_WIDTH_COL_WRITE_B = "27" *) 
(* READ_DATA_WIDTH_A = "27" *) (* READ_DATA_WIDTH_B = "27" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "27" *) (* WRITE_DATA_WIDTH_B = "27" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [12:0]addra;
  input [26:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [26:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [26:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [26:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire [26:0]dina;
  wire [26:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED ;
  wire [31:4]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED ;
  wire [31:4]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED ;
  wire [31:4]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_3_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOADO_UNCONNECTED ;
  wire [31:4]\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_4_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOADO_UNCONNECTED ;
  wire [31:4]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_5_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_5_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_5_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_5_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_5_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DOADO_UNCONNECTED ;
  wire [31:4]\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_6_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_6_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_6_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_6_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_6_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DOADO_UNCONNECTED ;
  wire [31:3]\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "3" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED [31:4],doutb[3:0]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "4" *) 
  (* \MEM.PORTA.DATA_MSB  = "7" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_LSB  = "4" *) 
  (* \MEM.PORTB.DATA_MSB  = "7" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "4" *) 
  (* bram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED [31:4],doutb[7:4]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "8" *) 
  (* \MEM.PORTA.DATA_MSB  = "11" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_LSB  = "8" *) 
  (* \MEM.PORTB.DATA_MSB  = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "8" *) 
  (* bram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \gen_wr_a.gen_word_narrow.mem_reg_2 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[11:8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED [31:4],doutb[11:8]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "12" *) 
  (* \MEM.PORTA.DATA_MSB  = "15" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_LSB  = "12" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "12" *) 
  (* bram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \gen_wr_a.gen_word_narrow.mem_reg_3 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOBDO_UNCONNECTED [31:4],doutb[15:12]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_3_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "16" *) 
  (* \MEM.PORTA.DATA_MSB  = "19" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_LSB  = "16" *) 
  (* \MEM.PORTB.DATA_MSB  = "19" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "16" *) 
  (* bram_slice_end = "19" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \gen_wr_a.gen_word_narrow.mem_reg_4 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[19:16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOBDO_UNCONNECTED [31:4],doutb[19:16]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_4_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "20" *) 
  (* \MEM.PORTA.DATA_MSB  = "23" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_LSB  = "20" *) 
  (* \MEM.PORTB.DATA_MSB  = "23" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "20" *) 
  (* bram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \gen_wr_a.gen_word_narrow.mem_reg_5 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[23:20]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DOBDO_UNCONNECTED [31:4],doutb[23:20]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_5_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d3" *) 
  (* \MEM.PORTA.DATA_LSB  = "24" *) 
  (* \MEM.PORTA.DATA_MSB  = "26" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d3" *) 
  (* \MEM.PORTB.DATA_LSB  = "24" *) 
  (* \MEM.PORTB.DATA_MSB  = "26" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "221184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "8191" *) 
  (* bram_slice_begin = "24" *) 
  (* bram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \gen_wr_a.gen_word_narrow.mem_reg_6 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[26:24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DOBDO_UNCONNECTED [31:3],doutb[26:24]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_6_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
