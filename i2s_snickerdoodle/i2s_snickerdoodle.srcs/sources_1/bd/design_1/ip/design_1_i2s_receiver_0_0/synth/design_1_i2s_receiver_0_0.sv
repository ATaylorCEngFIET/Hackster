// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:i2s_receiver:1.0
// IP Revision: 2

(* X_CORE_INFO = "i2s_receiver_v1_0_2,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "design_1_i2s_receiver_0_0,i2s_receiver_v1_0_2,{}" *)
(* CORE_GENERATION_INFO = "design_1_i2s_receiver_0_0,i2s_receiver_v1_0_2,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=i2s_receiver,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_IS_MASTER=1,C_NUM_CHANNELS=1,C_DWIDTH=16,C_DEPTH=128}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_i2s_receiver_0_0 (
  s_axi_ctrl_aclk,
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
  m_axis_aud_tready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_aclk, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET s_axi_ctrl_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_ctrl_aclk CLK" *)
input wire s_axi_ctrl_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_ctrl_aresetn RST" *)
input wire s_axi_ctrl_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_mclk, ASSOCIATED_RESET aud_mrst, FREQ_HZ 11904749, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aud_mclk CLK" *)
input wire aud_mclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_mrst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aud_mrst RST" *)
input wire aud_mrst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud_aclk, ASSOCIATED_BUSIF m_axis_aud, ASSOCIATED_RESET m_axis_aud_aresetn, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aud_aclk CLK" *)
input wire m_axis_aud_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axis_aud_aresetn RST" *)
input wire m_axis_aud_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *)
input wire s_axi_ctrl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *)
output wire s_axi_ctrl_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *)
input wire [7 : 0] s_axi_ctrl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *)
input wire s_axi_ctrl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *)
output wire s_axi_ctrl_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *)
input wire [31 : 0] s_axi_ctrl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *)
output wire s_axi_ctrl_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *)
input wire s_axi_ctrl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *)
output wire [1 : 0] s_axi_ctrl_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *)
input wire s_axi_ctrl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *)
output wire s_axi_ctrl_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *)
input wire [7 : 0] s_axi_ctrl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *)
output wire s_axi_ctrl_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *)
input wire s_axi_ctrl_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *)
output wire [31 : 0] s_axi_ctrl_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 49999947, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THR\
EADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *)
output wire [1 : 0] s_axi_ctrl_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *)
output wire irq;
output wire lrclk_out;
output wire sclk_out;
input wire sdata_0_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TDATA" *)
output wire [31 : 0] m_axis_aud_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TID" *)
output wire [2 : 0] m_axis_aud_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TVALID" *)
output wire m_axis_aud_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49999947, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TREADY" *)
input wire m_axis_aud_tready;

  i2s_receiver_v1_0_2 #(
    .C_IS_MASTER(1),
    .C_NUM_CHANNELS(1),
    .C_DWIDTH(16),
    .C_DEPTH(128)
  ) inst (
    .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
    .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
    .aud_mclk(aud_mclk),
    .aud_mrst(aud_mrst),
    .m_axis_aud_aclk(m_axis_aud_aclk),
    .m_axis_aud_aresetn(m_axis_aud_aresetn),
    .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
    .s_axi_ctrl_awready(s_axi_ctrl_awready),
    .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
    .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
    .s_axi_ctrl_wready(s_axi_ctrl_wready),
    .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
    .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
    .s_axi_ctrl_bready(s_axi_ctrl_bready),
    .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
    .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
    .s_axi_ctrl_arready(s_axi_ctrl_arready),
    .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
    .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
    .s_axi_ctrl_rready(s_axi_ctrl_rready),
    .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
    .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
    .irq(irq),
    .lrclk_out(lrclk_out),
    .sclk_out(sclk_out),
    .lrclk_in(1'B0),
    .sclk_in(1'B0),
    .sdata_0_in(sdata_0_in),
    .sdata_1_in(1'B0),
    .sdata_2_in(1'B0),
    .sdata_3_in(1'B0),
    .m_axis_aud_tdata(m_axis_aud_tdata),
    .m_axis_aud_tid(m_axis_aud_tid),
    .m_axis_aud_tvalid(m_axis_aud_tvalid),
    .m_axis_aud_tready(m_axis_aud_tready)
  );
endmodule
