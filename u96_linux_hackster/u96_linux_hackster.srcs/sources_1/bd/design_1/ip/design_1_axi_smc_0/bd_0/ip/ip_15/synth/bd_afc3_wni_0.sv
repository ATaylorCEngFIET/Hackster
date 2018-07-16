// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:ip:sc_node:1.0
// IP Revision: 8

(* X_CORE_INFO = "sc_node_v1_0_8_top,Vivado 2018.1_AR70530" *)
(* CHECK_LICENSE_TYPE = "bd_afc3_wni_0,sc_node_v1_0_8_top,{}" *)
(* CORE_GENERATION_INFO = "bd_afc3_wni_0,sc_node_v1_0_8_top,{x_ipProduct=Vivado 2018.1_AR70530,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=sc_node,x_ipVersion=1.0,x_ipCoreRevision=8,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=zynquplus,C_FIFO_IP=0,C_DISABLE_IP=0,C_FIFO_SIZE=0,C_FIFO_TYPE=0,C_FIFO_OUTPUT_REG=1,C_ENABLE_PIPELINING=0x01,C_SYNCHRONIZATION_STAGES=3,C_NUM_SI=1,C_NUM_MI=2,C_CHANNEL=1,C_PAYLD_WIDTH=163,C_S_NUM_BYTES_ARRAY=0x00000010,C_M_NUM_BYTES_ARRAY=0x0000000400000004,C_USER_BITS_PER_BYTE=0,C_ARBITER_MO\
DE=1,C_SC_ROUTE_WIDTH=4,C_ID_WIDTH=1,C_ADDR_WIDTH=40,C_USER_WIDTH=512,C_MAX_PAYLD_BYTES=16,C_S_PIPELINE=0,C_M_PIPELINE=0,C_M_SEND_PIPELINE=0,C_S_LATENCY=0,C_ACLK_RELATIONSHIP=1,C_ACLKEN_CONVERSION=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_afc3_wni_0 (
  s_sc_aclk,
  s_sc_aresetn,
  s_sc_req,
  s_sc_info,
  s_sc_send,
  s_sc_recv,
  s_sc_payld,
  m_sc_aclk,
  m_sc_aresetn,
  m_sc_recv,
  m_sc_send,
  m_sc_req,
  m_sc_info,
  m_sc_payld
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS_ARB:M_AXIS_ARB:S_SC, ASSOCIATED_RESET s_sc_aresetn, ASSOCIATED_CLKEN s_sc_aclken, FREQ_HZ 99999999, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire s_sc_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire s_sc_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC REQ" *)
input wire [0 : 0] s_sc_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC INFO" *)
input wire [0 : 0] s_sc_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC SEND" *)
input wire [0 : 0] s_sc_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC RECV" *)
output wire [0 : 0] s_sc_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 S_SC PAYLD" *)
input wire [162 : 0] s_sc_payld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_sc_aclk, ASSOCIATED_BUSIF M_SC, ASSOCIATED_RESET m_sc_aresetn, ASSOCIATED_CLKEN m_sc_aclken, FREQ_HZ 99999999, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_sc_aclk CLK" *)
input wire m_sc_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_sc_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_sc_aresetn RST" *)
input wire m_sc_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC RECV" *)
input wire [1 : 0] m_sc_recv;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC SEND" *)
output wire [1 : 0] m_sc_send;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC REQ" *)
output wire [1 : 0] m_sc_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC INFO" *)
output wire [1 : 0] m_sc_info;
(* X_INTERFACE_INFO = "xilinx.com:interface:sc:1.0 M_SC PAYLD" *)
output wire [162 : 0] m_sc_payld;

  sc_node_v1_0_8_top #(
    .C_FAMILY("zynquplus"),
    .C_FIFO_IP(0),
    .C_DISABLE_IP(0),
    .C_FIFO_SIZE(0),
    .C_FIFO_TYPE(0),
    .C_FIFO_OUTPUT_REG(1),
    .C_ENABLE_PIPELINING(8'H01),
    .C_SYNCHRONIZATION_STAGES(3),
    .C_NUM_SI(1),
    .C_NUM_MI(2),
    .C_CHANNEL(1),
    .C_PAYLD_WIDTH(163),
    .C_S_NUM_BYTES_ARRAY(32'H00000010),
    .C_M_NUM_BYTES_ARRAY(64'H0000000400000004),
    .C_USER_BITS_PER_BYTE(0),
    .C_ARBITER_MODE(1),
    .C_SC_ROUTE_WIDTH(4),
    .C_ID_WIDTH(1),
    .C_ADDR_WIDTH(40),
    .C_USER_WIDTH(512),
    .C_MAX_PAYLD_BYTES(16),
    .C_S_PIPELINE(0),
    .C_M_PIPELINE(0),
    .C_M_SEND_PIPELINE(0),
    .C_S_LATENCY(0),
    .C_ACLK_RELATIONSHIP(1),
    .C_ACLKEN_CONVERSION(0)
  ) inst (
    .s_sc_aclk(s_sc_aclk),
    .s_sc_aclken(1'H1),
    .s_sc_aresetn(s_sc_aresetn),
    .s_sc_req(s_sc_req),
    .s_sc_info(s_sc_info),
    .s_sc_send(s_sc_send),
    .s_sc_recv(s_sc_recv),
    .s_sc_payld(s_sc_payld),
    .m_sc_aclk(m_sc_aclk),
    .m_sc_aclken(1'H1),
    .m_sc_aresetn(m_sc_aresetn),
    .m_sc_recv(m_sc_recv),
    .m_sc_send(m_sc_send),
    .m_sc_req(m_sc_req),
    .m_sc_info(m_sc_info),
    .m_sc_payld(m_sc_payld),
    .m_axis_arb_tvalid(),
    .m_axis_arb_tready(1'H1),
    .m_axis_arb_tdata(),
    .s_axis_arb_tvalid(1'H0),
    .s_axis_arb_tready(),
    .s_axis_arb_tdata(16'B0)
  );
endmodule
