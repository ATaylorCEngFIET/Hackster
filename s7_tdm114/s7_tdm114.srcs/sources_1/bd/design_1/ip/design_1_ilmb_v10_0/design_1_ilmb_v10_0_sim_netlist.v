// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  9 16:06:17 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_ilmb_v10_0 -prefix
//               design_1_ilmb_v10_0_ design_1_dlmb_v10_0_sim_netlist.v
// Design      : design_1_dlmb_v10_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dlmb_v10_0,lmb_v10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "lmb_v10,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_ilmb_v10_0
   (LMB_Clk,
    SYS_Rst,
    LMB_Rst,
    M_ABus,
    M_ReadStrobe,
    M_WriteStrobe,
    M_AddrStrobe,
    M_DBus,
    M_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    LMB_ABus,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_AddrStrobe,
    LMB_ReadDBus,
    LMB_WriteDBus,
    LMB_Ready,
    LMB_Wait,
    LMB_UE,
    LMB_CE,
    LMB_BE);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.LMB_Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.LMB_Clk, ASSOCIATED_BUSIF LMB_Sl_0:LMB_Sl_1:LMB_Sl_2:LMB_Sl_3:LMB_Sl_4:LMB_Sl_5:LMB_Sl_6:LMB_Sl_7:LMB_Sl_8:LMB_Sl_9:LMB_Sl_10:LMB_Sl_11:LMB_Sl_12:LMB_Sl_13:LMB_Sl_14:LMB_Sl_15:LMB_M, ASSOCIATED_RESET SYS_Rst, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk" *) input LMB_Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.SYS_Rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.SYS_Rst, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT" *) input SYS_Rst;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 RST, xilinx.com:interface:lmb:1.0 LMB_M RST" *) (* x_interface_parameter = "XIL_INTERFACENAME LMB_Sl_0, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, XIL_INTERFACENAME LMB_M, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE" *) output LMB_Rst;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M ABUS" *) input [0:31]M_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M READSTROBE" *) input M_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M WRITESTROBE" *) input M_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M ADDRSTROBE" *) input M_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M WRITEDBUS" *) input [0:31]M_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M BE" *) input [0:3]M_BE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READDBUS" *) input [0:31]Sl_DBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READY" *) input [0:0]Sl_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WAIT" *) input [0:0]Sl_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 UE" *) input [0:0]Sl_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 CE" *) input [0:0]Sl_CE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 ABUS" *) output [0:31]LMB_ABus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 READSTROBE" *) output LMB_ReadStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WRITESTROBE" *) output LMB_WriteStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 ADDRSTROBE" *) output LMB_AddrStrobe;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M READDBUS" *) output [0:31]LMB_ReadDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 WRITEDBUS" *) output [0:31]LMB_WriteDBus;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M READY" *) output LMB_Ready;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M WAIT" *) output LMB_Wait;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M UE" *) output LMB_UE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_M CE" *) output LMB_CE;
  (* x_interface_info = "xilinx.com:interface:lmb:1.0 LMB_Sl_0 BE" *) output [0:3]LMB_BE;

  wire [0:31]LMB_ABus;
  wire LMB_AddrStrobe;
  wire [0:3]LMB_BE;
  wire LMB_CE;
  wire LMB_Clk;
  wire [0:31]LMB_ReadDBus;
  wire LMB_ReadStrobe;
  wire LMB_Ready;
  wire LMB_Rst;
  wire LMB_UE;
  wire LMB_Wait;
  wire [0:31]LMB_WriteDBus;
  wire LMB_WriteStrobe;
  wire [0:31]M_ABus;
  wire M_AddrStrobe;
  wire [0:3]M_BE;
  wire [0:31]M_DBus;
  wire M_ReadStrobe;
  wire M_WriteStrobe;
  wire SYS_Rst;
  wire [0:0]Sl_CE;
  wire [0:31]Sl_DBus;
  wire [0:0]Sl_Ready;
  wire [0:0]Sl_UE;
  wire [0:0]Sl_Wait;

  (* C_EXT_RESET_HIGH = "1" *) 
  (* C_LMB_AWIDTH = "32" *) 
  (* C_LMB_DWIDTH = "32" *) 
  (* C_LMB_NUM_SLAVES = "1" *) 
  design_1_ilmb_v10_0_lmb_v10 U0
       (.LMB_ABus(LMB_ABus),
        .LMB_AddrStrobe(LMB_AddrStrobe),
        .LMB_BE(LMB_BE),
        .LMB_CE(LMB_CE),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadDBus(LMB_ReadDBus),
        .LMB_ReadStrobe(LMB_ReadStrobe),
        .LMB_Ready(LMB_Ready),
        .LMB_Rst(LMB_Rst),
        .LMB_UE(LMB_UE),
        .LMB_Wait(LMB_Wait),
        .LMB_WriteDBus(LMB_WriteDBus),
        .LMB_WriteStrobe(LMB_WriteStrobe),
        .M_ABus(M_ABus),
        .M_AddrStrobe(M_AddrStrobe),
        .M_BE(M_BE),
        .M_DBus(M_DBus),
        .M_ReadStrobe(M_ReadStrobe),
        .M_WriteStrobe(M_WriteStrobe),
        .SYS_Rst(SYS_Rst),
        .Sl_CE(Sl_CE),
        .Sl_DBus(Sl_DBus),
        .Sl_Ready(Sl_Ready),
        .Sl_UE(Sl_UE),
        .Sl_Wait(Sl_Wait));
endmodule

(* C_EXT_RESET_HIGH = "1" *) (* C_LMB_AWIDTH = "32" *) (* C_LMB_DWIDTH = "32" *) 
(* C_LMB_NUM_SLAVES = "1" *) 
module design_1_ilmb_v10_0_lmb_v10
   (LMB_Clk,
    SYS_Rst,
    LMB_Rst,
    M_ABus,
    M_ReadStrobe,
    M_WriteStrobe,
    M_AddrStrobe,
    M_DBus,
    M_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    LMB_ABus,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_AddrStrobe,
    LMB_ReadDBus,
    LMB_WriteDBus,
    LMB_Ready,
    LMB_Wait,
    LMB_UE,
    LMB_CE,
    LMB_BE);
  input LMB_Clk;
  input SYS_Rst;
  output LMB_Rst;
  input [0:31]M_ABus;
  input M_ReadStrobe;
  input M_WriteStrobe;
  input M_AddrStrobe;
  input [0:31]M_DBus;
  input [0:3]M_BE;
  input [0:31]Sl_DBus;
  input [0:0]Sl_Ready;
  input [0:0]Sl_Wait;
  input [0:0]Sl_UE;
  input [0:0]Sl_CE;
  output [0:31]LMB_ABus;
  output LMB_ReadStrobe;
  output LMB_WriteStrobe;
  output LMB_AddrStrobe;
  output [0:31]LMB_ReadDBus;
  output [0:31]LMB_WriteDBus;
  output LMB_Ready;
  output LMB_Wait;
  output LMB_UE;
  output LMB_CE;
  output [0:3]LMB_BE;

  wire LMB_Clk;
  wire LMB_Rst;
  wire [0:31]M_ABus;
  wire M_AddrStrobe;
  wire [0:3]M_BE;
  wire [0:31]M_DBus;
  wire M_ReadStrobe;
  wire M_WriteStrobe;
  wire SYS_Rst;
  wire [0:0]Sl_CE;
  wire [0:31]Sl_DBus;
  wire [0:0]Sl_Ready;
  wire [0:0]Sl_UE;
  wire [0:0]Sl_Wait;

  assign LMB_ABus[0:31] = M_ABus;
  assign LMB_AddrStrobe = M_AddrStrobe;
  assign LMB_BE[0:3] = M_BE;
  assign LMB_CE = Sl_CE;
  assign LMB_ReadDBus[0:31] = Sl_DBus;
  assign LMB_ReadStrobe = M_ReadStrobe;
  assign LMB_Ready = Sl_Ready;
  assign LMB_UE = Sl_UE;
  assign LMB_Wait = Sl_Wait;
  assign LMB_WriteDBus[0:31] = M_DBus;
  assign LMB_WriteStrobe = M_WriteStrobe;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  FDSE #(
    .INIT(1'b1)) 
    POR_FF_I
       (.C(LMB_Clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(LMB_Rst),
        .S(SYS_Rst));
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
