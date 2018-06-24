// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4_AR70530_AR70530 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Jun  2 17:56:06 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/hdl_projects/block_compile/block_compile.srcs/sources_1/bd/design_1/ip/design_1_rgb2dvi_0_1/design_1_rgb2dvi_0_1_sim_netlist.v
// Design      : design_1_rgb2dvi_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rgb2dvi_0_1,rgb2dvi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "rgb2dvi,Vivado 2017.4_AR70530_AR70530" *) 
(* NotValidForBitStream *)
module design_1_rgb2dvi_0_1
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    aRst,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    SerialClk);
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS CLK_P, xilinx.com:signal:clock:1.0 TMDS_Clk_p CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME TMDS, BOARD.ASSOCIATED_PARAM TMDS_BOARD_INTERFACE, XIL_INTERFACENAME TMDS_Clk_p, FREQ_HZ 100000000, PHASE 0.000" *) output TMDS_Clk_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS CLK_N, xilinx.com:signal:clock:1.0 TMDS_Clk_n CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME TMDS_Clk_n, ASSOCIATED_RESET aRst_n, FREQ_HZ 100000000, PHASE 0.000" *) output TMDS_Clk_n;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_P" *) output [2:0]TMDS_Data_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_N" *) output [2:0]TMDS_Data_n;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AsyncRst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AsyncRst, POLARITY ACTIVE_HIGH" *) input aRst;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB DATA" *) input [23:0]vid_pData;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO" *) input vid_pVDE;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB HSYNC" *) input vid_pHSync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB VSYNC" *) input vid_pVSync;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 PixelClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME PixelClk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_axi_dynclk_0_0_PXL_CLK_O" *) input PixelClk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 SerialClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME SerialClk, ASSOCIATED_RESET aRst:aRst_n:pRst:pRst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_axi_dynclk_0_0_PXL_CLK_5X_O" *) input SerialClk;

  wire PixelClk;
  wire SerialClk;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire TMDS_Clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire TMDS_Clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]TMDS_Data_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]TMDS_Data_p;
  wire aRst;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  (* kClkPrimitive = "PLL" *) 
  (* kClkRange = "2" *) 
  (* kClkSwap = "FALSE" *) 
  (* kD0Swap = "FALSE" *) 
  (* kD1Swap = "FALSE" *) 
  (* kD2Swap = "FALSE" *) 
  (* kGenerateSerialClk = "FALSE" *) 
  (* kRstActiveHigh = "TRUE" *) 
  design_1_rgb2dvi_0_1_rgb2dvi U0
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .aRst(aRst),
        .aRst_n(1'b1),
        .vid_pData(vid_pData),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module design_1_rgb2dvi_0_1_OutputSERDES
   (TMDS_Clk_p,
    TMDS_Clk_n,
    SerialClk,
    PixelClk,
    aRst);
  output TMDS_Clk_p;
  output TMDS_Clk_n;
  input SerialClk;
  input PixelClk;
  input aRst;

  wire I;
  wire PixelClk;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire SerialClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire aRst;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS OutputBuffer
       (.I(I),
        .O(TMDS_Clk_p),
        .OB(TMDS_Clk_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
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
    SerializerMaster
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(I),
        .RST(aRst),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
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
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(aRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module design_1_rgb2dvi_0_1_OutputSERDES_0
   (TMDS_Data_p,
    TMDS_Data_n,
    SerialClk,
    PixelClk,
    pDataOut,
    aRst);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input SerialClk;
  input PixelClk;
  input [9:0]pDataOut;
  input aRst;

  wire I;
  wire PixelClk;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire SerialClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire aRst;
  wire [9:0]pDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS OutputBuffer
       (.I(I),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
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
    SerializerMaster
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(pDataOut[0]),
        .D2(pDataOut[1]),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(pDataOut[4]),
        .D6(pDataOut[5]),
        .D7(pDataOut[6]),
        .D8(pDataOut[7]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(I),
        .RST(aRst),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
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
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[8]),
        .D4(pDataOut[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(aRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module design_1_rgb2dvi_0_1_OutputSERDES_2
   (TMDS_Data_p,
    TMDS_Data_n,
    SerialClk,
    PixelClk,
    pDataOut,
    out);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input SerialClk;
  input PixelClk;
  input [9:0]pDataOut;
  input [0:0]out;

  wire I;
  wire PixelClk;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire SerialClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire [0:0]out;
  wire [9:0]pDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS OutputBuffer
       (.I(I),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
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
    SerializerMaster
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(pDataOut[0]),
        .D2(pDataOut[1]),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(pDataOut[4]),
        .D6(pDataOut[5]),
        .D7(pDataOut[6]),
        .D8(pDataOut[7]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(I),
        .RST(out),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
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
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[8]),
        .D4(pDataOut[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(out),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module design_1_rgb2dvi_0_1_OutputSERDES_4
   (TMDS_Data_p,
    TMDS_Data_n,
    SerialClk,
    PixelClk,
    pDataOut,
    out);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input SerialClk;
  input PixelClk;
  input [9:0]pDataOut;
  input [0:0]out;

  wire I;
  wire PixelClk;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire SerialClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire [0:0]out;
  wire [9:0]pDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS OutputBuffer
       (.I(I),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
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
    SerializerMaster
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(pDataOut[0]),
        .D2(pDataOut[1]),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(pDataOut[4]),
        .D6(pDataOut[5]),
        .D7(pDataOut[6]),
        .D8(pDataOut[7]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(I),
        .RST(out),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
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
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[8]),
        .D4(pDataOut[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(out),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module design_1_rgb2dvi_0_1_ResetBridge
   (out,
    aRst,
    PixelClk);
  output [0:0]out;
  input aRst;
  input PixelClk;

  wire PixelClk;
  (* RTL_KEEP = "true" *) wire aRst_int;
  wire [0:0]out;

  assign aRst_int = aRst;
  design_1_rgb2dvi_0_1_SyncAsync SyncAsyncx
       (.AS(aRst_int),
        .PixelClk(PixelClk),
        .out(out));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_rgb2dvi_0_1_SyncAsync
   (out,
    PixelClk,
    AS);
  output [0:0]out;
  input PixelClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire PixelClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "TMDS_Encoder" *) 
module design_1_rgb2dvi_0_1_TMDS_Encoder
   (SR,
    Q,
    vid_pHSync,
    PixelClk,
    vid_pVSync,
    vid_pVDE,
    vid_pData);
  output [0:0]SR;
  output [9:0]Q;
  input vid_pHSync;
  input PixelClk;
  input vid_pVSync;
  input vid_pVDE;
  input [7:0]vid_pData;

  wire \DataEncoders[2].DataEncoder/pVde_2 ;
  wire PixelClk;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire [4:1]cnt_t_3;
  wire \cnt_t_3[2]_i_2_n_0 ;
  wire \cnt_t_3[2]_i_3_n_0 ;
  wire \cnt_t_3[2]_i_4_n_0 ;
  wire \cnt_t_3[3]_i_2__0_n_0 ;
  wire \cnt_t_3[3]_i_3_n_0 ;
  wire \cnt_t_3[3]_i_4_n_0 ;
  wire \cnt_t_3[3]_i_5_n_0 ;
  wire \cnt_t_3[3]_i_6_n_0 ;
  wire \cnt_t_3[3]_i_7_n_0 ;
  wire \cnt_t_3[4]_i_10_n_0 ;
  wire \cnt_t_3[4]_i_3__1_n_0 ;
  wire \cnt_t_3[4]_i_4_n_0 ;
  wire \cnt_t_3[4]_i_5_n_0 ;
  wire \cnt_t_3[4]_i_6__0_n_0 ;
  wire \cnt_t_3[4]_i_7__1_n_0 ;
  wire \cnt_t_3[4]_i_8_n_0 ;
  wire \cnt_t_3[4]_i_9_n_0 ;
  wire [3:1]minusOp;
  wire [3:1]n0q_m_2;
  wire \n1d_1[0]_i_2_n_0 ;
  wire \n1d_1[1]_i_2_n_0 ;
  wire \n1d_1[2]_i_2_n_0 ;
  wire \n1d_1[3]_i_2_n_0 ;
  wire \n1d_1[3]_i_3_n_0 ;
  wire \n1d_1[3]_i_4_n_0 ;
  wire \n1d_1_reg_n_0_[0] ;
  wire \n1d_1_reg_n_0_[1] ;
  wire \n1d_1_reg_n_0_[2] ;
  wire \n1d_1_reg_n_0_[3] ;
  wire [3:0]n1q_m_1;
  wire \n1q_m_2[0]_i_2_n_0 ;
  wire \n1q_m_2[3]_i_2_n_0 ;
  wire \n1q_m_2[3]_i_3_n_0 ;
  wire \n1q_m_2[3]_i_4_n_0 ;
  wire \n1q_m_2[3]_i_5_n_0 ;
  wire \n1q_m_2_reg_n_0_[0] ;
  wire \n1q_m_2_reg_n_0_[1] ;
  wire \n1q_m_2_reg_n_0_[2] ;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire pC0_1;
  wire pC0_2;
  wire pC1_1;
  wire pC1_2;
  wire \pDataOutRaw[0]_i_1_n_0 ;
  wire \pDataOutRaw[1]_i_1_n_0 ;
  wire \pDataOutRaw[3]_i_1_n_0 ;
  wire \pDataOutRaw[5]_i_1_n_0 ;
  wire \pDataOutRaw[7]_i_1_n_0 ;
  wire \pDataOutRaw[9]_i_1__1_n_0 ;
  wire \pDataOutRaw[9]_i_3_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire \pDataOut_1_reg_n_0_[1] ;
  wire pVde_1;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in10_in;
  wire p_0_in10_in_0;
  wire p_0_in2_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire p_0_in6_in;
  wire p_0_in6_in_2;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_0_in8_in_1;
  wire p_0_in9_in;
  wire p_1_in12_in;
  wire q_m_11__5;
  wire \q_m_2[5]_i_2_n_0 ;
  wire \q_m_2[8]_i_1_n_0 ;
  wire \q_m_2_reg_n_0_[0] ;
  wire \q_m_2_reg_n_0_[1] ;
  wire \q_m_2_reg_n_0_[2] ;
  wire \q_m_2_reg_n_0_[3] ;
  wire \q_m_2_reg_n_0_[4] ;
  wire \q_m_2_reg_n_0_[5] ;
  wire \q_m_2_reg_n_0_[6] ;
  wire \q_m_2_reg_n_0_[7] ;
  wire [3:3]q_m_xor_1;
  wire [9:2]q_out_20_in;
  wire [3:0]sum_bits;
  wire [7:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \cnt_t_3[1]_i_1 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(n0q_m_2[1]),
        .I2(cnt_t_3[1]),
        .I3(p_0_in),
        .I4(\cnt_t_3[3]_i_4_n_0 ),
        .I5(\cnt_t_3[2]_i_4_n_0 ),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'hA6A6656A56A66A6A)) 
    \cnt_t_3[2]_i_1 
       (.I0(\cnt_t_3[2]_i_2_n_0 ),
        .I1(\cnt_t_3[2]_i_3_n_0 ),
        .I2(cnt_t_3[1]),
        .I3(\cnt_t_3[2]_i_4_n_0 ),
        .I4(p_0_in),
        .I5(\cnt_t_3[3]_i_4_n_0 ),
        .O(cnt_t_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96966996)) 
    \cnt_t_3[2]_i_2 
       (.I0(cnt_t_3[2]),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(n0q_m_2[2]),
        .I3(\n1q_m_2_reg_n_0_[1] ),
        .I4(n0q_m_2[1]),
        .O(\cnt_t_3[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(n0q_m_2[1]),
        .O(\cnt_t_3[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFEFFFE)) 
    \cnt_t_3[2]_i_4 
       (.I0(cnt_t_3[3]),
        .I1(cnt_t_3[1]),
        .I2(cnt_t_3[2]),
        .I3(cnt_t_3[4]),
        .I4(\cnt_t_3[4]_i_6__0_n_0 ),
        .I5(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \cnt_t_3[3]_i_1 
       (.I0(\cnt_t_3[3]_i_2__0_n_0 ),
        .I1(\cnt_t_3[3]_i_3_n_0 ),
        .I2(\cnt_t_3[3]_i_4_n_0 ),
        .I3(\cnt_t_3[3]_i_5_n_0 ),
        .I4(\cnt_t_3[4]_i_3__1_n_0 ),
        .I5(\cnt_t_3[3]_i_6_n_0 ),
        .O(cnt_t_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[3]_i_2__0 
       (.I0(cnt_t_3[3]),
        .I1(\cnt_t_3[4]_i_8_n_0 ),
        .O(\cnt_t_3[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h000041D741D7FFFF)) 
    \cnt_t_3[3]_i_3 
       (.I0(cnt_t_3[1]),
        .I1(n0q_m_2[1]),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(cnt_t_3[2]),
        .I5(\cnt_t_3[3]_i_7_n_0 ),
        .O(\cnt_t_3[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00F0F0F1FF)) 
    \cnt_t_3[3]_i_4 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\cnt_t_3[4]_i_7__1_n_0 ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[3] ),
        .I5(cnt_t_3[4]),
        .O(\cnt_t_3[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB2B2BBB22222B2)) 
    \cnt_t_3[3]_i_5 
       (.I0(cnt_t_3[2]),
        .I1(\cnt_t_3[3]_i_7_n_0 ),
        .I2(cnt_t_3[1]),
        .I3(n0q_m_2[1]),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(\cnt_t_3[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC7DF10F710F7C7DF)) 
    \cnt_t_3[3]_i_6 
       (.I0(cnt_t_3[1]),
        .I1(n0q_m_2[1]),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(cnt_t_3[2]),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(n0q_m_2[2]),
        .O(\cnt_t_3[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \cnt_t_3[3]_i_7 
       (.I0(n0q_m_2[1]),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(n0q_m_2[2]),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_t_3[4]_i_1 
       (.I0(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8AEF)) 
    \cnt_t_3[4]_i_10 
       (.I0(n0q_m_2[2]),
        .I1(n0q_m_2[1]),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \cnt_t_3[4]_i_3__1 
       (.I0(p_0_in),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\cnt_t_3[4]_i_6__0_n_0 ),
        .I3(cnt_t_3[4]),
        .I4(\cnt_t_3[4]_i_7__1_n_0 ),
        .O(\cnt_t_3[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h037744CFFC88BB30)) 
    \cnt_t_3[4]_i_4 
       (.I0(\cnt_t_3[3]_i_5_n_0 ),
        .I1(\cnt_t_3[3]_i_4_n_0 ),
        .I2(\cnt_t_3[3]_i_3_n_0 ),
        .I3(\cnt_t_3[4]_i_8_n_0 ),
        .I4(cnt_t_3[3]),
        .I5(\cnt_t_3[4]_i_9_n_0 ),
        .O(\cnt_t_3[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA96A95A96A56A96A)) 
    \cnt_t_3[4]_i_5 
       (.I0(cnt_t_3[4]),
        .I1(n0q_m_2[3]),
        .I2(\cnt_t_3[4]_i_10_n_0 ),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(cnt_t_3[3]),
        .I5(\cnt_t_3[3]_i_6_n_0 ),
        .O(\cnt_t_3[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_t_3[4]_i_6__0 
       (.I0(\n1q_m_2_reg_n_0_[3] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[4]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_t_3[4]_i_7__1 
       (.I0(cnt_t_3[3]),
        .I1(cnt_t_3[1]),
        .I2(cnt_t_3[2]),
        .O(\cnt_t_3[4]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h9599A9AA6A665655)) 
    \cnt_t_3[4]_i_8 
       (.I0(\n1q_m_2_reg_n_0_[3] ),
        .I1(n0q_m_2[2]),
        .I2(n0q_m_2[1]),
        .I3(\n1q_m_2_reg_n_0_[1] ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(n0q_m_2[3]),
        .O(\cnt_t_3[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h599A)) 
    \cnt_t_3[4]_i_9 
       (.I0(cnt_t_3[4]),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3[4]_i_10_n_0 ),
        .I3(n0q_m_2[3]),
        .O(\cnt_t_3[4]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(cnt_t_3[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[2]),
        .Q(cnt_t_3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(cnt_t_3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(cnt_t_3[4]),
        .R(SR));
  MUXF7 \cnt_t_3_reg[4]_i_2 
       (.I0(\cnt_t_3[4]_i_4_n_0 ),
        .I1(\cnt_t_3[4]_i_5_n_0 ),
        .O(cnt_t_2[4]),
        .S(\cnt_t_3[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h177EE881E881177E)) 
    \n0q_m_2[1]_i_1 
       (.I0(p_0_in7_in),
        .I1(p_0_in6_in),
        .I2(p_0_in5_in),
        .I3(\n1q_m_2[3]_i_2_n_0 ),
        .I4(\n1q_m_2[3]_i_4_n_0 ),
        .I5(\n1q_m_2[3]_i_3_n_0 ),
        .O(minusOp[1]));
  LUT6 #(
    .INIT(64'h0001177F177FFFFE)) 
    \n0q_m_2[2]_i_1 
       (.I0(\n1q_m_2[3]_i_2_n_0 ),
        .I1(p_0_in7_in),
        .I2(p_0_in5_in),
        .I3(p_0_in6_in),
        .I4(\n1q_m_2[3]_i_3_n_0 ),
        .I5(\n1q_m_2[3]_i_4_n_0 ),
        .O(minusOp[2]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \n0q_m_2[3]_i_1 
       (.I0(\n1q_m_2[3]_i_2_n_0 ),
        .I1(p_0_in7_in),
        .I2(p_0_in5_in),
        .I3(p_0_in6_in),
        .I4(\n1q_m_2[3]_i_3_n_0 ),
        .I5(\n1q_m_2[3]_i_4_n_0 ),
        .O(minusOp[3]));
  FDRE \n0q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(minusOp[1]),
        .Q(n0q_m_2[1]),
        .R(1'b0));
  FDRE \n0q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(minusOp[2]),
        .Q(n0q_m_2[2]),
        .R(1'b0));
  FDRE \n0q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(minusOp[3]),
        .Q(n0q_m_2[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d_1[0]_i_1 
       (.I0(vid_pData[7]),
        .I1(vid_pData[0]),
        .I2(\n1d_1[0]_i_2_n_0 ),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(vid_pData[4]),
        .O(sum_bits[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[0]_i_2 
       (.I0(vid_pData[1]),
        .I1(vid_pData[3]),
        .I2(vid_pData[2]),
        .O(\n1d_1[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[1]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[1]_i_2_n_0 ),
        .I2(\n1d_1[3]_i_3_n_0 ),
        .O(sum_bits[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d_1[1]_i_2 
       (.I0(vid_pData[4]),
        .I1(vid_pData[5]),
        .I2(vid_pData[6]),
        .I3(vid_pData[1]),
        .I4(vid_pData[2]),
        .I5(vid_pData[3]),
        .O(\n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d_1[2]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(\n1d_1[2]_i_2_n_0 ),
        .I3(vid_pData[3]),
        .I4(vid_pData[2]),
        .I5(vid_pData[1]),
        .O(sum_bits[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[2]_i_2 
       (.I0(vid_pData[6]),
        .I1(vid_pData[5]),
        .I2(vid_pData[4]),
        .O(\n1d_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d_1[3]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(vid_pData[4]),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(\n1d_1[3]_i_4_n_0 ),
        .O(sum_bits[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d_1[3]_i_2 
       (.I0(vid_pData[5]),
        .I1(vid_pData[6]),
        .I2(vid_pData[4]),
        .I3(vid_pData[7]),
        .I4(vid_pData[0]),
        .I5(\n1d_1[0]_i_2_n_0 ),
        .O(\n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d_1[3]_i_3 
       (.I0(vid_pData[0]),
        .I1(vid_pData[7]),
        .I2(vid_pData[2]),
        .I3(vid_pData[3]),
        .I4(vid_pData[1]),
        .O(\n1d_1[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[3]_i_4 
       (.I0(vid_pData[3]),
        .I1(vid_pData[2]),
        .I2(vid_pData[1]),
        .O(\n1d_1[3]_i_4_n_0 ));
  FDRE \n1d_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(sum_bits[0]),
        .Q(\n1d_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1d_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(sum_bits[1]),
        .Q(\n1d_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1d_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(sum_bits[2]),
        .Q(\n1d_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1d_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(sum_bits[3]),
        .Q(\n1d_1_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1q_m_2[0]_i_1 
       (.I0(p_1_in12_in),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\n1q_m_2[0]_i_2_n_0 ),
        .I3(p_0_in7_in),
        .I4(p_0_in6_in),
        .I5(p_0_in5_in),
        .O(n1q_m_1[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \n1q_m_2[0]_i_2 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in2_in),
        .O(\n1q_m_2[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \n1q_m_2[1]_i_1 
       (.I0(\n1q_m_2[3]_i_3_n_0 ),
        .I1(\n1q_m_2[3]_i_4_n_0 ),
        .I2(\n1q_m_2[3]_i_2_n_0 ),
        .I3(p_0_in5_in),
        .I4(p_0_in6_in),
        .I5(p_0_in7_in),
        .O(n1q_m_1[1]));
  LUT6 #(
    .INIT(64'h7EEEEEE8EEE8E888)) 
    \n1q_m_2[2]_i_1 
       (.I0(\n1q_m_2[3]_i_4_n_0 ),
        .I1(\n1q_m_2[3]_i_3_n_0 ),
        .I2(p_0_in6_in),
        .I3(p_0_in5_in),
        .I4(p_0_in7_in),
        .I5(\n1q_m_2[3]_i_2_n_0 ),
        .O(n1q_m_1[2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \n1q_m_2[3]_i_1 
       (.I0(\n1q_m_2[3]_i_2_n_0 ),
        .I1(p_0_in7_in),
        .I2(p_0_in5_in),
        .I3(p_0_in6_in),
        .I4(\n1q_m_2[3]_i_3_n_0 ),
        .I5(\n1q_m_2[3]_i_4_n_0 ),
        .O(n1q_m_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[3]_i_2 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_5_n_0 ),
        .I2(p_0_in0_in),
        .I3(q_m_11__5),
        .O(\n1q_m_2[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h96C33C96)) 
    \n1q_m_2[3]_i_3 
       (.I0(q_m_11__5),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in0_in),
        .O(\n1q_m_2[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA99AA66AA66AA99A)) 
    \n1q_m_2[3]_i_4 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in2_in),
        .I4(q_m_11__5),
        .I5(\n1q_m_2[3]_i_5_n_0 ),
        .O(\n1q_m_2[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[3]_i_5 
       (.I0(p_0_in10_in_0),
        .I1(p_0_in8_in_1),
        .I2(p_0_in6_in_2),
        .I3(p_0_in4_in),
        .O(\n1q_m_2[3]_i_5_n_0 ));
  FDRE \n1q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(n1q_m_1[0]),
        .Q(\n1q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(n1q_m_1[1]),
        .Q(\n1q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(n1q_m_1[2]),
        .Q(\n1q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(n1q_m_1[3]),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE pC0_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pHSync),
        .Q(pC0_1),
        .R(1'b0));
  FDRE pC0_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pC0_1),
        .Q(pC0_2),
        .R(1'b0));
  FDRE pC1_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pVSync),
        .Q(pC1_1),
        .R(1'b0));
  FDRE pC1_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pC1_1),
        .Q(pC1_2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0FF0BBBB)) 
    \pDataOutRaw[0]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\q_m_2_reg_n_0_[0] ),
        .I3(\pDataOutRaw[9]_i_3_n_0 ),
        .I4(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(\pDataOutRaw[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0FF0BBBB)) 
    \pDataOutRaw[1]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\q_m_2_reg_n_0_[1] ),
        .I3(\pDataOutRaw[9]_i_3_n_0 ),
        .I4(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(\pDataOutRaw[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F44F044)) 
    \pDataOutRaw[2]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\q_m_2_reg_n_0_[2] ),
        .I3(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I4(\pDataOutRaw[9]_i_3_n_0 ),
        .O(q_out_20_in[2]));
  LUT6 #(
    .INIT(64'h0BFBFB0B0B0BFBFB)) 
    \pDataOutRaw[3]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(\cnt_t_3[4]_i_3__1_n_0 ),
        .I4(\q_m_2_reg_n_0_[3] ),
        .I5(\cnt_t_3[3]_i_4_n_0 ),
        .O(\pDataOutRaw[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F44F044)) 
    \pDataOutRaw[4]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\q_m_2_reg_n_0_[4] ),
        .I3(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I4(\pDataOutRaw[9]_i_3_n_0 ),
        .O(q_out_20_in[4]));
  LUT5 #(
    .INIT(32'h0FF0BBBB)) 
    \pDataOutRaw[5]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\q_m_2_reg_n_0_[5] ),
        .I3(\pDataOutRaw[9]_i_3_n_0 ),
        .I4(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(\pDataOutRaw[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0F44F044)) 
    \pDataOutRaw[6]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\q_m_2_reg_n_0_[6] ),
        .I3(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I4(\pDataOutRaw[9]_i_3_n_0 ),
        .O(q_out_20_in[6]));
  LUT5 #(
    .INIT(32'h0FF0BBBB)) 
    \pDataOutRaw[7]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\q_m_2_reg_n_0_[7] ),
        .I3(\pDataOutRaw[9]_i_3_n_0 ),
        .I4(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(\pDataOutRaw[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA3A0)) 
    \pDataOutRaw[8]_i_1 
       (.I0(p_0_in),
        .I1(pC0_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(pC1_2),
        .O(q_out_20_in[8]));
  LUT3 #(
    .INIT(8'h01)) 
    \pDataOutRaw[9]_i_1__1 
       (.I0(pC1_2),
        .I1(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(pC0_2),
        .O(\pDataOutRaw[9]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \pDataOutRaw[9]_i_2 
       (.I0(\pDataOutRaw[9]_i_3_n_0 ),
        .I1(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(pC0_2),
        .I3(pC1_2),
        .O(q_out_20_in[9]));
  LUT6 #(
    .INIT(64'h111D333C551D550C)) 
    \pDataOutRaw[9]_i_3 
       (.I0(p_0_in),
        .I1(cnt_t_3[4]),
        .I2(\n1q_m_2_reg_n_0_[3] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .I4(\cnt_t_3[4]_i_7__1_n_0 ),
        .I5(\cnt_t_3[4]_i_6__0_n_0 ),
        .O(\pDataOutRaw[9]_i_3_n_0 ));
  FDRE \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOutRaw_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[2]),
        .Q(Q[2]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOutRaw_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[4]),
        .Q(Q[4]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOutRaw_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[6]),
        .Q(Q[6]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOutRaw_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[8]),
        .Q(Q[8]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[9]),
        .Q(Q[9]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[1]),
        .Q(\pDataOut_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[2]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[3]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[4]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[5]),
        .Q(p_0_in6_in_2),
        .R(1'b0));
  FDRE \pDataOut_1_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[6]),
        .Q(p_0_in8_in_1),
        .R(1'b0));
  FDRE \pDataOut_1_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[7]),
        .Q(p_0_in10_in_0),
        .R(1'b0));
  FDRE pVde_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pVDE),
        .Q(pVde_1),
        .R(1'b0));
  FDRE pVde_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pVde_1),
        .Q(\DataEncoders[2].DataEncoder/pVde_2 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEC11131111EEEE)) 
    \q_m_2[1]_i_1 
       (.I0(\n1d_1_reg_n_0_[2] ),
        .I1(\n1d_1_reg_n_0_[3] ),
        .I2(\n1d_1_reg_n_0_[1] ),
        .I3(\n1d_1_reg_n_0_[0] ),
        .I4(\pDataOut_1_reg_n_0_[1] ),
        .I5(\pDataOut_1_reg_n_0_[0] ),
        .O(p_0_in10_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .O(p_0_in9_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[3]_i_1 
       (.I0(p_0_in0_in),
        .I1(p_0_in2_in),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\pDataOut_1_reg_n_0_[1] ),
        .I4(q_m_11__5),
        .O(p_0_in8_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1 
       (.I0(p_0_in2_in),
        .I1(p_0_in4_in),
        .I2(p_0_in0_in),
        .I3(\pDataOut_1_reg_n_0_[1] ),
        .I4(\pDataOut_1_reg_n_0_[0] ),
        .O(p_0_in7_in));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q_m_2[5]_i_1 
       (.I0(q_m_11__5),
        .I1(p_0_in0_in),
        .I2(p_0_in2_in),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\pDataOut_1_reg_n_0_[1] ),
        .I5(\q_m_2[5]_i_2_n_0 ),
        .O(p_0_in6_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_m_2[5]_i_2 
       (.I0(p_0_in4_in),
        .I1(p_0_in6_in_2),
        .O(\q_m_2[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[6]_i_1 
       (.I0(p_0_in9_in),
        .I1(p_0_in2_in),
        .I2(p_0_in4_in),
        .I3(p_0_in6_in_2),
        .I4(p_0_in8_in_1),
        .O(p_0_in5_in));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q_m_2[7]_i_1 
       (.I0(p_0_in10_in_0),
        .I1(p_0_in8_in_1),
        .I2(p_0_in6_in_2),
        .I3(p_0_in4_in),
        .I4(q_m_xor_1),
        .I5(q_m_11__5),
        .O(p_1_in12_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \q_m_2[7]_i_2 
       (.I0(\pDataOut_1_reg_n_0_[1] ),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(p_0_in2_in),
        .I3(p_0_in0_in),
        .O(q_m_xor_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEF0FFF0)) 
    \q_m_2[7]_i_3 
       (.I0(\n1d_1_reg_n_0_[0] ),
        .I1(\n1d_1_reg_n_0_[1] ),
        .I2(\n1d_1_reg_n_0_[3] ),
        .I3(\n1d_1_reg_n_0_[2] ),
        .I4(\pDataOut_1_reg_n_0_[0] ),
        .O(q_m_11__5));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0303030B)) 
    \q_m_2[8]_i_1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1d_1_reg_n_0_[2] ),
        .I2(\n1d_1_reg_n_0_[3] ),
        .I3(\n1d_1_reg_n_0_[1] ),
        .I4(\n1d_1_reg_n_0_[0] ),
        .O(\q_m_2[8]_i_1_n_0 ));
  FDRE \q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in10_in),
        .Q(\q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in9_in),
        .Q(\q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in8_in),
        .Q(\q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_2_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in7_in),
        .Q(\q_m_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_2_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in6_in),
        .Q(\q_m_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_2_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in5_in),
        .Q(\q_m_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_2_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_1_in12_in),
        .Q(\q_m_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TMDS_Encoder" *) 
module design_1_rgb2dvi_0_1_TMDS_Encoder_1
   (Q,
    PixelClk,
    vid_pData,
    SR);
  output [9:0]Q;
  input PixelClk;
  input [7:0]vid_pData;
  input [0:0]SR;

  wire PixelClk;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire \cnt_t_3[2]_i_1__1_n_0 ;
  wire \cnt_t_3[2]_i_2__1_n_0 ;
  wire \cnt_t_3[2]_i_3__0_n_0 ;
  wire \cnt_t_3[2]_i_4__0_n_0 ;
  wire \cnt_t_3[3]_i_2__1_n_0 ;
  wire \cnt_t_3[3]_i_3__0_n_0 ;
  wire \cnt_t_3[3]_i_4__0_n_0 ;
  wire \cnt_t_3[3]_i_5__0_n_0 ;
  wire \cnt_t_3[3]_i_6__0_n_0 ;
  wire \cnt_t_3[3]_i_7__0_n_0 ;
  wire \cnt_t_3[4]_i_2_n_0 ;
  wire \cnt_t_3[4]_i_3_n_0 ;
  wire \cnt_t_3[4]_i_4__0_n_0 ;
  wire \cnt_t_3[4]_i_5__0_n_0 ;
  wire \cnt_t_3[4]_i_6__1_n_0 ;
  wire \cnt_t_3[4]_i_7_n_0 ;
  wire \cnt_t_3_reg_n_0_[1] ;
  wire \cnt_t_3_reg_n_0_[2] ;
  wire \cnt_t_3_reg_n_0_[3] ;
  wire \cnt_t_3_reg_n_0_[4] ;
  wire \n0q_m_2[1]_i_1__0_n_0 ;
  wire \n0q_m_2[2]_i_1__0_n_0 ;
  wire \n0q_m_2[3]_i_1__0_n_0 ;
  wire \n0q_m_2_reg_n_0_[1] ;
  wire \n0q_m_2_reg_n_0_[2] ;
  wire \n0q_m_2_reg_n_0_[3] ;
  wire \n1d_1[0]_i_1_n_0 ;
  wire \n1d_1[0]_i_2_n_0 ;
  wire \n1d_1[1]_i_1_n_0 ;
  wire \n1d_1[1]_i_2_n_0 ;
  wire \n1d_1[2]_i_1_n_0 ;
  wire \n1d_1[2]_i_2_n_0 ;
  wire \n1d_1[3]_i_1_n_0 ;
  wire \n1d_1[3]_i_2_n_0 ;
  wire \n1d_1[3]_i_3_n_0 ;
  wire \n1d_1[3]_i_4_n_0 ;
  wire \n1d_1_reg_n_0_[0] ;
  wire \n1d_1_reg_n_0_[1] ;
  wire \n1d_1_reg_n_0_[2] ;
  wire \n1d_1_reg_n_0_[3] ;
  wire \n1q_m_2[0]_i_1__0_n_0 ;
  wire \n1q_m_2[0]_i_2__0_n_0 ;
  wire \n1q_m_2[1]_i_1__0_n_0 ;
  wire \n1q_m_2[2]_i_1__0_n_0 ;
  wire \n1q_m_2[3]_i_1__0_n_0 ;
  wire \n1q_m_2[3]_i_2__0_n_0 ;
  wire \n1q_m_2[3]_i_3__0_n_0 ;
  wire \n1q_m_2[3]_i_4__0_n_0 ;
  wire \n1q_m_2[3]_i_5__0_n_0 ;
  wire \n1q_m_2_reg_n_0_[0] ;
  wire \n1q_m_2_reg_n_0_[1] ;
  wire \n1q_m_2_reg_n_0_[2] ;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire \pDataOutRaw[0]_i_1__0_n_0 ;
  wire \pDataOutRaw[1]_i_1__0_n_0 ;
  wire \pDataOutRaw[2]_i_1__0_n_0 ;
  wire \pDataOutRaw[3]_i_1__0_n_0 ;
  wire \pDataOutRaw[4]_i_1__0_n_0 ;
  wire \pDataOutRaw[5]_i_1__0_n_0 ;
  wire \pDataOutRaw[6]_i_1__0_n_0 ;
  wire \pDataOutRaw[7]_i_1__0_n_0 ;
  wire \pDataOutRaw[9]_i_1_n_0 ;
  wire \pDataOutRaw[9]_i_2__0_n_0 ;
  wire \pDataOutRaw[9]_i_3__0_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire \pDataOut_1_reg_n_0_[1] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in10_in;
  wire p_0_in2_in;
  wire p_0_in4_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire q_m_11__5;
  wire \q_m_2[1]_i_1__0_n_0 ;
  wire \q_m_2[2]_i_1__0_n_0 ;
  wire \q_m_2[3]_i_1__0_n_0 ;
  wire \q_m_2[4]_i_1__0_n_0 ;
  wire \q_m_2[5]_i_1__0_n_0 ;
  wire \q_m_2[5]_i_2__0_n_0 ;
  wire \q_m_2[6]_i_1__0_n_0 ;
  wire \q_m_2[7]_i_1__0_n_0 ;
  wire \q_m_2[8]_i_1__0_n_0 ;
  wire \q_m_2_reg_n_0_[0] ;
  wire \q_m_2_reg_n_0_[1] ;
  wire \q_m_2_reg_n_0_[2] ;
  wire \q_m_2_reg_n_0_[3] ;
  wire \q_m_2_reg_n_0_[4] ;
  wire \q_m_2_reg_n_0_[5] ;
  wire \q_m_2_reg_n_0_[6] ;
  wire \q_m_2_reg_n_0_[7] ;
  wire [3:3]q_m_xor_1;
  wire [7:0]vid_pData;

  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \cnt_t_3[1]_i_1__0 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(\cnt_t_3[3]_i_4__0_n_0 ),
        .I5(\cnt_t_3[2]_i_4__0_n_0 ),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'h995AAA5A5A665AAA)) 
    \cnt_t_3[2]_i_1__1 
       (.I0(\cnt_t_3[2]_i_2__1_n_0 ),
        .I1(\cnt_t_3[3]_i_4__0_n_0 ),
        .I2(\cnt_t_3[2]_i_3__0_n_0 ),
        .I3(\cnt_t_3_reg_n_0_[1] ),
        .I4(\cnt_t_3[2]_i_4__0_n_0 ),
        .I5(p_0_in),
        .O(\cnt_t_3[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96699696)) 
    \cnt_t_3[2]_i_2__1 
       (.I0(\cnt_t_3_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\n0q_m_2_reg_n_0_[2] ),
        .I3(\n0q_m_2_reg_n_0_[1] ),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3__0 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFEFFFE)) 
    \cnt_t_3[2]_i_4__0 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\cnt_t_3_reg_n_0_[4] ),
        .I4(\pDataOutRaw[9]_i_3__0_n_0 ),
        .I5(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \cnt_t_3[3]_i_1__0 
       (.I0(\cnt_t_3[3]_i_2__1_n_0 ),
        .I1(\cnt_t_3[3]_i_3__0_n_0 ),
        .I2(\cnt_t_3[3]_i_4__0_n_0 ),
        .I3(\cnt_t_3[3]_i_5__0_n_0 ),
        .I4(\cnt_t_3[4]_i_2_n_0 ),
        .I5(\cnt_t_3[3]_i_6__0_n_0 ),
        .O(cnt_t_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_t_3[3]_i_2__1 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3[4]_i_6__1_n_0 ),
        .O(\cnt_t_3[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h41D70000FFFF41D7)) 
    \cnt_t_3[3]_i_3__0 
       (.I0(\cnt_t_3_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(\cnt_t_3[3]_i_7__0_n_0 ),
        .I5(\cnt_t_3_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00F0F0F1FF)) 
    \cnt_t_3[3]_i_4__0 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\pDataOutRaw[9]_i_2__0_n_0 ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[3] ),
        .I5(\cnt_t_3_reg_n_0_[4] ),
        .O(\cnt_t_3[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEB82EB820000)) 
    \cnt_t_3[3]_i_5__0 
       (.I0(\cnt_t_3_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(\cnt_t_3_reg_n_0_[2] ),
        .I5(\cnt_t_3[3]_i_7__0_n_0 ),
        .O(\cnt_t_3[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h9BBF04DF04DF9BBF)) 
    \cnt_t_3[3]_i_6__0 
       (.I0(\n0q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(\n0q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \cnt_t_3[3]_i_7__0 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n0q_m_2_reg_n_0_[2] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \cnt_t_3[4]_i_2 
       (.I0(p_0_in),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\pDataOutRaw[9]_i_3__0_n_0 ),
        .I3(\cnt_t_3_reg_n_0_[4] ),
        .I4(\pDataOutRaw[9]_i_2__0_n_0 ),
        .O(\cnt_t_3[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h595995A99A9A95A9)) 
    \cnt_t_3[4]_i_3 
       (.I0(\cnt_t_3[4]_i_5__0_n_0 ),
        .I1(\cnt_t_3[4]_i_6__1_n_0 ),
        .I2(\cnt_t_3_reg_n_0_[3] ),
        .I3(\cnt_t_3[3]_i_3__0_n_0 ),
        .I4(\cnt_t_3[3]_i_4__0_n_0 ),
        .I5(\cnt_t_3[3]_i_5__0_n_0 ),
        .O(\cnt_t_3[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9AA6A665599A9AA6)) 
    \cnt_t_3[4]_i_4__0 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3[4]_i_7_n_0 ),
        .I3(\n0q_m_2_reg_n_0_[3] ),
        .I4(\cnt_t_3_reg_n_0_[3] ),
        .I5(\cnt_t_3[3]_i_6__0_n_0 ),
        .O(\cnt_t_3[4]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h599A)) 
    \cnt_t_3[4]_i_5__0 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3[4]_i_7_n_0 ),
        .I3(\n0q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h66A655659959AA9A)) 
    \cnt_t_3[4]_i_6__1 
       (.I0(\n1q_m_2_reg_n_0_[3] ),
        .I1(\n0q_m_2_reg_n_0_[2] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(\n0q_m_2_reg_n_0_[1] ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(\n0q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA2FB)) 
    \cnt_t_3[4]_i_7 
       (.I0(\n0q_m_2_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n0q_m_2_reg_n_0_[1] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(\cnt_t_3_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\cnt_t_3[2]_i_1__1_n_0 ),
        .Q(\cnt_t_3_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(\cnt_t_3_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(\cnt_t_3_reg_n_0_[4] ),
        .R(SR));
  MUXF7 \cnt_t_3_reg[4]_i_1 
       (.I0(\cnt_t_3[4]_i_3_n_0 ),
        .I1(\cnt_t_3[4]_i_4__0_n_0 ),
        .O(cnt_t_2[4]),
        .S(\cnt_t_3[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h177EE881E881177E)) 
    \n0q_m_2[1]_i_1__0 
       (.I0(\q_m_2[4]_i_1__0_n_0 ),
        .I1(\q_m_2[5]_i_1__0_n_0 ),
        .I2(\q_m_2[6]_i_1__0_n_0 ),
        .I3(\n1q_m_2[3]_i_2__0_n_0 ),
        .I4(\n1q_m_2[3]_i_4__0_n_0 ),
        .I5(\n1q_m_2[3]_i_3__0_n_0 ),
        .O(\n0q_m_2[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001177F177FFFFE)) 
    \n0q_m_2[2]_i_1__0 
       (.I0(\n1q_m_2[3]_i_2__0_n_0 ),
        .I1(\q_m_2[4]_i_1__0_n_0 ),
        .I2(\q_m_2[6]_i_1__0_n_0 ),
        .I3(\q_m_2[5]_i_1__0_n_0 ),
        .I4(\n1q_m_2[3]_i_3__0_n_0 ),
        .I5(\n1q_m_2[3]_i_4__0_n_0 ),
        .O(\n0q_m_2[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \n0q_m_2[3]_i_1__0 
       (.I0(\n1q_m_2[3]_i_2__0_n_0 ),
        .I1(\q_m_2[4]_i_1__0_n_0 ),
        .I2(\q_m_2[6]_i_1__0_n_0 ),
        .I3(\q_m_2[5]_i_1__0_n_0 ),
        .I4(\n1q_m_2[3]_i_3__0_n_0 ),
        .I5(\n1q_m_2[3]_i_4__0_n_0 ),
        .O(\n0q_m_2[3]_i_1__0_n_0 ));
  FDRE \n0q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1__0_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n0q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[2]_i_1__0_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n0q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[3]_i_1__0_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d_1[0]_i_1 
       (.I0(vid_pData[7]),
        .I1(vid_pData[0]),
        .I2(\n1d_1[0]_i_2_n_0 ),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(vid_pData[4]),
        .O(\n1d_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[0]_i_2 
       (.I0(vid_pData[1]),
        .I1(vid_pData[3]),
        .I2(vid_pData[2]),
        .O(\n1d_1[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[1]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[1]_i_2_n_0 ),
        .I2(\n1d_1[3]_i_3_n_0 ),
        .O(\n1d_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d_1[1]_i_2 
       (.I0(vid_pData[4]),
        .I1(vid_pData[5]),
        .I2(vid_pData[6]),
        .I3(vid_pData[1]),
        .I4(vid_pData[2]),
        .I5(vid_pData[3]),
        .O(\n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d_1[2]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(\n1d_1[2]_i_2_n_0 ),
        .I3(vid_pData[3]),
        .I4(vid_pData[2]),
        .I5(vid_pData[1]),
        .O(\n1d_1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[2]_i_2 
       (.I0(vid_pData[6]),
        .I1(vid_pData[5]),
        .I2(vid_pData[4]),
        .O(\n1d_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d_1[3]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(vid_pData[4]),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(\n1d_1[3]_i_4_n_0 ),
        .O(\n1d_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d_1[3]_i_2 
       (.I0(vid_pData[5]),
        .I1(vid_pData[6]),
        .I2(vid_pData[4]),
        .I3(vid_pData[7]),
        .I4(vid_pData[0]),
        .I5(\n1d_1[0]_i_2_n_0 ),
        .O(\n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d_1[3]_i_3 
       (.I0(vid_pData[0]),
        .I1(vid_pData[7]),
        .I2(vid_pData[2]),
        .I3(vid_pData[3]),
        .I4(vid_pData[1]),
        .O(\n1d_1[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[3]_i_4 
       (.I0(vid_pData[3]),
        .I1(vid_pData[2]),
        .I2(vid_pData[1]),
        .O(\n1d_1[3]_i_4_n_0 ));
  FDRE \n1d_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[0]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1d_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[1]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1d_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[2]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1d_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[3]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1q_m_2[0]_i_1__0 
       (.I0(\q_m_2[7]_i_1__0_n_0 ),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\n1q_m_2[0]_i_2__0_n_0 ),
        .I3(\q_m_2[4]_i_1__0_n_0 ),
        .I4(\q_m_2[5]_i_1__0_n_0 ),
        .I5(\q_m_2[6]_i_1__0_n_0 ),
        .O(\n1q_m_2[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1q_m_2[0]_i_2__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in2_in),
        .O(\n1q_m_2[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \n1q_m_2[1]_i_1__0 
       (.I0(\n1q_m_2[3]_i_3__0_n_0 ),
        .I1(\n1q_m_2[3]_i_4__0_n_0 ),
        .I2(\n1q_m_2[3]_i_2__0_n_0 ),
        .I3(\q_m_2[6]_i_1__0_n_0 ),
        .I4(\q_m_2[5]_i_1__0_n_0 ),
        .I5(\q_m_2[4]_i_1__0_n_0 ),
        .O(\n1q_m_2[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7EEEEEE8EEE8E888)) 
    \n1q_m_2[2]_i_1__0 
       (.I0(\n1q_m_2[3]_i_4__0_n_0 ),
        .I1(\n1q_m_2[3]_i_3__0_n_0 ),
        .I2(\q_m_2[5]_i_1__0_n_0 ),
        .I3(\q_m_2[6]_i_1__0_n_0 ),
        .I4(\q_m_2[4]_i_1__0_n_0 ),
        .I5(\n1q_m_2[3]_i_2__0_n_0 ),
        .O(\n1q_m_2[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \n1q_m_2[3]_i_1__0 
       (.I0(\n1q_m_2[3]_i_2__0_n_0 ),
        .I1(\q_m_2[4]_i_1__0_n_0 ),
        .I2(\q_m_2[6]_i_1__0_n_0 ),
        .I3(\q_m_2[5]_i_1__0_n_0 ),
        .I4(\n1q_m_2[3]_i_3__0_n_0 ),
        .I5(\n1q_m_2[3]_i_4__0_n_0 ),
        .O(\n1q_m_2[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[3]_i_2__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_5__0_n_0 ),
        .I2(p_0_in0_in),
        .I3(q_m_11__5),
        .O(\n1q_m_2[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h96C33C96)) 
    \n1q_m_2[3]_i_3__0 
       (.I0(q_m_11__5),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in0_in),
        .O(\n1q_m_2[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hA99AA66AA66AA99A)) 
    \n1q_m_2[3]_i_4__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in2_in),
        .I4(q_m_11__5),
        .I5(\n1q_m_2[3]_i_5__0_n_0 ),
        .O(\n1q_m_2[3]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[3]_i_5__0 
       (.I0(p_0_in10_in),
        .I1(p_0_in8_in),
        .I2(p_0_in6_in),
        .I3(p_0_in4_in),
        .O(\n1q_m_2[3]_i_5__0_n_0 ));
  FDRE \n1q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[0]_i_1__0_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[1]_i_1__0_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[2]_i_1__0_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[3]_i_1__0_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[0]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_1_n_0 ),
        .I1(\q_m_2_reg_n_0_[0] ),
        .O(\pDataOutRaw[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[1]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_1_n_0 ),
        .I1(\q_m_2_reg_n_0_[1] ),
        .O(\pDataOutRaw[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[2]_i_1__0 
       (.I0(\cnt_t_3[3]_i_4__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[2] ),
        .I2(\cnt_t_3[4]_i_2_n_0 ),
        .O(\pDataOutRaw[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[3]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_1_n_0 ),
        .I1(\q_m_2_reg_n_0_[3] ),
        .O(\pDataOutRaw[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[4]_i_1__0 
       (.I0(\cnt_t_3[3]_i_4__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[4] ),
        .I2(\cnt_t_3[4]_i_2_n_0 ),
        .O(\pDataOutRaw[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[5]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_1_n_0 ),
        .I1(\q_m_2_reg_n_0_[5] ),
        .O(\pDataOutRaw[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[6]_i_1__0 
       (.I0(\cnt_t_3[3]_i_4__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[6] ),
        .I2(\cnt_t_3[4]_i_2_n_0 ),
        .O(\pDataOutRaw[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[7]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_1_n_0 ),
        .I1(\q_m_2_reg_n_0_[7] ),
        .O(\pDataOutRaw[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h111D333C551D550C)) 
    \pDataOutRaw[9]_i_1 
       (.I0(p_0_in),
        .I1(\cnt_t_3_reg_n_0_[4] ),
        .I2(\n1q_m_2_reg_n_0_[3] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .I4(\pDataOutRaw[9]_i_2__0_n_0 ),
        .I5(\pDataOutRaw[9]_i_3__0_n_0 ),
        .O(\pDataOutRaw[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pDataOutRaw[9]_i_2__0 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .O(\pDataOutRaw[9]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \pDataOutRaw[9]_i_3__0 
       (.I0(\n1q_m_2_reg_n_0_[3] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .O(\pDataOutRaw[9]_i_3__0_n_0 ));
  FDRE \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \pDataOutRaw_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDSE \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .S(SR));
  FDRE \pDataOutRaw_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDSE \pDataOutRaw_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .S(SR));
  FDRE \pDataOutRaw_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDSE \pDataOutRaw_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .S(SR));
  FDRE \pDataOutRaw_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDSE \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(Q[8]),
        .S(SR));
  FDSE \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[9]_i_1_n_0 ),
        .Q(Q[9]),
        .S(SR));
  FDRE \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[1]),
        .Q(\pDataOut_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[2]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[3]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[4]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[5]),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[6]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[7]),
        .Q(p_0_in10_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEC11131111EEEE)) 
    \q_m_2[1]_i_1__0 
       (.I0(\n1d_1_reg_n_0_[2] ),
        .I1(\n1d_1_reg_n_0_[3] ),
        .I2(\n1d_1_reg_n_0_[1] ),
        .I3(\n1d_1_reg_n_0_[0] ),
        .I4(\pDataOut_1_reg_n_0_[1] ),
        .I5(\pDataOut_1_reg_n_0_[0] ),
        .O(\q_m_2[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .O(\q_m_2[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[3]_i_1__0 
       (.I0(p_0_in0_in),
        .I1(p_0_in2_in),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\pDataOut_1_reg_n_0_[1] ),
        .I4(q_m_11__5),
        .O(\q_m_2[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1__0 
       (.I0(p_0_in2_in),
        .I1(p_0_in4_in),
        .I2(p_0_in0_in),
        .I3(\pDataOut_1_reg_n_0_[1] ),
        .I4(\pDataOut_1_reg_n_0_[0] ),
        .O(\q_m_2[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q_m_2[5]_i_1__0 
       (.I0(q_m_11__5),
        .I1(p_0_in0_in),
        .I2(p_0_in2_in),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\pDataOut_1_reg_n_0_[1] ),
        .I5(\q_m_2[5]_i_2__0_n_0 ),
        .O(\q_m_2[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_m_2[5]_i_2__0 
       (.I0(p_0_in4_in),
        .I1(p_0_in6_in),
        .O(\q_m_2[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[6]_i_1__0 
       (.I0(\q_m_2[2]_i_1__0_n_0 ),
        .I1(p_0_in2_in),
        .I2(p_0_in4_in),
        .I3(p_0_in6_in),
        .I4(p_0_in8_in),
        .O(\q_m_2[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q_m_2[7]_i_1__0 
       (.I0(p_0_in10_in),
        .I1(p_0_in8_in),
        .I2(p_0_in6_in),
        .I3(p_0_in4_in),
        .I4(q_m_xor_1),
        .I5(q_m_11__5),
        .O(\q_m_2[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \q_m_2[7]_i_2__0 
       (.I0(\pDataOut_1_reg_n_0_[1] ),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(p_0_in2_in),
        .I3(p_0_in0_in),
        .O(q_m_xor_1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFEF0FFF0)) 
    \q_m_2[7]_i_3__0 
       (.I0(\n1d_1_reg_n_0_[0] ),
        .I1(\n1d_1_reg_n_0_[1] ),
        .I2(\n1d_1_reg_n_0_[3] ),
        .I3(\n1d_1_reg_n_0_[2] ),
        .I4(\pDataOut_1_reg_n_0_[0] ),
        .O(q_m_11__5));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0303030B)) 
    \q_m_2[8]_i_1__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1d_1_reg_n_0_[2] ),
        .I2(\n1d_1_reg_n_0_[3] ),
        .I3(\n1d_1_reg_n_0_[1] ),
        .I4(\n1d_1_reg_n_0_[0] ),
        .O(\q_m_2[8]_i_1__0_n_0 ));
  FDRE \q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[1]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[2]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[3]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_2_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[4]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_2_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[5]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_2_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[6]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_2_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[7]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1__0_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TMDS_Encoder" *) 
module design_1_rgb2dvi_0_1_TMDS_Encoder_3
   (Q,
    PixelClk,
    vid_pData,
    SR);
  output [9:0]Q;
  input PixelClk;
  input [7:0]vid_pData;
  input [0:0]SR;

  wire PixelClk;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire \cnt_t_3[2]_i_2__0_n_0 ;
  wire \cnt_t_3[2]_i_3__1_n_0 ;
  wire \cnt_t_3[2]_i_4__1_n_0 ;
  wire \cnt_t_3[3]_i_2_n_0 ;
  wire \cnt_t_3[3]_i_3__1_n_0 ;
  wire \cnt_t_3[3]_i_4__1_n_0 ;
  wire \cnt_t_3[3]_i_5__1_n_0 ;
  wire \cnt_t_3[3]_i_6__1_n_0 ;
  wire \cnt_t_3[3]_i_7__1_n_0 ;
  wire \cnt_t_3[4]_i_2__0_n_0 ;
  wire \cnt_t_3[4]_i_3__0_n_0 ;
  wire \cnt_t_3[4]_i_4__1_n_0 ;
  wire \cnt_t_3[4]_i_5__1_n_0 ;
  wire \cnt_t_3[4]_i_6_n_0 ;
  wire \cnt_t_3[4]_i_7__0_n_0 ;
  wire \cnt_t_3_reg_n_0_[1] ;
  wire \cnt_t_3_reg_n_0_[2] ;
  wire \cnt_t_3_reg_n_0_[3] ;
  wire \cnt_t_3_reg_n_0_[4] ;
  wire \n0q_m_2[1]_i_1__1_n_0 ;
  wire \n0q_m_2[2]_i_1__1_n_0 ;
  wire \n0q_m_2[3]_i_1__1_n_0 ;
  wire \n0q_m_2_reg_n_0_[1] ;
  wire \n0q_m_2_reg_n_0_[2] ;
  wire \n0q_m_2_reg_n_0_[3] ;
  wire \n1d_1[0]_i_1_n_0 ;
  wire \n1d_1[0]_i_2_n_0 ;
  wire \n1d_1[1]_i_1_n_0 ;
  wire \n1d_1[1]_i_2_n_0 ;
  wire \n1d_1[2]_i_1_n_0 ;
  wire \n1d_1[2]_i_2_n_0 ;
  wire \n1d_1[3]_i_1_n_0 ;
  wire \n1d_1[3]_i_2_n_0 ;
  wire \n1d_1[3]_i_3_n_0 ;
  wire \n1d_1[3]_i_4_n_0 ;
  wire \n1d_1_reg_n_0_[0] ;
  wire \n1d_1_reg_n_0_[1] ;
  wire \n1d_1_reg_n_0_[2] ;
  wire \n1d_1_reg_n_0_[3] ;
  wire \n1q_m_2[0]_i_1__1_n_0 ;
  wire \n1q_m_2[0]_i_2__1_n_0 ;
  wire \n1q_m_2[1]_i_1__1_n_0 ;
  wire \n1q_m_2[2]_i_1__1_n_0 ;
  wire \n1q_m_2[3]_i_1__1_n_0 ;
  wire \n1q_m_2[3]_i_2__1_n_0 ;
  wire \n1q_m_2[3]_i_3__1_n_0 ;
  wire \n1q_m_2[3]_i_4__1_n_0 ;
  wire \n1q_m_2[3]_i_5__1_n_0 ;
  wire \n1q_m_2_reg_n_0_[0] ;
  wire \n1q_m_2_reg_n_0_[1] ;
  wire \n1q_m_2_reg_n_0_[2] ;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire \pDataOutRaw[0]_i_1__1_n_0 ;
  wire \pDataOutRaw[1]_i_1__1_n_0 ;
  wire \pDataOutRaw[2]_i_1__1_n_0 ;
  wire \pDataOutRaw[3]_i_1__1_n_0 ;
  wire \pDataOutRaw[4]_i_1__1_n_0 ;
  wire \pDataOutRaw[5]_i_1__1_n_0 ;
  wire \pDataOutRaw[6]_i_1__1_n_0 ;
  wire \pDataOutRaw[7]_i_1__1_n_0 ;
  wire \pDataOutRaw[9]_i_1__0_n_0 ;
  wire \pDataOutRaw[9]_i_2__1_n_0 ;
  wire \pDataOutRaw[9]_i_3__1_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire \pDataOut_1_reg_n_0_[1] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in10_in;
  wire p_0_in2_in;
  wire p_0_in4_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire q_m_11__5;
  wire \q_m_2[1]_i_1__1_n_0 ;
  wire \q_m_2[2]_i_1__1_n_0 ;
  wire \q_m_2[3]_i_1__1_n_0 ;
  wire \q_m_2[4]_i_1__1_n_0 ;
  wire \q_m_2[5]_i_1__1_n_0 ;
  wire \q_m_2[5]_i_2__1_n_0 ;
  wire \q_m_2[6]_i_1__1_n_0 ;
  wire \q_m_2[7]_i_1__1_n_0 ;
  wire \q_m_2[8]_i_1__1_n_0 ;
  wire \q_m_2_reg_n_0_[0] ;
  wire \q_m_2_reg_n_0_[1] ;
  wire \q_m_2_reg_n_0_[2] ;
  wire \q_m_2_reg_n_0_[3] ;
  wire \q_m_2_reg_n_0_[4] ;
  wire \q_m_2_reg_n_0_[5] ;
  wire \q_m_2_reg_n_0_[6] ;
  wire \q_m_2_reg_n_0_[7] ;
  wire [3:3]q_m_xor_1;
  wire [7:0]vid_pData;

  LUT6 #(
    .INIT(64'h9F60609F609F9F60)) 
    \cnt_t_3[1]_i_1__1 
       (.I0(p_0_in),
        .I1(\cnt_t_3[3]_i_4__1_n_0 ),
        .I2(\cnt_t_3[2]_i_4__1_n_0 ),
        .I3(\n1q_m_2_reg_n_0_[1] ),
        .I4(\n0q_m_2_reg_n_0_[1] ),
        .I5(\cnt_t_3_reg_n_0_[1] ),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'h66A555A5A599A555)) 
    \cnt_t_3[2]_i_1__0 
       (.I0(\cnt_t_3[2]_i_2__0_n_0 ),
        .I1(\cnt_t_3[3]_i_4__1_n_0 ),
        .I2(\cnt_t_3[2]_i_3__1_n_0 ),
        .I3(\cnt_t_3_reg_n_0_[1] ),
        .I4(\cnt_t_3[2]_i_4__1_n_0 ),
        .I5(p_0_in),
        .O(cnt_t_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h69699669)) 
    \cnt_t_3[2]_i_2__0 
       (.I0(\cnt_t_3_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\n0q_m_2_reg_n_0_[2] ),
        .I3(\n1q_m_2_reg_n_0_[1] ),
        .I4(\n0q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3__1 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFEFFFE)) 
    \cnt_t_3[2]_i_4__1 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\cnt_t_3_reg_n_0_[4] ),
        .I4(\pDataOutRaw[9]_i_3__1_n_0 ),
        .I5(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \cnt_t_3[3]_i_1__1 
       (.I0(\cnt_t_3[3]_i_2_n_0 ),
        .I1(\cnt_t_3[3]_i_3__1_n_0 ),
        .I2(\cnt_t_3[3]_i_4__1_n_0 ),
        .I3(\cnt_t_3[3]_i_5__1_n_0 ),
        .I4(\cnt_t_3[4]_i_2__0_n_0 ),
        .I5(\cnt_t_3[3]_i_6__1_n_0 ),
        .O(cnt_t_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[3]_i_2 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3[4]_i_6_n_0 ),
        .O(\cnt_t_3[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2B22222BBB2B2BBB)) 
    \cnt_t_3[3]_i_3__1 
       (.I0(\cnt_t_3[3]_i_7__1_n_0 ),
        .I1(\cnt_t_3_reg_n_0_[2] ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\n0q_m_2_reg_n_0_[1] ),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(\cnt_t_3[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00F0F0F1FF)) 
    \cnt_t_3[3]_i_4__1 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[3] ),
        .I5(\cnt_t_3_reg_n_0_[4] ),
        .O(\cnt_t_3[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEB82EB820000)) 
    \cnt_t_3[3]_i_5__1 
       (.I0(\cnt_t_3_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(\cnt_t_3_reg_n_0_[2] ),
        .I5(\cnt_t_3[3]_i_7__1_n_0 ),
        .O(\cnt_t_3[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h9BBF04DF04DF9BBF)) 
    \cnt_t_3[3]_i_6__1 
       (.I0(\n0q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(\n0q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \cnt_t_3[3]_i_7__1 
       (.I0(\n0q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n0q_m_2_reg_n_0_[2] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_7__1_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \cnt_t_3[4]_i_2__0 
       (.I0(p_0_in),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\pDataOutRaw[9]_i_3__1_n_0 ),
        .I3(\cnt_t_3_reg_n_0_[4] ),
        .I4(\pDataOutRaw[9]_i_2__1_n_0 ),
        .O(\cnt_t_3[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFC038877BB4430CF)) 
    \cnt_t_3[4]_i_3__0 
       (.I0(\cnt_t_3[3]_i_5__1_n_0 ),
        .I1(\cnt_t_3[3]_i_4__1_n_0 ),
        .I2(\cnt_t_3[3]_i_3__1_n_0 ),
        .I3(\cnt_t_3[4]_i_5__1_n_0 ),
        .I4(\cnt_t_3[4]_i_6_n_0 ),
        .I5(\cnt_t_3_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h9AA6A665599A9AA6)) 
    \cnt_t_3[4]_i_4__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\n0q_m_2_reg_n_0_[3] ),
        .I3(\cnt_t_3[4]_i_7__0_n_0 ),
        .I4(\cnt_t_3_reg_n_0_[3] ),
        .I5(\cnt_t_3[3]_i_6__1_n_0 ),
        .O(\cnt_t_3[4]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hA665)) 
    \cnt_t_3[4]_i_5__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3[4]_i_7__0_n_0 ),
        .I3(\n0q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hF75108AE08AEF751)) 
    \cnt_t_3[4]_i_6 
       (.I0(\n1q_m_2_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n0q_m_2_reg_n_0_[1] ),
        .I3(\n0q_m_2_reg_n_0_[2] ),
        .I4(\n0q_m_2_reg_n_0_[3] ),
        .I5(\n1q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8AEF)) 
    \cnt_t_3[4]_i_7__0 
       (.I0(\n0q_m_2_reg_n_0_[2] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(\cnt_t_3_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[2]),
        .Q(\cnt_t_3_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(\cnt_t_3_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(\cnt_t_3_reg_n_0_[4] ),
        .R(SR));
  MUXF7 \cnt_t_3_reg[4]_i_1__0 
       (.I0(\cnt_t_3[4]_i_3__0_n_0 ),
        .I1(\cnt_t_3[4]_i_4__1_n_0 ),
        .O(cnt_t_2[4]),
        .S(\cnt_t_3[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h177EE881E881177E)) 
    \n0q_m_2[1]_i_1__1 
       (.I0(\q_m_2[4]_i_1__1_n_0 ),
        .I1(\q_m_2[5]_i_1__1_n_0 ),
        .I2(\q_m_2[6]_i_1__1_n_0 ),
        .I3(\n1q_m_2[3]_i_2__1_n_0 ),
        .I4(\n1q_m_2[3]_i_4__1_n_0 ),
        .I5(\n1q_m_2[3]_i_3__1_n_0 ),
        .O(\n0q_m_2[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0001177F177FFFFE)) 
    \n0q_m_2[2]_i_1__1 
       (.I0(\n1q_m_2[3]_i_2__1_n_0 ),
        .I1(\q_m_2[4]_i_1__1_n_0 ),
        .I2(\q_m_2[6]_i_1__1_n_0 ),
        .I3(\q_m_2[5]_i_1__1_n_0 ),
        .I4(\n1q_m_2[3]_i_3__1_n_0 ),
        .I5(\n1q_m_2[3]_i_4__1_n_0 ),
        .O(\n0q_m_2[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \n0q_m_2[3]_i_1__1 
       (.I0(\n1q_m_2[3]_i_2__1_n_0 ),
        .I1(\q_m_2[4]_i_1__1_n_0 ),
        .I2(\q_m_2[6]_i_1__1_n_0 ),
        .I3(\q_m_2[5]_i_1__1_n_0 ),
        .I4(\n1q_m_2[3]_i_3__1_n_0 ),
        .I5(\n1q_m_2[3]_i_4__1_n_0 ),
        .O(\n0q_m_2[3]_i_1__1_n_0 ));
  FDRE \n0q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1__1_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n0q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[2]_i_1__1_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n0q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[3]_i_1__1_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d_1[0]_i_1 
       (.I0(vid_pData[7]),
        .I1(vid_pData[0]),
        .I2(\n1d_1[0]_i_2_n_0 ),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(vid_pData[4]),
        .O(\n1d_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[0]_i_2 
       (.I0(vid_pData[1]),
        .I1(vid_pData[3]),
        .I2(vid_pData[2]),
        .O(\n1d_1[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[1]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[1]_i_2_n_0 ),
        .I2(\n1d_1[3]_i_3_n_0 ),
        .O(\n1d_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d_1[1]_i_2 
       (.I0(vid_pData[4]),
        .I1(vid_pData[5]),
        .I2(vid_pData[6]),
        .I3(vid_pData[1]),
        .I4(vid_pData[2]),
        .I5(vid_pData[3]),
        .O(\n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d_1[2]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(\n1d_1[2]_i_2_n_0 ),
        .I3(vid_pData[3]),
        .I4(vid_pData[2]),
        .I5(vid_pData[1]),
        .O(\n1d_1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[2]_i_2 
       (.I0(vid_pData[6]),
        .I1(vid_pData[5]),
        .I2(vid_pData[4]),
        .O(\n1d_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d_1[3]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(vid_pData[4]),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(\n1d_1[3]_i_4_n_0 ),
        .O(\n1d_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d_1[3]_i_2 
       (.I0(vid_pData[5]),
        .I1(vid_pData[6]),
        .I2(vid_pData[4]),
        .I3(vid_pData[7]),
        .I4(vid_pData[0]),
        .I5(\n1d_1[0]_i_2_n_0 ),
        .O(\n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d_1[3]_i_3 
       (.I0(vid_pData[0]),
        .I1(vid_pData[7]),
        .I2(vid_pData[2]),
        .I3(vid_pData[3]),
        .I4(vid_pData[1]),
        .O(\n1d_1[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[3]_i_4 
       (.I0(vid_pData[3]),
        .I1(vid_pData[2]),
        .I2(vid_pData[1]),
        .O(\n1d_1[3]_i_4_n_0 ));
  FDRE \n1d_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[0]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1d_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[1]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1d_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[2]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1d_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[3]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1q_m_2[0]_i_1__1 
       (.I0(\q_m_2[7]_i_1__1_n_0 ),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\n1q_m_2[0]_i_2__1_n_0 ),
        .I3(\q_m_2[4]_i_1__1_n_0 ),
        .I4(\q_m_2[5]_i_1__1_n_0 ),
        .I5(\q_m_2[6]_i_1__1_n_0 ),
        .O(\n1q_m_2[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1q_m_2[0]_i_2__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in2_in),
        .O(\n1q_m_2[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \n1q_m_2[1]_i_1__1 
       (.I0(\n1q_m_2[3]_i_3__1_n_0 ),
        .I1(\n1q_m_2[3]_i_4__1_n_0 ),
        .I2(\n1q_m_2[3]_i_2__1_n_0 ),
        .I3(\q_m_2[6]_i_1__1_n_0 ),
        .I4(\q_m_2[5]_i_1__1_n_0 ),
        .I5(\q_m_2[4]_i_1__1_n_0 ),
        .O(\n1q_m_2[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7EEEEEE8EEE8E888)) 
    \n1q_m_2[2]_i_1__1 
       (.I0(\n1q_m_2[3]_i_4__1_n_0 ),
        .I1(\n1q_m_2[3]_i_3__1_n_0 ),
        .I2(\q_m_2[5]_i_1__1_n_0 ),
        .I3(\q_m_2[6]_i_1__1_n_0 ),
        .I4(\q_m_2[4]_i_1__1_n_0 ),
        .I5(\n1q_m_2[3]_i_2__1_n_0 ),
        .O(\n1q_m_2[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \n1q_m_2[3]_i_1__1 
       (.I0(\n1q_m_2[3]_i_2__1_n_0 ),
        .I1(\q_m_2[4]_i_1__1_n_0 ),
        .I2(\q_m_2[6]_i_1__1_n_0 ),
        .I3(\q_m_2[5]_i_1__1_n_0 ),
        .I4(\n1q_m_2[3]_i_3__1_n_0 ),
        .I5(\n1q_m_2[3]_i_4__1_n_0 ),
        .O(\n1q_m_2[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[3]_i_2__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_5__1_n_0 ),
        .I2(p_0_in0_in),
        .I3(q_m_11__5),
        .O(\n1q_m_2[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h96C33C96)) 
    \n1q_m_2[3]_i_3__1 
       (.I0(q_m_11__5),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in0_in),
        .O(\n1q_m_2[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hA99AA66AA66AA99A)) 
    \n1q_m_2[3]_i_4__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in2_in),
        .I4(q_m_11__5),
        .I5(\n1q_m_2[3]_i_5__1_n_0 ),
        .O(\n1q_m_2[3]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[3]_i_5__1 
       (.I0(p_0_in10_in),
        .I1(p_0_in8_in),
        .I2(p_0_in6_in),
        .I3(p_0_in4_in),
        .O(\n1q_m_2[3]_i_5__1_n_0 ));
  FDRE \n1q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[0]_i_1__1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[1]_i_1__1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[2]_i_1__1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[3]_i_1__1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[0]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_1__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[0] ),
        .O(\pDataOutRaw[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[1]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_1__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[1] ),
        .O(\pDataOutRaw[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[2]_i_1__1 
       (.I0(\cnt_t_3[3]_i_4__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[2] ),
        .I2(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\pDataOutRaw[2]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[3]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_1__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[3] ),
        .O(\pDataOutRaw[3]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[4]_i_1__1 
       (.I0(\cnt_t_3[3]_i_4__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[4] ),
        .I2(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\pDataOutRaw[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[5]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_1__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[5] ),
        .O(\pDataOutRaw[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[6]_i_1__1 
       (.I0(\cnt_t_3[3]_i_4__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[6] ),
        .I2(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\pDataOutRaw[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pDataOutRaw[7]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_1__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[7] ),
        .O(\pDataOutRaw[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h111D333C551D550C)) 
    \pDataOutRaw[9]_i_1__0 
       (.I0(p_0_in),
        .I1(\cnt_t_3_reg_n_0_[4] ),
        .I2(\n1q_m_2_reg_n_0_[3] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .I4(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I5(\pDataOutRaw[9]_i_3__1_n_0 ),
        .O(\pDataOutRaw[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pDataOutRaw[9]_i_2__1 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .O(\pDataOutRaw[9]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \pDataOutRaw[9]_i_3__1 
       (.I0(\n1q_m_2_reg_n_0_[3] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .O(\pDataOutRaw[9]_i_3__1_n_0 ));
  FDRE \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \pDataOutRaw_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDSE \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .S(SR));
  FDRE \pDataOutRaw_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDSE \pDataOutRaw_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .S(SR));
  FDRE \pDataOutRaw_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDSE \pDataOutRaw_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .S(SR));
  FDRE \pDataOutRaw_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDSE \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(Q[8]),
        .S(SR));
  FDSE \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .S(SR));
  FDRE \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[1]),
        .Q(\pDataOut_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[2]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[3]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[4]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[5]),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[6]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[7]),
        .Q(p_0_in10_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEC11131111EEEE)) 
    \q_m_2[1]_i_1__1 
       (.I0(\n1d_1_reg_n_0_[2] ),
        .I1(\n1d_1_reg_n_0_[3] ),
        .I2(\n1d_1_reg_n_0_[1] ),
        .I3(\n1d_1_reg_n_0_[0] ),
        .I4(\pDataOut_1_reg_n_0_[1] ),
        .I5(\pDataOut_1_reg_n_0_[0] ),
        .O(\q_m_2[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .O(\q_m_2[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[3]_i_1__1 
       (.I0(p_0_in0_in),
        .I1(p_0_in2_in),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\pDataOut_1_reg_n_0_[1] ),
        .I4(q_m_11__5),
        .O(\q_m_2[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1__1 
       (.I0(p_0_in2_in),
        .I1(p_0_in4_in),
        .I2(p_0_in0_in),
        .I3(\pDataOut_1_reg_n_0_[1] ),
        .I4(\pDataOut_1_reg_n_0_[0] ),
        .O(\q_m_2[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q_m_2[5]_i_1__1 
       (.I0(q_m_11__5),
        .I1(p_0_in0_in),
        .I2(p_0_in2_in),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\pDataOut_1_reg_n_0_[1] ),
        .I5(\q_m_2[5]_i_2__1_n_0 ),
        .O(\q_m_2[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_m_2[5]_i_2__1 
       (.I0(p_0_in4_in),
        .I1(p_0_in6_in),
        .O(\q_m_2[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[6]_i_1__1 
       (.I0(\q_m_2[2]_i_1__1_n_0 ),
        .I1(p_0_in2_in),
        .I2(p_0_in4_in),
        .I3(p_0_in6_in),
        .I4(p_0_in8_in),
        .O(\q_m_2[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q_m_2[7]_i_1__1 
       (.I0(p_0_in10_in),
        .I1(p_0_in8_in),
        .I2(p_0_in6_in),
        .I3(p_0_in4_in),
        .I4(q_m_xor_1),
        .I5(q_m_11__5),
        .O(\q_m_2[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \q_m_2[7]_i_2__1 
       (.I0(\pDataOut_1_reg_n_0_[1] ),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(p_0_in2_in),
        .I3(p_0_in0_in),
        .O(q_m_xor_1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFEF0FFF0)) 
    \q_m_2[7]_i_3__1 
       (.I0(\n1d_1_reg_n_0_[0] ),
        .I1(\n1d_1_reg_n_0_[1] ),
        .I2(\n1d_1_reg_n_0_[3] ),
        .I3(\n1d_1_reg_n_0_[2] ),
        .I4(\pDataOut_1_reg_n_0_[0] ),
        .O(q_m_11__5));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0303030B)) 
    \q_m_2[8]_i_1__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1d_1_reg_n_0_[2] ),
        .I2(\n1d_1_reg_n_0_[3] ),
        .I3(\n1d_1_reg_n_0_[1] ),
        .I4(\n1d_1_reg_n_0_[0] ),
        .O(\q_m_2[8]_i_1__1_n_0 ));
  FDRE \q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[1]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[2]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[3]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_2_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[4]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_2_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[5]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_2_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[6]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_2_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[7]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1__1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rgb2dvi" *) (* kClkPrimitive = "PLL" *) (* kClkRange = "2" *) 
(* kClkSwap = "FALSE" *) (* kD0Swap = "FALSE" *) (* kD1Swap = "FALSE" *) 
(* kD2Swap = "FALSE" *) (* kGenerateSerialClk = "FALSE" *) (* kRstActiveHigh = "TRUE" *) 
module design_1_rgb2dvi_0_1_rgb2dvi
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    aRst,
    aRst_n,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    SerialClk);
  output TMDS_Clk_p;
  output TMDS_Clk_n;
  output [2:0]TMDS_Data_p;
  output [2:0]TMDS_Data_n;
  input aRst;
  input aRst_n;
  input [23:0]vid_pData;
  input vid_pVDE;
  input vid_pHSync;
  input vid_pVSync;
  input PixelClk;
  input SerialClk;

  wire PixelClk;
  wire SerialClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire [2:0]TMDS_Data_n;
  wire [2:0]TMDS_Data_p;
  wire aRst;
  wire [9:0]\pDataOutRaw[0] ;
  wire [9:0]\pDataOutRaw[1] ;
  wire [9:0]\pDataOutRaw[2] ;
  wire pRstLck;
  wire p_1_in;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  design_1_rgb2dvi_0_1_OutputSERDES ClockSerializer
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .aRst(pRstLck));
  design_1_rgb2dvi_0_1_TMDS_Encoder \DataEncoders[0].DataEncoder 
       (.PixelClk(PixelClk),
        .Q(\pDataOutRaw[0] ),
        .SR(p_1_in),
        .vid_pData(vid_pData[15:8]),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
  design_1_rgb2dvi_0_1_OutputSERDES_0 \DataEncoders[0].DataSerializer 
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Data_n(TMDS_Data_n[0]),
        .TMDS_Data_p(TMDS_Data_p[0]),
        .aRst(pRstLck),
        .pDataOut(\pDataOutRaw[0] ));
  design_1_rgb2dvi_0_1_TMDS_Encoder_1 \DataEncoders[1].DataEncoder 
       (.PixelClk(PixelClk),
        .Q(\pDataOutRaw[1] ),
        .SR(p_1_in),
        .vid_pData(vid_pData[7:0]));
  design_1_rgb2dvi_0_1_OutputSERDES_2 \DataEncoders[1].DataSerializer 
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Data_n(TMDS_Data_n[1]),
        .TMDS_Data_p(TMDS_Data_p[1]),
        .out(pRstLck),
        .pDataOut(\pDataOutRaw[1] ));
  design_1_rgb2dvi_0_1_TMDS_Encoder_3 \DataEncoders[2].DataEncoder 
       (.PixelClk(PixelClk),
        .Q(\pDataOutRaw[2] ),
        .SR(p_1_in),
        .vid_pData(vid_pData[23:16]));
  design_1_rgb2dvi_0_1_OutputSERDES_4 \DataEncoders[2].DataSerializer 
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Data_n(TMDS_Data_n[2]),
        .TMDS_Data_p(TMDS_Data_p[2]),
        .out(pRstLck),
        .pDataOut(\pDataOutRaw[2] ));
  design_1_rgb2dvi_0_1_ResetBridge LockLostReset
       (.PixelClk(PixelClk),
        .aRst(aRst),
        .out(pRstLck));
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
