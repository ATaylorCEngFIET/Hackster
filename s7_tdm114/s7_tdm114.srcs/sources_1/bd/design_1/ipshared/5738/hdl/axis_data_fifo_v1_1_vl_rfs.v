// -- (c) Copyright 2012 - 2013 Xilinx, Inc. All rights reserved.
// --
// -- This file contains confidential and proprietary information
// -- of Xilinx, Inc. and is protected under U.S. and
// -- international copyright and other intellectual property
// -- laws.
// --
// -- DISCLAIMER
// -- This disclaimer is not a license and does not grant any
// -- rights to the materials distributed herewith. Except as
// -- otherwise provided in a valid license issued to you by
// -- Xilinx, and to the maximum extent permitted by applicable
// -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// -- (2) Xilinx shall not be liable (whether in contract or tort,
// -- including negligence, or under any other theory of
// -- liability) for any loss or damage of any kind or nature
// -- related to, arising under or in connection with these
// -- materials, including for any direct, or any indirect,
// -- special, incidental, or consequential loss or damage
// -- (including loss of data, profits, goodwill, or any type of
// -- loss or damage suffered as a result of any action brought
// -- by a third party) even if such damage or loss was
// -- reasonably foreseeable or Xilinx had been advised of the
// -- possibility of the same.
// --
// -- CRITICAL APPLICATIONS
// -- Xilinx products are not designed or intended to be fail-
// -- safe, or for use in any application requiring fail-safe
// -- performance, such as life-support or safety devices or
// -- systems, Class III medical devices, nuclear facilities,
// -- applications related to the deployment of airbags, or any
// -- other applications that could lead to death, personal
// -- injury, or severe property or environmental damage
// -- (individually and collectively, "Critical
// -- Applications"). Customer assumes the sole risk and
// -- liability of any use of Xilinx products in Critical
// -- Applications, subject only to applicable laws and
// -- regulations governing limitations on product liability.
// --
// -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// -- PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//
// axis_data_fifo
//   Instantiates AXIS FIFO Generator Core
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_data_fifo
//     fifo_generator_v12_0_5
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axis_data_fifo_v1_1_18_axis_data_fifo #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex6",
   parameter integer C_AXIS_TDATA_WIDTH = 32,
   parameter integer C_AXIS_TID_WIDTH   = 1,
   parameter integer C_AXIS_TDEST_WIDTH = 1,
   parameter integer C_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'hFF,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_FIFO_DEPTH       = 1024,
   //  Valid values 16,32,64,128,256,512,1024,2048,4096,...
   parameter integer C_FIFO_MODE  = 1,
   // Values:
   //   0 == N0 FIFO
   //   1 == Regular FIFO
   //   2 == Store and Forward FIFO (Packet Mode). Requires TLAST.
   parameter integer C_IS_ACLK_ASYNC    = 0,
   //  Enables async clock cross when 1.
   parameter integer C_SYNCHRONIZER_STAGE = 2,
   // Specifies the number of synchronization stages to implement
   parameter integer C_ACLKEN_CONV_MODE  = 0
   // C_ACLKEN_CONV_MODE: Determines how to handle the clock enable pins during
   // clock conversion
   // 0 -- Clock enables not converted
   // 1 -- S_AXIS_ACLKEN can toggle,  M_AXIS_ACLKEN always high.
   // 2 -- S_AXIS_ACLKEN always high, M_AXIS_ACLKEN can toggle.
   // 3 -- S_AXIS_ACLKEN can toggle,  M_AXIS_ACLKEN can toggle.
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire                             s_axis_aresetn,
   input wire                             m_axis_aresetn,
/*   input wire ACLKEN,*/

   // Slave side
   input  wire                            s_axis_aclk,
   input  wire                            s_axis_aclken,
   input  wire                            s_axis_tvalid,
   output wire                            s_axis_tready,
   input  wire [C_AXIS_TDATA_WIDTH-1:0]   s_axis_tdata,
   input  wire [C_AXIS_TDATA_WIDTH/8-1:0] s_axis_tstrb,
   input  wire [C_AXIS_TDATA_WIDTH/8-1:0] s_axis_tkeep,
   input  wire                            s_axis_tlast,
   input  wire [C_AXIS_TID_WIDTH-1:0]     s_axis_tid,
   input  wire [C_AXIS_TDEST_WIDTH-1:0]   s_axis_tdest,
   input  wire [C_AXIS_TUSER_WIDTH-1:0]   s_axis_tuser,

   // Master side
   input  wire                            m_axis_aclk,
   input  wire                            m_axis_aclken,
   output wire                            m_axis_tvalid,
   input  wire                            m_axis_tready,
   output wire [C_AXIS_TDATA_WIDTH-1:0]   m_axis_tdata,
   output wire [C_AXIS_TDATA_WIDTH/8-1:0] m_axis_tstrb,
   output wire [C_AXIS_TDATA_WIDTH/8-1:0] m_axis_tkeep,
   output wire                            m_axis_tlast,
   output wire [C_AXIS_TID_WIDTH-1:0]     m_axis_tid,
   output wire [C_AXIS_TDEST_WIDTH-1:0]   m_axis_tdest,
   output wire [C_AXIS_TUSER_WIDTH-1:0]   m_axis_tuser,

   // Status signals
   output wire [31:0]                     axis_data_count,
   output wire [31:0]                     axis_wr_data_count,
   output wire [31:0]                     axis_rd_data_count
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_TREADY_EXISTS = C_AXIS_SIGNAL_SET[0]? 1: 0;
localparam P_TDATA_EXISTS  = C_AXIS_SIGNAL_SET[1]? 1: 0;
localparam P_TSTRB_EXISTS  = C_AXIS_SIGNAL_SET[2]? 1: 0;
localparam P_TKEEP_EXISTS  = C_AXIS_SIGNAL_SET[3]? 1: 0;
localparam P_TLAST_EXISTS  = C_AXIS_SIGNAL_SET[4]? 1: 0;
localparam P_TID_EXISTS    = C_AXIS_SIGNAL_SET[5]? 1: 0;
localparam P_TDEST_EXISTS  = C_AXIS_SIGNAL_SET[6]? 1: 0;
localparam P_TUSER_EXISTS  = C_AXIS_SIGNAL_SET[7]? 1: 0;
localparam P_AXIS_PAYLOAD_WIDTH = f_payload_width(C_AXIS_TDATA_WIDTH, C_AXIS_TID_WIDTH, C_AXIS_TDEST_WIDTH,
                                             C_AXIS_TUSER_WIDTH, C_AXIS_SIGNAL_SET);
localparam P_WR_PNTR_WIDTH = f_clogb2(C_FIFO_DEPTH);
localparam P_FIFO_COUNT_WIDTH = P_WR_PNTR_WIDTH+1;
localparam P_FIFO_TYPE     = (C_FIFO_DEPTH > 32) ? 1 : 2; // 1 = bram, 2 = lutram.  Force 1 when > 32 deep.
localparam P_IMPLEMENTATION_TYPE_AXIS = C_IS_ACLK_ASYNC ? P_FIFO_TYPE + 10 : P_FIFO_TYPE;
localparam P_COMMON_CLOCK  = C_IS_ACLK_ASYNC ? 0 : 1;
localparam P_MSGON_VAL     = C_IS_ACLK_ASYNC ? 0 : 1;

// Packet mode only valid if tlast is enabled.  Force to 0 if no TLAST
// present.
localparam integer P_APPLICATION_TYPE_AXIS = P_TLAST_EXISTS ? (C_FIFO_MODE == 2) : 0;
localparam integer LP_S_ACLKEN_CAN_TOGGLE = (C_ACLKEN_CONV_MODE == 1) || (C_ACLKEN_CONV_MODE == 3);
localparam integer LP_M_ACLKEN_CAN_TOGGLE = (C_ACLKEN_CONV_MODE == 2) || (C_ACLKEN_CONV_MODE == 3);


////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire [P_FIFO_COUNT_WIDTH-1:0]   axis_data_count_i;
wire [P_FIFO_COUNT_WIDTH-1:0]   axis_wr_data_count_i;
wire [P_FIFO_COUNT_WIDTH-1:0]   axis_rd_data_count_i;
(* KEEP = "TRUE" *)
wire                            s_and_m_aresetn_i;
wire                            m_aclk_internal;
wire                            m_aresetn_internal;
wire                            d1_tvalid;
wire                            d1_tready;
wire [C_AXIS_TDATA_WIDTH-1:0]   d1_tdata;
wire [C_AXIS_TDATA_WIDTH/8-1:0] d1_tstrb;
wire [C_AXIS_TDATA_WIDTH/8-1:0] d1_tkeep;
wire                            d1_tlast;
wire [C_AXIS_TID_WIDTH-1:0]     d1_tid  ;
wire [C_AXIS_TDEST_WIDTH-1:0]   d1_tdest;
wire [C_AXIS_TUSER_WIDTH-1:0]   d1_tuser;

wire                            d2_tvalid;
wire                            d2_tready;
wire [C_AXIS_TDATA_WIDTH-1:0]   d2_tdata;
wire [C_AXIS_TDATA_WIDTH/8-1:0] d2_tstrb;
wire [C_AXIS_TDATA_WIDTH/8-1:0] d2_tkeep;
wire                            d2_tlast;
wire [C_AXIS_TID_WIDTH-1:0]     d2_tid  ;
wire [C_AXIS_TDEST_WIDTH-1:0]   d2_tdest;
wire [C_AXIS_TUSER_WIDTH-1:0]   d2_tuser;

////////////////////////////////////////////////////////////////////////////////
// Tie offs to reduce warnings
////////////////////////////////////////////////////////////////////////////////
localparam C_DIN_WIDTH           = 18;
localparam C_RD_PNTR_WIDTH       = 10;
localparam C_WR_PNTR_WIDTH       = 10;
localparam C_DOUT_WIDTH          = 18;
localparam C_DATA_COUNT_WIDTH    = 10;
localparam C_RD_DATA_COUNT_WIDTH = 10;
localparam C_WR_DATA_COUNT_WIDTH = 10;
localparam C_AXI_ID_WIDTH        = 4;
localparam C_AXI_ADDR_WIDTH      = 32;
localparam C_AXI_DATA_WIDTH      = 64;
/*localparam C_AXI_LEN_WIDTH       = 8;*/
/*localparam C_AXI_LOCK_WIDTH      = 2;*/
/*localparam C_HAS_AXI_ID          = 0;*/
localparam C_AXI_AWUSER_WIDTH    = 1;
localparam C_AXI_ARUSER_WIDTH    = 1;
localparam C_AXI_RUSER_WIDTH     = 1;
localparam C_AXI_BUSER_WIDTH     = 1;
localparam C_AXI_WUSER_WIDTH     = 1;
localparam C_WR_PNTR_WIDTH_RACH  = 4;
localparam C_WR_PNTR_WIDTH_RDCH  = 10;
localparam C_WR_PNTR_WIDTH_WACH  = 4;
localparam C_WR_PNTR_WIDTH_WDCH  = 10;
localparam C_WR_PNTR_WIDTH_WRCH  = 4;
localparam C_RD_PNTR_WIDTH_RACH  = 4;
localparam C_RD_PNTR_WIDTH_RDCH  = 10;
localparam C_RD_PNTR_WIDTH_WACH  = 4;
localparam C_RD_PNTR_WIDTH_WDCH  = 10;
localparam C_RD_PNTR_WIDTH_WRCH  = 4;
localparam C_WR_PNTR_WIDTH_AXIS  = P_WR_PNTR_WIDTH;

wire                               backup;
wire                               backup_marker;
wire                               clk;
wire                               rst;
wire                               srst;
wire                               wr_clk;
wire                               wr_rst;
wire                               wr_rst_busy;
wire                               rd_clk;
wire                               rd_rst;
wire                               rd_rst_busy;
wire [C_DIN_WIDTH-1:0]             din;
wire                               wr_en;
wire                               rd_en;
wire [C_RD_PNTR_WIDTH-1:0]         prog_empty_thresh;
wire [C_RD_PNTR_WIDTH-1:0]         prog_empty_thresh_assert;
wire [C_RD_PNTR_WIDTH-1:0]         prog_empty_thresh_negate;
wire [C_WR_PNTR_WIDTH-1:0]         prog_full_thresh;
wire [C_WR_PNTR_WIDTH-1:0]         prog_full_thresh_assert;
wire [C_WR_PNTR_WIDTH-1:0]         prog_full_thresh_negate;
wire                               int_clk;
wire                               injectdbiterr;
wire                               injectsbiterr;
wire [C_DOUT_WIDTH-1:0]            dout;
wire                               full;
wire                               almost_full;
wire                               wr_ack;
wire                               overflow;
wire                               empty;
wire                               almost_empty;
wire                               valid;
wire                               underflow;
wire [C_DATA_COUNT_WIDTH-1:0]      data_count;
wire [C_RD_DATA_COUNT_WIDTH-1:0]   rd_data_count;
wire [C_WR_DATA_COUNT_WIDTH-1:0]   wr_data_count;
wire                               prog_full;
wire                               prog_empty;
wire                               sbiterr;
wire                               sleep;
wire                               dbiterr;
wire                               m_aclk;
wire                               s_aclk;
wire                               s_aresetn;
wire                               s_aclk_en;
wire                               m_aclk_en;
wire [C_AXI_ID_WIDTH-1:0]          s_axi_awid;
wire [C_AXI_ADDR_WIDTH-1:0]        s_axi_awaddr;
wire [8-1:0]                       s_axi_awlen;
wire [3-1:0]                       s_axi_awsize;
wire [2-1:0]                       s_axi_awburst;
wire [2-1:0]                       s_axi_awlock;
wire [4-1:0]                       s_axi_awcache;
wire [3-1:0]                       s_axi_awprot;
wire [4-1:0]                       s_axi_awqos;
wire [4-1:0]                       s_axi_awregion;
wire [C_AXI_AWUSER_WIDTH-1:0]      s_axi_awuser;
wire                               s_axi_awvalid;
wire                               s_axi_awready;
wire [C_AXI_ID_WIDTH-1:0]          s_axi_wid;
wire [C_AXI_DATA_WIDTH-1:0]        s_axi_wdata;
wire [C_AXI_DATA_WIDTH/8-1:0]      s_axi_wstrb;
wire                               s_axi_wlast;
wire [C_AXI_WUSER_WIDTH-1:0]       s_axi_wuser;
wire                               s_axi_wvalid;
wire                               s_axi_wready;
wire [C_AXI_ID_WIDTH-1:0]          s_axi_bid;
wire [2-1:0]                       s_axi_bresp;
wire [C_AXI_BUSER_WIDTH-1:0]       s_axi_buser;
wire                               s_axi_bvalid;
wire                               s_axi_bready;
wire [C_AXI_ID_WIDTH-1:0]          m_axi_awid;
wire [C_AXI_ADDR_WIDTH-1:0]        m_axi_awaddr;
wire [8-1:0]                       m_axi_awlen;
wire [3-1:0]                       m_axi_awsize;
wire [2-1:0]                       m_axi_awburst;
wire [2-1:0]                       m_axi_awlock;
wire [4-1:0]                       m_axi_awcache;
wire [3-1:0]                       m_axi_awprot;
wire [4-1:0]                       m_axi_awqos;
wire [4-1:0]                       m_axi_awregion;
wire [C_AXI_AWUSER_WIDTH-1:0]      m_axi_awuser;
wire                               m_axi_awvalid;
wire                               m_axi_awready;
wire [C_AXI_ID_WIDTH-1:0]          m_axi_wid;
wire [C_AXI_DATA_WIDTH-1:0]        m_axi_wdata;
wire [C_AXI_DATA_WIDTH/8-1:0]      m_axi_wstrb;
wire                               m_axi_wlast;
wire [C_AXI_WUSER_WIDTH-1:0]       m_axi_wuser;
wire                               m_axi_wvalid;
wire                               m_axi_wready;
wire [C_AXI_ID_WIDTH-1:0]          m_axi_bid;
wire [2-1:0]                       m_axi_bresp;
wire [C_AXI_BUSER_WIDTH-1:0]       m_axi_buser;
wire                               m_axi_bvalid;
wire                               m_axi_bready;
wire [C_AXI_ID_WIDTH-1:0]          s_axi_arid;
wire [C_AXI_ADDR_WIDTH-1:0]        s_axi_araddr;
wire [8-1:0]                       s_axi_arlen;
wire [3-1:0]                       s_axi_arsize;
wire [2-1:0]                       s_axi_arburst;
wire [2-1:0]                       s_axi_arlock;
wire [4-1:0]                       s_axi_arcache;
wire [3-1:0]                       s_axi_arprot;
wire [4-1:0]                       s_axi_arqos;
wire [4-1:0]                       s_axi_arregion;
wire [C_AXI_ARUSER_WIDTH-1:0]      s_axi_aruser;
wire                               s_axi_arvalid;
wire                               s_axi_arready;
wire [C_AXI_ID_WIDTH-1:0]          s_axi_rid;
wire [C_AXI_DATA_WIDTH-1:0]        s_axi_rdata;
wire [2-1:0]                       s_axi_rresp;
wire                               s_axi_rlast;
wire [C_AXI_RUSER_WIDTH-1:0]       s_axi_ruser;
wire                               s_axi_rvalid;
wire                               s_axi_rready;
wire [C_AXI_ID_WIDTH-1:0]          m_axi_arid;
wire [C_AXI_ADDR_WIDTH-1:0]        m_axi_araddr;
wire [8-1:0]                       m_axi_arlen;
wire [3-1:0]                       m_axi_arsize;
wire [2-1:0]                       m_axi_arburst;
wire [2-1:0]                       m_axi_arlock;
wire [4-1:0]                       m_axi_arcache;
wire [3-1:0]                       m_axi_arprot;
wire [4-1:0]                       m_axi_arqos;
wire [4-1:0]                       m_axi_arregion;
wire [C_AXI_ARUSER_WIDTH-1:0]      m_axi_aruser;
wire                               m_axi_arvalid;
wire                               m_axi_arready;
wire [C_AXI_ID_WIDTH-1:0]          m_axi_rid;
wire [C_AXI_DATA_WIDTH-1:0]        m_axi_rdata;
wire [2-1:0]                       m_axi_rresp;
wire                               m_axi_rlast;
wire [C_AXI_RUSER_WIDTH-1:0]       m_axi_ruser;
wire                               m_axi_rvalid;
wire                               m_axi_rready;
wire                               axi_aw_injectsbiterr;
wire                               axi_aw_injectdbiterr;
wire  [C_WR_PNTR_WIDTH_WACH-1:0]   axi_aw_prog_full_thresh;
wire  [C_WR_PNTR_WIDTH_WACH-1:0]   axi_aw_prog_empty_thresh;
wire [C_WR_PNTR_WIDTH_WACH:0]      axi_aw_data_count;
wire [C_WR_PNTR_WIDTH_WACH:0]      axi_aw_wr_data_count;
wire [C_WR_PNTR_WIDTH_WACH:0]      axi_aw_rd_data_count;
wire                               axi_aw_sbiterr;
wire                               axi_aw_dbiterr;
wire                               axi_aw_overflow;
wire                               axi_aw_underflow;
wire                               axi_aw_prog_full;
wire                               axi_aw_prog_empty;
wire                               axi_w_injectsbiterr;
wire                               axi_w_injectdbiterr;
wire  [C_WR_PNTR_WIDTH_WDCH-1:0]   axi_w_prog_full_thresh;
wire  [C_WR_PNTR_WIDTH_WDCH-1:0]   axi_w_prog_empty_thresh;
wire [C_WR_PNTR_WIDTH_WDCH:0]      axi_w_data_count;
wire [C_WR_PNTR_WIDTH_WDCH:0]      axi_w_wr_data_count;
wire [C_WR_PNTR_WIDTH_WDCH:0]      axi_w_rd_data_count;
wire                               axi_w_sbiterr;
wire                               axi_w_dbiterr;
wire                               axi_w_overflow;
wire                               axi_w_underflow;
wire                               axi_w_prog_full;
wire                               axi_w_prog_empty;
wire                               axi_b_injectsbiterr;
wire                               axi_b_injectdbiterr;
wire  [C_WR_PNTR_WIDTH_WRCH-1:0]   axi_b_prog_full_thresh;
wire  [C_WR_PNTR_WIDTH_WRCH-1:0]   axi_b_prog_empty_thresh;
wire [C_WR_PNTR_WIDTH_WRCH:0]      axi_b_data_count;
wire [C_WR_PNTR_WIDTH_WRCH:0]      axi_b_wr_data_count;
wire [C_WR_PNTR_WIDTH_WRCH:0]      axi_b_rd_data_count;
wire                               axi_b_sbiterr;
wire                               axi_b_dbiterr;
wire                               axi_b_overflow;
wire                               axi_b_underflow;
wire                               axi_b_prog_full;
wire                               axi_b_prog_empty;
wire                               axi_ar_injectsbiterr;
wire                               axi_ar_injectdbiterr;
wire  [C_WR_PNTR_WIDTH_RACH-1:0]   axi_ar_prog_full_thresh;
wire  [C_WR_PNTR_WIDTH_RACH-1:0]   axi_ar_prog_empty_thresh;
wire [C_WR_PNTR_WIDTH_RACH:0]      axi_ar_data_count;
wire [C_WR_PNTR_WIDTH_RACH:0]      axi_ar_wr_data_count;
wire [C_WR_PNTR_WIDTH_RACH:0]      axi_ar_rd_data_count;
wire                               axi_ar_sbiterr;
wire                               axi_ar_dbiterr;
wire                               axi_ar_overflow;
wire                               axi_ar_underflow;
wire                               axi_ar_prog_full;
wire                               axi_ar_prog_empty;
wire                               axi_r_injectsbiterr;
wire                               axi_r_injectdbiterr;
wire  [C_WR_PNTR_WIDTH_RDCH-1:0]   axi_r_prog_full_thresh;
wire  [C_WR_PNTR_WIDTH_RDCH-1:0]   axi_r_prog_empty_thresh;
wire [C_WR_PNTR_WIDTH_RDCH:0]      axi_r_data_count;
wire [C_WR_PNTR_WIDTH_RDCH:0]      axi_r_wr_data_count;
wire [C_WR_PNTR_WIDTH_RDCH:0]      axi_r_rd_data_count;
wire                               axi_r_sbiterr;
wire                               axi_r_dbiterr;
wire                               axi_r_overflow;
wire                               axi_r_underflow;
wire                               axi_r_prog_full;
wire                               axi_r_prog_empty;
wire                               axis_injectsbiterr;
wire                               axis_injectdbiterr;
wire  [C_WR_PNTR_WIDTH_AXIS-1:0]   axis_prog_full_thresh;
wire  [C_WR_PNTR_WIDTH_AXIS-1:0]   axis_prog_empty_thresh;
wire                               axis_sbiterr;
wire                               axis_dbiterr;
wire                               axis_overflow;
wire                               axis_underflow;
wire                               axis_prog_full;
wire                               axis_prog_empty;
                                                                                
assign backup                   = 1'b0;
assign backup_marker            = 1'b0;
assign clk                      = 1'b0;
assign rst                      = 1'b0;
assign srst                     = 1'b0;
assign wr_clk                   = 1'b0;
assign wr_rst                   = 1'b0;
assign rd_clk                   = 1'b0;
assign rd_rst                   = 1'b0;
assign din                      = {C_DIN_WIDTH{1'b0}};
assign wr_en                    = 1'b0;
assign rd_en                    = 1'b0;
assign prog_empty_thresh        = {C_RD_PNTR_WIDTH{1'b0}};
assign prog_empty_thresh_assert = {C_RD_PNTR_WIDTH{1'b0}};
assign prog_empty_thresh_negate = {C_RD_PNTR_WIDTH{1'b0}};
assign prog_full_thresh         = {C_WR_PNTR_WIDTH{1'b0}};
assign prog_full_thresh_assert  = {C_WR_PNTR_WIDTH{1'b0}};
assign prog_full_thresh_negate  = {C_WR_PNTR_WIDTH{1'b0}};
assign int_clk                  = 1'b0;
assign injectdbiterr            = 1'b0;
assign injectsbiterr            = 1'b0;
assign sleep                    = 1'b0;
assign s_aclk_en                = 1'b0;
assign m_aclk_en                = 1'b0;
assign s_axi_awid               = {C_AXI_ID_WIDTH{1'b0}};
assign s_axi_awaddr             = {C_AXI_ADDR_WIDTH{1'b0}};
assign s_axi_awlen              = {8{1'b0}};
assign s_axi_awsize             = {3{1'b0}};
assign s_axi_awburst            = {2{1'b0}};
assign s_axi_awlock             = {2{1'b0}};
assign s_axi_awcache            = {4{1'b0}};
assign s_axi_awprot             = {3{1'b0}};
assign s_axi_awqos              = {4{1'b0}};
assign s_axi_awregion           = {4{1'b0}};
assign s_axi_awuser             = {C_AXI_AWUSER_WIDTH{1'b0}};
assign s_axi_awvalid            = 1'b0;
assign s_axi_wid                = {C_AXI_ID_WIDTH{1'b0}};
assign s_axi_wdata              = {C_AXI_DATA_WIDTH{1'b0}};
assign s_axi_wstrb              = {C_AXI_DATA_WIDTH/8{1'b0}};
assign s_axi_wlast              = 1'b0;
assign s_axi_wuser              = {C_AXI_WUSER_WIDTH{1'b0}};
assign s_axi_wvalid             = 1'b0;
assign s_axi_bready             = 1'b0;
assign m_axi_awready            = 1'b0;
assign m_axi_wready             = 1'b0;
assign m_axi_bid                = {C_AXI_ID_WIDTH{1'b0}};
assign m_axi_bresp              = {2{1'b0}};
assign m_axi_buser              = {C_AXI_BUSER_WIDTH{1'b0}};
assign m_axi_bvalid             = 1'b0;
assign s_axi_arid               = {C_AXI_ID_WIDTH{1'b0}};
assign s_axi_araddr             = {C_AXI_ADDR_WIDTH{1'b0}};
assign s_axi_arlen              = {8{1'b0}};
assign s_axi_arsize             = {3{1'b0}};
assign s_axi_arburst            = {2{1'b0}};
assign s_axi_arlock             = {2{1'b0}};
assign s_axi_arcache            = {4{1'b0}};
assign s_axi_arprot             = {3{1'b0}};
assign s_axi_arqos              = {4{1'b0}};
assign s_axi_arregion           = {4{1'b0}};
assign s_axi_aruser             = {C_AXI_ARUSER_WIDTH{1'b0}};
assign s_axi_arvalid            = 1'b0;
assign s_axi_rready             = 1'b0;
assign m_axi_arready            = 1'b0;
assign m_axi_rid                = {C_AXI_ID_WIDTH{1'b0}};
assign m_axi_rdata              = {C_AXI_DATA_WIDTH{1'b0}};
assign m_axi_rresp              = {2{1'b0}};
assign m_axi_rlast              = 1'b0;
assign m_axi_ruser              = {C_AXI_RUSER_WIDTH{1'b0}};
assign m_axi_rvalid             = 1'b0;
assign axi_aw_injectsbiterr     = 1'b0;
assign axi_aw_injectdbiterr     = 1'b0;
assign axi_aw_prog_full_thresh  = {C_WR_PNTR_WIDTH_WACH{1'b0}};
assign axi_aw_prog_empty_thresh = {C_WR_PNTR_WIDTH_WACH{1'b0}};
assign axi_w_injectsbiterr      = 1'b0;
assign axi_w_injectdbiterr      = 1'b0;
assign axi_w_prog_full_thresh   = {C_WR_PNTR_WIDTH_WDCH{1'b0}};
assign axi_w_prog_empty_thresh  = {C_WR_PNTR_WIDTH_WDCH{1'b0}};
assign axi_b_injectsbiterr      = 1'b0;
assign axi_b_injectdbiterr      = 1'b0;
assign axi_b_prog_full_thresh   = {C_WR_PNTR_WIDTH_WRCH{1'b0}};
assign axi_b_prog_empty_thresh  = {C_WR_PNTR_WIDTH_WRCH{1'b0}};
assign axi_ar_injectsbiterr     = 1'b0;
assign axi_ar_injectdbiterr     = 1'b0;
assign axi_ar_prog_full_thresh  = {C_WR_PNTR_WIDTH_RACH{1'b0}};
assign axi_ar_prog_empty_thresh = {C_WR_PNTR_WIDTH_RACH{1'b0}};
assign axi_r_injectsbiterr      = 1'b0;
assign axi_r_injectdbiterr      = 1'b0;
assign axi_r_prog_full_thresh   = {C_WR_PNTR_WIDTH_RDCH{1'b0}};
assign axi_r_prog_empty_thresh  = {C_WR_PNTR_WIDTH_RDCH{1'b0}};
assign axis_injectsbiterr       = 1'b0;
assign axis_injectdbiterr       = 1'b0;
assign axis_prog_full_thresh    = {C_WR_PNTR_WIDTH_AXIS{1'b0}};
assign axis_prog_empty_thresh   = {C_WR_PNTR_WIDTH_AXIS{1'b0}};

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

generate
  if (C_IS_ACLK_ASYNC == 1) begin : gen_async_clock_and_reset

    wire m_aresetn_i;
    reg s_and_m_aresetn_r = 1'b1;

    assign m_aclk_internal = m_axis_aclk;
    assign m_aresetn_internal = m_axis_aresetn;

    xpm_cdc_sync_rst #(
      .DEST_SYNC_FF    ( C_SYNCHRONIZER_STAGE ) 
    )
    inst_xpm_cdc_sync_rst (
      .src_rst  ( ~m_axis_aresetn ) ,
      .dest_rst ( m_aresetn_i    ) ,
      .dest_clk  ( s_axis_aclk    ) 
    );

    // Reset into fifo_generator has to be flopped to avoide combinitorial logic in front of synchronizer.
    always @(posedge s_axis_aclk) begin 
      s_and_m_aresetn_r <= s_axis_aresetn & ~m_aresetn_i;
    end

    assign s_and_m_aresetn_i = s_and_m_aresetn_r;

  end else begin : gen_no_async_clock_and_reset
    assign m_aclk_internal    = s_axis_aclk;
    assign m_aresetn_internal = s_axis_aresetn;
    assign s_and_m_aresetn_i  = s_axis_aresetn;
  end

  if (C_FIFO_MODE > 0) begin : gen_fifo_generator
    assign axis_data_count    = (P_COMMON_CLOCK == 1) ? {{(32-P_FIFO_COUNT_WIDTH){1'b0}}, axis_data_count_i} : axis_wr_data_count;
    assign axis_wr_data_count = (P_COMMON_CLOCK == 0) ? {{(32-P_FIFO_COUNT_WIDTH){1'b0}}, axis_wr_data_count_i} : axis_data_count;
    assign axis_rd_data_count = (P_COMMON_CLOCK == 0) ? {{(32-P_FIFO_COUNT_WIDTH){1'b0}}, axis_rd_data_count_i} : axis_data_count;

    axis_infrastructure_v1_1_0_util_aclken_converter_wrapper #(
      .C_TDATA_WIDTH         ( C_AXIS_TDATA_WIDTH     ) ,
      .C_TID_WIDTH           ( C_AXIS_TID_WIDTH       ) ,
      .C_TDEST_WIDTH         ( C_AXIS_TDEST_WIDTH     ) ,
      .C_TUSER_WIDTH         ( C_AXIS_TUSER_WIDTH     ) ,
      .C_S_ACLKEN_CAN_TOGGLE ( LP_S_ACLKEN_CAN_TOGGLE ) ,
      .C_M_ACLKEN_CAN_TOGGLE ( 0                      )
    )
    s_util_aclken_converter_wrapper_0 (
      .ACLK     ( s_axis_aclk    ) ,
      .ARESETN  ( s_axis_aresetn ) ,
      .S_ACLKEN ( s_axis_aclken  ) ,
      .S_VALID  ( s_axis_tvalid  ) ,
      .S_READY  ( s_axis_tready  ) ,
      .S_TDATA  ( s_axis_tdata   ) ,
      .S_TSTRB  ( s_axis_tstrb   ) ,
      .S_TKEEP  ( s_axis_tkeep   ) ,
      .S_TLAST  ( s_axis_tlast   ) ,
      .S_TID    ( s_axis_tid     ) ,
      .S_TDEST  ( s_axis_tdest   ) ,
      .S_TUSER  ( s_axis_tuser   ) ,
      .M_ACLKEN ( m_axis_aclken  ) ,
      .M_VALID  ( d1_tvalid      ) ,
      .M_READY  ( d1_tready      ) ,
      .M_TDATA  ( d1_tdata       ) ,
      .M_TSTRB  ( d1_tstrb       ) ,
      .M_TKEEP  ( d1_tkeep       ) ,
      .M_TLAST  ( d1_tlast       ) ,
      .M_TID    ( d1_tid         ) ,
      .M_TDEST  ( d1_tdest       ) ,
      .M_TUSER  ( d1_tuser       )
    );

    fifo_generator_v13_2_2 #(
      .C_ADD_NGC_CONSTRAINT                ( 0                          ) ,
      .C_APPLICATION_TYPE_AXIS             ( P_APPLICATION_TYPE_AXIS    ) ,
      .C_APPLICATION_TYPE_RACH             ( 0                          ) ,
      .C_APPLICATION_TYPE_RDCH             ( 0                          ) ,
      .C_APPLICATION_TYPE_WACH             ( 0                          ) ,
      .C_APPLICATION_TYPE_WDCH             ( 0                          ) ,
      .C_APPLICATION_TYPE_WRCH             ( 0                          ) ,
      .C_AXI_ADDR_WIDTH                    ( 32                         ) ,
      .C_AXI_ARUSER_WIDTH                  ( 1                          ) ,
      .C_AXI_AWUSER_WIDTH                  ( 1                          ) ,
      .C_AXI_BUSER_WIDTH                   ( 1                          ) ,
      .C_AXI_DATA_WIDTH                    ( 64                         ) ,
      .C_AXI_ID_WIDTH                      ( 4                          ) ,
      .C_AXI_LEN_WIDTH                     ( 8                          ) ,
      .C_AXI_LOCK_WIDTH                    ( 2                          ) ,
      .C_AXI_RUSER_WIDTH                   ( 1                          ) ,
      .C_AXIS_TDATA_WIDTH                  ( C_AXIS_TDATA_WIDTH         ) ,
      .C_AXIS_TDEST_WIDTH                  ( C_AXIS_TDEST_WIDTH         ) ,
      .C_AXIS_TID_WIDTH                    ( C_AXIS_TID_WIDTH           ) ,
      .C_AXIS_TKEEP_WIDTH                  ( C_AXIS_TDATA_WIDTH/8       ) ,
      .C_AXIS_TSTRB_WIDTH                  ( C_AXIS_TDATA_WIDTH/8       ) ,
      .C_AXIS_TUSER_WIDTH                  ( C_AXIS_TUSER_WIDTH         ) ,
      .C_AXIS_TYPE                         ( 0                          ) ,
      .C_AXI_TYPE                          ( 0                          ) ,
      .C_AXI_WUSER_WIDTH                   ( 1                          ) ,
      .C_COMMON_CLOCK                      ( P_COMMON_CLOCK             ) ,
      .C_COUNT_TYPE                        ( 0                          ) ,
      .C_DATA_COUNT_WIDTH                  ( 10                         ) ,
      .C_DEFAULT_VALUE                     ( "BlankString"              ) ,
      .C_DIN_WIDTH                         ( 18                         ) ,
      .C_DIN_WIDTH_AXIS                    ( P_AXIS_PAYLOAD_WIDTH       ) ,
      .C_DIN_WIDTH_RACH                    ( 32                         ) ,
      .C_DIN_WIDTH_RDCH                    ( 64                         ) ,
      .C_DIN_WIDTH_WACH                    ( 32                         ) ,
      .C_DIN_WIDTH_WDCH                    ( 64                         ) ,
      .C_DIN_WIDTH_WRCH                    ( 2                          ) ,
      .C_DOUT_RST_VAL                      ( "0"                        ) ,
      .C_DOUT_WIDTH                        ( 18                         ) ,
      .C_ENABLE_RLOCS                      ( 0                          ) ,
      .C_ENABLE_RST_SYNC                   ( 1                          ) ,
      .C_EN_SAFETY_CKT                     ( 0                          ),
      .C_ERROR_INJECTION_TYPE              ( 0                          ) ,
      .C_ERROR_INJECTION_TYPE_AXIS         ( 0                          ) ,
      .C_ERROR_INJECTION_TYPE_RACH         ( 0                          ) ,
      .C_ERROR_INJECTION_TYPE_RDCH         ( 0                          ) ,
      .C_ERROR_INJECTION_TYPE_WACH         ( 0                          ) ,
      .C_ERROR_INJECTION_TYPE_WDCH         ( 0                          ) ,
      .C_ERROR_INJECTION_TYPE_WRCH         ( 0                          ) ,
      .C_FAMILY                            ( C_FAMILY                   ) ,
      .C_FULL_FLAGS_RST_VAL                ( 1                          ) ,
      .C_HAS_ALMOST_EMPTY                  ( 0                          ) ,
      .C_HAS_ALMOST_FULL                   ( 0                          ) ,
      .C_HAS_AXI_ARUSER                    ( 0                          ) ,
      .C_HAS_AXI_AWUSER                    ( 0                          ) ,
      .C_HAS_AXI_BUSER                     ( 0                          ) ,
      .C_HAS_AXI_ID                        ( 0                          ) ,
      .C_HAS_AXI_RD_CHANNEL                ( 0                          ) ,
      .C_HAS_AXI_RUSER                     ( 0                          ) ,
      .C_HAS_AXIS_TDATA                    ( P_TDATA_EXISTS             ) ,
      .C_HAS_AXIS_TDEST                    ( P_TDEST_EXISTS             ) ,
      .C_HAS_AXIS_TID                      ( P_TID_EXISTS               ) ,
      .C_HAS_AXIS_TKEEP                    ( P_TKEEP_EXISTS             ) ,
      .C_HAS_AXIS_TLAST                    ( P_TLAST_EXISTS             ) ,
      .C_HAS_AXIS_TREADY                   ( P_TREADY_EXISTS            ) ,
      .C_HAS_AXIS_TSTRB                    ( P_TSTRB_EXISTS             ) ,
      .C_HAS_AXIS_TUSER                    ( P_TUSER_EXISTS             ) ,
      .C_HAS_AXI_WR_CHANNEL                ( 0                          ) ,
      .C_HAS_AXI_WUSER                     ( 0                          ) ,
      .C_HAS_BACKUP                        ( 0                          ) ,
      .C_HAS_DATA_COUNT                    ( 0                          ) ,
      .C_HAS_DATA_COUNTS_AXIS              ( 1                          ) ,
      .C_HAS_DATA_COUNTS_RACH              ( 0                          ) ,
      .C_HAS_DATA_COUNTS_RDCH              ( 0                          ) ,
      .C_HAS_DATA_COUNTS_WACH              ( 0                          ) ,
      .C_HAS_DATA_COUNTS_WDCH              ( 0                          ) ,
      .C_HAS_DATA_COUNTS_WRCH              ( 0                          ) ,
      .C_HAS_INT_CLK                       ( 0                          ) ,
      .C_HAS_MASTER_CE                     ( 0                          ) ,
      .C_HAS_MEMINIT_FILE                  ( 0                          ) ,
      .C_HAS_OVERFLOW                      ( 0                          ) ,
      .C_HAS_PROG_FLAGS_AXIS               ( 0                          ) ,
      .C_HAS_PROG_FLAGS_RACH               ( 0                          ) ,
      .C_HAS_PROG_FLAGS_RDCH               ( 0                          ) ,
      .C_HAS_PROG_FLAGS_WACH               ( 0                          ) ,
      .C_HAS_PROG_FLAGS_WDCH               ( 0                          ) ,
      .C_HAS_PROG_FLAGS_WRCH               ( 0                          ) ,
      .C_HAS_RD_DATA_COUNT                 ( 0                          ) ,
      .C_HAS_RD_RST                        ( 0                          ) ,
      .C_HAS_RST                           ( 1                          ) ,
      .C_HAS_SLAVE_CE                      ( 0                          ) ,
      .C_HAS_SRST                          ( 0                          ) ,
      .C_HAS_UNDERFLOW                     ( 0                          ) ,
      .C_HAS_VALID                         ( 0                          ) ,
      .C_HAS_WR_ACK                        ( 0                          ) ,
      .C_HAS_WR_DATA_COUNT                 ( 0                          ) ,
      .C_HAS_WR_RST                        ( 0                          ) ,
      .C_IMPLEMENTATION_TYPE               ( 0                          ) ,
      .C_IMPLEMENTATION_TYPE_AXIS          ( P_IMPLEMENTATION_TYPE_AXIS ) ,
      .C_IMPLEMENTATION_TYPE_RACH          ( 2                          ) ,
      .C_IMPLEMENTATION_TYPE_RDCH          ( 1                          ) ,
      .C_IMPLEMENTATION_TYPE_WACH          ( 2                          ) ,
      .C_IMPLEMENTATION_TYPE_WDCH          ( 1                          ) ,
      .C_IMPLEMENTATION_TYPE_WRCH          ( 2                          ) ,
      .C_INIT_WR_PNTR_VAL                  ( 0                          ) ,
      .C_INTERFACE_TYPE                    ( 1                          ) ,
      .C_MEMORY_TYPE                       ( 1                          ) ,
      .C_MIF_FILE_NAME                     ( "BlankString"              ) ,
      .C_MSGON_VAL                         ( P_MSGON_VAL                ) ,
      .C_OPTIMIZATION_MODE                 ( 0                          ) ,
      .C_OVERFLOW_LOW                      ( 0                          ) ,
      .C_POWER_SAVING_MODE                 ( 0                          ) ,
      .C_PRELOAD_LATENCY                   ( 1                          ) ,
      .C_PRELOAD_REGS                      ( 0                          ) ,
      .C_PRIM_FIFO_TYPE                    ( "4kx4"                     ) ,
      .C_PRIM_FIFO_TYPE_AXIS               ( "512x36"                   ) ,
      .C_PRIM_FIFO_TYPE_RACH               ( "512x36"                   ) ,
      .C_PRIM_FIFO_TYPE_RDCH               ( "512x36"                   ) ,
      .C_PRIM_FIFO_TYPE_WACH               ( "512x36"                   ) ,
      .C_PRIM_FIFO_TYPE_WDCH               ( "512x36"                   ) ,
      .C_PRIM_FIFO_TYPE_WRCH               ( "512x36"                   ) ,
      .C_PROG_EMPTY_THRESH_ASSERT_VAL      ( 2                          ) ,
      .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS ( C_FIFO_DEPTH - 2           ) ,
      .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH ( 14                         ) ,
      .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH ( 1022                       ) ,
      .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH ( 14                         ) ,
      .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH ( 1022                       ) ,
      .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH ( 14                         ) ,
      .C_PROG_EMPTY_THRESH_NEGATE_VAL      ( 3                          ) ,
      .C_PROG_EMPTY_TYPE                   ( 0                          ) ,
      .C_PROG_EMPTY_TYPE_AXIS              ( 0                          ) ,
      .C_PROG_EMPTY_TYPE_RACH              ( 0                          ) ,
      .C_PROG_EMPTY_TYPE_RDCH              ( 0                          ) ,
      .C_PROG_EMPTY_TYPE_WACH              ( 0                          ) ,
      .C_PROG_EMPTY_TYPE_WDCH              ( 0                          ) ,
      .C_PROG_EMPTY_TYPE_WRCH              ( 0                          ) ,
      .C_PROG_FULL_THRESH_ASSERT_VAL       ( 1022                       ) ,
      .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS  ( C_FIFO_DEPTH - 1           ) ,
      .C_PROG_FULL_THRESH_ASSERT_VAL_RACH  ( 15                         ) ,
      .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH  ( 1023                       ) ,
      .C_PROG_FULL_THRESH_ASSERT_VAL_WACH  ( 15                         ) ,
      .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH  ( 1023                       ) ,
      .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH  ( 15                         ) ,
      .C_PROG_FULL_THRESH_NEGATE_VAL       ( 1021                       ) ,
      .C_PROG_FULL_TYPE                    ( 0                          ) ,
      .C_PROG_FULL_TYPE_AXIS               ( 0                          ) ,
      .C_PROG_FULL_TYPE_RACH               ( 0                          ) ,
      .C_PROG_FULL_TYPE_RDCH               ( 0                          ) ,
      .C_PROG_FULL_TYPE_WACH               ( 0                          ) ,
      .C_PROG_FULL_TYPE_WDCH               ( 0                          ) ,
      .C_PROG_FULL_TYPE_WRCH               ( 0                          ) ,
      .C_RACH_TYPE                         ( 0                          ) ,
      .C_RDCH_TYPE                         ( 0                          ) ,
      .C_RD_DATA_COUNT_WIDTH               ( 10                         ) ,
      .C_RD_DEPTH                          ( 1024                       ) ,
      .C_RD_FREQ                           ( 1                          ) ,
      .C_RD_PNTR_WIDTH                     ( 10                         ) ,
      .C_REG_SLICE_MODE_AXIS               ( 0                          ) ,
      .C_REG_SLICE_MODE_RACH               ( 0                          ) ,
      .C_REG_SLICE_MODE_RDCH               ( 0                          ) ,
      .C_REG_SLICE_MODE_WACH               ( 0                          ) ,
      .C_REG_SLICE_MODE_WDCH               ( 0                          ) ,
      .C_REG_SLICE_MODE_WRCH               ( 0                          ) ,
      .C_SELECT_XPM                        ( 0                          ),
      .C_SYNCHRONIZER_STAGE                ( C_SYNCHRONIZER_STAGE       ) ,
      .C_UNDERFLOW_LOW                     ( 0                          ) ,
      .C_USE_COMMON_OVERFLOW               ( 0                          ) ,
      .C_USE_COMMON_UNDERFLOW              ( 0                          ) ,
      .C_USE_DEFAULT_SETTINGS              ( 0                          ) ,
      .C_USE_DOUT_RST                      ( 1                          ) ,
      .C_USE_ECC                           ( 0                          ) ,
      .C_USE_ECC_AXIS                      ( 0                          ) ,
      .C_USE_ECC_RACH                      ( 0                          ) ,
      .C_USE_ECC_RDCH                      ( 0                          ) ,
      .C_USE_ECC_WACH                      ( 0                          ) ,
      .C_USE_ECC_WDCH                      ( 0                          ) ,
      .C_USE_ECC_WRCH                      ( 0                          ) ,
      .C_USE_EMBEDDED_REG                  ( 0                          ) ,
      .C_USE_FIFO16_FLAGS                  ( 0                          ) ,
      .C_USE_FWFT_DATA_COUNT               ( 0                          ) ,
      .C_USE_PIPELINE_REG                  ( 0                          ) ,
      .C_VALID_LOW                         ( 0                          ) ,
      .C_WACH_TYPE                         ( 0                          ) ,
      .C_WDCH_TYPE                         ( 0                          ) ,
      .C_WR_ACK_LOW                        ( 0                          ) ,
      .C_WRCH_TYPE                         ( 0                          ) ,
      .C_WR_DATA_COUNT_WIDTH               ( 10                         ) ,
      .C_WR_DEPTH                          ( 1024                       ) ,
      .C_WR_DEPTH_AXIS                     ( C_FIFO_DEPTH               ) ,
      .C_WR_DEPTH_RACH                     ( 16                         ) ,
      .C_WR_DEPTH_RDCH                     ( 1024                       ) ,
      .C_WR_DEPTH_WACH                     ( 16                         ) ,
      .C_WR_DEPTH_WDCH                     ( 1024                       ) ,
      .C_WR_DEPTH_WRCH                     ( 16                         ) ,
      .C_WR_FREQ                           ( 1                          ) ,
      .C_WR_PNTR_WIDTH                     ( 10                         ) ,
      .C_WR_PNTR_WIDTH_AXIS                ( P_WR_PNTR_WIDTH            ) ,
      .C_WR_PNTR_WIDTH_RACH                ( 4                          ) ,
      .C_WR_PNTR_WIDTH_RDCH                ( 10                         ) ,
      .C_WR_PNTR_WIDTH_WACH                ( 4                          ) ,
      .C_WR_PNTR_WIDTH_WDCH                ( 10                         ) ,
      .C_WR_PNTR_WIDTH_WRCH                ( 4                          ) ,
      .C_WR_RESPONSE_LATENCY               ( 1                          )
    )
    fifo_generator_inst (
      .almost_empty             ( almost_empty             ) ,
      .almost_full              ( almost_full              ) ,
      .axi_ar_data_count        ( axi_ar_data_count        ) ,
      .axi_ar_dbiterr           ( axi_ar_dbiterr           ) ,
      .axi_ar_injectdbiterr     ( axi_ar_injectdbiterr     ) ,
      .axi_ar_injectsbiterr     ( axi_ar_injectsbiterr     ) ,
      .axi_ar_overflow          ( axi_ar_overflow          ) ,
      .axi_ar_prog_empty        ( axi_ar_prog_empty        ) ,
      .axi_ar_prog_empty_thresh ( axi_ar_prog_empty_thresh ) ,
      .axi_ar_prog_full         ( axi_ar_prog_full         ) ,
      .axi_ar_prog_full_thresh  ( axi_ar_prog_full_thresh  ) ,
      .axi_ar_rd_data_count     ( axi_ar_rd_data_count     ) ,
      .axi_ar_sbiterr           ( axi_ar_sbiterr           ) ,
      .axi_ar_underflow         ( axi_ar_underflow         ) ,
      .axi_ar_wr_data_count     ( axi_ar_wr_data_count     ) ,
      .axi_aw_data_count        ( axi_aw_data_count        ) ,
      .axi_aw_dbiterr           ( axi_aw_dbiterr           ) ,
      .axi_aw_injectdbiterr     ( axi_aw_injectdbiterr     ) ,
      .axi_aw_injectsbiterr     ( axi_aw_injectsbiterr     ) ,
      .axi_aw_overflow          ( axi_aw_overflow          ) ,
      .axi_aw_prog_empty        ( axi_aw_prog_empty        ) ,
      .axi_aw_prog_empty_thresh ( axi_aw_prog_empty_thresh ) ,
      .axi_aw_prog_full         ( axi_aw_prog_full         ) ,
      .axi_aw_prog_full_thresh  ( axi_aw_prog_full_thresh  ) ,
      .axi_aw_rd_data_count     ( axi_aw_rd_data_count     ) ,
      .axi_aw_sbiterr           ( axi_aw_sbiterr           ) ,
      .axi_aw_underflow         ( axi_aw_underflow         ) ,
      .axi_aw_wr_data_count     ( axi_aw_wr_data_count     ) ,
      .axi_b_data_count         ( axi_b_data_count         ) ,
      .axi_b_dbiterr            ( axi_b_dbiterr            ) ,
      .axi_b_injectdbiterr      ( axi_b_injectdbiterr      ) ,
      .axi_b_injectsbiterr      ( axi_b_injectsbiterr      ) ,
      .axi_b_overflow           ( axi_b_overflow           ) ,
      .axi_b_prog_empty         ( axi_b_prog_empty         ) ,
      .axi_b_prog_empty_thresh  ( axi_b_prog_empty_thresh  ) ,
      .axi_b_prog_full          ( axi_b_prog_full          ) ,
      .axi_b_prog_full_thresh   ( axi_b_prog_full_thresh   ) ,
      .axi_b_rd_data_count      ( axi_b_rd_data_count      ) ,
      .axi_b_sbiterr            ( axi_b_sbiterr            ) ,
      .axi_b_underflow          ( axi_b_underflow          ) ,
      .axi_b_wr_data_count      ( axi_b_wr_data_count      ) ,
      .axi_r_data_count         ( axi_r_data_count         ) ,
      .axi_r_dbiterr            ( axi_r_dbiterr            ) ,
      .axi_r_injectdbiterr      ( axi_r_injectdbiterr      ) ,
      .axi_r_injectsbiterr      ( axi_r_injectsbiterr      ) ,
      .axi_r_overflow           ( axi_r_overflow           ) ,
      .axi_r_prog_empty         ( axi_r_prog_empty         ) ,
      .axi_r_prog_empty_thresh  ( axi_r_prog_empty_thresh  ) ,
      .axi_r_prog_full          ( axi_r_prog_full          ) ,
      .axi_r_prog_full_thresh   ( axi_r_prog_full_thresh   ) ,
      .axi_r_rd_data_count      ( axi_r_rd_data_count      ) ,
      .axi_r_sbiterr            ( axi_r_sbiterr            ) ,
      .axi_r_underflow          ( axi_r_underflow          ) ,
      .axi_r_wr_data_count      ( axi_r_wr_data_count      ) ,
      .axis_data_count          ( axis_data_count_i        ) ,
      .axis_dbiterr             ( axis_dbiterr             ) ,
      .axis_injectdbiterr       ( axis_injectdbiterr       ) ,
      .axis_injectsbiterr       ( axis_injectsbiterr       ) ,
      .axis_overflow            ( axis_overflow            ) ,
      .axis_prog_empty          ( axis_prog_empty          ) ,
      .axis_prog_empty_thresh   ( axis_prog_empty_thresh   ) ,
      .axis_prog_full           ( axis_prog_full           ) ,
      .axis_prog_full_thresh    ( axis_prog_full_thresh    ) ,
      .axis_rd_data_count       ( axis_rd_data_count_i     ) ,
      .axis_sbiterr             ( axis_sbiterr             ) ,
      .axis_underflow           ( axis_underflow           ) ,
      .axis_wr_data_count       ( axis_wr_data_count_i     ) ,
      .axi_w_data_count         ( axi_w_data_count         ) ,
      .axi_w_dbiterr            ( axi_w_dbiterr            ) ,
      .axi_w_injectdbiterr      ( axi_w_injectdbiterr      ) ,
      .axi_w_injectsbiterr      ( axi_w_injectsbiterr      ) ,
      .axi_w_overflow           ( axi_w_overflow           ) ,
      .axi_w_prog_empty         ( axi_w_prog_empty         ) ,
      .axi_w_prog_empty_thresh  ( axi_w_prog_empty_thresh  ) ,
      .axi_w_prog_full          ( axi_w_prog_full          ) ,
      .axi_w_prog_full_thresh   ( axi_w_prog_full_thresh   ) ,
      .axi_w_rd_data_count      ( axi_w_rd_data_count      ) ,
      .axi_w_sbiterr            ( axi_w_sbiterr            ) ,
      .axi_w_underflow          ( axi_w_underflow          ) ,
      .axi_w_wr_data_count      ( axi_w_wr_data_count      ) ,
      .backup                   ( backup                   ) ,
      .backup_marker            ( backup_marker            ) ,
      .clk                      ( clk                      ) ,
      .data_count               ( data_count               ) ,
      .dbiterr                  ( dbiterr                  ) ,
      .din                      ( din                      ) ,
      .dout                     ( dout                     ) ,
      .empty                    ( empty                    ) ,
      .full                     ( full                     ) ,
      .injectdbiterr            ( injectdbiterr            ) ,
      .injectsbiterr            ( injectsbiterr            ) ,
      .int_clk                  ( int_clk                  ) ,
      .m_aclk_en                ( m_aclk_en                ) ,
      .m_aclk                   ( m_aclk_internal          ) ,
      .m_axi_araddr             ( m_axi_araddr             ) ,
      .m_axi_arburst            ( m_axi_arburst            ) ,
      .m_axi_arcache            ( m_axi_arcache            ) ,
      .m_axi_arid               ( m_axi_arid               ) ,
      .m_axi_arlen              ( m_axi_arlen              ) ,
      .m_axi_arlock             ( m_axi_arlock             ) ,
      .m_axi_arprot             ( m_axi_arprot             ) ,
      .m_axi_arqos              ( m_axi_arqos              ) ,
      .m_axi_arready            ( m_axi_arready            ) ,
      .m_axi_arregion           ( m_axi_arregion           ) ,
      .m_axi_arsize             ( m_axi_arsize             ) ,
      .m_axi_aruser             ( m_axi_aruser             ) ,
      .m_axi_arvalid            ( m_axi_arvalid            ) ,
      .m_axi_awaddr             ( m_axi_awaddr             ) ,
      .m_axi_awburst            ( m_axi_awburst            ) ,
      .m_axi_awcache            ( m_axi_awcache            ) ,
      .m_axi_awid               ( m_axi_awid               ) ,
      .m_axi_awlen              ( m_axi_awlen              ) ,
      .m_axi_awlock             ( m_axi_awlock             ) ,
      .m_axi_awprot             ( m_axi_awprot             ) ,
      .m_axi_awqos              ( m_axi_awqos              ) ,
      .m_axi_awready            ( m_axi_awready            ) ,
      .m_axi_awregion           ( m_axi_awregion           ) ,
      .m_axi_awsize             ( m_axi_awsize             ) ,
      .m_axi_awuser             ( m_axi_awuser             ) ,
      .m_axi_awvalid            ( m_axi_awvalid            ) ,
      .m_axi_bid                ( m_axi_bid                ) ,
      .m_axi_bready             ( m_axi_bready             ) ,
      .m_axi_bresp              ( m_axi_bresp              ) ,
      .m_axi_buser              ( m_axi_buser              ) ,
      .m_axi_bvalid             ( m_axi_bvalid             ) ,
      .m_axi_rdata              ( m_axi_rdata              ) ,
      .m_axi_rid                ( m_axi_rid                ) ,
      .m_axi_rlast              ( m_axi_rlast              ) ,
      .m_axi_rready             ( m_axi_rready             ) ,
      .m_axi_rresp              ( m_axi_rresp              ) ,
      .m_axi_ruser              ( m_axi_ruser              ) ,
      .m_axi_rvalid             ( m_axi_rvalid             ) ,
      .m_axis_tdata             ( d2_tdata                 ) ,
      .m_axis_tdest             ( d2_tdest                 ) ,
      .m_axis_tid               ( d2_tid                   ) ,
      .m_axis_tkeep             ( d2_tkeep                 ) ,
      .m_axis_tlast             ( d2_tlast                 ) ,
      .m_axis_tready            ( d2_tready                ) ,
      .m_axis_tstrb             ( d2_tstrb                 ) ,
      .m_axis_tuser             ( d2_tuser                 ) ,
      .m_axis_tvalid            ( d2_tvalid                ) ,
      .m_axi_wdata              ( m_axi_wdata              ) ,
      .m_axi_wid                ( m_axi_wid                ) ,
      .m_axi_wlast              ( m_axi_wlast              ) ,
      .m_axi_wready             ( m_axi_wready             ) ,
      .m_axi_wstrb              ( m_axi_wstrb              ) ,
      .m_axi_wuser              ( m_axi_wuser              ) ,
      .m_axi_wvalid             ( m_axi_wvalid             ) ,
      .overflow                 ( overflow                 ) ,
      .prog_empty               ( prog_empty               ) ,
      .prog_empty_thresh_assert ( prog_empty_thresh_assert ) ,
      .prog_empty_thresh_negate ( prog_empty_thresh_negate ) ,
      .prog_empty_thresh        ( prog_empty_thresh        ) ,
      .prog_full                ( prog_full                ) ,
      .prog_full_thresh_assert  ( prog_full_thresh_assert  ) ,
      .prog_full_thresh_negate  ( prog_full_thresh_negate  ) ,
      .prog_full_thresh         ( prog_full_thresh         ) ,
      .rd_clk                   ( rd_clk                   ) ,
      .rd_data_count            ( rd_data_count            ) ,
      .rd_en                    ( rd_en                    ) ,
      .rd_rst_busy              ( rd_rst_busy              ) ,
      .rd_rst                   ( rd_rst                   ) ,
      .rst                      ( rst                      ) ,
      .s_aclk_en                ( s_aclk_en                ) ,
      .s_aclk                   ( s_axis_aclk              ) ,
      .s_aresetn                ( s_and_m_aresetn_i        ) ,
      .s_axi_araddr             ( s_axi_araddr             ) ,
      .s_axi_arburst            ( s_axi_arburst            ) ,
      .s_axi_arcache            ( s_axi_arcache            ) ,
      .s_axi_arid               ( s_axi_arid               ) ,
      .s_axi_arlen              ( s_axi_arlen              ) ,
      .s_axi_arlock             ( s_axi_arlock             ) ,
      .s_axi_arprot             ( s_axi_arprot             ) ,
      .s_axi_arqos              ( s_axi_arqos              ) ,
      .s_axi_arready            ( s_axi_arready            ) ,
      .s_axi_arregion           ( s_axi_arregion           ) ,
      .s_axi_arsize             ( s_axi_arsize             ) ,
      .s_axi_aruser             ( s_axi_aruser             ) ,
      .s_axi_arvalid            ( s_axi_arvalid            ) ,
      .s_axi_awaddr             ( s_axi_awaddr             ) ,
      .s_axi_awburst            ( s_axi_awburst            ) ,
      .s_axi_awcache            ( s_axi_awcache            ) ,
      .s_axi_awid               ( s_axi_awid               ) ,
      .s_axi_awlen              ( s_axi_awlen              ) ,
      .s_axi_awlock             ( s_axi_awlock             ) ,
      .s_axi_awprot             ( s_axi_awprot             ) ,
      .s_axi_awqos              ( s_axi_awqos              ) ,
      .s_axi_awready            ( s_axi_awready            ) ,
      .s_axi_awregion           ( s_axi_awregion           ) ,
      .s_axi_awsize             ( s_axi_awsize             ) ,
      .s_axi_awuser             ( s_axi_awuser             ) ,
      .s_axi_awvalid            ( s_axi_awvalid            ) ,
      .s_axi_bid                ( s_axi_bid                ) ,
      .s_axi_bready             ( s_axi_bready             ) ,
      .s_axi_bresp              ( s_axi_bresp              ) ,
      .s_axi_buser              ( s_axi_buser              ) ,
      .s_axi_bvalid             ( s_axi_bvalid             ) ,
      .s_axi_rdata              ( s_axi_rdata              ) ,
      .s_axi_rid                ( s_axi_rid                ) ,
      .s_axi_rlast              ( s_axi_rlast              ) ,
      .s_axi_rready             ( s_axi_rready             ) ,
      .s_axi_rresp              ( s_axi_rresp              ) ,
      .s_axi_ruser              ( s_axi_ruser              ) ,
      .s_axi_rvalid             ( s_axi_rvalid             ) ,
      .s_axis_tdata             ( d1_tdata                 ) ,
      .s_axis_tdest             ( d1_tdest                 ) ,
      .s_axis_tid               ( d1_tid                   ) ,
      .s_axis_tkeep             ( d1_tkeep                 ) ,
      .s_axis_tlast             ( d1_tlast                 ) ,
      .s_axis_tready            ( d1_tready                ) ,
      .s_axis_tstrb             ( d1_tstrb                 ) ,
      .s_axis_tuser             ( d1_tuser                 ) ,
      .s_axis_tvalid            ( d1_tvalid                ) ,
      .s_axi_wdata              ( s_axi_wdata              ) ,
      .s_axi_wid                ( s_axi_wid                ) ,
      .s_axi_wlast              ( s_axi_wlast              ) ,
      .s_axi_wready             ( s_axi_wready             ) ,
      .s_axi_wstrb              ( s_axi_wstrb              ) ,
      .s_axi_wuser              ( s_axi_wuser              ) ,
      .s_axi_wvalid             ( s_axi_wvalid             ) ,
      .sbiterr                  ( sbiterr                  ) ,
      .sleep                    ( sleep                    ) ,
      .srst                     ( srst                     ) ,
      .underflow                ( underflow                ) ,
      .valid                    ( valid                    ) ,
      .wr_ack                   ( wr_ack                   ) ,
      .wr_clk                   ( wr_clk                   ) ,
      .wr_data_count            ( wr_data_count            ) ,
      .wr_en                    ( wr_en                    ) ,
      .wr_rst_busy              ( wr_rst_busy              ) ,
      .wr_rst                   ( wr_rst                   ) 
    );

    axis_infrastructure_v1_1_0_util_aclken_converter_wrapper #(
      .C_TDATA_WIDTH         ( C_AXIS_TDATA_WIDTH     ) ,
      .C_TID_WIDTH           ( C_AXIS_TID_WIDTH       ) ,
      .C_TDEST_WIDTH         ( C_AXIS_TDEST_WIDTH     ) ,
      .C_TUSER_WIDTH         ( C_AXIS_TUSER_WIDTH     ) ,
      .C_S_ACLKEN_CAN_TOGGLE (                      0 ) ,
      .C_M_ACLKEN_CAN_TOGGLE ( LP_M_ACLKEN_CAN_TOGGLE )
    )
    m_util_aclken_converter_wrapper_0 (
      .ACLK     ( m_aclk_internal) ,
      .ARESETN  ( m_aresetn_internal ) ,
      .S_ACLKEN ( s_axis_aclken  ) ,
      .S_VALID  ( d2_tvalid      ) ,
      .S_READY  ( d2_tready      ) ,
      .S_TDATA  ( d2_tdata       ) ,
      .S_TSTRB  ( d2_tstrb       ) ,
      .S_TKEEP  ( d2_tkeep       ) ,
      .S_TLAST  ( d2_tlast       ) ,
      .S_TID    ( d2_tid         ) ,
      .S_TDEST  ( d2_tdest       ) ,
      .S_TUSER  ( d2_tuser       ) ,
      .M_ACLKEN ( m_axis_aclken  ) ,
      .M_VALID  ( m_axis_tvalid  ) ,
      .M_READY  ( (C_AXIS_SIGNAL_SET[0] == 0) ? 1'b1 : m_axis_tready  ) ,
      .M_TDATA  ( m_axis_tdata   ) ,
      .M_TSTRB  ( m_axis_tstrb   ) ,
      .M_TKEEP  ( m_axis_tkeep   ) ,
      .M_TLAST  ( m_axis_tlast   ) ,
      .M_TID    ( m_axis_tid     ) ,
      .M_TDEST  ( m_axis_tdest   ) ,
      .M_TUSER  ( m_axis_tuser   )
    );
  end
  else begin : gen_fifo_passthru
    assign s_axis_tready   = (C_AXIS_SIGNAL_SET[0] == 0) ? 1'b1 : m_axis_tready ;
    assign m_axis_tvalid   = s_axis_tvalid ;
    assign m_axis_tdata    = s_axis_tdata  ;
    assign m_axis_tstrb    = s_axis_tstrb  ;
    assign m_axis_tkeep    = s_axis_tkeep  ;
    assign m_axis_tlast    = s_axis_tlast  ;
    assign m_axis_tid      = s_axis_tid    ;
    assign m_axis_tdest    = s_axis_tdest  ;
    assign m_axis_tuser    = s_axis_tuser  ;
    assign axis_data_count = 32'b0;
    assign axis_wr_data_count = 32'b0;
    assign axis_rd_data_count = 32'b0;
  end
endgenerate

endmodule // axis_data_fifo

`default_nettype wire


