// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Mar 18 12:14:29 2019
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/aptay/Documents/GitHub/Hackster/s7_tdm114/s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_zed_ali3_controller_0_0/design_1_zed_ali3_controller_0_0_sim_netlist.v
// Design      : design_1_zed_ali3_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_zed_ali3_controller_0_0,zed_ali3_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "zed_ali3_controller,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_zed_ali3_controller_0_0
   (reset_in,
    clk_in,
    pll_locked,
    reset_out,
    clk_out,
    video_de,
    video_vsync,
    video_hsync,
    video_data,
    ALI_RST_N,
    ALI_CLK_N,
    ALI_CLK_P,
    ALI_DATA_N,
    ALI_DATA_P);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_in RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW" *) input reset_in;
  input clk_in;
  output pll_locked;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_out RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW" *) output reset_out;
  output clk_out;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_IN ACTIVE_VIDEO" *) input video_de;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_IN VSYNC" *) input video_vsync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_IN HSYNC" *) input video_hsync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 VID_IO_IN DATA" *) input [31:0]video_data;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ALI_RST_N RST, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_RST_N" *) (* x_interface_parameter = "XIL_INTERFACENAME ALI_RST_N, POLARITY ACTIVE_LOW" *) output ALI_RST_N;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ALI_CLK_N CLK, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_CLK_N" *) (* x_interface_parameter = "XIL_INTERFACENAME ALI_CLK_N, ASSOCIATED_RESET ALI_RST_N, FREQ_HZ 100000000, PHASE 0.000" *) output ALI_CLK_N;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ALI_CLK_P CLK, avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_CLK_P" *) (* x_interface_parameter = "XIL_INTERFACENAME ALI_CLK_P, FREQ_HZ 100000000, PHASE 0.000" *) output ALI_CLK_P;
  (* x_interface_info = "avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_DATA_N" *) output [3:0]ALI_DATA_N;
  (* x_interface_info = "avnet.com:interface:avnet_ali3:1.0 ALI3 ALI_DATA_P" *) output [3:0]ALI_DATA_P;

  wire \<const1> ;
  (* SLEW = "SLOW" *) wire ALI_CLK_N;
  (* SLEW = "SLOW" *) wire ALI_CLK_P;
  (* SLEW = "SLOW" *) wire [3:0]ALI_DATA_N;
  (* SLEW = "SLOW" *) wire [3:0]ALI_DATA_P;
  wire clk_in;
  wire clk_out;
  wire pll_locked;
  wire reset_in;
  wire reset_out;
  wire [31:0]video_data;
  wire video_de;
  wire video_hsync;
  wire video_vsync;

  assign ALI_RST_N = \<const1> ;
  design_1_zed_ali3_controller_0_0_zed_ali3_controller U0
       (.ALI_CLK_N(ALI_CLK_N),
        .ALI_CLK_P(ALI_CLK_P),
        .ALI_DATA_N(ALI_DATA_N),
        .ALI_DATA_P(ALI_DATA_P),
        .clk_in(clk_in),
        .clk_out(clk_out),
        .pll_locked(pll_locked),
        .reset_in(reset_in),
        .reset_out(reset_out),
        .video_data(video_data[23:0]),
        .video_de(video_de),
        .video_hsync(video_hsync),
        .video_vsync(video_vsync));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "clock_generator_pll_7_to_1_diff_sdr" *) 
module design_1_zed_ali3_controller_0_0_clock_generator_pll_7_to_1_diff_sdr
   (async,
    pll_locked,
    txclk_div,
    txclk,
    clk_in,
    reset_in);
  output async;
  output pll_locked;
  output txclk_div;
  output txclk;
  input clk_in;
  input reset_in;

  wire CLKFBIN;
  wire async;
  wire clk_in;
  wire mmcmout_x1;
  wire mmcmout_x7;
  wire pll_locked;
  wire reset_in;
  wire txclk;
  wire txclk_div;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT0B_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT1_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT1B_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT2B_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT3_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT3B_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT4_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT5_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_CLKOUT6_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_DRDY_UNCONNECTED ;
  wire \NLW_loop8.tx_mmcm_adv_inst_PSDONE_UNCONNECTED ;
  wire [15:0]\NLW_loop8.tx_mmcm_adv_inst_DO_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  BUFG \loop8.loop6.bufg_mmcm_x1 
       (.I(mmcmout_x1),
        .O(txclk_div));
  (* box_type = "PRIMITIVE" *) 
  BUFIO \loop8.loop9a.bufio_mmcm_xn 
       (.I(mmcmout_x7),
        .O(txclk));
  (* XILINX_LEGACY_PRIM = "MMCM_ADV" *) 
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(21.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(30.000000),
    .CLKIN2_PERIOD(30.000000),
    .CLKOUT0_DIVIDE_F(3.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(21),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(21),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(8),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(8),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(8),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_PSINCDEC_INVERTED(1'b0),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.000000),
    .STARTUP_WAIT("FALSE")) 
    \loop8.tx_mmcm_adv_inst 
       (.CLKFBIN(CLKFBIN),
        .CLKFBOUT(CLKFBIN),
        .CLKFBOUTB(\NLW_loop8.tx_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED ),
        .CLKFBSTOPPED(\NLW_loop8.tx_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED ),
        .CLKIN1(clk_in),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(\NLW_loop8.tx_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED ),
        .CLKOUT0(mmcmout_x7),
        .CLKOUT0B(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT0B_UNCONNECTED ),
        .CLKOUT1(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT1_UNCONNECTED ),
        .CLKOUT1B(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT1B_UNCONNECTED ),
        .CLKOUT2(mmcmout_x1),
        .CLKOUT2B(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT2B_UNCONNECTED ),
        .CLKOUT3(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT3_UNCONNECTED ),
        .CLKOUT3B(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT3B_UNCONNECTED ),
        .CLKOUT4(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT4_UNCONNECTED ),
        .CLKOUT5(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT5_UNCONNECTED ),
        .CLKOUT6(\NLW_loop8.tx_mmcm_adv_inst_CLKOUT6_UNCONNECTED ),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(\NLW_loop8.tx_mmcm_adv_inst_DO_UNCONNECTED [15:0]),
        .DRDY(\NLW_loop8.tx_mmcm_adv_inst_DRDY_UNCONNECTED ),
        .DWE(1'b0),
        .LOCKED(pll_locked),
        .PSCLK(1'b0),
        .PSDONE(\NLW_loop8.tx_mmcm_adv_inst_PSDONE_UNCONNECTED ),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_in));
  LUT1 #(
    .INIT(2'h1)) 
    \use_fdp.fda_i_1 
       (.I0(pll_locked),
        .O(async));
endmodule

(* ORIG_REF_NAME = "serdes_7_to_1_diff_sdr" *) 
module design_1_zed_ali3_controller_0_0_serdes_7_to_1_diff_sdr
   (ALI_CLK_P,
    ALI_CLK_N,
    ALI_DATA_P,
    ALI_DATA_N,
    txclk,
    txclk_div,
    Q,
    \red_r_reg[7] ,
    \blue_r_reg[7] ,
    de,
    vsync,
    hsync,
    reset_out);
  output ALI_CLK_P;
  output ALI_CLK_N;
  output [3:0]ALI_DATA_P;
  output [3:0]ALI_DATA_N;
  input txclk;
  input txclk_div;
  input [7:0]Q;
  input [7:0]\red_r_reg[7] ;
  input [7:0]\blue_r_reg[7] ;
  input de;
  input vsync;
  input hsync;
  input reset_out;

  wire ALI_CLK_N;
  wire ALI_CLK_P;
  wire [3:0]ALI_DATA_N;
  wire [3:0]ALI_DATA_P;
  wire I;
  wire [7:0]Q;
  wire RST;
  wire [7:0]\blue_r_reg[7] ;
  wire de;
  wire hsync;
  wire [7:0]\red_r_reg[7] ;
  wire reset_out;
  wire tx_data_out_0;
  wire tx_data_out_1;
  wire tx_data_out_2;
  wire tx_data_out_3;
  wire txclk;
  wire txclk_div;
  wire vsync;
  wire \NLW_loop0[0].oserdes_m_OFB_UNCONNECTED ;
  wire \NLW_loop0[0].oserdes_m_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_loop0[0].oserdes_m_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_loop0[0].oserdes_m_TBYTEOUT_UNCONNECTED ;
  wire \NLW_loop0[0].oserdes_m_TFB_UNCONNECTED ;
  wire \NLW_loop0[0].oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_loop0[1].oserdes_m_OFB_UNCONNECTED ;
  wire \NLW_loop0[1].oserdes_m_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_loop0[1].oserdes_m_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_loop0[1].oserdes_m_TBYTEOUT_UNCONNECTED ;
  wire \NLW_loop0[1].oserdes_m_TFB_UNCONNECTED ;
  wire \NLW_loop0[1].oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_loop0[2].oserdes_m_OFB_UNCONNECTED ;
  wire \NLW_loop0[2].oserdes_m_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_loop0[2].oserdes_m_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_loop0[2].oserdes_m_TBYTEOUT_UNCONNECTED ;
  wire \NLW_loop0[2].oserdes_m_TFB_UNCONNECTED ;
  wire \NLW_loop0[2].oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_loop0[3].oserdes_m_OFB_UNCONNECTED ;
  wire \NLW_loop0[3].oserdes_m_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_loop0[3].oserdes_m_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_loop0[3].oserdes_m_TBYTEOUT_UNCONNECTED ;
  wire \NLW_loop0[3].oserdes_m_TFB_UNCONNECTED ;
  wire \NLW_loop0[3].oserdes_m_TQ_UNCONNECTED ;
  wire NLW_oserdes_cm_OFB_UNCONNECTED;
  wire NLW_oserdes_cm_SHIFTOUT1_UNCONNECTED;
  wire NLW_oserdes_cm_SHIFTOUT2_UNCONNECTED;
  wire NLW_oserdes_cm_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_cm_TFB_UNCONNECTED;
  wire NLW_oserdes_cm_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    io_clk_out
       (.I(I),
        .O(ALI_CLK_P),
        .OB(ALI_CLK_N));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \loop0[0].io_data_out 
       (.I(tx_data_out_0),
        .O(ALI_DATA_P[0]),
        .OB(ALI_DATA_N[0]));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("SDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(7),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \loop0[0].oserdes_m 
       (.CLK(txclk),
        .CLKDIV(txclk_div),
        .D1(Q[0]),
        .D2(\red_r_reg[7] [5]),
        .D3(\red_r_reg[7] [4]),
        .D4(\red_r_reg[7] [3]),
        .D5(\red_r_reg[7] [2]),
        .D6(\red_r_reg[7] [1]),
        .D7(\red_r_reg[7] [0]),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_loop0[0].oserdes_m_OFB_UNCONNECTED ),
        .OQ(tx_data_out_0),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_loop0[0].oserdes_m_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_loop0[0].oserdes_m_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_loop0[0].oserdes_m_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b1),
        .TFB(\NLW_loop0[0].oserdes_m_TFB_UNCONNECTED ),
        .TQ(\NLW_loop0[0].oserdes_m_TQ_UNCONNECTED ));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \loop0[1].io_data_out 
       (.I(tx_data_out_1),
        .O(ALI_DATA_P[1]),
        .OB(ALI_DATA_N[1]));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("SDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(7),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \loop0[1].oserdes_m 
       (.CLK(txclk),
        .CLKDIV(txclk_div),
        .D1(\blue_r_reg[7] [1]),
        .D2(\blue_r_reg[7] [0]),
        .D3(Q[5]),
        .D4(Q[4]),
        .D5(Q[3]),
        .D6(Q[2]),
        .D7(Q[1]),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_loop0[1].oserdes_m_OFB_UNCONNECTED ),
        .OQ(tx_data_out_1),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_loop0[1].oserdes_m_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_loop0[1].oserdes_m_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_loop0[1].oserdes_m_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b1),
        .TFB(\NLW_loop0[1].oserdes_m_TFB_UNCONNECTED ),
        .TQ(\NLW_loop0[1].oserdes_m_TQ_UNCONNECTED ));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \loop0[2].io_data_out 
       (.I(tx_data_out_2),
        .O(ALI_DATA_P[2]),
        .OB(ALI_DATA_N[2]));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("SDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(7),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \loop0[2].oserdes_m 
       (.CLK(txclk),
        .CLKDIV(txclk_div),
        .D1(de),
        .D2(vsync),
        .D3(hsync),
        .D4(\blue_r_reg[7] [5]),
        .D5(\blue_r_reg[7] [4]),
        .D6(\blue_r_reg[7] [3]),
        .D7(\blue_r_reg[7] [2]),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_loop0[2].oserdes_m_OFB_UNCONNECTED ),
        .OQ(tx_data_out_2),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_loop0[2].oserdes_m_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_loop0[2].oserdes_m_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_loop0[2].oserdes_m_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b1),
        .TFB(\NLW_loop0[2].oserdes_m_TFB_UNCONNECTED ),
        .TQ(\NLW_loop0[2].oserdes_m_TQ_UNCONNECTED ));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \loop0[3].io_data_out 
       (.I(tx_data_out_3),
        .O(ALI_DATA_P[3]),
        .OB(ALI_DATA_N[3]));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("SDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(7),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \loop0[3].oserdes_m 
       (.CLK(txclk),
        .CLKDIV(txclk_div),
        .D1(1'b0),
        .D2(\blue_r_reg[7] [7]),
        .D3(\blue_r_reg[7] [6]),
        .D4(Q[7]),
        .D5(Q[6]),
        .D6(\red_r_reg[7] [7]),
        .D7(\red_r_reg[7] [6]),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_loop0[3].oserdes_m_OFB_UNCONNECTED ),
        .OQ(tx_data_out_3),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_loop0[3].oserdes_m_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_loop0[3].oserdes_m_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_loop0[3].oserdes_m_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b1),
        .TFB(\NLW_loop0[3].oserdes_m_TFB_UNCONNECTED ),
        .TQ(\NLW_loop0[3].oserdes_m_TQ_UNCONNECTED ));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("SDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(7),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_cm
       (.CLK(txclk),
        .CLKDIV(txclk_div),
        .D1(1'b1),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_oserdes_cm_OFB_UNCONNECTED),
        .OQ(I),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_oserdes_cm_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_oserdes_cm_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_cm_TBYTEOUT_UNCONNECTED),
        .TCE(1'b1),
        .TFB(NLW_oserdes_cm_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_cm_TQ_UNCONNECTED));
  FDPE reset_int_reg
       (.C(txclk_div),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_out),
        .Q(RST));
endmodule

(* ORIG_REF_NAME = "synchro" *) 
module design_1_zed_ali3_controller_0_0_synchro
   (reset_out,
    async,
    txclk_div);
  output reset_out;
  input async;
  input txclk_div;

  wire async;
  wire reset_out;
  wire temp;
  wire txclk_div;

  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    \use_fdp.fda 
       (.C(txclk_div),
        .CE(1'b1),
        .D(async),
        .PRE(1'b0),
        .Q(temp));
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    \use_fdp.fdb 
       (.C(txclk_div),
        .CE(1'b1),
        .D(temp),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "zed_ali3_controller" *) 
module design_1_zed_ali3_controller_0_0_zed_ali3_controller
   (pll_locked,
    reset_out,
    ALI_CLK_P,
    ALI_CLK_N,
    ALI_DATA_P,
    ALI_DATA_N,
    clk_out,
    clk_in,
    reset_in,
    video_de,
    video_vsync,
    video_hsync,
    video_data);
  output pll_locked;
  output reset_out;
  output ALI_CLK_P;
  output ALI_CLK_N;
  output [3:0]ALI_DATA_P;
  output [3:0]ALI_DATA_N;
  output clk_out;
  input clk_in;
  input reset_in;
  input video_de;
  input video_vsync;
  input video_hsync;
  input [23:0]video_data;

  wire ALI_CLK_N;
  wire ALI_CLK_P;
  wire [3:0]ALI_DATA_N;
  wire [3:0]ALI_DATA_P;
  wire [7:0]blue;
  wire clk_in;
  wire clk_out;
  wire de;
  wire [7:0]green;
  wire hsync;
  wire pll_locked;
  wire [7:0]red;
  wire reset_in;
  wire reset_out;
  wire [23:0]video_data;
  wire video_de;
  wire video_hsync;
  wire video_vsync;
  wire vsync;

  FDRE \blue_r_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[0]),
        .Q(blue[0]),
        .R(1'b0));
  FDRE \blue_r_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[1]),
        .Q(blue[1]),
        .R(1'b0));
  FDRE \blue_r_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[2]),
        .Q(blue[2]),
        .R(1'b0));
  FDRE \blue_r_reg[3] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[3]),
        .Q(blue[3]),
        .R(1'b0));
  FDRE \blue_r_reg[4] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[4]),
        .Q(blue[4]),
        .R(1'b0));
  FDRE \blue_r_reg[5] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[5]),
        .Q(blue[5]),
        .R(1'b0));
  FDRE \blue_r_reg[6] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[6]),
        .Q(blue[6]),
        .R(1'b0));
  FDRE \blue_r_reg[7] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[7]),
        .Q(blue[7]),
        .R(1'b0));
  FDRE de_r_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(video_de),
        .Q(de),
        .R(1'b0));
  FDRE \green_r_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[8]),
        .Q(green[0]),
        .R(1'b0));
  FDRE \green_r_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[9]),
        .Q(green[1]),
        .R(1'b0));
  FDRE \green_r_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[10]),
        .Q(green[2]),
        .R(1'b0));
  FDRE \green_r_reg[3] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[11]),
        .Q(green[3]),
        .R(1'b0));
  FDRE \green_r_reg[4] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[12]),
        .Q(green[4]),
        .R(1'b0));
  FDRE \green_r_reg[5] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[13]),
        .Q(green[5]),
        .R(1'b0));
  FDRE \green_r_reg[6] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[14]),
        .Q(green[6]),
        .R(1'b0));
  FDRE \green_r_reg[7] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[15]),
        .Q(green[7]),
        .R(1'b0));
  FDRE hsync_r_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(video_hsync),
        .Q(hsync),
        .R(1'b0));
  FDRE \red_r_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[16]),
        .Q(red[0]),
        .R(1'b0));
  FDRE \red_r_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[17]),
        .Q(red[1]),
        .R(1'b0));
  FDRE \red_r_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[18]),
        .Q(red[2]),
        .R(1'b0));
  FDRE \red_r_reg[3] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[19]),
        .Q(red[3]),
        .R(1'b0));
  FDRE \red_r_reg[4] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[20]),
        .Q(red[4]),
        .R(1'b0));
  FDRE \red_r_reg[5] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[21]),
        .Q(red[5]),
        .R(1'b0));
  FDRE \red_r_reg[6] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[22]),
        .Q(red[6]),
        .R(1'b0));
  FDRE \red_r_reg[7] 
       (.C(clk_out),
        .CE(1'b1),
        .D(video_data[23]),
        .Q(red[7]),
        .R(1'b0));
  FDRE vsync_r_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(video_vsync),
        .Q(vsync),
        .R(1'b0));
  design_1_zed_ali3_controller_0_0_zed_ali3_controller_core zed_ali3_controller_core_l
       (.ALI_CLK_N(ALI_CLK_N),
        .ALI_CLK_P(ALI_CLK_P),
        .ALI_DATA_N(ALI_DATA_N),
        .ALI_DATA_P(ALI_DATA_P),
        .Q(green),
        .\blue_r_reg[7] (blue),
        .clk_in(clk_in),
        .clk_out(clk_out),
        .de(de),
        .hsync(hsync),
        .pll_locked(pll_locked),
        .\red_r_reg[7] (red),
        .reset_in(reset_in),
        .reset_out(reset_out),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "zed_ali3_controller_core" *) 
module design_1_zed_ali3_controller_0_0_zed_ali3_controller_core
   (ALI_CLK_P,
    ALI_CLK_N,
    ALI_DATA_P,
    ALI_DATA_N,
    clk_out,
    reset_out,
    pll_locked,
    Q,
    \red_r_reg[7] ,
    \blue_r_reg[7] ,
    de,
    vsync,
    hsync,
    clk_in,
    reset_in);
  output ALI_CLK_P;
  output ALI_CLK_N;
  output [3:0]ALI_DATA_P;
  output [3:0]ALI_DATA_N;
  output clk_out;
  output reset_out;
  output pll_locked;
  input [7:0]Q;
  input [7:0]\red_r_reg[7] ;
  input [7:0]\blue_r_reg[7] ;
  input de;
  input vsync;
  input hsync;
  input clk_in;
  input reset_in;

  wire ALI_CLK_N;
  wire ALI_CLK_P;
  wire [3:0]ALI_DATA_N;
  wire [3:0]ALI_DATA_P;
  wire [7:0]Q;
  wire [7:0]\blue_r_reg[7] ;
  wire clk_gen_txclk;
  wire clk_gen_txclk_div;
  wire clk_in;
  wire clk_out;
  wire clock_generator_serdes_n_0;
  wire de;
  wire hsync;
  wire pll_locked;
  wire [7:0]\red_r_reg[7] ;
  wire reset_in;
  wire reset_out;
  wire vsync;
  wire NLW_clk_inbufg_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clk_inbufg
       (.I(clk_in),
        .O(NLW_clk_inbufg_O_UNCONNECTED));
  design_1_zed_ali3_controller_0_0_clock_generator_pll_7_to_1_diff_sdr clock_generator_serdes
       (.async(clock_generator_serdes_n_0),
        .clk_in(clk_in),
        .pll_locked(pll_locked),
        .reset_in(reset_in),
        .txclk(clk_gen_txclk),
        .txclk_div(clk_gen_txclk_div));
  (* box_type = "PRIMITIVE" *) 
  BUFG pclkbufg
       (.I(clk_gen_txclk_div),
        .O(clk_out));
  design_1_zed_ali3_controller_0_0_synchro synchro_reset
       (.async(clock_generator_serdes_n_0),
        .reset_out(reset_out),
        .txclk_div(clk_gen_txclk_div));
  design_1_zed_ali3_controller_0_0_serdes_7_to_1_diff_sdr videoout
       (.ALI_CLK_N(ALI_CLK_N),
        .ALI_CLK_P(ALI_CLK_P),
        .ALI_DATA_N(ALI_DATA_N),
        .ALI_DATA_P(ALI_DATA_P),
        .Q(Q),
        .\blue_r_reg[7] (\blue_r_reg[7] ),
        .de(de),
        .hsync(hsync),
        .\red_r_reg[7] (\red_r_reg[7] ),
        .reset_out(reset_out),
        .txclk(clk_gen_txclk),
        .txclk_div(clk_gen_txclk_div),
        .vsync(vsync));
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
