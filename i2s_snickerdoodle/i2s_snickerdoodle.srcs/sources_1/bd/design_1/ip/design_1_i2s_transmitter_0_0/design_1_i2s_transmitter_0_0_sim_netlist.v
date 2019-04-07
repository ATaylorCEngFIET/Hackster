// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Apr  6 17:57:32 2019
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/hdl_projects/i2s_snickerdoodle/i2s_snickerdoodle.srcs/sources_1/bd/design_1/ip/design_1_i2s_transmitter_0_0/design_1_i2s_transmitter_0_0_sim_netlist.v
// Design      : design_1_i2s_transmitter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_i2s_transmitter_0_0,i2s_transmitter_v1_0_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "i2s_transmitter_v1_0_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_i2s_transmitter_0_0
   (s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    aud_mclk,
    aud_mrst,
    s_axis_aud_aclk,
    s_axis_aud_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    irq,
    lrclk_in,
    sclk_in,
    sdata_0_out,
    s_axis_aud_tdata,
    s_axis_aud_tid,
    s_axis_aud_tvalid,
    s_axis_aud_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_ctrl_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_aclk, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET s_axi_ctrl_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_ctrl_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_ctrl_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aud_mclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_mclk, ASSOCIATED_RESET aud_mrst, FREQ_HZ 11904749, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input aud_mclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aud_mrst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_mrst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input aud_mrst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_aud_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aud_aclk, ASSOCIATED_BUSIF s_axis_aud, ASSOCIATED_RESET s_axis_aud_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axis_aud_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axis_aud_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aud_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aud_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input s_axi_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output s_axi_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) input [7:0]s_axi_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input s_axi_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output s_axi_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output s_axi_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input s_axi_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input s_axi_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output s_axi_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) input [7:0]s_axi_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output s_axi_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) input s_axi_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 49999947, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]s_axi_ctrl_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  input lrclk_in;
  input sclk_in;
  output sdata_0_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_aud TDATA" *) input [31:0]s_axis_aud_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_aud TID" *) input [2:0]s_axis_aud_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_aud TVALID" *) input s_axis_aud_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_aud TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aud, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_aud_tready;

  wire aud_mclk;
  wire aud_mrst;
  wire irq;
  wire lrclk_in;
  wire s_axi_ctrl_aclk;
  wire [7:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [7:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire s_axis_aud_aclk;
  wire s_axis_aud_aresetn;
  wire [31:0]s_axis_aud_tdata;
  wire [2:0]s_axis_aud_tid;
  wire s_axis_aud_tready;
  wire s_axis_aud_tvalid;
  wire sclk_in;
  wire sdata_0_out;
  wire NLW_inst_lrclk_out_UNCONNECTED;
  wire NLW_inst_sclk_out_UNCONNECTED;
  wire NLW_inst_sdata_1_out_UNCONNECTED;
  wire NLW_inst_sdata_2_out_UNCONNECTED;
  wire NLW_inst_sdata_3_out_UNCONNECTED;
  wire [15:0]NLW_inst_fifo_rdata_count_UNCONNECTED;
  wire [15:0]NLW_inst_fifo_wrdata_count_UNCONNECTED;

  (* C_DEPTH = "128" *) 
  (* C_DWIDTH = "16" *) 
  (* C_IS_MASTER = "0" *) 
  (* C_NUM_CHANNELS = "1" *) 
  design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2 inst
       (.aud_mclk(aud_mclk),
        .aud_mrst(aud_mrst),
        .fifo_rdata_count(NLW_inst_fifo_rdata_count_UNCONNECTED[15:0]),
        .fifo_wrdata_count(NLW_inst_fifo_wrdata_count_UNCONNECTED[15:0]),
        .irq(irq),
        .lrclk_in(lrclk_in),
        .lrclk_out(NLW_inst_lrclk_out_UNCONNECTED),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axis_aud_aclk(s_axis_aud_aclk),
        .s_axis_aud_aresetn(s_axis_aud_aresetn),
        .s_axis_aud_tdata(s_axis_aud_tdata),
        .s_axis_aud_tid(s_axis_aud_tid),
        .s_axis_aud_tready(s_axis_aud_tready),
        .s_axis_aud_tvalid(s_axis_aud_tvalid),
        .sclk_in(sclk_in),
        .sclk_out(NLW_inst_sclk_out_UNCONNECTED),
        .sdata_0_out(sdata_0_out),
        .sdata_1_out(NLW_inst_sdata_1_out_UNCONNECTED),
        .sdata_2_out(NLW_inst_sdata_2_out_UNCONNECTED),
        .sdata_3_out(NLW_inst_sdata_3_out_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* WIDTH = "3" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  wire src_clk;
  wire [2:0]src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;

  assign dest_out[2:0] = \syncstages_ff[1] ;
  FDRE \src_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[0]),
        .Q(async_path_bit[0]),
        .R(1'b0));
  FDRE \src_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[1]),
        .Q(async_path_bit[1]),
        .R(1'b0));
  FDRE \src_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[2]),
        .Q(async_path_bit[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_array_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [7:0]src_in;
  input dest_clk;
  output [7:0]dest_out;

  wire [7:0]async_path_bit;
  wire dest_clk;
  wire src_clk;
  wire [7:0]src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [7:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [7:0]\syncstages_ff[1] ;

  assign dest_out[7:0] = \syncstages_ff[1] ;
  FDRE \src_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[0]),
        .Q(async_path_bit[0]),
        .R(1'b0));
  FDRE \src_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[1]),
        .Q(async_path_bit[1]),
        .R(1'b0));
  FDRE \src_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[2]),
        .Q(async_path_bit[2]),
        .R(1'b0));
  FDRE \src_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[3]),
        .Q(async_path_bit[3]),
        .R(1'b0));
  FDRE \src_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[4]),
        .Q(async_path_bit[4]),
        .R(1'b0));
  FDRE \src_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[5]),
        .Q(async_path_bit[5]),
        .R(1'b0));
  FDRE \src_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[6]),
        .Q(async_path_bit[6]),
        .R(1'b0));
  FDRE \src_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[7]),
        .Q(async_path_bit[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[3]),
        .Q(\syncstages_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[4]),
        .Q(\syncstages_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[5]),
        .Q(\syncstages_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[6]),
        .Q(\syncstages_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[7]),
        .Q(\syncstages_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [3]),
        .Q(\syncstages_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [4]),
        .Q(\syncstages_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [5]),
        .Q(\syncstages_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [6]),
        .Q(\syncstages_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [7]),
        .Q(\syncstages_ff[1] [7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* WIDTH = "192" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_array_single__parameterized1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [191:0]src_in;
  input dest_clk;
  output [191:0]dest_out;

  wire [191:0]async_path_bit;
  wire dest_clk;
  wire src_clk;
  wire [191:0]src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [191:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [191:0]\syncstages_ff[1] ;

  assign dest_out[191:0] = \syncstages_ff[1] ;
  FDRE \src_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[0]),
        .Q(async_path_bit[0]),
        .R(1'b0));
  FDRE \src_ff_reg[100] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[100]),
        .Q(async_path_bit[100]),
        .R(1'b0));
  FDRE \src_ff_reg[101] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[101]),
        .Q(async_path_bit[101]),
        .R(1'b0));
  FDRE \src_ff_reg[102] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[102]),
        .Q(async_path_bit[102]),
        .R(1'b0));
  FDRE \src_ff_reg[103] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[103]),
        .Q(async_path_bit[103]),
        .R(1'b0));
  FDRE \src_ff_reg[104] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[104]),
        .Q(async_path_bit[104]),
        .R(1'b0));
  FDRE \src_ff_reg[105] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[105]),
        .Q(async_path_bit[105]),
        .R(1'b0));
  FDRE \src_ff_reg[106] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[106]),
        .Q(async_path_bit[106]),
        .R(1'b0));
  FDRE \src_ff_reg[107] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[107]),
        .Q(async_path_bit[107]),
        .R(1'b0));
  FDRE \src_ff_reg[108] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[108]),
        .Q(async_path_bit[108]),
        .R(1'b0));
  FDRE \src_ff_reg[109] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[109]),
        .Q(async_path_bit[109]),
        .R(1'b0));
  FDRE \src_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[10]),
        .Q(async_path_bit[10]),
        .R(1'b0));
  FDRE \src_ff_reg[110] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[110]),
        .Q(async_path_bit[110]),
        .R(1'b0));
  FDRE \src_ff_reg[111] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[111]),
        .Q(async_path_bit[111]),
        .R(1'b0));
  FDRE \src_ff_reg[112] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[112]),
        .Q(async_path_bit[112]),
        .R(1'b0));
  FDRE \src_ff_reg[113] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[113]),
        .Q(async_path_bit[113]),
        .R(1'b0));
  FDRE \src_ff_reg[114] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[114]),
        .Q(async_path_bit[114]),
        .R(1'b0));
  FDRE \src_ff_reg[115] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[115]),
        .Q(async_path_bit[115]),
        .R(1'b0));
  FDRE \src_ff_reg[116] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[116]),
        .Q(async_path_bit[116]),
        .R(1'b0));
  FDRE \src_ff_reg[117] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[117]),
        .Q(async_path_bit[117]),
        .R(1'b0));
  FDRE \src_ff_reg[118] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[118]),
        .Q(async_path_bit[118]),
        .R(1'b0));
  FDRE \src_ff_reg[119] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[119]),
        .Q(async_path_bit[119]),
        .R(1'b0));
  FDRE \src_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[11]),
        .Q(async_path_bit[11]),
        .R(1'b0));
  FDRE \src_ff_reg[120] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[120]),
        .Q(async_path_bit[120]),
        .R(1'b0));
  FDRE \src_ff_reg[121] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[121]),
        .Q(async_path_bit[121]),
        .R(1'b0));
  FDRE \src_ff_reg[122] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[122]),
        .Q(async_path_bit[122]),
        .R(1'b0));
  FDRE \src_ff_reg[123] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[123]),
        .Q(async_path_bit[123]),
        .R(1'b0));
  FDRE \src_ff_reg[124] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[124]),
        .Q(async_path_bit[124]),
        .R(1'b0));
  FDRE \src_ff_reg[125] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[125]),
        .Q(async_path_bit[125]),
        .R(1'b0));
  FDRE \src_ff_reg[126] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[126]),
        .Q(async_path_bit[126]),
        .R(1'b0));
  FDRE \src_ff_reg[127] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[127]),
        .Q(async_path_bit[127]),
        .R(1'b0));
  FDRE \src_ff_reg[128] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[128]),
        .Q(async_path_bit[128]),
        .R(1'b0));
  FDRE \src_ff_reg[129] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[129]),
        .Q(async_path_bit[129]),
        .R(1'b0));
  FDRE \src_ff_reg[12] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[12]),
        .Q(async_path_bit[12]),
        .R(1'b0));
  FDRE \src_ff_reg[130] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[130]),
        .Q(async_path_bit[130]),
        .R(1'b0));
  FDRE \src_ff_reg[131] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[131]),
        .Q(async_path_bit[131]),
        .R(1'b0));
  FDRE \src_ff_reg[132] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[132]),
        .Q(async_path_bit[132]),
        .R(1'b0));
  FDRE \src_ff_reg[133] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[133]),
        .Q(async_path_bit[133]),
        .R(1'b0));
  FDRE \src_ff_reg[134] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[134]),
        .Q(async_path_bit[134]),
        .R(1'b0));
  FDRE \src_ff_reg[135] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[135]),
        .Q(async_path_bit[135]),
        .R(1'b0));
  FDRE \src_ff_reg[136] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[136]),
        .Q(async_path_bit[136]),
        .R(1'b0));
  FDRE \src_ff_reg[137] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[137]),
        .Q(async_path_bit[137]),
        .R(1'b0));
  FDRE \src_ff_reg[138] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[138]),
        .Q(async_path_bit[138]),
        .R(1'b0));
  FDRE \src_ff_reg[139] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[139]),
        .Q(async_path_bit[139]),
        .R(1'b0));
  FDRE \src_ff_reg[13] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[13]),
        .Q(async_path_bit[13]),
        .R(1'b0));
  FDRE \src_ff_reg[140] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[140]),
        .Q(async_path_bit[140]),
        .R(1'b0));
  FDRE \src_ff_reg[141] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[141]),
        .Q(async_path_bit[141]),
        .R(1'b0));
  FDRE \src_ff_reg[142] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[142]),
        .Q(async_path_bit[142]),
        .R(1'b0));
  FDRE \src_ff_reg[143] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[143]),
        .Q(async_path_bit[143]),
        .R(1'b0));
  FDRE \src_ff_reg[144] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[144]),
        .Q(async_path_bit[144]),
        .R(1'b0));
  FDRE \src_ff_reg[145] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[145]),
        .Q(async_path_bit[145]),
        .R(1'b0));
  FDRE \src_ff_reg[146] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[146]),
        .Q(async_path_bit[146]),
        .R(1'b0));
  FDRE \src_ff_reg[147] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[147]),
        .Q(async_path_bit[147]),
        .R(1'b0));
  FDRE \src_ff_reg[148] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[148]),
        .Q(async_path_bit[148]),
        .R(1'b0));
  FDRE \src_ff_reg[149] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[149]),
        .Q(async_path_bit[149]),
        .R(1'b0));
  FDRE \src_ff_reg[14] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[14]),
        .Q(async_path_bit[14]),
        .R(1'b0));
  FDRE \src_ff_reg[150] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[150]),
        .Q(async_path_bit[150]),
        .R(1'b0));
  FDRE \src_ff_reg[151] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[151]),
        .Q(async_path_bit[151]),
        .R(1'b0));
  FDRE \src_ff_reg[152] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[152]),
        .Q(async_path_bit[152]),
        .R(1'b0));
  FDRE \src_ff_reg[153] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[153]),
        .Q(async_path_bit[153]),
        .R(1'b0));
  FDRE \src_ff_reg[154] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[154]),
        .Q(async_path_bit[154]),
        .R(1'b0));
  FDRE \src_ff_reg[155] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[155]),
        .Q(async_path_bit[155]),
        .R(1'b0));
  FDRE \src_ff_reg[156] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[156]),
        .Q(async_path_bit[156]),
        .R(1'b0));
  FDRE \src_ff_reg[157] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[157]),
        .Q(async_path_bit[157]),
        .R(1'b0));
  FDRE \src_ff_reg[158] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[158]),
        .Q(async_path_bit[158]),
        .R(1'b0));
  FDRE \src_ff_reg[159] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[159]),
        .Q(async_path_bit[159]),
        .R(1'b0));
  FDRE \src_ff_reg[15] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[15]),
        .Q(async_path_bit[15]),
        .R(1'b0));
  FDRE \src_ff_reg[160] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[160]),
        .Q(async_path_bit[160]),
        .R(1'b0));
  FDRE \src_ff_reg[161] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[161]),
        .Q(async_path_bit[161]),
        .R(1'b0));
  FDRE \src_ff_reg[162] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[162]),
        .Q(async_path_bit[162]),
        .R(1'b0));
  FDRE \src_ff_reg[163] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[163]),
        .Q(async_path_bit[163]),
        .R(1'b0));
  FDRE \src_ff_reg[164] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[164]),
        .Q(async_path_bit[164]),
        .R(1'b0));
  FDRE \src_ff_reg[165] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[165]),
        .Q(async_path_bit[165]),
        .R(1'b0));
  FDRE \src_ff_reg[166] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[166]),
        .Q(async_path_bit[166]),
        .R(1'b0));
  FDRE \src_ff_reg[167] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[167]),
        .Q(async_path_bit[167]),
        .R(1'b0));
  FDRE \src_ff_reg[168] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[168]),
        .Q(async_path_bit[168]),
        .R(1'b0));
  FDRE \src_ff_reg[169] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[169]),
        .Q(async_path_bit[169]),
        .R(1'b0));
  FDRE \src_ff_reg[16] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[16]),
        .Q(async_path_bit[16]),
        .R(1'b0));
  FDRE \src_ff_reg[170] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[170]),
        .Q(async_path_bit[170]),
        .R(1'b0));
  FDRE \src_ff_reg[171] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[171]),
        .Q(async_path_bit[171]),
        .R(1'b0));
  FDRE \src_ff_reg[172] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[172]),
        .Q(async_path_bit[172]),
        .R(1'b0));
  FDRE \src_ff_reg[173] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[173]),
        .Q(async_path_bit[173]),
        .R(1'b0));
  FDRE \src_ff_reg[174] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[174]),
        .Q(async_path_bit[174]),
        .R(1'b0));
  FDRE \src_ff_reg[175] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[175]),
        .Q(async_path_bit[175]),
        .R(1'b0));
  FDRE \src_ff_reg[176] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[176]),
        .Q(async_path_bit[176]),
        .R(1'b0));
  FDRE \src_ff_reg[177] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[177]),
        .Q(async_path_bit[177]),
        .R(1'b0));
  FDRE \src_ff_reg[178] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[178]),
        .Q(async_path_bit[178]),
        .R(1'b0));
  FDRE \src_ff_reg[179] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[179]),
        .Q(async_path_bit[179]),
        .R(1'b0));
  FDRE \src_ff_reg[17] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[17]),
        .Q(async_path_bit[17]),
        .R(1'b0));
  FDRE \src_ff_reg[180] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[180]),
        .Q(async_path_bit[180]),
        .R(1'b0));
  FDRE \src_ff_reg[181] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[181]),
        .Q(async_path_bit[181]),
        .R(1'b0));
  FDRE \src_ff_reg[182] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[182]),
        .Q(async_path_bit[182]),
        .R(1'b0));
  FDRE \src_ff_reg[183] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[183]),
        .Q(async_path_bit[183]),
        .R(1'b0));
  FDRE \src_ff_reg[184] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[184]),
        .Q(async_path_bit[184]),
        .R(1'b0));
  FDRE \src_ff_reg[185] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[185]),
        .Q(async_path_bit[185]),
        .R(1'b0));
  FDRE \src_ff_reg[186] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[186]),
        .Q(async_path_bit[186]),
        .R(1'b0));
  FDRE \src_ff_reg[187] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[187]),
        .Q(async_path_bit[187]),
        .R(1'b0));
  FDRE \src_ff_reg[188] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[188]),
        .Q(async_path_bit[188]),
        .R(1'b0));
  FDRE \src_ff_reg[189] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[189]),
        .Q(async_path_bit[189]),
        .R(1'b0));
  FDRE \src_ff_reg[18] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[18]),
        .Q(async_path_bit[18]),
        .R(1'b0));
  FDRE \src_ff_reg[190] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[190]),
        .Q(async_path_bit[190]),
        .R(1'b0));
  FDRE \src_ff_reg[191] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[191]),
        .Q(async_path_bit[191]),
        .R(1'b0));
  FDRE \src_ff_reg[19] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[19]),
        .Q(async_path_bit[19]),
        .R(1'b0));
  FDRE \src_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[1]),
        .Q(async_path_bit[1]),
        .R(1'b0));
  FDRE \src_ff_reg[20] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[20]),
        .Q(async_path_bit[20]),
        .R(1'b0));
  FDRE \src_ff_reg[21] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[21]),
        .Q(async_path_bit[21]),
        .R(1'b0));
  FDRE \src_ff_reg[22] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[22]),
        .Q(async_path_bit[22]),
        .R(1'b0));
  FDRE \src_ff_reg[23] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[23]),
        .Q(async_path_bit[23]),
        .R(1'b0));
  FDRE \src_ff_reg[24] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[24]),
        .Q(async_path_bit[24]),
        .R(1'b0));
  FDRE \src_ff_reg[25] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[25]),
        .Q(async_path_bit[25]),
        .R(1'b0));
  FDRE \src_ff_reg[26] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[26]),
        .Q(async_path_bit[26]),
        .R(1'b0));
  FDRE \src_ff_reg[27] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[27]),
        .Q(async_path_bit[27]),
        .R(1'b0));
  FDRE \src_ff_reg[28] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[28]),
        .Q(async_path_bit[28]),
        .R(1'b0));
  FDRE \src_ff_reg[29] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[29]),
        .Q(async_path_bit[29]),
        .R(1'b0));
  FDRE \src_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[2]),
        .Q(async_path_bit[2]),
        .R(1'b0));
  FDRE \src_ff_reg[30] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[30]),
        .Q(async_path_bit[30]),
        .R(1'b0));
  FDRE \src_ff_reg[31] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[31]),
        .Q(async_path_bit[31]),
        .R(1'b0));
  FDRE \src_ff_reg[32] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[32]),
        .Q(async_path_bit[32]),
        .R(1'b0));
  FDRE \src_ff_reg[33] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[33]),
        .Q(async_path_bit[33]),
        .R(1'b0));
  FDRE \src_ff_reg[34] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[34]),
        .Q(async_path_bit[34]),
        .R(1'b0));
  FDRE \src_ff_reg[35] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[35]),
        .Q(async_path_bit[35]),
        .R(1'b0));
  FDRE \src_ff_reg[36] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[36]),
        .Q(async_path_bit[36]),
        .R(1'b0));
  FDRE \src_ff_reg[37] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[37]),
        .Q(async_path_bit[37]),
        .R(1'b0));
  FDRE \src_ff_reg[38] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[38]),
        .Q(async_path_bit[38]),
        .R(1'b0));
  FDRE \src_ff_reg[39] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[39]),
        .Q(async_path_bit[39]),
        .R(1'b0));
  FDRE \src_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[3]),
        .Q(async_path_bit[3]),
        .R(1'b0));
  FDRE \src_ff_reg[40] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[40]),
        .Q(async_path_bit[40]),
        .R(1'b0));
  FDRE \src_ff_reg[41] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[41]),
        .Q(async_path_bit[41]),
        .R(1'b0));
  FDRE \src_ff_reg[42] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[42]),
        .Q(async_path_bit[42]),
        .R(1'b0));
  FDRE \src_ff_reg[43] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[43]),
        .Q(async_path_bit[43]),
        .R(1'b0));
  FDRE \src_ff_reg[44] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[44]),
        .Q(async_path_bit[44]),
        .R(1'b0));
  FDRE \src_ff_reg[45] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[45]),
        .Q(async_path_bit[45]),
        .R(1'b0));
  FDRE \src_ff_reg[46] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[46]),
        .Q(async_path_bit[46]),
        .R(1'b0));
  FDRE \src_ff_reg[47] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[47]),
        .Q(async_path_bit[47]),
        .R(1'b0));
  FDRE \src_ff_reg[48] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[48]),
        .Q(async_path_bit[48]),
        .R(1'b0));
  FDRE \src_ff_reg[49] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[49]),
        .Q(async_path_bit[49]),
        .R(1'b0));
  FDRE \src_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[4]),
        .Q(async_path_bit[4]),
        .R(1'b0));
  FDRE \src_ff_reg[50] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[50]),
        .Q(async_path_bit[50]),
        .R(1'b0));
  FDRE \src_ff_reg[51] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[51]),
        .Q(async_path_bit[51]),
        .R(1'b0));
  FDRE \src_ff_reg[52] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[52]),
        .Q(async_path_bit[52]),
        .R(1'b0));
  FDRE \src_ff_reg[53] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[53]),
        .Q(async_path_bit[53]),
        .R(1'b0));
  FDRE \src_ff_reg[54] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[54]),
        .Q(async_path_bit[54]),
        .R(1'b0));
  FDRE \src_ff_reg[55] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[55]),
        .Q(async_path_bit[55]),
        .R(1'b0));
  FDRE \src_ff_reg[56] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[56]),
        .Q(async_path_bit[56]),
        .R(1'b0));
  FDRE \src_ff_reg[57] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[57]),
        .Q(async_path_bit[57]),
        .R(1'b0));
  FDRE \src_ff_reg[58] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[58]),
        .Q(async_path_bit[58]),
        .R(1'b0));
  FDRE \src_ff_reg[59] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[59]),
        .Q(async_path_bit[59]),
        .R(1'b0));
  FDRE \src_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[5]),
        .Q(async_path_bit[5]),
        .R(1'b0));
  FDRE \src_ff_reg[60] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[60]),
        .Q(async_path_bit[60]),
        .R(1'b0));
  FDRE \src_ff_reg[61] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[61]),
        .Q(async_path_bit[61]),
        .R(1'b0));
  FDRE \src_ff_reg[62] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[62]),
        .Q(async_path_bit[62]),
        .R(1'b0));
  FDRE \src_ff_reg[63] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[63]),
        .Q(async_path_bit[63]),
        .R(1'b0));
  FDRE \src_ff_reg[64] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[64]),
        .Q(async_path_bit[64]),
        .R(1'b0));
  FDRE \src_ff_reg[65] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[65]),
        .Q(async_path_bit[65]),
        .R(1'b0));
  FDRE \src_ff_reg[66] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[66]),
        .Q(async_path_bit[66]),
        .R(1'b0));
  FDRE \src_ff_reg[67] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[67]),
        .Q(async_path_bit[67]),
        .R(1'b0));
  FDRE \src_ff_reg[68] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[68]),
        .Q(async_path_bit[68]),
        .R(1'b0));
  FDRE \src_ff_reg[69] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[69]),
        .Q(async_path_bit[69]),
        .R(1'b0));
  FDRE \src_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[6]),
        .Q(async_path_bit[6]),
        .R(1'b0));
  FDRE \src_ff_reg[70] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[70]),
        .Q(async_path_bit[70]),
        .R(1'b0));
  FDRE \src_ff_reg[71] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[71]),
        .Q(async_path_bit[71]),
        .R(1'b0));
  FDRE \src_ff_reg[72] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[72]),
        .Q(async_path_bit[72]),
        .R(1'b0));
  FDRE \src_ff_reg[73] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[73]),
        .Q(async_path_bit[73]),
        .R(1'b0));
  FDRE \src_ff_reg[74] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[74]),
        .Q(async_path_bit[74]),
        .R(1'b0));
  FDRE \src_ff_reg[75] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[75]),
        .Q(async_path_bit[75]),
        .R(1'b0));
  FDRE \src_ff_reg[76] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[76]),
        .Q(async_path_bit[76]),
        .R(1'b0));
  FDRE \src_ff_reg[77] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[77]),
        .Q(async_path_bit[77]),
        .R(1'b0));
  FDRE \src_ff_reg[78] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[78]),
        .Q(async_path_bit[78]),
        .R(1'b0));
  FDRE \src_ff_reg[79] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[79]),
        .Q(async_path_bit[79]),
        .R(1'b0));
  FDRE \src_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[7]),
        .Q(async_path_bit[7]),
        .R(1'b0));
  FDRE \src_ff_reg[80] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[80]),
        .Q(async_path_bit[80]),
        .R(1'b0));
  FDRE \src_ff_reg[81] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[81]),
        .Q(async_path_bit[81]),
        .R(1'b0));
  FDRE \src_ff_reg[82] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[82]),
        .Q(async_path_bit[82]),
        .R(1'b0));
  FDRE \src_ff_reg[83] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[83]),
        .Q(async_path_bit[83]),
        .R(1'b0));
  FDRE \src_ff_reg[84] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[84]),
        .Q(async_path_bit[84]),
        .R(1'b0));
  FDRE \src_ff_reg[85] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[85]),
        .Q(async_path_bit[85]),
        .R(1'b0));
  FDRE \src_ff_reg[86] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[86]),
        .Q(async_path_bit[86]),
        .R(1'b0));
  FDRE \src_ff_reg[87] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[87]),
        .Q(async_path_bit[87]),
        .R(1'b0));
  FDRE \src_ff_reg[88] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[88]),
        .Q(async_path_bit[88]),
        .R(1'b0));
  FDRE \src_ff_reg[89] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[89]),
        .Q(async_path_bit[89]),
        .R(1'b0));
  FDRE \src_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[8]),
        .Q(async_path_bit[8]),
        .R(1'b0));
  FDRE \src_ff_reg[90] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[90]),
        .Q(async_path_bit[90]),
        .R(1'b0));
  FDRE \src_ff_reg[91] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[91]),
        .Q(async_path_bit[91]),
        .R(1'b0));
  FDRE \src_ff_reg[92] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[92]),
        .Q(async_path_bit[92]),
        .R(1'b0));
  FDRE \src_ff_reg[93] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[93]),
        .Q(async_path_bit[93]),
        .R(1'b0));
  FDRE \src_ff_reg[94] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[94]),
        .Q(async_path_bit[94]),
        .R(1'b0));
  FDRE \src_ff_reg[95] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[95]),
        .Q(async_path_bit[95]),
        .R(1'b0));
  FDRE \src_ff_reg[96] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[96]),
        .Q(async_path_bit[96]),
        .R(1'b0));
  FDRE \src_ff_reg[97] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[97]),
        .Q(async_path_bit[97]),
        .R(1'b0));
  FDRE \src_ff_reg[98] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[98]),
        .Q(async_path_bit[98]),
        .R(1'b0));
  FDRE \src_ff_reg[99] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[99]),
        .Q(async_path_bit[99]),
        .R(1'b0));
  FDRE \src_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in[9]),
        .Q(async_path_bit[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][100] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[100]),
        .Q(\syncstages_ff[0] [100]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][101] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[101]),
        .Q(\syncstages_ff[0] [101]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][102] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[102]),
        .Q(\syncstages_ff[0] [102]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][103] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[103]),
        .Q(\syncstages_ff[0] [103]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][104] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[104]),
        .Q(\syncstages_ff[0] [104]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][105] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[105]),
        .Q(\syncstages_ff[0] [105]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][106] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[106]),
        .Q(\syncstages_ff[0] [106]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][107] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[107]),
        .Q(\syncstages_ff[0] [107]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][108] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[108]),
        .Q(\syncstages_ff[0] [108]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][109] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[109]),
        .Q(\syncstages_ff[0] [109]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[10]),
        .Q(\syncstages_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][110] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[110]),
        .Q(\syncstages_ff[0] [110]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][111] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[111]),
        .Q(\syncstages_ff[0] [111]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][112] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[112]),
        .Q(\syncstages_ff[0] [112]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][113] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[113]),
        .Q(\syncstages_ff[0] [113]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][114] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[114]),
        .Q(\syncstages_ff[0] [114]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][115] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[115]),
        .Q(\syncstages_ff[0] [115]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][116] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[116]),
        .Q(\syncstages_ff[0] [116]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][117] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[117]),
        .Q(\syncstages_ff[0] [117]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][118] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[118]),
        .Q(\syncstages_ff[0] [118]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][119] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[119]),
        .Q(\syncstages_ff[0] [119]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[11]),
        .Q(\syncstages_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][120] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[120]),
        .Q(\syncstages_ff[0] [120]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][121] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[121]),
        .Q(\syncstages_ff[0] [121]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][122] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[122]),
        .Q(\syncstages_ff[0] [122]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][123] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[123]),
        .Q(\syncstages_ff[0] [123]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][124] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[124]),
        .Q(\syncstages_ff[0] [124]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][125] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[125]),
        .Q(\syncstages_ff[0] [125]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][126] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[126]),
        .Q(\syncstages_ff[0] [126]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][127] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[127]),
        .Q(\syncstages_ff[0] [127]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][128] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[128]),
        .Q(\syncstages_ff[0] [128]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][129] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[129]),
        .Q(\syncstages_ff[0] [129]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[12]),
        .Q(\syncstages_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][130] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[130]),
        .Q(\syncstages_ff[0] [130]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][131] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[131]),
        .Q(\syncstages_ff[0] [131]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][132] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[132]),
        .Q(\syncstages_ff[0] [132]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][133] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[133]),
        .Q(\syncstages_ff[0] [133]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][134] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[134]),
        .Q(\syncstages_ff[0] [134]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][135] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[135]),
        .Q(\syncstages_ff[0] [135]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][136] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[136]),
        .Q(\syncstages_ff[0] [136]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][137] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[137]),
        .Q(\syncstages_ff[0] [137]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][138] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[138]),
        .Q(\syncstages_ff[0] [138]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][139] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[139]),
        .Q(\syncstages_ff[0] [139]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[13]),
        .Q(\syncstages_ff[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][140] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[140]),
        .Q(\syncstages_ff[0] [140]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][141] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[141]),
        .Q(\syncstages_ff[0] [141]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][142] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[142]),
        .Q(\syncstages_ff[0] [142]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][143] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[143]),
        .Q(\syncstages_ff[0] [143]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][144] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[144]),
        .Q(\syncstages_ff[0] [144]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][145] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[145]),
        .Q(\syncstages_ff[0] [145]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][146] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[146]),
        .Q(\syncstages_ff[0] [146]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][147] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[147]),
        .Q(\syncstages_ff[0] [147]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][148] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[148]),
        .Q(\syncstages_ff[0] [148]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][149] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[149]),
        .Q(\syncstages_ff[0] [149]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[14]),
        .Q(\syncstages_ff[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][150] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[150]),
        .Q(\syncstages_ff[0] [150]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][151] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[151]),
        .Q(\syncstages_ff[0] [151]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][152] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[152]),
        .Q(\syncstages_ff[0] [152]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][153] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[153]),
        .Q(\syncstages_ff[0] [153]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][154] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[154]),
        .Q(\syncstages_ff[0] [154]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][155] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[155]),
        .Q(\syncstages_ff[0] [155]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][156] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[156]),
        .Q(\syncstages_ff[0] [156]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][157] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[157]),
        .Q(\syncstages_ff[0] [157]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][158] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[158]),
        .Q(\syncstages_ff[0] [158]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][159] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[159]),
        .Q(\syncstages_ff[0] [159]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[15]),
        .Q(\syncstages_ff[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][160] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[160]),
        .Q(\syncstages_ff[0] [160]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][161] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[161]),
        .Q(\syncstages_ff[0] [161]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][162] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[162]),
        .Q(\syncstages_ff[0] [162]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][163] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[163]),
        .Q(\syncstages_ff[0] [163]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][164] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[164]),
        .Q(\syncstages_ff[0] [164]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][165] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[165]),
        .Q(\syncstages_ff[0] [165]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][166] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[166]),
        .Q(\syncstages_ff[0] [166]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][167] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[167]),
        .Q(\syncstages_ff[0] [167]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][168] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[168]),
        .Q(\syncstages_ff[0] [168]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][169] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[169]),
        .Q(\syncstages_ff[0] [169]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][170] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[170]),
        .Q(\syncstages_ff[0] [170]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][171] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[171]),
        .Q(\syncstages_ff[0] [171]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][172] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[172]),
        .Q(\syncstages_ff[0] [172]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][173] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[173]),
        .Q(\syncstages_ff[0] [173]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][174] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[174]),
        .Q(\syncstages_ff[0] [174]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][175] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[175]),
        .Q(\syncstages_ff[0] [175]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][176] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[176]),
        .Q(\syncstages_ff[0] [176]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][177] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[177]),
        .Q(\syncstages_ff[0] [177]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][178] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[178]),
        .Q(\syncstages_ff[0] [178]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][179] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[179]),
        .Q(\syncstages_ff[0] [179]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][180] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[180]),
        .Q(\syncstages_ff[0] [180]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][181] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[181]),
        .Q(\syncstages_ff[0] [181]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][182] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[182]),
        .Q(\syncstages_ff[0] [182]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][183] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[183]),
        .Q(\syncstages_ff[0] [183]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][184] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[184]),
        .Q(\syncstages_ff[0] [184]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][185] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[185]),
        .Q(\syncstages_ff[0] [185]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][186] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[186]),
        .Q(\syncstages_ff[0] [186]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][187] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[187]),
        .Q(\syncstages_ff[0] [187]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][188] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[188]),
        .Q(\syncstages_ff[0] [188]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][189] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[189]),
        .Q(\syncstages_ff[0] [189]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][190] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[190]),
        .Q(\syncstages_ff[0] [190]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][191] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[191]),
        .Q(\syncstages_ff[0] [191]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[23]),
        .Q(\syncstages_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[24]),
        .Q(\syncstages_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[25]),
        .Q(\syncstages_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[26]),
        .Q(\syncstages_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[27]),
        .Q(\syncstages_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[28]),
        .Q(\syncstages_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[29]),
        .Q(\syncstages_ff[0] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[30]),
        .Q(\syncstages_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[31]),
        .Q(\syncstages_ff[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[32]),
        .Q(\syncstages_ff[0] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[33]),
        .Q(\syncstages_ff[0] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[34]),
        .Q(\syncstages_ff[0] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[35]),
        .Q(\syncstages_ff[0] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[36]),
        .Q(\syncstages_ff[0] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[37]),
        .Q(\syncstages_ff[0] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[38]),
        .Q(\syncstages_ff[0] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[39]),
        .Q(\syncstages_ff[0] [39]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[3]),
        .Q(\syncstages_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[40]),
        .Q(\syncstages_ff[0] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[41]),
        .Q(\syncstages_ff[0] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[42]),
        .Q(\syncstages_ff[0] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[43]),
        .Q(\syncstages_ff[0] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[44]),
        .Q(\syncstages_ff[0] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[45]),
        .Q(\syncstages_ff[0] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[46]),
        .Q(\syncstages_ff[0] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[47]),
        .Q(\syncstages_ff[0] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[48]),
        .Q(\syncstages_ff[0] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[49]),
        .Q(\syncstages_ff[0] [49]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[4]),
        .Q(\syncstages_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[50]),
        .Q(\syncstages_ff[0] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[51]),
        .Q(\syncstages_ff[0] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[52]),
        .Q(\syncstages_ff[0] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[53]),
        .Q(\syncstages_ff[0] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[54]),
        .Q(\syncstages_ff[0] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[55]),
        .Q(\syncstages_ff[0] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[56]),
        .Q(\syncstages_ff[0] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[57]),
        .Q(\syncstages_ff[0] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[58]),
        .Q(\syncstages_ff[0] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[59]),
        .Q(\syncstages_ff[0] [59]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[5]),
        .Q(\syncstages_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[60]),
        .Q(\syncstages_ff[0] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[61]),
        .Q(\syncstages_ff[0] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[62]),
        .Q(\syncstages_ff[0] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[63]),
        .Q(\syncstages_ff[0] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[64]),
        .Q(\syncstages_ff[0] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[65]),
        .Q(\syncstages_ff[0] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[66]),
        .Q(\syncstages_ff[0] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[67]),
        .Q(\syncstages_ff[0] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[68]),
        .Q(\syncstages_ff[0] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[69]),
        .Q(\syncstages_ff[0] [69]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[6]),
        .Q(\syncstages_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[70]),
        .Q(\syncstages_ff[0] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[71]),
        .Q(\syncstages_ff[0] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[72]),
        .Q(\syncstages_ff[0] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[73]),
        .Q(\syncstages_ff[0] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[74]),
        .Q(\syncstages_ff[0] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[75]),
        .Q(\syncstages_ff[0] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[76]),
        .Q(\syncstages_ff[0] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[77]),
        .Q(\syncstages_ff[0] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[78]),
        .Q(\syncstages_ff[0] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[79]),
        .Q(\syncstages_ff[0] [79]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[7]),
        .Q(\syncstages_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[80]),
        .Q(\syncstages_ff[0] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[81]),
        .Q(\syncstages_ff[0] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[82]),
        .Q(\syncstages_ff[0] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[83]),
        .Q(\syncstages_ff[0] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[84]),
        .Q(\syncstages_ff[0] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[85]),
        .Q(\syncstages_ff[0] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[86]),
        .Q(\syncstages_ff[0] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[87]),
        .Q(\syncstages_ff[0] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[88]),
        .Q(\syncstages_ff[0] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[89]),
        .Q(\syncstages_ff[0] [89]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[8]),
        .Q(\syncstages_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[90]),
        .Q(\syncstages_ff[0] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[91]),
        .Q(\syncstages_ff[0] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[92]),
        .Q(\syncstages_ff[0] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[93]),
        .Q(\syncstages_ff[0] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[94]),
        .Q(\syncstages_ff[0] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[95]),
        .Q(\syncstages_ff[0] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[96]),
        .Q(\syncstages_ff[0] [96]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][97] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[97]),
        .Q(\syncstages_ff[0] [97]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][98] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[98]),
        .Q(\syncstages_ff[0] [98]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][99] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[99]),
        .Q(\syncstages_ff[0] [99]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[9]),
        .Q(\syncstages_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][100] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [100]),
        .Q(\syncstages_ff[1] [100]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][101] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [101]),
        .Q(\syncstages_ff[1] [101]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][102] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [102]),
        .Q(\syncstages_ff[1] [102]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][103] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [103]),
        .Q(\syncstages_ff[1] [103]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][104] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [104]),
        .Q(\syncstages_ff[1] [104]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][105] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [105]),
        .Q(\syncstages_ff[1] [105]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][106] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [106]),
        .Q(\syncstages_ff[1] [106]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][107] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [107]),
        .Q(\syncstages_ff[1] [107]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][108] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [108]),
        .Q(\syncstages_ff[1] [108]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][109] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [109]),
        .Q(\syncstages_ff[1] [109]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [10]),
        .Q(\syncstages_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][110] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [110]),
        .Q(\syncstages_ff[1] [110]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][111] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [111]),
        .Q(\syncstages_ff[1] [111]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][112] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [112]),
        .Q(\syncstages_ff[1] [112]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][113] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [113]),
        .Q(\syncstages_ff[1] [113]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][114] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [114]),
        .Q(\syncstages_ff[1] [114]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][115] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [115]),
        .Q(\syncstages_ff[1] [115]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][116] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [116]),
        .Q(\syncstages_ff[1] [116]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][117] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [117]),
        .Q(\syncstages_ff[1] [117]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][118] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [118]),
        .Q(\syncstages_ff[1] [118]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][119] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [119]),
        .Q(\syncstages_ff[1] [119]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [11]),
        .Q(\syncstages_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][120] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [120]),
        .Q(\syncstages_ff[1] [120]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][121] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [121]),
        .Q(\syncstages_ff[1] [121]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][122] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [122]),
        .Q(\syncstages_ff[1] [122]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][123] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [123]),
        .Q(\syncstages_ff[1] [123]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][124] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [124]),
        .Q(\syncstages_ff[1] [124]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][125] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [125]),
        .Q(\syncstages_ff[1] [125]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][126] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [126]),
        .Q(\syncstages_ff[1] [126]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][127] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [127]),
        .Q(\syncstages_ff[1] [127]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][128] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [128]),
        .Q(\syncstages_ff[1] [128]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][129] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [129]),
        .Q(\syncstages_ff[1] [129]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [12]),
        .Q(\syncstages_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][130] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [130]),
        .Q(\syncstages_ff[1] [130]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][131] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [131]),
        .Q(\syncstages_ff[1] [131]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][132] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [132]),
        .Q(\syncstages_ff[1] [132]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][133] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [133]),
        .Q(\syncstages_ff[1] [133]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][134] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [134]),
        .Q(\syncstages_ff[1] [134]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][135] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [135]),
        .Q(\syncstages_ff[1] [135]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][136] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [136]),
        .Q(\syncstages_ff[1] [136]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][137] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [137]),
        .Q(\syncstages_ff[1] [137]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][138] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [138]),
        .Q(\syncstages_ff[1] [138]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][139] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [139]),
        .Q(\syncstages_ff[1] [139]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [13]),
        .Q(\syncstages_ff[1] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][140] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [140]),
        .Q(\syncstages_ff[1] [140]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][141] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [141]),
        .Q(\syncstages_ff[1] [141]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][142] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [142]),
        .Q(\syncstages_ff[1] [142]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][143] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [143]),
        .Q(\syncstages_ff[1] [143]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][144] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [144]),
        .Q(\syncstages_ff[1] [144]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][145] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [145]),
        .Q(\syncstages_ff[1] [145]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][146] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [146]),
        .Q(\syncstages_ff[1] [146]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][147] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [147]),
        .Q(\syncstages_ff[1] [147]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][148] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [148]),
        .Q(\syncstages_ff[1] [148]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][149] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [149]),
        .Q(\syncstages_ff[1] [149]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [14]),
        .Q(\syncstages_ff[1] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][150] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [150]),
        .Q(\syncstages_ff[1] [150]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][151] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [151]),
        .Q(\syncstages_ff[1] [151]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][152] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [152]),
        .Q(\syncstages_ff[1] [152]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][153] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [153]),
        .Q(\syncstages_ff[1] [153]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][154] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [154]),
        .Q(\syncstages_ff[1] [154]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][155] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [155]),
        .Q(\syncstages_ff[1] [155]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][156] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [156]),
        .Q(\syncstages_ff[1] [156]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][157] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [157]),
        .Q(\syncstages_ff[1] [157]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][158] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [158]),
        .Q(\syncstages_ff[1] [158]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][159] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [159]),
        .Q(\syncstages_ff[1] [159]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [15]),
        .Q(\syncstages_ff[1] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][160] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [160]),
        .Q(\syncstages_ff[1] [160]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][161] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [161]),
        .Q(\syncstages_ff[1] [161]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][162] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [162]),
        .Q(\syncstages_ff[1] [162]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][163] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [163]),
        .Q(\syncstages_ff[1] [163]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][164] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [164]),
        .Q(\syncstages_ff[1] [164]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][165] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [165]),
        .Q(\syncstages_ff[1] [165]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][166] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [166]),
        .Q(\syncstages_ff[1] [166]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][167] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [167]),
        .Q(\syncstages_ff[1] [167]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][168] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [168]),
        .Q(\syncstages_ff[1] [168]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][169] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [169]),
        .Q(\syncstages_ff[1] [169]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][170] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [170]),
        .Q(\syncstages_ff[1] [170]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][171] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [171]),
        .Q(\syncstages_ff[1] [171]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][172] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [172]),
        .Q(\syncstages_ff[1] [172]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][173] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [173]),
        .Q(\syncstages_ff[1] [173]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][174] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [174]),
        .Q(\syncstages_ff[1] [174]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][175] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [175]),
        .Q(\syncstages_ff[1] [175]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][176] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [176]),
        .Q(\syncstages_ff[1] [176]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][177] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [177]),
        .Q(\syncstages_ff[1] [177]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][178] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [178]),
        .Q(\syncstages_ff[1] [178]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][179] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [179]),
        .Q(\syncstages_ff[1] [179]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][180] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [180]),
        .Q(\syncstages_ff[1] [180]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][181] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [181]),
        .Q(\syncstages_ff[1] [181]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][182] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [182]),
        .Q(\syncstages_ff[1] [182]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][183] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [183]),
        .Q(\syncstages_ff[1] [183]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][184] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [184]),
        .Q(\syncstages_ff[1] [184]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][185] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [185]),
        .Q(\syncstages_ff[1] [185]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][186] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [186]),
        .Q(\syncstages_ff[1] [186]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][187] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [187]),
        .Q(\syncstages_ff[1] [187]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][188] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [188]),
        .Q(\syncstages_ff[1] [188]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][189] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [189]),
        .Q(\syncstages_ff[1] [189]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][190] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [190]),
        .Q(\syncstages_ff[1] [190]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][191] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [191]),
        .Q(\syncstages_ff[1] [191]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [23]),
        .Q(\syncstages_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [24]),
        .Q(\syncstages_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [25]),
        .Q(\syncstages_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [26]),
        .Q(\syncstages_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [27]),
        .Q(\syncstages_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [28]),
        .Q(\syncstages_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [29]),
        .Q(\syncstages_ff[1] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [30]),
        .Q(\syncstages_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [31]),
        .Q(\syncstages_ff[1] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][32] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [32]),
        .Q(\syncstages_ff[1] [32]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][33] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [33]),
        .Q(\syncstages_ff[1] [33]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][34] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [34]),
        .Q(\syncstages_ff[1] [34]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][35] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [35]),
        .Q(\syncstages_ff[1] [35]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][36] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [36]),
        .Q(\syncstages_ff[1] [36]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][37] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [37]),
        .Q(\syncstages_ff[1] [37]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][38] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [38]),
        .Q(\syncstages_ff[1] [38]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][39] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [39]),
        .Q(\syncstages_ff[1] [39]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [3]),
        .Q(\syncstages_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][40] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [40]),
        .Q(\syncstages_ff[1] [40]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][41] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [41]),
        .Q(\syncstages_ff[1] [41]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][42] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [42]),
        .Q(\syncstages_ff[1] [42]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][43] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [43]),
        .Q(\syncstages_ff[1] [43]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][44] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [44]),
        .Q(\syncstages_ff[1] [44]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][45] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [45]),
        .Q(\syncstages_ff[1] [45]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][46] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [46]),
        .Q(\syncstages_ff[1] [46]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][47] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [47]),
        .Q(\syncstages_ff[1] [47]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][48] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [48]),
        .Q(\syncstages_ff[1] [48]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][49] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [49]),
        .Q(\syncstages_ff[1] [49]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [4]),
        .Q(\syncstages_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][50] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [50]),
        .Q(\syncstages_ff[1] [50]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][51] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [51]),
        .Q(\syncstages_ff[1] [51]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][52] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [52]),
        .Q(\syncstages_ff[1] [52]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][53] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [53]),
        .Q(\syncstages_ff[1] [53]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][54] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [54]),
        .Q(\syncstages_ff[1] [54]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][55] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [55]),
        .Q(\syncstages_ff[1] [55]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][56] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [56]),
        .Q(\syncstages_ff[1] [56]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][57] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [57]),
        .Q(\syncstages_ff[1] [57]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][58] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [58]),
        .Q(\syncstages_ff[1] [58]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][59] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [59]),
        .Q(\syncstages_ff[1] [59]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [5]),
        .Q(\syncstages_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][60] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [60]),
        .Q(\syncstages_ff[1] [60]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][61] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [61]),
        .Q(\syncstages_ff[1] [61]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][62] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [62]),
        .Q(\syncstages_ff[1] [62]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][63] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [63]),
        .Q(\syncstages_ff[1] [63]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][64] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [64]),
        .Q(\syncstages_ff[1] [64]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][65] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [65]),
        .Q(\syncstages_ff[1] [65]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][66] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [66]),
        .Q(\syncstages_ff[1] [66]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][67] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [67]),
        .Q(\syncstages_ff[1] [67]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][68] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [68]),
        .Q(\syncstages_ff[1] [68]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][69] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [69]),
        .Q(\syncstages_ff[1] [69]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [6]),
        .Q(\syncstages_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][70] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [70]),
        .Q(\syncstages_ff[1] [70]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][71] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [71]),
        .Q(\syncstages_ff[1] [71]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][72] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [72]),
        .Q(\syncstages_ff[1] [72]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][73] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [73]),
        .Q(\syncstages_ff[1] [73]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][74] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [74]),
        .Q(\syncstages_ff[1] [74]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][75] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [75]),
        .Q(\syncstages_ff[1] [75]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][76] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [76]),
        .Q(\syncstages_ff[1] [76]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][77] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [77]),
        .Q(\syncstages_ff[1] [77]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][78] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [78]),
        .Q(\syncstages_ff[1] [78]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][79] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [79]),
        .Q(\syncstages_ff[1] [79]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [7]),
        .Q(\syncstages_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][80] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [80]),
        .Q(\syncstages_ff[1] [80]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][81] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [81]),
        .Q(\syncstages_ff[1] [81]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][82] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [82]),
        .Q(\syncstages_ff[1] [82]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][83] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [83]),
        .Q(\syncstages_ff[1] [83]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][84] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [84]),
        .Q(\syncstages_ff[1] [84]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][85] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [85]),
        .Q(\syncstages_ff[1] [85]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][86] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [86]),
        .Q(\syncstages_ff[1] [86]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][87] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [87]),
        .Q(\syncstages_ff[1] [87]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][88] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [88]),
        .Q(\syncstages_ff[1] [88]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][89] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [89]),
        .Q(\syncstages_ff[1] [89]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [8]),
        .Q(\syncstages_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][90] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [90]),
        .Q(\syncstages_ff[1] [90]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][91] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [91]),
        .Q(\syncstages_ff[1] [91]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][92] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [92]),
        .Q(\syncstages_ff[1] [92]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][93] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [93]),
        .Q(\syncstages_ff[1] [93]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][94] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [94]),
        .Q(\syncstages_ff[1] [94]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][95] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [95]),
        .Q(\syncstages_ff[1] [95]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][96] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [96]),
        .Q(\syncstages_ff[1] [96]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][97] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [97]),
        .Q(\syncstages_ff[1] [97]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][98] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [98]),
        .Q(\syncstages_ff[1] [98]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][99] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [99]),
        .Q(\syncstages_ff[1] [99]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [9]),
        .Q(\syncstages_ff[1] [9]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [5:0]\^dest_out_bin ;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  assign dest_out_bin[6] = \dest_graysync_ff[1] [6];
  assign dest_out_bin[5:0] = \^dest_out_bin [5:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [1]),
        .O(\^dest_out_bin [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [5:0]\^dest_out_bin ;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  assign dest_out_bin[6] = \dest_graysync_ff[1] [6];
  assign dest_out_bin[5:0] = \^dest_out_bin [5:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [1]),
        .O(\^dest_out_bin [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[3] ;
  wire [6:0]\^dest_out_bin ;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  assign dest_out_bin[7] = \dest_graysync_ff[3] [7];
  assign dest_out_bin[6:0] = \^dest_out_bin [6:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\^dest_out_bin [2]),
        .I2(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\^dest_out_bin [2]),
        .O(\^dest_out_bin [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [6]),
        .I3(\dest_graysync_ff[3] [7]),
        .I4(\dest_graysync_ff[3] [5]),
        .I5(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [5]),
        .I2(\dest_graysync_ff[3] [7]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [7]),
        .I3(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [7]),
        .I2(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [6]),
        .I1(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [6:0]\^dest_out_bin ;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  assign dest_out_bin[7] = \dest_graysync_ff[1] [7];
  assign dest_out_bin[6:0] = \^dest_out_bin [6:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [2]),
        .O(\^dest_out_bin [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_pulse" *) 
(* REG_OUTPUT = "1" *) (* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "PULSE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_pulse
   (src_clk,
    src_pulse,
    dest_clk,
    src_rst,
    dest_rst,
    dest_pulse);
  input src_clk;
  input src_pulse;
  input dest_clk;
  input src_rst;
  input dest_rst;
  output dest_pulse;

  wire dest_clk;
  wire dest_event_ff;
  wire dest_pulse;
  wire dest_pulse_int;
  wire dest_rst;
  wire dest_sync_out;
  wire src_clk;
  wire src_in_ff;
  wire src_level_ff;
  wire src_level_nxt;
  wire src_pulse;
  wire src_rst;

  FDRE dest_event_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_sync_out),
        .Q(dest_event_ff),
        .R(dest_rst));
  LUT2 #(
    .INIT(4'h6)) 
    dest_pulse_ff_i_1
       (.I0(dest_event_ff),
        .I1(dest_sync_out),
        .O(dest_pulse_int));
  FDRE dest_pulse_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_pulse_int),
        .Q(dest_pulse),
        .R(dest_rst));
  FDRE src_in_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_pulse),
        .Q(src_in_ff),
        .R(src_rst));
  LUT3 #(
    .INIT(8'hB4)) 
    src_level_ff_i_1
       (.I0(src_in_ff),
        .I1(src_pulse),
        .I2(src_level_ff),
        .O(src_level_nxt));
  FDRE #(
    .INIT(1'b0)) 
    src_level_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_level_nxt),
        .Q(src_level_ff),
        .R(src_rst));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized0 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(src_clk),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_pulse" *) 
(* REG_OUTPUT = "1" *) (* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "PULSE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_pulse__parameterized0
   (src_clk,
    src_pulse,
    dest_clk,
    src_rst,
    dest_rst,
    dest_pulse);
  input src_clk;
  input src_pulse;
  input dest_clk;
  input src_rst;
  input dest_rst;
  output dest_pulse;

  wire dest_clk;
  wire dest_event_ff;
  wire dest_pulse;
  wire dest_pulse_int;
  wire dest_rst;
  wire dest_sync_out;
  wire src_clk;
  wire src_in_ff;
  wire src_in_ff_i_1_n_0;
  wire src_level_ff;
  wire src_level_ff_i_1_n_0;
  wire src_pulse;
  wire src_rst;

  FDRE dest_event_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_sync_out),
        .Q(dest_event_ff),
        .R(dest_rst));
  LUT2 #(
    .INIT(4'h6)) 
    dest_pulse_ff_i_1
       (.I0(dest_event_ff),
        .I1(dest_sync_out),
        .O(dest_pulse_int));
  FDRE dest_pulse_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_pulse_int),
        .Q(dest_pulse),
        .R(dest_rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    src_in_ff_i_1
       (.I0(src_pulse),
        .I1(src_rst),
        .O(src_in_ff_i_1_n_0));
  FDRE src_in_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_ff_i_1_n_0),
        .Q(src_in_ff),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    src_level_ff_i_1
       (.I0(src_level_ff),
        .I1(src_pulse),
        .I2(src_in_ff),
        .I3(src_rst),
        .O(src_level_ff_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_level_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_level_ff_i_1_n_0),
        .Q(src_level_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized1 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(src_clk),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_pulse" *) 
(* REG_OUTPUT = "1" *) (* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "PULSE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_pulse__parameterized0__xdcDup__1
   (src_clk,
    src_pulse,
    dest_clk,
    src_rst,
    dest_rst,
    dest_pulse);
  input src_clk;
  input src_pulse;
  input dest_clk;
  input src_rst;
  input dest_rst;
  output dest_pulse;

  wire dest_clk;
  wire dest_event_ff;
  wire dest_pulse;
  wire dest_pulse_int;
  wire dest_rst;
  wire dest_sync_out;
  wire src_clk;
  wire src_in_ff;
  wire src_level_ff;
  wire src_level_nxt;
  wire src_pulse;
  wire src_rst;

  FDRE dest_event_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_sync_out),
        .Q(dest_event_ff),
        .R(dest_rst));
  LUT2 #(
    .INIT(4'h6)) 
    dest_pulse_ff_i_1
       (.I0(dest_event_ff),
        .I1(dest_sync_out),
        .O(dest_pulse_int));
  FDRE dest_pulse_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_pulse_int),
        .Q(dest_pulse),
        .R(dest_rst));
  FDRE src_in_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_pulse),
        .Q(src_in_ff),
        .R(src_rst));
  LUT3 #(
    .INIT(8'hB4)) 
    src_level_ff_i_1
       (.I0(src_in_ff),
        .I1(src_pulse),
        .I2(src_level_ff),
        .O(src_level_nxt));
  FDRE #(
    .INIT(1'b0)) 
    src_level_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_level_nxt),
        .Q(src_level_ff),
        .R(src_rst));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized1__4 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(src_clk),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_pulse" *) 
(* REG_OUTPUT = "1" *) (* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "PULSE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_pulse__parameterized0__xdcDup__2
   (src_clk,
    src_pulse,
    dest_clk,
    src_rst,
    dest_rst,
    dest_pulse);
  input src_clk;
  input src_pulse;
  input dest_clk;
  input src_rst;
  input dest_rst;
  output dest_pulse;

  wire dest_clk;
  wire dest_event_ff;
  wire dest_pulse;
  wire dest_pulse_int;
  wire dest_rst;
  wire dest_sync_out;
  wire src_clk;
  wire src_in_ff;
  wire src_level_ff;
  wire src_level_nxt;
  wire src_pulse;
  wire src_rst;

  FDRE dest_event_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_sync_out),
        .Q(dest_event_ff),
        .R(dest_rst));
  LUT2 #(
    .INIT(4'h6)) 
    dest_pulse_ff_i_1
       (.I0(dest_event_ff),
        .I1(dest_sync_out),
        .O(dest_pulse_int));
  FDRE dest_pulse_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_pulse_int),
        .Q(dest_pulse),
        .R(dest_rst));
  FDRE src_in_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_pulse),
        .Q(src_in_ff),
        .R(src_rst));
  LUT3 #(
    .INIT(8'hB4)) 
    src_level_ff_i_1
       (.I0(src_in_ff),
        .I1(src_pulse),
        .I2(src_level_ff),
        .O(src_level_nxt));
  FDRE #(
    .INIT(1'b0)) 
    src_level_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_level_nxt),
        .Q(src_level_ff),
        .R(src_rst));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized1__5 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(src_clk),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_pulse" *) 
(* REG_OUTPUT = "1" *) (* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "PULSE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_pulse__parameterized0__xdcDup__3
   (src_clk,
    src_pulse,
    dest_clk,
    src_rst,
    dest_rst,
    dest_pulse);
  input src_clk;
  input src_pulse;
  input dest_clk;
  input src_rst;
  input dest_rst;
  output dest_pulse;

  wire dest_clk;
  wire dest_event_ff;
  wire dest_pulse;
  wire dest_pulse_int;
  wire dest_rst;
  wire dest_sync_out;
  wire src_clk;
  wire src_in_ff;
  wire src_level_ff;
  wire src_level_nxt;
  wire src_pulse;
  wire src_rst;

  FDRE dest_event_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_sync_out),
        .Q(dest_event_ff),
        .R(dest_rst));
  LUT2 #(
    .INIT(4'h6)) 
    dest_pulse_ff_i_1
       (.I0(dest_event_ff),
        .I1(dest_sync_out),
        .O(dest_pulse_int));
  FDRE dest_pulse_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_pulse_int),
        .Q(dest_pulse),
        .R(dest_rst));
  FDRE src_in_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_pulse),
        .Q(src_in_ff),
        .R(src_rst));
  LUT3 #(
    .INIT(8'hB4)) 
    src_level_ff_i_1
       (.I0(src_in_ff),
        .I1(src_pulse),
        .I2(src_level_ff),
        .O(src_level_nxt));
  FDRE #(
    .INIT(1'b0)) 
    src_level_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_level_nxt),
        .Q(src_level_ff),
        .R(src_rst));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized1__6 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(src_clk),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__5
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__7
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__8
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
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
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized1
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized1__4
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized1__5
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
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
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_single__parameterized1__6
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
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
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_i2s_transmitter_0_0_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_i2s_transmitter_0_0_xpm_counter_updn
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [6:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [6:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized0
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [6:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [6:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized1
   (\count_value_i_reg[1]_0 ,
    src_in_bin,
    \count_value_i_reg[0]_0 ,
    CO,
    D,
    Q,
    \grdc.rd_data_count_i_reg[3] ,
    DI,
    S,
    \count_value_i_reg[1]_1 ,
    \count_value_i_reg[1]_2 ,
    ram_empty_i,
    rd_en,
    rd_clk);
  output \count_value_i_reg[1]_0 ;
  output [0:0]src_in_bin;
  output \count_value_i_reg[0]_0 ;
  output [0:0]CO;
  output [3:0]D;
  input [1:0]Q;
  input [0:0]\grdc.rd_data_count_i_reg[3] ;
  input [1:0]DI;
  input [1:0]S;
  input \count_value_i_reg[1]_1 ;
  input [1:0]\count_value_i_reg[1]_2 ;
  input ram_empty_i;
  input rd_en;
  input rd_clk;

  wire [0:0]CO;
  wire [3:0]D;
  wire [1:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[1]_1 ;
  wire [1:0]\count_value_i_reg[1]_2 ;
  wire \grdc.rd_data_count_i[3]_i_3_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_4_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_7_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_8_n_0 ;
  wire [0:0]\grdc.rd_data_count_i_reg[3] ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_1 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_3 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT6 #(
    .INIT(64'h06060A00090A0505)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(rd_en),
        .I2(\count_value_i_reg[1]_1 ),
        .I3(\count_value_i_reg[1]_2 [0]),
        .I4(\count_value_i_reg[1]_2 [1]),
        .I5(ram_empty_i),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22202222)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[1]_1 ),
        .I2(\count_value_i_reg[1]_2 [0]),
        .I3(\count_value_i_reg[1]_2 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBDBFF5F542400A0A)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(rd_en),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[1]_2 [0]),
        .I4(\count_value_i_reg[1]_2 [1]),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q[0]),
        .I2(\count_value_i_reg[1]_0 ),
        .I3(Q[1]),
        .O(src_in_bin));
  LUT3 #(
    .INIT(8'hB2)) 
    \grdc.rd_data_count_i[3]_i_3 
       (.I0(\count_value_i_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[3] ),
        .O(\grdc.rd_data_count_i[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[3]_i_4 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q[0]),
        .O(\grdc.rd_data_count_i[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \grdc.rd_data_count_i[3]_i_7 
       (.I0(\grdc.rd_data_count_i[3]_i_4_n_0 ),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[3] ),
        .O(\grdc.rd_data_count_i[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[3]_i_8 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q[0]),
        .I2(DI[0]),
        .O(\grdc.rd_data_count_i[3]_i_8_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({CO,\grdc.rd_data_count_i_reg[3]_i_1_n_1 ,\grdc.rd_data_count_i_reg[3]_i_1_n_2 ,\grdc.rd_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({DI[1],\grdc.rd_data_count_i[3]_i_3_n_0 ,\grdc.rd_data_count_i[3]_i_4_n_0 ,DI[0]}),
        .O(D),
        .S({S,\grdc.rd_data_count_i[3]_i_7_n_0 ,\grdc.rd_data_count_i[3]_i_8_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized2
   (E,
    \count_value_i_reg[6]_0 ,
    p_1_in,
    D,
    \reg_out_i_reg[0] ,
    S,
    src_in_bin,
    Q,
    rd_en,
    ram_empty_i,
    \src_gray_ff_reg[2] ,
    \src_gray_ff_reg[2]_0 ,
    \grdc.rd_data_count_i_reg[7] ,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] ,
    DI,
    CO,
    \grdc.rd_data_count_i_reg[7]_0 ,
    \count_value_i_reg[7]_0 ,
    rd_clk);
  output [0:0]E;
  output [6:0]\count_value_i_reg[6]_0 ;
  output p_1_in;
  output [6:0]D;
  output [3:0]\reg_out_i_reg[0] ;
  output [0:0]S;
  output [6:0]src_in_bin;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input \src_gray_ff_reg[2] ;
  input \src_gray_ff_reg[2]_0 ;
  input [5:0]\grdc.rd_data_count_i_reg[7] ;
  input [6:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] ;
  input [0:0]DI;
  input [0:0]CO;
  input [2:0]\grdc.rd_data_count_i_reg[7]_0 ;
  input \count_value_i_reg[7]_0 ;
  input rd_clk;

  wire [0:0]CO;
  wire [6:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__4_n_0 ;
  wire \count_value_i[5]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_1__4_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire [6:0]\count_value_i_reg[6]_0 ;
  wire \count_value_i_reg[7]_0 ;
  wire \count_value_i_reg_n_0_[7] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 ;
  wire [6:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_3 ;
  wire \grdc.rd_data_count_i[7]_i_6_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_7_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_8_n_0 ;
  wire \grdc.rd_data_count_i[7]_i_9_n_0 ;
  wire [5:0]\grdc.rd_data_count_i_reg[7] ;
  wire [2:0]\grdc.rd_data_count_i_reg[7]_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_2_n_1 ;
  wire \grdc.rd_data_count_i_reg[7]_i_2_n_2 ;
  wire \grdc.rd_data_count_i_reg[7]_i_2_n_3 ;
  wire p_1_in;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [3:0]\reg_out_i_reg[0] ;
  wire \src_gray_ff_reg[2] ;
  wire \src_gray_ff_reg[2]_0 ;
  wire [6:0]src_in_bin;
  wire [3:2]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_grdc.rd_data_count_i_reg[7]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFF0200FD)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[6]_0 [0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h10FFEF00)) 
    \count_value_i[1]_i_1__4 
       (.I0(rd_en),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[6]_0 [0]),
        .I4(\count_value_i_reg[6]_0 [1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \count_value_i[2]_i_1__4 
       (.I0(\count_value_i_reg[6]_0 [1]),
        .I1(\count_value_i_reg[6]_0 [0]),
        .I2(p_1_in),
        .I3(\count_value_i_reg[6]_0 [2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \count_value_i[3]_i_1__4 
       (.I0(\count_value_i_reg[6]_0 [2]),
        .I1(p_1_in),
        .I2(\count_value_i_reg[6]_0 [0]),
        .I3(\count_value_i_reg[6]_0 [1]),
        .I4(\count_value_i_reg[6]_0 [3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \count_value_i[4]_i_1__4 
       (.I0(\count_value_i_reg[6]_0 [3]),
        .I1(\count_value_i_reg[6]_0 [1]),
        .I2(\count_value_i_reg[6]_0 [0]),
        .I3(p_1_in),
        .I4(\count_value_i_reg[6]_0 [2]),
        .I5(\count_value_i_reg[6]_0 [4]),
        .O(\count_value_i[4]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \count_value_i[4]_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[5]_i_1__4 
       (.I0(\count_value_i_reg[6]_0 [4]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[6]_0 [5]),
        .O(\count_value_i[5]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[6]_i_1__4 
       (.I0(\count_value_i[7]_i_2__0_n_0 ),
        .I1(\count_value_i_reg[6]_0 [4]),
        .I2(\count_value_i_reg[6]_0 [5]),
        .I3(\count_value_i_reg[6]_0 [6]),
        .O(\count_value_i[6]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[7]_i_1__0 
       (.I0(\count_value_i[7]_i_2__0_n_0 ),
        .I1(\count_value_i_reg[6]_0 [6]),
        .I2(\count_value_i_reg[6]_0 [5]),
        .I3(\count_value_i_reg[6]_0 [4]),
        .I4(\count_value_i_reg_n_0_[7] ),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(\count_value_i_reg[6]_0 [2]),
        .I1(p_1_in),
        .I2(\count_value_i_reg[6]_0 [0]),
        .I3(\count_value_i_reg[6]_0 [1]),
        .I4(\count_value_i_reg[6]_0 [3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(\count_value_i_reg[6]_0 [0]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[6]_0 [1]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[6]_0 [2]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[6]_0 [3]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[6]_0 [4]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[6]_0 [5]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__4_n_0 ),
        .Q(\count_value_i_reg[6]_0 [6]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[7] ),
        .R(\count_value_i_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 ),
        .I1(\count_value_i_reg[6]_0 [4]),
        .I2(\count_value_i_reg[6]_0 [5]),
        .I3(\count_value_i_reg[6]_0 [6]),
        .I4(\count_value_i_reg_n_0_[7] ),
        .O(src_in_bin[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(\count_value_i_reg[6]_0 [5]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 ),
        .I2(\count_value_i_reg[6]_0 [4]),
        .I3(\count_value_i_reg[6]_0 [6]),
        .O(src_in_bin[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(\count_value_i_reg[6]_0 [4]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 ),
        .I2(\count_value_i_reg[6]_0 [5]),
        .O(src_in_bin[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 ),
        .I1(\count_value_i_reg[6]_0 [4]),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hEAFEFAFF15010500)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(\count_value_i_reg[6]_0 [2]),
        .I1(\count_value_i_reg[6]_0 [0]),
        .I2(\count_value_i_reg[6]_0 [1]),
        .I3(\src_gray_ff_reg[2] ),
        .I4(\src_gray_ff_reg[2]_0 ),
        .I5(\count_value_i_reg[6]_0 [3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hF3710C8E)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(\src_gray_ff_reg[2]_0 ),
        .I1(\src_gray_ff_reg[2] ),
        .I2(\count_value_i_reg[6]_0 [1]),
        .I3(\count_value_i_reg[6]_0 [0]),
        .I4(\count_value_i_reg[6]_0 [2]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(\count_value_i_reg[6]_0 [0]),
        .I1(\src_gray_ff_reg[2]_0 ),
        .O(src_in_bin[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFEFAFF)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(\count_value_i_reg[6]_0 [2]),
        .I1(\count_value_i_reg[6]_0 [0]),
        .I2(\count_value_i_reg[6]_0 [1]),
        .I3(\src_gray_ff_reg[2] ),
        .I4(\src_gray_ff_reg[2]_0 ),
        .I5(\count_value_i_reg[6]_0 [3]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(\count_value_i_reg[6]_0 [3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3 
       (.I0(\count_value_i_reg[6]_0 [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4 
       (.I0(\count_value_i_reg[6]_0 [1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6 
       (.I0(\count_value_i_reg[6]_0 [3]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] [3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7 
       (.I0(\count_value_i_reg[6]_0 [2]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8 
       (.I0(\count_value_i_reg[6]_0 [1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] [1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF0200FD)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[6]_0 [0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_2 
       (.I0(\count_value_i_reg[6]_0 [5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_3 
       (.I0(\count_value_i_reg[6]_0 [4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_4 
       (.I0(\count_value_i_reg[6]_0 [6]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] [6]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_5 
       (.I0(\count_value_i_reg[6]_0 [5]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] [5]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_6 
       (.I0(\count_value_i_reg[6]_0 [4]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] [4]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_6_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 }),
        .CYINIT(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] [0]),
        .DI({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0 ,DI}),
        .O(D[3:0]),
        .S({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1 
       (.CI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ),
        .CO({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_CO_UNCONNECTED [3:2],\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_3_n_0 }),
        .O({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_O_UNCONNECTED [3],D[6:4]}),
        .S({1'b0,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_4_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_5_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[6]_i_6_n_0 }));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[3]_i_5 
       (.I0(\count_value_i_reg[6]_0 [2]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(\count_value_i_reg[6]_0 [3]),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .O(S));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_6 
       (.I0(\count_value_i_reg[6]_0 [6]),
        .I1(\grdc.rd_data_count_i_reg[7] [4]),
        .I2(\count_value_i_reg_n_0_[7] ),
        .I3(\grdc.rd_data_count_i_reg[7] [5]),
        .O(\grdc.rd_data_count_i[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_7 
       (.I0(\count_value_i_reg[6]_0 [5]),
        .I1(\grdc.rd_data_count_i_reg[7] [3]),
        .I2(\count_value_i_reg[6]_0 [6]),
        .I3(\grdc.rd_data_count_i_reg[7] [4]),
        .O(\grdc.rd_data_count_i[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_8 
       (.I0(\count_value_i_reg[6]_0 [4]),
        .I1(\grdc.rd_data_count_i_reg[7] [2]),
        .I2(\count_value_i_reg[6]_0 [5]),
        .I3(\grdc.rd_data_count_i_reg[7] [3]),
        .O(\grdc.rd_data_count_i[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[7]_i_9 
       (.I0(\count_value_i_reg[6]_0 [3]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(\count_value_i_reg[6]_0 [4]),
        .I3(\grdc.rd_data_count_i_reg[7] [2]),
        .O(\grdc.rd_data_count_i[7]_i_9_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[7]_i_2 
       (.CI(CO),
        .CO({\NLW_grdc.rd_data_count_i_reg[7]_i_2_CO_UNCONNECTED [3],\grdc.rd_data_count_i_reg[7]_i_2_n_1 ,\grdc.rd_data_count_i_reg[7]_i_2_n_2 ,\grdc.rd_data_count_i_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\grdc.rd_data_count_i_reg[7]_0 }),
        .O(\reg_out_i_reg[0] ),
        .S({\grdc.rd_data_count_i[7]_i_6_n_0 ,\grdc.rd_data_count_i[7]_i_7_n_0 ,\grdc.rd_data_count_i[7]_i_8_n_0 ,\grdc.rd_data_count_i[7]_i_9_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized2_2
   (Q,
    D,
    wr_pntr_plus1_pf_carry,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    \gwdc.wr_data_count_i_reg[7] ,
    wr_clk);
  output [7:0]Q;
  output [7:0]D;
  input wr_pntr_plus1_pf_carry;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input [7:0]\gwdc.wr_data_count_i_reg[7] ;
  input wr_clk;

  wire [7:0]D;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire [7:0]\gwdc.wr_data_count_i_reg[7] ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [3:3]\NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(wr_pntr_plus1_pf_carry),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[7] [3]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[7] [2]),
        .O(\gwdc.wr_data_count_i[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[7] [1]),
        .O(\gwdc.wr_data_count_i[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[7] [0]),
        .O(\gwdc.wr_data_count_i[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[7]),
        .I1(\gwdc.wr_data_count_i_reg[7] [7]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[7] [6]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[7] [5]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[7] [4]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(D[3:0]),
        .S({\gwdc.wr_data_count_i[3]_i_2_n_0 ,\gwdc.wr_data_count_i[3]_i_3_n_0 ,\gwdc.wr_data_count_i[3]_i_4_n_0 ,\gwdc.wr_data_count_i[3]_i_5_n_0 }));
  CARRY4 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED [3],\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(D[7:4]),
        .S({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized3
   (Q,
    p_1_in,
    rd_en,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[0]_0 ,
    E,
    rd_clk);
  output [6:0]Q;
  input p_1_in;
  input rd_en;
  input [1:0]\count_value_i_reg[1]_0 ;
  input \count_value_i_reg[0]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_2__3_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire p_1_in;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h02FD)) 
    \count_value_i[0]_i_1__4 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h10FFEF00)) 
    \count_value_i[1]_i_1__3 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(p_1_in),
        .I3(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[2]),
        .I1(p_1_in),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_1_in),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[5]_i_1__3 
       (.I0(\count_value_i[6]_i_2__3_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[6]_i_1__3 
       (.I0(\count_value_i[6]_i_2__3_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[6]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \count_value_i[6]_i_2__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(p_1_in),
        .I3(Q[2]),
        .O(\count_value_i[6]_i_2__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized3_3
   (Q,
    D,
    \count_value_i_reg[2]_0 ,
    wr_en,
    \count_value_i_reg[5]_0 ,
    wrst_busy,
    rst_d1,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] ,
    wr_clk);
  output [5:0]Q;
  output [3:0]D;
  output \count_value_i_reg[2]_0 ;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input wrst_busy;
  input rst_d1;
  input wr_pntr_plus1_pf_carry;
  input [6:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] ;
  input wr_clk;

  wire [3:0]D;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i_reg[2]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire [6:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [3:3]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire [2:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(wr_pntr_plus1_pf),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus1_pf),
        .I3(Q[2]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(wr_pntr_plus1_pf),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[2]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(wr_pntr_plus1_pf),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[3]),
        .I1(wr_pntr_plus1_pf),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(wrst_busy),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(wr_pntr_plus1_pf),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(wr_pntr_plus1_pf),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] [2]),
        .O(\count_value_i_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3 
       (.I0(wr_pntr_plus1_pf),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_2 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] [6]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_3 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] [5]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_4 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_4_n_0 ));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 }),
        .CYINIT(wr_pntr_plus1_pf_carry),
        .DI({Q[2],wr_pntr_plus1_pf,Q[1:0]}),
        .O({D[0],\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED [2:0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 }));
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .CO({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_CO_UNCONNECTED [3:2],\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[4:3]}),
        .O({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_O_UNCONNECTED [3],D[3:1]}),
        .S({1'b0,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[7]_i_4_n_0 }));
endmodule

(* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "block" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_WRITE_DEPTH = "128" *) (* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_async" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "2" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "8" *) (* READ_DATA_WIDTH = "35" *) 
(* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "35" *) (* WR_DATA_COUNT_WIDTH = "8" *) 
(* XPM_MODULE = "TRUE" *) 
module design_1_i2s_transmitter_0_0_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
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
  input [34:0]din;
  output full;
  output prog_full;
  output [7:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [34:0]dout;
  output empty;
  output prog_empty;
  output [7:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [34:0]din;
  wire [34:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [7:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [7:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "128" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "4480" *) 
  (* FIFO_WRITE_DEPTH = "128" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "123" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "123" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "8" *) 
  (* RD_DC_WIDTH_EXT = "8" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "7" *) 
  (* READ_DATA_WIDTH = "35" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "35" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* WR_DC_WIDTH_EXT = "8" *) 
  (* WR_DEPTH_LOG = "7" *) 
  (* WR_PNTR_WIDTH = "7" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  design_1_i2s_transmitter_0_0_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
(* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) (* EN_DVLD = "1'b1" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b1" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "2" *) 
(* FIFO_MEM_TYPE = "2" *) (* FIFO_READ_DEPTH = "128" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "4480" *) (* FIFO_WRITE_DEPTH = "128" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "123" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "123" *) (* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "8" *) (* RD_DC_WIDTH_EXT = "8" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "7" *) 
(* READ_DATA_WIDTH = "35" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "35" *) (* WR_DATA_COUNT_WIDTH = "8" *) (* WR_DC_WIDTH_EXT = "8" *) 
(* WR_DEPTH_LOG = "7" *) (* WR_PNTR_WIDTH = "7" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "6" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module design_1_i2s_transmitter_0_0_xpm_fifo_base
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
  input [34:0]din;
  output full;
  output full_n;
  output prog_full;
  output [7:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [34:0]dout;
  output empty;
  output prog_empty;
  output [7:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [6:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [6:0]diff_pntr_pe;
  wire [7:4]diff_pntr_pf_q;
  wire [7:4]diff_pntr_pf_q0;
  wire [34:0]din;
  wire [34:0]dout;
  wire empty;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_12 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ;
  wire [7:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [7:0]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire p_1_in;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_i;
  wire rd_clk;
  wire [7:0]rd_data_count;
  wire rd_en;
  wire [6:0]rd_pntr_ext;
  wire [6:0]rd_pntr_wr;
  wire [6:0]rd_pntr_wr_cdc;
  wire [7:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rdp_inst_n_26;
  wire rdp_inst_n_27;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [1:1]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [7:0]wr_data_count;
  wire wr_en;
  wire [7:0]wr_pntr_ext;
  wire [7:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [6:0]wr_pntr_rd_cdc;
  wire [7:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp1_inst_n_10;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [34:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h69C1)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(ram_empty_i),
        .I3(rd_en),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  design_1_i2s_transmitter_0_0_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,src_in_bin00_out,rdp_inst_n_27}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "7" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  design_1_i2s_transmitter_0_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(count_value_i),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ({wr_pntr_plus1_pf[7:4],wr_pntr_plus1_pf[2:1]}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 (wrpp1_inst_n_10),
        .\reg_out_i_reg[6]_0 (rd_pntr_wr),
        .\reg_out_i_reg[6]_1 (\gen_cdc_pntr.rpw_gray_reg_n_8 ),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_i2s_transmitter_0_0_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_i2s_transmitter_0_0_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q(rd_pntr_ext),
        .\gen_pf_ic_rc.ram_empty_i_reg (curr_fwft_state),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0]_0 (rd_rst_busy),
        .\reg_out_i_reg[6]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 }));
  design_1_i2s_transmitter_0_0_xpm_fifo_reg_vec__parameterized0_1 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .DI({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 }),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 }),
        .S(\gen_cdc_pntr.wpr_gray_reg_dc_n_12 ),
        .\grdc.rd_data_count_i_reg[3] (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[7] (rd_pntr_ext[5:1]),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[5]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 }),
        .\reg_out_i_reg[7]_0 (rd_rst_busy));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "7" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[6:0]));
  LUT4 #(
    .INIT(16'hC8AA)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(empty),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .I3(curr_fwft_state[0]),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(rd_rst_busy));
  LUT5 #(
    .INIT(32'hBAA2AA22)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(almost_empty),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .I4(rd_en),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(rd_rst_busy));
  LUT4 #(
    .INIT(16'h15F5)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(empty),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(rd_rst_busy));
  design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.CO(\gen_fwft.rdpp1_inst_n_3 ),
        .D(\grdc.diff_wr_rd_pntr_rdc [3:0]),
        .DI({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 }),
        .Q(rd_pntr_ext[1:0]),
        .S({rdp_inst_n_20,\gen_cdc_pntr.wpr_gray_reg_dc_n_12 }),
        .\count_value_i_reg[0]_0 (\gen_fwft.rdpp1_inst_n_2 ),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_0 ),
        .\count_value_i_reg[1]_1 (rd_rst_busy),
        .\count_value_i_reg[1]_2 (curr_fwft_state),
        .\grdc.rd_data_count_i_reg[3] (\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_8 ),
        .Q(full),
        .S(wrst_busy));
  LUT4 #(
    .INIT(16'hABAA)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'h88888888888888B8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(diff_pntr_pf_q[6]),
        .I1(diff_pntr_pf_q[5]),
        .I2(diff_pntr_pf_q[4]),
        .I3(diff_pntr_pf_q[7]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "7" *) 
  (* ADDR_WIDTH_B = "7" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "35" *) 
  (* BYTE_WRITE_WIDTH_B = "35" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "34" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "35" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "4480" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "128" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "35" *) 
  (* P_MIN_WIDTH_DATA_A = "35" *) 
  (* P_MIN_WIDTH_DATA_B = "35" *) 
  (* P_MIN_WIDTH_DATA_ECC = "35" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "35" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "7" *) 
  (* P_WIDTH_ADDR_READ_B = "7" *) 
  (* P_WIDTH_ADDR_WRITE_A = "7" *) 
  (* P_WIDTH_ADDR_WRITE_B = "7" *) 
  (* P_WIDTH_COL_WRITE_A = "35" *) 
  (* P_WIDTH_COL_WRITE_B = "35" *) 
  (* READ_DATA_WIDTH_A = "35" *) 
  (* READ_DATA_WIDTH_B = "35" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "35" *) 
  (* WRITE_DATA_WIDTH_B = "35" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[6:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [34:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(ram_rd_en_i),
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
    .INIT(8'h2C)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
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
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [0]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [5]),
        .Q(wr_data_count[5]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [6]),
        .Q(wr_data_count[6]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [7]),
        .Q(wr_data_count[7]),
        .R(wrst_busy));
  design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized2 rdp_inst
       (.CO(\gen_fwft.rdpp1_inst_n_3 ),
        .D(diff_pntr_pe),
        .DI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0 ),
        .E(ram_rd_en_i),
        .Q(curr_fwft_state),
        .S(rdp_inst_n_20),
        .\count_value_i_reg[6]_0 (rd_pntr_ext),
        .\count_value_i_reg[7]_0 (rd_rst_busy),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 }),
        .\grdc.rd_data_count_i_reg[7] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 }),
        .\grdc.rd_data_count_i_reg[7]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 }),
        .p_1_in(p_1_in),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0] (\grdc.diff_wr_rd_pntr_rdc [7:4]),
        .\src_gray_ff_reg[2] (\gen_fwft.rdpp1_inst_n_0 ),
        .\src_gray_ff_reg[2]_0 (\gen_fwft.rdpp1_inst_n_2 ),
        .src_in_bin({rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,rdp_inst_n_27}));
  design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .p_1_in(p_1_in),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  design_1_i2s_transmitter_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.clr_full(clr_full),
        .d_out_reg_0(rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ),
        .\gof.overflow_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized2_2 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (full),
        .\gwdc.wr_data_count_i_reg[7] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized3_3 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q({wr_pntr_plus1_pf[7:4],wr_pntr_plus1_pf[2:1]}),
        .\count_value_i_reg[2]_0 (wrpp1_inst_n_10),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] (rd_pntr_wr),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_i2s_transmitter_0_0_xpm_counter_updn__parameterized0 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6}),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  design_1_i2s_transmitter_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .SR(\grdc.rd_data_count_i0 ),
        .d_out_reg(xpm_fifo_rst_inst_n_2),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module design_1_i2s_transmitter_0_0_xpm_fifo_reg_bit
   (rst_d1,
    d_out_reg_0,
    overflow_i0,
    clr_full,
    wrst_busy,
    wr_clk,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    rst,
    \gof.overflow_i_reg ,
    prog_full,
    wr_en);
  output rst_d1;
  output d_out_reg_0;
  output overflow_i0;
  output clr_full;
  input wrst_busy;
  input wr_clk;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input rst;
  input \gof.overflow_i_reg ;
  input prog_full;
  input wr_en;

  wire clr_full;
  wire d_out_reg_0;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire \gof.overflow_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT5 #(
    .INIT(32'hF3A200A2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I1(rst_d1),
        .I2(rst),
        .I3(\gof.overflow_i_reg ),
        .I4(prog_full),
        .O(d_out_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gof.overflow_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_i2s_transmitter_0_0_xpm_fifo_reg_vec
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \reg_out_i_reg[6]_0 ,
    \reg_out_i_reg[6]_1 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    rst,
    clr_full,
    almost_full,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 ,
    wrst_busy,
    D,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output [6:0]\reg_out_i_reg[6]_0 ;
  output \reg_out_i_reg[6]_1 ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input rst;
  input clr_full;
  input almost_full;
  input [6:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [6:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [5:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 ;
  input wrst_busy;
  input [6:0]D;
  input wr_clk;

  wire [6:0]D;
  wire [6:0]Q;
  wire almost_full;
  wire clr_full;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire [6:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [5:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire going_afull;
  wire leaving_afull;
  wire [6:0]\reg_out_i_reg[6]_0 ;
  wire \reg_out_i_reg[6]_1 ;
  wire rst;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT6 #(
    .INIT(64'hFF00FFFE0000000E)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(leaving_afull),
        .I1(going_afull),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I3(rst),
        .I4(clr_full),
        .I5(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'h80080000)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ),
        .I2(Q[6]),
        .I3(\reg_out_i_reg[6]_0 [6]),
        .I4(wr_pntr_plus1_pf_carry),
        .O(going_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(\reg_out_i_reg[6]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg[6]_0 [2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[6]_0 [1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4 
       (.I0(\reg_out_i_reg[6]_0 [3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\reg_out_i_reg[6]_0 [5]),
        .I4(Q[4]),
        .I5(\reg_out_i_reg[6]_0 [4]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF909090)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\reg_out_i_reg[6]_0 [6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 [5]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I3(leaving_afull),
        .I4(wr_pntr_plus1_pf_carry),
        .I5(clr_full),
        .O(\reg_out_i_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h9000009000000000)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\reg_out_i_reg[6]_0 [1]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I4(\reg_out_i_reg[6]_0 [0]),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9000)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\reg_out_i_reg[6]_0 [6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(\reg_out_i_reg[6]_0 [3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 [4]),
        .I3(\reg_out_i_reg[6]_0 [5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I5(\reg_out_i_reg[6]_0 [4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(\reg_out_i_reg[6]_0 [3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(\reg_out_i_reg[6]_0 [5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(\reg_out_i_reg[6]_0 [4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(\reg_out_i_reg[6]_0 [0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(\reg_out_i_reg[6]_0 [2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(\reg_out_i_reg[6]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg[6]_0 [0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg[6]_0 [1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg[6]_0 [2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[6]_0 [3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg[6]_0 [4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg[6]_0 [5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg[6]_0 [6]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_i2s_transmitter_0_0_xpm_fifo_reg_vec_0
   (ram_empty_i0,
    \reg_out_i_reg[6]_0 ,
    Q,
    rd_en,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    \reg_out_i_reg[0]_0 ,
    D,
    rd_clk);
  output ram_empty_i0;
  output [6:0]\reg_out_i_reg[6]_0 ;
  input [6:0]Q;
  input rd_en;
  input [1:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input ram_empty_i;
  input [6:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input \reg_out_i_reg[0]_0 ;
  input [6:0]D;
  input rd_clk;

  wire [6:0]D;
  wire [6:0]Q;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire [1:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire [6:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[0]_0 ;
  wire [6:0]\reg_out_i_reg[6]_0 ;

  LUT6 #(
    .INIT(64'hFF90909090909090)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(Q[0]),
        .I1(\reg_out_i_reg[6]_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h8200008200000000)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ),
        .I1(\reg_out_i_reg[6]_0 [1]),
        .I2(Q[1]),
        .I3(\reg_out_i_reg[6]_0 [2]),
        .I4(Q[2]),
        .I5(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00EF0000000000EF)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(rd_en),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I3(ram_empty_i),
        .I4(\reg_out_i_reg[6]_0 [6]),
        .I5(\gen_pf_ic_rc.ram_empty_i_reg_0 [6]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\reg_out_i_reg[6]_0 [5]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [5]),
        .I2(\reg_out_i_reg[6]_0 [4]),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_0 [4]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [3]),
        .I5(\reg_out_i_reg[6]_0 [3]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(\reg_out_i_reg[6]_0 [2]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [2]),
        .I2(\reg_out_i_reg[6]_0 [1]),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_0 [1]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [0]),
        .I5(\reg_out_i_reg[6]_0 [0]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(\reg_out_i_reg[6]_0 [3]),
        .I1(Q[3]),
        .I2(\reg_out_i_reg[6]_0 [4]),
        .I3(Q[4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(\reg_out_i_reg[6]_0 [5]),
        .I1(Q[5]),
        .I2(\reg_out_i_reg[6]_0 [6]),
        .I3(Q[6]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg[6]_0 [0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg[6]_0 [1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg[6]_0 [2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[6]_0 [3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg[6]_0 [4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg[6]_0 [5]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg[6]_0 [6]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_i2s_transmitter_0_0_xpm_fifo_reg_vec__parameterized0
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [7:0]Q;
  input wrst_busy;
  input [7:0]D;
  input wr_clk;

  wire [7:0]D;
  wire [7:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_i2s_transmitter_0_0_xpm_fifo_reg_vec__parameterized0_1
   (DI,
    Q,
    \reg_out_i_reg[5]_0 ,
    S,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[3] ,
    \reg_out_i_reg[7]_0 ,
    D,
    rd_clk);
  output [1:0]DI;
  output [6:0]Q;
  output [2:0]\reg_out_i_reg[5]_0 ;
  output [0:0]S;
  input [4:0]\grdc.rd_data_count_i_reg[7] ;
  input \grdc.rd_data_count_i_reg[3] ;
  input \reg_out_i_reg[7]_0 ;
  input [7:0]D;
  input rd_clk;

  wire [7:0]D;
  wire [1:0]DI;
  wire [6:0]Q;
  wire [0:0]S;
  wire \grdc.rd_data_count_i_reg[3] ;
  wire [4:0]\grdc.rd_data_count_i_reg[7] ;
  wire rd_clk;
  wire [2:0]\reg_out_i_reg[5]_0 ;
  wire \reg_out_i_reg[7]_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[3]_i_2 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    \grdc.rd_data_count_i[3]_i_6 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(\grdc.rd_data_count_i_reg[3] ),
        .I3(\grdc.rd_data_count_i_reg[7] [1]),
        .I4(Q[1]),
        .O(S));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_3 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[7] [4]),
        .O(\reg_out_i_reg[5]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_4 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[7] [3]),
        .O(\reg_out_i_reg[5]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[7]_i_5 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[7] [2]),
        .O(\reg_out_i_reg[5]_0 [0]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(DI[0]),
        .R(\reg_out_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[7]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module design_1_i2s_transmitter_0_0_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    d_out_reg,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    SR,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    Q,
    rd_en,
    \guf.underflow_i_reg );
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output d_out_reg;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  output [0:0]SR;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input [1:0]Q;
  input rd_en;
  input \guf.underflow_i_reg ;

  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire d_out_reg;
  wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hF0F40044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAFFFFEEEA)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I2(rst),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \__2/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.rst_seq_reentered ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I1(\gen_rst_ic.rst_seq_reentered ),
        .I2(rst),
        .I3(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFEFC)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst_i__0),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \grdc.rd_data_count_i[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \guf.underflow_i_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(rd_en),
        .I2(\guf.underflow_i_reg ),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(d_out_reg));
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
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "7" *) (* ADDR_WIDTH_B = "7" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "35" *) (* BYTE_WRITE_WIDTH_B = "35" *) (* CLOCKING_MODE = "1" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "2" *) 
(* MEMORY_SIZE = "4480" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "128" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "35" *) 
(* P_MIN_WIDTH_DATA_A = "35" *) (* P_MIN_WIDTH_DATA_B = "35" *) (* P_MIN_WIDTH_DATA_ECC = "35" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "35" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "7" *) (* P_WIDTH_ADDR_READ_B = "7" *) 
(* P_WIDTH_ADDR_WRITE_A = "7" *) (* P_WIDTH_ADDR_WRITE_B = "7" *) (* P_WIDTH_COL_WRITE_A = "35" *) 
(* P_WIDTH_COL_WRITE_B = "35" *) (* READ_DATA_WIDTH_A = "35" *) (* READ_DATA_WIDTH_B = "35" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "35" *) (* WRITE_DATA_WIDTH_B = "35" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module design_1_i2s_transmitter_0_0_xpm_memory_base
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
  input [6:0]addra;
  input [34:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [34:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [6:0]addrb;
  input [34:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [34:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [34:0]dina;
  wire [34:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [1:1]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
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
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p3_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "34" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p3_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "34" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4480" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "34" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "34" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP(dina[33:32]),
        .DIPBDIP({1'b1,dina[34]}),
        .DOADO(doutb[15:0]),
        .DOBDO(doutb[31:16]),
        .DOPADOP(doutb[33:32]),
        .DOPBDOP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [1],doutb[34]}),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({ena,ena,ena,ena}));
endmodule

(* C_DEPTH = "128" *) (* C_DWIDTH = "16" *) (* C_IS_MASTER = "0" *) 
(* C_NUM_CHANNELS = "1" *) (* ORIG_REF_NAME = "i2s_transmitter_v1_0_2" *) 
module design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2
   (s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    aud_mclk,
    aud_mrst,
    s_axis_aud_aclk,
    s_axis_aud_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    irq,
    lrclk_out,
    sclk_out,
    lrclk_in,
    sclk_in,
    sdata_0_out,
    sdata_1_out,
    sdata_2_out,
    sdata_3_out,
    s_axis_aud_tdata,
    s_axis_aud_tid,
    s_axis_aud_tvalid,
    s_axis_aud_tready,
    fifo_wrdata_count,
    fifo_rdata_count);
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input aud_mclk;
  input aud_mrst;
  input s_axis_aud_aclk;
  input s_axis_aud_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [7:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [7:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output irq;
  output lrclk_out;
  output sclk_out;
  input lrclk_in;
  input sclk_in;
  output sdata_0_out;
  output sdata_1_out;
  output sdata_2_out;
  output sdata_3_out;
  input [31:0]s_axis_aud_tdata;
  input [2:0]s_axis_aud_tid;
  input s_axis_aud_tvalid;
  output s_axis_aud_tready;
  output [15:0]fifo_wrdata_count;
  output [15:0]fifo_rdata_count;

  wire \<const0> ;
  wire aud_mclk;
  wire aud_mrst;
  wire [7:0]\^fifo_rdata_count ;
  wire [7:0]\^fifo_wrdata_count ;
  wire irq;
  wire lrclk_in;
  wire s_axi_ctrl_aclk;
  wire [7:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [7:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:1]\^s_axi_ctrl_bresp ;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:1]\^s_axi_ctrl_rresp ;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire s_axis_aud_aclk;
  wire s_axis_aud_aresetn;
  wire [31:0]s_axis_aud_tdata;
  wire [2:0]s_axis_aud_tid;
  wire s_axis_aud_tready;
  wire s_axis_aud_tvalid;
  wire sclk_in;
  wire sdata_0_out;

  assign fifo_rdata_count[15] = \<const0> ;
  assign fifo_rdata_count[14] = \<const0> ;
  assign fifo_rdata_count[13] = \<const0> ;
  assign fifo_rdata_count[12] = \<const0> ;
  assign fifo_rdata_count[11] = \<const0> ;
  assign fifo_rdata_count[10] = \<const0> ;
  assign fifo_rdata_count[9] = \<const0> ;
  assign fifo_rdata_count[8] = \<const0> ;
  assign fifo_rdata_count[7:0] = \^fifo_rdata_count [7:0];
  assign fifo_wrdata_count[15] = \<const0> ;
  assign fifo_wrdata_count[14] = \<const0> ;
  assign fifo_wrdata_count[13] = \<const0> ;
  assign fifo_wrdata_count[12] = \<const0> ;
  assign fifo_wrdata_count[11] = \<const0> ;
  assign fifo_wrdata_count[10] = \<const0> ;
  assign fifo_wrdata_count[9] = \<const0> ;
  assign fifo_wrdata_count[8] = \<const0> ;
  assign fifo_wrdata_count[7:0] = \^fifo_wrdata_count [7:0];
  assign lrclk_out = lrclk_in;
  assign s_axi_ctrl_bresp[1] = \^s_axi_ctrl_bresp [1];
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \^s_axi_ctrl_rresp [1];
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign sclk_out = sclk_in;
  assign sdata_1_out = \<const0> ;
  assign sdata_2_out = \<const0> ;
  assign sdata_3_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_sys I2S_TX_V1_0_SYS_INST
       (.aud_mclk(aud_mclk),
        .aud_mrst(aud_mrst),
        .fifo_rdata_count(\^fifo_rdata_count ),
        .fifo_wrdata_count(\^fifo_wrdata_count ),
        .irq(irq),
        .lrclk_in(lrclk_in),
        .oAxi_WReady_reg(s_axi_ctrl_wready),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(\^s_axi_ctrl_bresp ),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(\^s_axi_ctrl_rresp ),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata({s_axi_ctrl_wdata[31],s_axi_ctrl_wdata[7:0]}),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axis_aud_aclk(s_axis_aud_aclk),
        .s_axis_aud_aresetn(s_axis_aud_aresetn),
        .s_axis_aud_tdata(s_axis_aud_tdata),
        .s_axis_aud_tid(s_axis_aud_tid),
        .s_axis_aud_tready(s_axis_aud_tready),
        .s_axis_aud_tvalid(s_axis_aud_tvalid),
        .sclk_in(sclk_in),
        .sdata_0_out(sdata_0_out));
endmodule

(* ORIG_REF_NAME = "i2s_transmitter_v1_0_2_aes_dec" *) 
module design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_aes_dec
   (src_pulse,
    rAesBlockSyncError_reg_0,
    pre_check_mode_reg_0,
    id_check,
    rAesChannelStatusChange_reg_0,
    Q,
    s_axis_aud_aclk,
    id_check_reg_0,
    s_axis_aud_tid,
    id_miss_reg_0,
    pre_check_mode_reg_1,
    s_axis_aud_tdata,
    rAesBlockSyncError_other_reg_0,
    dest_pulse,
    dest_out,
    s_axis_aud_aresetn,
    E,
    \rChannelStatusIn_reg[191]_0 );
  output src_pulse;
  output rAesBlockSyncError_reg_0;
  output pre_check_mode_reg_0;
  output id_check;
  output rAesChannelStatusChange_reg_0;
  output [191:0]Q;
  input s_axis_aud_aclk;
  input id_check_reg_0;
  input [2:0]s_axis_aud_tid;
  input id_miss_reg_0;
  input pre_check_mode_reg_1;
  input [4:0]s_axis_aud_tdata;
  input rAesBlockSyncError_other_reg_0;
  input dest_pulse;
  input dest_out;
  input s_axis_aud_aresetn;
  input [0:0]E;
  input [0:0]\rChannelStatusIn_reg[191]_0 ;

  wire [0:0]E;
  wire FSM_sequential_stmAesDecode_i_1_n_0;
  wire [191:0]Q;
  wire dest_out;
  wire dest_pulse;
  wire iRst0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire id_check;
  wire id_check_reg_0;
  wire [2:0]id_count;
  wire [2:0]id_count1;
  wire \id_count[0]_i_1_n_0 ;
  wire \id_count[1]_i_1_n_0 ;
  wire \id_count[2]_i_2_n_0 ;
  wire id_miss_i_1_n_0;
  wire id_miss_i_2_n_0;
  wire id_miss_reg_0;
  wire id_miss_reg_n_0;
  wire [47:0]p_0_in;
  wire [47:0]p_0_in1_in;
  wire [47:0]p_0_in4_in;
  wire p_4_out;
  wire pre_check_mode_i_1_n_0;
  wire pre_check_mode_reg_0;
  wire pre_check_mode_reg_1;
  wire rAesBlockSyncError0;
  wire rAesBlockSyncError_int;
  wire rAesBlockSyncError_int_reg_n_0;
  wire rAesBlockSyncError_other_i_1_n_0;
  wire rAesBlockSyncError_other_i_2_n_0;
  wire rAesBlockSyncError_other_i_3_n_0;
  wire rAesBlockSyncError_other_reg_0;
  wire rAesBlockSyncError_other_reg_n_0;
  wire rAesBlockSyncError_reg_0;
  wire rAesChannelStatusChange_i_1_n_0;
  wire rAesChannelStatusChange_reg_0;
  wire rAesLastFrame;
  wire rAesLastFrame_i_1_n_0;
  wire [7:0]rAudioFrameCount0_in;
  wire \rAudioFrameCount[3]_i_2_n_0 ;
  wire \rAudioFrameCount[4]_i_2_n_0 ;
  wire \rAudioFrameCount[5]_i_2_n_0 ;
  wire \rAudioFrameCount[5]_i_3_n_0 ;
  wire \rAudioFrameCount[5]_i_4_n_0 ;
  wire \rAudioFrameCount[6]_i_2_n_0 ;
  wire \rAudioFrameCount[6]_i_3_n_0 ;
  wire \rAudioFrameCount[7]_i_2_n_0 ;
  wire \rAudioFrameCount[7]_i_5_n_0 ;
  wire \rAudioFrameCount[7]_i_6_n_0 ;
  wire \rAudioFrameCount_reg_n_0_[0] ;
  wire \rAudioFrameCount_reg_n_0_[1] ;
  wire \rAudioFrameCount_reg_n_0_[2] ;
  wire \rAudioFrameCount_reg_n_0_[3] ;
  wire \rAudioFrameCount_reg_n_0_[4] ;
  wire \rAudioFrameCount_reg_n_0_[5] ;
  wire \rAudioFrameCount_reg_n_0_[6] ;
  wire \rAudioFrameCount_reg_n_0_[7] ;
  wire rChannelStatusCapt0;
  wire [3:3]rChannelStatusDiff;
  wire rChannelStatusDiff0;
  wire rChannelStatusDiff00_out;
  wire rChannelStatusDiff03_out;
  wire rChannelStatusDiff0_carry__0_i_1_n_0;
  wire rChannelStatusDiff0_carry__0_i_2_n_0;
  wire rChannelStatusDiff0_carry__0_i_3_n_0;
  wire rChannelStatusDiff0_carry__0_i_4_n_0;
  wire rChannelStatusDiff0_carry__0_n_0;
  wire rChannelStatusDiff0_carry__0_n_1;
  wire rChannelStatusDiff0_carry__0_n_2;
  wire rChannelStatusDiff0_carry__0_n_3;
  wire rChannelStatusDiff0_carry__1_i_1_n_0;
  wire rChannelStatusDiff0_carry__1_i_2_n_0;
  wire rChannelStatusDiff0_carry__1_i_3_n_0;
  wire rChannelStatusDiff0_carry__1_i_4_n_0;
  wire rChannelStatusDiff0_carry__1_n_0;
  wire rChannelStatusDiff0_carry__1_n_1;
  wire rChannelStatusDiff0_carry__1_n_2;
  wire rChannelStatusDiff0_carry__1_n_3;
  wire rChannelStatusDiff0_carry__2_i_1_n_0;
  wire rChannelStatusDiff0_carry__2_i_2_n_0;
  wire rChannelStatusDiff0_carry__2_i_3_n_0;
  wire rChannelStatusDiff0_carry__2_i_4_n_0;
  wire rChannelStatusDiff0_carry__2_n_1;
  wire rChannelStatusDiff0_carry__2_n_2;
  wire rChannelStatusDiff0_carry__2_n_3;
  wire rChannelStatusDiff0_carry_i_1_n_0;
  wire rChannelStatusDiff0_carry_i_2_n_0;
  wire rChannelStatusDiff0_carry_i_3_n_0;
  wire rChannelStatusDiff0_carry_i_4_n_0;
  wire rChannelStatusDiff0_carry_n_0;
  wire rChannelStatusDiff0_carry_n_1;
  wire rChannelStatusDiff0_carry_n_2;
  wire rChannelStatusDiff0_carry_n_3;
  wire \rChannelStatusDiff0_inferred__0/i__carry__0_n_0 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__0_n_1 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__0_n_2 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__0_n_3 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__1_n_0 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__1_n_1 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__1_n_2 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__1_n_3 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__2_n_1 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__2_n_2 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry__2_n_3 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry_n_0 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry_n_1 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry_n_2 ;
  wire \rChannelStatusDiff0_inferred__0/i__carry_n_3 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__0_n_0 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__0_n_1 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__0_n_2 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__0_n_3 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__1_n_0 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__1_n_1 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__1_n_2 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__1_n_3 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__2_n_1 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__2_n_2 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry__2_n_3 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry_n_0 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry_n_1 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry_n_2 ;
  wire \rChannelStatusDiff0_inferred__1/i__carry_n_3 ;
  wire rChannelStatusDiff1;
  wire rChannelStatusDiff1_carry__0_i_1_n_0;
  wire rChannelStatusDiff1_carry__0_i_2_n_0;
  wire rChannelStatusDiff1_carry__0_i_3_n_0;
  wire rChannelStatusDiff1_carry__0_i_4_n_0;
  wire rChannelStatusDiff1_carry__0_n_0;
  wire rChannelStatusDiff1_carry__0_n_1;
  wire rChannelStatusDiff1_carry__0_n_2;
  wire rChannelStatusDiff1_carry__0_n_3;
  wire rChannelStatusDiff1_carry__1_i_1_n_0;
  wire rChannelStatusDiff1_carry__1_i_2_n_0;
  wire rChannelStatusDiff1_carry__1_i_3_n_0;
  wire rChannelStatusDiff1_carry__1_i_4_n_0;
  wire rChannelStatusDiff1_carry__1_n_0;
  wire rChannelStatusDiff1_carry__1_n_1;
  wire rChannelStatusDiff1_carry__1_n_2;
  wire rChannelStatusDiff1_carry__1_n_3;
  wire rChannelStatusDiff1_carry__2_i_1_n_0;
  wire rChannelStatusDiff1_carry__2_i_2_n_0;
  wire rChannelStatusDiff1_carry__2_i_3_n_0;
  wire rChannelStatusDiff1_carry__2_i_4_n_0;
  wire rChannelStatusDiff1_carry__2_n_1;
  wire rChannelStatusDiff1_carry__2_n_2;
  wire rChannelStatusDiff1_carry__2_n_3;
  wire rChannelStatusDiff1_carry_i_1_n_0;
  wire rChannelStatusDiff1_carry_i_2_n_0;
  wire rChannelStatusDiff1_carry_i_3_n_0;
  wire rChannelStatusDiff1_carry_i_4_n_0;
  wire rChannelStatusDiff1_carry_n_0;
  wire rChannelStatusDiff1_carry_n_1;
  wire rChannelStatusDiff1_carry_n_2;
  wire rChannelStatusDiff1_carry_n_3;
  wire \rChannelStatusDiff[0]_i_1_n_0 ;
  wire \rChannelStatusDiff[1]_i_1_n_0 ;
  wire \rChannelStatusDiff[2]_i_1_n_0 ;
  wire \rChannelStatusDiff_reg_n_0_[0] ;
  wire \rChannelStatusDiff_reg_n_0_[1] ;
  wire \rChannelStatusDiff_reg_n_0_[2] ;
  wire [0:0]\rChannelStatusIn_reg[191]_0 ;
  wire \rChannelStatusIn_reg_n_0_[0] ;
  wire \rChannelStatusIn_reg_n_0_[10] ;
  wire \rChannelStatusIn_reg_n_0_[11] ;
  wire \rChannelStatusIn_reg_n_0_[12] ;
  wire \rChannelStatusIn_reg_n_0_[13] ;
  wire \rChannelStatusIn_reg_n_0_[14] ;
  wire \rChannelStatusIn_reg_n_0_[15] ;
  wire \rChannelStatusIn_reg_n_0_[16] ;
  wire \rChannelStatusIn_reg_n_0_[17] ;
  wire \rChannelStatusIn_reg_n_0_[18] ;
  wire \rChannelStatusIn_reg_n_0_[19] ;
  wire \rChannelStatusIn_reg_n_0_[1] ;
  wire \rChannelStatusIn_reg_n_0_[20] ;
  wire \rChannelStatusIn_reg_n_0_[21] ;
  wire \rChannelStatusIn_reg_n_0_[22] ;
  wire \rChannelStatusIn_reg_n_0_[23] ;
  wire \rChannelStatusIn_reg_n_0_[24] ;
  wire \rChannelStatusIn_reg_n_0_[25] ;
  wire \rChannelStatusIn_reg_n_0_[26] ;
  wire \rChannelStatusIn_reg_n_0_[27] ;
  wire \rChannelStatusIn_reg_n_0_[28] ;
  wire \rChannelStatusIn_reg_n_0_[29] ;
  wire \rChannelStatusIn_reg_n_0_[2] ;
  wire \rChannelStatusIn_reg_n_0_[30] ;
  wire \rChannelStatusIn_reg_n_0_[31] ;
  wire \rChannelStatusIn_reg_n_0_[32] ;
  wire \rChannelStatusIn_reg_n_0_[33] ;
  wire \rChannelStatusIn_reg_n_0_[34] ;
  wire \rChannelStatusIn_reg_n_0_[35] ;
  wire \rChannelStatusIn_reg_n_0_[36] ;
  wire \rChannelStatusIn_reg_n_0_[37] ;
  wire \rChannelStatusIn_reg_n_0_[38] ;
  wire \rChannelStatusIn_reg_n_0_[39] ;
  wire \rChannelStatusIn_reg_n_0_[3] ;
  wire \rChannelStatusIn_reg_n_0_[40] ;
  wire \rChannelStatusIn_reg_n_0_[41] ;
  wire \rChannelStatusIn_reg_n_0_[42] ;
  wire \rChannelStatusIn_reg_n_0_[43] ;
  wire \rChannelStatusIn_reg_n_0_[44] ;
  wire \rChannelStatusIn_reg_n_0_[45] ;
  wire \rChannelStatusIn_reg_n_0_[46] ;
  wire \rChannelStatusIn_reg_n_0_[47] ;
  wire \rChannelStatusIn_reg_n_0_[4] ;
  wire \rChannelStatusIn_reg_n_0_[5] ;
  wire \rChannelStatusIn_reg_n_0_[6] ;
  wire \rChannelStatusIn_reg_n_0_[7] ;
  wire \rChannelStatusIn_reg_n_0_[8] ;
  wire \rChannelStatusIn_reg_n_0_[9] ;
  wire s_axis_aud_aclk;
  wire s_axis_aud_aresetn;
  wire [4:0]s_axis_aud_tdata;
  wire [2:0]s_axis_aud_tid;
  wire src_pulse;
  wire stmAesDecode__0;
  wire [3:0]NLW_rChannelStatusDiff0_carry_O_UNCONNECTED;
  wire [3:0]NLW_rChannelStatusDiff0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rChannelStatusDiff0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rChannelStatusDiff0_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_rChannelStatusDiff0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_rChannelStatusDiff0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_rChannelStatusDiff0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_rChannelStatusDiff0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_rChannelStatusDiff0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_rChannelStatusDiff0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_rChannelStatusDiff0_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_rChannelStatusDiff0_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_rChannelStatusDiff1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rChannelStatusDiff1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rChannelStatusDiff1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rChannelStatusDiff1_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00FE4444)) 
    FSM_sequential_stmAesDecode_i_1
       (.I0(pre_check_mode_reg_1),
        .I1(\rAudioFrameCount[5]_i_2_n_0 ),
        .I2(\rAudioFrameCount[6]_i_2_n_0 ),
        .I3(rAesBlockSyncError_other_reg_n_0),
        .I4(stmAesDecode__0),
        .O(FSM_sequential_stmAesDecode_i_1_n_0));
  (* FSM_ENCODED_STATES = "sWaitForBlockStart:0,sRun:1," *) 
  FDRE FSM_sequential_stmAesDecode_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(FSM_sequential_stmAesDecode_i_1_n_0),
        .Q(stmAesDecode__0),
        .R(iRst0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(Q[69]),
        .I1(p_0_in[21]),
        .I2(p_0_in[23]),
        .I3(Q[71]),
        .I4(p_0_in[22]),
        .I5(Q[70]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1__0
       (.I0(Q[117]),
        .I1(p_0_in1_in[21]),
        .I2(p_0_in1_in[23]),
        .I3(Q[119]),
        .I4(p_0_in1_in[22]),
        .I5(Q[118]),
        .O(i__carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(Q[66]),
        .I1(p_0_in[18]),
        .I2(p_0_in[20]),
        .I3(Q[68]),
        .I4(p_0_in[19]),
        .I5(Q[67]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__0
       (.I0(Q[114]),
        .I1(p_0_in1_in[18]),
        .I2(p_0_in1_in[20]),
        .I3(Q[116]),
        .I4(p_0_in1_in[19]),
        .I5(Q[115]),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(Q[63]),
        .I1(p_0_in[15]),
        .I2(p_0_in[17]),
        .I3(Q[65]),
        .I4(p_0_in[16]),
        .I5(Q[64]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3__0
       (.I0(Q[111]),
        .I1(p_0_in1_in[15]),
        .I2(p_0_in1_in[17]),
        .I3(Q[113]),
        .I4(p_0_in1_in[16]),
        .I5(Q[112]),
        .O(i__carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(Q[60]),
        .I1(p_0_in[12]),
        .I2(p_0_in[14]),
        .I3(Q[62]),
        .I4(p_0_in[13]),
        .I5(Q[61]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4__0
       (.I0(Q[108]),
        .I1(p_0_in1_in[12]),
        .I2(p_0_in1_in[14]),
        .I3(Q[110]),
        .I4(p_0_in1_in[13]),
        .I5(Q[109]),
        .O(i__carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_1
       (.I0(Q[81]),
        .I1(p_0_in[33]),
        .I2(p_0_in[35]),
        .I3(Q[83]),
        .I4(p_0_in[34]),
        .I5(Q[82]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_1__0
       (.I0(Q[129]),
        .I1(p_0_in1_in[33]),
        .I2(p_0_in1_in[35]),
        .I3(Q[131]),
        .I4(p_0_in1_in[34]),
        .I5(Q[130]),
        .O(i__carry__1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(Q[78]),
        .I1(p_0_in[30]),
        .I2(p_0_in[32]),
        .I3(Q[80]),
        .I4(p_0_in[31]),
        .I5(Q[79]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2__0
       (.I0(Q[126]),
        .I1(p_0_in1_in[30]),
        .I2(p_0_in1_in[32]),
        .I3(Q[128]),
        .I4(p_0_in1_in[31]),
        .I5(Q[127]),
        .O(i__carry__1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(Q[75]),
        .I1(p_0_in[27]),
        .I2(p_0_in[29]),
        .I3(Q[77]),
        .I4(p_0_in[28]),
        .I5(Q[76]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3__0
       (.I0(Q[123]),
        .I1(p_0_in1_in[27]),
        .I2(p_0_in1_in[29]),
        .I3(Q[125]),
        .I4(p_0_in1_in[28]),
        .I5(Q[124]),
        .O(i__carry__1_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_4
       (.I0(Q[72]),
        .I1(p_0_in[24]),
        .I2(p_0_in[26]),
        .I3(Q[74]),
        .I4(p_0_in[25]),
        .I5(Q[73]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_4__0
       (.I0(Q[120]),
        .I1(p_0_in1_in[24]),
        .I2(p_0_in1_in[26]),
        .I3(Q[122]),
        .I4(p_0_in1_in[25]),
        .I5(Q[121]),
        .O(i__carry__1_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_1
       (.I0(Q[93]),
        .I1(p_0_in[45]),
        .I2(p_0_in[47]),
        .I3(Q[95]),
        .I4(p_0_in[46]),
        .I5(Q[94]),
        .O(i__carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_1__0
       (.I0(Q[141]),
        .I1(p_0_in1_in[45]),
        .I2(p_0_in1_in[47]),
        .I3(Q[143]),
        .I4(p_0_in1_in[46]),
        .I5(Q[142]),
        .O(i__carry__2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_2
       (.I0(Q[90]),
        .I1(p_0_in[42]),
        .I2(p_0_in[44]),
        .I3(Q[92]),
        .I4(p_0_in[43]),
        .I5(Q[91]),
        .O(i__carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_2__0
       (.I0(Q[138]),
        .I1(p_0_in1_in[42]),
        .I2(p_0_in1_in[44]),
        .I3(Q[140]),
        .I4(p_0_in1_in[43]),
        .I5(Q[139]),
        .O(i__carry__2_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_3
       (.I0(Q[87]),
        .I1(p_0_in[39]),
        .I2(p_0_in[41]),
        .I3(Q[89]),
        .I4(p_0_in[40]),
        .I5(Q[88]),
        .O(i__carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_3__0
       (.I0(Q[135]),
        .I1(p_0_in1_in[39]),
        .I2(p_0_in1_in[41]),
        .I3(Q[137]),
        .I4(p_0_in1_in[40]),
        .I5(Q[136]),
        .O(i__carry__2_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_4
       (.I0(Q[84]),
        .I1(p_0_in[36]),
        .I2(p_0_in[38]),
        .I3(Q[86]),
        .I4(p_0_in[37]),
        .I5(Q[85]),
        .O(i__carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__2_i_4__0
       (.I0(Q[132]),
        .I1(p_0_in1_in[36]),
        .I2(p_0_in1_in[38]),
        .I3(Q[134]),
        .I4(p_0_in1_in[37]),
        .I5(Q[133]),
        .O(i__carry__2_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(Q[57]),
        .I1(p_0_in[9]),
        .I2(p_0_in[11]),
        .I3(Q[59]),
        .I4(p_0_in[10]),
        .I5(Q[58]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(Q[105]),
        .I1(p_0_in1_in[9]),
        .I2(p_0_in1_in[11]),
        .I3(Q[107]),
        .I4(p_0_in1_in[10]),
        .I5(Q[106]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(Q[54]),
        .I1(p_0_in[6]),
        .I2(p_0_in[8]),
        .I3(Q[56]),
        .I4(p_0_in[7]),
        .I5(Q[55]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(Q[102]),
        .I1(p_0_in1_in[6]),
        .I2(p_0_in1_in[8]),
        .I3(Q[104]),
        .I4(p_0_in1_in[7]),
        .I5(Q[103]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(Q[51]),
        .I1(p_0_in[3]),
        .I2(p_0_in[5]),
        .I3(Q[53]),
        .I4(p_0_in[4]),
        .I5(Q[52]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(Q[99]),
        .I1(p_0_in1_in[3]),
        .I2(p_0_in1_in[5]),
        .I3(Q[101]),
        .I4(p_0_in1_in[4]),
        .I5(Q[100]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(Q[48]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(Q[50]),
        .I4(p_0_in[1]),
        .I5(Q[49]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__0
       (.I0(Q[96]),
        .I1(p_0_in1_in[0]),
        .I2(p_0_in1_in[2]),
        .I3(Q[98]),
        .I4(p_0_in1_in[1]),
        .I5(Q[97]),
        .O(i__carry_i_4__0_n_0));
  FDRE id_check_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(id_check_reg_0),
        .Q(id_check),
        .R(iRst0));
  FDRE \id_count1_reg[0] 
       (.C(s_axis_aud_aclk),
        .CE(E),
        .D(s_axis_aud_tid[0]),
        .Q(id_count1[0]),
        .R(iRst0));
  FDRE \id_count1_reg[1] 
       (.C(s_axis_aud_aclk),
        .CE(E),
        .D(s_axis_aud_tid[1]),
        .Q(id_count1[1]),
        .R(iRst0));
  FDRE \id_count1_reg[2] 
       (.C(s_axis_aud_aclk),
        .CE(E),
        .D(s_axis_aud_tid[2]),
        .Q(id_count1[2]),
        .R(iRst0));
  LUT4 #(
    .INIT(16'h02FE)) 
    \id_count[0]_i_1 
       (.I0(s_axis_aud_tid[0]),
        .I1(id_check),
        .I2(id_miss_reg_0),
        .I3(id_count[0]),
        .O(\id_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FE0202FE02FE02)) 
    \id_count[1]_i_1 
       (.I0(s_axis_aud_tid[1]),
        .I1(id_check),
        .I2(id_miss_reg_0),
        .I3(id_count[1]),
        .I4(id_count[2]),
        .I5(id_count[0]),
        .O(\id_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02FEFE02FE02FE02)) 
    \id_count[2]_i_2 
       (.I0(s_axis_aud_tid[2]),
        .I1(id_check),
        .I2(id_miss_reg_0),
        .I3(id_count[2]),
        .I4(id_count[0]),
        .I5(id_count[1]),
        .O(\id_count[2]_i_2_n_0 ));
  FDRE \id_count_reg[0] 
       (.C(s_axis_aud_aclk),
        .CE(E),
        .D(\id_count[0]_i_1_n_0 ),
        .Q(id_count[0]),
        .R(iRst0));
  FDRE \id_count_reg[1] 
       (.C(s_axis_aud_aclk),
        .CE(E),
        .D(\id_count[1]_i_1_n_0 ),
        .Q(id_count[1]),
        .R(iRst0));
  FDRE \id_count_reg[2] 
       (.C(s_axis_aud_aclk),
        .CE(E),
        .D(\id_count[2]_i_2_n_0 ),
        .Q(id_count[2]),
        .R(iRst0));
  LUT4 #(
    .INIT(16'h2220)) 
    id_miss_i_1
       (.I0(id_check),
        .I1(id_miss_reg_0),
        .I2(id_miss_i_2_n_0),
        .I3(id_miss_reg_n_0),
        .O(id_miss_i_1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    id_miss_i_2
       (.I0(id_count1[2]),
        .I1(id_count[2]),
        .I2(id_count[1]),
        .I3(id_count1[1]),
        .I4(id_count[0]),
        .I5(id_count1[0]),
        .O(id_miss_i_2_n_0));
  FDRE id_miss_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(id_miss_i_1_n_0),
        .Q(id_miss_reg_n_0),
        .R(iRst0));
  LUT6 #(
    .INIT(64'h5F5F5F4F00000F00)) 
    pre_check_mode_i_1
       (.I0(rAesBlockSyncError_other_reg_n_0),
        .I1(\rAudioFrameCount[6]_i_2_n_0 ),
        .I2(stmAesDecode__0),
        .I3(\rAudioFrameCount[5]_i_2_n_0 ),
        .I4(pre_check_mode_reg_1),
        .I5(pre_check_mode_reg_0),
        .O(pre_check_mode_i_1_n_0));
  FDRE pre_check_mode_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(pre_check_mode_i_1_n_0),
        .Q(pre_check_mode_reg_0),
        .R(iRst0));
  FDRE rAesBlockComplete_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(rAesLastFrame),
        .Q(src_pulse),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    rAesBlockSyncError_i_1
       (.I0(rAesBlockSyncError_int_reg_n_0),
        .I1(id_miss_reg_n_0),
        .I2(rAesBlockSyncError_other_reg_n_0),
        .O(rAesBlockSyncError0));
  LUT5 #(
    .INIT(32'h04000004)) 
    rAesBlockSyncError_int_i_1
       (.I0(pre_check_mode_reg_1),
        .I1(stmAesDecode__0),
        .I2(rAesBlockSyncError_other_reg_n_0),
        .I3(\rAudioFrameCount[5]_i_2_n_0 ),
        .I4(\rAudioFrameCount[6]_i_2_n_0 ),
        .O(rAesBlockSyncError_int));
  FDRE rAesBlockSyncError_int_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(rAesBlockSyncError_int),
        .Q(rAesBlockSyncError_int_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000003FFFEF7F)) 
    rAesBlockSyncError_other_i_1
       (.I0(rAesBlockSyncError_other_i_2_n_0),
        .I1(s_axis_aud_tdata[1]),
        .I2(rAesBlockSyncError_other_i_3_n_0),
        .I3(s_axis_aud_tdata[0]),
        .I4(s_axis_aud_tid[0]),
        .I5(rAesBlockSyncError_other_reg_0),
        .O(rAesBlockSyncError_other_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    rAesBlockSyncError_other_i_2
       (.I0(\rAudioFrameCount[6]_i_3_n_0 ),
        .I1(\rAudioFrameCount_reg_n_0_[1] ),
        .I2(\rAudioFrameCount_reg_n_0_[0] ),
        .I3(\rAudioFrameCount_reg_n_0_[2] ),
        .I4(\rAudioFrameCount_reg_n_0_[3] ),
        .O(rAesBlockSyncError_other_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rAesBlockSyncError_other_i_3
       (.I0(s_axis_aud_tdata[3]),
        .I1(s_axis_aud_tdata[2]),
        .O(rAesBlockSyncError_other_i_3_n_0));
  FDRE rAesBlockSyncError_other_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(rAesBlockSyncError_other_i_1_n_0),
        .Q(rAesBlockSyncError_other_reg_n_0),
        .R(1'b0));
  FDRE rAesBlockSyncError_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(rAesBlockSyncError0),
        .Q(rAesBlockSyncError_reg_0),
        .R(iRst0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rAesChannelStatusChange_i_1
       (.I0(p_4_out),
        .I1(\rChannelStatusDiff_reg_n_0_[1] ),
        .I2(\rChannelStatusDiff_reg_n_0_[2] ),
        .I3(\rChannelStatusDiff_reg_n_0_[0] ),
        .O(rAesChannelStatusChange_i_1_n_0));
  FDRE rAesChannelStatusChange_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(rAesChannelStatusChange_i_1_n_0),
        .Q(rAesChannelStatusChange_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    rAesLastFrame_i_1
       (.I0(\rAudioFrameCount_reg_n_0_[6] ),
        .I1(\rAudioFrameCount[7]_i_5_n_0 ),
        .I2(\rAudioFrameCount_reg_n_0_[7] ),
        .I3(pre_check_mode_reg_1),
        .O(rAesLastFrame_i_1_n_0));
  FDRE rAesLastFrame_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(rAesLastFrame_i_1_n_0),
        .Q(rAesLastFrame),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4F4F4FFF)) 
    \rAudioFrameCount[0]_i_1 
       (.I0(\rAudioFrameCount[7]_i_6_n_0 ),
        .I1(\rAudioFrameCount[6]_i_2_n_0 ),
        .I2(stmAesDecode__0),
        .I3(\rAudioFrameCount_reg_n_0_[0] ),
        .I4(\rAudioFrameCount[3]_i_2_n_0 ),
        .O(rAudioFrameCount0_in[0]));
  LUT6 #(
    .INIT(64'h000000D000D00000)) 
    \rAudioFrameCount[1]_i_1 
       (.I0(\rAudioFrameCount[6]_i_2_n_0 ),
        .I1(\rAudioFrameCount[7]_i_6_n_0 ),
        .I2(stmAesDecode__0),
        .I3(\rAudioFrameCount[3]_i_2_n_0 ),
        .I4(\rAudioFrameCount_reg_n_0_[0] ),
        .I5(\rAudioFrameCount_reg_n_0_[1] ),
        .O(rAudioFrameCount0_in[1]));
  LUT6 #(
    .INIT(64'h00D0D0D0D0000000)) 
    \rAudioFrameCount[2]_i_1 
       (.I0(\rAudioFrameCount[6]_i_2_n_0 ),
        .I1(\rAudioFrameCount[7]_i_6_n_0 ),
        .I2(\rAudioFrameCount[5]_i_3_n_0 ),
        .I3(\rAudioFrameCount_reg_n_0_[1] ),
        .I4(\rAudioFrameCount_reg_n_0_[0] ),
        .I5(\rAudioFrameCount_reg_n_0_[2] ),
        .O(rAudioFrameCount0_in[2]));
  LUT6 #(
    .INIT(64'h000000D000D00000)) 
    \rAudioFrameCount[3]_i_1 
       (.I0(\rAudioFrameCount[6]_i_2_n_0 ),
        .I1(\rAudioFrameCount[7]_i_6_n_0 ),
        .I2(stmAesDecode__0),
        .I3(\rAudioFrameCount[3]_i_2_n_0 ),
        .I4(\rAudioFrameCount[4]_i_2_n_0 ),
        .I5(\rAudioFrameCount_reg_n_0_[3] ),
        .O(rAudioFrameCount0_in[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    \rAudioFrameCount[3]_i_2 
       (.I0(\rAudioFrameCount_reg_n_0_[7] ),
        .I1(\rAudioFrameCount[4]_i_2_n_0 ),
        .I2(\rAudioFrameCount_reg_n_0_[5] ),
        .I3(\rAudioFrameCount_reg_n_0_[3] ),
        .I4(\rAudioFrameCount_reg_n_0_[4] ),
        .I5(\rAudioFrameCount_reg_n_0_[6] ),
        .O(\rAudioFrameCount[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00D0D0D0D0000000)) 
    \rAudioFrameCount[4]_i_1 
       (.I0(\rAudioFrameCount[6]_i_2_n_0 ),
        .I1(\rAudioFrameCount[7]_i_6_n_0 ),
        .I2(\rAudioFrameCount[5]_i_3_n_0 ),
        .I3(\rAudioFrameCount_reg_n_0_[3] ),
        .I4(\rAudioFrameCount[4]_i_2_n_0 ),
        .I5(\rAudioFrameCount_reg_n_0_[4] ),
        .O(rAudioFrameCount0_in[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \rAudioFrameCount[4]_i_2 
       (.I0(\rAudioFrameCount_reg_n_0_[2] ),
        .I1(\rAudioFrameCount_reg_n_0_[0] ),
        .I2(\rAudioFrameCount_reg_n_0_[1] ),
        .O(\rAudioFrameCount[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDFF0000)) 
    \rAudioFrameCount[5]_i_1 
       (.I0(\rAudioFrameCount[6]_i_2_n_0 ),
        .I1(pre_check_mode_reg_1),
        .I2(rAesBlockSyncError_other_reg_n_0),
        .I3(\rAudioFrameCount[5]_i_2_n_0 ),
        .I4(\rAudioFrameCount[5]_i_3_n_0 ),
        .I5(\rAudioFrameCount[5]_i_4_n_0 ),
        .O(rAudioFrameCount0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \rAudioFrameCount[5]_i_2 
       (.I0(s_axis_aud_tdata[1]),
        .I1(s_axis_aud_tdata[3]),
        .I2(s_axis_aud_tdata[2]),
        .I3(s_axis_aud_tdata[0]),
        .O(\rAudioFrameCount[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \rAudioFrameCount[5]_i_3 
       (.I0(stmAesDecode__0),
        .I1(\rAudioFrameCount_reg_n_0_[6] ),
        .I2(\rAudioFrameCount[7]_i_5_n_0 ),
        .I3(\rAudioFrameCount_reg_n_0_[7] ),
        .O(\rAudioFrameCount[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    \rAudioFrameCount[5]_i_4 
       (.I0(\rAudioFrameCount_reg_n_0_[5] ),
        .I1(\rAudioFrameCount_reg_n_0_[3] ),
        .I2(\rAudioFrameCount_reg_n_0_[4] ),
        .I3(\rAudioFrameCount_reg_n_0_[2] ),
        .I4(\rAudioFrameCount_reg_n_0_[0] ),
        .I5(\rAudioFrameCount_reg_n_0_[1] ),
        .O(\rAudioFrameCount[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000D000D00000)) 
    \rAudioFrameCount[6]_i_1 
       (.I0(\rAudioFrameCount[6]_i_2_n_0 ),
        .I1(\rAudioFrameCount[7]_i_6_n_0 ),
        .I2(stmAesDecode__0),
        .I3(\rAudioFrameCount_reg_n_0_[7] ),
        .I4(\rAudioFrameCount[7]_i_5_n_0 ),
        .I5(\rAudioFrameCount_reg_n_0_[6] ),
        .O(rAudioFrameCount0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rAudioFrameCount[6]_i_2 
       (.I0(\rAudioFrameCount[6]_i_3_n_0 ),
        .I1(\rAudioFrameCount_reg_n_0_[1] ),
        .I2(\rAudioFrameCount_reg_n_0_[0] ),
        .I3(\rAudioFrameCount_reg_n_0_[2] ),
        .I4(\rAudioFrameCount_reg_n_0_[3] ),
        .O(\rAudioFrameCount[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rAudioFrameCount[6]_i_3 
       (.I0(\rAudioFrameCount_reg_n_0_[7] ),
        .I1(\rAudioFrameCount_reg_n_0_[6] ),
        .I2(\rAudioFrameCount_reg_n_0_[5] ),
        .I3(\rAudioFrameCount_reg_n_0_[4] ),
        .O(\rAudioFrameCount[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rAudioFrameCount[7]_i_1 
       (.I0(s_axis_aud_aresetn),
        .I1(dest_out),
        .O(iRst0));
  LUT2 #(
    .INIT(4'h7)) 
    \rAudioFrameCount[7]_i_2 
       (.I0(stmAesDecode__0),
        .I1(pre_check_mode_reg_1),
        .O(\rAudioFrameCount[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h02800000)) 
    \rAudioFrameCount[7]_i_3 
       (.I0(stmAesDecode__0),
        .I1(\rAudioFrameCount[7]_i_5_n_0 ),
        .I2(\rAudioFrameCount_reg_n_0_[6] ),
        .I3(\rAudioFrameCount_reg_n_0_[7] ),
        .I4(\rAudioFrameCount[7]_i_6_n_0 ),
        .O(rAudioFrameCount0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rAudioFrameCount[7]_i_5 
       (.I0(\rAudioFrameCount_reg_n_0_[1] ),
        .I1(\rAudioFrameCount_reg_n_0_[0] ),
        .I2(\rAudioFrameCount_reg_n_0_[2] ),
        .I3(\rAudioFrameCount_reg_n_0_[5] ),
        .I4(\rAudioFrameCount_reg_n_0_[3] ),
        .I5(\rAudioFrameCount_reg_n_0_[4] ),
        .O(\rAudioFrameCount[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \rAudioFrameCount[7]_i_6 
       (.I0(\rAudioFrameCount[5]_i_2_n_0 ),
        .I1(rAesBlockSyncError_other_reg_n_0),
        .I2(s_axis_aud_tid[1]),
        .I3(s_axis_aud_tid[2]),
        .I4(s_axis_aud_tid[0]),
        .I5(id_miss_reg_0),
        .O(\rAudioFrameCount[7]_i_6_n_0 ));
  FDRE \rAudioFrameCount_reg[0] 
       (.C(s_axis_aud_aclk),
        .CE(\rAudioFrameCount[7]_i_2_n_0 ),
        .D(rAudioFrameCount0_in[0]),
        .Q(\rAudioFrameCount_reg_n_0_[0] ),
        .R(iRst0));
  FDRE \rAudioFrameCount_reg[1] 
       (.C(s_axis_aud_aclk),
        .CE(\rAudioFrameCount[7]_i_2_n_0 ),
        .D(rAudioFrameCount0_in[1]),
        .Q(\rAudioFrameCount_reg_n_0_[1] ),
        .R(iRst0));
  FDRE \rAudioFrameCount_reg[2] 
       (.C(s_axis_aud_aclk),
        .CE(\rAudioFrameCount[7]_i_2_n_0 ),
        .D(rAudioFrameCount0_in[2]),
        .Q(\rAudioFrameCount_reg_n_0_[2] ),
        .R(iRst0));
  FDRE \rAudioFrameCount_reg[3] 
       (.C(s_axis_aud_aclk),
        .CE(\rAudioFrameCount[7]_i_2_n_0 ),
        .D(rAudioFrameCount0_in[3]),
        .Q(\rAudioFrameCount_reg_n_0_[3] ),
        .R(iRst0));
  FDRE \rAudioFrameCount_reg[4] 
       (.C(s_axis_aud_aclk),
        .CE(\rAudioFrameCount[7]_i_2_n_0 ),
        .D(rAudioFrameCount0_in[4]),
        .Q(\rAudioFrameCount_reg_n_0_[4] ),
        .R(iRst0));
  FDRE \rAudioFrameCount_reg[5] 
       (.C(s_axis_aud_aclk),
        .CE(\rAudioFrameCount[7]_i_2_n_0 ),
        .D(rAudioFrameCount0_in[5]),
        .Q(\rAudioFrameCount_reg_n_0_[5] ),
        .R(iRst0));
  FDRE \rAudioFrameCount_reg[6] 
       (.C(s_axis_aud_aclk),
        .CE(\rAudioFrameCount[7]_i_2_n_0 ),
        .D(rAudioFrameCount0_in[6]),
        .Q(\rAudioFrameCount_reg_n_0_[6] ),
        .R(iRst0));
  FDRE \rAudioFrameCount_reg[7] 
       (.C(s_axis_aud_aclk),
        .CE(\rAudioFrameCount[7]_i_2_n_0 ),
        .D(rAudioFrameCount0_in[7]),
        .Q(\rAudioFrameCount_reg_n_0_[7] ),
        .R(iRst0));
  LUT3 #(
    .INIT(8'hBF)) 
    \rChannelStatusCapt[191]_i_1 
       (.I0(dest_pulse),
        .I1(dest_out),
        .I2(s_axis_aud_aresetn),
        .O(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[0] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[100] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[4]),
        .Q(Q[100]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[101] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[5]),
        .Q(Q[101]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[102] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[6]),
        .Q(Q[102]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[103] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[7]),
        .Q(Q[103]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[104] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[8]),
        .Q(Q[104]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[105] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[9]),
        .Q(Q[105]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[106] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[10]),
        .Q(Q[106]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[107] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[11]),
        .Q(Q[107]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[108] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[12]),
        .Q(Q[108]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[109] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[13]),
        .Q(Q[109]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[10] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[10] ),
        .Q(Q[10]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[110] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[14]),
        .Q(Q[110]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[111] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[15]),
        .Q(Q[111]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[112] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[16]),
        .Q(Q[112]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[113] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[17]),
        .Q(Q[113]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[114] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[18]),
        .Q(Q[114]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[115] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[19]),
        .Q(Q[115]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[116] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[20]),
        .Q(Q[116]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[117] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[21]),
        .Q(Q[117]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[118] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[22]),
        .Q(Q[118]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[119] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[23]),
        .Q(Q[119]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[11] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[11] ),
        .Q(Q[11]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[120] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[24]),
        .Q(Q[120]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[121] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[25]),
        .Q(Q[121]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[122] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[26]),
        .Q(Q[122]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[123] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[27]),
        .Q(Q[123]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[124] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[28]),
        .Q(Q[124]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[125] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[29]),
        .Q(Q[125]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[126] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[30]),
        .Q(Q[126]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[127] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[31]),
        .Q(Q[127]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[128] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[32]),
        .Q(Q[128]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[129] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[33]),
        .Q(Q[129]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[12] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[12] ),
        .Q(Q[12]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[130] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[34]),
        .Q(Q[130]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[131] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[35]),
        .Q(Q[131]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[132] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[36]),
        .Q(Q[132]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[133] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[37]),
        .Q(Q[133]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[134] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[38]),
        .Q(Q[134]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[135] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[39]),
        .Q(Q[135]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[136] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[40]),
        .Q(Q[136]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[137] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[41]),
        .Q(Q[137]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[138] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[42]),
        .Q(Q[138]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[139] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[43]),
        .Q(Q[139]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[13] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[13] ),
        .Q(Q[13]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[140] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[44]),
        .Q(Q[140]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[141] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[45]),
        .Q(Q[141]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[142] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[46]),
        .Q(Q[142]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[143] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[47]),
        .Q(Q[143]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[144] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[0]),
        .Q(Q[144]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[145] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[1]),
        .Q(Q[145]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[146] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[2]),
        .Q(Q[146]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[147] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[3]),
        .Q(Q[147]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[148] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[4]),
        .Q(Q[148]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[149] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[5]),
        .Q(Q[149]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[14] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[14] ),
        .Q(Q[14]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[150] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[6]),
        .Q(Q[150]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[151] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[7]),
        .Q(Q[151]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[152] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[8]),
        .Q(Q[152]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[153] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[9]),
        .Q(Q[153]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[154] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[10]),
        .Q(Q[154]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[155] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[11]),
        .Q(Q[155]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[156] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[12]),
        .Q(Q[156]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[157] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[13]),
        .Q(Q[157]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[158] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[14]),
        .Q(Q[158]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[159] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[15]),
        .Q(Q[159]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[15] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[15] ),
        .Q(Q[15]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[160] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[16]),
        .Q(Q[160]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[161] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[17]),
        .Q(Q[161]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[162] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[18]),
        .Q(Q[162]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[163] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[19]),
        .Q(Q[163]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[164] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[20]),
        .Q(Q[164]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[165] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[21]),
        .Q(Q[165]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[166] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[22]),
        .Q(Q[166]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[167] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[23]),
        .Q(Q[167]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[168] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[24]),
        .Q(Q[168]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[169] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[25]),
        .Q(Q[169]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[16] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[16] ),
        .Q(Q[16]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[170] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[26]),
        .Q(Q[170]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[171] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[27]),
        .Q(Q[171]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[172] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[28]),
        .Q(Q[172]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[173] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[29]),
        .Q(Q[173]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[174] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[30]),
        .Q(Q[174]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[175] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[31]),
        .Q(Q[175]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[176] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[32]),
        .Q(Q[176]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[177] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[33]),
        .Q(Q[177]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[178] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[34]),
        .Q(Q[178]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[179] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[35]),
        .Q(Q[179]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[17] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[17] ),
        .Q(Q[17]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[180] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[36]),
        .Q(Q[180]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[181] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[37]),
        .Q(Q[181]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[182] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[38]),
        .Q(Q[182]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[183] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[39]),
        .Q(Q[183]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[184] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[40]),
        .Q(Q[184]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[185] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[41]),
        .Q(Q[185]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[186] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[42]),
        .Q(Q[186]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[187] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[43]),
        .Q(Q[187]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[188] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[44]),
        .Q(Q[188]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[189] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[45]),
        .Q(Q[189]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[18] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[18] ),
        .Q(Q[18]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[190] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[46]),
        .Q(Q[190]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[191] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in4_in[47]),
        .Q(Q[191]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[19] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[19] ),
        .Q(Q[19]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[1] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[20] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[20] ),
        .Q(Q[20]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[21] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[21] ),
        .Q(Q[21]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[22] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[22] ),
        .Q(Q[22]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[23] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[23] ),
        .Q(Q[23]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[24] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[24] ),
        .Q(Q[24]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[25] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[25] ),
        .Q(Q[25]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[26] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[26] ),
        .Q(Q[26]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[27] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[27] ),
        .Q(Q[27]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[28] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[28] ),
        .Q(Q[28]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[29] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[29] ),
        .Q(Q[29]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[2] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[30] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[30] ),
        .Q(Q[30]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[31] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[31] ),
        .Q(Q[31]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[32] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[32] ),
        .Q(Q[32]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[33] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[33] ),
        .Q(Q[33]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[34] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[34] ),
        .Q(Q[34]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[35] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[35] ),
        .Q(Q[35]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[36] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[36] ),
        .Q(Q[36]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[37] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[37] ),
        .Q(Q[37]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[38] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[38] ),
        .Q(Q[38]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[39] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[39] ),
        .Q(Q[39]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[3] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[40] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[40] ),
        .Q(Q[40]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[41] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[41] ),
        .Q(Q[41]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[42] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[42] ),
        .Q(Q[42]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[43] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[43] ),
        .Q(Q[43]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[44] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[44] ),
        .Q(Q[44]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[45] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[45] ),
        .Q(Q[45]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[46] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[46] ),
        .Q(Q[46]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[47] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[47] ),
        .Q(Q[47]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[48] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[0]),
        .Q(Q[48]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[49] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[1]),
        .Q(Q[49]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[4] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[50] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[2]),
        .Q(Q[50]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[51] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[3]),
        .Q(Q[51]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[52] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[4]),
        .Q(Q[52]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[53] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[5]),
        .Q(Q[53]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[54] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[6]),
        .Q(Q[54]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[55] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[7]),
        .Q(Q[55]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[56] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[8]),
        .Q(Q[56]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[57] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[9]),
        .Q(Q[57]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[58] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[10]),
        .Q(Q[58]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[59] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[11]),
        .Q(Q[59]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[5] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[60] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[12]),
        .Q(Q[60]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[61] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[13]),
        .Q(Q[61]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[62] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[14]),
        .Q(Q[62]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[63] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[15]),
        .Q(Q[63]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[64] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[16]),
        .Q(Q[64]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[65] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[17]),
        .Q(Q[65]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[66] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[18]),
        .Q(Q[66]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[67] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[19]),
        .Q(Q[67]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[68] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[20]),
        .Q(Q[68]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[69] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[21]),
        .Q(Q[69]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[6] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[70] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[22]),
        .Q(Q[70]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[71] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[23]),
        .Q(Q[71]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[72] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[24]),
        .Q(Q[72]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[73] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[25]),
        .Q(Q[73]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[74] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[26]),
        .Q(Q[74]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[75] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[27]),
        .Q(Q[75]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[76] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[28]),
        .Q(Q[76]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[77] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[29]),
        .Q(Q[77]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[78] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[30]),
        .Q(Q[78]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[79] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[31]),
        .Q(Q[79]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[7] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[80] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[32]),
        .Q(Q[80]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[81] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[33]),
        .Q(Q[81]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[82] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[34]),
        .Q(Q[82]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[83] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[35]),
        .Q(Q[83]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[84] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[36]),
        .Q(Q[84]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[85] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[37]),
        .Q(Q[85]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[86] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[38]),
        .Q(Q[86]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[87] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[39]),
        .Q(Q[87]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[88] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[40]),
        .Q(Q[88]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[89] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[41]),
        .Q(Q[89]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[8] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[8] ),
        .Q(Q[8]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[90] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[42]),
        .Q(Q[90]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[91] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[43]),
        .Q(Q[91]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[92] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[44]),
        .Q(Q[92]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[93] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[45]),
        .Q(Q[93]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[94] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[46]),
        .Q(Q[94]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[95] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in[47]),
        .Q(Q[95]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[96] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[0]),
        .Q(Q[96]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[97] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[1]),
        .Q(Q[97]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[98] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[2]),
        .Q(Q[98]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[99] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(p_0_in1_in[3]),
        .Q(Q[99]),
        .R(rChannelStatusCapt0));
  FDRE \rChannelStatusCapt_reg[9] 
       (.C(s_axis_aud_aclk),
        .CE(rAesLastFrame),
        .D(\rChannelStatusIn_reg_n_0_[9] ),
        .Q(Q[9]),
        .R(rChannelStatusCapt0));
  CARRY4 rChannelStatusDiff0_carry
       (.CI(1'b0),
        .CO({rChannelStatusDiff0_carry_n_0,rChannelStatusDiff0_carry_n_1,rChannelStatusDiff0_carry_n_2,rChannelStatusDiff0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rChannelStatusDiff0_carry_O_UNCONNECTED[3:0]),
        .S({rChannelStatusDiff0_carry_i_1_n_0,rChannelStatusDiff0_carry_i_2_n_0,rChannelStatusDiff0_carry_i_3_n_0,rChannelStatusDiff0_carry_i_4_n_0}));
  CARRY4 rChannelStatusDiff0_carry__0
       (.CI(rChannelStatusDiff0_carry_n_0),
        .CO({rChannelStatusDiff0_carry__0_n_0,rChannelStatusDiff0_carry__0_n_1,rChannelStatusDiff0_carry__0_n_2,rChannelStatusDiff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rChannelStatusDiff0_carry__0_O_UNCONNECTED[3:0]),
        .S({rChannelStatusDiff0_carry__0_i_1_n_0,rChannelStatusDiff0_carry__0_i_2_n_0,rChannelStatusDiff0_carry__0_i_3_n_0,rChannelStatusDiff0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__0_i_1
       (.I0(Q[21]),
        .I1(\rChannelStatusIn_reg_n_0_[21] ),
        .I2(\rChannelStatusIn_reg_n_0_[23] ),
        .I3(Q[23]),
        .I4(\rChannelStatusIn_reg_n_0_[22] ),
        .I5(Q[22]),
        .O(rChannelStatusDiff0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__0_i_2
       (.I0(Q[18]),
        .I1(\rChannelStatusIn_reg_n_0_[18] ),
        .I2(\rChannelStatusIn_reg_n_0_[20] ),
        .I3(Q[20]),
        .I4(\rChannelStatusIn_reg_n_0_[19] ),
        .I5(Q[19]),
        .O(rChannelStatusDiff0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__0_i_3
       (.I0(Q[15]),
        .I1(\rChannelStatusIn_reg_n_0_[15] ),
        .I2(\rChannelStatusIn_reg_n_0_[17] ),
        .I3(Q[17]),
        .I4(\rChannelStatusIn_reg_n_0_[16] ),
        .I5(Q[16]),
        .O(rChannelStatusDiff0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__0_i_4
       (.I0(Q[12]),
        .I1(\rChannelStatusIn_reg_n_0_[12] ),
        .I2(\rChannelStatusIn_reg_n_0_[14] ),
        .I3(Q[14]),
        .I4(\rChannelStatusIn_reg_n_0_[13] ),
        .I5(Q[13]),
        .O(rChannelStatusDiff0_carry__0_i_4_n_0));
  CARRY4 rChannelStatusDiff0_carry__1
       (.CI(rChannelStatusDiff0_carry__0_n_0),
        .CO({rChannelStatusDiff0_carry__1_n_0,rChannelStatusDiff0_carry__1_n_1,rChannelStatusDiff0_carry__1_n_2,rChannelStatusDiff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rChannelStatusDiff0_carry__1_O_UNCONNECTED[3:0]),
        .S({rChannelStatusDiff0_carry__1_i_1_n_0,rChannelStatusDiff0_carry__1_i_2_n_0,rChannelStatusDiff0_carry__1_i_3_n_0,rChannelStatusDiff0_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__1_i_1
       (.I0(Q[33]),
        .I1(\rChannelStatusIn_reg_n_0_[33] ),
        .I2(\rChannelStatusIn_reg_n_0_[35] ),
        .I3(Q[35]),
        .I4(\rChannelStatusIn_reg_n_0_[34] ),
        .I5(Q[34]),
        .O(rChannelStatusDiff0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__1_i_2
       (.I0(Q[30]),
        .I1(\rChannelStatusIn_reg_n_0_[30] ),
        .I2(\rChannelStatusIn_reg_n_0_[32] ),
        .I3(Q[32]),
        .I4(\rChannelStatusIn_reg_n_0_[31] ),
        .I5(Q[31]),
        .O(rChannelStatusDiff0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__1_i_3
       (.I0(Q[27]),
        .I1(\rChannelStatusIn_reg_n_0_[27] ),
        .I2(\rChannelStatusIn_reg_n_0_[29] ),
        .I3(Q[29]),
        .I4(\rChannelStatusIn_reg_n_0_[28] ),
        .I5(Q[28]),
        .O(rChannelStatusDiff0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__1_i_4
       (.I0(Q[24]),
        .I1(\rChannelStatusIn_reg_n_0_[24] ),
        .I2(\rChannelStatusIn_reg_n_0_[26] ),
        .I3(Q[26]),
        .I4(\rChannelStatusIn_reg_n_0_[25] ),
        .I5(Q[25]),
        .O(rChannelStatusDiff0_carry__1_i_4_n_0));
  CARRY4 rChannelStatusDiff0_carry__2
       (.CI(rChannelStatusDiff0_carry__1_n_0),
        .CO({rChannelStatusDiff0,rChannelStatusDiff0_carry__2_n_1,rChannelStatusDiff0_carry__2_n_2,rChannelStatusDiff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rChannelStatusDiff0_carry__2_O_UNCONNECTED[3:0]),
        .S({rChannelStatusDiff0_carry__2_i_1_n_0,rChannelStatusDiff0_carry__2_i_2_n_0,rChannelStatusDiff0_carry__2_i_3_n_0,rChannelStatusDiff0_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__2_i_1
       (.I0(Q[45]),
        .I1(\rChannelStatusIn_reg_n_0_[45] ),
        .I2(\rChannelStatusIn_reg_n_0_[47] ),
        .I3(Q[47]),
        .I4(\rChannelStatusIn_reg_n_0_[46] ),
        .I5(Q[46]),
        .O(rChannelStatusDiff0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__2_i_2
       (.I0(Q[42]),
        .I1(\rChannelStatusIn_reg_n_0_[42] ),
        .I2(\rChannelStatusIn_reg_n_0_[44] ),
        .I3(Q[44]),
        .I4(\rChannelStatusIn_reg_n_0_[43] ),
        .I5(Q[43]),
        .O(rChannelStatusDiff0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__2_i_3
       (.I0(Q[39]),
        .I1(\rChannelStatusIn_reg_n_0_[39] ),
        .I2(\rChannelStatusIn_reg_n_0_[41] ),
        .I3(Q[41]),
        .I4(\rChannelStatusIn_reg_n_0_[40] ),
        .I5(Q[40]),
        .O(rChannelStatusDiff0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry__2_i_4
       (.I0(Q[36]),
        .I1(\rChannelStatusIn_reg_n_0_[36] ),
        .I2(\rChannelStatusIn_reg_n_0_[38] ),
        .I3(Q[38]),
        .I4(\rChannelStatusIn_reg_n_0_[37] ),
        .I5(Q[37]),
        .O(rChannelStatusDiff0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry_i_1
       (.I0(Q[9]),
        .I1(\rChannelStatusIn_reg_n_0_[9] ),
        .I2(\rChannelStatusIn_reg_n_0_[11] ),
        .I3(Q[11]),
        .I4(\rChannelStatusIn_reg_n_0_[10] ),
        .I5(Q[10]),
        .O(rChannelStatusDiff0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry_i_2
       (.I0(Q[6]),
        .I1(\rChannelStatusIn_reg_n_0_[6] ),
        .I2(\rChannelStatusIn_reg_n_0_[8] ),
        .I3(Q[8]),
        .I4(\rChannelStatusIn_reg_n_0_[7] ),
        .I5(Q[7]),
        .O(rChannelStatusDiff0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry_i_3
       (.I0(Q[3]),
        .I1(\rChannelStatusIn_reg_n_0_[3] ),
        .I2(\rChannelStatusIn_reg_n_0_[5] ),
        .I3(Q[5]),
        .I4(\rChannelStatusIn_reg_n_0_[4] ),
        .I5(Q[4]),
        .O(rChannelStatusDiff0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff0_carry_i_4
       (.I0(Q[0]),
        .I1(\rChannelStatusIn_reg_n_0_[0] ),
        .I2(\rChannelStatusIn_reg_n_0_[2] ),
        .I3(Q[2]),
        .I4(\rChannelStatusIn_reg_n_0_[1] ),
        .I5(Q[1]),
        .O(rChannelStatusDiff0_carry_i_4_n_0));
  CARRY4 \rChannelStatusDiff0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\rChannelStatusDiff0_inferred__0/i__carry_n_0 ,\rChannelStatusDiff0_inferred__0/i__carry_n_1 ,\rChannelStatusDiff0_inferred__0/i__carry_n_2 ,\rChannelStatusDiff0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_rChannelStatusDiff0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \rChannelStatusDiff0_inferred__0/i__carry__0 
       (.CI(\rChannelStatusDiff0_inferred__0/i__carry_n_0 ),
        .CO({\rChannelStatusDiff0_inferred__0/i__carry__0_n_0 ,\rChannelStatusDiff0_inferred__0/i__carry__0_n_1 ,\rChannelStatusDiff0_inferred__0/i__carry__0_n_2 ,\rChannelStatusDiff0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_rChannelStatusDiff0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \rChannelStatusDiff0_inferred__0/i__carry__1 
       (.CI(\rChannelStatusDiff0_inferred__0/i__carry__0_n_0 ),
        .CO({\rChannelStatusDiff0_inferred__0/i__carry__1_n_0 ,\rChannelStatusDiff0_inferred__0/i__carry__1_n_1 ,\rChannelStatusDiff0_inferred__0/i__carry__1_n_2 ,\rChannelStatusDiff0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_rChannelStatusDiff0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \rChannelStatusDiff0_inferred__0/i__carry__2 
       (.CI(\rChannelStatusDiff0_inferred__0/i__carry__1_n_0 ),
        .CO({rChannelStatusDiff00_out,\rChannelStatusDiff0_inferred__0/i__carry__2_n_1 ,\rChannelStatusDiff0_inferred__0/i__carry__2_n_2 ,\rChannelStatusDiff0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_rChannelStatusDiff0_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \rChannelStatusDiff0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\rChannelStatusDiff0_inferred__1/i__carry_n_0 ,\rChannelStatusDiff0_inferred__1/i__carry_n_1 ,\rChannelStatusDiff0_inferred__1/i__carry_n_2 ,\rChannelStatusDiff0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_rChannelStatusDiff0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \rChannelStatusDiff0_inferred__1/i__carry__0 
       (.CI(\rChannelStatusDiff0_inferred__1/i__carry_n_0 ),
        .CO({\rChannelStatusDiff0_inferred__1/i__carry__0_n_0 ,\rChannelStatusDiff0_inferred__1/i__carry__0_n_1 ,\rChannelStatusDiff0_inferred__1/i__carry__0_n_2 ,\rChannelStatusDiff0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_rChannelStatusDiff0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \rChannelStatusDiff0_inferred__1/i__carry__1 
       (.CI(\rChannelStatusDiff0_inferred__1/i__carry__0_n_0 ),
        .CO({\rChannelStatusDiff0_inferred__1/i__carry__1_n_0 ,\rChannelStatusDiff0_inferred__1/i__carry__1_n_1 ,\rChannelStatusDiff0_inferred__1/i__carry__1_n_2 ,\rChannelStatusDiff0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_rChannelStatusDiff0_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \rChannelStatusDiff0_inferred__1/i__carry__2 
       (.CI(\rChannelStatusDiff0_inferred__1/i__carry__1_n_0 ),
        .CO({rChannelStatusDiff03_out,\rChannelStatusDiff0_inferred__1/i__carry__2_n_1 ,\rChannelStatusDiff0_inferred__1/i__carry__2_n_2 ,\rChannelStatusDiff0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_rChannelStatusDiff0_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  CARRY4 rChannelStatusDiff1_carry
       (.CI(1'b0),
        .CO({rChannelStatusDiff1_carry_n_0,rChannelStatusDiff1_carry_n_1,rChannelStatusDiff1_carry_n_2,rChannelStatusDiff1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rChannelStatusDiff1_carry_O_UNCONNECTED[3:0]),
        .S({rChannelStatusDiff1_carry_i_1_n_0,rChannelStatusDiff1_carry_i_2_n_0,rChannelStatusDiff1_carry_i_3_n_0,rChannelStatusDiff1_carry_i_4_n_0}));
  CARRY4 rChannelStatusDiff1_carry__0
       (.CI(rChannelStatusDiff1_carry_n_0),
        .CO({rChannelStatusDiff1_carry__0_n_0,rChannelStatusDiff1_carry__0_n_1,rChannelStatusDiff1_carry__0_n_2,rChannelStatusDiff1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rChannelStatusDiff1_carry__0_O_UNCONNECTED[3:0]),
        .S({rChannelStatusDiff1_carry__0_i_1_n_0,rChannelStatusDiff1_carry__0_i_2_n_0,rChannelStatusDiff1_carry__0_i_3_n_0,rChannelStatusDiff1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__0_i_1
       (.I0(Q[165]),
        .I1(p_0_in4_in[21]),
        .I2(p_0_in4_in[23]),
        .I3(Q[167]),
        .I4(p_0_in4_in[22]),
        .I5(Q[166]),
        .O(rChannelStatusDiff1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__0_i_2
       (.I0(Q[162]),
        .I1(p_0_in4_in[18]),
        .I2(p_0_in4_in[20]),
        .I3(Q[164]),
        .I4(p_0_in4_in[19]),
        .I5(Q[163]),
        .O(rChannelStatusDiff1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__0_i_3
       (.I0(Q[159]),
        .I1(p_0_in4_in[15]),
        .I2(p_0_in4_in[17]),
        .I3(Q[161]),
        .I4(p_0_in4_in[16]),
        .I5(Q[160]),
        .O(rChannelStatusDiff1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__0_i_4
       (.I0(Q[156]),
        .I1(p_0_in4_in[12]),
        .I2(p_0_in4_in[14]),
        .I3(Q[158]),
        .I4(p_0_in4_in[13]),
        .I5(Q[157]),
        .O(rChannelStatusDiff1_carry__0_i_4_n_0));
  CARRY4 rChannelStatusDiff1_carry__1
       (.CI(rChannelStatusDiff1_carry__0_n_0),
        .CO({rChannelStatusDiff1_carry__1_n_0,rChannelStatusDiff1_carry__1_n_1,rChannelStatusDiff1_carry__1_n_2,rChannelStatusDiff1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rChannelStatusDiff1_carry__1_O_UNCONNECTED[3:0]),
        .S({rChannelStatusDiff1_carry__1_i_1_n_0,rChannelStatusDiff1_carry__1_i_2_n_0,rChannelStatusDiff1_carry__1_i_3_n_0,rChannelStatusDiff1_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__1_i_1
       (.I0(Q[177]),
        .I1(p_0_in4_in[33]),
        .I2(p_0_in4_in[35]),
        .I3(Q[179]),
        .I4(p_0_in4_in[34]),
        .I5(Q[178]),
        .O(rChannelStatusDiff1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__1_i_2
       (.I0(Q[174]),
        .I1(p_0_in4_in[30]),
        .I2(p_0_in4_in[32]),
        .I3(Q[176]),
        .I4(p_0_in4_in[31]),
        .I5(Q[175]),
        .O(rChannelStatusDiff1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__1_i_3
       (.I0(Q[171]),
        .I1(p_0_in4_in[27]),
        .I2(p_0_in4_in[29]),
        .I3(Q[173]),
        .I4(p_0_in4_in[28]),
        .I5(Q[172]),
        .O(rChannelStatusDiff1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__1_i_4
       (.I0(Q[168]),
        .I1(p_0_in4_in[24]),
        .I2(p_0_in4_in[26]),
        .I3(Q[170]),
        .I4(p_0_in4_in[25]),
        .I5(Q[169]),
        .O(rChannelStatusDiff1_carry__1_i_4_n_0));
  CARRY4 rChannelStatusDiff1_carry__2
       (.CI(rChannelStatusDiff1_carry__1_n_0),
        .CO({rChannelStatusDiff1,rChannelStatusDiff1_carry__2_n_1,rChannelStatusDiff1_carry__2_n_2,rChannelStatusDiff1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rChannelStatusDiff1_carry__2_O_UNCONNECTED[3:0]),
        .S({rChannelStatusDiff1_carry__2_i_1_n_0,rChannelStatusDiff1_carry__2_i_2_n_0,rChannelStatusDiff1_carry__2_i_3_n_0,rChannelStatusDiff1_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__2_i_1
       (.I0(Q[189]),
        .I1(p_0_in4_in[45]),
        .I2(p_0_in4_in[47]),
        .I3(Q[191]),
        .I4(p_0_in4_in[46]),
        .I5(Q[190]),
        .O(rChannelStatusDiff1_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__2_i_2
       (.I0(Q[186]),
        .I1(p_0_in4_in[42]),
        .I2(p_0_in4_in[44]),
        .I3(Q[188]),
        .I4(p_0_in4_in[43]),
        .I5(Q[187]),
        .O(rChannelStatusDiff1_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__2_i_3
       (.I0(Q[183]),
        .I1(p_0_in4_in[39]),
        .I2(p_0_in4_in[41]),
        .I3(Q[185]),
        .I4(p_0_in4_in[40]),
        .I5(Q[184]),
        .O(rChannelStatusDiff1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry__2_i_4
       (.I0(Q[180]),
        .I1(p_0_in4_in[36]),
        .I2(p_0_in4_in[38]),
        .I3(Q[182]),
        .I4(p_0_in4_in[37]),
        .I5(Q[181]),
        .O(rChannelStatusDiff1_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry_i_1
       (.I0(Q[153]),
        .I1(p_0_in4_in[9]),
        .I2(p_0_in4_in[11]),
        .I3(Q[155]),
        .I4(p_0_in4_in[10]),
        .I5(Q[154]),
        .O(rChannelStatusDiff1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry_i_2
       (.I0(Q[150]),
        .I1(p_0_in4_in[6]),
        .I2(p_0_in4_in[8]),
        .I3(Q[152]),
        .I4(p_0_in4_in[7]),
        .I5(Q[151]),
        .O(rChannelStatusDiff1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry_i_3
       (.I0(Q[147]),
        .I1(p_0_in4_in[3]),
        .I2(p_0_in4_in[5]),
        .I3(Q[149]),
        .I4(p_0_in4_in[4]),
        .I5(Q[148]),
        .O(rChannelStatusDiff1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rChannelStatusDiff1_carry_i_4
       (.I0(Q[144]),
        .I1(p_0_in4_in[0]),
        .I2(p_0_in4_in[2]),
        .I3(Q[146]),
        .I4(p_0_in4_in[1]),
        .I5(Q[145]),
        .O(rChannelStatusDiff1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rChannelStatusDiff[0]_i_1 
       (.I0(rAesLastFrame),
        .I1(rChannelStatusDiff0),
        .O(\rChannelStatusDiff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rChannelStatusDiff[1]_i_1 
       (.I0(rAesLastFrame),
        .I1(rChannelStatusDiff00_out),
        .O(\rChannelStatusDiff[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rChannelStatusDiff[2]_i_1 
       (.I0(rAesLastFrame),
        .I1(rChannelStatusDiff03_out),
        .O(\rChannelStatusDiff[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rChannelStatusDiff[3]_i_1 
       (.I0(rAesLastFrame),
        .I1(rChannelStatusDiff1),
        .O(rChannelStatusDiff));
  FDRE \rChannelStatusDiff_reg[0] 
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(\rChannelStatusDiff[0]_i_1_n_0 ),
        .Q(\rChannelStatusDiff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rChannelStatusDiff_reg[1] 
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(\rChannelStatusDiff[1]_i_1_n_0 ),
        .Q(\rChannelStatusDiff_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rChannelStatusDiff_reg[2] 
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(\rChannelStatusDiff[2]_i_1_n_0 ),
        .Q(\rChannelStatusDiff_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rChannelStatusDiff_reg[3] 
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(rChannelStatusDiff),
        .Q(p_4_out),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[0] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[1] ),
        .Q(\rChannelStatusIn_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[100] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[5]),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[101] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[6]),
        .Q(p_0_in1_in[5]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[102] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[7]),
        .Q(p_0_in1_in[6]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[103] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[8]),
        .Q(p_0_in1_in[7]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[104] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[9]),
        .Q(p_0_in1_in[8]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[105] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[10]),
        .Q(p_0_in1_in[9]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[106] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[11]),
        .Q(p_0_in1_in[10]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[107] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[12]),
        .Q(p_0_in1_in[11]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[108] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[13]),
        .Q(p_0_in1_in[12]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[109] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[14]),
        .Q(p_0_in1_in[13]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[10] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[11] ),
        .Q(\rChannelStatusIn_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[110] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[15]),
        .Q(p_0_in1_in[14]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[111] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[16]),
        .Q(p_0_in1_in[15]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[112] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[17]),
        .Q(p_0_in1_in[16]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[113] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[18]),
        .Q(p_0_in1_in[17]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[114] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[19]),
        .Q(p_0_in1_in[18]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[115] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[20]),
        .Q(p_0_in1_in[19]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[116] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[21]),
        .Q(p_0_in1_in[20]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[117] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[22]),
        .Q(p_0_in1_in[21]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[118] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[23]),
        .Q(p_0_in1_in[22]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[119] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[24]),
        .Q(p_0_in1_in[23]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[11] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[12] ),
        .Q(\rChannelStatusIn_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[120] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[25]),
        .Q(p_0_in1_in[24]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[121] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[26]),
        .Q(p_0_in1_in[25]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[122] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[27]),
        .Q(p_0_in1_in[26]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[123] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[28]),
        .Q(p_0_in1_in[27]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[124] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[29]),
        .Q(p_0_in1_in[28]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[125] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[30]),
        .Q(p_0_in1_in[29]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[126] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[31]),
        .Q(p_0_in1_in[30]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[127] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[32]),
        .Q(p_0_in1_in[31]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[128] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[33]),
        .Q(p_0_in1_in[32]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[129] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[34]),
        .Q(p_0_in1_in[33]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[12] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[13] ),
        .Q(\rChannelStatusIn_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[130] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[35]),
        .Q(p_0_in1_in[34]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[131] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[36]),
        .Q(p_0_in1_in[35]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[132] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[37]),
        .Q(p_0_in1_in[36]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[133] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[38]),
        .Q(p_0_in1_in[37]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[134] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[39]),
        .Q(p_0_in1_in[38]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[135] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[40]),
        .Q(p_0_in1_in[39]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[136] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[41]),
        .Q(p_0_in1_in[40]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[137] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[42]),
        .Q(p_0_in1_in[41]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[138] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[43]),
        .Q(p_0_in1_in[42]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[139] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[44]),
        .Q(p_0_in1_in[43]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[13] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[14] ),
        .Q(\rChannelStatusIn_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[140] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[45]),
        .Q(p_0_in1_in[44]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[141] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[46]),
        .Q(p_0_in1_in[45]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[142] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[47]),
        .Q(p_0_in1_in[46]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[143] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[0]),
        .Q(p_0_in1_in[47]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[144] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[1]),
        .Q(p_0_in4_in[0]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[145] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[2]),
        .Q(p_0_in4_in[1]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[146] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[3]),
        .Q(p_0_in4_in[2]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[147] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[4]),
        .Q(p_0_in4_in[3]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[148] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[5]),
        .Q(p_0_in4_in[4]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[149] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[6]),
        .Q(p_0_in4_in[5]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[14] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[15] ),
        .Q(\rChannelStatusIn_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[150] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[7]),
        .Q(p_0_in4_in[6]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[151] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[8]),
        .Q(p_0_in4_in[7]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[152] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[9]),
        .Q(p_0_in4_in[8]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[153] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[10]),
        .Q(p_0_in4_in[9]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[154] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[11]),
        .Q(p_0_in4_in[10]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[155] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[12]),
        .Q(p_0_in4_in[11]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[156] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[13]),
        .Q(p_0_in4_in[12]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[157] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[14]),
        .Q(p_0_in4_in[13]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[158] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[15]),
        .Q(p_0_in4_in[14]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[159] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[16]),
        .Q(p_0_in4_in[15]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[15] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[16] ),
        .Q(\rChannelStatusIn_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[160] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[17]),
        .Q(p_0_in4_in[16]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[161] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[18]),
        .Q(p_0_in4_in[17]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[162] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[19]),
        .Q(p_0_in4_in[18]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[163] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[20]),
        .Q(p_0_in4_in[19]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[164] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[21]),
        .Q(p_0_in4_in[20]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[165] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[22]),
        .Q(p_0_in4_in[21]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[166] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[23]),
        .Q(p_0_in4_in[22]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[167] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[24]),
        .Q(p_0_in4_in[23]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[168] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[25]),
        .Q(p_0_in4_in[24]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[169] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[26]),
        .Q(p_0_in4_in[25]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[16] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[17] ),
        .Q(\rChannelStatusIn_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[170] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[27]),
        .Q(p_0_in4_in[26]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[171] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[28]),
        .Q(p_0_in4_in[27]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[172] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[29]),
        .Q(p_0_in4_in[28]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[173] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[30]),
        .Q(p_0_in4_in[29]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[174] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[31]),
        .Q(p_0_in4_in[30]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[175] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[32]),
        .Q(p_0_in4_in[31]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[176] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[33]),
        .Q(p_0_in4_in[32]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[177] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[34]),
        .Q(p_0_in4_in[33]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[178] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[35]),
        .Q(p_0_in4_in[34]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[179] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[36]),
        .Q(p_0_in4_in[35]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[17] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[18] ),
        .Q(\rChannelStatusIn_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[180] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[37]),
        .Q(p_0_in4_in[36]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[181] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[38]),
        .Q(p_0_in4_in[37]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[182] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[39]),
        .Q(p_0_in4_in[38]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[183] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[40]),
        .Q(p_0_in4_in[39]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[184] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[41]),
        .Q(p_0_in4_in[40]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[185] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[42]),
        .Q(p_0_in4_in[41]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[186] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[43]),
        .Q(p_0_in4_in[42]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[187] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[44]),
        .Q(p_0_in4_in[43]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[188] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[45]),
        .Q(p_0_in4_in[44]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[189] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[46]),
        .Q(p_0_in4_in[45]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[18] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[19] ),
        .Q(\rChannelStatusIn_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[190] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in4_in[47]),
        .Q(p_0_in4_in[46]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[191] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(s_axis_aud_tdata[4]),
        .Q(p_0_in4_in[47]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[19] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[20] ),
        .Q(\rChannelStatusIn_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[1] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[2] ),
        .Q(\rChannelStatusIn_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[20] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[21] ),
        .Q(\rChannelStatusIn_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[21] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[22] ),
        .Q(\rChannelStatusIn_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[22] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[23] ),
        .Q(\rChannelStatusIn_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[23] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[24] ),
        .Q(\rChannelStatusIn_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[24] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[25] ),
        .Q(\rChannelStatusIn_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[25] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[26] ),
        .Q(\rChannelStatusIn_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[26] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[27] ),
        .Q(\rChannelStatusIn_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[27] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[28] ),
        .Q(\rChannelStatusIn_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[28] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[29] ),
        .Q(\rChannelStatusIn_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[29] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[30] ),
        .Q(\rChannelStatusIn_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[2] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[3] ),
        .Q(\rChannelStatusIn_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[30] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[31] ),
        .Q(\rChannelStatusIn_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[31] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[32] ),
        .Q(\rChannelStatusIn_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[32] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[33] ),
        .Q(\rChannelStatusIn_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[33] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[34] ),
        .Q(\rChannelStatusIn_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[34] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[35] ),
        .Q(\rChannelStatusIn_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[35] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[36] ),
        .Q(\rChannelStatusIn_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[36] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[37] ),
        .Q(\rChannelStatusIn_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[37] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[38] ),
        .Q(\rChannelStatusIn_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[38] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[39] ),
        .Q(\rChannelStatusIn_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[39] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[40] ),
        .Q(\rChannelStatusIn_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[3] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[4] ),
        .Q(\rChannelStatusIn_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[40] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[41] ),
        .Q(\rChannelStatusIn_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[41] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[42] ),
        .Q(\rChannelStatusIn_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[42] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[43] ),
        .Q(\rChannelStatusIn_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[43] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[44] ),
        .Q(\rChannelStatusIn_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[44] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[45] ),
        .Q(\rChannelStatusIn_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[45] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[46] ),
        .Q(\rChannelStatusIn_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[46] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[47] ),
        .Q(\rChannelStatusIn_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[47] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[0]),
        .Q(\rChannelStatusIn_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[48] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[49] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[4] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[5] ),
        .Q(\rChannelStatusIn_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[50] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[3]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[51] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[4]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[52] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[5]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[53] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[6]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[54] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[7]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[55] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[8]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[56] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[9]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[57] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[10]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[58] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[11]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[59] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[12]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[5] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[6] ),
        .Q(\rChannelStatusIn_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[60] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[13]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[61] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[14]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[62] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[15]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[63] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[16]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[64] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[17]),
        .Q(p_0_in[16]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[65] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[18]),
        .Q(p_0_in[17]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[66] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[19]),
        .Q(p_0_in[18]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[67] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[20]),
        .Q(p_0_in[19]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[68] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[21]),
        .Q(p_0_in[20]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[69] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[22]),
        .Q(p_0_in[21]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[6] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[7] ),
        .Q(\rChannelStatusIn_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[70] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[23]),
        .Q(p_0_in[22]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[71] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[24]),
        .Q(p_0_in[23]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[72] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[25]),
        .Q(p_0_in[24]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[73] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[26]),
        .Q(p_0_in[25]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[74] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[27]),
        .Q(p_0_in[26]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[75] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[28]),
        .Q(p_0_in[27]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[76] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[29]),
        .Q(p_0_in[28]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[77] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[30]),
        .Q(p_0_in[29]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[78] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[31]),
        .Q(p_0_in[30]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[79] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[32]),
        .Q(p_0_in[31]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[7] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[8] ),
        .Q(\rChannelStatusIn_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[80] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[33]),
        .Q(p_0_in[32]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[81] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[34]),
        .Q(p_0_in[33]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[82] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[35]),
        .Q(p_0_in[34]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[83] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[36]),
        .Q(p_0_in[35]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[84] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[37]),
        .Q(p_0_in[36]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[85] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[38]),
        .Q(p_0_in[37]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[86] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[39]),
        .Q(p_0_in[38]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[87] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[40]),
        .Q(p_0_in[39]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[88] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[41]),
        .Q(p_0_in[40]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[89] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[42]),
        .Q(p_0_in[41]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[8] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[9] ),
        .Q(\rChannelStatusIn_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[90] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[43]),
        .Q(p_0_in[42]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[91] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[44]),
        .Q(p_0_in[43]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[92] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[45]),
        .Q(p_0_in[44]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[93] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[46]),
        .Q(p_0_in[45]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[94] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in[47]),
        .Q(p_0_in[46]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[95] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[0]),
        .Q(p_0_in[47]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[96] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[1]),
        .Q(p_0_in1_in[0]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[97] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[2]),
        .Q(p_0_in1_in[1]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[98] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[3]),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[99] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(p_0_in1_in[4]),
        .Q(p_0_in1_in[3]),
        .R(1'b0));
  FDRE \rChannelStatusIn_reg[9] 
       (.C(s_axis_aud_aclk),
        .CE(\rChannelStatusIn_reg[191]_0 ),
        .D(\rChannelStatusIn_reg_n_0_[10] ),
        .Q(\rChannelStatusIn_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_transmitter_v1_0_2_async_fifo" *) 
module design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_async_fifo
   (fifo_wrdata_count,
    fifo_rdata_count,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[7]_0 ,
    s_axis_aud_tid_1_sp_1,
    axis_rAxis_InhibFIFOWrite_reg,
    E,
    s_axis_aud_tid_0_sp_1,
    s_axis_aud_tready,
    s_axis_aud_tvalid_0,
    mclk_rReadCh0,
    mclk_rReadFIFOInitDone_reg,
    mclk_rReadFIFOInitDone_reg_0,
    D,
    \gen_wr_a.gen_word_narrow.mem_reg ,
    \FSM_sequential_stmAudChCtrl_reg[0] ,
    \FSM_sequential_stmAudChCtrl_reg[0]_0 ,
    \genblk2[0].mclk_rAudValid_reg[0] ,
    \genblk2[1].mclk_rAudValid_reg[1] ,
    axis_rAxis_InhibFIFOWrite_reg_0,
    s_axis_aud_aclk,
    s_axis_aud_tdata,
    s_axis_aud_tid,
    aud_mclk,
    mclk_rReadFromFIFO_reg,
    \FSM_sequential_stmAudChCtrl_reg[0]_1 ,
    stmAudChCtrl__0,
    mclk_nAudCapt_0,
    rAesBlockSyncError_other_reg,
    s_axis_aud_tvalid,
    axis_rAxis_InhibFIFOWrite,
    axis_rAxis_Ready,
    dest_out,
    mclk_rReadFIFOInitDone_reg_1,
    p_1_in,
    \mclk_rChMuxSelect_reg[1] ,
    \genblk2[0].mclk_rAudValid_reg[0]_0 ,
    \mclk_rChMuxSelect_reg[0] ,
    mclk_rWaveGenCounter_reg,
    id_check,
    \gen_wr_a.gen_word_narrow.mem_reg_0 );
  output [7:0]fifo_wrdata_count;
  output [7:0]fifo_rdata_count;
  output \grdc.rd_data_count_i_reg[7] ;
  output \grdc.rd_data_count_i_reg[7]_0 ;
  output s_axis_aud_tid_1_sp_1;
  output axis_rAxis_InhibFIFOWrite_reg;
  output [0:0]E;
  output s_axis_aud_tid_0_sp_1;
  output s_axis_aud_tready;
  output [0:0]s_axis_aud_tvalid_0;
  output mclk_rReadCh0;
  output [0:0]mclk_rReadFIFOInitDone_reg;
  output [0:0]mclk_rReadFIFOInitDone_reg_0;
  output [15:0]D;
  output [15:0]\gen_wr_a.gen_word_narrow.mem_reg ;
  output \FSM_sequential_stmAudChCtrl_reg[0] ;
  output \FSM_sequential_stmAudChCtrl_reg[0]_0 ;
  output \genblk2[0].mclk_rAudValid_reg[0] ;
  output \genblk2[1].mclk_rAudValid_reg[1] ;
  output axis_rAxis_InhibFIFOWrite_reg_0;
  input s_axis_aud_aclk;
  input [31:0]s_axis_aud_tdata;
  input [2:0]s_axis_aud_tid;
  input aud_mclk;
  input mclk_rReadFromFIFO_reg;
  input \FSM_sequential_stmAudChCtrl_reg[0]_1 ;
  input [1:0]stmAudChCtrl__0;
  input mclk_nAudCapt_0;
  input rAesBlockSyncError_other_reg;
  input s_axis_aud_tvalid;
  input axis_rAxis_InhibFIFOWrite;
  input axis_rAxis_Ready;
  input dest_out;
  input mclk_rReadFIFOInitDone_reg_1;
  input p_1_in;
  input [3:0]\mclk_rChMuxSelect_reg[1] ;
  input \genblk2[0].mclk_rAudValid_reg[0]_0 ;
  input [0:0]\mclk_rChMuxSelect_reg[0] ;
  input [15:0]mclk_rWaveGenCounter_reg;
  input id_check;
  input \gen_wr_a.gen_word_narrow.mem_reg_0 ;

  wire [15:0]D;
  wire [0:0]E;
  wire \FSM_sequential_stmAudChCtrl[0]_i_2_n_0 ;
  wire \FSM_sequential_stmAudChCtrl_reg[0] ;
  wire \FSM_sequential_stmAudChCtrl_reg[0]_0 ;
  wire \FSM_sequential_stmAudChCtrl_reg[0]_1 ;
  wire aud_mclk;
  wire axis_rAxis_InhibFIFOWrite;
  wire axis_rAxis_InhibFIFOWrite_reg;
  wire axis_rAxis_InhibFIFOWrite_reg_0;
  wire axis_rAxis_Ready;
  wire dest_out;
  wire [30:7]din;
  wire [7:0]fifo_rdata_count;
  wire [7:0]fifo_wrdata_count;
  wire full;
  wire [15:0]\gen_wr_a.gen_word_narrow.mem_reg ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0 ;
  wire \genblk2[0].mclk_rAudValid_reg[0] ;
  wire \genblk2[0].mclk_rAudValid_reg[0]_0 ;
  wire \genblk2[1].mclk_rAudData[1][15]_i_3_n_0 ;
  wire \genblk2[1].mclk_rAudValid_reg[1] ;
  wire \grdc.rd_data_count_i_reg[7] ;
  wire \grdc.rd_data_count_i_reg[7]_0 ;
  wire id_check;
  wire mclk_nAudCapt_0;
  wire [27:12]mclk_nAxis_TData;
  wire [2:0]mclk_nAxis_TID;
  wire mclk_nAxis_TValid;
  wire [0:0]\mclk_rChMuxSelect_reg[0] ;
  wire [3:0]\mclk_rChMuxSelect_reg[1] ;
  wire mclk_rReadCh0;
  wire mclk_rReadCh017_out__1;
  wire mclk_rReadFIFOInitDone_i_2_n_0;
  wire [0:0]mclk_rReadFIFOInitDone_reg;
  wire [0:0]mclk_rReadFIFOInitDone_reg_0;
  wire mclk_rReadFIFOInitDone_reg_1;
  wire mclk_rReadFromFIFO_i_2_n_0;
  wire mclk_rReadFromFIFO_reg;
  wire [15:0]mclk_rWaveGenCounter_reg;
  wire p_1_in;
  wire p_1_out__1;
  wire p_24_out__0;
  wire rAesBlockSyncError_other_reg;
  wire rd_en;
  wire s_areset0;
  wire s_axis_aud_aclk;
  wire [31:0]s_axis_aud_tdata;
  wire [2:0]s_axis_aud_tid;
  wire s_axis_aud_tid_0_sn_1;
  wire s_axis_aud_tid_1_sn_1;
  wire s_axis_aud_tready;
  wire s_axis_aud_tvalid;
  wire [0:0]s_axis_aud_tvalid_0;
  wire [1:0]stmAudChCtrl__0;
  wire wr_en;
  wire xpm_fifo_async_inst_n_14;
  wire xpm_fifo_async_inst_n_15;
  wire xpm_fifo_async_inst_n_16;
  wire xpm_fifo_async_inst_n_17;
  wire xpm_fifo_async_inst_n_34;
  wire xpm_fifo_async_inst_n_35;
  wire xpm_fifo_async_inst_n_36;
  wire xpm_fifo_async_inst_n_37;
  wire xpm_fifo_async_inst_n_38;
  wire xpm_fifo_async_inst_n_39;
  wire xpm_fifo_async_inst_n_40;
  wire xpm_fifo_async_inst_n_41;
  wire xpm_fifo_async_inst_n_42;
  wire xpm_fifo_async_inst_n_43;
  wire xpm_fifo_async_inst_n_44;
  wire xpm_fifo_async_inst_n_45;
  wire NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED;

  assign s_axis_aud_tid_0_sp_1 = s_axis_aud_tid_0_sn_1;
  assign s_axis_aud_tid_1_sp_1 = s_axis_aud_tid_1_sn_1;
  LUT6 #(
    .INIT(64'h0101FF0FF1F1FF0F)) 
    \FSM_sequential_stmAudChCtrl[0]_i_1 
       (.I0(fifo_rdata_count[7]),
        .I1(fifo_rdata_count[6]),
        .I2(stmAudChCtrl__0[1]),
        .I3(\FSM_sequential_stmAudChCtrl[0]_i_2_n_0 ),
        .I4(stmAudChCtrl__0[0]),
        .I5(mclk_nAudCapt_0),
        .O(\grdc.rd_data_count_i_reg[7] ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_sequential_stmAudChCtrl[0]_i_2 
       (.I0(mclk_rReadFromFIFO_reg),
        .I1(mclk_nAxis_TValid),
        .I2(\FSM_sequential_stmAudChCtrl_reg[0]_1 ),
        .I3(mclk_nAxis_TID[1]),
        .I4(mclk_nAxis_TID[2]),
        .I5(mclk_nAxis_TID[0]),
        .O(\FSM_sequential_stmAudChCtrl[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEF0)) 
    \FSM_sequential_stmAudChCtrl[1]_i_2 
       (.I0(fifo_rdata_count[7]),
        .I1(fifo_rdata_count[6]),
        .I2(stmAudChCtrl__0[1]),
        .I3(stmAudChCtrl__0[0]),
        .O(\grdc.rd_data_count_i_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][0]_i_1 
       (.I0(mclk_nAxis_TData[12]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[0]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [0]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][10]_i_1 
       (.I0(mclk_nAxis_TData[22]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[10]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [10]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][11]_i_1 
       (.I0(mclk_nAxis_TData[23]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[11]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [11]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][12]_i_1 
       (.I0(mclk_nAxis_TData[24]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[12]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [12]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][13]_i_1 
       (.I0(mclk_nAxis_TData[25]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[13]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [13]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][14]_i_1 
       (.I0(mclk_nAxis_TData[26]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[14]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [14]));
  LUT6 #(
    .INIT(64'h2000000022222222)) 
    \genblk2[0].mclk_rAudData[0][15]_i_1 
       (.I0(mclk_rReadFIFOInitDone_reg_1),
        .I1(\genblk2[0].mclk_rAudValid_reg[0]_0 ),
        .I2(p_1_out__1),
        .I3(mclk_rReadFromFIFO_reg),
        .I4(mclk_nAxis_TValid),
        .I5(\mclk_rChMuxSelect_reg[1] [3]),
        .O(mclk_rReadFIFOInitDone_reg_0));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][15]_i_2 
       (.I0(mclk_nAxis_TData[27]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[15]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [15]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk2[0].mclk_rAudData[0][15]_i_3 
       (.I0(mclk_nAxis_TID[0]),
        .I1(\mclk_rChMuxSelect_reg[0] ),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(mclk_nAxis_TID[2]),
        .I4(\mclk_rChMuxSelect_reg[1] [1]),
        .I5(mclk_nAxis_TID[1]),
        .O(p_1_out__1));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][1]_i_1 
       (.I0(mclk_nAxis_TData[13]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[1]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [1]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][2]_i_1 
       (.I0(mclk_nAxis_TData[14]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[2]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [2]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][3]_i_1 
       (.I0(mclk_nAxis_TData[15]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[3]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [3]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][4]_i_1 
       (.I0(mclk_nAxis_TData[16]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[4]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [4]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][5]_i_1 
       (.I0(mclk_nAxis_TData[17]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[5]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [5]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][6]_i_1 
       (.I0(mclk_nAxis_TData[18]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[6]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [6]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][7]_i_1 
       (.I0(mclk_nAxis_TData[19]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[7]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [7]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][8]_i_1 
       (.I0(mclk_nAxis_TData[20]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[8]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [8]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[0].mclk_rAudData[0][9]_i_1 
       (.I0(mclk_nAxis_TData[21]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[9]),
        .I5(\mclk_rChMuxSelect_reg[0] ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg [9]));
  LUT6 #(
    .INIT(64'h40550000EAFFAAAA)) 
    \genblk2[0].mclk_rAudValid[0]_i_1 
       (.I0(\genblk2[0].mclk_rAudValid_reg[0]_0 ),
        .I1(p_24_out__0),
        .I2(p_1_out__1),
        .I3(\mclk_rChMuxSelect_reg[1] [3]),
        .I4(mclk_rReadFIFOInitDone_reg_1),
        .I5(mclk_nAudCapt_0),
        .O(\genblk2[0].mclk_rAudValid_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \genblk2[0].mclk_rAudValid[0]_i_2 
       (.I0(mclk_rReadFromFIFO_reg),
        .I1(mclk_nAxis_TValid),
        .O(p_24_out__0));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][0]_i_1 
       (.I0(mclk_nAxis_TData[12]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[0]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][10]_i_1 
       (.I0(mclk_nAxis_TData[22]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[10]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][11]_i_1 
       (.I0(mclk_nAxis_TData[23]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[11]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][12]_i_1 
       (.I0(mclk_nAxis_TData[24]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[12]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][13]_i_1 
       (.I0(mclk_nAxis_TData[25]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[13]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][14]_i_1 
       (.I0(mclk_nAxis_TData[26]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[14]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h2000000022222222)) 
    \genblk2[1].mclk_rAudData[1][15]_i_1 
       (.I0(mclk_rReadFIFOInitDone_reg_1),
        .I1(p_1_in),
        .I2(\genblk2[1].mclk_rAudData[1][15]_i_3_n_0 ),
        .I3(mclk_rReadFromFIFO_reg),
        .I4(mclk_nAxis_TValid),
        .I5(\mclk_rChMuxSelect_reg[1] [3]),
        .O(mclk_rReadFIFOInitDone_reg));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][15]_i_2 
       (.I0(mclk_nAxis_TData[27]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[15]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \genblk2[1].mclk_rAudData[1][15]_i_3 
       (.I0(mclk_nAxis_TID[0]),
        .I1(\mclk_rChMuxSelect_reg[1] [0]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(mclk_nAxis_TID[2]),
        .I4(\mclk_rChMuxSelect_reg[1] [1]),
        .I5(mclk_nAxis_TID[1]),
        .O(\genblk2[1].mclk_rAudData[1][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][1]_i_1 
       (.I0(mclk_nAxis_TData[13]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[1]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][2]_i_1 
       (.I0(mclk_nAxis_TData[14]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[2]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][3]_i_1 
       (.I0(mclk_nAxis_TData[15]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[3]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][4]_i_1 
       (.I0(mclk_nAxis_TData[16]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[4]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][5]_i_1 
       (.I0(mclk_nAxis_TData[17]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[5]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][6]_i_1 
       (.I0(mclk_nAxis_TData[18]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[6]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][7]_i_1 
       (.I0(mclk_nAxis_TData[19]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[7]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][8]_i_1 
       (.I0(mclk_nAxis_TData[20]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[8]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \genblk2[1].mclk_rAudData[1][9]_i_1 
       (.I0(mclk_nAxis_TData[21]),
        .I1(\mclk_rChMuxSelect_reg[1] [3]),
        .I2(\mclk_rChMuxSelect_reg[1] [2]),
        .I3(\mclk_rChMuxSelect_reg[1] [1]),
        .I4(mclk_rWaveGenCounter_reg[9]),
        .I5(\mclk_rChMuxSelect_reg[1] [0]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h40550000EAFFAAAA)) 
    \genblk2[1].mclk_rAudValid[1]_i_1 
       (.I0(p_1_in),
        .I1(p_24_out__0),
        .I2(\genblk2[1].mclk_rAudData[1][15]_i_3_n_0 ),
        .I3(\mclk_rChMuxSelect_reg[1] [3]),
        .I4(mclk_rReadFIFOInitDone_reg_1),
        .I5(mclk_nAudCapt_0),
        .O(\genblk2[1].mclk_rAudValid_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFFB100)) 
    id_check_i_1
       (.I0(axis_rAxis_InhibFIFOWrite),
        .I1(full),
        .I2(axis_rAxis_Ready),
        .I3(s_axis_aud_tvalid),
        .I4(id_check),
        .O(axis_rAxis_InhibFIFOWrite_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h880A)) 
    \id_count[2]_i_1 
       (.I0(s_axis_aud_tvalid),
        .I1(axis_rAxis_Ready),
        .I2(full),
        .I3(axis_rAxis_InhibFIFOWrite),
        .O(s_axis_aud_tvalid_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4EFF)) 
    \id_count[2]_i_3 
       (.I0(axis_rAxis_InhibFIFOWrite),
        .I1(full),
        .I2(axis_rAxis_Ready),
        .I3(s_axis_aud_tvalid),
        .O(axis_rAxis_InhibFIFOWrite_reg));
  LUT5 #(
    .INIT(32'h4F400F0F)) 
    mclk_rReadCh0_i_2
       (.I0(mclk_nAxis_TValid),
        .I1(mclk_nAudCapt_0),
        .I2(stmAudChCtrl__0[0]),
        .I3(mclk_rReadCh017_out__1),
        .I4(stmAudChCtrl__0[1]),
        .O(mclk_rReadCh0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    mclk_rReadCh0_i_3
       (.I0(mclk_rReadFromFIFO_reg),
        .I1(mclk_nAxis_TValid),
        .I2(mclk_nAxis_TID[1]),
        .I3(mclk_nAxis_TID[2]),
        .I4(mclk_nAxis_TID[0]),
        .I5(\FSM_sequential_stmAudChCtrl_reg[0]_1 ),
        .O(mclk_rReadCh017_out__1));
  LUT6 #(
    .INIT(64'hFFFFAAAA00100000)) 
    mclk_rReadFIFOInitDone_i_1
       (.I0(stmAudChCtrl__0[0]),
        .I1(mclk_rReadFromFIFO_reg),
        .I2(mclk_nAxis_TValid),
        .I3(mclk_rReadFIFOInitDone_i_2_n_0),
        .I4(stmAudChCtrl__0[1]),
        .I5(mclk_rReadFIFOInitDone_reg_1),
        .O(\FSM_sequential_stmAudChCtrl_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    mclk_rReadFIFOInitDone_i_2
       (.I0(mclk_nAxis_TID[1]),
        .I1(mclk_nAxis_TID[2]),
        .I2(mclk_nAxis_TID[0]),
        .O(mclk_rReadFIFOInitDone_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCCCB800CCCC0000)) 
    mclk_rReadFromFIFO_i_1
       (.I0(mclk_nAudCapt_0),
        .I1(stmAudChCtrl__0[0]),
        .I2(mclk_rReadFromFIFO_i_2_n_0),
        .I3(mclk_nAxis_TValid),
        .I4(mclk_rReadFromFIFO_reg),
        .I5(stmAudChCtrl__0[1]),
        .O(\FSM_sequential_stmAudChCtrl_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    mclk_rReadFromFIFO_i_2
       (.I0(mclk_nAxis_TID[0]),
        .I1(mclk_nAxis_TID[2]),
        .I2(mclk_nAxis_TID[1]),
        .I3(\FSM_sequential_stmAudChCtrl_reg[0]_1 ),
        .O(mclk_rReadFromFIFO_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hAAABFFFF)) 
    rAesBlockSyncError_other_i_4
       (.I0(axis_rAxis_InhibFIFOWrite_reg),
        .I1(s_axis_aud_tid[1]),
        .I2(s_axis_aud_tid[2]),
        .I3(s_axis_aud_tid[0]),
        .I4(rAesBlockSyncError_other_reg),
        .O(s_axis_aud_tid_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rAudioFrameCount[7]_i_4 
       (.I0(axis_rAxis_InhibFIFOWrite_reg),
        .I1(s_axis_aud_tid[0]),
        .I2(s_axis_aud_tid[2]),
        .I3(s_axis_aud_tid[1]),
        .O(s_axis_aud_tid_0_sn_1));
  LUT1 #(
    .INIT(2'h1)) 
    \rChannelStatusIn[191]_i_1 
       (.I0(s_axis_aud_tid_0_sn_1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB1)) 
    s_axis_aud_tready_INST_0
       (.I0(axis_rAxis_InhibFIFOWrite),
        .I1(full),
        .I2(axis_rAxis_Ready),
        .O(s_axis_aud_tready));
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "block" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "128" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "35" *) 
  (* READ_MODE = "fwft" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "35" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_fifo_async xpm_fifo_async_inst
       (.almost_empty(NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED),
        .data_valid(mclk_nAxis_TValid),
        .dbiterr(NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED),
        .din({s_axis_aud_tdata[31:28],din,s_axis_aud_tdata[3:0],s_axis_aud_tid}),
        .dout({xpm_fifo_async_inst_n_14,xpm_fifo_async_inst_n_15,xpm_fifo_async_inst_n_16,xpm_fifo_async_inst_n_17,mclk_nAxis_TData,xpm_fifo_async_inst_n_34,xpm_fifo_async_inst_n_35,xpm_fifo_async_inst_n_36,xpm_fifo_async_inst_n_37,xpm_fifo_async_inst_n_38,xpm_fifo_async_inst_n_39,xpm_fifo_async_inst_n_40,xpm_fifo_async_inst_n_41,xpm_fifo_async_inst_n_42,xpm_fifo_async_inst_n_43,xpm_fifo_async_inst_n_44,xpm_fifo_async_inst_n_45,mclk_nAxis_TID}),
        .empty(NLW_xpm_fifo_async_inst_empty_UNCONNECTED),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_async_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED),
        .rd_clk(aud_mclk),
        .rd_data_count(fifo_rdata_count),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED),
        .rst(s_areset0),
        .sbiterr(NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_async_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_axis_aud_aclk),
        .wr_data_count(fifo_wrdata_count),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    xpm_fifo_async_inst_i_1
       (.I0(axis_rAxis_InhibFIFOWrite),
        .I1(dest_out),
        .O(s_areset0));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_10
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[20]),
        .O(din[23]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_11
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[19]),
        .O(din[22]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_12
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[18]),
        .O(din[21]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_13
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[17]),
        .O(din[20]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_14
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[16]),
        .O(din[19]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_15
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[15]),
        .O(din[18]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_16
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[14]),
        .O(din[17]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_17
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[13]),
        .O(din[16]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_18
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[12]),
        .O(din[15]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_19
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[11]),
        .O(din[14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h02)) 
    xpm_fifo_async_inst_i_2
       (.I0(s_axis_aud_tvalid),
        .I1(full),
        .I2(axis_rAxis_InhibFIFOWrite),
        .O(wr_en));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_20
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[10]),
        .O(din[13]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_21
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[9]),
        .O(din[12]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_22
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[8]),
        .O(din[11]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_23
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[7]),
        .O(din[10]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_24
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[6]),
        .O(din[9]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_25
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[5]),
        .O(din[8]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_26
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[4]),
        .O(din[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_async_inst_i_27
       (.I0(mclk_nAxis_TValid),
        .I1(mclk_rReadFromFIFO_reg),
        .O(rd_en));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_3
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[27]),
        .O(din[30]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_4
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[26]),
        .O(din[29]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_5
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[25]),
        .O(din[28]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_6
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[24]),
        .O(din[27]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_7
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[23]),
        .O(din[26]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_8
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[22]),
        .O(din[25]));
  LUT3 #(
    .INIT(8'hD0)) 
    xpm_fifo_async_inst_i_9
       (.I0(s_axis_aud_tdata[28]),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg_0 ),
        .I2(s_axis_aud_tdata[21]),
        .O(din[24]));
endmodule

(* ORIG_REF_NAME = "i2s_transmitter_v1_0_2_axi" *) 
module design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_axi
   (s_axi_ctrl_rresp,
    SR,
    s_axi_ctrl_awready,
    oAxi_WReady_reg_0,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bresp,
    src_in,
    rJustify_reg_0,
    rLeft_Right_reg_0,
    rValidity_reg_0,
    s_axi_ctrl_arready,
    s_axi_ctrl_rvalid,
    irq,
    src_pulse,
    Q,
    \rChannelMux_01_reg[2]_0 ,
    s_axi_ctrl_rdata,
    s_axi_ctrl_aclk,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_aresetn,
    dest_pulse,
    \rIrqStatus_reg[1]_0 ,
    E,
    \rIrqStatus_reg[3]_0 ,
    D,
    s_axi_ctrl_araddr);
  output [0:0]s_axi_ctrl_rresp;
  output [0:0]SR;
  output s_axi_ctrl_awready;
  output oAxi_WReady_reg_0;
  output s_axi_ctrl_bvalid;
  output [0:0]s_axi_ctrl_bresp;
  output src_in;
  output rJustify_reg_0;
  output rLeft_Right_reg_0;
  output rValidity_reg_0;
  output s_axi_ctrl_arready;
  output s_axi_ctrl_rvalid;
  output irq;
  output src_pulse;
  output [7:0]Q;
  output [2:0]\rChannelMux_01_reg[2]_0 ;
  output [31:0]s_axi_ctrl_rdata;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_bready;
  input [8:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input [7:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_aresetn;
  input dest_pulse;
  input \rIrqStatus_reg[1]_0 ;
  input [0:0]E;
  input \rIrqStatus_reg[3]_0 ;
  input [191:0]D;
  input [7:0]s_axi_ctrl_araddr;

  wire [191:0]D;
  wire [0:0]E;
  wire \FSM_onehot_stmRead[3]_i_1_n_0 ;
  wire \FSM_sequential_stmWrite[0]_i_1_n_0 ;
  wire \FSM_sequential_stmWrite[1]_i_1_n_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [31:0]data12;
  wire [31:0]data13;
  wire [31:0]data14;
  wire [31:0]data15;
  wire [31:0]data16;
  wire dest_pulse;
  wire irq;
  wire oAxi_ARReady_i_1_n_0;
  wire oAxi_AWReady_i_2_n_0;
  wire \oAxi_BResp[1]_i_1_n_0 ;
  wire \oAxi_BResp[1]_i_2_n_0 ;
  wire \oAxi_BResp[1]_i_3_n_0 ;
  wire oAxi_BValid_i_1_n_0;
  wire \oAxi_RData[0]_i_1_n_0 ;
  wire \oAxi_RData[0]_i_2_n_0 ;
  wire \oAxi_RData[0]_i_3_n_0 ;
  wire \oAxi_RData[0]_i_4_n_0 ;
  wire \oAxi_RData[0]_i_5_n_0 ;
  wire \oAxi_RData[0]_i_6_n_0 ;
  wire \oAxi_RData[0]_i_7_n_0 ;
  wire \oAxi_RData[10]_i_1_n_0 ;
  wire \oAxi_RData[10]_i_2_n_0 ;
  wire \oAxi_RData[10]_i_3_n_0 ;
  wire \oAxi_RData[11]_i_1_n_0 ;
  wire \oAxi_RData[11]_i_2_n_0 ;
  wire \oAxi_RData[11]_i_3_n_0 ;
  wire \oAxi_RData[12]_i_1_n_0 ;
  wire \oAxi_RData[12]_i_2_n_0 ;
  wire \oAxi_RData[12]_i_3_n_0 ;
  wire \oAxi_RData[13]_i_1_n_0 ;
  wire \oAxi_RData[13]_i_2_n_0 ;
  wire \oAxi_RData[13]_i_3_n_0 ;
  wire \oAxi_RData[14]_i_1_n_0 ;
  wire \oAxi_RData[14]_i_2_n_0 ;
  wire \oAxi_RData[14]_i_3_n_0 ;
  wire \oAxi_RData[15]_i_1_n_0 ;
  wire \oAxi_RData[15]_i_2_n_0 ;
  wire \oAxi_RData[15]_i_3_n_0 ;
  wire \oAxi_RData[16]_i_1_n_0 ;
  wire \oAxi_RData[16]_i_2_n_0 ;
  wire \oAxi_RData[16]_i_3_n_0 ;
  wire \oAxi_RData[17]_i_1_n_0 ;
  wire \oAxi_RData[17]_i_2_n_0 ;
  wire \oAxi_RData[17]_i_3_n_0 ;
  wire \oAxi_RData[18]_i_1_n_0 ;
  wire \oAxi_RData[18]_i_2_n_0 ;
  wire \oAxi_RData[18]_i_3_n_0 ;
  wire \oAxi_RData[19]_i_1_n_0 ;
  wire \oAxi_RData[19]_i_2_n_0 ;
  wire \oAxi_RData[19]_i_3_n_0 ;
  wire \oAxi_RData[1]_i_1_n_0 ;
  wire \oAxi_RData[1]_i_2_n_0 ;
  wire \oAxi_RData[1]_i_3_n_0 ;
  wire \oAxi_RData[1]_i_4_n_0 ;
  wire \oAxi_RData[1]_i_5_n_0 ;
  wire \oAxi_RData[1]_i_6_n_0 ;
  wire \oAxi_RData[1]_i_7_n_0 ;
  wire \oAxi_RData[20]_i_1_n_0 ;
  wire \oAxi_RData[20]_i_2_n_0 ;
  wire \oAxi_RData[20]_i_3_n_0 ;
  wire \oAxi_RData[21]_i_1_n_0 ;
  wire \oAxi_RData[21]_i_2_n_0 ;
  wire \oAxi_RData[21]_i_3_n_0 ;
  wire \oAxi_RData[22]_i_1_n_0 ;
  wire \oAxi_RData[22]_i_2_n_0 ;
  wire \oAxi_RData[22]_i_3_n_0 ;
  wire \oAxi_RData[23]_i_1_n_0 ;
  wire \oAxi_RData[23]_i_2_n_0 ;
  wire \oAxi_RData[23]_i_3_n_0 ;
  wire \oAxi_RData[24]_i_1_n_0 ;
  wire \oAxi_RData[24]_i_2_n_0 ;
  wire \oAxi_RData[24]_i_3_n_0 ;
  wire \oAxi_RData[25]_i_1_n_0 ;
  wire \oAxi_RData[25]_i_2_n_0 ;
  wire \oAxi_RData[25]_i_3_n_0 ;
  wire \oAxi_RData[26]_i_1_n_0 ;
  wire \oAxi_RData[26]_i_2_n_0 ;
  wire \oAxi_RData[26]_i_3_n_0 ;
  wire \oAxi_RData[27]_i_1_n_0 ;
  wire \oAxi_RData[27]_i_2_n_0 ;
  wire \oAxi_RData[27]_i_3_n_0 ;
  wire \oAxi_RData[28]_i_1_n_0 ;
  wire \oAxi_RData[28]_i_2_n_0 ;
  wire \oAxi_RData[28]_i_3_n_0 ;
  wire \oAxi_RData[29]_i_1_n_0 ;
  wire \oAxi_RData[29]_i_2_n_0 ;
  wire \oAxi_RData[29]_i_3_n_0 ;
  wire \oAxi_RData[2]_i_1_n_0 ;
  wire \oAxi_RData[2]_i_2_n_0 ;
  wire \oAxi_RData[2]_i_3_n_0 ;
  wire \oAxi_RData[2]_i_4_n_0 ;
  wire \oAxi_RData[2]_i_5_n_0 ;
  wire \oAxi_RData[2]_i_6_n_0 ;
  wire \oAxi_RData[2]_i_7_n_0 ;
  wire \oAxi_RData[30]_i_1_n_0 ;
  wire \oAxi_RData[30]_i_2_n_0 ;
  wire \oAxi_RData[30]_i_3_n_0 ;
  wire \oAxi_RData[30]_i_4_n_0 ;
  wire \oAxi_RData[30]_i_5_n_0 ;
  wire \oAxi_RData[30]_i_6_n_0 ;
  wire \oAxi_RData[31]_i_1_n_0 ;
  wire \oAxi_RData[31]_i_2_n_0 ;
  wire \oAxi_RData[31]_i_3_n_0 ;
  wire \oAxi_RData[31]_i_4_n_0 ;
  wire \oAxi_RData[31]_i_5_n_0 ;
  wire \oAxi_RData[31]_i_6_n_0 ;
  wire \oAxi_RData[31]_i_7_n_0 ;
  wire \oAxi_RData[31]_i_8_n_0 ;
  wire \oAxi_RData[3]_i_1_n_0 ;
  wire \oAxi_RData[3]_i_2_n_0 ;
  wire \oAxi_RData[3]_i_3_n_0 ;
  wire \oAxi_RData[3]_i_4_n_0 ;
  wire \oAxi_RData[3]_i_5_n_0 ;
  wire \oAxi_RData[4]_i_1_n_0 ;
  wire \oAxi_RData[4]_i_2_n_0 ;
  wire \oAxi_RData[4]_i_3_n_0 ;
  wire \oAxi_RData[4]_i_4_n_0 ;
  wire \oAxi_RData[5]_i_1_n_0 ;
  wire \oAxi_RData[5]_i_2_n_0 ;
  wire \oAxi_RData[5]_i_3_n_0 ;
  wire \oAxi_RData[5]_i_4_n_0 ;
  wire \oAxi_RData[6]_i_1_n_0 ;
  wire \oAxi_RData[6]_i_2_n_0 ;
  wire \oAxi_RData[6]_i_3_n_0 ;
  wire \oAxi_RData[6]_i_4_n_0 ;
  wire \oAxi_RData[7]_i_1_n_0 ;
  wire \oAxi_RData[7]_i_2_n_0 ;
  wire \oAxi_RData[7]_i_3_n_0 ;
  wire \oAxi_RData[7]_i_4_n_0 ;
  wire \oAxi_RData[8]_i_1_n_0 ;
  wire \oAxi_RData[8]_i_2_n_0 ;
  wire \oAxi_RData[8]_i_3_n_0 ;
  wire \oAxi_RData[9]_i_1_n_0 ;
  wire \oAxi_RData[9]_i_2_n_0 ;
  wire \oAxi_RData[9]_i_3_n_0 ;
  wire \oAxi_RData[9]_i_4_n_0 ;
  wire \oAxi_RData[9]_i_5_n_0 ;
  wire \oAxi_RData[9]_i_6_n_0 ;
  wire \oAxi_RData[9]_i_7_n_0 ;
  wire \oAxi_RResp[1]_i_1_n_0 ;
  wire \oAxi_RResp[1]_i_2_n_0 ;
  wire oAxi_RValid_i_1_n_0;
  wire oAxi_WReady_i_1_n_0;
  wire oAxi_WReady_reg_0;
  wire p_5_in;
  wire \rAesChannelStatus_reg_n_0_[0] ;
  wire \rAesChannelStatus_reg_n_0_[10] ;
  wire \rAesChannelStatus_reg_n_0_[11] ;
  wire \rAesChannelStatus_reg_n_0_[12] ;
  wire \rAesChannelStatus_reg_n_0_[13] ;
  wire \rAesChannelStatus_reg_n_0_[14] ;
  wire \rAesChannelStatus_reg_n_0_[15] ;
  wire \rAesChannelStatus_reg_n_0_[16] ;
  wire \rAesChannelStatus_reg_n_0_[17] ;
  wire \rAesChannelStatus_reg_n_0_[18] ;
  wire \rAesChannelStatus_reg_n_0_[19] ;
  wire \rAesChannelStatus_reg_n_0_[1] ;
  wire \rAesChannelStatus_reg_n_0_[20] ;
  wire \rAesChannelStatus_reg_n_0_[21] ;
  wire \rAesChannelStatus_reg_n_0_[22] ;
  wire \rAesChannelStatus_reg_n_0_[23] ;
  wire \rAesChannelStatus_reg_n_0_[24] ;
  wire \rAesChannelStatus_reg_n_0_[25] ;
  wire \rAesChannelStatus_reg_n_0_[26] ;
  wire \rAesChannelStatus_reg_n_0_[27] ;
  wire \rAesChannelStatus_reg_n_0_[28] ;
  wire \rAesChannelStatus_reg_n_0_[29] ;
  wire \rAesChannelStatus_reg_n_0_[2] ;
  wire \rAesChannelStatus_reg_n_0_[30] ;
  wire \rAesChannelStatus_reg_n_0_[31] ;
  wire \rAesChannelStatus_reg_n_0_[3] ;
  wire \rAesChannelStatus_reg_n_0_[4] ;
  wire \rAesChannelStatus_reg_n_0_[5] ;
  wire \rAesChannelStatus_reg_n_0_[6] ;
  wire \rAesChannelStatus_reg_n_0_[7] ;
  wire \rAesChannelStatus_reg_n_0_[8] ;
  wire \rAesChannelStatus_reg_n_0_[9] ;
  wire \rChannelMux_01[0]_i_1_n_0 ;
  wire \rChannelMux_01[1]_i_1_n_0 ;
  wire \rChannelMux_01[2]_i_1_n_0 ;
  wire \rChannelMux_01[2]_i_2_n_0 ;
  wire [2:0]\rChannelMux_01_reg[2]_0 ;
  wire [2:0]rChannelMux_23;
  wire \rChannelMux_23[0]_i_1_n_0 ;
  wire \rChannelMux_23[1]_i_1_n_0 ;
  wire \rChannelMux_23[2]_i_1_n_0 ;
  wire \rChannelMux_23[2]_i_2_n_0 ;
  wire [2:0]rChannelMux_45;
  wire \rChannelMux_45[0]_i_1_n_0 ;
  wire \rChannelMux_45[1]_i_1_n_0 ;
  wire \rChannelMux_45[2]_i_1_n_0 ;
  wire \rChannelMux_45[2]_i_2_n_0 ;
  wire [2:0]rChannelMux_67;
  wire \rChannelMux_67[0]_i_1_n_0 ;
  wire \rChannelMux_67[1]_i_1_n_0 ;
  wire \rChannelMux_67[2]_i_1_n_0 ;
  wire \rChannelMux_67[2]_i_2_n_0 ;
  wire rClearAesChannelStatus_i_1_n_0;
  wire rClearAesChannelStatus_i_2_n_0;
  wire rClearAesChannelStatus_i_3_n_0;
  wire rClearIrqs;
  wire \rClearIrqs[0]_i_1_n_0 ;
  wire \rClearIrqs[1]_i_1_n_0 ;
  wire \rClearIrqs[2]_i_1_n_0 ;
  wire \rClearIrqs[3]_i_2_n_0 ;
  wire \rClearIrqs_reg_n_0_[0] ;
  wire \rClearIrqs_reg_n_0_[1] ;
  wire \rClearIrqs_reg_n_0_[2] ;
  wire \rClearIrqs_reg_n_0_[3] ;
  wire rEnable_i_1_n_0;
  wire rEnable_i_2_n_0;
  wire \rIrqEnables[31]_i_1_n_0 ;
  wire \rIrqEnables[31]_i_2_n_0 ;
  wire \rIrqEnables_reg_n_0_[0] ;
  wire \rIrqEnables_reg_n_0_[1] ;
  wire \rIrqEnables_reg_n_0_[2] ;
  wire \rIrqEnables_reg_n_0_[31] ;
  wire \rIrqEnables_reg_n_0_[3] ;
  wire \rIrqStatus[0]_i_1_n_0 ;
  wire \rIrqStatus[1]_i_1_n_0 ;
  wire \rIrqStatus[2]_i_1_n_0 ;
  wire \rIrqStatus[3]_i_1_n_0 ;
  wire \rIrqStatus_reg[1]_0 ;
  wire \rIrqStatus_reg[3]_0 ;
  wire \rIrqStatus_reg_n_0_[0] ;
  wire \rIrqStatus_reg_n_0_[2] ;
  wire \rIrqStatus_reg_n_0_[3] ;
  wire rIrq_i_1_n_0;
  wire rIrq_i_2_n_0;
  wire rIrq_i_3_n_0;
  wire rJustify_i_1_n_0;
  wire rJustify_reg_0;
  wire rLeft_Right_i_1_n_0;
  wire rLeft_Right_reg_0;
  wire [6:0]rReadAddr;
  wire \rReadAddr[0]_i_1_n_0 ;
  wire \rReadAddr[1]_i_1_n_0 ;
  wire \rReadAddr[2]_i_1_n_0 ;
  wire \rReadAddr[3]_i_1_n_0 ;
  wire \rReadAddr[4]_i_1_n_0 ;
  wire \rReadAddr[5]_i_1_n_0 ;
  wire \rReadAddr[6]_i_1_n_0 ;
  wire \rReadAddr[7]_i_1_n_0 ;
  wire \rReadAddr[7]_i_2_n_0 ;
  wire \rReadAddr_reg_n_0_[7] ;
  wire \rSclkDiv[7]_i_1_n_0 ;
  wire \rSclkDiv[7]_i_2_n_0 ;
  wire rValidity_i_1_n_0;
  wire rValidity_i_2_n_0;
  wire rValidity_reg_0;
  wire rWriteAddr;
  wire \rWriteAddr_reg_n_0_[7] ;
  wire s_axi_ctrl_aclk;
  wire [7:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [7:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [0:0]s_axi_ctrl_bresp;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [0:0]s_axi_ctrl_rresp;
  wire s_axi_ctrl_rvalid;
  wire [8:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [6:0]sel0;
  wire src_in;
  wire src_pulse;
  wire [3:0]stmRead;
  wire [1:0]stmWrite;

  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_stmRead[3]_i_1 
       (.I0(stmRead[2]),
        .I1(stmRead[0]),
        .I2(stmRead[3]),
        .I3(s_axi_ctrl_rready),
        .I4(stmRead[1]),
        .I5(s_axi_ctrl_arvalid),
        .O(\FSM_onehot_stmRead[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_stmRead_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .D(stmRead[3]),
        .Q(stmRead[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .D(stmRead[0]),
        .Q(stmRead[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .D(stmRead[1]),
        .Q(stmRead[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sReadReset:0001,sReadAddr:0010,sDecodeAddr:0100,sReadData:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmRead_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\FSM_onehot_stmRead[3]_i_1_n_0 ),
        .D(stmRead[2]),
        .Q(stmRead[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h4747FF33)) 
    \FSM_sequential_stmWrite[0]_i_1 
       (.I0(s_axi_ctrl_bready),
        .I1(stmWrite[1]),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_wvalid),
        .I4(stmWrite[0]),
        .O(\FSM_sequential_stmWrite[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h38F8)) 
    \FSM_sequential_stmWrite[1]_i_1 
       (.I0(s_axi_ctrl_awvalid),
        .I1(stmWrite[0]),
        .I2(stmWrite[1]),
        .I3(s_axi_ctrl_bready),
        .O(\FSM_sequential_stmWrite[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11," *) 
  FDRE \FSM_sequential_stmWrite_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_stmWrite[0]_i_1_n_0 ),
        .Q(stmWrite[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sWriteReset:00,sWriteAddr:01,sWriteData:10,sWriteResp:11," *) 
  FDRE \FSM_sequential_stmWrite_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_stmWrite[1]_i_1_n_0 ),
        .Q(stmWrite[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'hDFDC)) 
    oAxi_ARReady_i_1
       (.I0(s_axi_ctrl_arvalid),
        .I1(stmRead[0]),
        .I2(stmRead[1]),
        .I3(s_axi_ctrl_arready),
        .O(oAxi_ARReady_i_1_n_0));
  FDRE oAxi_ARReady_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(oAxi_ARReady_i_1_n_0),
        .Q(s_axi_ctrl_arready),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    oAxi_AWReady_i_1
       (.I0(s_axi_ctrl_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h8BBB)) 
    oAxi_AWReady_i_2
       (.I0(s_axi_ctrl_awready),
        .I1(stmWrite[1]),
        .I2(s_axi_ctrl_awvalid),
        .I3(stmWrite[0]),
        .O(oAxi_AWReady_i_2_n_0));
  FDRE oAxi_AWReady_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(oAxi_AWReady_i_2_n_0),
        .Q(s_axi_ctrl_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \oAxi_BResp[1]_i_1 
       (.I0(s_axi_ctrl_bresp),
        .I1(\oAxi_BResp[1]_i_2_n_0 ),
        .I2(\oAxi_BResp[1]_i_3_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\rWriteAddr_reg_n_0_[7] ),
        .O(\oAxi_BResp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \oAxi_BResp[1]_i_2 
       (.I0(oAxi_WReady_reg_0),
        .I1(s_axi_ctrl_wvalid),
        .O(\oAxi_BResp[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA44DCBA)) 
    \oAxi_BResp[1]_i_3 
       (.I0(sel0[6]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\oAxi_BResp[1]_i_3_n_0 ));
  FDRE \oAxi_BResp_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\oAxi_BResp[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_bresp),
        .R(SR));
  LUT5 #(
    .INIT(32'h5FF050C0)) 
    oAxi_BValid_i_1
       (.I0(s_axi_ctrl_bready),
        .I1(s_axi_ctrl_wvalid),
        .I2(stmWrite[1]),
        .I3(stmWrite[0]),
        .I4(s_axi_ctrl_bvalid),
        .O(oAxi_BValid_i_1_n_0));
  FDRE oAxi_BValid_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(oAxi_BValid_i_1_n_0),
        .Q(s_axi_ctrl_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h8A808A8A8A808080)) 
    \oAxi_RData[0]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[0]_i_2_n_0 ),
        .I2(rReadAddr[2]),
        .I3(\oAxi_RData[0]_i_3_n_0 ),
        .I4(rReadAddr[3]),
        .I5(\oAxi_RData[0]_i_4_n_0 ),
        .O(\oAxi_RData[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8888888F888)) 
    \oAxi_RData[0]_i_2 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data16[0]),
        .I2(rReadAddr[4]),
        .I3(\oAxi_RData[0]_i_5_n_0 ),
        .I4(rReadAddr[3]),
        .I5(\oAxi_RData[0]_i_6_n_0 ),
        .O(\oAxi_RData[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \oAxi_RData[0]_i_3 
       (.I0(src_in),
        .I1(rChannelMux_45[0]),
        .I2(data13[0]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[4]),
        .I5(rReadAddr[6]),
        .O(\oAxi_RData[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30201000)) 
    \oAxi_RData[0]_i_4 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[5]),
        .I3(Q[0]),
        .I4(data15[0]),
        .I5(\oAxi_RData[0]_i_7_n_0 ),
        .O(\oAxi_RData[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \oAxi_RData[0]_i_5 
       (.I0(\rIrqStatus_reg_n_0_[0] ),
        .I1(rChannelMux_23[0]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[6]),
        .I4(data12[0]),
        .O(\oAxi_RData[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \oAxi_RData[0]_i_6 
       (.I0(rValidity_reg_0),
        .I1(rChannelMux_67[0]),
        .I2(data14[0]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[4]),
        .I5(rReadAddr[6]),
        .O(\oAxi_RData[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3B0B380800000000)) 
    \oAxi_RData[0]_i_7 
       (.I0(\rAesChannelStatus_reg_n_0_[0] ),
        .I1(rReadAddr[6]),
        .I2(rReadAddr[5]),
        .I3(\rChannelMux_01_reg[2]_0 [0]),
        .I4(\rIrqEnables_reg_n_0_[0] ),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[10]_i_1 
       (.I0(\oAxi_RData[10]_i_2_n_0 ),
        .I1(data14[10]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[10]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[10]_i_2 
       (.I0(data12[10]),
        .I1(data16[10]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[10]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[10]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[10] ),
        .I4(data13[10]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[11]_i_1 
       (.I0(\oAxi_RData[11]_i_2_n_0 ),
        .I1(data14[11]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[11]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[11]_i_2 
       (.I0(data12[11]),
        .I1(data16[11]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[11]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[11]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[11] ),
        .I4(data13[11]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[12]_i_1 
       (.I0(\oAxi_RData[12]_i_2_n_0 ),
        .I1(data14[12]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[12]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[12]_i_2 
       (.I0(data12[12]),
        .I1(data16[12]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[12]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[12]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[12] ),
        .I4(data13[12]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[13]_i_1 
       (.I0(\oAxi_RData[13]_i_2_n_0 ),
        .I1(data14[13]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[13]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[13]_i_2 
       (.I0(data12[13]),
        .I1(data16[13]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[13]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[13]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[13] ),
        .I4(data13[13]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[14]_i_1 
       (.I0(\oAxi_RData[14]_i_2_n_0 ),
        .I1(data14[14]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[14]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[14]_i_2 
       (.I0(data12[14]),
        .I1(data16[14]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[14]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[14]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[14] ),
        .I4(data13[14]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[15]_i_1 
       (.I0(\oAxi_RData[15]_i_2_n_0 ),
        .I1(data14[15]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[15]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[15]_i_2 
       (.I0(data12[15]),
        .I1(data16[15]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[15]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[15]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[15] ),
        .I4(data13[15]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808080)) 
    \oAxi_RData[16]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[16]_i_2_n_0 ),
        .I2(rReadAddr[2]),
        .I3(data13[16]),
        .I4(\oAxi_RData[30]_i_3_n_0 ),
        .I5(\oAxi_RData[16]_i_3_n_0 ),
        .O(\oAxi_RData[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[16]_i_2 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data16[16]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(data12[16]),
        .I4(data14[16]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000061214101)) 
    \oAxi_RData[16]_i_3 
       (.I0(rReadAddr[4]),
        .I1(rReadAddr[5]),
        .I2(rReadAddr[6]),
        .I3(data15[16]),
        .I4(\rAesChannelStatus_reg_n_0_[16] ),
        .I5(\oAxi_RData[31]_i_6_n_0 ),
        .O(\oAxi_RData[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[17]_i_1 
       (.I0(\oAxi_RData[17]_i_2_n_0 ),
        .I1(data14[17]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[17]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[17]_i_2 
       (.I0(data12[17]),
        .I1(data16[17]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[17]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[17]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[17] ),
        .I4(data13[17]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[18]_i_1 
       (.I0(\oAxi_RData[18]_i_2_n_0 ),
        .I1(data14[18]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[18]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[18]_i_2 
       (.I0(data12[18]),
        .I1(data16[18]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[18]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[18]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[18] ),
        .I4(data13[18]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[19]_i_1 
       (.I0(\oAxi_RData[19]_i_2_n_0 ),
        .I1(data14[19]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[19]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[19]_i_2 
       (.I0(data12[19]),
        .I1(data16[19]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[19]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[19]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[19] ),
        .I4(data13[19]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A8A8A808080)) 
    \oAxi_RData[1]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[1]_i_2_n_0 ),
        .I2(rReadAddr[2]),
        .I3(\oAxi_RData[1]_i_3_n_0 ),
        .I4(rReadAddr[3]),
        .I5(\oAxi_RData[1]_i_4_n_0 ),
        .O(\oAxi_RData[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEA404040)) 
    \oAxi_RData[1]_i_2 
       (.I0(rReadAddr[3]),
        .I1(rReadAddr[4]),
        .I2(\oAxi_RData[1]_i_5_n_0 ),
        .I3(data14[1]),
        .I4(\oAxi_RData[9]_i_3_n_0 ),
        .I5(\oAxi_RData[1]_i_6_n_0 ),
        .O(\oAxi_RData[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \oAxi_RData[1]_i_3 
       (.I0(rJustify_reg_0),
        .I1(rChannelMux_45[1]),
        .I2(data13[1]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[4]),
        .I5(rReadAddr[6]),
        .O(\oAxi_RData[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30201000)) 
    \oAxi_RData[1]_i_4 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[5]),
        .I3(Q[1]),
        .I4(data15[1]),
        .I5(\oAxi_RData[1]_i_7_n_0 ),
        .O(\oAxi_RData[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \oAxi_RData[1]_i_5 
       (.I0(p_5_in),
        .I1(rChannelMux_23[1]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[6]),
        .I4(data12[1]),
        .O(\oAxi_RData[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00000C00000)) 
    \oAxi_RData[1]_i_6 
       (.I0(rChannelMux_67[1]),
        .I1(data16[1]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3B0B380800000000)) 
    \oAxi_RData[1]_i_7 
       (.I0(\rAesChannelStatus_reg_n_0_[1] ),
        .I1(rReadAddr[6]),
        .I2(rReadAddr[5]),
        .I3(\rChannelMux_01_reg[2]_0 [1]),
        .I4(\rIrqEnables_reg_n_0_[1] ),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[20]_i_1 
       (.I0(\oAxi_RData[20]_i_2_n_0 ),
        .I1(data14[20]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[20]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[20]_i_2 
       (.I0(data12[20]),
        .I1(data16[20]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[20]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[20]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[20] ),
        .I4(data13[20]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[21]_i_1 
       (.I0(\oAxi_RData[21]_i_2_n_0 ),
        .I1(data14[21]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[21]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[21]_i_2 
       (.I0(data12[21]),
        .I1(data16[21]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[21]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[21]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[21] ),
        .I4(data13[21]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[22]_i_1 
       (.I0(\oAxi_RData[22]_i_2_n_0 ),
        .I1(data14[22]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[22]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[22]_i_2 
       (.I0(data12[22]),
        .I1(data16[22]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[22]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[22]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[22] ),
        .I4(data13[22]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[23]_i_1 
       (.I0(\oAxi_RData[23]_i_2_n_0 ),
        .I1(data14[23]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[23]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[23]_i_2 
       (.I0(data12[23]),
        .I1(data16[23]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[23]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[23]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[23] ),
        .I4(data13[23]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[24]_i_1 
       (.I0(\oAxi_RData[24]_i_2_n_0 ),
        .I1(data14[24]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[24]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[24]_i_2 
       (.I0(data12[24]),
        .I1(data16[24]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[24]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[24]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[24] ),
        .I4(data13[24]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[25]_i_1 
       (.I0(\oAxi_RData[25]_i_2_n_0 ),
        .I1(data14[25]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[25]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[25]_i_2 
       (.I0(data12[25]),
        .I1(data16[25]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[25]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[25]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[25] ),
        .I4(data13[25]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[26]_i_1 
       (.I0(\oAxi_RData[26]_i_2_n_0 ),
        .I1(data14[26]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[26]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[26]_i_2 
       (.I0(data12[26]),
        .I1(data16[26]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[26]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[26]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[26] ),
        .I4(data13[26]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[27]_i_1 
       (.I0(\oAxi_RData[27]_i_2_n_0 ),
        .I1(data14[27]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[27]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[27]_i_2 
       (.I0(data12[27]),
        .I1(data16[27]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[27]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[27]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[27] ),
        .I4(data13[27]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[28]_i_1 
       (.I0(\oAxi_RData[28]_i_2_n_0 ),
        .I1(data14[28]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[28]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[28]_i_2 
       (.I0(data12[28]),
        .I1(data16[28]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[28]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[28]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[28] ),
        .I4(data13[28]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[29]_i_1 
       (.I0(\oAxi_RData[29]_i_2_n_0 ),
        .I1(data14[29]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[29]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[29]_i_2 
       (.I0(data12[29]),
        .I1(data16[29]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[29]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[29]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[29] ),
        .I4(data13[29]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A8A8A808080)) 
    \oAxi_RData[2]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[2]_i_2_n_0 ),
        .I2(rReadAddr[2]),
        .I3(\oAxi_RData[2]_i_3_n_0 ),
        .I4(rReadAddr[3]),
        .I5(\oAxi_RData[2]_i_4_n_0 ),
        .O(\oAxi_RData[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEA404040)) 
    \oAxi_RData[2]_i_2 
       (.I0(rReadAddr[3]),
        .I1(rReadAddr[4]),
        .I2(\oAxi_RData[2]_i_5_n_0 ),
        .I3(data14[2]),
        .I4(\oAxi_RData[9]_i_3_n_0 ),
        .I5(\oAxi_RData[2]_i_6_n_0 ),
        .O(\oAxi_RData[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \oAxi_RData[2]_i_3 
       (.I0(rLeft_Right_reg_0),
        .I1(rChannelMux_45[2]),
        .I2(data13[2]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[4]),
        .I5(rReadAddr[6]),
        .O(\oAxi_RData[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF30201000)) 
    \oAxi_RData[2]_i_4 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[5]),
        .I3(Q[2]),
        .I4(data15[2]),
        .I5(\oAxi_RData[2]_i_7_n_0 ),
        .O(\oAxi_RData[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \oAxi_RData[2]_i_5 
       (.I0(\rIrqStatus_reg_n_0_[2] ),
        .I1(rChannelMux_23[2]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[6]),
        .I4(data12[2]),
        .O(\oAxi_RData[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00000C00000)) 
    \oAxi_RData[2]_i_6 
       (.I0(rChannelMux_67[2]),
        .I1(data16[2]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3B0B380800000000)) 
    \oAxi_RData[2]_i_7 
       (.I0(\rAesChannelStatus_reg_n_0_[2] ),
        .I1(rReadAddr[6]),
        .I2(rReadAddr[5]),
        .I3(\rChannelMux_01_reg[2]_0 [2]),
        .I4(\rIrqEnables_reg_n_0_[2] ),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[30]_i_1 
       (.I0(\oAxi_RData[30]_i_2_n_0 ),
        .I1(data14[30]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[30]_i_4_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[30]_i_2 
       (.I0(data12[30]),
        .I1(data16[30]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \oAxi_RData[30]_i_3 
       (.I0(rReadAddr[3]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[6]),
        .I3(rReadAddr[5]),
        .O(\oAxi_RData[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[30]_i_4 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[30]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[30] ),
        .I4(data13[30]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \oAxi_RData[30]_i_5 
       (.I0(rReadAddr[5]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[6]),
        .I3(rReadAddr[3]),
        .O(\oAxi_RData[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \oAxi_RData[30]_i_6 
       (.I0(rReadAddr[5]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[6]),
        .I3(rReadAddr[3]),
        .O(\oAxi_RData[30]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oAxi_RData[31]_i_1 
       (.I0(stmRead[2]),
        .I1(stmRead[0]),
        .O(\oAxi_RData[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
    \oAxi_RData[31]_i_2 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[31]_i_4_n_0 ),
        .I2(data13[31]),
        .I3(\oAxi_RData[31]_i_5_n_0 ),
        .I4(\oAxi_RData[31]_i_6_n_0 ),
        .I5(\oAxi_RData[31]_i_7_n_0 ),
        .O(\oAxi_RData[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \oAxi_RData[31]_i_3 
       (.I0(stmRead[2]),
        .I1(rReadAddr[1]),
        .I2(rReadAddr[0]),
        .I3(\rReadAddr_reg_n_0_[7] ),
        .O(\oAxi_RData[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A0800000000000)) 
    \oAxi_RData[31]_i_4 
       (.I0(\oAxi_RData[31]_i_8_n_0 ),
        .I1(data16[31]),
        .I2(rReadAddr[2]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[4]),
        .I5(rReadAddr[6]),
        .O(\oAxi_RData[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \oAxi_RData[31]_i_5 
       (.I0(rReadAddr[5]),
        .I1(rReadAddr[6]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[3]),
        .I4(rReadAddr[2]),
        .O(\oAxi_RData[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \oAxi_RData[31]_i_6 
       (.I0(rReadAddr[2]),
        .I1(rReadAddr[3]),
        .O(\oAxi_RData[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCAAF0000000)) 
    \oAxi_RData[31]_i_7 
       (.I0(\rIrqEnables_reg_n_0_[31] ),
        .I1(\rAesChannelStatus_reg_n_0_[31] ),
        .I2(data15[31]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC0AF)) 
    \oAxi_RData[31]_i_8 
       (.I0(data12[31]),
        .I1(data14[31]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[3]),
        .O(\oAxi_RData[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88888AA888888)) 
    \oAxi_RData[3]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[3]_i_2_n_0 ),
        .I2(data14[3]),
        .I3(data13[3]),
        .I4(\oAxi_RData[30]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h0B0B0B08)) 
    \oAxi_RData[3]_i_2 
       (.I0(\oAxi_RData[3]_i_3_n_0 ),
        .I1(rReadAddr[2]),
        .I2(rReadAddr[3]),
        .I3(\oAxi_RData[3]_i_4_n_0 ),
        .I4(\oAxi_RData[3]_i_5_n_0 ),
        .O(\oAxi_RData[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CCAAF0000000)) 
    \oAxi_RData[3]_i_3 
       (.I0(\rIrqStatus_reg_n_0_[3] ),
        .I1(data12[3]),
        .I2(data16[3]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \oAxi_RData[3]_i_4 
       (.I0(data15[3]),
        .I1(\rAesChannelStatus_reg_n_0_[3] ),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .O(\oAxi_RData[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00000CA0)) 
    \oAxi_RData[3]_i_5 
       (.I0(Q[3]),
        .I1(\rIrqEnables_reg_n_0_[3] ),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .O(\oAxi_RData[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA800000)) 
    \oAxi_RData[4]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[30]_i_3_n_0 ),
        .I2(data14[4]),
        .I3(\oAxi_RData[4]_i_2_n_0 ),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[4]_i_3_n_0 ),
        .O(\oAxi_RData[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[4]_i_2 
       (.I0(data12[4]),
        .I1(data16[4]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h080F0808)) 
    \oAxi_RData[4]_i_3 
       (.I0(data13[4]),
        .I1(\oAxi_RData[30]_i_3_n_0 ),
        .I2(rReadAddr[2]),
        .I3(rReadAddr[3]),
        .I4(\oAxi_RData[4]_i_4_n_0 ),
        .O(\oAxi_RData[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[4]_i_4 
       (.I0(Q[4]),
        .I1(\rAesChannelStatus_reg_n_0_[4] ),
        .I2(data15[4]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA800000)) 
    \oAxi_RData[5]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[30]_i_3_n_0 ),
        .I2(data14[5]),
        .I3(\oAxi_RData[5]_i_2_n_0 ),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[5]_i_3_n_0 ),
        .O(\oAxi_RData[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[5]_i_2 
       (.I0(data12[5]),
        .I1(data16[5]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h080F0808)) 
    \oAxi_RData[5]_i_3 
       (.I0(data13[5]),
        .I1(\oAxi_RData[30]_i_3_n_0 ),
        .I2(rReadAddr[2]),
        .I3(rReadAddr[3]),
        .I4(\oAxi_RData[5]_i_4_n_0 ),
        .O(\oAxi_RData[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[5]_i_4 
       (.I0(Q[5]),
        .I1(\rAesChannelStatus_reg_n_0_[5] ),
        .I2(data15[5]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA800000)) 
    \oAxi_RData[6]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[30]_i_3_n_0 ),
        .I2(data14[6]),
        .I3(\oAxi_RData[6]_i_2_n_0 ),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[6]_i_3_n_0 ),
        .O(\oAxi_RData[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[6]_i_2 
       (.I0(data12[6]),
        .I1(data16[6]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h080F0808)) 
    \oAxi_RData[6]_i_3 
       (.I0(data13[6]),
        .I1(\oAxi_RData[30]_i_3_n_0 ),
        .I2(rReadAddr[2]),
        .I3(rReadAddr[3]),
        .I4(\oAxi_RData[6]_i_4_n_0 ),
        .O(\oAxi_RData[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[6]_i_4 
       (.I0(Q[6]),
        .I1(\rAesChannelStatus_reg_n_0_[6] ),
        .I2(data15[6]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA800000)) 
    \oAxi_RData[7]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[30]_i_3_n_0 ),
        .I2(data14[7]),
        .I3(\oAxi_RData[7]_i_2_n_0 ),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[7]_i_3_n_0 ),
        .O(\oAxi_RData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[7]_i_2 
       (.I0(data12[7]),
        .I1(data16[7]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h080F0808)) 
    \oAxi_RData[7]_i_3 
       (.I0(data13[7]),
        .I1(\oAxi_RData[30]_i_3_n_0 ),
        .I2(rReadAddr[2]),
        .I3(rReadAddr[3]),
        .I4(\oAxi_RData[7]_i_4_n_0 ),
        .O(\oAxi_RData[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[7]_i_4 
       (.I0(Q[7]),
        .I1(\rAesChannelStatus_reg_n_0_[7] ),
        .I2(data15[7]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[8]_i_1 
       (.I0(\oAxi_RData[8]_i_2_n_0 ),
        .I1(data14[8]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[8]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[8]_i_2 
       (.I0(data12[8]),
        .I1(data16[8]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[8]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(data15[8]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg_n_0_[8] ),
        .I4(data13[8]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8888888)) 
    \oAxi_RData[9]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[9]_i_2_n_0 ),
        .I2(\oAxi_RData[9]_i_3_n_0 ),
        .I3(\oAxi_RData[9]_i_4_n_0 ),
        .I4(data13[9]),
        .I5(\oAxi_RData[9]_i_5_n_0 ),
        .O(\oAxi_RData[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \oAxi_RData[9]_i_2 
       (.I0(rReadAddr[3]),
        .I1(data14[9]),
        .I2(rReadAddr[2]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[4]),
        .I5(rReadAddr[5]),
        .O(\oAxi_RData[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \oAxi_RData[9]_i_3 
       (.I0(rReadAddr[5]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[6]),
        .O(\oAxi_RData[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oAxi_RData[9]_i_4 
       (.I0(rReadAddr[3]),
        .I1(rReadAddr[2]),
        .O(\oAxi_RData[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFB080)) 
    \oAxi_RData[9]_i_5 
       (.I0(data16[9]),
        .I1(rReadAddr[2]),
        .I2(\oAxi_RData[9]_i_6_n_0 ),
        .I3(data15[9]),
        .I4(\oAxi_RData[9]_i_7_n_0 ),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \oAxi_RData[9]_i_6 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[5]),
        .I2(rReadAddr[4]),
        .O(\oAxi_RData[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099801180)) 
    \oAxi_RData[9]_i_7 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[4]),
        .I2(\rAesChannelStatus_reg_n_0_[9] ),
        .I3(rReadAddr[2]),
        .I4(data12[9]),
        .I5(rReadAddr[5]),
        .O(\oAxi_RData[9]_i_7_n_0 ));
  FDRE \oAxi_RData_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[0]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[0]),
        .R(SR));
  FDRE \oAxi_RData_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[10]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[10]),
        .R(SR));
  FDRE \oAxi_RData_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[11]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[11]),
        .R(SR));
  FDRE \oAxi_RData_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[12]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[12]),
        .R(SR));
  FDRE \oAxi_RData_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[13]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[13]),
        .R(SR));
  FDRE \oAxi_RData_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[14]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[14]),
        .R(SR));
  FDRE \oAxi_RData_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[15]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[15]),
        .R(SR));
  FDRE \oAxi_RData_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[16]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[16]),
        .R(SR));
  FDRE \oAxi_RData_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[17]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[17]),
        .R(SR));
  FDRE \oAxi_RData_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[18]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[18]),
        .R(SR));
  FDRE \oAxi_RData_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[19]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[19]),
        .R(SR));
  FDRE \oAxi_RData_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[1]),
        .R(SR));
  FDRE \oAxi_RData_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[20]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[20]),
        .R(SR));
  FDRE \oAxi_RData_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[21]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[21]),
        .R(SR));
  FDRE \oAxi_RData_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[22]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[22]),
        .R(SR));
  FDRE \oAxi_RData_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[23]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[23]),
        .R(SR));
  FDRE \oAxi_RData_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[24]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[24]),
        .R(SR));
  FDRE \oAxi_RData_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[25]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[25]),
        .R(SR));
  FDRE \oAxi_RData_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[26]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[26]),
        .R(SR));
  FDRE \oAxi_RData_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[27]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[27]),
        .R(SR));
  FDRE \oAxi_RData_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[28]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[28]),
        .R(SR));
  FDRE \oAxi_RData_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[29]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[29]),
        .R(SR));
  FDRE \oAxi_RData_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[2]),
        .R(SR));
  FDRE \oAxi_RData_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[30]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[30]),
        .R(SR));
  FDRE \oAxi_RData_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[31]_i_2_n_0 ),
        .Q(s_axi_ctrl_rdata[31]),
        .R(SR));
  FDRE \oAxi_RData_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[3]),
        .R(SR));
  FDRE \oAxi_RData_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[4]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[4]),
        .R(SR));
  FDRE \oAxi_RData_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[5]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[5]),
        .R(SR));
  FDRE \oAxi_RData_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[6]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[6]),
        .R(SR));
  FDRE \oAxi_RData_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[7]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[7]),
        .R(SR));
  FDRE \oAxi_RData_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[8]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[8]),
        .R(SR));
  FDRE \oAxi_RData_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RData[9]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \oAxi_RResp[1]_i_1 
       (.I0(stmRead[2]),
        .I1(\rReadAddr_reg_n_0_[7] ),
        .I2(rReadAddr[0]),
        .I3(rReadAddr[1]),
        .I4(\oAxi_RResp[1]_i_2_n_0 ),
        .O(\oAxi_RResp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hC3FCC02C)) 
    \oAxi_RResp[1]_i_2 
       (.I0(rReadAddr[2]),
        .I1(rReadAddr[6]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[3]),
        .O(\oAxi_RResp[1]_i_2_n_0 ));
  FDRE \oAxi_RResp_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\oAxi_RData[31]_i_1_n_0 ),
        .D(\oAxi_RResp[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_rresp),
        .R(SR));
  LUT5 #(
    .INIT(32'hF5F3F5F0)) 
    oAxi_RValid_i_1
       (.I0(s_axi_ctrl_rready),
        .I1(stmRead[0]),
        .I2(stmRead[2]),
        .I3(stmRead[3]),
        .I4(s_axi_ctrl_rvalid),
        .O(oAxi_RValid_i_1_n_0));
  FDRE oAxi_RValid_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(oAxi_RValid_i_1_n_0),
        .Q(s_axi_ctrl_rvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF443044)) 
    oAxi_WReady_i_1
       (.I0(s_axi_ctrl_wvalid),
        .I1(stmWrite[1]),
        .I2(s_axi_ctrl_awvalid),
        .I3(stmWrite[0]),
        .I4(oAxi_WReady_reg_0),
        .O(oAxi_WReady_i_1_n_0));
  FDRE oAxi_WReady_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(oAxi_WReady_i_1_n_0),
        .Q(oAxi_WReady_reg_0),
        .R(SR));
  FDRE \rAesChannelStatus_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\rAesChannelStatus_reg_n_0_[0] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[100] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[100]),
        .Q(data14[4]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[101] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[101]),
        .Q(data14[5]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[102] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[102]),
        .Q(data14[6]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[103] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[103]),
        .Q(data14[7]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[104] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[104]),
        .Q(data14[8]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[105] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[105]),
        .Q(data14[9]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[106] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[106]),
        .Q(data14[10]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[107] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[107]),
        .Q(data14[11]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[108] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[108]),
        .Q(data14[12]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[109] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[109]),
        .Q(data14[13]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[10]),
        .Q(\rAesChannelStatus_reg_n_0_[10] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[110] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[110]),
        .Q(data14[14]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[111] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[111]),
        .Q(data14[15]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[112] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[112]),
        .Q(data14[16]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[113] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[113]),
        .Q(data14[17]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[114] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[114]),
        .Q(data14[18]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[115] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[115]),
        .Q(data14[19]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[116] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[116]),
        .Q(data14[20]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[117] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[117]),
        .Q(data14[21]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[118] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[118]),
        .Q(data14[22]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[119] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[119]),
        .Q(data14[23]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(\rAesChannelStatus_reg_n_0_[11] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[120] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[120]),
        .Q(data14[24]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[121] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[121]),
        .Q(data14[25]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[122] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[122]),
        .Q(data14[26]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[123] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[123]),
        .Q(data14[27]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[124] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[124]),
        .Q(data14[28]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[125] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[125]),
        .Q(data14[29]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[126] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[126]),
        .Q(data14[30]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[127] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[127]),
        .Q(data14[31]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[128] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[128]),
        .Q(data15[0]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[129] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[129]),
        .Q(data15[1]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(\rAesChannelStatus_reg_n_0_[12] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[130] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[130]),
        .Q(data15[2]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[131] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[131]),
        .Q(data15[3]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[132] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[132]),
        .Q(data15[4]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[133] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[133]),
        .Q(data15[5]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[134] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[134]),
        .Q(data15[6]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[135] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[135]),
        .Q(data15[7]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[136] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[136]),
        .Q(data15[8]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[137] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[137]),
        .Q(data15[9]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[138] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[138]),
        .Q(data15[10]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[139] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[139]),
        .Q(data15[11]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(\rAesChannelStatus_reg_n_0_[13] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[140] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[140]),
        .Q(data15[12]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[141] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[141]),
        .Q(data15[13]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[142] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[142]),
        .Q(data15[14]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[143] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[143]),
        .Q(data15[15]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[144] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[144]),
        .Q(data15[16]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[145] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[145]),
        .Q(data15[17]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[146] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[146]),
        .Q(data15[18]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[147] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[147]),
        .Q(data15[19]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[148] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[148]),
        .Q(data15[20]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[149] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[149]),
        .Q(data15[21]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(\rAesChannelStatus_reg_n_0_[14] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[150] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[150]),
        .Q(data15[22]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[151] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[151]),
        .Q(data15[23]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[152] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[152]),
        .Q(data15[24]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[153] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[153]),
        .Q(data15[25]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[154] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[154]),
        .Q(data15[26]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[155] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[155]),
        .Q(data15[27]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[156] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[156]),
        .Q(data15[28]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[157] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[157]),
        .Q(data15[29]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[158] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[158]),
        .Q(data15[30]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[159] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[159]),
        .Q(data15[31]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(\rAesChannelStatus_reg_n_0_[15] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[160] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[160]),
        .Q(data16[0]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[161] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[161]),
        .Q(data16[1]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[162] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[162]),
        .Q(data16[2]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[163] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[163]),
        .Q(data16[3]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[164] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[164]),
        .Q(data16[4]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[165] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[165]),
        .Q(data16[5]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[166] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[166]),
        .Q(data16[6]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[167] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[167]),
        .Q(data16[7]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[168] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[168]),
        .Q(data16[8]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[169] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[169]),
        .Q(data16[9]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(\rAesChannelStatus_reg_n_0_[16] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[170] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[170]),
        .Q(data16[10]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[171] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[171]),
        .Q(data16[11]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[172] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[172]),
        .Q(data16[12]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[173] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[173]),
        .Q(data16[13]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[174] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[174]),
        .Q(data16[14]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[175] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[175]),
        .Q(data16[15]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[176] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[176]),
        .Q(data16[16]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[177] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[177]),
        .Q(data16[17]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[178] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[178]),
        .Q(data16[18]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[179] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[179]),
        .Q(data16[19]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(\rAesChannelStatus_reg_n_0_[17] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[180] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[180]),
        .Q(data16[20]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[181] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[181]),
        .Q(data16[21]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[182] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[182]),
        .Q(data16[22]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[183] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[183]),
        .Q(data16[23]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[184] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[184]),
        .Q(data16[24]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[185] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[185]),
        .Q(data16[25]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[186] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[186]),
        .Q(data16[26]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[187] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[187]),
        .Q(data16[27]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[188] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[188]),
        .Q(data16[28]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[189] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[189]),
        .Q(data16[29]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(\rAesChannelStatus_reg_n_0_[18] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[190] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[190]),
        .Q(data16[30]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[191] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[191]),
        .Q(data16[31]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(\rAesChannelStatus_reg_n_0_[19] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\rAesChannelStatus_reg_n_0_[1] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(\rAesChannelStatus_reg_n_0_[20] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(\rAesChannelStatus_reg_n_0_[21] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(\rAesChannelStatus_reg_n_0_[22] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(\rAesChannelStatus_reg_n_0_[23] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(\rAesChannelStatus_reg_n_0_[24] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(\rAesChannelStatus_reg_n_0_[25] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(\rAesChannelStatus_reg_n_0_[26] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(\rAesChannelStatus_reg_n_0_[27] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(\rAesChannelStatus_reg_n_0_[28] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(\rAesChannelStatus_reg_n_0_[29] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\rAesChannelStatus_reg_n_0_[2] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[30]),
        .Q(\rAesChannelStatus_reg_n_0_[30] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(\rAesChannelStatus_reg_n_0_[31] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[32]),
        .Q(data12[0]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[33]),
        .Q(data12[1]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[34]),
        .Q(data12[2]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[35]),
        .Q(data12[3]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[36]),
        .Q(data12[4]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[37]),
        .Q(data12[5]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[38]),
        .Q(data12[6]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[39]),
        .Q(data12[7]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\rAesChannelStatus_reg_n_0_[3] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[40]),
        .Q(data12[8]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[41]),
        .Q(data12[9]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[42]),
        .Q(data12[10]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[43]),
        .Q(data12[11]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[44]),
        .Q(data12[12]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[45]),
        .Q(data12[13]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[46]),
        .Q(data12[14]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[47]),
        .Q(data12[15]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[48]),
        .Q(data12[16]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[49]),
        .Q(data12[17]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\rAesChannelStatus_reg_n_0_[4] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[50] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[50]),
        .Q(data12[18]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[51] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[51]),
        .Q(data12[19]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[52] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[52]),
        .Q(data12[20]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[53] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[53]),
        .Q(data12[21]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[54] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[54]),
        .Q(data12[22]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[55] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[55]),
        .Q(data12[23]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[56] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[56]),
        .Q(data12[24]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[57] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[57]),
        .Q(data12[25]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[58] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[58]),
        .Q(data12[26]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[59] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[59]),
        .Q(data12[27]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\rAesChannelStatus_reg_n_0_[5] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[60] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[60]),
        .Q(data12[28]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[61] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[61]),
        .Q(data12[29]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[62] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[62]),
        .Q(data12[30]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[63] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[63]),
        .Q(data12[31]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[64] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[64]),
        .Q(data13[0]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[65] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[65]),
        .Q(data13[1]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[66] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[66]),
        .Q(data13[2]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[67] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[67]),
        .Q(data13[3]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[68] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[68]),
        .Q(data13[4]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[69] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[69]),
        .Q(data13[5]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\rAesChannelStatus_reg_n_0_[6] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[70] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[70]),
        .Q(data13[6]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[71] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[71]),
        .Q(data13[7]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[72] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[72]),
        .Q(data13[8]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[73] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[73]),
        .Q(data13[9]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[74] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[74]),
        .Q(data13[10]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[75] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[75]),
        .Q(data13[11]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[76] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[76]),
        .Q(data13[12]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[77] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[77]),
        .Q(data13[13]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[78] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[78]),
        .Q(data13[14]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[79] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[79]),
        .Q(data13[15]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\rAesChannelStatus_reg_n_0_[7] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[80] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[80]),
        .Q(data13[16]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[81] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[81]),
        .Q(data13[17]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[82] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[82]),
        .Q(data13[18]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[83] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[83]),
        .Q(data13[19]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[84] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[84]),
        .Q(data13[20]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[85] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[85]),
        .Q(data13[21]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[86] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[86]),
        .Q(data13[22]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[87] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[87]),
        .Q(data13[23]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[88] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[88]),
        .Q(data13[24]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[89] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[89]),
        .Q(data13[25]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\rAesChannelStatus_reg_n_0_[8] ),
        .R(SR));
  FDRE \rAesChannelStatus_reg[90] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[90]),
        .Q(data13[26]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[91] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[91]),
        .Q(data13[27]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[92] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[92]),
        .Q(data13[28]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[93] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[93]),
        .Q(data13[29]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[94] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[94]),
        .Q(data13[30]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[95] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[95]),
        .Q(data13[31]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[96] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[96]),
        .Q(data14[0]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[97] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[97]),
        .Q(data14[1]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[98] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[98]),
        .Q(data14[2]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[99] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[99]),
        .Q(data14[3]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\rAesChannelStatus_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_01[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rChannelMux_01[2]_i_2_n_0 ),
        .I2(\rChannelMux_01_reg[2]_0 [0]),
        .O(\rChannelMux_01[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_01[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\rChannelMux_01[2]_i_2_n_0 ),
        .I2(\rChannelMux_01_reg[2]_0 [1]),
        .O(\rChannelMux_01[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_01[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\rChannelMux_01[2]_i_2_n_0 ),
        .I2(\rChannelMux_01_reg[2]_0 [2]),
        .O(\rChannelMux_01[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \rChannelMux_01[2]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[5]),
        .I4(\oAxi_BResp[1]_i_2_n_0 ),
        .I5(\rIrqEnables[31]_i_2_n_0 ),
        .O(\rChannelMux_01[2]_i_2_n_0 ));
  FDSE \rChannelMux_01_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_01[0]_i_1_n_0 ),
        .Q(\rChannelMux_01_reg[2]_0 [0]),
        .S(SR));
  FDRE \rChannelMux_01_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_01[1]_i_1_n_0 ),
        .Q(\rChannelMux_01_reg[2]_0 [1]),
        .R(SR));
  FDRE \rChannelMux_01_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_01[2]_i_1_n_0 ),
        .Q(\rChannelMux_01_reg[2]_0 [2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_23[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rChannelMux_23[2]_i_2_n_0 ),
        .I2(rChannelMux_23[0]),
        .O(\rChannelMux_23[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_23[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\rChannelMux_23[2]_i_2_n_0 ),
        .I2(rChannelMux_23[1]),
        .O(\rChannelMux_23[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_23[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\rChannelMux_23[2]_i_2_n_0 ),
        .I2(rChannelMux_23[2]),
        .O(\rChannelMux_23[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \rChannelMux_23[2]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[6]),
        .I2(\rIrqEnables[31]_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\oAxi_BResp[1]_i_2_n_0 ),
        .I5(sel0[5]),
        .O(\rChannelMux_23[2]_i_2_n_0 ));
  FDRE \rChannelMux_23_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_23[0]_i_1_n_0 ),
        .Q(rChannelMux_23[0]),
        .R(SR));
  FDSE \rChannelMux_23_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_23[1]_i_1_n_0 ),
        .Q(rChannelMux_23[1]),
        .S(SR));
  FDRE \rChannelMux_23_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_23[2]_i_1_n_0 ),
        .Q(rChannelMux_23[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_45[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rChannelMux_45[2]_i_2_n_0 ),
        .I2(rChannelMux_45[0]),
        .O(\rChannelMux_45[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_45[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\rChannelMux_45[2]_i_2_n_0 ),
        .I2(rChannelMux_45[1]),
        .O(\rChannelMux_45[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_45[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\rChannelMux_45[2]_i_2_n_0 ),
        .I2(rChannelMux_45[2]),
        .O(\rChannelMux_45[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \rChannelMux_45[2]_i_2 
       (.I0(sel0[5]),
        .I1(\oAxi_BResp[1]_i_2_n_0 ),
        .I2(sel0[6]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .I5(\rIrqEnables[31]_i_2_n_0 ),
        .O(\rChannelMux_45[2]_i_2_n_0 ));
  FDSE \rChannelMux_45_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_45[0]_i_1_n_0 ),
        .Q(rChannelMux_45[0]),
        .S(SR));
  FDSE \rChannelMux_45_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_45[1]_i_1_n_0 ),
        .Q(rChannelMux_45[1]),
        .S(SR));
  FDRE \rChannelMux_45_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_45[2]_i_1_n_0 ),
        .Q(rChannelMux_45[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_67[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rChannelMux_67[2]_i_2_n_0 ),
        .I2(rChannelMux_67[0]),
        .O(\rChannelMux_67[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_67[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\rChannelMux_67[2]_i_2_n_0 ),
        .I2(rChannelMux_67[1]),
        .O(\rChannelMux_67[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_67[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\rChannelMux_67[2]_i_2_n_0 ),
        .I2(rChannelMux_67[2]),
        .O(\rChannelMux_67[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \rChannelMux_67[2]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(\oAxi_BResp[1]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\rIrqEnables[31]_i_2_n_0 ),
        .O(\rChannelMux_67[2]_i_2_n_0 ));
  FDRE \rChannelMux_67_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_67[0]_i_1_n_0 ),
        .Q(rChannelMux_67[0]),
        .R(SR));
  FDRE \rChannelMux_67_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_67[1]_i_1_n_0 ),
        .Q(rChannelMux_67[1]),
        .R(SR));
  FDSE \rChannelMux_67_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rChannelMux_67[2]_i_1_n_0 ),
        .Q(rChannelMux_67[2]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h88F000F0)) 
    rClearAesChannelStatus_i_1
       (.I0(oAxi_WReady_reg_0),
        .I1(s_axi_ctrl_wvalid),
        .I2(src_pulse),
        .I3(s_axi_ctrl_aresetn),
        .I4(rClearAesChannelStatus_i_2_n_0),
        .O(rClearAesChannelStatus_i_1_n_0));
  LUT5 #(
    .INIT(32'h01000C00)) 
    rClearAesChannelStatus_i_2
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(rClearAesChannelStatus_i_3_n_0),
        .I3(sel0[6]),
        .I4(sel0[5]),
        .O(rClearAesChannelStatus_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rClearAesChannelStatus_i_3
       (.I0(\rWriteAddr_reg_n_0_[7] ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(rClearAesChannelStatus_i_3_n_0));
  FDRE rClearAesChannelStatus_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rClearAesChannelStatus_i_1_n_0),
        .Q(src_pulse),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \rClearIrqs[0]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(\rIrqEnables[31]_i_2_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[3]),
        .I5(s_axi_ctrl_wdata[0]),
        .O(\rClearIrqs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \rClearIrqs[1]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(\rIrqEnables[31]_i_2_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[3]),
        .I5(s_axi_ctrl_wdata[1]),
        .O(\rClearIrqs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \rClearIrqs[2]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(\rIrqEnables[31]_i_2_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[3]),
        .I5(s_axi_ctrl_wdata[2]),
        .O(\rClearIrqs[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \rClearIrqs[3]_i_1 
       (.I0(s_axi_ctrl_aresetn),
        .I1(oAxi_WReady_reg_0),
        .I2(s_axi_ctrl_wvalid),
        .O(rClearIrqs));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \rClearIrqs[3]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[2]),
        .I2(\rIrqEnables[31]_i_2_n_0 ),
        .I3(sel0[6]),
        .I4(sel0[3]),
        .I5(s_axi_ctrl_wdata[3]),
        .O(\rClearIrqs[3]_i_2_n_0 ));
  FDRE \rClearIrqs_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_aresetn),
        .D(\rClearIrqs[0]_i_1_n_0 ),
        .Q(\rClearIrqs_reg_n_0_[0] ),
        .R(rClearIrqs));
  FDRE \rClearIrqs_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_aresetn),
        .D(\rClearIrqs[1]_i_1_n_0 ),
        .Q(\rClearIrqs_reg_n_0_[1] ),
        .R(rClearIrqs));
  FDRE \rClearIrqs_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_aresetn),
        .D(\rClearIrqs[2]_i_1_n_0 ),
        .Q(\rClearIrqs_reg_n_0_[2] ),
        .R(rClearIrqs));
  FDRE \rClearIrqs_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_aresetn),
        .D(\rClearIrqs[3]_i_2_n_0 ),
        .Q(\rClearIrqs_reg_n_0_[3] ),
        .R(rClearIrqs));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rEnable_i_1
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(rEnable_i_2_n_0),
        .I2(src_in),
        .O(rEnable_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    rEnable_i_2
       (.I0(sel0[3]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[2]),
        .I4(\oAxi_BResp[1]_i_2_n_0 ),
        .I5(\rSclkDiv[7]_i_2_n_0 ),
        .O(rEnable_i_2_n_0));
  FDRE rEnable_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rEnable_i_1_n_0),
        .Q(src_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rIrqEnables[31]_i_1 
       (.I0(sel0[6]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(\oAxi_BResp[1]_i_2_n_0 ),
        .I4(sel0[5]),
        .I5(\rIrqEnables[31]_i_2_n_0 ),
        .O(\rIrqEnables[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \rIrqEnables[31]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(\rWriteAddr_reg_n_0_[7] ),
        .O(\rIrqEnables[31]_i_2_n_0 ));
  FDRE \rIrqEnables_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rIrqEnables[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\rIrqEnables_reg_n_0_[0] ),
        .R(SR));
  FDRE \rIrqEnables_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rIrqEnables[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\rIrqEnables_reg_n_0_[1] ),
        .R(SR));
  FDRE \rIrqEnables_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rIrqEnables[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\rIrqEnables_reg_n_0_[2] ),
        .R(SR));
  FDRE \rIrqEnables_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rIrqEnables[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\rIrqEnables_reg_n_0_[31] ),
        .R(SR));
  FDRE \rIrqEnables_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rIrqEnables[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\rIrqEnables_reg_n_0_[3] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hBA)) 
    \rIrqStatus[0]_i_1 
       (.I0(dest_pulse),
        .I1(\rClearIrqs_reg_n_0_[0] ),
        .I2(\rIrqStatus_reg_n_0_[0] ),
        .O(\rIrqStatus[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \rIrqStatus[1]_i_1 
       (.I0(\rIrqStatus_reg[1]_0 ),
        .I1(\rClearIrqs_reg_n_0_[1] ),
        .I2(p_5_in),
        .O(\rIrqStatus[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \rIrqStatus[2]_i_1 
       (.I0(E),
        .I1(\rClearIrqs_reg_n_0_[2] ),
        .I2(\rIrqStatus_reg_n_0_[2] ),
        .O(\rIrqStatus[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \rIrqStatus[3]_i_1 
       (.I0(\rIrqStatus_reg[3]_0 ),
        .I1(\rClearIrqs_reg_n_0_[3] ),
        .I2(\rIrqStatus_reg_n_0_[3] ),
        .O(\rIrqStatus[3]_i_1_n_0 ));
  FDRE \rIrqStatus_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rIrqStatus[0]_i_1_n_0 ),
        .Q(\rIrqStatus_reg_n_0_[0] ),
        .R(SR));
  FDRE \rIrqStatus_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rIrqStatus[1]_i_1_n_0 ),
        .Q(p_5_in),
        .R(SR));
  FDRE \rIrqStatus_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rIrqStatus[2]_i_1_n_0 ),
        .Q(\rIrqStatus_reg_n_0_[2] ),
        .R(SR));
  FDRE \rIrqStatus_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rIrqStatus[3]_i_1_n_0 ),
        .Q(\rIrqStatus_reg_n_0_[3] ),
        .R(SR));
  LUT4 #(
    .INIT(16'hEFE0)) 
    rIrq_i_1
       (.I0(rIrq_i_2_n_0),
        .I1(rIrq_i_3_n_0),
        .I2(\rIrqEnables_reg_n_0_[31] ),
        .I3(irq),
        .O(rIrq_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rIrq_i_2
       (.I0(\rIrqEnables_reg_n_0_[1] ),
        .I1(p_5_in),
        .I2(\rIrqEnables_reg_n_0_[2] ),
        .I3(\rIrqStatus_reg_n_0_[2] ),
        .O(rIrq_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    rIrq_i_3
       (.I0(\rIrqEnables_reg_n_0_[3] ),
        .I1(\rIrqStatus_reg_n_0_[3] ),
        .I2(\rIrqEnables_reg_n_0_[0] ),
        .I3(\rIrqStatus_reg_n_0_[0] ),
        .O(rIrq_i_3_n_0));
  FDRE rIrq_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rIrq_i_1_n_0),
        .Q(irq),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rJustify_i_1
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(rEnable_i_2_n_0),
        .I2(rJustify_reg_0),
        .O(rJustify_i_1_n_0));
  FDRE rJustify_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rJustify_i_1_n_0),
        .Q(rJustify_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rLeft_Right_i_1
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(rEnable_i_2_n_0),
        .I2(rLeft_Right_reg_0),
        .O(rLeft_Right_i_1_n_0));
  FDRE rLeft_Right_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rLeft_Right_i_1_n_0),
        .Q(rLeft_Right_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[0]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[0]),
        .O(\rReadAddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[1]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[1]),
        .O(\rReadAddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[2]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[2]),
        .O(\rReadAddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[3]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[3]),
        .O(\rReadAddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[4]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[4]),
        .O(\rReadAddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[5]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[5]),
        .O(\rReadAddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[6]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[6]),
        .O(\rReadAddr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \rReadAddr[7]_i_1 
       (.I0(s_axi_ctrl_arvalid),
        .I1(stmRead[1]),
        .I2(stmRead[0]),
        .O(\rReadAddr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[7]_i_2 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[7]),
        .O(\rReadAddr[7]_i_2_n_0 ));
  FDRE \rReadAddr_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .D(\rReadAddr[0]_i_1_n_0 ),
        .Q(rReadAddr[0]),
        .R(SR));
  FDRE \rReadAddr_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .D(\rReadAddr[1]_i_1_n_0 ),
        .Q(rReadAddr[1]),
        .R(SR));
  FDRE \rReadAddr_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .D(\rReadAddr[2]_i_1_n_0 ),
        .Q(rReadAddr[2]),
        .R(SR));
  FDRE \rReadAddr_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .D(\rReadAddr[3]_i_1_n_0 ),
        .Q(rReadAddr[3]),
        .R(SR));
  FDRE \rReadAddr_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .D(\rReadAddr[4]_i_1_n_0 ),
        .Q(rReadAddr[4]),
        .R(SR));
  FDRE \rReadAddr_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .D(\rReadAddr[5]_i_1_n_0 ),
        .Q(rReadAddr[5]),
        .R(SR));
  FDRE \rReadAddr_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .D(\rReadAddr[6]_i_1_n_0 ),
        .Q(rReadAddr[6]),
        .R(SR));
  FDRE \rReadAddr_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rReadAddr[7]_i_1_n_0 ),
        .D(\rReadAddr[7]_i_2_n_0 ),
        .Q(\rReadAddr_reg_n_0_[7] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \rSclkDiv[7]_i_1 
       (.I0(sel0[6]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[5]),
        .I4(\oAxi_BResp[1]_i_2_n_0 ),
        .I5(\rSclkDiv[7]_i_2_n_0 ),
        .O(\rSclkDiv[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rSclkDiv[7]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\rWriteAddr_reg_n_0_[7] ),
        .I3(sel0[4]),
        .O(\rSclkDiv[7]_i_2_n_0 ));
  FDRE \rSclkDiv_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rSclkDiv[7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \rSclkDiv_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rSclkDiv[7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \rSclkDiv_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rSclkDiv[7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \rSclkDiv_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rSclkDiv[7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \rSclkDiv_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rSclkDiv[7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \rSclkDiv_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rSclkDiv[7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \rSclkDiv_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rSclkDiv[7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \rSclkDiv_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rSclkDiv[7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  LUT4 #(
    .INIT(16'hBF80)) 
    rValidity_i_1
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(rValidity_i_2_n_0),
        .I2(\rSclkDiv[7]_i_2_n_0 ),
        .I3(rValidity_reg_0),
        .O(rValidity_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    rValidity_i_2
       (.I0(oAxi_WReady_reg_0),
        .I1(s_axi_ctrl_wvalid),
        .I2(sel0[2]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .I5(sel0[3]),
        .O(rValidity_i_2_n_0));
  FDRE rValidity_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rValidity_i_1_n_0),
        .Q(rValidity_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \rWriteAddr[7]_i_1 
       (.I0(stmWrite[0]),
        .I1(s_axi_ctrl_awvalid),
        .I2(stmWrite[1]),
        .O(rWriteAddr));
  FDRE \rWriteAddr_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr),
        .D(s_axi_ctrl_awaddr[0]),
        .Q(sel0[0]),
        .R(SR));
  FDRE \rWriteAddr_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr),
        .D(s_axi_ctrl_awaddr[1]),
        .Q(sel0[1]),
        .R(SR));
  FDRE \rWriteAddr_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr),
        .D(s_axi_ctrl_awaddr[2]),
        .Q(sel0[2]),
        .R(SR));
  FDRE \rWriteAddr_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr),
        .D(s_axi_ctrl_awaddr[3]),
        .Q(sel0[3]),
        .R(SR));
  FDRE \rWriteAddr_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr),
        .D(s_axi_ctrl_awaddr[4]),
        .Q(sel0[4]),
        .R(SR));
  FDRE \rWriteAddr_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr),
        .D(s_axi_ctrl_awaddr[5]),
        .Q(sel0[5]),
        .R(SR));
  FDRE \rWriteAddr_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr),
        .D(s_axi_ctrl_awaddr[6]),
        .Q(sel0[6]),
        .R(SR));
  FDRE \rWriteAddr_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr),
        .D(s_axi_ctrl_awaddr[7]),
        .Q(\rWriteAddr_reg_n_0_[7] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "i2s_transmitter_v1_0_2_ser" *) 
module design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_ser
   (iMRst0,
    mclk_rAudioUnderflowInhib_reg,
    mclk_nAudCapt_0,
    \FSM_sequential_stmAudChCtrl_reg[1] ,
    \FSM_sequential_stmAudChCtrl_reg[0] ,
    sdata_0_out,
    sclk_in,
    aud_mclk,
    p_1_in,
    \rSDataOut_reg[31]_0 ,
    iAudData,
    dest_out,
    \rSDataOut_reg[0]_0 ,
    lrclk_in,
    mclk_rAudioUnderflowInhib_reg_0,
    mclk_rAudioUnderflow_reg,
    aud_mrst,
    rLRClkIn_reg_0,
    stmAudChCtrl__0,
    mclk_rReadCh0_reg,
    mclk_rReadCh0,
    mclk_rReadCh0_reg_0);
  output iMRst0;
  output mclk_rAudioUnderflowInhib_reg;
  output mclk_nAudCapt_0;
  output \FSM_sequential_stmAudChCtrl_reg[1] ;
  output \FSM_sequential_stmAudChCtrl_reg[0] ;
  output sdata_0_out;
  input sclk_in;
  input aud_mclk;
  input p_1_in;
  input \rSDataOut_reg[31]_0 ;
  input [31:0]iAudData;
  input dest_out;
  input \rSDataOut_reg[0]_0 ;
  input lrclk_in;
  input mclk_rAudioUnderflowInhib_reg_0;
  input mclk_rAudioUnderflow_reg;
  input aud_mrst;
  input rLRClkIn_reg_0;
  input [1:0]stmAudChCtrl__0;
  input mclk_rReadCh0_reg;
  input mclk_rReadCh0;
  input mclk_rReadCh0_reg_0;

  wire \FSM_sequential_stmAudChCtrl_reg[0] ;
  wire \FSM_sequential_stmAudChCtrl_reg[1] ;
  wire aud_mclk;
  wire aud_mrst;
  wire dest_out;
  wire [31:0]iAudData;
  wire iMRst0;
  wire lrclk_in;
  wire mclk_nAudCapt_0;
  wire mclk_rAudioUnderflowInhib_reg;
  wire mclk_rAudioUnderflowInhib_reg_0;
  wire mclk_rAudioUnderflow_reg;
  wire mclk_rReadCh0;
  wire mclk_rReadCh0_reg;
  wire mclk_rReadCh0_reg_0;
  wire p_1_in;
  wire rLRClkDelayed;
  wire rLRClkDelayed_i_1_n_0;
  wire rLRClkIn_i_1_n_0;
  wire rLRClkIn_reg_0;
  wire rLRClkIn_reg_n_0;
  wire rSClkDelayed;
  wire [30:0]rSDataOut;
  wire rSDataOut10_out;
  wire rSDataOut1__0;
  wire \rSDataOut[0]_i_1_n_0 ;
  wire \rSDataOut[10]_i_1_n_0 ;
  wire \rSDataOut[11]_i_1_n_0 ;
  wire \rSDataOut[12]_i_1_n_0 ;
  wire \rSDataOut[13]_i_1_n_0 ;
  wire \rSDataOut[14]_i_1_n_0 ;
  wire \rSDataOut[15]_i_1_n_0 ;
  wire \rSDataOut[16]_i_1_n_0 ;
  wire \rSDataOut[17]_i_1_n_0 ;
  wire \rSDataOut[18]_i_1_n_0 ;
  wire \rSDataOut[19]_i_1_n_0 ;
  wire \rSDataOut[1]_i_1_n_0 ;
  wire \rSDataOut[20]_i_1_n_0 ;
  wire \rSDataOut[21]_i_1_n_0 ;
  wire \rSDataOut[22]_i_1_n_0 ;
  wire \rSDataOut[23]_i_1_n_0 ;
  wire \rSDataOut[24]_i_1_n_0 ;
  wire \rSDataOut[25]_i_1_n_0 ;
  wire \rSDataOut[26]_i_1_n_0 ;
  wire \rSDataOut[27]_i_1_n_0 ;
  wire \rSDataOut[28]_i_1_n_0 ;
  wire \rSDataOut[29]_i_1_n_0 ;
  wire \rSDataOut[2]_i_1_n_0 ;
  wire \rSDataOut[30]_i_1_n_0 ;
  wire \rSDataOut[31]_i_1_n_0 ;
  wire \rSDataOut[31]_i_2_n_0 ;
  wire \rSDataOut[3]_i_1_n_0 ;
  wire \rSDataOut[4]_i_1_n_0 ;
  wire \rSDataOut[5]_i_1_n_0 ;
  wire \rSDataOut[6]_i_1_n_0 ;
  wire \rSDataOut[7]_i_1_n_0 ;
  wire \rSDataOut[8]_i_1_n_0 ;
  wire \rSDataOut[9]_i_1_n_0 ;
  wire \rSDataOut_reg[0]_0 ;
  wire \rSDataOut_reg[31]_0 ;
  wire sclk_in;
  wire sdata_0_out;
  wire [1:0]stmAudChCtrl__0;

  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_stmAudChCtrl[1]_i_1 
       (.I0(aud_mrst),
        .I1(rLRClkIn_reg_0),
        .O(iMRst0));
  LUT4 #(
    .INIT(16'h7F03)) 
    mclk_rAudioUnderflowInhib_i_1
       (.I0(mclk_nAudCapt_0),
        .I1(stmAudChCtrl__0[0]),
        .I2(stmAudChCtrl__0[1]),
        .I3(mclk_rAudioUnderflowInhib_reg_0),
        .O(\FSM_sequential_stmAudChCtrl_reg[0] ));
  LUT5 #(
    .INIT(32'h15000000)) 
    mclk_rAudioUnderflow_i_1
       (.I0(mclk_rAudioUnderflowInhib_reg_0),
        .I1(\rSDataOut_reg[31]_0 ),
        .I2(p_1_in),
        .I3(mclk_nAudCapt_0),
        .I4(mclk_rAudioUnderflow_reg),
        .O(mclk_rAudioUnderflowInhib_reg));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    mclk_rReadCh0_i_1
       (.I0(stmAudChCtrl__0[1]),
        .I1(mclk_rReadCh0_reg),
        .I2(stmAudChCtrl__0[0]),
        .I3(mclk_nAudCapt_0),
        .I4(mclk_rReadCh0),
        .I5(mclk_rReadCh0_reg_0),
        .O(\FSM_sequential_stmAudChCtrl_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h04000040)) 
    \mclk_rWaveGenCounter[0]_i_1 
       (.I0(sclk_in),
        .I1(rSClkDelayed),
        .I2(rLRClkIn_reg_n_0),
        .I3(\rSDataOut_reg[0]_0 ),
        .I4(rLRClkDelayed),
        .O(mclk_nAudCapt_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    rLRClkDelayed_i_1
       (.I0(rLRClkIn_reg_n_0),
        .I1(sclk_in),
        .I2(rSClkDelayed),
        .I3(rLRClkDelayed),
        .O(rLRClkDelayed_i_1_n_0));
  FDRE rLRClkDelayed_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rLRClkDelayed_i_1_n_0),
        .Q(rLRClkDelayed),
        .R(iMRst0));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    rLRClkIn_i_1
       (.I0(lrclk_in),
        .I1(rSClkDelayed),
        .I2(sclk_in),
        .I3(rLRClkIn_reg_0),
        .I4(aud_mrst),
        .I5(rLRClkIn_reg_n_0),
        .O(rLRClkIn_i_1_n_0));
  FDRE rLRClkIn_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rLRClkIn_i_1_n_0),
        .Q(rLRClkIn_reg_n_0),
        .R(1'b0));
  FDRE rSClkDelayed_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(sclk_in),
        .Q(rSClkDelayed),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h80A0A08080000080)) 
    \rSDataOut[0]_i_1 
       (.I0(rSDataOut10_out),
        .I1(iAudData[0]),
        .I2(dest_out),
        .I3(\rSDataOut_reg[0]_0 ),
        .I4(lrclk_in),
        .I5(iAudData[16]),
        .O(\rSDataOut[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[10]_i_1 
       (.I0(iAudData[26]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[10]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[9]),
        .O(\rSDataOut[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[11]_i_1 
       (.I0(iAudData[27]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[11]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[10]),
        .O(\rSDataOut[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[12]_i_1 
       (.I0(iAudData[28]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[12]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[11]),
        .O(\rSDataOut[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[13]_i_1 
       (.I0(iAudData[29]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[13]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[12]),
        .O(\rSDataOut[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[14]_i_1 
       (.I0(iAudData[30]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[14]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[13]),
        .O(\rSDataOut[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[15]_i_1 
       (.I0(iAudData[31]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[15]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[14]),
        .O(\rSDataOut[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[16]_i_1 
       (.I0(iAudData[16]),
        .I1(rSDataOut1__0),
        .I2(iAudData[0]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[15]),
        .O(\rSDataOut[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[17]_i_1 
       (.I0(iAudData[17]),
        .I1(rSDataOut1__0),
        .I2(iAudData[1]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[16]),
        .O(\rSDataOut[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[18]_i_1 
       (.I0(iAudData[18]),
        .I1(rSDataOut1__0),
        .I2(iAudData[2]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[17]),
        .O(\rSDataOut[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[19]_i_1 
       (.I0(iAudData[19]),
        .I1(rSDataOut1__0),
        .I2(iAudData[3]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[18]),
        .O(\rSDataOut[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[1]_i_1 
       (.I0(iAudData[17]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[1]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[0]),
        .O(\rSDataOut[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[20]_i_1 
       (.I0(iAudData[20]),
        .I1(rSDataOut1__0),
        .I2(iAudData[4]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[19]),
        .O(\rSDataOut[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[21]_i_1 
       (.I0(iAudData[21]),
        .I1(rSDataOut1__0),
        .I2(iAudData[5]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[20]),
        .O(\rSDataOut[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[22]_i_1 
       (.I0(iAudData[22]),
        .I1(rSDataOut1__0),
        .I2(iAudData[6]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[21]),
        .O(\rSDataOut[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[23]_i_1 
       (.I0(iAudData[23]),
        .I1(rSDataOut1__0),
        .I2(iAudData[7]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[22]),
        .O(\rSDataOut[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[24]_i_1 
       (.I0(iAudData[24]),
        .I1(rSDataOut1__0),
        .I2(iAudData[8]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[23]),
        .O(\rSDataOut[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[25]_i_1 
       (.I0(iAudData[25]),
        .I1(rSDataOut1__0),
        .I2(iAudData[9]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[24]),
        .O(\rSDataOut[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[26]_i_1 
       (.I0(iAudData[26]),
        .I1(rSDataOut1__0),
        .I2(iAudData[10]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[25]),
        .O(\rSDataOut[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[27]_i_1 
       (.I0(iAudData[27]),
        .I1(rSDataOut1__0),
        .I2(iAudData[11]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[26]),
        .O(\rSDataOut[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[28]_i_1 
       (.I0(iAudData[28]),
        .I1(rSDataOut1__0),
        .I2(iAudData[12]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[27]),
        .O(\rSDataOut[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[29]_i_1 
       (.I0(iAudData[29]),
        .I1(rSDataOut1__0),
        .I2(iAudData[13]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[28]),
        .O(\rSDataOut[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[2]_i_1 
       (.I0(iAudData[18]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[2]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[1]),
        .O(\rSDataOut[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[30]_i_1 
       (.I0(iAudData[30]),
        .I1(rSDataOut1__0),
        .I2(iAudData[14]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[29]),
        .O(\rSDataOut[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008F00)) 
    \rSDataOut[31]_i_1 
       (.I0(p_1_in),
        .I1(\rSDataOut_reg[31]_0 ),
        .I2(rSDataOut10_out),
        .I3(rSClkDelayed),
        .I4(sclk_in),
        .I5(iMRst0),
        .O(\rSDataOut[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rSDataOut[31]_i_2 
       (.I0(iAudData[31]),
        .I1(rSDataOut1__0),
        .I2(iAudData[15]),
        .I3(dest_out),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[30]),
        .O(\rSDataOut[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \rSDataOut[31]_i_3 
       (.I0(rLRClkIn_reg_n_0),
        .I1(rLRClkDelayed),
        .I2(\rSDataOut_reg[0]_0 ),
        .I3(lrclk_in),
        .O(rSDataOut10_out));
  LUT2 #(
    .INIT(4'h6)) 
    \rSDataOut[31]_i_4 
       (.I0(lrclk_in),
        .I1(\rSDataOut_reg[0]_0 ),
        .O(rSDataOut1__0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[3]_i_1 
       (.I0(iAudData[19]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[3]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[2]),
        .O(\rSDataOut[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[4]_i_1 
       (.I0(iAudData[20]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[4]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[3]),
        .O(\rSDataOut[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[5]_i_1 
       (.I0(iAudData[21]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[5]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[4]),
        .O(\rSDataOut[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[6]_i_1 
       (.I0(iAudData[22]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[6]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[5]),
        .O(\rSDataOut[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[7]_i_1 
       (.I0(iAudData[23]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[7]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[6]),
        .O(\rSDataOut[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[8]_i_1 
       (.I0(iAudData[24]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[8]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[7]),
        .O(\rSDataOut[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rSDataOut[9]_i_1 
       (.I0(iAudData[25]),
        .I1(rSDataOut1__0),
        .I2(dest_out),
        .I3(iAudData[9]),
        .I4(rSDataOut10_out),
        .I5(rSDataOut[8]),
        .O(\rSDataOut[9]_i_1_n_0 ));
  FDRE \rSDataOut_reg[0] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[0]_i_1_n_0 ),
        .Q(rSDataOut[0]),
        .R(1'b0));
  FDRE \rSDataOut_reg[10] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[10]_i_1_n_0 ),
        .Q(rSDataOut[10]),
        .R(1'b0));
  FDRE \rSDataOut_reg[11] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[11]_i_1_n_0 ),
        .Q(rSDataOut[11]),
        .R(1'b0));
  FDRE \rSDataOut_reg[12] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[12]_i_1_n_0 ),
        .Q(rSDataOut[12]),
        .R(1'b0));
  FDRE \rSDataOut_reg[13] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[13]_i_1_n_0 ),
        .Q(rSDataOut[13]),
        .R(1'b0));
  FDRE \rSDataOut_reg[14] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[14]_i_1_n_0 ),
        .Q(rSDataOut[14]),
        .R(1'b0));
  FDRE \rSDataOut_reg[15] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[15]_i_1_n_0 ),
        .Q(rSDataOut[15]),
        .R(1'b0));
  FDRE \rSDataOut_reg[16] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[16]_i_1_n_0 ),
        .Q(rSDataOut[16]),
        .R(1'b0));
  FDRE \rSDataOut_reg[17] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[17]_i_1_n_0 ),
        .Q(rSDataOut[17]),
        .R(1'b0));
  FDRE \rSDataOut_reg[18] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[18]_i_1_n_0 ),
        .Q(rSDataOut[18]),
        .R(1'b0));
  FDRE \rSDataOut_reg[19] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[19]_i_1_n_0 ),
        .Q(rSDataOut[19]),
        .R(1'b0));
  FDRE \rSDataOut_reg[1] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[1]_i_1_n_0 ),
        .Q(rSDataOut[1]),
        .R(1'b0));
  FDRE \rSDataOut_reg[20] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[20]_i_1_n_0 ),
        .Q(rSDataOut[20]),
        .R(1'b0));
  FDRE \rSDataOut_reg[21] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[21]_i_1_n_0 ),
        .Q(rSDataOut[21]),
        .R(1'b0));
  FDRE \rSDataOut_reg[22] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[22]_i_1_n_0 ),
        .Q(rSDataOut[22]),
        .R(1'b0));
  FDRE \rSDataOut_reg[23] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[23]_i_1_n_0 ),
        .Q(rSDataOut[23]),
        .R(1'b0));
  FDRE \rSDataOut_reg[24] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[24]_i_1_n_0 ),
        .Q(rSDataOut[24]),
        .R(1'b0));
  FDRE \rSDataOut_reg[25] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[25]_i_1_n_0 ),
        .Q(rSDataOut[25]),
        .R(1'b0));
  FDRE \rSDataOut_reg[26] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[26]_i_1_n_0 ),
        .Q(rSDataOut[26]),
        .R(1'b0));
  FDRE \rSDataOut_reg[27] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[27]_i_1_n_0 ),
        .Q(rSDataOut[27]),
        .R(1'b0));
  FDRE \rSDataOut_reg[28] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[28]_i_1_n_0 ),
        .Q(rSDataOut[28]),
        .R(1'b0));
  FDRE \rSDataOut_reg[29] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[29]_i_1_n_0 ),
        .Q(rSDataOut[29]),
        .R(1'b0));
  FDRE \rSDataOut_reg[2] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[2]_i_1_n_0 ),
        .Q(rSDataOut[2]),
        .R(1'b0));
  FDRE \rSDataOut_reg[30] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[30]_i_1_n_0 ),
        .Q(rSDataOut[30]),
        .R(1'b0));
  FDRE \rSDataOut_reg[31] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[31]_i_2_n_0 ),
        .Q(sdata_0_out),
        .R(1'b0));
  FDRE \rSDataOut_reg[3] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[3]_i_1_n_0 ),
        .Q(rSDataOut[3]),
        .R(1'b0));
  FDRE \rSDataOut_reg[4] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[4]_i_1_n_0 ),
        .Q(rSDataOut[4]),
        .R(1'b0));
  FDRE \rSDataOut_reg[5] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[5]_i_1_n_0 ),
        .Q(rSDataOut[5]),
        .R(1'b0));
  FDRE \rSDataOut_reg[6] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[6]_i_1_n_0 ),
        .Q(rSDataOut[6]),
        .R(1'b0));
  FDRE \rSDataOut_reg[7] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[7]_i_1_n_0 ),
        .Q(rSDataOut[7]),
        .R(1'b0));
  FDRE \rSDataOut_reg[8] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[8]_i_1_n_0 ),
        .Q(rSDataOut[8]),
        .R(1'b0));
  FDRE \rSDataOut_reg[9] 
       (.C(aud_mclk),
        .CE(\rSDataOut[31]_i_1_n_0 ),
        .D(\rSDataOut[9]_i_1_n_0 ),
        .Q(rSDataOut[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_transmitter_v1_0_2_sys" *) 
module design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_sys
   (fifo_rdata_count,
    fifo_wrdata_count,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    sdata_0_out,
    oAxi_WReady_reg,
    s_axis_aud_tready,
    s_axi_ctrl_awready,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arready,
    s_axi_ctrl_rvalid,
    irq,
    s_axis_aud_tid,
    sclk_in,
    s_axi_ctrl_bready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_aclk,
    aud_mclk,
    s_axis_aud_aclk,
    aud_mrst,
    s_axis_aud_tdata,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aresetn,
    s_axis_aud_aresetn,
    s_axi_ctrl_rready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_araddr,
    s_axis_aud_tvalid,
    lrclk_in);
  output [7:0]fifo_rdata_count;
  output [7:0]fifo_wrdata_count;
  output [31:0]s_axi_ctrl_rdata;
  output [0:0]s_axi_ctrl_rresp;
  output sdata_0_out;
  output oAxi_WReady_reg;
  output s_axis_aud_tready;
  output s_axi_ctrl_awready;
  output s_axi_ctrl_bvalid;
  output [0:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_arready;
  output s_axi_ctrl_rvalid;
  output irq;
  input [2:0]s_axis_aud_tid;
  input sclk_in;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_aclk;
  input aud_mclk;
  input s_axis_aud_aclk;
  input aud_mrst;
  input [31:0]s_axis_aud_tdata;
  input [7:0]s_axi_ctrl_awaddr;
  input [8:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aresetn;
  input s_axis_aud_aresetn;
  input s_axi_ctrl_rready;
  input s_axi_ctrl_arvalid;
  input [7:0]s_axi_ctrl_araddr;
  input s_axis_aud_tvalid;
  input lrclk_in;

  wire AXIS_FIFO_INST_n_16;
  wire AXIS_FIFO_INST_n_17;
  wire AXIS_FIFO_INST_n_18;
  wire AXIS_FIFO_INST_n_19;
  wire AXIS_FIFO_INST_n_21;
  wire AXIS_FIFO_INST_n_23;
  wire AXIS_FIFO_INST_n_25;
  wire AXIS_FIFO_INST_n_27;
  wire AXIS_FIFO_INST_n_28;
  wire AXIS_FIFO_INST_n_29;
  wire AXIS_FIFO_INST_n_30;
  wire AXIS_FIFO_INST_n_31;
  wire AXIS_FIFO_INST_n_32;
  wire AXIS_FIFO_INST_n_33;
  wire AXIS_FIFO_INST_n_34;
  wire AXIS_FIFO_INST_n_35;
  wire AXIS_FIFO_INST_n_36;
  wire AXIS_FIFO_INST_n_37;
  wire AXIS_FIFO_INST_n_38;
  wire AXIS_FIFO_INST_n_39;
  wire AXIS_FIFO_INST_n_40;
  wire AXIS_FIFO_INST_n_41;
  wire AXIS_FIFO_INST_n_42;
  wire AXIS_FIFO_INST_n_43;
  wire AXIS_FIFO_INST_n_44;
  wire AXIS_FIFO_INST_n_45;
  wire AXIS_FIFO_INST_n_46;
  wire AXIS_FIFO_INST_n_47;
  wire AXIS_FIFO_INST_n_48;
  wire AXIS_FIFO_INST_n_49;
  wire AXIS_FIFO_INST_n_50;
  wire AXIS_FIFO_INST_n_51;
  wire AXIS_FIFO_INST_n_52;
  wire AXIS_FIFO_INST_n_53;
  wire AXIS_FIFO_INST_n_54;
  wire AXIS_FIFO_INST_n_55;
  wire AXIS_FIFO_INST_n_56;
  wire AXIS_FIFO_INST_n_57;
  wire AXIS_FIFO_INST_n_58;
  wire AXIS_FIFO_INST_n_59;
  wire AXIS_FIFO_INST_n_60;
  wire AXIS_FIFO_INST_n_61;
  wire AXIS_FIFO_INST_n_62;
  wire AXIS_FIFO_INST_n_63;
  wire I2S_TX_V1_0_AES_DECODE_INST_n_2;
  wire I2S_TX_V1_0_AXI_INST_n_1;
  wire aclk_nAesBlockComplete;
  wire aclk_nAesBlockSyncError;
  wire [191:0]aclk_nAesChannelStatus;
  wire aclk_nAesChannelStatusChanged;
  wire aclk_nAudioUnderflow;
  wire [2:0]\aclk_nChMuxSelect[0]_1 ;
  wire aclk_nClearAesChannelStatus;
  wire aclk_nEnable;
  wire aclk_nJustify;
  wire aclk_nLeft_Right;
  wire [7:0]aclk_nSclkDiv;
  wire aclk_nValidity;
  wire aud_mclk;
  wire aud_mrst;
  wire axis_nAesBlockComplete;
  wire axis_nAesBlockSyncError;
  wire [191:0]axis_nAesChannelStatus;
  wire axis_nAesChannelStatusChanged;
  wire axis_nAxis_TValid_ToAesDec;
  wire axis_nClearAesChannelStatus;
  wire axis_nEnable;
  wire axis_nMClkInReset;
  wire axis_nValidity;
  wire axis_rAxis_InhibFIFOWrite;
  wire axis_rAxis_Ready;
  wire axis_rAxis_Ready1;
  wire [7:0]fifo_rdata_count;
  wire [7:0]fifo_wrdata_count;
  wire \genblk2[0].mclk_rAudValid_reg_n_0_[0] ;
  wire \genblk4[0].I2S_TX_V1_0_SER_INST_n_1 ;
  wire \genblk4[0].I2S_TX_V1_0_SER_INST_n_3 ;
  wire \genblk4[0].I2S_TX_V1_0_SER_INST_n_4 ;
  wire [31:0]iAudData;
  wire iMRst0;
  wire iRst10_in;
  wire id_check;
  wire irq;
  wire lrclk_in;
  wire mclk_nAudCapt_0;
  wire [2:0]\mclk_nChMuxSelect[0]_0 ;
  wire mclk_nEnable;
  wire mclk_nJustify;
  wire mclk_nLeft_Right;
  wire mclk_rAudData;
  wire mclk_rAudioUnderflow;
  wire mclk_rAudioUnderflowInhib_reg_n_0;
  wire \mclk_rChMuxSelect[1][1]_i_1_n_0 ;
  wire \mclk_rChMuxSelect[1][2]_i_1_n_0 ;
  wire \mclk_rChMuxSelect[1][3]_i_1_n_0 ;
  wire \mclk_rChMuxSelect_inferred__0/i__n_0 ;
  wire mclk_rChMuxSelect_n_0;
  wire [0:0]\mclk_rChMuxSelect_reg[0] ;
  wire [3:0]\mclk_rChMuxSelect_reg[1] ;
  wire mclk_rReadCh0;
  wire mclk_rReadCh0_reg_n_0;
  wire mclk_rReadFIFOInitDone_reg_n_0;
  wire mclk_rReadFromFIFO_reg_n_0;
  wire \mclk_rWaveGenCounter[0]_i_3_n_0 ;
  wire [15:0]mclk_rWaveGenCounter_reg;
  wire \mclk_rWaveGenCounter_reg[0]_i_2_n_0 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_2_n_1 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_2_n_2 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_2_n_3 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_2_n_4 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_2_n_5 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_2_n_6 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_2_n_7 ;
  wire \mclk_rWaveGenCounter_reg[12]_i_1_n_1 ;
  wire \mclk_rWaveGenCounter_reg[12]_i_1_n_2 ;
  wire \mclk_rWaveGenCounter_reg[12]_i_1_n_3 ;
  wire \mclk_rWaveGenCounter_reg[12]_i_1_n_4 ;
  wire \mclk_rWaveGenCounter_reg[12]_i_1_n_5 ;
  wire \mclk_rWaveGenCounter_reg[12]_i_1_n_6 ;
  wire \mclk_rWaveGenCounter_reg[12]_i_1_n_7 ;
  wire \mclk_rWaveGenCounter_reg[4]_i_1_n_0 ;
  wire \mclk_rWaveGenCounter_reg[4]_i_1_n_1 ;
  wire \mclk_rWaveGenCounter_reg[4]_i_1_n_2 ;
  wire \mclk_rWaveGenCounter_reg[4]_i_1_n_3 ;
  wire \mclk_rWaveGenCounter_reg[4]_i_1_n_4 ;
  wire \mclk_rWaveGenCounter_reg[4]_i_1_n_5 ;
  wire \mclk_rWaveGenCounter_reg[4]_i_1_n_6 ;
  wire \mclk_rWaveGenCounter_reg[4]_i_1_n_7 ;
  wire \mclk_rWaveGenCounter_reg[8]_i_1_n_0 ;
  wire \mclk_rWaveGenCounter_reg[8]_i_1_n_1 ;
  wire \mclk_rWaveGenCounter_reg[8]_i_1_n_2 ;
  wire \mclk_rWaveGenCounter_reg[8]_i_1_n_3 ;
  wire \mclk_rWaveGenCounter_reg[8]_i_1_n_4 ;
  wire \mclk_rWaveGenCounter_reg[8]_i_1_n_5 ;
  wire \mclk_rWaveGenCounter_reg[8]_i_1_n_6 ;
  wire \mclk_rWaveGenCounter_reg[8]_i_1_n_7 ;
  wire oAxi_WReady_reg;
  wire p_1_in;
  wire s_axi_ctrl_aclk;
  wire [7:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [7:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [0:0]s_axi_ctrl_bresp;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [0:0]s_axi_ctrl_rresp;
  wire s_axi_ctrl_rvalid;
  wire [8:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire s_axis_aud_aclk;
  wire s_axis_aud_aresetn;
  wire [31:0]s_axis_aud_tdata;
  wire [2:0]s_axis_aud_tid;
  wire s_axis_aud_tready;
  wire s_axis_aud_tvalid;
  wire sclk_in;
  wire sdata_0_out;
  wire [1:0]stmAudChCtrl__0;
  wire [7:0]NLW_CDC_SCLKDIV_INST_dest_out_UNCONNECTED;
  wire [3:3]\NLW_mclk_rWaveGenCounter_reg[12]_i_1_CO_UNCONNECTED ;

  design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_async_fifo AXIS_FIFO_INST
       (.D({AXIS_FIFO_INST_n_27,AXIS_FIFO_INST_n_28,AXIS_FIFO_INST_n_29,AXIS_FIFO_INST_n_30,AXIS_FIFO_INST_n_31,AXIS_FIFO_INST_n_32,AXIS_FIFO_INST_n_33,AXIS_FIFO_INST_n_34,AXIS_FIFO_INST_n_35,AXIS_FIFO_INST_n_36,AXIS_FIFO_INST_n_37,AXIS_FIFO_INST_n_38,AXIS_FIFO_INST_n_39,AXIS_FIFO_INST_n_40,AXIS_FIFO_INST_n_41,AXIS_FIFO_INST_n_42}),
        .E(axis_nAxis_TValid_ToAesDec),
        .\FSM_sequential_stmAudChCtrl_reg[0] (AXIS_FIFO_INST_n_59),
        .\FSM_sequential_stmAudChCtrl_reg[0]_0 (AXIS_FIFO_INST_n_60),
        .\FSM_sequential_stmAudChCtrl_reg[0]_1 (mclk_rReadCh0_reg_n_0),
        .aud_mclk(aud_mclk),
        .axis_rAxis_InhibFIFOWrite(axis_rAxis_InhibFIFOWrite),
        .axis_rAxis_InhibFIFOWrite_reg(AXIS_FIFO_INST_n_19),
        .axis_rAxis_InhibFIFOWrite_reg_0(AXIS_FIFO_INST_n_63),
        .axis_rAxis_Ready(axis_rAxis_Ready),
        .dest_out(axis_nEnable),
        .fifo_rdata_count(fifo_rdata_count),
        .fifo_wrdata_count(fifo_wrdata_count),
        .\gen_wr_a.gen_word_narrow.mem_reg ({AXIS_FIFO_INST_n_43,AXIS_FIFO_INST_n_44,AXIS_FIFO_INST_n_45,AXIS_FIFO_INST_n_46,AXIS_FIFO_INST_n_47,AXIS_FIFO_INST_n_48,AXIS_FIFO_INST_n_49,AXIS_FIFO_INST_n_50,AXIS_FIFO_INST_n_51,AXIS_FIFO_INST_n_52,AXIS_FIFO_INST_n_53,AXIS_FIFO_INST_n_54,AXIS_FIFO_INST_n_55,AXIS_FIFO_INST_n_56,AXIS_FIFO_INST_n_57,AXIS_FIFO_INST_n_58}),
        .\gen_wr_a.gen_word_narrow.mem_reg_0 (axis_nValidity),
        .\genblk2[0].mclk_rAudValid_reg[0] (AXIS_FIFO_INST_n_61),
        .\genblk2[0].mclk_rAudValid_reg[0]_0 (\genblk2[0].mclk_rAudValid_reg_n_0_[0] ),
        .\genblk2[1].mclk_rAudValid_reg[1] (AXIS_FIFO_INST_n_62),
        .\grdc.rd_data_count_i_reg[7] (AXIS_FIFO_INST_n_16),
        .\grdc.rd_data_count_i_reg[7]_0 (AXIS_FIFO_INST_n_17),
        .id_check(id_check),
        .mclk_nAudCapt_0(mclk_nAudCapt_0),
        .\mclk_rChMuxSelect_reg[0] (\mclk_rChMuxSelect_reg[0] ),
        .\mclk_rChMuxSelect_reg[1] (\mclk_rChMuxSelect_reg[1] ),
        .mclk_rReadCh0(mclk_rReadCh0),
        .mclk_rReadFIFOInitDone_reg(AXIS_FIFO_INST_n_25),
        .mclk_rReadFIFOInitDone_reg_0(mclk_rAudData),
        .mclk_rReadFIFOInitDone_reg_1(mclk_rReadFIFOInitDone_reg_n_0),
        .mclk_rReadFromFIFO_reg(mclk_rReadFromFIFO_reg_n_0),
        .mclk_rWaveGenCounter_reg(mclk_rWaveGenCounter_reg),
        .p_1_in(p_1_in),
        .rAesBlockSyncError_other_reg(I2S_TX_V1_0_AES_DECODE_INST_n_2),
        .s_axis_aud_aclk(s_axis_aud_aclk),
        .s_axis_aud_tdata(s_axis_aud_tdata),
        .s_axis_aud_tid(s_axis_aud_tid),
        .s_axis_aud_tid_0_sp_1(AXIS_FIFO_INST_n_21),
        .s_axis_aud_tid_1_sp_1(AXIS_FIFO_INST_n_18),
        .s_axis_aud_tready(s_axis_aud_tready),
        .s_axis_aud_tvalid(s_axis_aud_tvalid),
        .s_axis_aud_tvalid_0(AXIS_FIFO_INST_n_23),
        .stmAudChCtrl__0(stmAudChCtrl__0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_pulse__parameterized0__xdcDup__1 CDC_AESBLKCMPLT_INST
       (.dest_clk(s_axi_ctrl_aclk),
        .dest_pulse(aclk_nAesBlockComplete),
        .dest_rst(I2S_TX_V1_0_AXI_INST_n_1),
        .src_clk(s_axis_aud_aclk),
        .src_pulse(axis_nAesBlockComplete),
        .src_rst(iRst10_in));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_pulse__parameterized0__xdcDup__2 CDC_AESBSYNCERR_INST
       (.dest_clk(s_axi_ctrl_aclk),
        .dest_pulse(aclk_nAesBlockSyncError),
        .dest_rst(I2S_TX_V1_0_AXI_INST_n_1),
        .src_clk(s_axis_aud_aclk),
        .src_pulse(axis_nAesBlockSyncError),
        .src_rst(iRst10_in));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_pulse CDC_AESCHSTSUPD_INST
       (.dest_clk(s_axi_ctrl_aclk),
        .dest_pulse(aclk_nAesChannelStatusChanged),
        .dest_rst(I2S_TX_V1_0_AXI_INST_n_1),
        .src_clk(s_axis_aud_aclk),
        .src_pulse(axis_nAesChannelStatusChanged),
        .src_rst(iRst10_in));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT1 #(
    .INIT(2'h1)) 
    CDC_AESCHSTSUPD_INST_i_1
       (.I0(s_axis_aud_aresetn),
        .O(iRst10_in));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "192" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_array_single__parameterized1 CDC_AESCHSTS_INST
       (.dest_clk(s_axi_ctrl_aclk),
        .dest_out(aclk_nAesChannelStatus),
        .src_clk(s_axis_aud_aclk),
        .src_in(axis_nAesChannelStatus));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_pulse__parameterized0__xdcDup__3 CDC_AESCLRCHSTS_INST
       (.dest_clk(s_axis_aud_aclk),
        .dest_pulse(axis_nClearAesChannelStatus),
        .dest_rst(iRst10_in),
        .src_clk(s_axi_ctrl_aclk),
        .src_pulse(aclk_nClearAesChannelStatus),
        .src_rst(I2S_TX_V1_0_AXI_INST_n_1));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_pulse__parameterized0 CDC_AUDUFLOW_INST
       (.dest_clk(s_axi_ctrl_aclk),
        .dest_pulse(aclk_nAudioUnderflow),
        .dest_rst(I2S_TX_V1_0_AXI_INST_n_1),
        .src_clk(aud_mclk),
        .src_pulse(mclk_rAudioUnderflow),
        .src_rst(aud_mrst));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__8 CDC_ENABLE_AXIS_INST
       (.dest_clk(s_axis_aud_aclk),
        .dest_out(axis_nEnable),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nEnable));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__5 CDC_ENABLE_MCLK_INST
       (.dest_clk(aud_mclk),
        .dest_out(mclk_nEnable),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nEnable));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__6 CDC_JUSTIFY_MCLK_INST
       (.dest_clk(aud_mclk),
        .dest_out(mclk_nJustify),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nJustify));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single__7 CDC_LR_MCLK_INST
       (.dest_clk(aud_mclk),
        .dest_out(mclk_nLeft_Right),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nLeft_Right));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_async_rst CDC_MRST_INST
       (.dest_arst(axis_nMClkInReset),
        .dest_clk(s_axis_aud_aclk),
        .src_arst(aud_mrst));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_array_single__parameterized0 CDC_SCLKDIV_INST
       (.dest_clk(aud_mclk),
        .dest_out(NLW_CDC_SCLKDIV_INST_dest_out_UNCONNECTED[7:0]),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nSclkDiv));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_single CDC_VALIDITY_AXISCLK_INST
       (.dest_clk(s_axis_aud_aclk),
        .dest_out(axis_nValidity),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nValidity));
  (* FSM_ENCODED_STATES = "sIdle:00,sWaitForFIFOLoad:01,sSyncFIFO:10,sWaitForI2sShiftReg:11," *) 
  FDRE \FSM_sequential_stmAudChCtrl_reg[0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_16),
        .Q(stmAudChCtrl__0[0]),
        .R(iMRst0));
  (* FSM_ENCODED_STATES = "sIdle:00,sWaitForFIFOLoad:01,sSyncFIFO:10,sWaitForI2sShiftReg:11," *) 
  FDRE \FSM_sequential_stmAudChCtrl_reg[1] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_17),
        .Q(stmAudChCtrl__0[1]),
        .R(iMRst0));
  design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_aes_dec I2S_TX_V1_0_AES_DECODE_INST
       (.E(AXIS_FIFO_INST_n_23),
        .Q(axis_nAesChannelStatus),
        .dest_out(axis_nEnable),
        .dest_pulse(axis_nClearAesChannelStatus),
        .id_check(id_check),
        .id_check_reg_0(AXIS_FIFO_INST_n_63),
        .id_miss_reg_0(AXIS_FIFO_INST_n_19),
        .pre_check_mode_reg_0(I2S_TX_V1_0_AES_DECODE_INST_n_2),
        .pre_check_mode_reg_1(AXIS_FIFO_INST_n_21),
        .rAesBlockSyncError_other_reg_0(AXIS_FIFO_INST_n_18),
        .rAesBlockSyncError_reg_0(axis_nAesBlockSyncError),
        .rAesChannelStatusChange_reg_0(axis_nAesChannelStatusChanged),
        .\rChannelStatusIn_reg[191]_0 (axis_nAxis_TValid_ToAesDec),
        .s_axis_aud_aclk(s_axis_aud_aclk),
        .s_axis_aud_aresetn(s_axis_aud_aresetn),
        .s_axis_aud_tdata({s_axis_aud_tdata[30],s_axis_aud_tdata[3:0]}),
        .s_axis_aud_tid(s_axis_aud_tid),
        .src_pulse(axis_nAesBlockComplete));
  design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_axi I2S_TX_V1_0_AXI_INST
       (.D(aclk_nAesChannelStatus),
        .E(aclk_nAesChannelStatusChanged),
        .Q(aclk_nSclkDiv),
        .SR(I2S_TX_V1_0_AXI_INST_n_1),
        .dest_pulse(aclk_nAesBlockComplete),
        .irq(irq),
        .oAxi_WReady_reg_0(oAxi_WReady_reg),
        .\rChannelMux_01_reg[2]_0 (\aclk_nChMuxSelect[0]_1 ),
        .\rIrqStatus_reg[1]_0 (aclk_nAesBlockSyncError),
        .\rIrqStatus_reg[3]_0 (aclk_nAudioUnderflow),
        .rJustify_reg_0(aclk_nJustify),
        .rLeft_Right_reg_0(aclk_nLeft_Right),
        .rValidity_reg_0(aclk_nValidity),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .src_in(aclk_nEnable),
        .src_pulse(aclk_nClearAesChannelStatus));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hB)) 
    axis_rAxis_InhibFIFOWrite_i_1
       (.I0(axis_nMClkInReset),
        .I1(s_axis_aud_aresetn),
        .O(axis_rAxis_Ready1));
  FDRE axis_rAxis_InhibFIFOWrite_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(axis_rAxis_Ready1),
        .Q(axis_rAxis_InhibFIFOWrite),
        .R(1'b0));
  FDRE axis_rAxis_Ready_reg
       (.C(s_axis_aud_aclk),
        .CE(1'b1),
        .D(s_axis_aud_aresetn),
        .Q(axis_rAxis_Ready),
        .R(1'b0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_i2s_transmitter_0_0_xpm_cdc_array_single \genblk1[0].CDC_CHMUX_INST 
       (.dest_clk(aud_mclk),
        .dest_out(\mclk_nChMuxSelect[0]_0 ),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(\aclk_nChMuxSelect[0]_1 ));
  FDRE \genblk2[0].mclk_rAudData_reg[0][0] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_58),
        .Q(iAudData[0]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][10] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_48),
        .Q(iAudData[10]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][11] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_47),
        .Q(iAudData[11]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][12] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_46),
        .Q(iAudData[12]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][13] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_45),
        .Q(iAudData[13]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][14] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_44),
        .Q(iAudData[14]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][15] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_43),
        .Q(iAudData[15]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][1] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_57),
        .Q(iAudData[1]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][2] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_56),
        .Q(iAudData[2]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][3] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_55),
        .Q(iAudData[3]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][4] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_54),
        .Q(iAudData[4]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][5] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_53),
        .Q(iAudData[5]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][6] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_52),
        .Q(iAudData[6]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][7] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_51),
        .Q(iAudData[7]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][8] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_50),
        .Q(iAudData[8]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudData_reg[0][9] 
       (.C(aud_mclk),
        .CE(mclk_rAudData),
        .D(AXIS_FIFO_INST_n_49),
        .Q(iAudData[9]),
        .R(1'b0));
  FDRE \genblk2[0].mclk_rAudValid_reg[0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_61),
        .Q(\genblk2[0].mclk_rAudValid_reg_n_0_[0] ),
        .R(iMRst0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][0] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_42),
        .Q(iAudData[16]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][10] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_32),
        .Q(iAudData[26]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][11] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_31),
        .Q(iAudData[27]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][12] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_30),
        .Q(iAudData[28]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][13] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_29),
        .Q(iAudData[29]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][14] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_28),
        .Q(iAudData[30]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][15] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_27),
        .Q(iAudData[31]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][1] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_41),
        .Q(iAudData[17]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][2] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_40),
        .Q(iAudData[18]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][3] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_39),
        .Q(iAudData[19]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][4] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_38),
        .Q(iAudData[20]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][5] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_37),
        .Q(iAudData[21]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][6] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_36),
        .Q(iAudData[22]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][7] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_35),
        .Q(iAudData[23]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][8] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_34),
        .Q(iAudData[24]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudData_reg[1][9] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_25),
        .D(AXIS_FIFO_INST_n_33),
        .Q(iAudData[25]),
        .R(1'b0));
  FDRE \genblk2[1].mclk_rAudValid_reg[1] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_62),
        .Q(p_1_in),
        .R(iMRst0));
  design_1_i2s_transmitter_0_0_i2s_transmitter_v1_0_2_ser \genblk4[0].I2S_TX_V1_0_SER_INST 
       (.\FSM_sequential_stmAudChCtrl_reg[0] (\genblk4[0].I2S_TX_V1_0_SER_INST_n_4 ),
        .\FSM_sequential_stmAudChCtrl_reg[1] (\genblk4[0].I2S_TX_V1_0_SER_INST_n_3 ),
        .aud_mclk(aud_mclk),
        .aud_mrst(aud_mrst),
        .dest_out(mclk_nLeft_Right),
        .iAudData(iAudData),
        .iMRst0(iMRst0),
        .lrclk_in(lrclk_in),
        .mclk_nAudCapt_0(mclk_nAudCapt_0),
        .mclk_rAudioUnderflowInhib_reg(\genblk4[0].I2S_TX_V1_0_SER_INST_n_1 ),
        .mclk_rAudioUnderflowInhib_reg_0(mclk_rAudioUnderflowInhib_reg_n_0),
        .mclk_rAudioUnderflow_reg(mclk_rReadFIFOInitDone_reg_n_0),
        .mclk_rReadCh0(mclk_rReadCh0),
        .mclk_rReadCh0_reg(mclk_rReadFromFIFO_reg_n_0),
        .mclk_rReadCh0_reg_0(mclk_rReadCh0_reg_n_0),
        .p_1_in(p_1_in),
        .rLRClkIn_reg_0(mclk_nEnable),
        .\rSDataOut_reg[0]_0 (mclk_nJustify),
        .\rSDataOut_reg[31]_0 (\genblk2[0].mclk_rAudValid_reg_n_0_[0] ),
        .sclk_in(sclk_in),
        .sdata_0_out(sdata_0_out),
        .stmAudChCtrl__0(stmAudChCtrl__0));
  FDSE mclk_rAudioUnderflowInhib_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\genblk4[0].I2S_TX_V1_0_SER_INST_n_4 ),
        .Q(mclk_rAudioUnderflowInhib_reg_n_0),
        .S(iMRst0));
  FDRE mclk_rAudioUnderflow_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\genblk4[0].I2S_TX_V1_0_SER_INST_n_1 ),
        .Q(mclk_rAudioUnderflow),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h40)) 
    mclk_rChMuxSelect
       (.I0(\mclk_nChMuxSelect[0]_0 [1]),
        .I1(\mclk_nChMuxSelect[0]_0 [0]),
        .I2(\mclk_nChMuxSelect[0]_0 [2]),
        .O(mclk_rChMuxSelect_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \mclk_rChMuxSelect[1][1]_i_1 
       (.I0(\mclk_nChMuxSelect[0]_0 [2]),
        .I1(\mclk_nChMuxSelect[0]_0 [1]),
        .I2(\mclk_nChMuxSelect[0]_0 [0]),
        .O(\mclk_rChMuxSelect[1][1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \mclk_rChMuxSelect[1][2]_i_1 
       (.I0(\mclk_nChMuxSelect[0]_0 [0]),
        .I1(\mclk_nChMuxSelect[0]_0 [2]),
        .I2(\mclk_nChMuxSelect[0]_0 [1]),
        .O(\mclk_rChMuxSelect[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \mclk_rChMuxSelect[1][3]_i_1 
       (.I0(\mclk_nChMuxSelect[0]_0 [0]),
        .I1(\mclk_nChMuxSelect[0]_0 [1]),
        .I2(\mclk_nChMuxSelect[0]_0 [2]),
        .O(\mclk_rChMuxSelect[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h5E)) 
    \mclk_rChMuxSelect_inferred__0/i_ 
       (.I0(\mclk_nChMuxSelect[0]_0 [1]),
        .I1(\mclk_nChMuxSelect[0]_0 [0]),
        .I2(\mclk_nChMuxSelect[0]_0 [2]),
        .O(\mclk_rChMuxSelect_inferred__0/i__n_0 ));
  FDRE \mclk_rChMuxSelect_reg[0][0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(mclk_rChMuxSelect_n_0),
        .Q(\mclk_rChMuxSelect_reg[0] ),
        .R(1'b0));
  FDRE \mclk_rChMuxSelect_reg[1][0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rChMuxSelect_inferred__0/i__n_0 ),
        .Q(\mclk_rChMuxSelect_reg[1] [0]),
        .R(1'b0));
  FDRE \mclk_rChMuxSelect_reg[1][1] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rChMuxSelect[1][1]_i_1_n_0 ),
        .Q(\mclk_rChMuxSelect_reg[1] [1]),
        .R(1'b0));
  FDRE \mclk_rChMuxSelect_reg[1][2] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rChMuxSelect[1][2]_i_1_n_0 ),
        .Q(\mclk_rChMuxSelect_reg[1] [2]),
        .R(1'b0));
  FDRE \mclk_rChMuxSelect_reg[1][3] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rChMuxSelect[1][3]_i_1_n_0 ),
        .Q(\mclk_rChMuxSelect_reg[1] [3]),
        .R(1'b0));
  FDRE mclk_rReadCh0_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\genblk4[0].I2S_TX_V1_0_SER_INST_n_3 ),
        .Q(mclk_rReadCh0_reg_n_0),
        .R(iMRst0));
  FDRE mclk_rReadFIFOInitDone_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_60),
        .Q(mclk_rReadFIFOInitDone_reg_n_0),
        .R(iMRst0));
  FDRE mclk_rReadFromFIFO_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_59),
        .Q(mclk_rReadFromFIFO_reg_n_0),
        .R(iMRst0));
  LUT1 #(
    .INIT(2'h1)) 
    \mclk_rWaveGenCounter[0]_i_3 
       (.I0(mclk_rWaveGenCounter_reg[0]),
        .O(\mclk_rWaveGenCounter[0]_i_3_n_0 ));
  FDRE \mclk_rWaveGenCounter_reg[0] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[0]_i_2_n_7 ),
        .Q(mclk_rWaveGenCounter_reg[0]),
        .R(iMRst0));
  CARRY4 \mclk_rWaveGenCounter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\mclk_rWaveGenCounter_reg[0]_i_2_n_0 ,\mclk_rWaveGenCounter_reg[0]_i_2_n_1 ,\mclk_rWaveGenCounter_reg[0]_i_2_n_2 ,\mclk_rWaveGenCounter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\mclk_rWaveGenCounter_reg[0]_i_2_n_4 ,\mclk_rWaveGenCounter_reg[0]_i_2_n_5 ,\mclk_rWaveGenCounter_reg[0]_i_2_n_6 ,\mclk_rWaveGenCounter_reg[0]_i_2_n_7 }),
        .S({mclk_rWaveGenCounter_reg[3:1],\mclk_rWaveGenCounter[0]_i_3_n_0 }));
  FDRE \mclk_rWaveGenCounter_reg[10] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[8]_i_1_n_5 ),
        .Q(mclk_rWaveGenCounter_reg[10]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[11] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[8]_i_1_n_4 ),
        .Q(mclk_rWaveGenCounter_reg[11]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[12] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[12]_i_1_n_7 ),
        .Q(mclk_rWaveGenCounter_reg[12]),
        .R(iMRst0));
  CARRY4 \mclk_rWaveGenCounter_reg[12]_i_1 
       (.CI(\mclk_rWaveGenCounter_reg[8]_i_1_n_0 ),
        .CO({\NLW_mclk_rWaveGenCounter_reg[12]_i_1_CO_UNCONNECTED [3],\mclk_rWaveGenCounter_reg[12]_i_1_n_1 ,\mclk_rWaveGenCounter_reg[12]_i_1_n_2 ,\mclk_rWaveGenCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mclk_rWaveGenCounter_reg[12]_i_1_n_4 ,\mclk_rWaveGenCounter_reg[12]_i_1_n_5 ,\mclk_rWaveGenCounter_reg[12]_i_1_n_6 ,\mclk_rWaveGenCounter_reg[12]_i_1_n_7 }),
        .S(mclk_rWaveGenCounter_reg[15:12]));
  FDRE \mclk_rWaveGenCounter_reg[13] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[12]_i_1_n_6 ),
        .Q(mclk_rWaveGenCounter_reg[13]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[14] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[12]_i_1_n_5 ),
        .Q(mclk_rWaveGenCounter_reg[14]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[15] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[12]_i_1_n_4 ),
        .Q(mclk_rWaveGenCounter_reg[15]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[1] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[0]_i_2_n_6 ),
        .Q(mclk_rWaveGenCounter_reg[1]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[2] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[0]_i_2_n_5 ),
        .Q(mclk_rWaveGenCounter_reg[2]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[3] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[0]_i_2_n_4 ),
        .Q(mclk_rWaveGenCounter_reg[3]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[4] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[4]_i_1_n_7 ),
        .Q(mclk_rWaveGenCounter_reg[4]),
        .R(iMRst0));
  CARRY4 \mclk_rWaveGenCounter_reg[4]_i_1 
       (.CI(\mclk_rWaveGenCounter_reg[0]_i_2_n_0 ),
        .CO({\mclk_rWaveGenCounter_reg[4]_i_1_n_0 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_1 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_2 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mclk_rWaveGenCounter_reg[4]_i_1_n_4 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_5 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_6 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_7 }),
        .S(mclk_rWaveGenCounter_reg[7:4]));
  FDRE \mclk_rWaveGenCounter_reg[5] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[4]_i_1_n_6 ),
        .Q(mclk_rWaveGenCounter_reg[5]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[6] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[4]_i_1_n_5 ),
        .Q(mclk_rWaveGenCounter_reg[6]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[7] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[4]_i_1_n_4 ),
        .Q(mclk_rWaveGenCounter_reg[7]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[8] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[8]_i_1_n_7 ),
        .Q(mclk_rWaveGenCounter_reg[8]),
        .R(iMRst0));
  CARRY4 \mclk_rWaveGenCounter_reg[8]_i_1 
       (.CI(\mclk_rWaveGenCounter_reg[4]_i_1_n_0 ),
        .CO({\mclk_rWaveGenCounter_reg[8]_i_1_n_0 ,\mclk_rWaveGenCounter_reg[8]_i_1_n_1 ,\mclk_rWaveGenCounter_reg[8]_i_1_n_2 ,\mclk_rWaveGenCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mclk_rWaveGenCounter_reg[8]_i_1_n_4 ,\mclk_rWaveGenCounter_reg[8]_i_1_n_5 ,\mclk_rWaveGenCounter_reg[8]_i_1_n_6 ,\mclk_rWaveGenCounter_reg[8]_i_1_n_7 }),
        .S(mclk_rWaveGenCounter_reg[11:8]));
  FDRE \mclk_rWaveGenCounter_reg[9] 
       (.C(aud_mclk),
        .CE(mclk_nAudCapt_0),
        .D(\mclk_rWaveGenCounter_reg[8]_i_1_n_6 ),
        .Q(mclk_rWaveGenCounter_reg[9]),
        .R(iMRst0));
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
