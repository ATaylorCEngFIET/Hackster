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


// IP VLNV: xilinx.com:ip:v_axi4s_vid_out:4.0
// IP Revision: 8

(* X_CORE_INFO = "v_axi4s_vid_out_v4_0_8,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "design_1_v_axi4s_vid_out_0_0,v_axi4s_vid_out_v4_0_8,{}" *)
(* CORE_GENERATION_INFO = "design_1_v_axi4s_vid_out_0_0,v_axi4s_vid_out_v4_0_8,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_axi4s_vid_out,x_ipVersion=4.0,x_ipCoreRevision=8,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=zynq,C_PIXELS_PER_CLOCK=1,C_COMPONENTS_PER_PIXEL=3,C_S_AXIS_COMPONENT_WIDTH=8,C_NATIVE_COMPONENT_WIDTH=8,C_NATIVE_DATA_WIDTH=24,C_S_AXIS_TDATA_WIDTH=24,C_HAS_ASYNC_CLK=1,C_ADDR_WIDTH=10,C_VTG_MASTER_SLAVE=1,C_HYSTERESIS_LEVEL=12,C_SYNC_LOCK_THRESHOLD=4,C_INCLUDE_PIXEL_REPEAT\
=0,C_INCLUDE_PIXEL_REMAP_420=0,C_ADDR_WIDTH_PIXEL_REMAP_420=10}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_v_axi4s_vid_out_0_0 (
  aclk,
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
  status
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *)
input wire aclken;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDATA" *)
input wire [23 : 0] s_axis_video_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TVALID" *)
input wire s_axis_video_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TREADY" *)
output wire s_axis_video_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TUSER" *)
input wire s_axis_video_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TLAST" *)
input wire s_axis_video_tlast;
input wire fid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_clk_intf, ASSOCIATED_BUSIF vid_io_out, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_axi_dynclk_0_0_PXL_CLK_O" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_out_clk_intf CLK" *)
input wire vid_io_out_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_ce_intf, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_out_ce_intf CE" *)
input wire vid_io_out_ce;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_reset_intf, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_io_out_reset_intf RST" *)
input wire vid_io_out_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO" *)
output wire vid_active_video;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC" *)
output wire vid_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC" *)
output wire vid_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK" *)
output wire vid_vblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK" *)
output wire vid_hblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD" *)
output wire vid_field_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out DATA" *)
output wire [23 : 0] vid_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC" *)
input wire vtg_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC" *)
input wire vtg_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VBLANK" *)
input wire vtg_vblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HBLANK" *)
input wire vtg_hblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO" *)
input wire vtg_active_video;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in FIELD" *)
input wire vtg_field_id;
output wire vtg_ce;
output wire locked;
output wire overflow;
output wire underflow;
output wire [31 : 0] status;

  v_axi4s_vid_out_v4_0_8 #(
    .C_FAMILY("zynq"),
    .C_PIXELS_PER_CLOCK(1),
    .C_COMPONENTS_PER_PIXEL(3),
    .C_S_AXIS_COMPONENT_WIDTH(8),
    .C_NATIVE_COMPONENT_WIDTH(8),
    .C_NATIVE_DATA_WIDTH(24),
    .C_S_AXIS_TDATA_WIDTH(24),
    .C_HAS_ASYNC_CLK(1),
    .C_ADDR_WIDTH(10),
    .C_VTG_MASTER_SLAVE(1),
    .C_HYSTERESIS_LEVEL(12),
    .C_SYNC_LOCK_THRESHOLD(4),
    .C_INCLUDE_PIXEL_REPEAT(0),
    .C_INCLUDE_PIXEL_REMAP_420(0),
    .C_ADDR_WIDTH_PIXEL_REMAP_420(10)
  ) inst (
    .aclk(aclk),
    .aclken(aclken),
    .aresetn(aresetn),
    .s_axis_video_tdata(s_axis_video_tdata),
    .s_axis_video_tvalid(s_axis_video_tvalid),
    .s_axis_video_tready(s_axis_video_tready),
    .s_axis_video_tuser(s_axis_video_tuser),
    .s_axis_video_tlast(s_axis_video_tlast),
    .fid(fid),
    .vid_io_out_clk(vid_io_out_clk),
    .vid_io_out_ce(vid_io_out_ce),
    .vid_io_out_reset(vid_io_out_reset),
    .vid_active_video(vid_active_video),
    .vid_vsync(vid_vsync),
    .vid_hsync(vid_hsync),
    .vid_vblank(vid_vblank),
    .vid_hblank(vid_hblank),
    .vid_field_id(vid_field_id),
    .vid_data(vid_data),
    .vtg_vsync(vtg_vsync),
    .vtg_hsync(vtg_hsync),
    .vtg_vblank(vtg_vblank),
    .vtg_hblank(vtg_hblank),
    .vtg_active_video(vtg_active_video),
    .vtg_field_id(vtg_field_id),
    .vtg_ce(vtg_ce),
    .locked(locked),
    .overflow(overflow),
    .underflow(underflow),
    .status(status),
    .repeat_en(1'B0),
    .remap_420_en(1'B0)
  );
endmodule
