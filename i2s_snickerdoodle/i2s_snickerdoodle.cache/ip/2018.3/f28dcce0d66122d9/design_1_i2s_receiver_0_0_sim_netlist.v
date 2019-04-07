// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Apr  6 17:57:32 2019
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_i2s_receiver_0_0_sim_netlist.v
// Design      : design_1_i2s_receiver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_i2s_receiver_0_0,i2s_receiver_v1_0_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "i2s_receiver_v1_0_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    aud_mclk,
    aud_mrst,
    m_axis_aud_aclk,
    m_axis_aud_aresetn,
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
    sdata_0_in,
    m_axis_aud_tdata,
    m_axis_aud_tid,
    m_axis_aud_tvalid,
    m_axis_aud_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_ctrl_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_aclk, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET s_axi_ctrl_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_ctrl_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_ctrl_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aud_mclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_mclk, ASSOCIATED_RESET aud_mrst, FREQ_HZ 11904749, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input aud_mclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aud_mrst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_mrst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input aud_mrst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aud_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud_aclk, ASSOCIATED_BUSIF m_axis_aud, ASSOCIATED_RESET m_axis_aud_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m_axis_aud_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axis_aud_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_aud_aresetn;
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
  output lrclk_out;
  output sclk_out;
  input sdata_0_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TDATA" *) output [31:0]m_axis_aud_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TID" *) output [2:0]m_axis_aud_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TVALID" *) output m_axis_aud_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_aud_tready;

  wire aud_mclk;
  wire aud_mrst;
  wire irq;
  wire lrclk_out;
  wire m_axis_aud_aclk;
  wire m_axis_aud_aresetn;
  wire [31:0]m_axis_aud_tdata;
  wire [2:0]m_axis_aud_tid;
  wire m_axis_aud_tready;
  wire m_axis_aud_tvalid;
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
  wire sclk_out;
  wire sdata_0_in;

  (* C_DEPTH = "128" *) 
  (* C_DWIDTH = "16" *) 
  (* C_IS_MASTER = "1" *) 
  (* C_NUM_CHANNELS = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2 inst
       (.aud_mclk(aud_mclk),
        .aud_mrst(aud_mrst),
        .irq(irq),
        .lrclk_in(1'b0),
        .lrclk_out(lrclk_out),
        .m_axis_aud_aclk(m_axis_aud_aclk),
        .m_axis_aud_aresetn(m_axis_aud_aresetn),
        .m_axis_aud_tdata(m_axis_aud_tdata),
        .m_axis_aud_tid(m_axis_aud_tid),
        .m_axis_aud_tready(m_axis_aud_tready),
        .m_axis_aud_tvalid(m_axis_aud_tvalid),
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
        .sclk_in(1'b0),
        .sclk_out(sclk_out),
        .sdata_0_in(sdata_0_in),
        .sdata_1_in(1'b0),
        .sdata_2_in(1'b0),
        .sdata_3_in(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) (* WIDTH = "3" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "PULSE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(src_clk),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_pulse" *) 
(* REG_OUTPUT = "1" *) (* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "PULSE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(src_clk),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_pulse" *) 
(* REG_OUTPUT = "1" *) (* RST_USED = "1" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "PULSE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__2 xpm_cdc_single_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_sync_out),
        .src_clk(src_clk),
        .src_in(src_level_ff));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1__2
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
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3
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
(* FIFO_WRITE_DEPTH = "128" *) (* FULL_RESET_VALUE = "1" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "2" *) (* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "8" *) (* READ_DATA_WIDTH = "35" *) (* READ_MODE = "fwft" *) 
(* RELATED_CLOCKS = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "35" *) (* WR_DATA_COUNT_WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
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
(* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "123" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "123" *) 
(* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "8" *) (* RD_DC_WIDTH_EXT = "8" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "7" *) (* READ_DATA_WIDTH = "35" *) 
(* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "35" *) 
(* WR_DATA_COUNT_WIDTH = "8" *) (* WR_DC_WIDTH_EXT = "8" *) (* WR_DEPTH_LOG = "7" *) 
(* WR_PNTR_WIDTH = "7" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "6" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1 \gen_cdc_pntr.wpr_gray_reg_dc 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 rdp_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .p_1_in(p_1_in),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (full),
        .\gwdc.wr_data_count_i_reg[7] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3 wrpp1_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6}),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
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

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
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
(* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "128" *) (* P_MEMORY_OPT = "yes" *) 
(* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "35" *) (* P_MIN_WIDTH_DATA_A = "35" *) 
(* P_MIN_WIDTH_DATA_B = "35" *) (* P_MIN_WIDTH_DATA_ECC = "35" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) 
(* P_MIN_WIDTH_DATA_SHFT = "35" *) (* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
(* P_WIDTH_ADDR_READ_A = "7" *) (* P_WIDTH_ADDR_READ_B = "7" *) (* P_WIDTH_ADDR_WRITE_A = "7" *) 
(* P_WIDTH_ADDR_WRITE_B = "7" *) (* P_WIDTH_COL_WRITE_A = "35" *) (* P_WIDTH_COL_WRITE_B = "35" *) 
(* READ_DATA_WIDTH_A = "35" *) (* READ_DATA_WIDTH_B = "35" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "35" *) (* WRITE_DATA_WIDTH_B = "35" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
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

(* C_DEPTH = "128" *) (* C_DWIDTH = "16" *) (* C_IS_MASTER = "1" *) 
(* C_NUM_CHANNELS = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2
   (s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    aud_mclk,
    aud_mrst,
    m_axis_aud_aclk,
    m_axis_aud_aresetn,
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
    sdata_0_in,
    sdata_1_in,
    sdata_2_in,
    sdata_3_in,
    m_axis_aud_tdata,
    m_axis_aud_tid,
    m_axis_aud_tvalid,
    m_axis_aud_tready);
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input aud_mclk;
  input aud_mrst;
  input m_axis_aud_aclk;
  input m_axis_aud_aresetn;
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
  input sdata_0_in;
  input sdata_1_in;
  input sdata_2_in;
  input sdata_3_in;
  output [31:0]m_axis_aud_tdata;
  output [2:0]m_axis_aud_tid;
  output m_axis_aud_tvalid;
  input m_axis_aud_tready;

  wire \<const0> ;
  wire aud_mclk;
  wire aud_mrst;
  wire irq;
  wire lrclk_out;
  wire m_axis_aud_aclk;
  wire m_axis_aud_aresetn;
  wire [31:0]\^m_axis_aud_tdata ;
  wire [2:0]m_axis_aud_tid;
  wire m_axis_aud_tready;
  wire m_axis_aud_tvalid;
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
  wire sclk_out;
  wire sdata_0_in;

  assign m_axis_aud_tdata[31:30] = \^m_axis_aud_tdata [31:30];
  assign m_axis_aud_tdata[29] = \<const0> ;
  assign m_axis_aud_tdata[28:4] = \^m_axis_aud_tdata [28:4];
  assign m_axis_aud_tdata[3] = \<const0> ;
  assign m_axis_aud_tdata[2] = \<const0> ;
  assign m_axis_aud_tdata[1:0] = \^m_axis_aud_tdata [1:0];
  assign s_axi_ctrl_bresp[1] = \^s_axi_ctrl_bresp [1];
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \^s_axi_ctrl_rresp [1];
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_sys I2S_RX_V1_0_SYS_INST
       (.aud_mclk(aud_mclk),
        .aud_mrst(aud_mrst),
        .irq(irq),
        .m_axis_aud_aclk(m_axis_aud_aclk),
        .m_axis_aud_aresetn(m_axis_aud_aresetn),
        .m_axis_aud_tdata({\^m_axis_aud_tdata [31:30],\^m_axis_aud_tdata [28:4],\^m_axis_aud_tdata [1:0]}),
        .m_axis_aud_tid(m_axis_aud_tid),
        .m_axis_aud_tready(m_axis_aud_tready),
        .oAxi_WReady_reg(s_axi_ctrl_wready),
        .rAudValid_Out_reg(m_axis_aud_tvalid),
        .rLRClk_reg(lrclk_out),
        .rSClk_reg(sclk_out),
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
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .sdata_0_in(sdata_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_aes_enc
   (rdy_init_del,
    iRst0,
    src_pulse,
    rdy_ready1,
    rAudValid_Out_reg_0,
    follower_empty,
    rd_en,
    m_axis_aud_tid,
    m_axis_aud_tdata,
    rdy_init_del_reg_0,
    m_axis_aud_aclk,
    rdy_ready1_reg_0,
    follower_empty_reg_0,
    data_valid,
    dest_out,
    m_axis_aud_aresetn,
    D,
    m_axis_aud_tready,
    dout,
    E,
    \rChannelStatusIn_reg[191]_0 );
  output rdy_init_del;
  output iRst0;
  output src_pulse;
  output rdy_ready1;
  output rAudValid_Out_reg_0;
  output follower_empty;
  output rd_en;
  output [2:0]m_axis_aud_tid;
  output [28:0]m_axis_aud_tdata;
  input rdy_init_del_reg_0;
  input m_axis_aud_aclk;
  input rdy_ready1_reg_0;
  input follower_empty_reg_0;
  input data_valid;
  input dest_out;
  input m_axis_aud_aresetn;
  input [0:0]D;
  input m_axis_aud_tready;
  input [26:0]dout;
  input [0:0]E;
  input [191:0]\rChannelStatusIn_reg[191]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_stmAesEncode[1]_i_1_n_0 ;
  wire \FSM_onehot_stmAesEncode[2]_i_1_n_0 ;
  wire \FSM_onehot_stmAesEncode[2]_i_2_n_0 ;
  wire data_valid;
  wire dest_out;
  wire [26:0]dout;
  wire empty_i_1_n_0;
  wire empty_reg_n_0;
  wire follower_empty;
  wire follower_empty0;
  wire follower_empty_reg_0;
  wire iRst0;
  wire m_axis_aud_aclk;
  wire m_axis_aud_aresetn;
  wire [28:0]m_axis_aud_tdata;
  wire [2:0]m_axis_aud_tid;
  wire m_axis_aud_tready;
  wire rAesLastFrame;
  wire rAesLastFrame_i_1_n_0;
  wire [27:4]rAudData_In;
  wire rAudData_In_0;
  wire [31:0]rAudData_Out;
  wire rAudData_Out00;
  wire \rAudData_Out[1]_i_2_n_0 ;
  wire \rAudData_Out[31]_i_22_n_0 ;
  wire \rAudData_Out[31]_i_23_n_0 ;
  wire \rAudData_Out[31]_i_3_n_0 ;
  wire \rAudData_Out[31]_i_48_n_0 ;
  wire \rAudData_Out[31]_i_49_n_0 ;
  wire \rAudData_Out[31]_i_4_n_0 ;
  wire \rAudData_Out[31]_i_50_n_0 ;
  wire \rAudData_Out[31]_i_51_n_0 ;
  wire \rAudData_Out[31]_i_52_n_0 ;
  wire \rAudData_Out[31]_i_53_n_0 ;
  wire \rAudData_Out[31]_i_54_n_0 ;
  wire \rAudData_Out[31]_i_55_n_0 ;
  wire \rAudData_Out[31]_i_56_n_0 ;
  wire \rAudData_Out[31]_i_57_n_0 ;
  wire \rAudData_Out[31]_i_58_n_0 ;
  wire \rAudData_Out[31]_i_59_n_0 ;
  wire \rAudData_Out[31]_i_5_n_0 ;
  wire \rAudData_Out[31]_i_60_n_0 ;
  wire \rAudData_Out[31]_i_61_n_0 ;
  wire \rAudData_Out[31]_i_62_n_0 ;
  wire \rAudData_Out[31]_i_63_n_0 ;
  wire \rAudData_Out[31]_i_64_n_0 ;
  wire \rAudData_Out[31]_i_65_n_0 ;
  wire \rAudData_Out[31]_i_66_n_0 ;
  wire \rAudData_Out[31]_i_67_n_0 ;
  wire \rAudData_Out[31]_i_68_n_0 ;
  wire \rAudData_Out[31]_i_69_n_0 ;
  wire \rAudData_Out[31]_i_6_n_0 ;
  wire \rAudData_Out[31]_i_70_n_0 ;
  wire \rAudData_Out[31]_i_71_n_0 ;
  wire \rAudData_Out[31]_i_72_n_0 ;
  wire \rAudData_Out[31]_i_73_n_0 ;
  wire \rAudData_Out[31]_i_74_n_0 ;
  wire \rAudData_Out[31]_i_75_n_0 ;
  wire \rAudData_Out[31]_i_76_n_0 ;
  wire \rAudData_Out[31]_i_77_n_0 ;
  wire \rAudData_Out[31]_i_78_n_0 ;
  wire \rAudData_Out[31]_i_79_n_0 ;
  wire \rAudData_Out[31]_i_7_n_0 ;
  wire \rAudData_Out[31]_i_80_n_0 ;
  wire \rAudData_Out[31]_i_81_n_0 ;
  wire \rAudData_Out[31]_i_82_n_0 ;
  wire \rAudData_Out[31]_i_83_n_0 ;
  wire \rAudData_Out[31]_i_84_n_0 ;
  wire \rAudData_Out[31]_i_85_n_0 ;
  wire \rAudData_Out[31]_i_86_n_0 ;
  wire \rAudData_Out[31]_i_87_n_0 ;
  wire \rAudData_Out[31]_i_88_n_0 ;
  wire \rAudData_Out[31]_i_89_n_0 ;
  wire \rAudData_Out[31]_i_8_n_0 ;
  wire \rAudData_Out[31]_i_90_n_0 ;
  wire \rAudData_Out[31]_i_91_n_0 ;
  wire \rAudData_Out[31]_i_92_n_0 ;
  wire \rAudData_Out[31]_i_93_n_0 ;
  wire \rAudData_Out[31]_i_94_n_0 ;
  wire \rAudData_Out[31]_i_95_n_0 ;
  wire \rAudData_Out[31]_i_9_n_0 ;
  wire \rAudData_Out_reg[31]_i_10_n_0 ;
  wire \rAudData_Out_reg[31]_i_11_n_0 ;
  wire \rAudData_Out_reg[31]_i_12_n_0 ;
  wire \rAudData_Out_reg[31]_i_13_n_0 ;
  wire \rAudData_Out_reg[31]_i_14_n_0 ;
  wire \rAudData_Out_reg[31]_i_15_n_0 ;
  wire \rAudData_Out_reg[31]_i_16_n_0 ;
  wire \rAudData_Out_reg[31]_i_17_n_0 ;
  wire \rAudData_Out_reg[31]_i_18_n_0 ;
  wire \rAudData_Out_reg[31]_i_19_n_0 ;
  wire \rAudData_Out_reg[31]_i_20_n_0 ;
  wire \rAudData_Out_reg[31]_i_21_n_0 ;
  wire \rAudData_Out_reg[31]_i_24_n_0 ;
  wire \rAudData_Out_reg[31]_i_25_n_0 ;
  wire \rAudData_Out_reg[31]_i_26_n_0 ;
  wire \rAudData_Out_reg[31]_i_27_n_0 ;
  wire \rAudData_Out_reg[31]_i_28_n_0 ;
  wire \rAudData_Out_reg[31]_i_29_n_0 ;
  wire \rAudData_Out_reg[31]_i_30_n_0 ;
  wire \rAudData_Out_reg[31]_i_31_n_0 ;
  wire \rAudData_Out_reg[31]_i_32_n_0 ;
  wire \rAudData_Out_reg[31]_i_33_n_0 ;
  wire \rAudData_Out_reg[31]_i_34_n_0 ;
  wire \rAudData_Out_reg[31]_i_35_n_0 ;
  wire \rAudData_Out_reg[31]_i_36_n_0 ;
  wire \rAudData_Out_reg[31]_i_37_n_0 ;
  wire \rAudData_Out_reg[31]_i_38_n_0 ;
  wire \rAudData_Out_reg[31]_i_39_n_0 ;
  wire \rAudData_Out_reg[31]_i_40_n_0 ;
  wire \rAudData_Out_reg[31]_i_41_n_0 ;
  wire \rAudData_Out_reg[31]_i_42_n_0 ;
  wire \rAudData_Out_reg[31]_i_43_n_0 ;
  wire \rAudData_Out_reg[31]_i_44_n_0 ;
  wire \rAudData_Out_reg[31]_i_45_n_0 ;
  wire \rAudData_Out_reg[31]_i_46_n_0 ;
  wire \rAudData_Out_reg[31]_i_47_n_0 ;
  wire rAudReady;
  wire rAudReady_i_1_n_0;
  wire rAudReady_reg_n_0;
  wire \rAudTID_In_reg_n_0_[1] ;
  wire \rAudTID_In_reg_n_0_[2] ;
  wire rAudValid_In_i_1_n_0;
  wire rAudValid_In_reg_n_0;
  wire rAudValid_Out04_out;
  wire rAudValid_Out_i_2_n_0;
  wire rAudValid_Out_reg_0;
  wire [7:0]rAudioFrameCount;
  wire \rAudioFrameCount[0]_i_1_n_0 ;
  wire \rAudioFrameCount[1]_i_1_n_0 ;
  wire \rAudioFrameCount[2]_i_1_n_0 ;
  wire \rAudioFrameCount[3]_i_1_n_0 ;
  wire \rAudioFrameCount[4]_i_1_n_0 ;
  wire \rAudioFrameCount[5]_i_1_n_0 ;
  wire \rAudioFrameCount[5]_i_2_n_0 ;
  wire \rAudioFrameCount[6]_i_1_n_0 ;
  wire \rAudioFrameCount[7]_i_2_n_0 ;
  wire \rAudioFrameCount[7]_i_3_n_0 ;
  wire rAudioFrameCount_1;
  wire [191:0]rChannelStatusCapt;
  wire \rChannelStatusCapt[191]_i_2_n_0 ;
  wire rChannelStatusCapt_2;
  wire [191:0]rChannelStatusIn;
  wire [191:0]\rChannelStatusIn_reg[191]_0 ;
  wire rd_en;
  wire rdy_init_del;
  wire rdy_init_del_reg_0;
  wire rdy_ready1;
  wire rdy_ready1_reg_0;
  wire src_pulse;
  wire [2:1]stmAesEncode__0;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_stmAesEncode[1]_i_1 
       (.I0(rAudReady),
        .I1(\FSM_onehot_stmAesEncode[2]_i_2_n_0 ),
        .I2(stmAesEncode__0[1]),
        .O(\FSM_onehot_stmAesEncode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF5B0)) 
    \FSM_onehot_stmAesEncode[2]_i_1 
       (.I0(rAudReady),
        .I1(\FSM_onehot_stmAesEncode[2]_i_2_n_0 ),
        .I2(stmAesEncode__0[1]),
        .I3(stmAesEncode__0[2]),
        .O(\FSM_onehot_stmAesEncode[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF5F7FFFF)) 
    \FSM_onehot_stmAesEncode[2]_i_2 
       (.I0(follower_empty),
        .I1(rdy_ready1),
        .I2(rdy_init_del_reg_0),
        .I3(rdy_init_del),
        .I4(rAudReady_reg_n_0),
        .O(\FSM_onehot_stmAesEncode[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "sIdle:001,sWaitForCh0Sync:010,sRun:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_stmAesEncode_reg[0] 
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(rAudReady),
        .S(iRst0));
  (* FSM_ENCODED_STATES = "sIdle:001,sWaitForCh0Sync:010,sRun:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmAesEncode_reg[1] 
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_stmAesEncode[1]_i_1_n_0 ),
        .Q(stmAesEncode__0[1]),
        .R(iRst0));
  (* FSM_ENCODED_STATES = "sIdle:001,sWaitForCh0Sync:010,sRun:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmAesEncode_reg[2] 
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_stmAesEncode[2]_i_1_n_0 ),
        .Q(stmAesEncode__0[2]),
        .R(iRst0));
  LUT4 #(
    .INIT(16'h5540)) 
    empty_i_1
       (.I0(rAudValid_Out04_out),
        .I1(m_axis_aud_tready),
        .I2(rAudValid_Out_reg_0),
        .I3(empty_reg_n_0),
        .O(empty_i_1_n_0));
  FDSE empty_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(empty_i_1_n_0),
        .Q(empty_reg_n_0),
        .S(iRst0));
  FDRE follower_empty_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(follower_empty_reg_0),
        .Q(follower_empty),
        .R(1'b0));
  FDRE rAesBlockComplete_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(rAesLastFrame),
        .Q(src_pulse),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0088008000000000)) 
    rAesLastFrame_i_1
       (.I0(\rChannelStatusCapt[191]_i_2_n_0 ),
        .I1(rAudReady_reg_n_0),
        .I2(rdy_init_del),
        .I3(rdy_init_del_reg_0),
        .I4(rdy_ready1),
        .I5(follower_empty),
        .O(rAesLastFrame_i_1_n_0));
  FDRE rAesLastFrame_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(rAesLastFrame_i_1_n_0),
        .Q(rAesLastFrame),
        .R(1'b0));
  FDRE \rAudData_In_reg[10] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[9]),
        .Q(rAudData_In[10]),
        .R(1'b0));
  FDRE \rAudData_In_reg[11] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[10]),
        .Q(rAudData_In[11]),
        .R(1'b0));
  FDRE \rAudData_In_reg[12] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[11]),
        .Q(rAudData_In[12]),
        .R(1'b0));
  FDRE \rAudData_In_reg[13] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[12]),
        .Q(rAudData_In[13]),
        .R(1'b0));
  FDRE \rAudData_In_reg[14] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[13]),
        .Q(rAudData_In[14]),
        .R(1'b0));
  FDRE \rAudData_In_reg[15] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[14]),
        .Q(rAudData_In[15]),
        .R(1'b0));
  FDRE \rAudData_In_reg[16] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[15]),
        .Q(rAudData_In[16]),
        .R(1'b0));
  FDRE \rAudData_In_reg[17] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[16]),
        .Q(rAudData_In[17]),
        .R(1'b0));
  FDRE \rAudData_In_reg[18] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[17]),
        .Q(rAudData_In[18]),
        .R(1'b0));
  FDRE \rAudData_In_reg[19] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[18]),
        .Q(rAudData_In[19]),
        .R(1'b0));
  FDRE \rAudData_In_reg[20] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[19]),
        .Q(rAudData_In[20]),
        .R(1'b0));
  FDRE \rAudData_In_reg[21] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[20]),
        .Q(rAudData_In[21]),
        .R(1'b0));
  FDRE \rAudData_In_reg[22] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[21]),
        .Q(rAudData_In[22]),
        .R(1'b0));
  FDRE \rAudData_In_reg[23] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[22]),
        .Q(rAudData_In[23]),
        .R(1'b0));
  FDRE \rAudData_In_reg[24] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[23]),
        .Q(rAudData_In[24]),
        .R(1'b0));
  FDRE \rAudData_In_reg[25] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[24]),
        .Q(rAudData_In[25]),
        .R(1'b0));
  FDRE \rAudData_In_reg[26] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[25]),
        .Q(rAudData_In[26]),
        .R(1'b0));
  FDRE \rAudData_In_reg[27] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[26]),
        .Q(rAudData_In[27]),
        .R(1'b0));
  FDRE \rAudData_In_reg[4] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[3]),
        .Q(rAudData_In[4]),
        .R(1'b0));
  FDRE \rAudData_In_reg[5] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[4]),
        .Q(rAudData_In[5]),
        .R(1'b0));
  FDRE \rAudData_In_reg[6] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[5]),
        .Q(rAudData_In[6]),
        .R(1'b0));
  FDRE \rAudData_In_reg[7] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[6]),
        .Q(rAudData_In[7]),
        .R(1'b0));
  FDRE \rAudData_In_reg[8] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[7]),
        .Q(rAudData_In[8]),
        .R(1'b0));
  FDRE \rAudData_In_reg[9] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[8]),
        .Q(rAudData_In[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \rAudData_Out[0]_i_1 
       (.I0(rAudData_Out00),
        .I1(\rAudData_Out[1]_i_2_n_0 ),
        .I2(rAudioFrameCount[4]),
        .I3(rAudioFrameCount[3]),
        .I4(rAudioFrameCount[5]),
        .I5(rAudioFrameCount[2]),
        .O(rAudData_Out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rAudData_Out[1]_i_1 
       (.I0(rAudData_Out00),
        .I1(\rAudData_Out[1]_i_2_n_0 ),
        .I2(rAudioFrameCount[4]),
        .I3(rAudioFrameCount[3]),
        .I4(rAudioFrameCount[5]),
        .I5(rAudioFrameCount[2]),
        .O(rAudData_Out[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rAudData_Out[1]_i_2 
       (.I0(rAudioFrameCount[7]),
        .I1(rAudioFrameCount[6]),
        .I2(rAudioFrameCount[0]),
        .I3(rAudioFrameCount[1]),
        .O(\rAudData_Out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rAudData_Out[30]_i_1 
       (.I0(\rAudData_Out[31]_i_6_n_0 ),
        .I1(rAudioFrameCount[7]),
        .I2(\rAudData_Out[31]_i_5_n_0 ),
        .I3(rAudioFrameCount[6]),
        .I4(\rAudData_Out[31]_i_4_n_0 ),
        .O(rAudData_Out[30]));
  LUT5 #(
    .INIT(32'hF2000000)) 
    \rAudData_Out[31]_i_1 
       (.I0(rdy_init_del),
        .I1(rdy_init_del_reg_0),
        .I2(rdy_ready1),
        .I3(empty_reg_n_0),
        .I4(rAudValid_In_reg_n_0),
        .O(rAudValid_Out04_out));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \rAudData_Out[31]_i_2 
       (.I0(\rAudData_Out[31]_i_3_n_0 ),
        .I1(\rAudData_Out[31]_i_4_n_0 ),
        .I2(rAudioFrameCount[6]),
        .I3(\rAudData_Out[31]_i_5_n_0 ),
        .I4(rAudioFrameCount[7]),
        .I5(\rAudData_Out[31]_i_6_n_0 ),
        .O(rAudData_Out[31]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rAudData_Out[31]_i_22 
       (.I0(rAudData_In[26]),
        .I1(rAudData_In[25]),
        .I2(rAudData_In[24]),
        .I3(rAudData_In[20]),
        .O(\rAudData_Out[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rAudData_Out[31]_i_23 
       (.I0(rAudData_In[27]),
        .I1(rAudData_In[5]),
        .I2(rAudData_In[15]),
        .I3(rAudData_In[23]),
        .I4(rAudData_In[11]),
        .O(\rAudData_Out[31]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rAudData_Out[31]_i_3 
       (.I0(\rAudData_Out[31]_i_7_n_0 ),
        .I1(rAudData_In[7]),
        .I2(rAudData_In[6]),
        .I3(\rAudData_Out[31]_i_8_n_0 ),
        .I4(\rAudData_Out[31]_i_9_n_0 ),
        .O(\rAudData_Out[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_4 
       (.I0(\rAudData_Out_reg[31]_i_10_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_11_n_0 ),
        .I2(rAudioFrameCount[5]),
        .I3(\rAudData_Out_reg[31]_i_12_n_0 ),
        .I4(rAudioFrameCount[4]),
        .I5(\rAudData_Out_reg[31]_i_13_n_0 ),
        .O(\rAudData_Out[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_48 
       (.I0(rChannelStatusCapt[51]),
        .I1(rChannelStatusCapt[50]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[49]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[48]),
        .O(\rAudData_Out[31]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_49 
       (.I0(rChannelStatusCapt[55]),
        .I1(rChannelStatusCapt[54]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[53]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[52]),
        .O(\rAudData_Out[31]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_5 
       (.I0(\rAudData_Out_reg[31]_i_14_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_15_n_0 ),
        .I2(rAudioFrameCount[5]),
        .I3(\rAudData_Out_reg[31]_i_16_n_0 ),
        .I4(rAudioFrameCount[4]),
        .I5(\rAudData_Out_reg[31]_i_17_n_0 ),
        .O(\rAudData_Out[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_50 
       (.I0(rChannelStatusCapt[59]),
        .I1(rChannelStatusCapt[58]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[57]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[56]),
        .O(\rAudData_Out[31]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_51 
       (.I0(rChannelStatusCapt[63]),
        .I1(rChannelStatusCapt[62]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[61]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[60]),
        .O(\rAudData_Out[31]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_52 
       (.I0(rChannelStatusCapt[35]),
        .I1(rChannelStatusCapt[34]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[33]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[32]),
        .O(\rAudData_Out[31]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_53 
       (.I0(rChannelStatusCapt[39]),
        .I1(rChannelStatusCapt[38]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[37]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[36]),
        .O(\rAudData_Out[31]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_54 
       (.I0(rChannelStatusCapt[43]),
        .I1(rChannelStatusCapt[42]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[41]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[40]),
        .O(\rAudData_Out[31]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_55 
       (.I0(rChannelStatusCapt[47]),
        .I1(rChannelStatusCapt[46]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[45]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[44]),
        .O(\rAudData_Out[31]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_56 
       (.I0(rChannelStatusCapt[19]),
        .I1(rChannelStatusCapt[18]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[17]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[16]),
        .O(\rAudData_Out[31]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_57 
       (.I0(rChannelStatusCapt[23]),
        .I1(rChannelStatusCapt[22]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[21]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[20]),
        .O(\rAudData_Out[31]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_58 
       (.I0(rChannelStatusCapt[27]),
        .I1(rChannelStatusCapt[26]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[25]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[24]),
        .O(\rAudData_Out[31]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_59 
       (.I0(rChannelStatusCapt[31]),
        .I1(rChannelStatusCapt[30]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[29]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[28]),
        .O(\rAudData_Out[31]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_6 
       (.I0(\rAudData_Out_reg[31]_i_18_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_19_n_0 ),
        .I2(rAudioFrameCount[5]),
        .I3(\rAudData_Out_reg[31]_i_20_n_0 ),
        .I4(rAudioFrameCount[4]),
        .I5(\rAudData_Out_reg[31]_i_21_n_0 ),
        .O(\rAudData_Out[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_60 
       (.I0(rChannelStatusCapt[3]),
        .I1(rChannelStatusCapt[2]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[1]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[0]),
        .O(\rAudData_Out[31]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_61 
       (.I0(rChannelStatusCapt[7]),
        .I1(rChannelStatusCapt[6]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[5]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[4]),
        .O(\rAudData_Out[31]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_62 
       (.I0(rChannelStatusCapt[11]),
        .I1(rChannelStatusCapt[10]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[9]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[8]),
        .O(\rAudData_Out[31]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_63 
       (.I0(rChannelStatusCapt[15]),
        .I1(rChannelStatusCapt[14]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[13]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[12]),
        .O(\rAudData_Out[31]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_64 
       (.I0(rChannelStatusCapt[115]),
        .I1(rChannelStatusCapt[114]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[113]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[112]),
        .O(\rAudData_Out[31]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_65 
       (.I0(rChannelStatusCapt[119]),
        .I1(rChannelStatusCapt[118]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[117]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[116]),
        .O(\rAudData_Out[31]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_66 
       (.I0(rChannelStatusCapt[123]),
        .I1(rChannelStatusCapt[122]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[121]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[120]),
        .O(\rAudData_Out[31]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_67 
       (.I0(rChannelStatusCapt[127]),
        .I1(rChannelStatusCapt[126]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[125]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[124]),
        .O(\rAudData_Out[31]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_68 
       (.I0(rChannelStatusCapt[99]),
        .I1(rChannelStatusCapt[98]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[97]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[96]),
        .O(\rAudData_Out[31]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_69 
       (.I0(rChannelStatusCapt[103]),
        .I1(rChannelStatusCapt[102]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[101]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[100]),
        .O(\rAudData_Out[31]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rAudData_Out[31]_i_7 
       (.I0(rAudData_In[14]),
        .I1(\rAudData_Out[31]_i_22_n_0 ),
        .I2(rAudData_In[9]),
        .I3(rAudData_In[8]),
        .I4(rAudData_In[17]),
        .I5(rAudData_In[13]),
        .O(\rAudData_Out[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_70 
       (.I0(rChannelStatusCapt[107]),
        .I1(rChannelStatusCapt[106]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[105]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[104]),
        .O(\rAudData_Out[31]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_71 
       (.I0(rChannelStatusCapt[111]),
        .I1(rChannelStatusCapt[110]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[109]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[108]),
        .O(\rAudData_Out[31]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_72 
       (.I0(rChannelStatusCapt[83]),
        .I1(rChannelStatusCapt[82]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[81]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[80]),
        .O(\rAudData_Out[31]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_73 
       (.I0(rChannelStatusCapt[87]),
        .I1(rChannelStatusCapt[86]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[85]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[84]),
        .O(\rAudData_Out[31]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_74 
       (.I0(rChannelStatusCapt[91]),
        .I1(rChannelStatusCapt[90]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[89]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[88]),
        .O(\rAudData_Out[31]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_75 
       (.I0(rChannelStatusCapt[95]),
        .I1(rChannelStatusCapt[94]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[93]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[92]),
        .O(\rAudData_Out[31]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_76 
       (.I0(rChannelStatusCapt[67]),
        .I1(rChannelStatusCapt[66]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[65]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[64]),
        .O(\rAudData_Out[31]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_77 
       (.I0(rChannelStatusCapt[71]),
        .I1(rChannelStatusCapt[70]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[69]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[68]),
        .O(\rAudData_Out[31]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_78 
       (.I0(rChannelStatusCapt[75]),
        .I1(rChannelStatusCapt[74]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[73]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[72]),
        .O(\rAudData_Out[31]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_79 
       (.I0(rChannelStatusCapt[79]),
        .I1(rChannelStatusCapt[78]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[77]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[76]),
        .O(\rAudData_Out[31]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rAudData_Out[31]_i_8 
       (.I0(rAudData_In[12]),
        .I1(rAudData_In[16]),
        .I2(rAudData_In[10]),
        .I3(rAudData_In[22]),
        .I4(rAudData_In[18]),
        .O(\rAudData_Out[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_80 
       (.I0(rChannelStatusCapt[179]),
        .I1(rChannelStatusCapt[178]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[177]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[176]),
        .O(\rAudData_Out[31]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_81 
       (.I0(rChannelStatusCapt[183]),
        .I1(rChannelStatusCapt[182]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[181]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[180]),
        .O(\rAudData_Out[31]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_82 
       (.I0(rChannelStatusCapt[187]),
        .I1(rChannelStatusCapt[186]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[185]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[184]),
        .O(\rAudData_Out[31]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_83 
       (.I0(rChannelStatusCapt[191]),
        .I1(rChannelStatusCapt[190]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[189]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[188]),
        .O(\rAudData_Out[31]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_84 
       (.I0(rChannelStatusCapt[163]),
        .I1(rChannelStatusCapt[162]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[161]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[160]),
        .O(\rAudData_Out[31]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_85 
       (.I0(rChannelStatusCapt[167]),
        .I1(rChannelStatusCapt[166]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[165]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[164]),
        .O(\rAudData_Out[31]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_86 
       (.I0(rChannelStatusCapt[171]),
        .I1(rChannelStatusCapt[170]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[169]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[168]),
        .O(\rAudData_Out[31]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_87 
       (.I0(rChannelStatusCapt[175]),
        .I1(rChannelStatusCapt[174]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[173]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[172]),
        .O(\rAudData_Out[31]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_88 
       (.I0(rChannelStatusCapt[147]),
        .I1(rChannelStatusCapt[146]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[145]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[144]),
        .O(\rAudData_Out[31]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_89 
       (.I0(rChannelStatusCapt[151]),
        .I1(rChannelStatusCapt[150]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[149]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[148]),
        .O(\rAudData_Out[31]_i_89_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rAudData_Out[31]_i_9 
       (.I0(\rAudData_Out[31]_i_23_n_0 ),
        .I1(rAudData_In[21]),
        .I2(D),
        .I3(rAudData_In[4]),
        .I4(rAudData_In[19]),
        .O(\rAudData_Out[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_90 
       (.I0(rChannelStatusCapt[155]),
        .I1(rChannelStatusCapt[154]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[153]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[152]),
        .O(\rAudData_Out[31]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_91 
       (.I0(rChannelStatusCapt[159]),
        .I1(rChannelStatusCapt[158]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[157]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[156]),
        .O(\rAudData_Out[31]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_92 
       (.I0(rChannelStatusCapt[131]),
        .I1(rChannelStatusCapt[130]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[129]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[128]),
        .O(\rAudData_Out[31]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_93 
       (.I0(rChannelStatusCapt[135]),
        .I1(rChannelStatusCapt[134]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[133]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[132]),
        .O(\rAudData_Out[31]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_94 
       (.I0(rChannelStatusCapt[139]),
        .I1(rChannelStatusCapt[138]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[137]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[136]),
        .O(\rAudData_Out[31]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rAudData_Out[31]_i_95 
       (.I0(rChannelStatusCapt[143]),
        .I1(rChannelStatusCapt[142]),
        .I2(rAudioFrameCount[1]),
        .I3(rChannelStatusCapt[141]),
        .I4(rAudioFrameCount[0]),
        .I5(rChannelStatusCapt[140]),
        .O(\rAudData_Out[31]_i_95_n_0 ));
  FDRE \rAudData_Out_reg[0] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_Out[0]),
        .Q(m_axis_aud_tdata[0]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[10] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[10]),
        .Q(m_axis_aud_tdata[8]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[11] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[11]),
        .Q(m_axis_aud_tdata[9]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[12] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[12]),
        .Q(m_axis_aud_tdata[10]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[13] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[13]),
        .Q(m_axis_aud_tdata[11]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[14] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[14]),
        .Q(m_axis_aud_tdata[12]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[15] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[15]),
        .Q(m_axis_aud_tdata[13]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[16] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[16]),
        .Q(m_axis_aud_tdata[14]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[17] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[17]),
        .Q(m_axis_aud_tdata[15]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[18] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[18]),
        .Q(m_axis_aud_tdata[16]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[19] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[19]),
        .Q(m_axis_aud_tdata[17]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[1] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_Out[1]),
        .Q(m_axis_aud_tdata[1]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[20] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[20]),
        .Q(m_axis_aud_tdata[18]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[21] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[21]),
        .Q(m_axis_aud_tdata[19]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[22] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[22]),
        .Q(m_axis_aud_tdata[20]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[23] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[23]),
        .Q(m_axis_aud_tdata[21]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[24] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[24]),
        .Q(m_axis_aud_tdata[22]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[25] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[25]),
        .Q(m_axis_aud_tdata[23]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[26] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[26]),
        .Q(m_axis_aud_tdata[24]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[27] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[27]),
        .Q(m_axis_aud_tdata[25]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[28] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(D),
        .Q(m_axis_aud_tdata[26]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[30] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_Out[30]),
        .Q(m_axis_aud_tdata[27]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[31] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_Out[31]),
        .Q(m_axis_aud_tdata[28]),
        .R(1'b0));
  MUXF8 \rAudData_Out_reg[31]_i_10 
       (.I0(\rAudData_Out_reg[31]_i_24_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_25_n_0 ),
        .O(\rAudData_Out_reg[31]_i_10_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_11 
       (.I0(\rAudData_Out_reg[31]_i_26_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_27_n_0 ),
        .O(\rAudData_Out_reg[31]_i_11_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_12 
       (.I0(\rAudData_Out_reg[31]_i_28_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_29_n_0 ),
        .O(\rAudData_Out_reg[31]_i_12_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_13 
       (.I0(\rAudData_Out_reg[31]_i_30_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_31_n_0 ),
        .O(\rAudData_Out_reg[31]_i_13_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_14 
       (.I0(\rAudData_Out_reg[31]_i_32_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_33_n_0 ),
        .O(\rAudData_Out_reg[31]_i_14_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_15 
       (.I0(\rAudData_Out_reg[31]_i_34_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_35_n_0 ),
        .O(\rAudData_Out_reg[31]_i_15_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_16 
       (.I0(\rAudData_Out_reg[31]_i_36_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_37_n_0 ),
        .O(\rAudData_Out_reg[31]_i_16_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_17 
       (.I0(\rAudData_Out_reg[31]_i_38_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_39_n_0 ),
        .O(\rAudData_Out_reg[31]_i_17_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_18 
       (.I0(\rAudData_Out_reg[31]_i_40_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_41_n_0 ),
        .O(\rAudData_Out_reg[31]_i_18_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_19 
       (.I0(\rAudData_Out_reg[31]_i_42_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_43_n_0 ),
        .O(\rAudData_Out_reg[31]_i_19_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_20 
       (.I0(\rAudData_Out_reg[31]_i_44_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_45_n_0 ),
        .O(\rAudData_Out_reg[31]_i_20_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF8 \rAudData_Out_reg[31]_i_21 
       (.I0(\rAudData_Out_reg[31]_i_46_n_0 ),
        .I1(\rAudData_Out_reg[31]_i_47_n_0 ),
        .O(\rAudData_Out_reg[31]_i_21_n_0 ),
        .S(rAudioFrameCount[3]));
  MUXF7 \rAudData_Out_reg[31]_i_24 
       (.I0(\rAudData_Out[31]_i_48_n_0 ),
        .I1(\rAudData_Out[31]_i_49_n_0 ),
        .O(\rAudData_Out_reg[31]_i_24_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_25 
       (.I0(\rAudData_Out[31]_i_50_n_0 ),
        .I1(\rAudData_Out[31]_i_51_n_0 ),
        .O(\rAudData_Out_reg[31]_i_25_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_26 
       (.I0(\rAudData_Out[31]_i_52_n_0 ),
        .I1(\rAudData_Out[31]_i_53_n_0 ),
        .O(\rAudData_Out_reg[31]_i_26_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_27 
       (.I0(\rAudData_Out[31]_i_54_n_0 ),
        .I1(\rAudData_Out[31]_i_55_n_0 ),
        .O(\rAudData_Out_reg[31]_i_27_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_28 
       (.I0(\rAudData_Out[31]_i_56_n_0 ),
        .I1(\rAudData_Out[31]_i_57_n_0 ),
        .O(\rAudData_Out_reg[31]_i_28_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_29 
       (.I0(\rAudData_Out[31]_i_58_n_0 ),
        .I1(\rAudData_Out[31]_i_59_n_0 ),
        .O(\rAudData_Out_reg[31]_i_29_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_30 
       (.I0(\rAudData_Out[31]_i_60_n_0 ),
        .I1(\rAudData_Out[31]_i_61_n_0 ),
        .O(\rAudData_Out_reg[31]_i_30_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_31 
       (.I0(\rAudData_Out[31]_i_62_n_0 ),
        .I1(\rAudData_Out[31]_i_63_n_0 ),
        .O(\rAudData_Out_reg[31]_i_31_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_32 
       (.I0(\rAudData_Out[31]_i_64_n_0 ),
        .I1(\rAudData_Out[31]_i_65_n_0 ),
        .O(\rAudData_Out_reg[31]_i_32_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_33 
       (.I0(\rAudData_Out[31]_i_66_n_0 ),
        .I1(\rAudData_Out[31]_i_67_n_0 ),
        .O(\rAudData_Out_reg[31]_i_33_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_34 
       (.I0(\rAudData_Out[31]_i_68_n_0 ),
        .I1(\rAudData_Out[31]_i_69_n_0 ),
        .O(\rAudData_Out_reg[31]_i_34_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_35 
       (.I0(\rAudData_Out[31]_i_70_n_0 ),
        .I1(\rAudData_Out[31]_i_71_n_0 ),
        .O(\rAudData_Out_reg[31]_i_35_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_36 
       (.I0(\rAudData_Out[31]_i_72_n_0 ),
        .I1(\rAudData_Out[31]_i_73_n_0 ),
        .O(\rAudData_Out_reg[31]_i_36_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_37 
       (.I0(\rAudData_Out[31]_i_74_n_0 ),
        .I1(\rAudData_Out[31]_i_75_n_0 ),
        .O(\rAudData_Out_reg[31]_i_37_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_38 
       (.I0(\rAudData_Out[31]_i_76_n_0 ),
        .I1(\rAudData_Out[31]_i_77_n_0 ),
        .O(\rAudData_Out_reg[31]_i_38_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_39 
       (.I0(\rAudData_Out[31]_i_78_n_0 ),
        .I1(\rAudData_Out[31]_i_79_n_0 ),
        .O(\rAudData_Out_reg[31]_i_39_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_40 
       (.I0(\rAudData_Out[31]_i_80_n_0 ),
        .I1(\rAudData_Out[31]_i_81_n_0 ),
        .O(\rAudData_Out_reg[31]_i_40_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_41 
       (.I0(\rAudData_Out[31]_i_82_n_0 ),
        .I1(\rAudData_Out[31]_i_83_n_0 ),
        .O(\rAudData_Out_reg[31]_i_41_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_42 
       (.I0(\rAudData_Out[31]_i_84_n_0 ),
        .I1(\rAudData_Out[31]_i_85_n_0 ),
        .O(\rAudData_Out_reg[31]_i_42_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_43 
       (.I0(\rAudData_Out[31]_i_86_n_0 ),
        .I1(\rAudData_Out[31]_i_87_n_0 ),
        .O(\rAudData_Out_reg[31]_i_43_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_44 
       (.I0(\rAudData_Out[31]_i_88_n_0 ),
        .I1(\rAudData_Out[31]_i_89_n_0 ),
        .O(\rAudData_Out_reg[31]_i_44_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_45 
       (.I0(\rAudData_Out[31]_i_90_n_0 ),
        .I1(\rAudData_Out[31]_i_91_n_0 ),
        .O(\rAudData_Out_reg[31]_i_45_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_46 
       (.I0(\rAudData_Out[31]_i_92_n_0 ),
        .I1(\rAudData_Out[31]_i_93_n_0 ),
        .O(\rAudData_Out_reg[31]_i_46_n_0 ),
        .S(rAudioFrameCount[2]));
  MUXF7 \rAudData_Out_reg[31]_i_47 
       (.I0(\rAudData_Out[31]_i_94_n_0 ),
        .I1(\rAudData_Out[31]_i_95_n_0 ),
        .O(\rAudData_Out_reg[31]_i_47_n_0 ),
        .S(rAudioFrameCount[2]));
  FDRE \rAudData_Out_reg[4] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[4]),
        .Q(m_axis_aud_tdata[2]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[5] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[5]),
        .Q(m_axis_aud_tdata[3]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[6] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[6]),
        .Q(m_axis_aud_tdata[4]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[7] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[7]),
        .Q(m_axis_aud_tdata[5]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[8] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[8]),
        .Q(m_axis_aud_tdata[6]),
        .R(1'b0));
  FDRE \rAudData_Out_reg[9] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_In[9]),
        .Q(m_axis_aud_tdata[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    rAudReady_i_1
       (.I0(rAudReady),
        .I1(rAudReady_reg_n_0),
        .O(rAudReady_i_1_n_0));
  FDRE rAudReady_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(rAudReady_i_1_n_0),
        .Q(rAudReady_reg_n_0),
        .R(iRst0));
  LUT6 #(
    .INIT(64'h00000000AA080000)) 
    \rAudTID_In[2]_i_1 
       (.I0(follower_empty),
        .I1(rdy_init_del),
        .I2(rdy_init_del_reg_0),
        .I3(rdy_ready1),
        .I4(data_valid),
        .I5(iRst0),
        .O(rAudData_In_0));
  FDRE \rAudTID_In_reg[0] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[0]),
        .Q(rAudData_Out00),
        .R(1'b0));
  FDRE \rAudTID_In_reg[1] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[1]),
        .Q(\rAudTID_In_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rAudTID_In_reg[2] 
       (.C(m_axis_aud_aclk),
        .CE(rAudData_In_0),
        .D(dout[2]),
        .Q(\rAudTID_In_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rAudTID_Out_reg[0] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(rAudData_Out00),
        .Q(m_axis_aud_tid[0]),
        .R(1'b0));
  FDRE \rAudTID_Out_reg[1] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(\rAudTID_In_reg_n_0_[1] ),
        .Q(m_axis_aud_tid[1]),
        .R(1'b0));
  FDRE \rAudTID_Out_reg[2] 
       (.C(m_axis_aud_aclk),
        .CE(rAudValid_Out04_out),
        .D(\rAudTID_In_reg_n_0_[2] ),
        .Q(m_axis_aud_tid[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0E000E0E0E0E0E0E)) 
    rAudValid_In_i_1
       (.I0(rAudValid_In_reg_n_0),
        .I1(follower_empty0),
        .I2(iRst0),
        .I3(follower_empty),
        .I4(m_axis_aud_tready),
        .I5(rAudValid_Out_reg_0),
        .O(rAudValid_In_i_1_n_0));
  LUT5 #(
    .INIT(32'h8A880000)) 
    rAudValid_In_i_2
       (.I0(data_valid),
        .I1(rdy_ready1),
        .I2(rdy_init_del_reg_0),
        .I3(rdy_init_del),
        .I4(follower_empty),
        .O(follower_empty0));
  FDRE rAudValid_In_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(rAudValid_In_i_1_n_0),
        .Q(rAudValid_In_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    rAudValid_Out_i_1
       (.I0(dest_out),
        .I1(m_axis_aud_aresetn),
        .O(iRst0));
  LUT3 #(
    .INIT(8'hBA)) 
    rAudValid_Out_i_2
       (.I0(rAudValid_Out04_out),
        .I1(m_axis_aud_tready),
        .I2(rAudValid_Out_reg_0),
        .O(rAudValid_Out_i_2_n_0));
  FDRE rAudValid_Out_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(rAudValid_Out_i_2_n_0),
        .Q(rAudValid_Out_reg_0),
        .R(iRst0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00005700)) 
    \rAudioFrameCount[0]_i_1 
       (.I0(rAudioFrameCount[7]),
        .I1(\rAudioFrameCount[7]_i_3_n_0 ),
        .I2(rAudioFrameCount[6]),
        .I3(stmAesEncode__0[2]),
        .I4(rAudioFrameCount[0]),
        .O(\rAudioFrameCount[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000570057000000)) 
    \rAudioFrameCount[1]_i_1 
       (.I0(rAudioFrameCount[7]),
        .I1(\rAudioFrameCount[7]_i_3_n_0 ),
        .I2(rAudioFrameCount[6]),
        .I3(stmAesEncode__0[2]),
        .I4(rAudioFrameCount[1]),
        .I5(rAudioFrameCount[0]),
        .O(\rAudioFrameCount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rAudioFrameCount[2]_i_1 
       (.I0(rAudioFrameCount[2]),
        .I1(rAudioFrameCount[0]),
        .I2(rAudioFrameCount[1]),
        .O(\rAudioFrameCount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rAudioFrameCount[3]_i_1 
       (.I0(rAudioFrameCount[3]),
        .I1(rAudioFrameCount[2]),
        .I2(rAudioFrameCount[1]),
        .I3(rAudioFrameCount[0]),
        .O(\rAudioFrameCount[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rAudioFrameCount[4]_i_1 
       (.I0(rAudioFrameCount[4]),
        .I1(rAudioFrameCount[3]),
        .I2(rAudioFrameCount[0]),
        .I3(rAudioFrameCount[1]),
        .I4(rAudioFrameCount[2]),
        .O(\rAudioFrameCount[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8880AAAA)) 
    \rAudioFrameCount[5]_i_1 
       (.I0(rAudioFrameCount_1),
        .I1(rAudioFrameCount[7]),
        .I2(\rAudioFrameCount[7]_i_3_n_0 ),
        .I3(rAudioFrameCount[6]),
        .I4(stmAesEncode__0[2]),
        .O(\rAudioFrameCount[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rAudioFrameCount[5]_i_2 
       (.I0(rAudioFrameCount[5]),
        .I1(rAudioFrameCount[4]),
        .I2(rAudioFrameCount[2]),
        .I3(rAudioFrameCount[1]),
        .I4(rAudioFrameCount[0]),
        .I5(rAudioFrameCount[3]),
        .O(\rAudioFrameCount[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \rAudioFrameCount[6]_i_1 
       (.I0(rAudioFrameCount[7]),
        .I1(\rAudioFrameCount[7]_i_3_n_0 ),
        .I2(rAudioFrameCount[6]),
        .I3(stmAesEncode__0[2]),
        .O(\rAudioFrameCount[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \rAudioFrameCount[7]_i_1 
       (.I0(rAudReady),
        .I1(stmAesEncode__0[1]),
        .I2(\FSM_onehot_stmAesEncode[2]_i_2_n_0 ),
        .I3(stmAesEncode__0[2]),
        .O(rAudioFrameCount_1));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h4200)) 
    \rAudioFrameCount[7]_i_2 
       (.I0(rAudioFrameCount[7]),
        .I1(\rAudioFrameCount[7]_i_3_n_0 ),
        .I2(rAudioFrameCount[6]),
        .I3(stmAesEncode__0[2]),
        .O(\rAudioFrameCount[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rAudioFrameCount[7]_i_3 
       (.I0(rAudioFrameCount[5]),
        .I1(rAudioFrameCount[4]),
        .I2(rAudioFrameCount[2]),
        .I3(rAudioFrameCount[1]),
        .I4(rAudioFrameCount[0]),
        .I5(rAudioFrameCount[3]),
        .O(\rAudioFrameCount[7]_i_3_n_0 ));
  FDRE \rAudioFrameCount_reg[0] 
       (.C(m_axis_aud_aclk),
        .CE(rAudioFrameCount_1),
        .D(\rAudioFrameCount[0]_i_1_n_0 ),
        .Q(rAudioFrameCount[0]),
        .R(1'b0));
  FDRE \rAudioFrameCount_reg[1] 
       (.C(m_axis_aud_aclk),
        .CE(rAudioFrameCount_1),
        .D(\rAudioFrameCount[1]_i_1_n_0 ),
        .Q(rAudioFrameCount[1]),
        .R(1'b0));
  FDRE \rAudioFrameCount_reg[2] 
       (.C(m_axis_aud_aclk),
        .CE(rAudioFrameCount_1),
        .D(\rAudioFrameCount[2]_i_1_n_0 ),
        .Q(rAudioFrameCount[2]),
        .R(\rAudioFrameCount[5]_i_1_n_0 ));
  FDRE \rAudioFrameCount_reg[3] 
       (.C(m_axis_aud_aclk),
        .CE(rAudioFrameCount_1),
        .D(\rAudioFrameCount[3]_i_1_n_0 ),
        .Q(rAudioFrameCount[3]),
        .R(\rAudioFrameCount[5]_i_1_n_0 ));
  FDRE \rAudioFrameCount_reg[4] 
       (.C(m_axis_aud_aclk),
        .CE(rAudioFrameCount_1),
        .D(\rAudioFrameCount[4]_i_1_n_0 ),
        .Q(rAudioFrameCount[4]),
        .R(\rAudioFrameCount[5]_i_1_n_0 ));
  FDRE \rAudioFrameCount_reg[5] 
       (.C(m_axis_aud_aclk),
        .CE(rAudioFrameCount_1),
        .D(\rAudioFrameCount[5]_i_2_n_0 ),
        .Q(rAudioFrameCount[5]),
        .R(\rAudioFrameCount[5]_i_1_n_0 ));
  FDRE \rAudioFrameCount_reg[6] 
       (.C(m_axis_aud_aclk),
        .CE(rAudioFrameCount_1),
        .D(\rAudioFrameCount[6]_i_1_n_0 ),
        .Q(rAudioFrameCount[6]),
        .R(1'b0));
  FDRE \rAudioFrameCount_reg[7] 
       (.C(m_axis_aud_aclk),
        .CE(rAudioFrameCount_1),
        .D(\rAudioFrameCount[7]_i_2_n_0 ),
        .Q(rAudioFrameCount[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEFEEEEE)) 
    \rChannelStatusCapt[191]_i_1 
       (.I0(rAudReady),
        .I1(stmAesEncode__0[1]),
        .I2(stmAesEncode__0[2]),
        .I3(\FSM_onehot_stmAesEncode[2]_i_2_n_0 ),
        .I4(\rChannelStatusCapt[191]_i_2_n_0 ),
        .O(rChannelStatusCapt_2));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rChannelStatusCapt[191]_i_2 
       (.I0(rAudioFrameCount[7]),
        .I1(\rAudioFrameCount[7]_i_3_n_0 ),
        .I2(rAudioFrameCount[6]),
        .O(\rChannelStatusCapt[191]_i_2_n_0 ));
  FDRE \rChannelStatusCapt_reg[0] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[0]),
        .Q(rChannelStatusCapt[0]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[100] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[100]),
        .Q(rChannelStatusCapt[100]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[101] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[101]),
        .Q(rChannelStatusCapt[101]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[102] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[102]),
        .Q(rChannelStatusCapt[102]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[103] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[103]),
        .Q(rChannelStatusCapt[103]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[104] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[104]),
        .Q(rChannelStatusCapt[104]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[105] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[105]),
        .Q(rChannelStatusCapt[105]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[106] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[106]),
        .Q(rChannelStatusCapt[106]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[107] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[107]),
        .Q(rChannelStatusCapt[107]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[108] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[108]),
        .Q(rChannelStatusCapt[108]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[109] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[109]),
        .Q(rChannelStatusCapt[109]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[10] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[10]),
        .Q(rChannelStatusCapt[10]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[110] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[110]),
        .Q(rChannelStatusCapt[110]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[111] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[111]),
        .Q(rChannelStatusCapt[111]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[112] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[112]),
        .Q(rChannelStatusCapt[112]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[113] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[113]),
        .Q(rChannelStatusCapt[113]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[114] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[114]),
        .Q(rChannelStatusCapt[114]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[115] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[115]),
        .Q(rChannelStatusCapt[115]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[116] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[116]),
        .Q(rChannelStatusCapt[116]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[117] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[117]),
        .Q(rChannelStatusCapt[117]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[118] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[118]),
        .Q(rChannelStatusCapt[118]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[119] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[119]),
        .Q(rChannelStatusCapt[119]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[11] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[11]),
        .Q(rChannelStatusCapt[11]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[120] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[120]),
        .Q(rChannelStatusCapt[120]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[121] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[121]),
        .Q(rChannelStatusCapt[121]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[122] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[122]),
        .Q(rChannelStatusCapt[122]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[123] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[123]),
        .Q(rChannelStatusCapt[123]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[124] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[124]),
        .Q(rChannelStatusCapt[124]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[125] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[125]),
        .Q(rChannelStatusCapt[125]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[126] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[126]),
        .Q(rChannelStatusCapt[126]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[127] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[127]),
        .Q(rChannelStatusCapt[127]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[128] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[128]),
        .Q(rChannelStatusCapt[128]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[129] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[129]),
        .Q(rChannelStatusCapt[129]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[12] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[12]),
        .Q(rChannelStatusCapt[12]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[130] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[130]),
        .Q(rChannelStatusCapt[130]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[131] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[131]),
        .Q(rChannelStatusCapt[131]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[132] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[132]),
        .Q(rChannelStatusCapt[132]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[133] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[133]),
        .Q(rChannelStatusCapt[133]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[134] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[134]),
        .Q(rChannelStatusCapt[134]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[135] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[135]),
        .Q(rChannelStatusCapt[135]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[136] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[136]),
        .Q(rChannelStatusCapt[136]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[137] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[137]),
        .Q(rChannelStatusCapt[137]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[138] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[138]),
        .Q(rChannelStatusCapt[138]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[139] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[139]),
        .Q(rChannelStatusCapt[139]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[13] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[13]),
        .Q(rChannelStatusCapt[13]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[140] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[140]),
        .Q(rChannelStatusCapt[140]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[141] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[141]),
        .Q(rChannelStatusCapt[141]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[142] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[142]),
        .Q(rChannelStatusCapt[142]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[143] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[143]),
        .Q(rChannelStatusCapt[143]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[144] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[144]),
        .Q(rChannelStatusCapt[144]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[145] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[145]),
        .Q(rChannelStatusCapt[145]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[146] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[146]),
        .Q(rChannelStatusCapt[146]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[147] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[147]),
        .Q(rChannelStatusCapt[147]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[148] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[148]),
        .Q(rChannelStatusCapt[148]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[149] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[149]),
        .Q(rChannelStatusCapt[149]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[14] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[14]),
        .Q(rChannelStatusCapt[14]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[150] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[150]),
        .Q(rChannelStatusCapt[150]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[151] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[151]),
        .Q(rChannelStatusCapt[151]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[152] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[152]),
        .Q(rChannelStatusCapt[152]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[153] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[153]),
        .Q(rChannelStatusCapt[153]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[154] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[154]),
        .Q(rChannelStatusCapt[154]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[155] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[155]),
        .Q(rChannelStatusCapt[155]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[156] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[156]),
        .Q(rChannelStatusCapt[156]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[157] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[157]),
        .Q(rChannelStatusCapt[157]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[158] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[158]),
        .Q(rChannelStatusCapt[158]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[159] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[159]),
        .Q(rChannelStatusCapt[159]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[15] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[15]),
        .Q(rChannelStatusCapt[15]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[160] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[160]),
        .Q(rChannelStatusCapt[160]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[161] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[161]),
        .Q(rChannelStatusCapt[161]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[162] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[162]),
        .Q(rChannelStatusCapt[162]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[163] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[163]),
        .Q(rChannelStatusCapt[163]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[164] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[164]),
        .Q(rChannelStatusCapt[164]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[165] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[165]),
        .Q(rChannelStatusCapt[165]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[166] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[166]),
        .Q(rChannelStatusCapt[166]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[167] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[167]),
        .Q(rChannelStatusCapt[167]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[168] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[168]),
        .Q(rChannelStatusCapt[168]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[169] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[169]),
        .Q(rChannelStatusCapt[169]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[16] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[16]),
        .Q(rChannelStatusCapt[16]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[170] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[170]),
        .Q(rChannelStatusCapt[170]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[171] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[171]),
        .Q(rChannelStatusCapt[171]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[172] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[172]),
        .Q(rChannelStatusCapt[172]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[173] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[173]),
        .Q(rChannelStatusCapt[173]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[174] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[174]),
        .Q(rChannelStatusCapt[174]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[175] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[175]),
        .Q(rChannelStatusCapt[175]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[176] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[176]),
        .Q(rChannelStatusCapt[176]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[177] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[177]),
        .Q(rChannelStatusCapt[177]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[178] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[178]),
        .Q(rChannelStatusCapt[178]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[179] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[179]),
        .Q(rChannelStatusCapt[179]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[17] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[17]),
        .Q(rChannelStatusCapt[17]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[180] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[180]),
        .Q(rChannelStatusCapt[180]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[181] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[181]),
        .Q(rChannelStatusCapt[181]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[182] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[182]),
        .Q(rChannelStatusCapt[182]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[183] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[183]),
        .Q(rChannelStatusCapt[183]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[184] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[184]),
        .Q(rChannelStatusCapt[184]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[185] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[185]),
        .Q(rChannelStatusCapt[185]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[186] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[186]),
        .Q(rChannelStatusCapt[186]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[187] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[187]),
        .Q(rChannelStatusCapt[187]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[188] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[188]),
        .Q(rChannelStatusCapt[188]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[189] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[189]),
        .Q(rChannelStatusCapt[189]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[18] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[18]),
        .Q(rChannelStatusCapt[18]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[190] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[190]),
        .Q(rChannelStatusCapt[190]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[191] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[191]),
        .Q(rChannelStatusCapt[191]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[19] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[19]),
        .Q(rChannelStatusCapt[19]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[1] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[1]),
        .Q(rChannelStatusCapt[1]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[20] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[20]),
        .Q(rChannelStatusCapt[20]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[21] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[21]),
        .Q(rChannelStatusCapt[21]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[22] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[22]),
        .Q(rChannelStatusCapt[22]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[23] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[23]),
        .Q(rChannelStatusCapt[23]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[24] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[24]),
        .Q(rChannelStatusCapt[24]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[25] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[25]),
        .Q(rChannelStatusCapt[25]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[26] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[26]),
        .Q(rChannelStatusCapt[26]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[27] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[27]),
        .Q(rChannelStatusCapt[27]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[28] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[28]),
        .Q(rChannelStatusCapt[28]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[29] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[29]),
        .Q(rChannelStatusCapt[29]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[2] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[2]),
        .Q(rChannelStatusCapt[2]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[30] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[30]),
        .Q(rChannelStatusCapt[30]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[31] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[31]),
        .Q(rChannelStatusCapt[31]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[32] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[32]),
        .Q(rChannelStatusCapt[32]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[33] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[33]),
        .Q(rChannelStatusCapt[33]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[34] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[34]),
        .Q(rChannelStatusCapt[34]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[35] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[35]),
        .Q(rChannelStatusCapt[35]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[36] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[36]),
        .Q(rChannelStatusCapt[36]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[37] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[37]),
        .Q(rChannelStatusCapt[37]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[38] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[38]),
        .Q(rChannelStatusCapt[38]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[39] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[39]),
        .Q(rChannelStatusCapt[39]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[3] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[3]),
        .Q(rChannelStatusCapt[3]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[40] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[40]),
        .Q(rChannelStatusCapt[40]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[41] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[41]),
        .Q(rChannelStatusCapt[41]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[42] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[42]),
        .Q(rChannelStatusCapt[42]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[43] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[43]),
        .Q(rChannelStatusCapt[43]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[44] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[44]),
        .Q(rChannelStatusCapt[44]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[45] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[45]),
        .Q(rChannelStatusCapt[45]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[46] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[46]),
        .Q(rChannelStatusCapt[46]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[47] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[47]),
        .Q(rChannelStatusCapt[47]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[48] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[48]),
        .Q(rChannelStatusCapt[48]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[49] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[49]),
        .Q(rChannelStatusCapt[49]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[4] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[4]),
        .Q(rChannelStatusCapt[4]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[50] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[50]),
        .Q(rChannelStatusCapt[50]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[51] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[51]),
        .Q(rChannelStatusCapt[51]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[52] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[52]),
        .Q(rChannelStatusCapt[52]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[53] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[53]),
        .Q(rChannelStatusCapt[53]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[54] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[54]),
        .Q(rChannelStatusCapt[54]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[55] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[55]),
        .Q(rChannelStatusCapt[55]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[56] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[56]),
        .Q(rChannelStatusCapt[56]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[57] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[57]),
        .Q(rChannelStatusCapt[57]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[58] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[58]),
        .Q(rChannelStatusCapt[58]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[59] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[59]),
        .Q(rChannelStatusCapt[59]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[5] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[5]),
        .Q(rChannelStatusCapt[5]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[60] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[60]),
        .Q(rChannelStatusCapt[60]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[61] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[61]),
        .Q(rChannelStatusCapt[61]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[62] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[62]),
        .Q(rChannelStatusCapt[62]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[63] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[63]),
        .Q(rChannelStatusCapt[63]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[64] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[64]),
        .Q(rChannelStatusCapt[64]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[65] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[65]),
        .Q(rChannelStatusCapt[65]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[66] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[66]),
        .Q(rChannelStatusCapt[66]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[67] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[67]),
        .Q(rChannelStatusCapt[67]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[68] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[68]),
        .Q(rChannelStatusCapt[68]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[69] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[69]),
        .Q(rChannelStatusCapt[69]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[6] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[6]),
        .Q(rChannelStatusCapt[6]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[70] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[70]),
        .Q(rChannelStatusCapt[70]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[71] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[71]),
        .Q(rChannelStatusCapt[71]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[72] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[72]),
        .Q(rChannelStatusCapt[72]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[73] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[73]),
        .Q(rChannelStatusCapt[73]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[74] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[74]),
        .Q(rChannelStatusCapt[74]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[75] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[75]),
        .Q(rChannelStatusCapt[75]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[76] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[76]),
        .Q(rChannelStatusCapt[76]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[77] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[77]),
        .Q(rChannelStatusCapt[77]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[78] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[78]),
        .Q(rChannelStatusCapt[78]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[79] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[79]),
        .Q(rChannelStatusCapt[79]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[7] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[7]),
        .Q(rChannelStatusCapt[7]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[80] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[80]),
        .Q(rChannelStatusCapt[80]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[81] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[81]),
        .Q(rChannelStatusCapt[81]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[82] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[82]),
        .Q(rChannelStatusCapt[82]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[83] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[83]),
        .Q(rChannelStatusCapt[83]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[84] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[84]),
        .Q(rChannelStatusCapt[84]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[85] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[85]),
        .Q(rChannelStatusCapt[85]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[86] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[86]),
        .Q(rChannelStatusCapt[86]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[87] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[87]),
        .Q(rChannelStatusCapt[87]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[88] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[88]),
        .Q(rChannelStatusCapt[88]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[89] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[89]),
        .Q(rChannelStatusCapt[89]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[8] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[8]),
        .Q(rChannelStatusCapt[8]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[90] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[90]),
        .Q(rChannelStatusCapt[90]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[91] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[91]),
        .Q(rChannelStatusCapt[91]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[92] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[92]),
        .Q(rChannelStatusCapt[92]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[93] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[93]),
        .Q(rChannelStatusCapt[93]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[94] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[94]),
        .Q(rChannelStatusCapt[94]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[95] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[95]),
        .Q(rChannelStatusCapt[95]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[96] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[96]),
        .Q(rChannelStatusCapt[96]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[97] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[97]),
        .Q(rChannelStatusCapt[97]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[98] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[98]),
        .Q(rChannelStatusCapt[98]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[99] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[99]),
        .Q(rChannelStatusCapt[99]),
        .R(iRst0));
  FDRE \rChannelStatusCapt_reg[9] 
       (.C(m_axis_aud_aclk),
        .CE(rChannelStatusCapt_2),
        .D(rChannelStatusIn[9]),
        .Q(rChannelStatusCapt[9]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[0] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [0]),
        .Q(rChannelStatusIn[0]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[100] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [100]),
        .Q(rChannelStatusIn[100]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[101] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [101]),
        .Q(rChannelStatusIn[101]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[102] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [102]),
        .Q(rChannelStatusIn[102]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[103] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [103]),
        .Q(rChannelStatusIn[103]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[104] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [104]),
        .Q(rChannelStatusIn[104]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[105] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [105]),
        .Q(rChannelStatusIn[105]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[106] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [106]),
        .Q(rChannelStatusIn[106]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[107] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [107]),
        .Q(rChannelStatusIn[107]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[108] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [108]),
        .Q(rChannelStatusIn[108]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[109] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [109]),
        .Q(rChannelStatusIn[109]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[10] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [10]),
        .Q(rChannelStatusIn[10]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[110] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [110]),
        .Q(rChannelStatusIn[110]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[111] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [111]),
        .Q(rChannelStatusIn[111]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[112] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [112]),
        .Q(rChannelStatusIn[112]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[113] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [113]),
        .Q(rChannelStatusIn[113]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[114] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [114]),
        .Q(rChannelStatusIn[114]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[115] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [115]),
        .Q(rChannelStatusIn[115]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[116] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [116]),
        .Q(rChannelStatusIn[116]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[117] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [117]),
        .Q(rChannelStatusIn[117]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[118] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [118]),
        .Q(rChannelStatusIn[118]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[119] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [119]),
        .Q(rChannelStatusIn[119]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[11] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [11]),
        .Q(rChannelStatusIn[11]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[120] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [120]),
        .Q(rChannelStatusIn[120]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[121] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [121]),
        .Q(rChannelStatusIn[121]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[122] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [122]),
        .Q(rChannelStatusIn[122]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[123] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [123]),
        .Q(rChannelStatusIn[123]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[124] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [124]),
        .Q(rChannelStatusIn[124]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[125] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [125]),
        .Q(rChannelStatusIn[125]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[126] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [126]),
        .Q(rChannelStatusIn[126]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[127] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [127]),
        .Q(rChannelStatusIn[127]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[128] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [128]),
        .Q(rChannelStatusIn[128]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[129] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [129]),
        .Q(rChannelStatusIn[129]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[12] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [12]),
        .Q(rChannelStatusIn[12]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[130] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [130]),
        .Q(rChannelStatusIn[130]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[131] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [131]),
        .Q(rChannelStatusIn[131]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[132] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [132]),
        .Q(rChannelStatusIn[132]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[133] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [133]),
        .Q(rChannelStatusIn[133]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[134] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [134]),
        .Q(rChannelStatusIn[134]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[135] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [135]),
        .Q(rChannelStatusIn[135]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[136] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [136]),
        .Q(rChannelStatusIn[136]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[137] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [137]),
        .Q(rChannelStatusIn[137]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[138] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [138]),
        .Q(rChannelStatusIn[138]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[139] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [139]),
        .Q(rChannelStatusIn[139]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[13] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [13]),
        .Q(rChannelStatusIn[13]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[140] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [140]),
        .Q(rChannelStatusIn[140]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[141] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [141]),
        .Q(rChannelStatusIn[141]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[142] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [142]),
        .Q(rChannelStatusIn[142]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[143] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [143]),
        .Q(rChannelStatusIn[143]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[144] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [144]),
        .Q(rChannelStatusIn[144]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[145] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [145]),
        .Q(rChannelStatusIn[145]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[146] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [146]),
        .Q(rChannelStatusIn[146]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[147] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [147]),
        .Q(rChannelStatusIn[147]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[148] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [148]),
        .Q(rChannelStatusIn[148]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[149] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [149]),
        .Q(rChannelStatusIn[149]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[14] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [14]),
        .Q(rChannelStatusIn[14]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[150] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [150]),
        .Q(rChannelStatusIn[150]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[151] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [151]),
        .Q(rChannelStatusIn[151]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[152] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [152]),
        .Q(rChannelStatusIn[152]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[153] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [153]),
        .Q(rChannelStatusIn[153]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[154] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [154]),
        .Q(rChannelStatusIn[154]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[155] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [155]),
        .Q(rChannelStatusIn[155]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[156] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [156]),
        .Q(rChannelStatusIn[156]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[157] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [157]),
        .Q(rChannelStatusIn[157]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[158] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [158]),
        .Q(rChannelStatusIn[158]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[159] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [159]),
        .Q(rChannelStatusIn[159]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[15] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [15]),
        .Q(rChannelStatusIn[15]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[160] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [160]),
        .Q(rChannelStatusIn[160]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[161] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [161]),
        .Q(rChannelStatusIn[161]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[162] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [162]),
        .Q(rChannelStatusIn[162]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[163] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [163]),
        .Q(rChannelStatusIn[163]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[164] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [164]),
        .Q(rChannelStatusIn[164]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[165] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [165]),
        .Q(rChannelStatusIn[165]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[166] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [166]),
        .Q(rChannelStatusIn[166]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[167] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [167]),
        .Q(rChannelStatusIn[167]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[168] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [168]),
        .Q(rChannelStatusIn[168]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[169] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [169]),
        .Q(rChannelStatusIn[169]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[16] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [16]),
        .Q(rChannelStatusIn[16]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[170] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [170]),
        .Q(rChannelStatusIn[170]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[171] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [171]),
        .Q(rChannelStatusIn[171]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[172] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [172]),
        .Q(rChannelStatusIn[172]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[173] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [173]),
        .Q(rChannelStatusIn[173]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[174] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [174]),
        .Q(rChannelStatusIn[174]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[175] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [175]),
        .Q(rChannelStatusIn[175]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[176] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [176]),
        .Q(rChannelStatusIn[176]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[177] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [177]),
        .Q(rChannelStatusIn[177]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[178] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [178]),
        .Q(rChannelStatusIn[178]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[179] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [179]),
        .Q(rChannelStatusIn[179]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[17] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [17]),
        .Q(rChannelStatusIn[17]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[180] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [180]),
        .Q(rChannelStatusIn[180]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[181] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [181]),
        .Q(rChannelStatusIn[181]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[182] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [182]),
        .Q(rChannelStatusIn[182]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[183] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [183]),
        .Q(rChannelStatusIn[183]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[184] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [184]),
        .Q(rChannelStatusIn[184]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[185] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [185]),
        .Q(rChannelStatusIn[185]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[186] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [186]),
        .Q(rChannelStatusIn[186]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[187] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [187]),
        .Q(rChannelStatusIn[187]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[188] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [188]),
        .Q(rChannelStatusIn[188]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[189] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [189]),
        .Q(rChannelStatusIn[189]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[18] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [18]),
        .Q(rChannelStatusIn[18]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[190] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [190]),
        .Q(rChannelStatusIn[190]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[191] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [191]),
        .Q(rChannelStatusIn[191]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[19] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [19]),
        .Q(rChannelStatusIn[19]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[1] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [1]),
        .Q(rChannelStatusIn[1]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[20] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [20]),
        .Q(rChannelStatusIn[20]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[21] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [21]),
        .Q(rChannelStatusIn[21]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[22] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [22]),
        .Q(rChannelStatusIn[22]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[23] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [23]),
        .Q(rChannelStatusIn[23]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[24] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [24]),
        .Q(rChannelStatusIn[24]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[25] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [25]),
        .Q(rChannelStatusIn[25]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[26] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [26]),
        .Q(rChannelStatusIn[26]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[27] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [27]),
        .Q(rChannelStatusIn[27]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[28] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [28]),
        .Q(rChannelStatusIn[28]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[29] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [29]),
        .Q(rChannelStatusIn[29]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[2] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [2]),
        .Q(rChannelStatusIn[2]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[30] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [30]),
        .Q(rChannelStatusIn[30]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[31] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [31]),
        .Q(rChannelStatusIn[31]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[32] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [32]),
        .Q(rChannelStatusIn[32]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[33] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [33]),
        .Q(rChannelStatusIn[33]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[34] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [34]),
        .Q(rChannelStatusIn[34]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[35] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [35]),
        .Q(rChannelStatusIn[35]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[36] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [36]),
        .Q(rChannelStatusIn[36]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[37] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [37]),
        .Q(rChannelStatusIn[37]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[38] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [38]),
        .Q(rChannelStatusIn[38]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[39] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [39]),
        .Q(rChannelStatusIn[39]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[3] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [3]),
        .Q(rChannelStatusIn[3]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[40] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [40]),
        .Q(rChannelStatusIn[40]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[41] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [41]),
        .Q(rChannelStatusIn[41]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[42] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [42]),
        .Q(rChannelStatusIn[42]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[43] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [43]),
        .Q(rChannelStatusIn[43]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[44] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [44]),
        .Q(rChannelStatusIn[44]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[45] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [45]),
        .Q(rChannelStatusIn[45]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[46] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [46]),
        .Q(rChannelStatusIn[46]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[47] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [47]),
        .Q(rChannelStatusIn[47]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[48] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [48]),
        .Q(rChannelStatusIn[48]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[49] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [49]),
        .Q(rChannelStatusIn[49]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[4] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [4]),
        .Q(rChannelStatusIn[4]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[50] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [50]),
        .Q(rChannelStatusIn[50]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[51] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [51]),
        .Q(rChannelStatusIn[51]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[52] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [52]),
        .Q(rChannelStatusIn[52]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[53] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [53]),
        .Q(rChannelStatusIn[53]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[54] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [54]),
        .Q(rChannelStatusIn[54]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[55] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [55]),
        .Q(rChannelStatusIn[55]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[56] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [56]),
        .Q(rChannelStatusIn[56]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[57] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [57]),
        .Q(rChannelStatusIn[57]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[58] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [58]),
        .Q(rChannelStatusIn[58]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[59] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [59]),
        .Q(rChannelStatusIn[59]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[5] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [5]),
        .Q(rChannelStatusIn[5]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[60] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [60]),
        .Q(rChannelStatusIn[60]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[61] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [61]),
        .Q(rChannelStatusIn[61]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[62] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [62]),
        .Q(rChannelStatusIn[62]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[63] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [63]),
        .Q(rChannelStatusIn[63]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[64] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [64]),
        .Q(rChannelStatusIn[64]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[65] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [65]),
        .Q(rChannelStatusIn[65]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[66] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [66]),
        .Q(rChannelStatusIn[66]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[67] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [67]),
        .Q(rChannelStatusIn[67]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[68] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [68]),
        .Q(rChannelStatusIn[68]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[69] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [69]),
        .Q(rChannelStatusIn[69]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[6] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [6]),
        .Q(rChannelStatusIn[6]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[70] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [70]),
        .Q(rChannelStatusIn[70]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[71] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [71]),
        .Q(rChannelStatusIn[71]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[72] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [72]),
        .Q(rChannelStatusIn[72]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[73] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [73]),
        .Q(rChannelStatusIn[73]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[74] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [74]),
        .Q(rChannelStatusIn[74]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[75] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [75]),
        .Q(rChannelStatusIn[75]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[76] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [76]),
        .Q(rChannelStatusIn[76]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[77] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [77]),
        .Q(rChannelStatusIn[77]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[78] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [78]),
        .Q(rChannelStatusIn[78]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[79] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [79]),
        .Q(rChannelStatusIn[79]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[7] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [7]),
        .Q(rChannelStatusIn[7]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[80] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [80]),
        .Q(rChannelStatusIn[80]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[81] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [81]),
        .Q(rChannelStatusIn[81]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[82] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [82]),
        .Q(rChannelStatusIn[82]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[83] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [83]),
        .Q(rChannelStatusIn[83]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[84] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [84]),
        .Q(rChannelStatusIn[84]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[85] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [85]),
        .Q(rChannelStatusIn[85]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[86] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [86]),
        .Q(rChannelStatusIn[86]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[87] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [87]),
        .Q(rChannelStatusIn[87]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[88] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [88]),
        .Q(rChannelStatusIn[88]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[89] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [89]),
        .Q(rChannelStatusIn[89]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[8] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [8]),
        .Q(rChannelStatusIn[8]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[90] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [90]),
        .Q(rChannelStatusIn[90]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[91] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [91]),
        .Q(rChannelStatusIn[91]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[92] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [92]),
        .Q(rChannelStatusIn[92]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[93] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [93]),
        .Q(rChannelStatusIn[93]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[94] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [94]),
        .Q(rChannelStatusIn[94]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[95] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [95]),
        .Q(rChannelStatusIn[95]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[96] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [96]),
        .Q(rChannelStatusIn[96]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[97] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [97]),
        .Q(rChannelStatusIn[97]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[98] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [98]),
        .Q(rChannelStatusIn[98]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[99] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [99]),
        .Q(rChannelStatusIn[99]),
        .R(iRst0));
  FDRE \rChannelStatusIn_reg[9] 
       (.C(m_axis_aud_aclk),
        .CE(E),
        .D(\rChannelStatusIn_reg[191]_0 [9]),
        .Q(rChannelStatusIn[9]),
        .R(iRst0));
  FDSE rdy_init_del_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(rdy_init_del_reg_0),
        .Q(rdy_init_del),
        .S(iRst0));
  FDRE rdy_ready1_reg
       (.C(m_axis_aud_aclk),
        .CE(1'b1),
        .D(rdy_ready1_reg_0),
        .Q(rdy_ready1),
        .R(iRst0));
  LUT6 #(
    .INIT(64'h8A888A8000000000)) 
    xpm_fifo_async_inst_i_2
       (.I0(data_valid),
        .I1(follower_empty),
        .I2(rdy_ready1),
        .I3(rdy_init_del_reg_0),
        .I4(rdy_init_del),
        .I5(rAudReady_reg_n_0),
        .O(rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_async_fifo
   (dout,
    data_valid,
    rAudValid_reg,
    \FSM_onehot_stmFIFOWriteCtrl_reg[2] ,
    \FSM_onehot_stmFIFOWriteCtrl_reg[2]_0 ,
    \mclk_rChannelCount_reg[0] ,
    \genblk3[0].mclk_rAudValid_reg[0] ,
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg ,
    \FSM_onehot_stmFIFOWriteCtrl_reg[2]_1 ,
    \syncstages_ff_reg[1][1] ,
    \FSM_onehot_stmFIFOWriteCtrl_reg[2]_2 ,
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ,
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 ,
    iMRst0,
    aud_mclk,
    din,
    m_axis_aud_aclk,
    rd_en,
    \FSM_onehot_stmFIFOWriteCtrl_reg[2]_3 ,
    mclk_nAudValid_0,
    stmFIFOWriteCtrl__0,
    \FSM_onehot_stmFIFOWriteCtrl_reg[2]_4 ,
    \mclk_rWriteData_reg[12] ,
    \mclk_rWriteData_reg[12]_0 ,
    mclk_rWriteValid_reg,
    p_1_in,
    mclk_rDoLowerChannel_reg,
    rdy_ready1,
    rdy_init_del,
    dest_out,
    mclk_rWriteValid_reg_0,
    iRst0,
    follower_empty,
    m_axis_aud_tready,
    follower_empty_reg);
  output [26:0]dout;
  output data_valid;
  output rAudValid_reg;
  output \FSM_onehot_stmFIFOWriteCtrl_reg[2] ;
  output \FSM_onehot_stmFIFOWriteCtrl_reg[2]_0 ;
  output \mclk_rChannelCount_reg[0] ;
  output \genblk3[0].mclk_rAudValid_reg[0] ;
  output \gen_fwft.gdvld_fwft.data_valid_fwft_reg ;
  output \FSM_onehot_stmFIFOWriteCtrl_reg[2]_1 ;
  output \syncstages_ff_reg[1][1] ;
  output \FSM_onehot_stmFIFOWriteCtrl_reg[2]_2 ;
  output \gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ;
  output \gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 ;
  input iMRst0;
  input aud_mclk;
  input [18:0]din;
  input m_axis_aud_aclk;
  input rd_en;
  input \FSM_onehot_stmFIFOWriteCtrl_reg[2]_3 ;
  input mclk_nAudValid_0;
  input [1:0]stmFIFOWriteCtrl__0;
  input \FSM_onehot_stmFIFOWriteCtrl_reg[2]_4 ;
  input \mclk_rWriteData_reg[12] ;
  input \mclk_rWriteData_reg[12]_0 ;
  input mclk_rWriteValid_reg;
  input p_1_in;
  input mclk_rDoLowerChannel_reg;
  input rdy_ready1;
  input rdy_init_del;
  input [1:0]dest_out;
  input mclk_rWriteValid_reg_0;
  input iRst0;
  input follower_empty;
  input m_axis_aud_tready;
  input follower_empty_reg;

  wire \FSM_onehot_stmFIFOWriteCtrl_reg[2] ;
  wire \FSM_onehot_stmFIFOWriteCtrl_reg[2]_0 ;
  wire \FSM_onehot_stmFIFOWriteCtrl_reg[2]_1 ;
  wire \FSM_onehot_stmFIFOWriteCtrl_reg[2]_2 ;
  wire \FSM_onehot_stmFIFOWriteCtrl_reg[2]_3 ;
  wire \FSM_onehot_stmFIFOWriteCtrl_reg[2]_4 ;
  wire aud_mclk;
  wire [31:0]axis_nAxis_TData_FromFIFO;
  wire data_valid;
  wire [1:0]dest_out;
  wire [18:0]din;
  wire [26:0]dout;
  wire follower_empty;
  wire follower_empty_i_2_n_0;
  wire follower_empty_reg;
  wire full;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_reg ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 ;
  wire \genblk3[0].mclk_rAudValid[0]_i_2_n_0 ;
  wire \genblk3[0].mclk_rAudValid_reg[0] ;
  wire iMRst0;
  wire iRst0;
  wire m_axis_aud_aclk;
  wire m_axis_aud_tready;
  wire mclk_nAudValid_0;
  wire \mclk_rChannelCount_reg[0] ;
  wire mclk_rDoLowerChannel_reg;
  wire \mclk_rWriteData_reg[12] ;
  wire \mclk_rWriteData_reg[12]_0 ;
  wire mclk_rWriteValid_i_3_n_0;
  wire mclk_rWriteValid_reg;
  wire mclk_rWriteValid_reg_0;
  wire p_1_in;
  wire rAudValid_reg;
  wire rd_en;
  wire rdy_init_del;
  wire rdy_ready1;
  wire [1:0]stmFIFOWriteCtrl__0;
  wire \syncstages_ff_reg[1][1] ;
  wire wr_en;
  wire xpm_fifo_async_inst_n_2;
  wire xpm_fifo_async_inst_n_3;
  wire xpm_fifo_async_inst_n_4;
  wire xpm_fifo_async_inst_n_5;
  wire xpm_fifo_async_inst_n_51;
  wire xpm_fifo_async_inst_n_52;
  wire xpm_fifo_async_inst_n_53;
  wire xpm_fifo_async_inst_n_54;
  wire xpm_fifo_async_inst_n_55;
  wire xpm_fifo_async_inst_n_56;
  wire xpm_fifo_async_inst_n_57;
  wire xpm_fifo_async_inst_n_58;
  wire xpm_fifo_async_inst_n_6;
  wire xpm_fifo_async_inst_n_7;
  wire xpm_fifo_async_inst_n_8;
  wire xpm_fifo_async_inst_n_9;
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

  LUT5 #(
    .INIT(32'h007F0000)) 
    \FSM_onehot_stmFIFOWriteCtrl[0]_i_1 
       (.I0(\FSM_onehot_stmFIFOWriteCtrl_reg[2] ),
        .I1(\mclk_rWriteData_reg[12] ),
        .I2(\mclk_rWriteData_reg[12]_0 ),
        .I3(mclk_nAudValid_0),
        .I4(\FSM_onehot_stmFIFOWriteCtrl_reg[2]_4 ),
        .O(\mclk_rChannelCount_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFC0AABF8080)) 
    \FSM_onehot_stmFIFOWriteCtrl[1]_i_1 
       (.I0(stmFIFOWriteCtrl__0[1]),
        .I1(\FSM_onehot_stmFIFOWriteCtrl_reg[2] ),
        .I2(\FSM_onehot_stmFIFOWriteCtrl_reg[2]_3 ),
        .I3(mclk_nAudValid_0),
        .I4(stmFIFOWriteCtrl__0[0]),
        .I5(\FSM_onehot_stmFIFOWriteCtrl_reg[2]_4 ),
        .O(\FSM_onehot_stmFIFOWriteCtrl_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFF07FF77F800F800)) 
    \FSM_onehot_stmFIFOWriteCtrl[2]_i_1 
       (.I0(\FSM_onehot_stmFIFOWriteCtrl_reg[2] ),
        .I1(\FSM_onehot_stmFIFOWriteCtrl_reg[2]_3 ),
        .I2(mclk_nAudValid_0),
        .I3(stmFIFOWriteCtrl__0[0]),
        .I4(\FSM_onehot_stmFIFOWriteCtrl_reg[2]_4 ),
        .I5(stmFIFOWriteCtrl__0[1]),
        .O(rAudValid_reg));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \FSM_onehot_stmFIFOWriteCtrl[2]_i_2 
       (.I0(stmFIFOWriteCtrl__0[1]),
        .I1(full),
        .I2(mclk_rWriteValid_reg),
        .O(\FSM_onehot_stmFIFOWriteCtrl_reg[2] ));
  LUT6 #(
    .INIT(64'hF7FFF7F0F7F0F7F0)) 
    follower_empty_i_1
       (.I0(follower_empty_i_2_n_0),
        .I1(data_valid),
        .I2(iRst0),
        .I3(follower_empty),
        .I4(m_axis_aud_tready),
        .I5(follower_empty_reg),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    follower_empty_i_2
       (.I0(rdy_ready1),
        .I1(data_valid),
        .I2(dout[0]),
        .I3(dout[1]),
        .I4(dout[2]),
        .I5(rdy_init_del),
        .O(follower_empty_i_2_n_0));
  LUT5 #(
    .INIT(32'h440F4400)) 
    \genblk3[0].mclk_rAudValid[0]_i_1 
       (.I0(dest_out[1]),
        .I1(dest_out[0]),
        .I2(\genblk3[0].mclk_rAudValid[0]_i_2_n_0 ),
        .I3(mclk_nAudValid_0),
        .I4(p_1_in),
        .O(\syncstages_ff_reg[1][1] ));
  LUT6 #(
    .INIT(64'h0004040400000000)) 
    \genblk3[0].mclk_rAudValid[0]_i_2 
       (.I0(\mclk_rWriteData_reg[12] ),
        .I1(mclk_rDoLowerChannel_reg),
        .I2(\mclk_rWriteData_reg[12]_0 ),
        .I3(mclk_rWriteValid_reg),
        .I4(full),
        .I5(stmFIFOWriteCtrl__0[1]),
        .O(\genblk3[0].mclk_rAudValid[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCFEC)) 
    mclk_rDoLowerChannel_i_1
       (.I0(stmFIFOWriteCtrl__0[1]),
        .I1(stmFIFOWriteCtrl__0[0]),
        .I2(\genblk3[0].mclk_rAudValid_reg[0] ),
        .I3(mclk_rDoLowerChannel_reg),
        .O(\FSM_onehot_stmFIFOWriteCtrl_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h0A0A0A8A)) 
    \mclk_rWriteData[27]_i_1 
       (.I0(\FSM_onehot_stmFIFOWriteCtrl_reg[2] ),
        .I1(p_1_in),
        .I2(mclk_rDoLowerChannel_reg),
        .I3(\mclk_rWriteData_reg[12] ),
        .I4(\mclk_rWriteData_reg[12]_0 ),
        .O(\genblk3[0].mclk_rAudValid_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFABBBA000A888)) 
    mclk_rWriteValid_i_1
       (.I0(\genblk3[0].mclk_rAudValid_reg[0] ),
        .I1(mclk_rWriteValid_reg_0),
        .I2(mclk_rWriteValid_i_3_n_0),
        .I3(stmFIFOWriteCtrl__0[1]),
        .I4(full),
        .I5(mclk_rWriteValid_reg),
        .O(\FSM_onehot_stmFIFOWriteCtrl_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h1F0FFFFF)) 
    mclk_rWriteValid_i_3
       (.I0(\mclk_rWriteData_reg[12] ),
        .I1(\mclk_rWriteData_reg[12]_0 ),
        .I2(full),
        .I3(p_1_in),
        .I4(mclk_rDoLowerChannel_reg),
        .O(mclk_rWriteValid_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    rdy_init_del_i_1
       (.I0(data_valid),
        .I1(dout[0]),
        .I2(dout[1]),
        .I3(dout[2]),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    rdy_ready1_i_1
       (.I0(data_valid),
        .I1(dout[0]),
        .I2(dout[1]),
        .I3(dout[2]),
        .I4(rdy_init_del),
        .I5(rdy_ready1),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 ));
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async xpm_fifo_async_inst
       (.almost_empty(NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED),
        .data_valid(data_valid),
        .dbiterr(NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,din[18:3],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[2:0]}),
        .dout({axis_nAxis_TData_FromFIFO[31:28],dout[26:3],axis_nAxis_TData_FromFIFO[3:0],dout[2:0]}),
        .empty(NLW_xpm_fifo_async_inst_empty_UNCONNECTED),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_async_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED),
        .rd_clk(m_axis_aud_aclk),
        .rd_data_count({xpm_fifo_async_inst_n_51,xpm_fifo_async_inst_n_52,xpm_fifo_async_inst_n_53,xpm_fifo_async_inst_n_54,xpm_fifo_async_inst_n_55,xpm_fifo_async_inst_n_56,xpm_fifo_async_inst_n_57,xpm_fifo_async_inst_n_58}),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED),
        .rst(iMRst0),
        .sbiterr(NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_async_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED),
        .wr_clk(aud_mclk),
        .wr_data_count({xpm_fifo_async_inst_n_2,xpm_fifo_async_inst_n_3,xpm_fifo_async_inst_n_4,xpm_fifo_async_inst_n_5,xpm_fifo_async_inst_n_6,xpm_fifo_async_inst_n_7,xpm_fifo_async_inst_n_8,xpm_fifo_async_inst_n_9}),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    xpm_fifo_async_inst_i_1
       (.I0(mclk_rWriteValid_reg),
        .I1(full),
        .O(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_axi
   (s_axi_ctrl_rresp,
    SR,
    s_axi_ctrl_awready,
    oAxi_WReady_reg_0,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bresp,
    src_in,
    rOpmode_reg_0,
    rLR_reg_0,
    rValidity_reg_0,
    s_axi_ctrl_arready,
    s_axi_ctrl_rvalid,
    irq,
    src_pulse,
    Q,
    \rChannelMux_01_reg[2]_0 ,
    \rAesChannelStatus_reg[191]_0 ,
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
    s_axi_ctrl_araddr);
  output [0:0]s_axi_ctrl_rresp;
  output [0:0]SR;
  output s_axi_ctrl_awready;
  output oAxi_WReady_reg_0;
  output s_axi_ctrl_bvalid;
  output [0:0]s_axi_ctrl_bresp;
  output src_in;
  output rOpmode_reg_0;
  output rLR_reg_0;
  output rValidity_reg_0;
  output s_axi_ctrl_arready;
  output s_axi_ctrl_rvalid;
  output irq;
  output src_pulse;
  output [7:0]Q;
  output [2:0]\rChannelMux_01_reg[2]_0 ;
  output [191:0]\rAesChannelStatus_reg[191]_0 ;
  output [31:0]s_axi_ctrl_rdata;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input [7:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_aresetn;
  input dest_pulse;
  input \rIrqStatus_reg[1]_0 ;
  input [7:0]s_axi_ctrl_araddr;

  wire \FSM_onehot_stmRead[3]_i_1_n_0 ;
  wire \FSM_sequential_stmWrite[0]_i_1_n_0 ;
  wire \FSM_sequential_stmWrite[1]_i_1_n_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire dest_pulse;
  wire irq;
  wire oAxi_ARReady_i_1_n_0;
  wire oAxi_AWReady_i_2_n_0;
  wire \oAxi_BResp[1]_i_1_n_0 ;
  wire \oAxi_BResp[1]_i_2_n_0 ;
  wire oAxi_BValid_i_1_n_0;
  wire \oAxi_RData[0]_i_1_n_0 ;
  wire \oAxi_RData[0]_i_2_n_0 ;
  wire \oAxi_RData[0]_i_3_n_0 ;
  wire \oAxi_RData[0]_i_4_n_0 ;
  wire \oAxi_RData[0]_i_5_n_0 ;
  wire \oAxi_RData[0]_i_6_n_0 ;
  wire \oAxi_RData[0]_i_7_n_0 ;
  wire \oAxi_RData[0]_i_8_n_0 ;
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
  wire \oAxi_RResp[1]_i_1_n_0 ;
  wire \oAxi_RResp[1]_i_2_n_0 ;
  wire oAxi_RValid_i_1_n_0;
  wire oAxi_WReady_i_1_n_0;
  wire oAxi_WReady_reg_0;
  wire rAesCaptChannelStatus_i_1_n_0;
  wire \rAesChannelStatus[127]_i_1_n_0 ;
  wire \rAesChannelStatus[159]_i_1_n_0 ;
  wire \rAesChannelStatus[191]_i_1_n_0 ;
  wire \rAesChannelStatus[191]_i_2_n_0 ;
  wire \rAesChannelStatus[31]_i_1_n_0 ;
  wire \rAesChannelStatus[63]_i_1_n_0 ;
  wire \rAesChannelStatus[95]_i_1_n_0 ;
  wire [191:0]\rAesChannelStatus_reg[191]_0 ;
  wire \rChannelMux_01[0]_i_1_n_0 ;
  wire \rChannelMux_01[1]_i_1_n_0 ;
  wire \rChannelMux_01[2]_i_1_n_0 ;
  wire \rChannelMux_01[2]_i_2_n_0 ;
  wire [2:0]\rChannelMux_01_reg[2]_0 ;
  wire [2:0]rChannelMux_23;
  wire \rChannelMux_23[0]_i_1_n_0 ;
  wire \rChannelMux_23[1]_i_1_n_0 ;
  wire \rChannelMux_23[2]_i_1_n_0 ;
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
  wire \rClearIrqs[0]_i_1_n_0 ;
  wire \rClearIrqs[0]_i_2_n_0 ;
  wire \rClearIrqs[1]_i_1_n_0 ;
  wire \rClearIrqs[1]_i_2_n_0 ;
  wire \rClearIrqs[1]_i_3_n_0 ;
  wire \rClearIrqs_reg_n_0_[0] ;
  wire \rClearIrqs_reg_n_0_[1] ;
  wire rEnable_i_1_n_0;
  wire \rIrqEnables[0]_i_1_n_0 ;
  wire \rIrqEnables[1]_i_1_n_0 ;
  wire \rIrqEnables[31]_i_1_n_0 ;
  wire \rIrqEnables[31]_i_2_n_0 ;
  wire \rIrqEnables[31]_i_3_n_0 ;
  wire \rIrqEnables_reg_n_0_[0] ;
  wire \rIrqEnables_reg_n_0_[1] ;
  wire \rIrqEnables_reg_n_0_[31] ;
  wire \rIrqStatus[0]_i_1_n_0 ;
  wire \rIrqStatus[1]_i_1_n_0 ;
  wire \rIrqStatus_reg[1]_0 ;
  wire \rIrqStatus_reg_n_0_[0] ;
  wire \rIrqStatus_reg_n_0_[1] ;
  wire rIrq_i_1_n_0;
  wire rLR_i_1_n_0;
  wire rLR_reg_0;
  wire rOpmode_i_1_n_0;
  wire rOpmode_reg_0;
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
  wire rValidity_i_1_n_0;
  wire rValidity_reg_0;
  wire [6:0]rWriteAddr;
  wire rWriteAddr_0;
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
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h4747FF33)) 
    \FSM_sequential_stmWrite[0]_i_1 
       (.I0(s_axi_ctrl_bready),
        .I1(stmWrite[1]),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_wvalid),
        .I4(stmWrite[0]),
        .O(\FSM_sequential_stmWrite[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
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
  LUT4 #(
    .INIT(16'hEA2A)) 
    \oAxi_BResp[1]_i_1 
       (.I0(s_axi_ctrl_bresp),
        .I1(oAxi_WReady_reg_0),
        .I2(s_axi_ctrl_wvalid),
        .I3(\oAxi_BResp[1]_i_2_n_0 ),
        .O(\oAxi_BResp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBBEEBBBFBBEEAAA)) 
    \oAxi_BResp[1]_i_2 
       (.I0(\rClearIrqs[1]_i_2_n_0 ),
        .I1(rWriteAddr[4]),
        .I2(rWriteAddr[6]),
        .I3(rWriteAddr[5]),
        .I4(rWriteAddr[3]),
        .I5(rWriteAddr[2]),
        .O(\oAxi_BResp[1]_i_2_n_0 ));
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
    .INIT(64'hAAAAAAAAAAAA0080)) 
    \oAxi_RData[0]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[0]_i_2_n_0 ),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[6]),
        .I4(\oAxi_RData[0]_i_3_n_0 ),
        .I5(\oAxi_RData[0]_i_4_n_0 ),
        .O(\oAxi_RData[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAEAAAAAAAEAAAAA)) 
    \oAxi_RData[0]_i_2 
       (.I0(\oAxi_RData[0]_i_5_n_0 ),
        .I1(rChannelMux_23[0]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[3]),
        .I4(rReadAddr[2]),
        .I5(rChannelMux_67[0]),
        .O(\oAxi_RData[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111100001000)) 
    \oAxi_RData[0]_i_3 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[5]),
        .I2(rReadAddr[2]),
        .I3(rValidity_reg_0),
        .I4(rReadAddr[4]),
        .I5(\oAxi_RData[0]_i_6_n_0 ),
        .O(\oAxi_RData[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \oAxi_RData[0]_i_4 
       (.I0(\oAxi_RData[0]_i_7_n_0 ),
        .I1(\oAxi_RData[0]_i_8_n_0 ),
        .I2(rReadAddr[6]),
        .I3(rReadAddr[2]),
        .O(\oAxi_RData[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D591C480)) 
    \oAxi_RData[0]_i_5 
       (.I0(rReadAddr[3]),
        .I1(rReadAddr[4]),
        .I2(rChannelMux_45[0]),
        .I3(\rChannelMux_01_reg[2]_0 [0]),
        .I4(Q[0]),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3333003330883088)) 
    \oAxi_RData[0]_i_6 
       (.I0(src_in),
        .I1(rReadAddr[3]),
        .I2(\rIrqEnables_reg_n_0_[0] ),
        .I3(rReadAddr[4]),
        .I4(\rIrqStatus_reg_n_0_[0] ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F00AC000000AC0)) 
    \oAxi_RData[0]_i_7 
       (.I0(\rAesChannelStatus_reg[191]_0 [160]),
        .I1(\rAesChannelStatus_reg[191]_0 [32]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[3]),
        .I5(\rAesChannelStatus_reg[191]_0 [96]),
        .O(\oAxi_RData[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F00AC000000AC0)) 
    \oAxi_RData[0]_i_8 
       (.I0(\rAesChannelStatus_reg[191]_0 [128]),
        .I1(\rAesChannelStatus_reg[191]_0 [0]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[3]),
        .I5(\rAesChannelStatus_reg[191]_0 [64]),
        .O(\oAxi_RData[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[10]_i_1 
       (.I0(\oAxi_RData[10]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [106]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[10]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[10]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [42]),
        .I1(\rAesChannelStatus_reg[191]_0 [170]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[10]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [138]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [10]),
        .I4(\rAesChannelStatus_reg[191]_0 [74]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[11]_i_1 
       (.I0(\oAxi_RData[11]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [107]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[11]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[11]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [43]),
        .I1(\rAesChannelStatus_reg[191]_0 [171]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[11]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [139]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [11]),
        .I4(\rAesChannelStatus_reg[191]_0 [75]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[12]_i_1 
       (.I0(\oAxi_RData[12]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [108]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[12]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[12]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [44]),
        .I1(\rAesChannelStatus_reg[191]_0 [172]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[12]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [140]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [12]),
        .I4(\rAesChannelStatus_reg[191]_0 [76]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[13]_i_1 
       (.I0(\oAxi_RData[13]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [109]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[13]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[13]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [45]),
        .I1(\rAesChannelStatus_reg[191]_0 [173]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[13]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [141]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [13]),
        .I4(\rAesChannelStatus_reg[191]_0 [77]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[14]_i_1 
       (.I0(\oAxi_RData[14]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [110]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[14]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[14]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [46]),
        .I1(\rAesChannelStatus_reg[191]_0 [174]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[14]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [142]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [14]),
        .I4(\rAesChannelStatus_reg[191]_0 [78]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[15]_i_1 
       (.I0(\oAxi_RData[15]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [111]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[15]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[15]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [47]),
        .I1(\rAesChannelStatus_reg[191]_0 [175]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[15]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [143]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [15]),
        .I4(\rAesChannelStatus_reg[191]_0 [79]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808080)) 
    \oAxi_RData[16]_i_1 
       (.I0(\oAxi_RData[31]_i_3_n_0 ),
        .I1(\oAxi_RData[16]_i_2_n_0 ),
        .I2(rReadAddr[2]),
        .I3(\rAesChannelStatus_reg[191]_0 [80]),
        .I4(\oAxi_RData[30]_i_3_n_0 ),
        .I5(\oAxi_RData[16]_i_3_n_0 ),
        .O(\oAxi_RData[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[16]_i_2 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [176]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [48]),
        .I4(\rAesChannelStatus_reg[191]_0 [112]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000061214101)) 
    \oAxi_RData[16]_i_3 
       (.I0(rReadAddr[4]),
        .I1(rReadAddr[5]),
        .I2(rReadAddr[6]),
        .I3(\rAesChannelStatus_reg[191]_0 [144]),
        .I4(\rAesChannelStatus_reg[191]_0 [16]),
        .I5(\oAxi_RData[31]_i_6_n_0 ),
        .O(\oAxi_RData[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[17]_i_1 
       (.I0(\oAxi_RData[17]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [113]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[17]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[17]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [49]),
        .I1(\rAesChannelStatus_reg[191]_0 [177]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[17]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [145]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [17]),
        .I4(\rAesChannelStatus_reg[191]_0 [81]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[18]_i_1 
       (.I0(\oAxi_RData[18]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [114]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[18]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[18]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [50]),
        .I1(\rAesChannelStatus_reg[191]_0 [178]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[18]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [146]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [18]),
        .I4(\rAesChannelStatus_reg[191]_0 [82]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[19]_i_1 
       (.I0(\oAxi_RData[19]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [115]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[19]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[19]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [51]),
        .I1(\rAesChannelStatus_reg[191]_0 [179]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[19]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [147]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [19]),
        .I4(\rAesChannelStatus_reg[191]_0 [83]),
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
        .I3(\rAesChannelStatus_reg[191]_0 [97]),
        .I4(\oAxi_RData[9]_i_4_n_0 ),
        .I5(\oAxi_RData[1]_i_6_n_0 ),
        .O(\oAxi_RData[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \oAxi_RData[1]_i_3 
       (.I0(rOpmode_reg_0),
        .I1(rChannelMux_45[1]),
        .I2(\rAesChannelStatus_reg[191]_0 [65]),
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
        .I4(\rAesChannelStatus_reg[191]_0 [129]),
        .I5(\oAxi_RData[1]_i_7_n_0 ),
        .O(\oAxi_RData[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \oAxi_RData[1]_i_5 
       (.I0(\rIrqStatus_reg_n_0_[1] ),
        .I1(rChannelMux_23[1]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[6]),
        .I4(\rAesChannelStatus_reg[191]_0 [33]),
        .O(\oAxi_RData[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00000C00000)) 
    \oAxi_RData[1]_i_6 
       (.I0(rChannelMux_67[1]),
        .I1(\rAesChannelStatus_reg[191]_0 [161]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3B0B380800000000)) 
    \oAxi_RData[1]_i_7 
       (.I0(\rAesChannelStatus_reg[191]_0 [1]),
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
        .I1(\rAesChannelStatus_reg[191]_0 [116]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[20]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[20]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [52]),
        .I1(\rAesChannelStatus_reg[191]_0 [180]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[20]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [148]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [20]),
        .I4(\rAesChannelStatus_reg[191]_0 [84]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[21]_i_1 
       (.I0(\oAxi_RData[21]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [117]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[21]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[21]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [53]),
        .I1(\rAesChannelStatus_reg[191]_0 [181]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[21]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [149]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [21]),
        .I4(\rAesChannelStatus_reg[191]_0 [85]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[22]_i_1 
       (.I0(\oAxi_RData[22]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [118]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[22]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[22]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [54]),
        .I1(\rAesChannelStatus_reg[191]_0 [182]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[22]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [150]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [22]),
        .I4(\rAesChannelStatus_reg[191]_0 [86]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[23]_i_1 
       (.I0(\oAxi_RData[23]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [119]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[23]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[23]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [55]),
        .I1(\rAesChannelStatus_reg[191]_0 [183]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[23]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [151]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [23]),
        .I4(\rAesChannelStatus_reg[191]_0 [87]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[24]_i_1 
       (.I0(\oAxi_RData[24]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [120]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[24]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[24]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [56]),
        .I1(\rAesChannelStatus_reg[191]_0 [184]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[24]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [152]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [24]),
        .I4(\rAesChannelStatus_reg[191]_0 [88]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[25]_i_1 
       (.I0(\oAxi_RData[25]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [121]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[25]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[25]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [57]),
        .I1(\rAesChannelStatus_reg[191]_0 [185]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[25]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [153]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [25]),
        .I4(\rAesChannelStatus_reg[191]_0 [89]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[26]_i_1 
       (.I0(\oAxi_RData[26]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [122]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[26]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[26]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [58]),
        .I1(\rAesChannelStatus_reg[191]_0 [186]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[26]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [154]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [26]),
        .I4(\rAesChannelStatus_reg[191]_0 [90]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[27]_i_1 
       (.I0(\oAxi_RData[27]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [123]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[27]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[27]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [59]),
        .I1(\rAesChannelStatus_reg[191]_0 [187]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[27]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [155]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [27]),
        .I4(\rAesChannelStatus_reg[191]_0 [91]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[28]_i_1 
       (.I0(\oAxi_RData[28]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [124]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[28]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[28]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [60]),
        .I1(\rAesChannelStatus_reg[191]_0 [188]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[28]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [156]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [28]),
        .I4(\rAesChannelStatus_reg[191]_0 [92]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[29]_i_1 
       (.I0(\oAxi_RData[29]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [125]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[29]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[29]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [61]),
        .I1(\rAesChannelStatus_reg[191]_0 [189]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[29]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [157]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [29]),
        .I4(\rAesChannelStatus_reg[191]_0 [93]),
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
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \oAxi_RData[2]_i_2 
       (.I0(\oAxi_RData[2]_i_5_n_0 ),
        .I1(rReadAddr[5]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[3]),
        .I5(\rAesChannelStatus_reg[191]_0 [98]),
        .O(\oAxi_RData[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \oAxi_RData[2]_i_3 
       (.I0(rLR_reg_0),
        .I1(rChannelMux_45[2]),
        .I2(\rAesChannelStatus_reg[191]_0 [66]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[4]),
        .I5(rReadAddr[6]),
        .O(\oAxi_RData[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF28200800)) 
    \oAxi_RData[2]_i_4 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[5]),
        .I3(\rAesChannelStatus_reg[191]_0 [2]),
        .I4(\rAesChannelStatus_reg[191]_0 [130]),
        .I5(\oAxi_RData[2]_i_6_n_0 ),
        .O(\oAxi_RData[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \oAxi_RData[2]_i_5 
       (.I0(rReadAddr[5]),
        .I1(rReadAddr[6]),
        .I2(rReadAddr[4]),
        .I3(rChannelMux_67[2]),
        .I4(rReadAddr[3]),
        .I5(\oAxi_RData[2]_i_7_n_0 ),
        .O(\oAxi_RData[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h0000A0C0)) 
    \oAxi_RData[2]_i_6 
       (.I0(\rChannelMux_01_reg[2]_0 [2]),
        .I1(Q[2]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .O(\oAxi_RData[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00AACC00F0000000)) 
    \oAxi_RData[2]_i_7 
       (.I0(rChannelMux_23[2]),
        .I1(\rAesChannelStatus_reg[191]_0 [34]),
        .I2(\rAesChannelStatus_reg[191]_0 [162]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[30]_i_1 
       (.I0(\oAxi_RData[30]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [126]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[30]_i_4_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[30]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [62]),
        .I1(\rAesChannelStatus_reg[191]_0 [190]),
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
        .I1(\rAesChannelStatus_reg[191]_0 [158]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [30]),
        .I4(\rAesChannelStatus_reg[191]_0 [94]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \oAxi_RData[30]_i_5 
       (.I0(rReadAddr[5]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[6]),
        .I3(rReadAddr[3]),
        .O(\oAxi_RData[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
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
        .I2(\rAesChannelStatus_reg[191]_0 [95]),
        .I3(\oAxi_RData[31]_i_5_n_0 ),
        .I4(\oAxi_RData[31]_i_6_n_0 ),
        .I5(\oAxi_RData[31]_i_7_n_0 ),
        .O(\oAxi_RData[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
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
        .I1(\rAesChannelStatus_reg[191]_0 [191]),
        .I2(rReadAddr[2]),
        .I3(rReadAddr[5]),
        .I4(rReadAddr[4]),
        .I5(rReadAddr[6]),
        .O(\oAxi_RData[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \oAxi_RData[31]_i_5 
       (.I0(rReadAddr[5]),
        .I1(rReadAddr[6]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[3]),
        .I4(rReadAddr[2]),
        .O(\oAxi_RData[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
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
        .I1(\rAesChannelStatus_reg[191]_0 [31]),
        .I2(\rAesChannelStatus_reg[191]_0 [159]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC0AF)) 
    \oAxi_RData[31]_i_8 
       (.I0(\rAesChannelStatus_reg[191]_0 [63]),
        .I1(\rAesChannelStatus_reg[191]_0 [127]),
        .I2(rReadAddr[4]),
        .I3(rReadAddr[3]),
        .O(\oAxi_RData[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \oAxi_RData[3]_i_1 
       (.I0(\rReadAddr_reg_n_0_[7] ),
        .I1(rReadAddr[0]),
        .I2(rReadAddr[1]),
        .I3(stmRead[2]),
        .I4(\oAxi_RData[3]_i_2_n_0 ),
        .O(\oAxi_RData[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2220000F222)) 
    \oAxi_RData[3]_i_2 
       (.I0(\oAxi_RData[3]_i_3_n_0 ),
        .I1(rReadAddr[3]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [67]),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[3]_i_4_n_0 ),
        .O(\oAxi_RData[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[3]_i_3 
       (.I0(Q[3]),
        .I1(\rAesChannelStatus_reg[191]_0 [3]),
        .I2(\rAesChannelStatus_reg[191]_0 [131]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[3]_i_4 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [163]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [35]),
        .I4(\rAesChannelStatus_reg[191]_0 [99]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \oAxi_RData[4]_i_1 
       (.I0(\rReadAddr_reg_n_0_[7] ),
        .I1(rReadAddr[0]),
        .I2(rReadAddr[1]),
        .I3(stmRead[2]),
        .I4(\oAxi_RData[4]_i_2_n_0 ),
        .O(\oAxi_RData[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2220000F222)) 
    \oAxi_RData[4]_i_2 
       (.I0(\oAxi_RData[4]_i_3_n_0 ),
        .I1(rReadAddr[3]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [68]),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[4]_i_4_n_0 ),
        .O(\oAxi_RData[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[4]_i_3 
       (.I0(Q[4]),
        .I1(\rAesChannelStatus_reg[191]_0 [4]),
        .I2(\rAesChannelStatus_reg[191]_0 [132]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[4]_i_4 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [164]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [36]),
        .I4(\rAesChannelStatus_reg[191]_0 [100]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \oAxi_RData[5]_i_1 
       (.I0(\rReadAddr_reg_n_0_[7] ),
        .I1(rReadAddr[0]),
        .I2(rReadAddr[1]),
        .I3(stmRead[2]),
        .I4(\oAxi_RData[5]_i_2_n_0 ),
        .O(\oAxi_RData[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2220000F222)) 
    \oAxi_RData[5]_i_2 
       (.I0(\oAxi_RData[5]_i_3_n_0 ),
        .I1(rReadAddr[3]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [69]),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[5]_i_4_n_0 ),
        .O(\oAxi_RData[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[5]_i_3 
       (.I0(Q[5]),
        .I1(\rAesChannelStatus_reg[191]_0 [5]),
        .I2(\rAesChannelStatus_reg[191]_0 [133]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[5]_i_4 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [165]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [37]),
        .I4(\rAesChannelStatus_reg[191]_0 [101]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \oAxi_RData[6]_i_1 
       (.I0(\rReadAddr_reg_n_0_[7] ),
        .I1(rReadAddr[0]),
        .I2(rReadAddr[1]),
        .I3(stmRead[2]),
        .I4(\oAxi_RData[6]_i_2_n_0 ),
        .O(\oAxi_RData[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2220000F222)) 
    \oAxi_RData[6]_i_2 
       (.I0(\oAxi_RData[6]_i_3_n_0 ),
        .I1(rReadAddr[3]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [70]),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[6]_i_4_n_0 ),
        .O(\oAxi_RData[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[6]_i_3 
       (.I0(Q[6]),
        .I1(\rAesChannelStatus_reg[191]_0 [6]),
        .I2(\rAesChannelStatus_reg[191]_0 [134]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[6]_i_4 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [166]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [38]),
        .I4(\rAesChannelStatus_reg[191]_0 [102]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \oAxi_RData[7]_i_1 
       (.I0(\rReadAddr_reg_n_0_[7] ),
        .I1(rReadAddr[0]),
        .I2(rReadAddr[1]),
        .I3(stmRead[2]),
        .I4(\oAxi_RData[7]_i_2_n_0 ),
        .O(\oAxi_RData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2220000F222)) 
    \oAxi_RData[7]_i_2 
       (.I0(\oAxi_RData[7]_i_3_n_0 ),
        .I1(rReadAddr[3]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [71]),
        .I4(rReadAddr[2]),
        .I5(\oAxi_RData[7]_i_4_n_0 ),
        .O(\oAxi_RData[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC00F0AA0000)) 
    \oAxi_RData[7]_i_3 
       (.I0(Q[7]),
        .I1(\rAesChannelStatus_reg[191]_0 [7]),
        .I2(\rAesChannelStatus_reg[191]_0 [135]),
        .I3(rReadAddr[6]),
        .I4(rReadAddr[5]),
        .I5(rReadAddr[4]),
        .O(\oAxi_RData[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[7]_i_4 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [167]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [39]),
        .I4(\rAesChannelStatus_reg[191]_0 [103]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA0000FF000000)) 
    \oAxi_RData[8]_i_1 
       (.I0(\oAxi_RData[8]_i_2_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [104]),
        .I2(\oAxi_RData[30]_i_3_n_0 ),
        .I3(\oAxi_RData[8]_i_3_n_0 ),
        .I4(\oAxi_RData[31]_i_3_n_0 ),
        .I5(rReadAddr[2]),
        .O(\oAxi_RData[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AC00000)) 
    \oAxi_RData[8]_i_2 
       (.I0(\rAesChannelStatus_reg[191]_0 [40]),
        .I1(\rAesChannelStatus_reg[191]_0 [168]),
        .I2(rReadAddr[5]),
        .I3(rReadAddr[4]),
        .I4(rReadAddr[6]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \oAxi_RData[8]_i_3 
       (.I0(\oAxi_RData[30]_i_5_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [136]),
        .I2(\oAxi_RData[30]_i_6_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [8]),
        .I4(\rAesChannelStatus_reg[191]_0 [72]),
        .I5(\oAxi_RData[30]_i_3_n_0 ),
        .O(\oAxi_RData[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \oAxi_RData[9]_i_1 
       (.I0(\rReadAddr_reg_n_0_[7] ),
        .I1(rReadAddr[0]),
        .I2(rReadAddr[1]),
        .I3(stmRead[2]),
        .I4(\oAxi_RData[9]_i_2_n_0 ),
        .O(\oAxi_RData[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAEAAAEAAAAAAAAA)) 
    \oAxi_RData[9]_i_2 
       (.I0(\oAxi_RData[9]_i_3_n_0 ),
        .I1(\rAesChannelStatus_reg[191]_0 [73]),
        .I2(\oAxi_RData[9]_i_4_n_0 ),
        .I3(rReadAddr[2]),
        .I4(\rAesChannelStatus_reg[191]_0 [105]),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFB080)) 
    \oAxi_RData[9]_i_3 
       (.I0(\rAesChannelStatus_reg[191]_0 [169]),
        .I1(rReadAddr[2]),
        .I2(\oAxi_RData[9]_i_5_n_0 ),
        .I3(\rAesChannelStatus_reg[191]_0 [137]),
        .I4(\oAxi_RData[9]_i_6_n_0 ),
        .I5(rReadAddr[3]),
        .O(\oAxi_RData[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \oAxi_RData[9]_i_4 
       (.I0(rReadAddr[5]),
        .I1(rReadAddr[4]),
        .I2(rReadAddr[6]),
        .O(\oAxi_RData[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \oAxi_RData[9]_i_5 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[5]),
        .I2(rReadAddr[4]),
        .O(\oAxi_RData[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000099801180)) 
    \oAxi_RData[9]_i_6 
       (.I0(rReadAddr[6]),
        .I1(rReadAddr[4]),
        .I2(\rAesChannelStatus_reg[191]_0 [9]),
        .I3(rReadAddr[2]),
        .I4(\rAesChannelStatus_reg[191]_0 [41]),
        .I5(rReadAddr[5]),
        .O(\oAxi_RData[9]_i_6_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hC3FCC038)) 
    \oAxi_RResp[1]_i_2 
       (.I0(rReadAddr[2]),
        .I1(rReadAddr[5]),
        .I2(rReadAddr[6]),
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
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    rAesCaptChannelStatus_i_1
       (.I0(rWriteAddr[3]),
        .I1(rWriteAddr[4]),
        .I2(s_axi_ctrl_aresetn),
        .I3(s_axi_ctrl_wdata[16]),
        .I4(\rIrqEnables[31]_i_2_n_0 ),
        .I5(\rIrqEnables[31]_i_3_n_0 ),
        .O(rAesCaptChannelStatus_i_1_n_0));
  FDRE rAesCaptChannelStatus_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rAesCaptChannelStatus_i_1_n_0),
        .Q(src_pulse),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \rAesChannelStatus[127]_i_1 
       (.I0(rWriteAddr[3]),
        .I1(rWriteAddr[4]),
        .I2(rWriteAddr[6]),
        .I3(rWriteAddr[5]),
        .I4(\rAesChannelStatus[191]_i_2_n_0 ),
        .O(\rAesChannelStatus[127]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \rAesChannelStatus[159]_i_1 
       (.I0(rWriteAddr[5]),
        .I1(rWriteAddr[6]),
        .I2(rWriteAddr[3]),
        .I3(rWriteAddr[4]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .O(\rAesChannelStatus[159]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \rAesChannelStatus[191]_i_1 
       (.I0(rWriteAddr[5]),
        .I1(rWriteAddr[6]),
        .I2(rWriteAddr[3]),
        .I3(rWriteAddr[4]),
        .I4(\rAesChannelStatus[191]_i_2_n_0 ),
        .O(\rAesChannelStatus[191]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \rAesChannelStatus[191]_i_2 
       (.I0(oAxi_WReady_reg_0),
        .I1(s_axi_ctrl_wvalid),
        .I2(\rWriteAddr_reg_n_0_[7] ),
        .I3(rWriteAddr[1]),
        .I4(rWriteAddr[0]),
        .I5(rWriteAddr[2]),
        .O(\rAesChannelStatus[191]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \rAesChannelStatus[31]_i_1 
       (.I0(rWriteAddr[4]),
        .I1(rWriteAddr[3]),
        .I2(rWriteAddr[6]),
        .I3(rWriteAddr[5]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .O(\rAesChannelStatus[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \rAesChannelStatus[63]_i_1 
       (.I0(rWriteAddr[4]),
        .I1(rWriteAddr[3]),
        .I2(rWriteAddr[6]),
        .I3(rWriteAddr[5]),
        .I4(\rAesChannelStatus[191]_i_2_n_0 ),
        .O(\rAesChannelStatus[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \rAesChannelStatus[95]_i_1 
       (.I0(rWriteAddr[3]),
        .I1(rWriteAddr[4]),
        .I2(rWriteAddr[6]),
        .I3(rWriteAddr[5]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .O(\rAesChannelStatus[95]_i_1_n_0 ));
  FDRE \rAesChannelStatus_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\rAesChannelStatus_reg[191]_0 [0]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[100] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\rAesChannelStatus_reg[191]_0 [100]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[101] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\rAesChannelStatus_reg[191]_0 [101]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[102] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\rAesChannelStatus_reg[191]_0 [102]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[103] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\rAesChannelStatus_reg[191]_0 [103]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[104] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\rAesChannelStatus_reg[191]_0 [104]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[105] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\rAesChannelStatus_reg[191]_0 [105]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[106] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\rAesChannelStatus_reg[191]_0 [106]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[107] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\rAesChannelStatus_reg[191]_0 [107]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[108] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\rAesChannelStatus_reg[191]_0 [108]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[109] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\rAesChannelStatus_reg[191]_0 [109]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\rAesChannelStatus_reg[191]_0 [10]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[110] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\rAesChannelStatus_reg[191]_0 [110]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[111] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\rAesChannelStatus_reg[191]_0 [111]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[112] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\rAesChannelStatus_reg[191]_0 [112]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[113] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\rAesChannelStatus_reg[191]_0 [113]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[114] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\rAesChannelStatus_reg[191]_0 [114]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[115] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\rAesChannelStatus_reg[191]_0 [115]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[116] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\rAesChannelStatus_reg[191]_0 [116]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[117] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\rAesChannelStatus_reg[191]_0 [117]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[118] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\rAesChannelStatus_reg[191]_0 [118]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[119] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\rAesChannelStatus_reg[191]_0 [119]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\rAesChannelStatus_reg[191]_0 [11]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[120] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\rAesChannelStatus_reg[191]_0 [120]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[121] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\rAesChannelStatus_reg[191]_0 [121]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[122] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\rAesChannelStatus_reg[191]_0 [122]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[123] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\rAesChannelStatus_reg[191]_0 [123]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[124] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\rAesChannelStatus_reg[191]_0 [124]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[125] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\rAesChannelStatus_reg[191]_0 [125]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[126] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\rAesChannelStatus_reg[191]_0 [126]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[127] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\rAesChannelStatus_reg[191]_0 [127]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[128] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\rAesChannelStatus_reg[191]_0 [128]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[129] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\rAesChannelStatus_reg[191]_0 [129]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\rAesChannelStatus_reg[191]_0 [12]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[130] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\rAesChannelStatus_reg[191]_0 [130]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[131] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\rAesChannelStatus_reg[191]_0 [131]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[132] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\rAesChannelStatus_reg[191]_0 [132]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[133] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\rAesChannelStatus_reg[191]_0 [133]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[134] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\rAesChannelStatus_reg[191]_0 [134]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[135] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\rAesChannelStatus_reg[191]_0 [135]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[136] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\rAesChannelStatus_reg[191]_0 [136]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[137] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\rAesChannelStatus_reg[191]_0 [137]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[138] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\rAesChannelStatus_reg[191]_0 [138]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[139] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\rAesChannelStatus_reg[191]_0 [139]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\rAesChannelStatus_reg[191]_0 [13]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[140] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\rAesChannelStatus_reg[191]_0 [140]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[141] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\rAesChannelStatus_reg[191]_0 [141]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[142] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\rAesChannelStatus_reg[191]_0 [142]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[143] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\rAesChannelStatus_reg[191]_0 [143]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[144] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\rAesChannelStatus_reg[191]_0 [144]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[145] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\rAesChannelStatus_reg[191]_0 [145]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[146] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\rAesChannelStatus_reg[191]_0 [146]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[147] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\rAesChannelStatus_reg[191]_0 [147]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[148] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\rAesChannelStatus_reg[191]_0 [148]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[149] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\rAesChannelStatus_reg[191]_0 [149]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\rAesChannelStatus_reg[191]_0 [14]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[150] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\rAesChannelStatus_reg[191]_0 [150]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[151] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\rAesChannelStatus_reg[191]_0 [151]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[152] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\rAesChannelStatus_reg[191]_0 [152]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[153] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\rAesChannelStatus_reg[191]_0 [153]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[154] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\rAesChannelStatus_reg[191]_0 [154]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[155] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\rAesChannelStatus_reg[191]_0 [155]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[156] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\rAesChannelStatus_reg[191]_0 [156]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[157] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\rAesChannelStatus_reg[191]_0 [157]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[158] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\rAesChannelStatus_reg[191]_0 [158]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[159] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[159]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\rAesChannelStatus_reg[191]_0 [159]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\rAesChannelStatus_reg[191]_0 [15]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[160] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\rAesChannelStatus_reg[191]_0 [160]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[161] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\rAesChannelStatus_reg[191]_0 [161]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[162] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\rAesChannelStatus_reg[191]_0 [162]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[163] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\rAesChannelStatus_reg[191]_0 [163]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[164] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\rAesChannelStatus_reg[191]_0 [164]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[165] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\rAesChannelStatus_reg[191]_0 [165]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[166] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\rAesChannelStatus_reg[191]_0 [166]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[167] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\rAesChannelStatus_reg[191]_0 [167]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[168] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\rAesChannelStatus_reg[191]_0 [168]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[169] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\rAesChannelStatus_reg[191]_0 [169]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\rAesChannelStatus_reg[191]_0 [16]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[170] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\rAesChannelStatus_reg[191]_0 [170]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[171] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\rAesChannelStatus_reg[191]_0 [171]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[172] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\rAesChannelStatus_reg[191]_0 [172]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[173] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\rAesChannelStatus_reg[191]_0 [173]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[174] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\rAesChannelStatus_reg[191]_0 [174]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[175] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\rAesChannelStatus_reg[191]_0 [175]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[176] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\rAesChannelStatus_reg[191]_0 [176]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[177] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\rAesChannelStatus_reg[191]_0 [177]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[178] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\rAesChannelStatus_reg[191]_0 [178]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[179] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\rAesChannelStatus_reg[191]_0 [179]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\rAesChannelStatus_reg[191]_0 [17]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[180] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\rAesChannelStatus_reg[191]_0 [180]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[181] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\rAesChannelStatus_reg[191]_0 [181]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[182] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\rAesChannelStatus_reg[191]_0 [182]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[183] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\rAesChannelStatus_reg[191]_0 [183]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[184] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\rAesChannelStatus_reg[191]_0 [184]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[185] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\rAesChannelStatus_reg[191]_0 [185]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[186] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\rAesChannelStatus_reg[191]_0 [186]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[187] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\rAesChannelStatus_reg[191]_0 [187]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[188] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\rAesChannelStatus_reg[191]_0 [188]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[189] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\rAesChannelStatus_reg[191]_0 [189]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\rAesChannelStatus_reg[191]_0 [18]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[190] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\rAesChannelStatus_reg[191]_0 [190]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[191] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[191]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\rAesChannelStatus_reg[191]_0 [191]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\rAesChannelStatus_reg[191]_0 [19]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\rAesChannelStatus_reg[191]_0 [1]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\rAesChannelStatus_reg[191]_0 [20]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\rAesChannelStatus_reg[191]_0 [21]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\rAesChannelStatus_reg[191]_0 [22]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\rAesChannelStatus_reg[191]_0 [23]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\rAesChannelStatus_reg[191]_0 [24]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\rAesChannelStatus_reg[191]_0 [25]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\rAesChannelStatus_reg[191]_0 [26]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\rAesChannelStatus_reg[191]_0 [27]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\rAesChannelStatus_reg[191]_0 [28]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\rAesChannelStatus_reg[191]_0 [29]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\rAesChannelStatus_reg[191]_0 [2]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\rAesChannelStatus_reg[191]_0 [30]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\rAesChannelStatus_reg[191]_0 [31]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\rAesChannelStatus_reg[191]_0 [32]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\rAesChannelStatus_reg[191]_0 [33]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\rAesChannelStatus_reg[191]_0 [34]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\rAesChannelStatus_reg[191]_0 [35]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\rAesChannelStatus_reg[191]_0 [36]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\rAesChannelStatus_reg[191]_0 [37]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\rAesChannelStatus_reg[191]_0 [38]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\rAesChannelStatus_reg[191]_0 [39]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\rAesChannelStatus_reg[191]_0 [3]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\rAesChannelStatus_reg[191]_0 [40]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\rAesChannelStatus_reg[191]_0 [41]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\rAesChannelStatus_reg[191]_0 [42]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\rAesChannelStatus_reg[191]_0 [43]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\rAesChannelStatus_reg[191]_0 [44]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\rAesChannelStatus_reg[191]_0 [45]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\rAesChannelStatus_reg[191]_0 [46]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\rAesChannelStatus_reg[191]_0 [47]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\rAesChannelStatus_reg[191]_0 [48]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\rAesChannelStatus_reg[191]_0 [49]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\rAesChannelStatus_reg[191]_0 [4]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[50] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\rAesChannelStatus_reg[191]_0 [50]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[51] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\rAesChannelStatus_reg[191]_0 [51]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[52] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\rAesChannelStatus_reg[191]_0 [52]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[53] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\rAesChannelStatus_reg[191]_0 [53]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[54] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\rAesChannelStatus_reg[191]_0 [54]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[55] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\rAesChannelStatus_reg[191]_0 [55]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[56] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\rAesChannelStatus_reg[191]_0 [56]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[57] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\rAesChannelStatus_reg[191]_0 [57]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[58] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\rAesChannelStatus_reg[191]_0 [58]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[59] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\rAesChannelStatus_reg[191]_0 [59]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\rAesChannelStatus_reg[191]_0 [5]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[60] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\rAesChannelStatus_reg[191]_0 [60]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[61] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\rAesChannelStatus_reg[191]_0 [61]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[62] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\rAesChannelStatus_reg[191]_0 [62]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[63] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[63]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\rAesChannelStatus_reg[191]_0 [63]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[64] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\rAesChannelStatus_reg[191]_0 [64]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[65] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\rAesChannelStatus_reg[191]_0 [65]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[66] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\rAesChannelStatus_reg[191]_0 [66]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[67] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\rAesChannelStatus_reg[191]_0 [67]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[68] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\rAesChannelStatus_reg[191]_0 [68]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[69] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\rAesChannelStatus_reg[191]_0 [69]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\rAesChannelStatus_reg[191]_0 [6]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[70] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\rAesChannelStatus_reg[191]_0 [70]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[71] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\rAesChannelStatus_reg[191]_0 [71]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[72] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\rAesChannelStatus_reg[191]_0 [72]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[73] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\rAesChannelStatus_reg[191]_0 [73]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[74] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\rAesChannelStatus_reg[191]_0 [74]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[75] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\rAesChannelStatus_reg[191]_0 [75]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[76] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\rAesChannelStatus_reg[191]_0 [76]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[77] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\rAesChannelStatus_reg[191]_0 [77]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[78] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\rAesChannelStatus_reg[191]_0 [78]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[79] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\rAesChannelStatus_reg[191]_0 [79]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\rAesChannelStatus_reg[191]_0 [7]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[80] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\rAesChannelStatus_reg[191]_0 [80]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[81] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\rAesChannelStatus_reg[191]_0 [81]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[82] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\rAesChannelStatus_reg[191]_0 [82]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[83] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\rAesChannelStatus_reg[191]_0 [83]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[84] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\rAesChannelStatus_reg[191]_0 [84]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[85] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\rAesChannelStatus_reg[191]_0 [85]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[86] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\rAesChannelStatus_reg[191]_0 [86]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[87] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\rAesChannelStatus_reg[191]_0 [87]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[88] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\rAesChannelStatus_reg[191]_0 [88]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[89] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\rAesChannelStatus_reg[191]_0 [89]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\rAesChannelStatus_reg[191]_0 [8]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[90] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\rAesChannelStatus_reg[191]_0 [90]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[91] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\rAesChannelStatus_reg[191]_0 [91]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[92] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\rAesChannelStatus_reg[191]_0 [92]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[93] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\rAesChannelStatus_reg[191]_0 [93]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[94] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\rAesChannelStatus_reg[191]_0 [94]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[95] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[95]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\rAesChannelStatus_reg[191]_0 [95]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[96] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\rAesChannelStatus_reg[191]_0 [96]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[97] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\rAesChannelStatus_reg[191]_0 [97]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[98] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\rAesChannelStatus_reg[191]_0 [98]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[99] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[127]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\rAesChannelStatus_reg[191]_0 [99]),
        .R(SR));
  FDRE \rAesChannelStatus_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(\rAesChannelStatus[31]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\rAesChannelStatus_reg[191]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \rChannelMux_01[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(rWriteAddr[5]),
        .I2(rWriteAddr[6]),
        .I3(\rChannelMux_01[2]_i_2_n_0 ),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(\rChannelMux_01_reg[2]_0 [0]),
        .O(\rChannelMux_01[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \rChannelMux_01[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(rWriteAddr[5]),
        .I2(rWriteAddr[6]),
        .I3(\rChannelMux_01[2]_i_2_n_0 ),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(\rChannelMux_01_reg[2]_0 [1]),
        .O(\rChannelMux_01[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \rChannelMux_01[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(rWriteAddr[5]),
        .I2(rWriteAddr[6]),
        .I3(\rChannelMux_01[2]_i_2_n_0 ),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(\rChannelMux_01_reg[2]_0 [2]),
        .O(\rChannelMux_01[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rChannelMux_01[2]_i_2 
       (.I0(rWriteAddr[4]),
        .I1(rWriteAddr[3]),
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
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \rChannelMux_23[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(rWriteAddr[5]),
        .I2(rWriteAddr[6]),
        .I3(\rChannelMux_01[2]_i_2_n_0 ),
        .I4(\rAesChannelStatus[191]_i_2_n_0 ),
        .I5(rChannelMux_23[0]),
        .O(\rChannelMux_23[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \rChannelMux_23[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(rWriteAddr[5]),
        .I2(rWriteAddr[6]),
        .I3(\rChannelMux_01[2]_i_2_n_0 ),
        .I4(\rAesChannelStatus[191]_i_2_n_0 ),
        .I5(rChannelMux_23[1]),
        .O(\rChannelMux_23[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \rChannelMux_23[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(rWriteAddr[5]),
        .I2(rWriteAddr[6]),
        .I3(\rChannelMux_01[2]_i_2_n_0 ),
        .I4(\rAesChannelStatus[191]_i_2_n_0 ),
        .I5(rChannelMux_23[2]),
        .O(\rChannelMux_23[2]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_45[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rChannelMux_45[2]_i_2_n_0 ),
        .I2(rChannelMux_45[0]),
        .O(\rChannelMux_45[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_45[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\rChannelMux_45[2]_i_2_n_0 ),
        .I2(rChannelMux_45[1]),
        .O(\rChannelMux_45[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_45[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\rChannelMux_45[2]_i_2_n_0 ),
        .I2(rChannelMux_45[2]),
        .O(\rChannelMux_45[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rChannelMux_45[2]_i_2 
       (.I0(rWriteAddr[3]),
        .I1(rWriteAddr[4]),
        .I2(rWriteAddr[5]),
        .I3(rWriteAddr[6]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rChannelMux_67[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rChannelMux_67[2]_i_2_n_0 ),
        .I2(rChannelMux_67[0]),
        .O(\rChannelMux_67[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rChannelMux_67[2]_i_2 
       (.I0(rWriteAddr[3]),
        .I1(rWriteAddr[4]),
        .I2(rWriteAddr[5]),
        .I3(rWriteAddr[6]),
        .I4(\rAesChannelStatus[191]_i_2_n_0 ),
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
  LUT6 #(
    .INIT(64'h30AA00AA00AA00AA)) 
    \rClearIrqs[0]_i_1 
       (.I0(\rClearIrqs_reg_n_0_[0] ),
        .I1(\rClearIrqs[1]_i_2_n_0 ),
        .I2(\rClearIrqs[0]_i_2_n_0 ),
        .I3(s_axi_ctrl_aresetn),
        .I4(oAxi_WReady_reg_0),
        .I5(s_axi_ctrl_wvalid),
        .O(\rClearIrqs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \rClearIrqs[0]_i_2 
       (.I0(rWriteAddr[5]),
        .I1(rWriteAddr[6]),
        .I2(s_axi_ctrl_wdata[0]),
        .I3(rWriteAddr[2]),
        .I4(rWriteAddr[3]),
        .I5(rWriteAddr[4]),
        .O(\rClearIrqs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h30AA00AA00AA00AA)) 
    \rClearIrqs[1]_i_1 
       (.I0(\rClearIrqs_reg_n_0_[1] ),
        .I1(\rClearIrqs[1]_i_2_n_0 ),
        .I2(\rClearIrqs[1]_i_3_n_0 ),
        .I3(s_axi_ctrl_aresetn),
        .I4(oAxi_WReady_reg_0),
        .I5(s_axi_ctrl_wvalid),
        .O(\rClearIrqs[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rClearIrqs[1]_i_2 
       (.I0(\rWriteAddr_reg_n_0_[7] ),
        .I1(rWriteAddr[1]),
        .I2(rWriteAddr[0]),
        .O(\rClearIrqs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \rClearIrqs[1]_i_3 
       (.I0(rWriteAddr[5]),
        .I1(rWriteAddr[6]),
        .I2(s_axi_ctrl_wdata[1]),
        .I3(rWriteAddr[2]),
        .I4(rWriteAddr[3]),
        .I5(rWriteAddr[4]),
        .O(\rClearIrqs[1]_i_3_n_0 ));
  FDRE \rClearIrqs_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rClearIrqs[0]_i_1_n_0 ),
        .Q(\rClearIrqs_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rClearIrqs_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rClearIrqs[1]_i_1_n_0 ),
        .Q(\rClearIrqs_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    rEnable_i_1
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rIrqEnables[31]_i_2_n_0 ),
        .I2(rWriteAddr[3]),
        .I3(rWriteAddr[4]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(src_in),
        .O(rEnable_i_1_n_0));
  FDRE rEnable_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rEnable_i_1_n_0),
        .Q(src_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rIrqEnables[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rIrqEnables[31]_i_2_n_0 ),
        .I2(rWriteAddr[4]),
        .I3(rWriteAddr[3]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(\rIrqEnables_reg_n_0_[0] ),
        .O(\rIrqEnables[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rIrqEnables[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\rIrqEnables[31]_i_2_n_0 ),
        .I2(rWriteAddr[4]),
        .I3(rWriteAddr[3]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(\rIrqEnables_reg_n_0_[1] ),
        .O(\rIrqEnables[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \rIrqEnables[31]_i_1 
       (.I0(s_axi_ctrl_wdata[31]),
        .I1(\rIrqEnables[31]_i_2_n_0 ),
        .I2(rWriteAddr[4]),
        .I3(rWriteAddr[3]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(\rIrqEnables_reg_n_0_[31] ),
        .O(\rIrqEnables[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rIrqEnables[31]_i_2 
       (.I0(rWriteAddr[5]),
        .I1(rWriteAddr[6]),
        .O(\rIrqEnables[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \rIrqEnables[31]_i_3 
       (.I0(oAxi_WReady_reg_0),
        .I1(s_axi_ctrl_wvalid),
        .I2(\rWriteAddr_reg_n_0_[7] ),
        .I3(rWriteAddr[1]),
        .I4(rWriteAddr[0]),
        .I5(rWriteAddr[2]),
        .O(\rIrqEnables[31]_i_3_n_0 ));
  FDRE \rIrqEnables_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rIrqEnables[0]_i_1_n_0 ),
        .Q(\rIrqEnables_reg_n_0_[0] ),
        .R(SR));
  FDRE \rIrqEnables_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rIrqEnables[1]_i_1_n_0 ),
        .Q(\rIrqEnables_reg_n_0_[1] ),
        .R(SR));
  FDRE \rIrqEnables_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\rIrqEnables[31]_i_1_n_0 ),
        .Q(\rIrqEnables_reg_n_0_[31] ),
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
        .I2(\rIrqStatus_reg_n_0_[1] ),
        .O(\rIrqStatus[1]_i_1_n_0 ));
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
        .Q(\rIrqStatus_reg_n_0_[1] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    rIrq_i_1
       (.I0(\rIrqEnables_reg_n_0_[1] ),
        .I1(\rIrqStatus_reg_n_0_[1] ),
        .I2(\rIrqEnables_reg_n_0_[0] ),
        .I3(\rIrqStatus_reg_n_0_[0] ),
        .I4(\rIrqEnables_reg_n_0_[31] ),
        .I5(irq),
        .O(rIrq_i_1_n_0));
  FDRE rIrq_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rIrq_i_1_n_0),
        .Q(irq),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    rLR_i_1
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\rIrqEnables[31]_i_2_n_0 ),
        .I2(rWriteAddr[3]),
        .I3(rWriteAddr[4]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(rLR_reg_0),
        .O(rLR_i_1_n_0));
  FDRE rLR_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rLR_i_1_n_0),
        .Q(rLR_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    rOpmode_i_1
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\rIrqEnables[31]_i_2_n_0 ),
        .I2(rWriteAddr[3]),
        .I3(rWriteAddr[4]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .I5(rOpmode_reg_0),
        .O(rOpmode_i_1_n_0));
  FDRE rOpmode_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(rOpmode_i_1_n_0),
        .Q(rOpmode_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[0]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[0]),
        .O(\rReadAddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[1]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[1]),
        .O(\rReadAddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[2]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[2]),
        .O(\rReadAddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[3]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[3]),
        .O(\rReadAddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[4]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[4]),
        .O(\rReadAddr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rReadAddr[5]_i_1 
       (.I0(stmRead[1]),
        .I1(s_axi_ctrl_araddr[5]),
        .O(\rReadAddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
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
  LUT5 #(
    .INIT(32'h00100000)) 
    \rSclkDiv[7]_i_1 
       (.I0(rWriteAddr[3]),
        .I1(rWriteAddr[4]),
        .I2(rWriteAddr[5]),
        .I3(rWriteAddr[6]),
        .I4(\rIrqEnables[31]_i_3_n_0 ),
        .O(\rSclkDiv[7]_i_1_n_0 ));
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
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    rValidity_i_1
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\rIrqEnables[31]_i_2_n_0 ),
        .I2(rWriteAddr[3]),
        .I3(rWriteAddr[4]),
        .I4(\rAesChannelStatus[191]_i_2_n_0 ),
        .I5(rValidity_reg_0),
        .O(rValidity_i_1_n_0));
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
        .O(rWriteAddr_0));
  FDRE \rWriteAddr_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr_0),
        .D(s_axi_ctrl_awaddr[0]),
        .Q(rWriteAddr[0]),
        .R(SR));
  FDRE \rWriteAddr_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr_0),
        .D(s_axi_ctrl_awaddr[1]),
        .Q(rWriteAddr[1]),
        .R(SR));
  FDRE \rWriteAddr_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr_0),
        .D(s_axi_ctrl_awaddr[2]),
        .Q(rWriteAddr[2]),
        .R(SR));
  FDRE \rWriteAddr_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr_0),
        .D(s_axi_ctrl_awaddr[3]),
        .Q(rWriteAddr[3]),
        .R(SR));
  FDRE \rWriteAddr_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr_0),
        .D(s_axi_ctrl_awaddr[4]),
        .Q(rWriteAddr[4]),
        .R(SR));
  FDRE \rWriteAddr_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr_0),
        .D(s_axi_ctrl_awaddr[5]),
        .Q(rWriteAddr[5]),
        .R(SR));
  FDRE \rWriteAddr_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr_0),
        .D(s_axi_ctrl_awaddr[6]),
        .Q(rWriteAddr[6]),
        .R(SR));
  FDRE \rWriteAddr_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(rWriteAddr_0),
        .D(s_axi_ctrl_awaddr[7]),
        .Q(\rWriteAddr_reg_n_0_[7] ),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_ser
   (rSClkDelayed,
    mclk_nAudValid_0,
    rLRClkDelayed,
    \syncstages_ff_reg[1][1] ,
    rAudValid_reg_0,
    D,
    rAudValid_reg_1,
    Q,
    rSClkDelayed_reg_0,
    aud_mclk,
    iMRst0,
    rLoadSampleLeft,
    rLRClkDelayed_reg_0,
    rLoadSampleRight_reg_0,
    dest_out,
    aud_mrst,
    rAudValid_reg_2,
    \rAudData_reg[0]_0 ,
    \genblk3[0].mclk_rAudData_reg[0][15] ,
    p_1_in,
    mclk_rAudOverflowInhib_reg,
    \rAudData_reg[16]_0 ,
    mclk_rWaveGenCounter_reg,
    stmFIFOWriteCtrl__0,
    mclk_rAudOverflowInhib_reg_0,
    sdata_0_in);
  output rSClkDelayed;
  output mclk_nAudValid_0;
  output rLRClkDelayed;
  output \syncstages_ff_reg[1][1] ;
  output rAudValid_reg_0;
  output [15:0]D;
  output rAudValid_reg_1;
  output [15:0]Q;
  input rSClkDelayed_reg_0;
  input aud_mclk;
  input iMRst0;
  input rLoadSampleLeft;
  input rLRClkDelayed_reg_0;
  input rLoadSampleRight_reg_0;
  input dest_out;
  input aud_mrst;
  input rAudValid_reg_2;
  input \rAudData_reg[0]_0 ;
  input [2:0]\genblk3[0].mclk_rAudData_reg[0][15] ;
  input p_1_in;
  input mclk_rAudOverflowInhib_reg;
  input \rAudData_reg[16]_0 ;
  input [15:0]mclk_rWaveGenCounter_reg;
  input [0:0]stmFIFOWriteCtrl__0;
  input mclk_rAudOverflowInhib_reg_0;
  input sdata_0_in;

  wire [15:0]D;
  wire [15:0]Q;
  wire aud_mclk;
  wire aud_mrst;
  wire dest_out;
  wire [2:0]\genblk3[0].mclk_rAudData_reg[0][15] ;
  wire iMRst0;
  wire mclk_nAudValid_0;
  wire mclk_rAudOverflowInhib_reg;
  wire mclk_rAudOverflowInhib_reg_0;
  wire [15:0]mclk_rWaveGenCounter_reg;
  wire p_1_in;
  wire [31:15]rAudData;
  wire \rAudData[16]_i_1_n_0 ;
  wire \rAudData[17]_i_1_n_0 ;
  wire \rAudData[18]_i_1_n_0 ;
  wire \rAudData[19]_i_1_n_0 ;
  wire \rAudData[20]_i_1_n_0 ;
  wire \rAudData[21]_i_1_n_0 ;
  wire \rAudData[22]_i_1_n_0 ;
  wire \rAudData[23]_i_1_n_0 ;
  wire \rAudData[24]_i_1_n_0 ;
  wire \rAudData[25]_i_1_n_0 ;
  wire \rAudData[26]_i_1_n_0 ;
  wire \rAudData[27]_i_1_n_0 ;
  wire \rAudData[28]_i_1_n_0 ;
  wire \rAudData[29]_i_1_n_0 ;
  wire \rAudData[30]_i_1_n_0 ;
  wire \rAudData[31]_i_2_n_0 ;
  wire \rAudData_reg[0]_0 ;
  wire \rAudData_reg[16]_0 ;
  wire \rAudData_reg_n_0_[0] ;
  wire \rAudData_reg_n_0_[10] ;
  wire \rAudData_reg_n_0_[11] ;
  wire \rAudData_reg_n_0_[12] ;
  wire \rAudData_reg_n_0_[13] ;
  wire \rAudData_reg_n_0_[14] ;
  wire \rAudData_reg_n_0_[15] ;
  wire \rAudData_reg_n_0_[1] ;
  wire \rAudData_reg_n_0_[2] ;
  wire \rAudData_reg_n_0_[3] ;
  wire \rAudData_reg_n_0_[4] ;
  wire \rAudData_reg_n_0_[5] ;
  wire \rAudData_reg_n_0_[6] ;
  wire \rAudData_reg_n_0_[7] ;
  wire \rAudData_reg_n_0_[8] ;
  wire \rAudData_reg_n_0_[9] ;
  wire rAudValid_i_1_n_0;
  wire rAudValid_reg_0;
  wire rAudValid_reg_1;
  wire rAudValid_reg_2;
  wire rLRClkDelayed;
  wire rLRClkDelayed_reg_0;
  wire rLoadSampleLeft;
  wire rLoadSampleLeft__0;
  wire rLoadSampleRight;
  wire rLoadSampleRight_reg_0;
  wire rSClkDelayed;
  wire rSClkDelayed_reg_0;
  wire [31:0]rSDataIn;
  wire rSDataIn_0;
  wire sdata_0_in;
  wire [0:0]stmFIFOWriteCtrl__0;
  wire \syncstages_ff_reg[1][1] ;

  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][0]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[0]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][10]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[10]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[10] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][11]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[11]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[11] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][12]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[12]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[12] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][13]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[13]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[13] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][14]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[14]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[14] ),
        .O(D[14]));
  LUT3 #(
    .INIT(8'h40)) 
    \genblk3[0].mclk_rAudData[0][15]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0][15] [1]),
        .I1(mclk_nAudValid_0),
        .I2(\genblk3[0].mclk_rAudData_reg[0][15] [0]),
        .O(\syncstages_ff_reg[1][1] ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][15]_i_2 
       (.I0(mclk_rWaveGenCounter_reg[15]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[15] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][1]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[1]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][2]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[2]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][3]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[3]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][4]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[4]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][5]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[5]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][6]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[6]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][7]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[7]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[7] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][8]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[8]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[8] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \genblk3[0].mclk_rAudData[0][9]_i_1 
       (.I0(mclk_rWaveGenCounter_reg[9]),
        .I1(\genblk3[0].mclk_rAudData_reg[0][15] [2]),
        .I2(\rAudData_reg_n_0_[9] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF7F0)) 
    mclk_rAudOverflowInhib_i_1
       (.I0(mclk_nAudValid_0),
        .I1(stmFIFOWriteCtrl__0),
        .I2(mclk_rAudOverflowInhib_reg_0),
        .I3(mclk_rAudOverflowInhib_reg),
        .O(rAudValid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h08)) 
    mclk_rAudOverflow_i_1
       (.I0(mclk_nAudValid_0),
        .I1(p_1_in),
        .I2(mclk_rAudOverflowInhib_reg),
        .O(rAudValid_reg_0));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \rAudData[15]_i_1 
       (.I0(rAudValid_reg_2),
        .I1(rLRClkDelayed),
        .I2(rSClkDelayed),
        .I3(rSClkDelayed_reg_0),
        .I4(\rAudData_reg[0]_0 ),
        .I5(rLoadSampleLeft__0),
        .O(rAudData[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[16]_i_1 
       (.I0(rSDataIn[0]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[16]),
        .O(\rAudData[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[17]_i_1 
       (.I0(rSDataIn[1]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[17]),
        .O(\rAudData[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[18]_i_1 
       (.I0(rSDataIn[2]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[18]),
        .O(\rAudData[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[19]_i_1 
       (.I0(rSDataIn[3]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[19]),
        .O(\rAudData[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[20]_i_1 
       (.I0(rSDataIn[4]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[20]),
        .O(\rAudData[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[21]_i_1 
       (.I0(rSDataIn[5]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[21]),
        .O(\rAudData[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[22]_i_1 
       (.I0(rSDataIn[6]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[22]),
        .O(\rAudData[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[23]_i_1 
       (.I0(rSDataIn[7]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[23]),
        .O(\rAudData[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[24]_i_1 
       (.I0(rSDataIn[8]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[24]),
        .O(\rAudData[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[25]_i_1 
       (.I0(rSDataIn[9]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[25]),
        .O(\rAudData[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[26]_i_1 
       (.I0(rSDataIn[10]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[26]),
        .O(\rAudData[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[27]_i_1 
       (.I0(rSDataIn[11]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[27]),
        .O(\rAudData[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[28]_i_1 
       (.I0(rSDataIn[12]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[28]),
        .O(\rAudData[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[29]_i_1 
       (.I0(rSDataIn[13]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[29]),
        .O(\rAudData[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[30]_i_1 
       (.I0(rSDataIn[14]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[30]),
        .O(\rAudData[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    \rAudData[31]_i_1 
       (.I0(rAudValid_reg_2),
        .I1(rLRClkDelayed),
        .I2(rSClkDelayed),
        .I3(rSClkDelayed_reg_0),
        .I4(\rAudData_reg[0]_0 ),
        .I5(rLoadSampleRight),
        .O(rAudData[31]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \rAudData[31]_i_2 
       (.I0(rSDataIn[15]),
        .I1(\rAudData_reg[16]_0 ),
        .I2(\rAudData_reg[0]_0 ),
        .I3(rSDataIn[31]),
        .O(\rAudData[31]_i_2_n_0 ));
  FDRE \rAudData_reg[0] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[16]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rAudData_reg[10] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[26]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rAudData_reg[11] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[27]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rAudData_reg[12] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[28]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rAudData_reg[13] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[29]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rAudData_reg[14] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[30]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rAudData_reg[15] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[31]_i_2_n_0 ),
        .Q(\rAudData_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rAudData_reg[16] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[16]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rAudData_reg[17] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[17]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rAudData_reg[18] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[18]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rAudData_reg[19] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[19]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \rAudData_reg[1] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[17]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rAudData_reg[20] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[20]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \rAudData_reg[21] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[21]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \rAudData_reg[22] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[22]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \rAudData_reg[23] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[23]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \rAudData_reg[24] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[24]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \rAudData_reg[25] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[25]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \rAudData_reg[26] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[26]_i_1_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \rAudData_reg[27] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[27]_i_1_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \rAudData_reg[28] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[28]_i_1_n_0 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \rAudData_reg[29] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[29]_i_1_n_0 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \rAudData_reg[2] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[18]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rAudData_reg[30] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[30]_i_1_n_0 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \rAudData_reg[31] 
       (.C(aud_mclk),
        .CE(rAudData[31]),
        .D(\rAudData[31]_i_2_n_0 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \rAudData_reg[3] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[19]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rAudData_reg[4] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[20]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rAudData_reg[5] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[21]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rAudData_reg[6] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[22]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rAudData_reg[7] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[23]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rAudData_reg[8] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[24]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rAudData_reg[9] 
       (.C(aud_mclk),
        .CE(rAudData[15]),
        .D(\rAudData[25]_i_1_n_0 ),
        .Q(\rAudData_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    rAudValid_i_1
       (.I0(rSClkDelayed_reg_0),
        .I1(rSClkDelayed),
        .I2(rLRClkDelayed),
        .I3(rAudValid_reg_2),
        .I4(\rAudData_reg[0]_0 ),
        .I5(rLoadSampleRight),
        .O(rAudValid_i_1_n_0));
  FDRE rAudValid_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rAudValid_i_1_n_0),
        .Q(mclk_nAudValid_0),
        .R(1'b0));
  FDRE rLRClkDelayed_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rLRClkDelayed_reg_0),
        .Q(rLRClkDelayed),
        .R(iMRst0));
  FDRE rLoadSampleLeft_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rLoadSampleLeft),
        .Q(rLoadSampleLeft__0),
        .R(iMRst0));
  FDRE rLoadSampleRight_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rLoadSampleRight_reg_0),
        .Q(rLoadSampleRight),
        .R(1'b0));
  FDRE rSClkDelayed_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rSClkDelayed_reg_0),
        .Q(rSClkDelayed),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \rSDataIn[31]_i_1 
       (.I0(rSClkDelayed),
        .I1(rSClkDelayed_reg_0),
        .I2(dest_out),
        .I3(aud_mrst),
        .O(rSDataIn_0));
  FDRE \rSDataIn_reg[0] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(sdata_0_in),
        .Q(rSDataIn[0]),
        .R(1'b0));
  FDRE \rSDataIn_reg[10] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[9]),
        .Q(rSDataIn[10]),
        .R(1'b0));
  FDRE \rSDataIn_reg[11] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[10]),
        .Q(rSDataIn[11]),
        .R(1'b0));
  FDRE \rSDataIn_reg[12] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[11]),
        .Q(rSDataIn[12]),
        .R(1'b0));
  FDRE \rSDataIn_reg[13] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[12]),
        .Q(rSDataIn[13]),
        .R(1'b0));
  FDRE \rSDataIn_reg[14] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[13]),
        .Q(rSDataIn[14]),
        .R(1'b0));
  FDRE \rSDataIn_reg[15] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[14]),
        .Q(rSDataIn[15]),
        .R(1'b0));
  FDRE \rSDataIn_reg[16] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[15]),
        .Q(rSDataIn[16]),
        .R(1'b0));
  FDRE \rSDataIn_reg[17] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[16]),
        .Q(rSDataIn[17]),
        .R(1'b0));
  FDRE \rSDataIn_reg[18] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[17]),
        .Q(rSDataIn[18]),
        .R(1'b0));
  FDRE \rSDataIn_reg[19] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[18]),
        .Q(rSDataIn[19]),
        .R(1'b0));
  FDRE \rSDataIn_reg[1] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[0]),
        .Q(rSDataIn[1]),
        .R(1'b0));
  FDRE \rSDataIn_reg[20] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[19]),
        .Q(rSDataIn[20]),
        .R(1'b0));
  FDRE \rSDataIn_reg[21] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[20]),
        .Q(rSDataIn[21]),
        .R(1'b0));
  FDRE \rSDataIn_reg[22] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[21]),
        .Q(rSDataIn[22]),
        .R(1'b0));
  FDRE \rSDataIn_reg[23] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[22]),
        .Q(rSDataIn[23]),
        .R(1'b0));
  FDRE \rSDataIn_reg[24] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[23]),
        .Q(rSDataIn[24]),
        .R(1'b0));
  FDRE \rSDataIn_reg[25] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[24]),
        .Q(rSDataIn[25]),
        .R(1'b0));
  FDRE \rSDataIn_reg[26] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[25]),
        .Q(rSDataIn[26]),
        .R(1'b0));
  FDRE \rSDataIn_reg[27] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[26]),
        .Q(rSDataIn[27]),
        .R(1'b0));
  FDRE \rSDataIn_reg[28] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[27]),
        .Q(rSDataIn[28]),
        .R(1'b0));
  FDRE \rSDataIn_reg[29] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[28]),
        .Q(rSDataIn[29]),
        .R(1'b0));
  FDRE \rSDataIn_reg[2] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[1]),
        .Q(rSDataIn[2]),
        .R(1'b0));
  FDRE \rSDataIn_reg[30] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[29]),
        .Q(rSDataIn[30]),
        .R(1'b0));
  FDRE \rSDataIn_reg[31] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[30]),
        .Q(rSDataIn[31]),
        .R(1'b0));
  FDRE \rSDataIn_reg[3] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[2]),
        .Q(rSDataIn[3]),
        .R(1'b0));
  FDRE \rSDataIn_reg[4] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[3]),
        .Q(rSDataIn[4]),
        .R(1'b0));
  FDRE \rSDataIn_reg[5] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[4]),
        .Q(rSDataIn[5]),
        .R(1'b0));
  FDRE \rSDataIn_reg[6] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[5]),
        .Q(rSDataIn[6]),
        .R(1'b0));
  FDRE \rSDataIn_reg[7] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[6]),
        .Q(rSDataIn[7]),
        .R(1'b0));
  FDRE \rSDataIn_reg[8] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[7]),
        .Q(rSDataIn[8]),
        .R(1'b0));
  FDRE \rSDataIn_reg[9] 
       (.C(aud_mclk),
        .CE(rSDataIn_0),
        .D(rSDataIn[8]),
        .Q(rSDataIn[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_sys
   (oAxi_WReady_reg,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    m_axis_aud_tid,
    m_axis_aud_tdata,
    rSClk_reg,
    rLRClk_reg,
    s_axi_ctrl_awready,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arready,
    s_axi_ctrl_rvalid,
    irq,
    rAudValid_Out_reg,
    s_axi_ctrl_bready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_aclk,
    aud_mclk,
    m_axis_aud_aclk,
    aud_mrst,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aresetn,
    sdata_0_in,
    s_axi_ctrl_rready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_araddr,
    m_axis_aud_aresetn,
    m_axis_aud_tready);
  output oAxi_WReady_reg;
  output [31:0]s_axi_ctrl_rdata;
  output [0:0]s_axi_ctrl_rresp;
  output [2:0]m_axis_aud_tid;
  output [28:0]m_axis_aud_tdata;
  output rSClk_reg;
  output rLRClk_reg;
  output s_axi_ctrl_awready;
  output s_axi_ctrl_bvalid;
  output [0:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_arready;
  output s_axi_ctrl_rvalid;
  output irq;
  output rAudValid_Out_reg;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_aclk;
  input aud_mclk;
  input m_axis_aud_aclk;
  input aud_mrst;
  input [7:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aresetn;
  input sdata_0_in;
  input s_axi_ctrl_rready;
  input s_axi_ctrl_arvalid;
  input [7:0]s_axi_ctrl_araddr;
  input m_axis_aud_aresetn;
  input m_axis_aud_tready;

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
  wire \FSM_onehot_stmFIFOWriteCtrl[2]_i_3_n_0 ;
  wire \FSM_onehot_stmFIFOWriteCtrl_reg_n_0_[0] ;
  wire I2S_RX_V1_0_AXI_INST_n_1;
  wire I2S_RX_V1_0_TIMGEN_INST_n_3;
  wire I2S_RX_V1_0_TIMGEN_INST_n_5;
  wire aclk_LR;
  wire aclk_nAesBlockComplete;
  wire aclk_nAesCaptChannelStatus;
  wire [191:0]aclk_nAesChannelStatus;
  wire aclk_nAudOverflow;
  wire [2:0]\aclk_nChMuxSelect[0]_1 ;
  wire aclk_nEnable;
  wire [7:0]aclk_nSclkDiv;
  wire aclk_nValidity;
  wire aclk_opmode;
  wire aud_mclk;
  wire aud_mrst;
  wire axis_nAesBlockComplete;
  wire axis_nAesCaptChannelStatus;
  wire [191:0]axis_nAesChannelStatus;
  wire [27:4]axis_nAxis_TData_FromFIFO;
  wire [2:0]axis_nAxis_TID_FromFIFO;
  wire axis_nAxis_TValid_FromFIFO;
  wire axis_nEnable;
  wire axis_nValidity;
  wire follower_empty;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_10 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_11 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_12 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_13 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_14 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_15 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_16 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_17 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_18 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_19 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_20 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_21 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_22 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_23 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_24 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_25 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_26 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_27 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_28 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_29 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_30 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_31 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_32 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_33 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_34 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_35 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_36 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_37 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_4 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_5 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_6 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_7 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_8 ;
  wire \genblk3[0].I2S_RX_V1_0_SER_INST_n_9 ;
  wire \genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ;
  wire [31:0]\genblk3[0].mclk_rAudData_reg[0] ;
  wire iMRst0;
  wire iRst0;
  wire iRst13_in;
  wire irq;
  wire m_axis_aud_aclk;
  wire m_axis_aud_aresetn;
  wire [28:0]m_axis_aud_tdata;
  wire [2:0]m_axis_aud_tid;
  wire m_axis_aud_tready;
  wire mclk_LR;
  wire mclk_nAudValid_0;
  wire [2:0]\mclk_nChMuxSelect[0]_0 ;
  wire mclk_nEnable;
  wire [7:0]mclk_nSclkDiv;
  wire mclk_opmode;
  wire mclk_rAudOverflow;
  wire mclk_rAudOverflowInhib_reg_n_0;
  wire \mclk_rChannelCount[0]_i_1_n_0 ;
  wire \mclk_rChannelCount[1]_i_1_n_0 ;
  wire \mclk_rChannelCount_reg_n_0_[0] ;
  wire \mclk_rChannelCount_reg_n_0_[1] ;
  wire mclk_rDoLowerChannel_reg_n_0;
  wire \mclk_rWaveGenCounter[0]_i_2_n_0 ;
  wire [15:0]mclk_rWaveGenCounter_reg;
  wire \mclk_rWaveGenCounter_reg[0]_i_1_n_0 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_1_n_1 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_1_n_2 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_1_n_3 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_1_n_4 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_1_n_5 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_1_n_6 ;
  wire \mclk_rWaveGenCounter_reg[0]_i_1_n_7 ;
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
  wire [27:12]mclk_rWriteData;
  wire \mclk_rWriteData_reg_n_0_[12] ;
  wire \mclk_rWriteData_reg_n_0_[13] ;
  wire \mclk_rWriteData_reg_n_0_[14] ;
  wire \mclk_rWriteData_reg_n_0_[15] ;
  wire \mclk_rWriteData_reg_n_0_[16] ;
  wire \mclk_rWriteData_reg_n_0_[17] ;
  wire \mclk_rWriteData_reg_n_0_[18] ;
  wire \mclk_rWriteData_reg_n_0_[19] ;
  wire \mclk_rWriteData_reg_n_0_[20] ;
  wire \mclk_rWriteData_reg_n_0_[21] ;
  wire \mclk_rWriteData_reg_n_0_[22] ;
  wire \mclk_rWriteData_reg_n_0_[23] ;
  wire \mclk_rWriteData_reg_n_0_[24] ;
  wire \mclk_rWriteData_reg_n_0_[25] ;
  wire \mclk_rWriteData_reg_n_0_[26] ;
  wire \mclk_rWriteData_reg_n_0_[27] ;
  wire \mclk_rWriteID[0]_i_1_n_0 ;
  wire \mclk_rWriteID[1]_i_1_n_0 ;
  wire \mclk_rWriteID[2]_i_1_n_0 ;
  wire \mclk_rWriteID_reg_n_0_[0] ;
  wire \mclk_rWriteID_reg_n_0_[1] ;
  wire \mclk_rWriteID_reg_n_0_[2] ;
  wire mclk_rWriteValid_i_2_n_0;
  wire mclk_rWriteValid_reg_n_0;
  wire oAxi_WReady_reg;
  wire p_1_in;
  wire rAudValid_Out_reg;
  wire rLRClkDelayed;
  wire rLRClk_reg;
  wire rLoadSampleLeft;
  wire rSClkDelayed;
  wire rSClk_reg;
  wire rd_en;
  wire rdy_init_del;
  wire rdy_ready1;
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
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire sdata_0_in;
  wire [2:1]stmFIFOWriteCtrl__0;
  wire [3:3]\NLW_mclk_rWaveGenCounter_reg[12]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_async_fifo AXIS_FIFO_INST
       (.\FSM_onehot_stmFIFOWriteCtrl_reg[2] (AXIS_FIFO_INST_n_29),
        .\FSM_onehot_stmFIFOWriteCtrl_reg[2]_0 (AXIS_FIFO_INST_n_30),
        .\FSM_onehot_stmFIFOWriteCtrl_reg[2]_1 (AXIS_FIFO_INST_n_34),
        .\FSM_onehot_stmFIFOWriteCtrl_reg[2]_2 (AXIS_FIFO_INST_n_36),
        .\FSM_onehot_stmFIFOWriteCtrl_reg[2]_3 (\FSM_onehot_stmFIFOWriteCtrl[2]_i_3_n_0 ),
        .\FSM_onehot_stmFIFOWriteCtrl_reg[2]_4 (\FSM_onehot_stmFIFOWriteCtrl_reg_n_0_[0] ),
        .aud_mclk(aud_mclk),
        .data_valid(axis_nAxis_TValid_FromFIFO),
        .dest_out(\mclk_nChMuxSelect[0]_0 [1:0]),
        .din({\mclk_rWriteData_reg_n_0_[27] ,\mclk_rWriteData_reg_n_0_[26] ,\mclk_rWriteData_reg_n_0_[25] ,\mclk_rWriteData_reg_n_0_[24] ,\mclk_rWriteData_reg_n_0_[23] ,\mclk_rWriteData_reg_n_0_[22] ,\mclk_rWriteData_reg_n_0_[21] ,\mclk_rWriteData_reg_n_0_[20] ,\mclk_rWriteData_reg_n_0_[19] ,\mclk_rWriteData_reg_n_0_[18] ,\mclk_rWriteData_reg_n_0_[17] ,\mclk_rWriteData_reg_n_0_[16] ,\mclk_rWriteData_reg_n_0_[15] ,\mclk_rWriteData_reg_n_0_[14] ,\mclk_rWriteData_reg_n_0_[13] ,\mclk_rWriteData_reg_n_0_[12] ,\mclk_rWriteID_reg_n_0_[2] ,\mclk_rWriteID_reg_n_0_[1] ,\mclk_rWriteID_reg_n_0_[0] }),
        .dout({axis_nAxis_TData_FromFIFO,axis_nAxis_TID_FromFIFO}),
        .follower_empty(follower_empty),
        .follower_empty_reg(rAudValid_Out_reg),
        .\gen_fwft.gdvld_fwft.data_valid_fwft_reg (AXIS_FIFO_INST_n_33),
        .\gen_fwft.gdvld_fwft.data_valid_fwft_reg_0 (AXIS_FIFO_INST_n_37),
        .\gen_fwft.gdvld_fwft.data_valid_fwft_reg_1 (AXIS_FIFO_INST_n_38),
        .\genblk3[0].mclk_rAudValid_reg[0] (AXIS_FIFO_INST_n_32),
        .iMRst0(iMRst0),
        .iRst0(iRst0),
        .m_axis_aud_aclk(m_axis_aud_aclk),
        .m_axis_aud_tready(m_axis_aud_tready),
        .mclk_nAudValid_0(mclk_nAudValid_0),
        .\mclk_rChannelCount_reg[0] (AXIS_FIFO_INST_n_31),
        .mclk_rDoLowerChannel_reg(mclk_rDoLowerChannel_reg_n_0),
        .\mclk_rWriteData_reg[12] (\mclk_rChannelCount_reg_n_0_[0] ),
        .\mclk_rWriteData_reg[12]_0 (\mclk_rChannelCount_reg_n_0_[1] ),
        .mclk_rWriteValid_reg(mclk_rWriteValid_reg_n_0),
        .mclk_rWriteValid_reg_0(mclk_rWriteValid_i_2_n_0),
        .p_1_in(p_1_in),
        .rAudValid_reg(AXIS_FIFO_INST_n_28),
        .rd_en(rd_en),
        .rdy_init_del(rdy_init_del),
        .rdy_ready1(rdy_ready1),
        .stmFIFOWriteCtrl__0(stmFIFOWriteCtrl__0),
        .\syncstages_ff_reg[1][1] (AXIS_FIFO_INST_n_35));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0__xdcDup__1 CDC_AESBLKCMPLT_INST
       (.dest_clk(s_axi_ctrl_aclk),
        .dest_pulse(aclk_nAesBlockComplete),
        .dest_rst(I2S_RX_V1_0_AXI_INST_n_1),
        .src_clk(m_axis_aud_aclk),
        .src_pulse(axis_nAesBlockComplete),
        .src_rst(iRst13_in));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse CDC_AESCAPTCHSTS_INST
       (.dest_clk(m_axis_aud_aclk),
        .dest_pulse(axis_nAesCaptChannelStatus),
        .dest_rst(iRst13_in),
        .src_clk(s_axi_ctrl_aclk),
        .src_pulse(aclk_nAesCaptChannelStatus),
        .src_rst(I2S_RX_V1_0_AXI_INST_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    CDC_AESCAPTCHSTS_INST_i_1
       (.I0(m_axis_aud_aresetn),
        .O(iRst13_in));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "192" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized1 CDC_AESCHSTS_INST
       (.dest_clk(m_axis_aud_aclk),
        .dest_out(axis_nAesChannelStatus),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nAesChannelStatus));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* RST_USED = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "PULSE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_pulse__parameterized0 CDC_AUDOVF_INST
       (.dest_clk(s_axi_ctrl_aclk),
        .dest_pulse(aclk_nAudOverflow),
        .dest_rst(I2S_RX_V1_0_AXI_INST_n_1),
        .src_clk(aud_mclk),
        .src_pulse(mclk_rAudOverflow),
        .src_rst(aud_mrst));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__8 CDC_ENABLE_AXIS_INST
       (.dest_clk(m_axis_aud_aclk),
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__7 CDC_ENABLE_MCLK_INST
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__5 CDC_LR_INST
       (.dest_clk(aud_mclk),
        .dest_out(mclk_LR),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_LR));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__6 CDC_OPMODE_INST
       (.dest_clk(aud_mclk),
        .dest_out(mclk_opmode),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_opmode));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "8" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0 CDC_SCLKDIV_INST
       (.dest_clk(aud_mclk),
        .dest_out(mclk_nSclkDiv),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nSclkDiv));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single CDC_VALIDITY_AXIS_INST
       (.dest_clk(m_axis_aud_aclk),
        .dest_out(axis_nValidity),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(aclk_nValidity));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_stmFIFOWriteCtrl[2]_i_3 
       (.I0(\mclk_rChannelCount_reg_n_0_[0] ),
        .I1(\mclk_rChannelCount_reg_n_0_[1] ),
        .O(\FSM_onehot_stmFIFOWriteCtrl[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIdle:001,sWaitForI2sSync:010,sWriteToFIFO:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_stmFIFOWriteCtrl_reg[0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_31),
        .Q(\FSM_onehot_stmFIFOWriteCtrl_reg_n_0_[0] ),
        .S(iMRst0));
  (* FSM_ENCODED_STATES = "sIdle:001,sWaitForI2sSync:010,sWriteToFIFO:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmFIFOWriteCtrl_reg[1] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_30),
        .Q(stmFIFOWriteCtrl__0[1]),
        .R(iMRst0));
  (* FSM_ENCODED_STATES = "sIdle:001,sWaitForI2sSync:010,sWriteToFIFO:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stmFIFOWriteCtrl_reg[2] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_28),
        .Q(stmFIFOWriteCtrl__0[2]),
        .R(iMRst0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_aes_enc I2S_RX_V1_0_AES_ENCODER_INST
       (.D(axis_nValidity),
        .E(axis_nAesCaptChannelStatus),
        .data_valid(axis_nAxis_TValid_FromFIFO),
        .dest_out(axis_nEnable),
        .dout({axis_nAxis_TData_FromFIFO,axis_nAxis_TID_FromFIFO}),
        .follower_empty(follower_empty),
        .follower_empty_reg_0(AXIS_FIFO_INST_n_37),
        .iRst0(iRst0),
        .m_axis_aud_aclk(m_axis_aud_aclk),
        .m_axis_aud_aresetn(m_axis_aud_aresetn),
        .m_axis_aud_tdata(m_axis_aud_tdata),
        .m_axis_aud_tid(m_axis_aud_tid),
        .m_axis_aud_tready(m_axis_aud_tready),
        .rAudValid_Out_reg_0(rAudValid_Out_reg),
        .\rChannelStatusIn_reg[191]_0 (axis_nAesChannelStatus),
        .rd_en(rd_en),
        .rdy_init_del(rdy_init_del),
        .rdy_init_del_reg_0(AXIS_FIFO_INST_n_33),
        .rdy_ready1(rdy_ready1),
        .rdy_ready1_reg_0(AXIS_FIFO_INST_n_38),
        .src_pulse(axis_nAesBlockComplete));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_axi I2S_RX_V1_0_AXI_INST
       (.Q(aclk_nSclkDiv),
        .SR(I2S_RX_V1_0_AXI_INST_n_1),
        .dest_pulse(aclk_nAesBlockComplete),
        .irq(irq),
        .oAxi_WReady_reg_0(oAxi_WReady_reg),
        .\rAesChannelStatus_reg[191]_0 (aclk_nAesChannelStatus),
        .\rChannelMux_01_reg[2]_0 (\aclk_nChMuxSelect[0]_1 ),
        .\rIrqStatus_reg[1]_0 (aclk_nAudOverflow),
        .rLR_reg_0(aclk_LR),
        .rOpmode_reg_0(aclk_opmode),
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
        .src_pulse(aclk_nAesCaptChannelStatus));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_timgen I2S_RX_V1_0_TIMGEN_INST
       (.aud_mclk(aud_mclk),
        .aud_mrst(aud_mrst),
        .aud_mrst_0(I2S_RX_V1_0_TIMGEN_INST_n_3),
        .dest_out(mclk_nSclkDiv),
        .iMRst0(iMRst0),
        .\rDivCounter_reg[0]_0 (mclk_nEnable),
        .rLRClk1_carry_0(mclk_opmode),
        .rLRClkDelayed(rLRClkDelayed),
        .rLRClk_reg_0(rLRClk_reg),
        .rLRClk_reg_1(I2S_RX_V1_0_TIMGEN_INST_n_5),
        .rLoadSampleLeft(rLoadSampleLeft),
        .rSClkDelayed(rSClkDelayed),
        .rSClk_reg_0(rSClk_reg));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single \genblk1[0].CDC_CHMUX_INST 
       (.dest_clk(aud_mclk),
        .dest_out(\mclk_nChMuxSelect[0]_0 ),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(\aclk_nChMuxSelect[0]_1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_ser \genblk3[0].I2S_RX_V1_0_SER_INST 
       (.D({\genblk3[0].I2S_RX_V1_0_SER_INST_n_5 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_6 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_7 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_8 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_9 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_10 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_11 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_12 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_13 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_14 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_15 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_16 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_17 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_18 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_19 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_20 }),
        .Q({\genblk3[0].I2S_RX_V1_0_SER_INST_n_22 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_23 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_24 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_25 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_26 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_27 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_28 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_29 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_30 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_31 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_32 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_33 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_34 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_35 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_36 ,\genblk3[0].I2S_RX_V1_0_SER_INST_n_37 }),
        .aud_mclk(aud_mclk),
        .aud_mrst(aud_mrst),
        .dest_out(mclk_nEnable),
        .\genblk3[0].mclk_rAudData_reg[0][15] (\mclk_nChMuxSelect[0]_0 ),
        .iMRst0(iMRst0),
        .mclk_nAudValid_0(mclk_nAudValid_0),
        .mclk_rAudOverflowInhib_reg(mclk_rAudOverflowInhib_reg_n_0),
        .mclk_rAudOverflowInhib_reg_0(\FSM_onehot_stmFIFOWriteCtrl_reg_n_0_[0] ),
        .mclk_rWaveGenCounter_reg(mclk_rWaveGenCounter_reg),
        .p_1_in(p_1_in),
        .\rAudData_reg[0]_0 (mclk_opmode),
        .\rAudData_reg[16]_0 (mclk_LR),
        .rAudValid_reg_0(\genblk3[0].I2S_RX_V1_0_SER_INST_n_4 ),
        .rAudValid_reg_1(\genblk3[0].I2S_RX_V1_0_SER_INST_n_21 ),
        .rAudValid_reg_2(rLRClk_reg),
        .rLRClkDelayed(rLRClkDelayed),
        .rLRClkDelayed_reg_0(I2S_RX_V1_0_TIMGEN_INST_n_5),
        .rLoadSampleLeft(rLoadSampleLeft),
        .rLoadSampleRight_reg_0(I2S_RX_V1_0_TIMGEN_INST_n_3),
        .rSClkDelayed(rSClkDelayed),
        .rSClkDelayed_reg_0(rSClk_reg),
        .sdata_0_in(sdata_0_in),
        .stmFIFOWriteCtrl__0(stmFIFOWriteCtrl__0[1]),
        .\syncstages_ff_reg[1][1] (\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \genblk3[0].mclk_rAudData[0][31]_i_1 
       (.I0(\mclk_nChMuxSelect[0]_0 [2]),
        .I1(\mclk_nChMuxSelect[0]_0 [0]),
        .I2(mclk_nAudValid_0),
        .I3(\mclk_nChMuxSelect[0]_0 [1]),
        .O(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][0] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_20 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [0]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][10] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_10 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [10]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][11] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_9 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [11]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][12] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_8 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [12]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][13] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_7 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [13]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][14] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_6 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [14]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][15] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_5 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [15]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][16] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_37 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [16]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][17] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_36 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [17]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][18] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_35 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [18]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][19] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_34 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [19]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][1] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_19 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [1]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][20] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_33 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [20]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][21] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_32 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [21]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][22] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_31 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [22]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][23] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_30 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [23]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][24] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_29 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [24]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][25] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_28 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [25]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][26] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_27 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [26]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][27] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_26 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [27]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][28] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_25 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [28]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][29] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_24 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [29]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][2] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_18 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [2]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][30] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_23 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [30]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][31] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_22 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [31]),
        .R(\genblk3[0].mclk_rAudData[0][31]_i_1_n_0 ));
  FDRE \genblk3[0].mclk_rAudData_reg[0][3] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_17 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [3]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][4] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_16 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [4]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][5] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_15 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [5]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][6] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_14 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [6]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][7] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_13 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [7]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][8] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_12 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [8]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudData_reg[0][9] 
       (.C(aud_mclk),
        .CE(\genblk3[0].I2S_RX_V1_0_SER_INST_n_3 ),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_11 ),
        .Q(\genblk3[0].mclk_rAudData_reg[0] [9]),
        .R(1'b0));
  FDRE \genblk3[0].mclk_rAudValid_reg[0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_35),
        .Q(p_1_in),
        .R(iMRst0));
  FDSE mclk_rAudOverflowInhib_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_21 ),
        .Q(mclk_rAudOverflowInhib_reg_n_0),
        .S(iMRst0));
  FDRE mclk_rAudOverflow_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\genblk3[0].I2S_RX_V1_0_SER_INST_n_4 ),
        .Q(mclk_rAudOverflow),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h585A5A5A)) 
    \mclk_rChannelCount[0]_i_1 
       (.I0(AXIS_FIFO_INST_n_29),
        .I1(\mclk_rChannelCount_reg_n_0_[1] ),
        .I2(\mclk_rChannelCount_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(\mclk_rChannelCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \mclk_rChannelCount[1]_i_1 
       (.I0(AXIS_FIFO_INST_n_29),
        .I1(\mclk_rChannelCount_reg_n_0_[1] ),
        .I2(\mclk_rChannelCount_reg_n_0_[0] ),
        .O(\mclk_rChannelCount[1]_i_1_n_0 ));
  FDRE \mclk_rChannelCount_reg[0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rChannelCount[0]_i_1_n_0 ),
        .Q(\mclk_rChannelCount_reg_n_0_[0] ),
        .R(iMRst0));
  FDRE \mclk_rChannelCount_reg[1] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rChannelCount[1]_i_1_n_0 ),
        .Q(\mclk_rChannelCount_reg_n_0_[1] ),
        .R(iMRst0));
  FDRE mclk_rDoLowerChannel_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_34),
        .Q(mclk_rDoLowerChannel_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mclk_rWaveGenCounter[0]_i_2 
       (.I0(mclk_rWaveGenCounter_reg[0]),
        .O(\mclk_rWaveGenCounter[0]_i_2_n_0 ));
  FDRE \mclk_rWaveGenCounter_reg[0] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[0]_i_1_n_7 ),
        .Q(mclk_rWaveGenCounter_reg[0]),
        .R(iMRst0));
  CARRY4 \mclk_rWaveGenCounter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\mclk_rWaveGenCounter_reg[0]_i_1_n_0 ,\mclk_rWaveGenCounter_reg[0]_i_1_n_1 ,\mclk_rWaveGenCounter_reg[0]_i_1_n_2 ,\mclk_rWaveGenCounter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\mclk_rWaveGenCounter_reg[0]_i_1_n_4 ,\mclk_rWaveGenCounter_reg[0]_i_1_n_5 ,\mclk_rWaveGenCounter_reg[0]_i_1_n_6 ,\mclk_rWaveGenCounter_reg[0]_i_1_n_7 }),
        .S({mclk_rWaveGenCounter_reg[3:1],\mclk_rWaveGenCounter[0]_i_2_n_0 }));
  FDRE \mclk_rWaveGenCounter_reg[10] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[8]_i_1_n_5 ),
        .Q(mclk_rWaveGenCounter_reg[10]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[11] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[8]_i_1_n_4 ),
        .Q(mclk_rWaveGenCounter_reg[11]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[12] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
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
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[12]_i_1_n_6 ),
        .Q(mclk_rWaveGenCounter_reg[13]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[14] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[12]_i_1_n_5 ),
        .Q(mclk_rWaveGenCounter_reg[14]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[15] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[12]_i_1_n_4 ),
        .Q(mclk_rWaveGenCounter_reg[15]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[1] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[0]_i_1_n_6 ),
        .Q(mclk_rWaveGenCounter_reg[1]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[2] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[0]_i_1_n_5 ),
        .Q(mclk_rWaveGenCounter_reg[2]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[3] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[0]_i_1_n_4 ),
        .Q(mclk_rWaveGenCounter_reg[3]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[4] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[4]_i_1_n_7 ),
        .Q(mclk_rWaveGenCounter_reg[4]),
        .R(iMRst0));
  CARRY4 \mclk_rWaveGenCounter_reg[4]_i_1 
       (.CI(\mclk_rWaveGenCounter_reg[0]_i_1_n_0 ),
        .CO({\mclk_rWaveGenCounter_reg[4]_i_1_n_0 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_1 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_2 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mclk_rWaveGenCounter_reg[4]_i_1_n_4 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_5 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_6 ,\mclk_rWaveGenCounter_reg[4]_i_1_n_7 }),
        .S(mclk_rWaveGenCounter_reg[7:4]));
  FDRE \mclk_rWaveGenCounter_reg[5] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[4]_i_1_n_6 ),
        .Q(mclk_rWaveGenCounter_reg[5]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[6] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[4]_i_1_n_5 ),
        .Q(mclk_rWaveGenCounter_reg[6]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[7] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[4]_i_1_n_4 ),
        .Q(mclk_rWaveGenCounter_reg[7]),
        .R(iMRst0));
  FDRE \mclk_rWaveGenCounter_reg[8] 
       (.C(aud_mclk),
        .CE(mclk_nAudValid_0),
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
        .CE(mclk_nAudValid_0),
        .D(\mclk_rWaveGenCounter_reg[8]_i_1_n_6 ),
        .Q(mclk_rWaveGenCounter_reg[9]),
        .R(iMRst0));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[12]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [0]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [16]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[12]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[13]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [1]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [17]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[13]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[14]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [2]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [18]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[14]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[15]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [3]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [19]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[15]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[16]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [4]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [20]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[16]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[17]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [5]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [21]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[17]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[18]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [6]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [22]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[18]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[19]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [7]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [23]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[19]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[20]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [8]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [24]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[20]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[21]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [9]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [25]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[21]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[22]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [10]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [26]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[22]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[23]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [11]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [27]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[23]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[24]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [12]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [28]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[24]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[25]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [13]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [29]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[25]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[26]_i_1 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [14]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [30]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[26]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \mclk_rWriteData[27]_i_2 
       (.I0(\genblk3[0].mclk_rAudData_reg[0] [15]),
        .I1(\genblk3[0].mclk_rAudData_reg[0] [31]),
        .I2(\mclk_rChannelCount_reg_n_0_[1] ),
        .I3(\mclk_rChannelCount_reg_n_0_[0] ),
        .I4(mclk_rDoLowerChannel_reg_n_0),
        .O(mclk_rWriteData[27]));
  FDRE \mclk_rWriteData_reg[12] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[12]),
        .Q(\mclk_rWriteData_reg_n_0_[12] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[13] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[13]),
        .Q(\mclk_rWriteData_reg_n_0_[13] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[14] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[14]),
        .Q(\mclk_rWriteData_reg_n_0_[14] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[15] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[15]),
        .Q(\mclk_rWriteData_reg_n_0_[15] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[16] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[16]),
        .Q(\mclk_rWriteData_reg_n_0_[16] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[17] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[17]),
        .Q(\mclk_rWriteData_reg_n_0_[17] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[18] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[18]),
        .Q(\mclk_rWriteData_reg_n_0_[18] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[19] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[19]),
        .Q(\mclk_rWriteData_reg_n_0_[19] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[20] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[20]),
        .Q(\mclk_rWriteData_reg_n_0_[20] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[21] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[21]),
        .Q(\mclk_rWriteData_reg_n_0_[21] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[22] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[22]),
        .Q(\mclk_rWriteData_reg_n_0_[22] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[23] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[23]),
        .Q(\mclk_rWriteData_reg_n_0_[23] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[24] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[24]),
        .Q(\mclk_rWriteData_reg_n_0_[24] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[25] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[25]),
        .Q(\mclk_rWriteData_reg_n_0_[25] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[26] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[26]),
        .Q(\mclk_rWriteData_reg_n_0_[26] ),
        .R(iMRst0));
  FDRE \mclk_rWriteData_reg[27] 
       (.C(aud_mclk),
        .CE(AXIS_FIFO_INST_n_32),
        .D(mclk_rWriteData[27]),
        .Q(\mclk_rWriteData_reg_n_0_[27] ),
        .R(iMRst0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \mclk_rWriteID[0]_i_1 
       (.I0(mclk_rDoLowerChannel_reg_n_0),
        .I1(AXIS_FIFO_INST_n_32),
        .I2(\mclk_rWriteID_reg_n_0_[0] ),
        .O(\mclk_rWriteID[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mclk_rWriteID[1]_i_1 
       (.I0(\mclk_rChannelCount_reg_n_0_[0] ),
        .I1(AXIS_FIFO_INST_n_32),
        .I2(\mclk_rWriteID_reg_n_0_[1] ),
        .O(\mclk_rWriteID[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mclk_rWriteID[2]_i_1 
       (.I0(\mclk_rChannelCount_reg_n_0_[1] ),
        .I1(AXIS_FIFO_INST_n_32),
        .I2(\mclk_rWriteID_reg_n_0_[2] ),
        .O(\mclk_rWriteID[2]_i_1_n_0 ));
  FDRE \mclk_rWriteID_reg[0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rWriteID[0]_i_1_n_0 ),
        .Q(\mclk_rWriteID_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mclk_rWriteID_reg[1] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rWriteID[1]_i_1_n_0 ),
        .Q(\mclk_rWriteID_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mclk_rWriteID_reg[2] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\mclk_rWriteID[2]_i_1_n_0 ),
        .Q(\mclk_rWriteID_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    mclk_rWriteValid_i_2
       (.I0(stmFIFOWriteCtrl__0[1]),
        .I1(\FSM_onehot_stmFIFOWriteCtrl_reg_n_0_[0] ),
        .O(mclk_rWriteValid_i_2_n_0));
  FDRE mclk_rWriteValid_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(AXIS_FIFO_INST_n_36),
        .Q(mclk_rWriteValid_reg_n_0),
        .R(iMRst0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_receiver_v1_0_2_timgen
   (iMRst0,
    rSClk_reg_0,
    rLRClk_reg_0,
    aud_mrst_0,
    rLoadSampleLeft,
    rLRClk_reg_1,
    aud_mclk,
    dest_out,
    \rDivCounter_reg[0]_0 ,
    aud_mrst,
    rLRClkDelayed,
    rSClkDelayed,
    rLRClk1_carry_0);
  output iMRst0;
  output rSClk_reg_0;
  output rLRClk_reg_0;
  output aud_mrst_0;
  output rLoadSampleLeft;
  output rLRClk_reg_1;
  input aud_mclk;
  input [7:0]dest_out;
  input \rDivCounter_reg[0]_0 ;
  input aud_mrst;
  input rLRClkDelayed;
  input rSClkDelayed;
  input rLRClk1_carry_0;

  wire aud_mclk;
  wire aud_mrst;
  wire aud_mrst_0;
  wire [7:0]dest_out;
  wire iMRst0;
  wire [7:1]p_0_in;
  wire rDivCounter1;
  wire rDivCounter1_carry__0_i_1_n_0;
  wire rDivCounter1_carry__0_i_2_n_0;
  wire rDivCounter1_carry__0_i_3_n_0;
  wire rDivCounter1_carry__0_i_4_n_0;
  wire rDivCounter1_carry__0_i_5_n_0;
  wire rDivCounter1_carry__0_i_6_n_0;
  wire rDivCounter1_carry__0_i_7_n_0;
  wire rDivCounter1_carry__0_i_8_n_0;
  wire rDivCounter1_carry__0_n_0;
  wire rDivCounter1_carry__0_n_1;
  wire rDivCounter1_carry__0_n_2;
  wire rDivCounter1_carry__0_n_3;
  wire rDivCounter1_carry__1_i_1_n_0;
  wire rDivCounter1_carry__1_i_2_n_0;
  wire rDivCounter1_carry__1_i_3_n_0;
  wire rDivCounter1_carry__1_i_4_n_0;
  wire rDivCounter1_carry__1_i_5_n_0;
  wire rDivCounter1_carry__1_i_6_n_0;
  wire rDivCounter1_carry__1_i_7_n_0;
  wire rDivCounter1_carry__1_i_8_n_0;
  wire rDivCounter1_carry__1_n_0;
  wire rDivCounter1_carry__1_n_1;
  wire rDivCounter1_carry__1_n_2;
  wire rDivCounter1_carry__1_n_3;
  wire rDivCounter1_carry__2_i_2_n_0;
  wire rDivCounter1_carry__2_i_3_n_0;
  wire rDivCounter1_carry__2_i_4_n_0;
  wire rDivCounter1_carry__2_i_5_n_0;
  wire rDivCounter1_carry__2_i_6_n_0;
  wire rDivCounter1_carry__2_i_7_n_0;
  wire rDivCounter1_carry__2_i_8_n_0;
  wire rDivCounter1_carry__2_n_1;
  wire rDivCounter1_carry__2_n_2;
  wire rDivCounter1_carry__2_n_3;
  wire rDivCounter1_carry_i_10_n_0;
  wire rDivCounter1_carry_i_1_n_0;
  wire rDivCounter1_carry_i_2_n_0;
  wire rDivCounter1_carry_i_3_n_0;
  wire rDivCounter1_carry_i_4_n_0;
  wire rDivCounter1_carry_i_5_n_0;
  wire rDivCounter1_carry_i_6_n_0;
  wire rDivCounter1_carry_i_7_n_0;
  wire rDivCounter1_carry_i_8_n_0;
  wire rDivCounter1_carry_i_9_n_0;
  wire rDivCounter1_carry_n_0;
  wire rDivCounter1_carry_n_1;
  wire rDivCounter1_carry_n_2;
  wire rDivCounter1_carry_n_3;
  wire [31:31]rDivCounter2;
  wire \rDivCounter[0]_i_1_n_0 ;
  wire \rDivCounter[7]_i_1_n_0 ;
  wire \rDivCounter[7]_i_3_n_0 ;
  wire \rDivCounter_reg[0]_0 ;
  wire [7:0]rDivCounter_reg__0;
  wire rLRClk1;
  wire rLRClk1_carry_0;
  wire rLRClk1_carry__0_i_1_n_0;
  wire rLRClk1_carry__0_i_2_n_0;
  wire rLRClk1_carry__0_i_3_n_0;
  wire rLRClk1_carry__0_n_2;
  wire rLRClk1_carry__0_n_3;
  wire rLRClk1_carry_i_1_n_0;
  wire rLRClk1_carry_i_2_n_0;
  wire rLRClk1_carry_i_3_n_0;
  wire rLRClk1_carry_i_4_n_0;
  wire rLRClk1_carry_i_5_n_0;
  wire rLRClk1_carry_i_6_n_0;
  wire rLRClk1_carry_i_7_n_0;
  wire rLRClk1_carry_n_0;
  wire rLRClk1_carry_n_1;
  wire rLRClk1_carry_n_2;
  wire rLRClk1_carry_n_3;
  wire \rLRClkCounter[0]_i_1_n_0 ;
  wire \rLRClkCounter[0]_i_2_n_0 ;
  wire \rLRClkCounter[0]_i_4_n_0 ;
  wire [15:0]rLRClkCounter_reg;
  wire \rLRClkCounter_reg[0]_i_3_n_0 ;
  wire \rLRClkCounter_reg[0]_i_3_n_1 ;
  wire \rLRClkCounter_reg[0]_i_3_n_2 ;
  wire \rLRClkCounter_reg[0]_i_3_n_3 ;
  wire \rLRClkCounter_reg[0]_i_3_n_4 ;
  wire \rLRClkCounter_reg[0]_i_3_n_5 ;
  wire \rLRClkCounter_reg[0]_i_3_n_6 ;
  wire \rLRClkCounter_reg[0]_i_3_n_7 ;
  wire \rLRClkCounter_reg[12]_i_1_n_1 ;
  wire \rLRClkCounter_reg[12]_i_1_n_2 ;
  wire \rLRClkCounter_reg[12]_i_1_n_3 ;
  wire \rLRClkCounter_reg[12]_i_1_n_4 ;
  wire \rLRClkCounter_reg[12]_i_1_n_5 ;
  wire \rLRClkCounter_reg[12]_i_1_n_6 ;
  wire \rLRClkCounter_reg[12]_i_1_n_7 ;
  wire \rLRClkCounter_reg[4]_i_1_n_0 ;
  wire \rLRClkCounter_reg[4]_i_1_n_1 ;
  wire \rLRClkCounter_reg[4]_i_1_n_2 ;
  wire \rLRClkCounter_reg[4]_i_1_n_3 ;
  wire \rLRClkCounter_reg[4]_i_1_n_4 ;
  wire \rLRClkCounter_reg[4]_i_1_n_5 ;
  wire \rLRClkCounter_reg[4]_i_1_n_6 ;
  wire \rLRClkCounter_reg[4]_i_1_n_7 ;
  wire \rLRClkCounter_reg[8]_i_1_n_0 ;
  wire \rLRClkCounter_reg[8]_i_1_n_1 ;
  wire \rLRClkCounter_reg[8]_i_1_n_2 ;
  wire \rLRClkCounter_reg[8]_i_1_n_3 ;
  wire \rLRClkCounter_reg[8]_i_1_n_4 ;
  wire \rLRClkCounter_reg[8]_i_1_n_5 ;
  wire \rLRClkCounter_reg[8]_i_1_n_6 ;
  wire \rLRClkCounter_reg[8]_i_1_n_7 ;
  wire rLRClkDelayed;
  wire rLRClk_i_2_n_0;
  wire rLRClk_reg_0;
  wire rLRClk_reg_1;
  wire rLoadSampleLeft;
  wire rSClkDelayed;
  wire rSClkEnable;
  wire rSClkEnable_i_2_n_0;
  wire rSClkEnable_reg_n_0;
  wire rSClk_i_1_n_0;
  wire rSClk_reg_0;
  wire [3:0]NLW_rDivCounter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rDivCounter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rDivCounter1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rDivCounter1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_rLRClk1_carry_O_UNCONNECTED;
  wire [3:3]NLW_rLRClk1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rLRClk1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_rLRClkCounter_reg[12]_i_1_CO_UNCONNECTED ;

  CARRY4 rDivCounter1_carry
       (.CI(1'b0),
        .CO({rDivCounter1_carry_n_0,rDivCounter1_carry_n_1,rDivCounter1_carry_n_2,rDivCounter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rDivCounter1_carry_i_1_n_0,rDivCounter1_carry_i_2_n_0,rDivCounter1_carry_i_3_n_0,rDivCounter1_carry_i_4_n_0}),
        .O(NLW_rDivCounter1_carry_O_UNCONNECTED[3:0]),
        .S({rDivCounter1_carry_i_5_n_0,rDivCounter1_carry_i_6_n_0,rDivCounter1_carry_i_7_n_0,rDivCounter1_carry_i_8_n_0}));
  CARRY4 rDivCounter1_carry__0
       (.CI(rDivCounter1_carry_n_0),
        .CO({rDivCounter1_carry__0_n_0,rDivCounter1_carry__0_n_1,rDivCounter1_carry__0_n_2,rDivCounter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rDivCounter1_carry__0_i_1_n_0,rDivCounter1_carry__0_i_2_n_0,rDivCounter1_carry__0_i_3_n_0,rDivCounter1_carry__0_i_4_n_0}),
        .O(NLW_rDivCounter1_carry__0_O_UNCONNECTED[3:0]),
        .S({rDivCounter1_carry__0_i_5_n_0,rDivCounter1_carry__0_i_6_n_0,rDivCounter1_carry__0_i_7_n_0,rDivCounter1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__0_i_1
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__0_i_2
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__0_i_3
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__0_i_4
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__0_i_5
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__0_i_6
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__0_i_7
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__0_i_8
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__0_i_8_n_0));
  CARRY4 rDivCounter1_carry__1
       (.CI(rDivCounter1_carry__0_n_0),
        .CO({rDivCounter1_carry__1_n_0,rDivCounter1_carry__1_n_1,rDivCounter1_carry__1_n_2,rDivCounter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({rDivCounter1_carry__1_i_1_n_0,rDivCounter1_carry__1_i_2_n_0,rDivCounter1_carry__1_i_3_n_0,rDivCounter1_carry__1_i_4_n_0}),
        .O(NLW_rDivCounter1_carry__1_O_UNCONNECTED[3:0]),
        .S({rDivCounter1_carry__1_i_5_n_0,rDivCounter1_carry__1_i_6_n_0,rDivCounter1_carry__1_i_7_n_0,rDivCounter1_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__1_i_1
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__1_i_2
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__1_i_3
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__1_i_4
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__1_i_5
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__1_i_6
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__1_i_7
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__1_i_8
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__1_i_8_n_0));
  CARRY4 rDivCounter1_carry__2
       (.CI(rDivCounter1_carry__1_n_0),
        .CO({rDivCounter1,rDivCounter1_carry__2_n_1,rDivCounter1_carry__2_n_2,rDivCounter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({rDivCounter2,rDivCounter1_carry__2_i_2_n_0,rDivCounter1_carry__2_i_3_n_0,rDivCounter1_carry__2_i_4_n_0}),
        .O(NLW_rDivCounter1_carry__2_O_UNCONNECTED[3:0]),
        .S({rDivCounter1_carry__2_i_5_n_0,rDivCounter1_carry__2_i_6_n_0,rDivCounter1_carry__2_i_7_n_0,rDivCounter1_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__2_i_1
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter2));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__2_i_2
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__2_i_3
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rDivCounter1_carry__2_i_4
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__2_i_5
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__2_i_6
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__2_i_7
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rDivCounter1_carry__2_i_8
       (.I0(dest_out[6]),
        .I1(rDivCounter1_carry_i_9_n_0),
        .I2(dest_out[7]),
        .O(rDivCounter1_carry__2_i_8_n_0));
  LUT5 #(
    .INIT(32'h71303017)) 
    rDivCounter1_carry_i_1
       (.I0(rDivCounter_reg__0[6]),
        .I1(rDivCounter_reg__0[7]),
        .I2(dest_out[7]),
        .I3(rDivCounter1_carry_i_9_n_0),
        .I4(dest_out[6]),
        .O(rDivCounter1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rDivCounter1_carry_i_10
       (.I0(dest_out[2]),
        .I1(dest_out[0]),
        .I2(dest_out[1]),
        .I3(dest_out[3]),
        .O(rDivCounter1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h73311007)) 
    rDivCounter1_carry_i_2
       (.I0(rDivCounter_reg__0[4]),
        .I1(rDivCounter_reg__0[5]),
        .I2(dest_out[4]),
        .I3(rDivCounter1_carry_i_10_n_0),
        .I4(dest_out[5]),
        .O(rDivCounter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h7373733110101007)) 
    rDivCounter1_carry_i_3
       (.I0(rDivCounter_reg__0[2]),
        .I1(rDivCounter_reg__0[3]),
        .I2(dest_out[2]),
        .I3(dest_out[0]),
        .I4(dest_out[1]),
        .I5(dest_out[3]),
        .O(rDivCounter1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h3107)) 
    rDivCounter1_carry_i_4
       (.I0(rDivCounter_reg__0[0]),
        .I1(rDivCounter_reg__0[1]),
        .I2(dest_out[0]),
        .I3(dest_out[1]),
        .O(rDivCounter1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h81422814)) 
    rDivCounter1_carry_i_5
       (.I0(rDivCounter_reg__0[7]),
        .I1(dest_out[6]),
        .I2(rDivCounter1_carry_i_9_n_0),
        .I3(dest_out[7]),
        .I4(rDivCounter_reg__0[6]),
        .O(rDivCounter1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    rDivCounter1_carry_i_6
       (.I0(rDivCounter_reg__0[5]),
        .I1(dest_out[5]),
        .I2(rDivCounter1_carry_i_10_n_0),
        .I3(dest_out[4]),
        .I4(rDivCounter_reg__0[4]),
        .O(rDivCounter1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990000600099990)) 
    rDivCounter1_carry_i_7
       (.I0(rDivCounter_reg__0[3]),
        .I1(dest_out[3]),
        .I2(dest_out[1]),
        .I3(dest_out[0]),
        .I4(dest_out[2]),
        .I5(rDivCounter_reg__0[2]),
        .O(rDivCounter1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0690)) 
    rDivCounter1_carry_i_8
       (.I0(rDivCounter_reg__0[1]),
        .I1(dest_out[1]),
        .I2(dest_out[0]),
        .I3(rDivCounter_reg__0[0]),
        .O(rDivCounter1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rDivCounter1_carry_i_9
       (.I0(dest_out[4]),
        .I1(dest_out[2]),
        .I2(dest_out[0]),
        .I3(dest_out[1]),
        .I4(dest_out[3]),
        .I5(dest_out[5]),
        .O(rDivCounter1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rDivCounter[0]_i_1 
       (.I0(rDivCounter_reg__0[0]),
        .O(\rDivCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rDivCounter[1]_i_1 
       (.I0(rDivCounter_reg__0[0]),
        .I1(rDivCounter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rDivCounter[2]_i_1 
       (.I0(rDivCounter_reg__0[0]),
        .I1(rDivCounter_reg__0[1]),
        .I2(rDivCounter_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rDivCounter[3]_i_1 
       (.I0(rDivCounter_reg__0[1]),
        .I1(rDivCounter_reg__0[0]),
        .I2(rDivCounter_reg__0[2]),
        .I3(rDivCounter_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rDivCounter[4]_i_1 
       (.I0(rDivCounter_reg__0[2]),
        .I1(rDivCounter_reg__0[0]),
        .I2(rDivCounter_reg__0[1]),
        .I3(rDivCounter_reg__0[3]),
        .I4(rDivCounter_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rDivCounter[5]_i_1 
       (.I0(rDivCounter_reg__0[3]),
        .I1(rDivCounter_reg__0[1]),
        .I2(rDivCounter_reg__0[0]),
        .I3(rDivCounter_reg__0[2]),
        .I4(rDivCounter_reg__0[4]),
        .I5(rDivCounter_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rDivCounter[6]_i_1 
       (.I0(\rDivCounter[7]_i_3_n_0 ),
        .I1(rDivCounter_reg__0[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'hDF)) 
    \rDivCounter[7]_i_1 
       (.I0(\rDivCounter_reg[0]_0 ),
        .I1(aud_mrst),
        .I2(rDivCounter1),
        .O(\rDivCounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rDivCounter[7]_i_2 
       (.I0(\rDivCounter[7]_i_3_n_0 ),
        .I1(rDivCounter_reg__0[6]),
        .I2(rDivCounter_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rDivCounter[7]_i_3 
       (.I0(rDivCounter_reg__0[5]),
        .I1(rDivCounter_reg__0[3]),
        .I2(rDivCounter_reg__0[1]),
        .I3(rDivCounter_reg__0[0]),
        .I4(rDivCounter_reg__0[2]),
        .I5(rDivCounter_reg__0[4]),
        .O(\rDivCounter[7]_i_3_n_0 ));
  FDRE \rDivCounter_reg[0] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(\rDivCounter[0]_i_1_n_0 ),
        .Q(rDivCounter_reg__0[0]),
        .R(\rDivCounter[7]_i_1_n_0 ));
  FDRE \rDivCounter_reg[1] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(rDivCounter_reg__0[1]),
        .R(\rDivCounter[7]_i_1_n_0 ));
  FDRE \rDivCounter_reg[2] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(rDivCounter_reg__0[2]),
        .R(\rDivCounter[7]_i_1_n_0 ));
  FDRE \rDivCounter_reg[3] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(rDivCounter_reg__0[3]),
        .R(\rDivCounter[7]_i_1_n_0 ));
  FDRE \rDivCounter_reg[4] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(rDivCounter_reg__0[4]),
        .R(\rDivCounter[7]_i_1_n_0 ));
  FDRE \rDivCounter_reg[5] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(rDivCounter_reg__0[5]),
        .R(\rDivCounter[7]_i_1_n_0 ));
  FDRE \rDivCounter_reg[6] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(rDivCounter_reg__0[6]),
        .R(\rDivCounter[7]_i_1_n_0 ));
  FDRE \rDivCounter_reg[7] 
       (.C(aud_mclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(rDivCounter_reg__0[7]),
        .R(\rDivCounter[7]_i_1_n_0 ));
  CARRY4 rLRClk1_carry
       (.CI(1'b0),
        .CO({rLRClk1_carry_n_0,rLRClk1_carry_n_1,rLRClk1_carry_n_2,rLRClk1_carry_n_3}),
        .CYINIT(rLRClk1_carry_i_1_n_0),
        .DI({1'b0,1'b0,rLRClk1_carry_i_2_n_0,rLRClk1_carry_i_3_n_0}),
        .O(NLW_rLRClk1_carry_O_UNCONNECTED[3:0]),
        .S({rLRClk1_carry_i_4_n_0,rLRClk1_carry_i_5_n_0,rLRClk1_carry_i_6_n_0,rLRClk1_carry_i_7_n_0}));
  CARRY4 rLRClk1_carry__0
       (.CI(rLRClk1_carry_n_0),
        .CO({NLW_rLRClk1_carry__0_CO_UNCONNECTED[3],rLRClk1,rLRClk1_carry__0_n_2,rLRClk1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rLRClk1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,rLRClk1_carry__0_i_1_n_0,rLRClk1_carry__0_i_2_n_0,rLRClk1_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    rLRClk1_carry__0_i_1
       (.I0(rLRClkCounter_reg[15]),
        .I1(rLRClkCounter_reg[14]),
        .O(rLRClk1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rLRClk1_carry__0_i_2
       (.I0(rLRClkCounter_reg[13]),
        .I1(rLRClkCounter_reg[12]),
        .O(rLRClk1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rLRClk1_carry__0_i_3
       (.I0(rLRClkCounter_reg[11]),
        .I1(rLRClkCounter_reg[10]),
        .O(rLRClk1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rLRClk1_carry_i_1
       (.I0(rLRClkCounter_reg[0]),
        .I1(rLRClkCounter_reg[1]),
        .O(rLRClk1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    rLRClk1_carry_i_2
       (.I0(rLRClkCounter_reg[5]),
        .I1(rLRClkCounter_reg[4]),
        .I2(rLRClk1_carry_0),
        .O(rLRClk1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rLRClk1_carry_i_3
       (.I0(rLRClkCounter_reg[3]),
        .I1(rLRClkCounter_reg[2]),
        .O(rLRClk1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rLRClk1_carry_i_4
       (.I0(rLRClkCounter_reg[9]),
        .I1(rLRClkCounter_reg[8]),
        .O(rLRClk1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rLRClk1_carry_i_5
       (.I0(rLRClkCounter_reg[7]),
        .I1(rLRClkCounter_reg[6]),
        .O(rLRClk1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    rLRClk1_carry_i_6
       (.I0(rLRClk1_carry_0),
        .I1(rLRClkCounter_reg[4]),
        .I2(rLRClkCounter_reg[5]),
        .O(rLRClk1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rLRClk1_carry_i_7
       (.I0(rLRClkCounter_reg[2]),
        .I1(rLRClkCounter_reg[3]),
        .O(rLRClk1_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hDFDDDDDD)) 
    \rLRClkCounter[0]_i_1 
       (.I0(\rDivCounter_reg[0]_0 ),
        .I1(aud_mrst),
        .I2(rLRClk1),
        .I3(rSClkEnable_reg_n_0),
        .I4(rSClk_reg_0),
        .O(\rLRClkCounter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rLRClkCounter[0]_i_2 
       (.I0(rSClkEnable_reg_n_0),
        .I1(rSClk_reg_0),
        .O(\rLRClkCounter[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rLRClkCounter[0]_i_4 
       (.I0(rLRClkCounter_reg[0]),
        .O(\rLRClkCounter[0]_i_4_n_0 ));
  FDRE \rLRClkCounter_reg[0] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[0]_i_3_n_7 ),
        .Q(rLRClkCounter_reg[0]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  CARRY4 \rLRClkCounter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\rLRClkCounter_reg[0]_i_3_n_0 ,\rLRClkCounter_reg[0]_i_3_n_1 ,\rLRClkCounter_reg[0]_i_3_n_2 ,\rLRClkCounter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rLRClkCounter_reg[0]_i_3_n_4 ,\rLRClkCounter_reg[0]_i_3_n_5 ,\rLRClkCounter_reg[0]_i_3_n_6 ,\rLRClkCounter_reg[0]_i_3_n_7 }),
        .S({rLRClkCounter_reg[3:1],\rLRClkCounter[0]_i_4_n_0 }));
  FDRE \rLRClkCounter_reg[10] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[8]_i_1_n_5 ),
        .Q(rLRClkCounter_reg[10]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[11] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[8]_i_1_n_4 ),
        .Q(rLRClkCounter_reg[11]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[12] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[12]_i_1_n_7 ),
        .Q(rLRClkCounter_reg[12]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  CARRY4 \rLRClkCounter_reg[12]_i_1 
       (.CI(\rLRClkCounter_reg[8]_i_1_n_0 ),
        .CO({\NLW_rLRClkCounter_reg[12]_i_1_CO_UNCONNECTED [3],\rLRClkCounter_reg[12]_i_1_n_1 ,\rLRClkCounter_reg[12]_i_1_n_2 ,\rLRClkCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rLRClkCounter_reg[12]_i_1_n_4 ,\rLRClkCounter_reg[12]_i_1_n_5 ,\rLRClkCounter_reg[12]_i_1_n_6 ,\rLRClkCounter_reg[12]_i_1_n_7 }),
        .S(rLRClkCounter_reg[15:12]));
  FDRE \rLRClkCounter_reg[13] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[12]_i_1_n_6 ),
        .Q(rLRClkCounter_reg[13]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[14] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[12]_i_1_n_5 ),
        .Q(rLRClkCounter_reg[14]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[15] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[12]_i_1_n_4 ),
        .Q(rLRClkCounter_reg[15]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[1] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[0]_i_3_n_6 ),
        .Q(rLRClkCounter_reg[1]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[2] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[0]_i_3_n_5 ),
        .Q(rLRClkCounter_reg[2]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[3] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[0]_i_3_n_4 ),
        .Q(rLRClkCounter_reg[3]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[4] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[4]_i_1_n_7 ),
        .Q(rLRClkCounter_reg[4]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  CARRY4 \rLRClkCounter_reg[4]_i_1 
       (.CI(\rLRClkCounter_reg[0]_i_3_n_0 ),
        .CO({\rLRClkCounter_reg[4]_i_1_n_0 ,\rLRClkCounter_reg[4]_i_1_n_1 ,\rLRClkCounter_reg[4]_i_1_n_2 ,\rLRClkCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rLRClkCounter_reg[4]_i_1_n_4 ,\rLRClkCounter_reg[4]_i_1_n_5 ,\rLRClkCounter_reg[4]_i_1_n_6 ,\rLRClkCounter_reg[4]_i_1_n_7 }),
        .S(rLRClkCounter_reg[7:4]));
  FDRE \rLRClkCounter_reg[5] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[4]_i_1_n_6 ),
        .Q(rLRClkCounter_reg[5]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[6] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[4]_i_1_n_5 ),
        .Q(rLRClkCounter_reg[6]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[7] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[4]_i_1_n_4 ),
        .Q(rLRClkCounter_reg[7]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  FDRE \rLRClkCounter_reg[8] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[8]_i_1_n_7 ),
        .Q(rLRClkCounter_reg[8]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  CARRY4 \rLRClkCounter_reg[8]_i_1 
       (.CI(\rLRClkCounter_reg[4]_i_1_n_0 ),
        .CO({\rLRClkCounter_reg[8]_i_1_n_0 ,\rLRClkCounter_reg[8]_i_1_n_1 ,\rLRClkCounter_reg[8]_i_1_n_2 ,\rLRClkCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rLRClkCounter_reg[8]_i_1_n_4 ,\rLRClkCounter_reg[8]_i_1_n_5 ,\rLRClkCounter_reg[8]_i_1_n_6 ,\rLRClkCounter_reg[8]_i_1_n_7 }),
        .S(rLRClkCounter_reg[11:8]));
  FDRE \rLRClkCounter_reg[9] 
       (.C(aud_mclk),
        .CE(\rLRClkCounter[0]_i_2_n_0 ),
        .D(\rLRClkCounter_reg[8]_i_1_n_6 ),
        .Q(rLRClkCounter_reg[9]),
        .R(\rLRClkCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    rLRClkDelayed_i_1
       (.I0(rLRClk_reg_0),
        .I1(rSClk_reg_0),
        .I2(rSClkDelayed),
        .I3(rLRClkDelayed),
        .O(rLRClk_reg_1));
  LUT2 #(
    .INIT(4'hB)) 
    rLRClk_i_1
       (.I0(aud_mrst),
        .I1(\rDivCounter_reg[0]_0 ),
        .O(iMRst0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    rLRClk_i_2
       (.I0(rLRClk1),
        .I1(rSClkEnable_reg_n_0),
        .I2(rSClk_reg_0),
        .I3(rLRClk_reg_0),
        .O(rLRClk_i_2_n_0));
  FDRE rLRClk_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rLRClk_i_2_n_0),
        .Q(rLRClk_reg_0),
        .R(iMRst0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    rLoadSampleLeft_i_1
       (.I0(rSClk_reg_0),
        .I1(rSClkDelayed),
        .I2(rLRClkDelayed),
        .I3(rLRClk_reg_0),
        .O(rLoadSampleLeft));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    rLoadSampleRight_i_1
       (.I0(aud_mrst),
        .I1(\rDivCounter_reg[0]_0 ),
        .I2(rLRClk_reg_0),
        .I3(rLRClkDelayed),
        .I4(rSClkDelayed),
        .I5(rSClk_reg_0),
        .O(aud_mrst_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    rSClkEnable_i_1
       (.I0(rDivCounter_reg__0[4]),
        .I1(rDivCounter_reg__0[5]),
        .I2(rDivCounter_reg__0[6]),
        .I3(rDivCounter_reg__0[7]),
        .I4(rSClkEnable_i_2_n_0),
        .O(rSClkEnable));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    rSClkEnable_i_2
       (.I0(rDivCounter_reg__0[1]),
        .I1(rDivCounter_reg__0[0]),
        .I2(rDivCounter_reg__0[3]),
        .I3(rDivCounter_reg__0[2]),
        .O(rSClkEnable_i_2_n_0));
  FDRE rSClkEnable_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rSClkEnable),
        .Q(rSClkEnable_reg_n_0),
        .R(iMRst0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    rSClk_i_1
       (.I0(rSClkEnable_reg_n_0),
        .I1(rSClk_reg_0),
        .O(rSClk_i_1_n_0));
  FDRE rSClk_reg
       (.C(aud_mclk),
        .CE(1'b1),
        .D(rSClk_i_1_n_0),
        .Q(rSClk_reg_0),
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
