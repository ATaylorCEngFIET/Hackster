//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axis_register_slice_v1_1_15_tdm_sample (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  input  wire                    slow_clk,
  input  wire                    fast_clk,
  output wire                    sample_cycle
);

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg                slow_clk_div2 = 1'b0;
reg                posedge_finder_first;
reg                posedge_finder_second;
wire               first_edge;
wire               second_edge;
reg                sample_cycle_d;
(* shreg_extract = "no" *) reg                sample_cycle_r;


////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
    always @(posedge slow_clk) begin 
      slow_clk_div2 <= ~slow_clk_div2;
    end

    // Find matching rising edges by clocking slow_clk_div2 onto faster clock
    always @(posedge fast_clk) begin 
      posedge_finder_first <= slow_clk_div2;
    end
    always @(posedge fast_clk) begin 
      posedge_finder_second <= ~slow_clk_div2;
    end

    assign first_edge = slow_clk_div2 & ~posedge_finder_first;
    assign second_edge = ~slow_clk_div2 & ~posedge_finder_second;

    always @(*) begin 
      sample_cycle_d = first_edge | second_edge;
    end
   
    always @(posedge fast_clk) begin 
      sample_cycle_r <= sample_cycle_d;
    end
    
    assign sample_cycle = sample_cycle_r;

endmodule // tdm_sample

`default_nettype wire


// -- (c) Copyright 2010 - 2017 Xilinx, Inc. All rights reserved.
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
// Register Slice
//   Generic single-channel AXI pipeline register on forward and/or reverse signal path
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axic_register_slice_slr
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *) 
module axis_register_slice_v1_1_15_source_region_slr #
  (
   parameter C_FAMILY     = "virtex6",
   parameter integer C_REG_CONFIG = 12,
   parameter integer C_DATA_WIDTH = 32,
   parameter integer C_SLR_WIDTH = 32
   )
  (
   // System Signals
   input wire ACLK,
   input wire ACLK2X,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire [C_DATA_WIDTH-1:0] S_PAYLOAD_DATA,
   input  wire S_VALID,
   output wire S_READY,

   // Master side
   output wire [C_SLR_WIDTH-1:0] laguna_m_payload,
   output wire laguna_m_handshake,
   input  wire m_ready
   );

  generate

  (* dont_touch="true" *) reg areset_d = 1'b0;
  always @(posedge ACLK) begin
    areset_d <= ARESET;
  end
  
  if (C_REG_CONFIG == 13) begin : gen_slr_tdm
    localparam integer P_EVEN_WIDTH = C_DATA_WIDTH[0] ? (C_DATA_WIDTH+1) : C_DATA_WIDTH;
    
    (* shreg_extract = "no" *) reg [P_EVEN_WIDTH-1:0] payload_d1;
    (* shreg_extract = "no" *) reg [C_SLR_WIDTH-1:0]  laguna_payload_tdm_d2;
    (* shreg_extract = "no" *) reg laguna_handshake_d1 = 1'b0;
    reg s_ready_d2 = 1'b0;
    wire sample_cycle;
    integer i;

    assign laguna_m_payload = laguna_payload_tdm_d2;
    assign laguna_m_handshake = laguna_handshake_d1;
    assign S_READY = s_ready_d2;
        
    always @(posedge ACLK) begin
      if (s_ready_d2) begin
        payload_d1 <= S_PAYLOAD_DATA;  // ACLK cycle 1
      end
    end

    always @(posedge ACLK2X) begin
      for (i=0;i<C_SLR_WIDTH;i=i+1) begin  
        if (s_ready_d2) begin
          if (~sample_cycle) begin  // First (high) phase of ACLK cycle 2
            laguna_payload_tdm_d2[i] <= payload_d1[2*i+1];  // Mux odd bits
          end else begin  // Second (low) phase of ACLK cycle 2
            laguna_payload_tdm_d2[i] <= payload_d1[2*i];  // Mux even bits
          end
        end
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        laguna_handshake_d1 <= 1'b0;
        s_ready_d2 <= 1'b0;
      end else begin
        if (s_ready_d2) begin
          laguna_handshake_d1 <= S_VALID & ACLKEN;
        end
        s_ready_d2 <= m_ready;  // Half-cycle setup from dest_region.s_ready_d1
      end
    end

    axis_register_slice_v1_1_15_tdm_sample tdm_sample_inst (
      .slow_clk     (ACLK),
      .fast_clk     (ACLK2X),
      .sample_cycle (sample_cycle)
    );
    
  end else if (C_REG_CONFIG == 12) begin : gen_slr_common

    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] laguna_payload_d1;
    (* shreg_extract = "no" *) reg laguna_handshake_d1 = 1'b0;
    reg s_ready_d2 = 1'b0;
  
    assign laguna_m_payload = laguna_payload_d1;
    assign laguna_m_handshake = laguna_handshake_d1;
    assign S_READY = s_ready_d2;
        
    always @(posedge ACLK) begin
      if (s_ready_d2) begin
        laguna_payload_d1 <= S_PAYLOAD_DATA;  // ACLK cycle 1
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        laguna_handshake_d1 <= 1'b0;
        s_ready_d2 <= 1'b0;
      end else begin
        if (s_ready_d2) begin
          laguna_handshake_d1 <= S_VALID & ACLKEN;
        end
        s_ready_d2 <= m_ready; 
      end
    end
    
  end // gen_slr
endgenerate
endmodule  // source_region_slr

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_register_slice_v1_1_15_dest_region_slr #
  (
   parameter C_FAMILY     = "virtex6",
   parameter integer C_REG_CONFIG = 12,
   parameter integer C_DATA_WIDTH = 32,
   parameter integer C_SLR_WIDTH = 32
   )
  (
   // System Signals
   input wire ACLK,
   input wire ACLK2X,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire [C_SLR_WIDTH-1:0] laguna_s_payload,
   input  wire laguna_s_handshake,
   output wire s_ready,

   // Master side
   output wire [C_DATA_WIDTH-1:0] M_PAYLOAD_DATA,
   output wire M_VALID,
   input  wire M_READY
   );

  generate

  (* dont_touch="true" *) reg areset_d = 1'b0;
  always @(posedge ACLK) begin
    areset_d <= ARESET;
  end
  
  if (C_REG_CONFIG == 13) begin : gen_slr_tdm
    localparam integer P_EVEN_WIDTH = C_DATA_WIDTH[0] ? (C_DATA_WIDTH+1) : C_DATA_WIDTH;
    
    (* shreg_extract = "no" *) reg [C_SLR_WIDTH-1:0]  laguna_payload_tdm_d3;
    (* shreg_extract = "no" *) reg [C_SLR_WIDTH-1:0]  payload_tdm_d4;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out_n1;
    (* shreg_extract = "no" *) reg laguna_handshake_d2 = 1'b0;
    (* shreg_extract = "no" *) reg s_ready_d1 = 1'b0;
    (* shreg_extract = "no" *) reg s_ready_d2 = 1'b0;
    reg [P_EVEN_WIDTH-1:0] payload_demux;
    reg m_valid_r = 1'b0;
    wire push;
    wire pop;
    reg [1:0] fifo_cnt = 2'h0;
    integer i;
    
    assign s_ready = s_ready_d1;
    assign M_VALID = m_valid_r;
    assign M_PAYLOAD_DATA = fifo_out;  // Registered outputs
    assign pop = M_READY & ACLKEN & m_valid_r;
    assign push = laguna_handshake_d2 & s_ready_d2;      

    always @(posedge ACLK) begin
      if (areset_d) begin
        laguna_handshake_d2 <= 1'b0;
      end else if (s_ready_d2) begin
        laguna_handshake_d2 <= laguna_s_handshake;
      end
    end

    always @(posedge ACLK2X) begin
      if (s_ready_d2) begin
        payload_tdm_d4 <= laguna_payload_tdm_d3;
        laguna_payload_tdm_d3 <= laguna_s_payload;
      end
    end
    
    always @ * begin
      for (i=0;i<C_SLR_WIDTH;i=i+1) begin
        payload_demux[2*i+1] = payload_tdm_d4[i];       // Odd bits captured during second (low) phase of ACLK cycle 2
        payload_demux[2*i] = laguna_payload_tdm_d3[i];  // Even bits captured during first (high) phase of ACLK cycle 3
          // Complete payload_demux signal is stable during second (low) phase of ACLK cycle 3 (gets clobbered after each ACLK active edge)
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        fifo_cnt <= 2'h0;
        m_valid_r <=  1'b0;
        s_ready_d2 <= 1'b0;
      end else begin
        s_ready_d2 <= s_ready_d1;  // Half-cycle setup from s_ready_d1
        if (push & ~pop) begin
          fifo_cnt <= fifo_cnt + 2'h1;
          m_valid_r <=  1'b1;
        end else if (~push & pop) begin
          fifo_cnt <= fifo_cnt - 2'h1;
          m_valid_r <= fifo_cnt[1];  // fifo_cnt >= 2
        end
      end
    end

    always @(negedge ACLK) begin
      if (areset_d) begin
        s_ready_d1 <= 1'b0;
      end else begin
        s_ready_d1 <= (M_READY & ACLKEN) | ~m_valid_r;  // Half-cycle setup
      end
    end

    always @(posedge ACLK) begin
      case (fifo_cnt)
        2'h0: begin  // EMPTY
          fifo_out <= payload_demux;
        end
        
        2'h1: begin
          fifo_out_n1 <= payload_demux;
          if (pop) begin
            fifo_out <= payload_demux;
          end
        end
        
        default: begin  // fifo_cnt == 2
          if (pop) begin
            fifo_out <= fifo_out_n1;
            fifo_out_n1 <= payload_demux;
          end
        end
      endcase
    end

  end else if (C_REG_CONFIG == 12) begin : gen_slr_common

    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] laguna_payload_d2;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out_n1;
    (* shreg_extract = "no" *) reg [C_DATA_WIDTH-1:0] fifo_out_n2;
    (* shreg_extract = "no" *) reg laguna_handshake_d2 = 1'b0;
    (* shreg_extract = "no" *) reg s_ready_d1 = 1'b0;
    (* shreg_extract = "no" *) reg s_ready_d2 = 1'b0;
    reg m_valid_r = 1'b0;
    wire push;
    wire pop;
    reg [1:0] fifo_cnt = 2'h0;
    
    assign s_ready = s_ready_d1;
    assign M_VALID = m_valid_r;
    assign M_PAYLOAD_DATA = fifo_out; 
    assign pop = M_READY & ACLKEN & m_valid_r;
    assign push = laguna_handshake_d2 & s_ready_d2;      

    always @(posedge ACLK) begin
      if (s_ready_d2) begin
        laguna_payload_d2 <= laguna_s_payload;
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        laguna_handshake_d2 <= 1'b0;
      end else if (s_ready_d2) begin
        laguna_handshake_d2 <= laguna_s_handshake;
      end
    end

    always @(posedge ACLK) begin
      if (areset_d) begin
        fifo_cnt <= 2'h0;
        m_valid_r <=  1'b0;
        s_ready_d1 <= 1'b0;
        s_ready_d2 <= 1'b0;
      end else begin
        s_ready_d2 <= s_ready_d1; 
        s_ready_d1 <= (M_READY & ACLKEN) | ~m_valid_r; 
        if (push & ~pop) begin
          fifo_cnt <= fifo_cnt + 2'h1;
          m_valid_r <=  1'b1;
        end else if (~push & pop) begin
          fifo_cnt <= fifo_cnt - 2'h1;
          m_valid_r <= fifo_cnt[1];  // fifo_cnt >= 2
        end
      end
    end

    always @(posedge ACLK) begin
      case (fifo_cnt)
        2'h0: begin  // EMPTY
          fifo_out <= laguna_payload_d2;
        end
        
        2'h1: begin
          fifo_out_n1 <= laguna_payload_d2;
          if (pop) begin
            fifo_out <= laguna_payload_d2;
          end
        end
        
        2'h2: begin
          fifo_out_n2 <= laguna_payload_d2;
          if (pop) begin
            fifo_out <= fifo_out_n1;
            fifo_out_n1 <= laguna_payload_d2;
          end
        end
        
        default: begin  // fifo_cnt == 3
          if (pop) begin
            fifo_out <= fifo_out_n1;
            fifo_out_n1 <= fifo_out_n2;
            fifo_out_n2 <= laguna_payload_d2;
          end
        end
      endcase
    end

  end // gen_slr
endgenerate
endmodule  // dest_region_slr


//  (c) Copyright 2010-2011, 2013-2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// Register Slice
//   Generic single-channel AXI pipeline register on forward and/or reverse signal path
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axic_register_slice
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_register_slice_v1_1_15_axisc_register_slice #
  (
   parameter C_FAMILY     = "virtex6",
   parameter C_DATA_WIDTH = 32,
   parameter C_REG_CONFIG = 32'h00000001
   // C_REG_CONFIG:
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => DEFAULT   = Minimized fanout on input signals M_READY and S_TVALID
   //   2 => FWD       = The master VALID and payload signals are registrated. 
   //   3 => REV       = The slave ready signal is registrated
   //   4 => RESERVED (all outputs driven to 0).
   //   5 => RESERVED (all outputs driven to 0).
   //   6 => INPUTS    = Slave and Master side inputs are registrated.
   //   7 => LIGHT_WT  = 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
   //   8 => FWD_REV   = Both FWD and REV (fully-registered)
   //   10 => NO_READY = Assume no ready signal
   //   12 => SLR Crossing (source->dest flops, full-width payload, single clock)
   //   13 => TDM SLR Crossing (source->dest flops, half-width payload, dual clock)
   )
  (
   // System Signals
   input wire ACLK,
   input wire ACLK2X,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire [C_DATA_WIDTH-1:0] S_PAYLOAD_DATA,
   input  wire S_VALID,
   output wire S_READY,

   // Master side
   output  wire [C_DATA_WIDTH-1:0] M_PAYLOAD_DATA,
   output wire M_VALID,
   input  wire M_READY
   );

  generate
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 0
  // Bypass mode
  //
  ////////////////////////////////////////////////////////////////////
    if (C_REG_CONFIG == 32'h00000000)
    begin
      assign M_PAYLOAD_DATA = S_PAYLOAD_DATA;
      assign M_VALID        = S_VALID;
      assign S_READY        = M_READY;      
    end
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 12 or 13
  // TDM SLR Crossing
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h0000000C) || (C_REG_CONFIG == 32'h0000000D))
    begin : gen_slr_crossing
      localparam integer P_EVEN_WIDTH = C_DATA_WIDTH[0] ? (C_DATA_WIDTH+1) : C_DATA_WIDTH;
      localparam integer P_TDM_WIDTH = P_EVEN_WIDTH/2;
      localparam integer P_SLR_WIDTH = (C_REG_CONFIG == 13) ? P_TDM_WIDTH : C_DATA_WIDTH;
      
      wire [P_SLR_WIDTH-1:0] slr_payload;
      wire slr_handshake;
      wire slr_ready;
          
      axis_register_slice_v1_1_15_source_region_slr #(
        .C_FAMILY     ( C_FAMILY         ) ,
        .C_REG_CONFIG ( C_REG_CONFIG       ) ,
        .C_DATA_WIDTH ( C_DATA_WIDTH ) ,
        .C_SLR_WIDTH  ( P_SLR_WIDTH )
      )
      slr_source_0 (
        .ACLK           ( ACLK            ) ,
        .ACLK2X         ( ACLK2X            ) ,
        .ARESET         ( ARESET        ) ,
        .ACLKEN         ( ACLKEN          ) ,
        .S_PAYLOAD_DATA ( S_PAYLOAD_DATA ) ,
        .S_VALID        ( S_VALID   ) ,
        .S_READY        ( S_READY   ) ,
        .laguna_m_payload   ( slr_payload ) , 
        .laguna_m_handshake ( slr_handshake   ) ,
        .m_ready            ( slr_ready   )
      );

      axis_register_slice_v1_1_15_dest_region_slr #(
        .C_FAMILY     ( C_FAMILY         ) ,
        .C_REG_CONFIG ( C_REG_CONFIG       ) ,
        .C_DATA_WIDTH ( C_DATA_WIDTH ) ,
        .C_SLR_WIDTH  ( P_SLR_WIDTH )
      )
      slr_dest_0 (
        .ACLK           ( ACLK            ) ,
        .ACLK2X         ( ACLK2X            ) ,
        .ARESET         ( ARESET        ) ,
        .ACLKEN         ( ACLKEN          ) ,
        .laguna_s_payload   ( slr_payload ) ,
        .laguna_s_handshake ( slr_handshake   ) ,
        .s_ready            ( slr_ready   ) ,
        .M_PAYLOAD_DATA ( M_PAYLOAD_DATA ) , 
        .M_VALID        ( M_VALID   ) ,
        .M_READY        ( M_READY   )
      );
  
  end // if (C_REG_CONFIG == 12 or 13 )
        
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 10
  // No ready, single stage register
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h0000000A)
    begin : NO_READY
      
      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg                    m_valid_r = 1'b0; //local signal of output

      // assign local signal to its output signal
      assign S_READY = 1'b1;
      assign M_VALID = m_valid_r;

      // Load storage1 with slave side data
      always @(posedge ACLK) 
      begin
        if (ACLKEN) begin
          storage_data1 <= S_PAYLOAD_DATA; 
          m_valid_r <= S_VALID;
        end
      end

      assign M_PAYLOAD_DATA = storage_data1;


    end // if (C_REG_CONFIG == 10 )
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 1
  // Minimized fanout on input signals M_READY and S_TVALID
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000001) begin : gen_AB_reg_slice
  //                           /----------S_READY
  //                           |/---------M_VALID
      localparam SM_RESET = 2'b00;
      localparam SM_IDLE  = 2'b10;
      localparam SM_ONE   = 2'b11;
      localparam SM_FULL  = 2'b01;
   
      (* fsm_encoding = "none" *) reg [1:0] state = SM_RESET;
      reg [C_DATA_WIDTH-1:0] payload_a;
      reg [C_DATA_WIDTH-1:0] payload_b;
      reg sel_rd = 1'b0;
      reg sel_wr = 1'b0;
      wire sel;
      wire load_a;
      wire load_b;
      
      assign M_VALID = state[0];
      assign S_READY = state[1];

      always @(posedge ACLK) begin 
        if (ARESET) begin
          state <= SM_RESET;
        end
        else if (ACLKEN) begin
          case (state)
            SM_IDLE:
              if (S_VALID)
                state <= SM_ONE;
            SM_ONE:
              if (S_VALID & ~M_READY)
                state <= SM_FULL;
              else if (~S_VALID & M_READY)
                state <= SM_IDLE;
            SM_FULL:
              if (M_READY)
                state <= SM_ONE;
            // SM_RESET:
            default:
              state <= SM_IDLE;
          endcase
        end
      end

      assign sel = sel_rd; 

      always @(posedge ACLK) begin 
        if (ARESET) begin
          sel_rd <= 1'b0;
        end 
        else if (ACLKEN) begin
          sel_rd <= (M_READY & M_VALID) ? ~sel_rd : sel_rd;
        end
      end

      assign load_a = ~sel_wr & (state != SM_FULL);
      assign load_b = sel_wr & (state != SM_FULL);
      always @(posedge ACLK) begin 
        if (ARESET) begin
          sel_wr <= 1'b0;
        end 
        else if (ACLKEN) begin
          sel_wr <= (S_READY & S_VALID) ? ~sel_wr : sel_wr;
        end
      end

      always @(posedge ACLK) begin 
        if (ACLKEN) begin 
          payload_a <= load_a ? S_PAYLOAD_DATA : payload_a;
        end
      end

      always @(posedge ACLK) begin 
        if (ACLKEN) begin 
          payload_b <= load_b ? S_PAYLOAD_DATA : payload_b;
        end
      end

      assign M_PAYLOAD_DATA = sel ? payload_b : payload_a;

    end // if (C_REG_CONFIG == 1 )
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 8 
  // Both FWD and REV mode
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h00000008))
    begin
      localparam [1:0] 
        ZERO = 2'b10,
        ONE  = 2'b11,
        TWO  = 2'b01;
      (* fsm_encoding = "none" *) reg [1:0] state = ZERO;
      
      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg [C_DATA_WIDTH-1:0] storage_data2;
      reg                    load_s1;
      wire                   load_s2;
      wire                   load_s1_from_s2;
      reg                    s_ready_i = 1'b0; //local signal of output
      wire                   m_valid_i; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      (* equivalent_register_removal = "no" *) reg [1:0] areset_d = 2'b11; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= {areset_d[0], ARESET};
        end
      end
      
      // Load storage1 with either slave side data or from storage2
      always @(posedge ACLK) 
      begin
        if (ACLKEN) begin
          storage_data1 <= ~load_s1 ? storage_data1 : 
                           load_s1_from_s2 ? storage_data2 : 
                           S_PAYLOAD_DATA; 
        end
      end

      // Load storage2 with slave side data
      always @(posedge ACLK) 
      begin
        if (ACLKEN) begin
          storage_data2 <= load_s2 ? S_PAYLOAD_DATA : storage_data2;
        end
      end

      assign M_PAYLOAD_DATA = storage_data1;

      // Always load s2 on a valid transaction even if it's unnecessary
      assign load_s2 = S_VALID & s_ready_i;

      // Loading s1
      always @ *
      begin
        if ( ((state == ZERO) && (S_VALID == 1)) || // Load when empty on slave transaction
             // Load when ONE if we both have read and write at the same time
             ((state == ONE) && (S_VALID == 1) && (M_READY == 1)) ||
             // Load when TWO and we have a transaction on Master side
             ((state == TWO) && (M_READY == 1)))
          load_s1 = 1'b1;
        else
          load_s1 = 1'b0;
      end // always @ *

      assign load_s1_from_s2 = (state == TWO);
                       
      // State Machine for handling output signals
      always @(posedge ACLK) begin
        if (ARESET) begin
          s_ready_i <= 1'b0;
          state <= ZERO;
        end else if (ACLKEN && areset_d == 2'b10) begin
          s_ready_i <= 1'b1;
          state <= ZERO;
        end else if (ACLKEN && areset_d == 2'b00) begin
          case (state)
            // No transaction stored locally
            ZERO: if (S_VALID) state <= ONE; // Got one so move to ONE

            // One transaction stored locally
            ONE: begin
              if (M_READY & ~S_VALID) state <= ZERO; // Read out one so move to ZERO
              if (~M_READY & S_VALID) begin
                state <= TWO;  // Got another one so move to TWO
                s_ready_i <= 1'b0;
              end
            end

            // TWO transaction stored locally
            TWO: if (M_READY) begin
              state <= ONE; // Read out one so move to ONE
              s_ready_i <= 1'b1;
            end

            default: 
              state <= ZERO;

          endcase // case (state)
        end
      end // always @ (posedge ACLK)
      
      assign m_valid_i = state[0];

    end // if (C_REG_CONFIG == 8)
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 2
  // Only FWD mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000002)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data;
      wire                   s_ready_i; //local signal of output
      reg                    m_valid_i = 1'b0; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      (* equivalent_register_removal = "no" *) reg [1:0] areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= {areset_d[0], ARESET};
        end
      end
      
      // Save payload data whenever we have a transaction on the slave side
      always @(posedge ACLK) 
      begin
        if (ACLKEN)
          storage_data <= (S_VALID & s_ready_i) ? S_PAYLOAD_DATA : storage_data;
      end

      assign M_PAYLOAD_DATA = storage_data;
      
      // M_Valid set to high when we have a completed transfer on slave side
      // Is removed on a M_READY except if we have a new transfer on the slave side
      always @(posedge ACLK) begin
        if (areset_d) begin
          m_valid_i <= 1'b0;
        end 
        else if (ACLKEN) begin
            m_valid_i <= S_VALID ? 1'b1 :  // Always set m_valid_i when slave side is valid
                       M_READY ? 1'b0 :  // Clear (or keep) when no slave side is valid but master side is ready
                         m_valid_i;
        end
      end // always @ (posedge ACLK)
      
      // Slave Ready is either when Master side drives M_Ready or we have space in our storage data
      assign s_ready_i = (M_READY | ~m_valid_i) & ~|areset_d;

    end // if (C_REG_CONFIG == 2)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 3
  // Only REV mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000003)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data;
      reg                    s_ready_i = 1'b0; //local signal of output
      reg                    has_valid_storage_i;
      reg                    has_valid_storage;

      (* equivalent_register_removal = "no" *) reg areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= ARESET;
        end
      end
      
      // Save payload data whenever we have a transaction on the slave side
      always @(posedge ACLK) 
      begin
        if (ACLKEN)
          storage_data <= (S_VALID & s_ready_i) ? S_PAYLOAD_DATA : storage_data;
      end

      assign M_PAYLOAD_DATA = has_valid_storage ? storage_data : S_PAYLOAD_DATA;

      // Need to determine when we need to save a payload
      // Need a combinatorial signals since it will also effect S_READY
      always @ *
      begin
        // Set the value if we have a slave transaction but master side is not ready
        if (S_VALID & s_ready_i & ~M_READY)
          has_valid_storage_i = 1'b1;
        
        // Clear the value if it's set and Master side completes the transaction but we don't have a new slave side 
        // transaction 
        else if ( (has_valid_storage == 1) && (M_READY == 1) && ( (S_VALID == 0) || (s_ready_i == 0)))
          has_valid_storage_i = 1'b0;
        else
          has_valid_storage_i = has_valid_storage;
      end // always @ *

      always @(posedge ACLK) 
      begin
        if (ARESET) begin
          has_valid_storage <= 1'b0;
        end
        else if (ACLKEN) begin
          has_valid_storage <= has_valid_storage_i;
        end
      end

      // S_READY is either clocked M_READY or that we have room in local storage
      always @(posedge ACLK) begin
        if (ARESET) begin
          s_ready_i <= 1'b0;
        end
        else if (ACLKEN) begin
          s_ready_i <= M_READY | ~has_valid_storage_i;
        end
      end

      // assign local signal to its output signal
      assign S_READY = s_ready_i;

      // M_READY is either combinatorial S_READY or that we have valid data in local storage
      assign M_VALID = (S_VALID | has_valid_storage) & ~areset_d;
      
    end // if (C_REG_CONFIG == 3)
    
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 4 or 5 is NO LONGER SUPPORTED
  //
  ////////////////////////////////////////////////////////////////////
    else if ((C_REG_CONFIG == 32'h00000004) || (C_REG_CONFIG == 32'h00000005))
    begin
// synthesis translate_off
      initial begin  
        $display ("ERROR: For axi_register_slice, C_REG_CONFIG = 4 or 5 is RESERVED.");
      end
// synthesis translate_on
      assign M_PAYLOAD_DATA = 0;
      assign M_VALID        = 1'b0;
      assign S_READY        = 1'b0;    
    end  

  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 6
  // INPUTS mode
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000006)
    begin
      localparam [1:0] 
        ZERO = 2'b00,
        ONE  = 2'b01,
        TWO  = 2'b11;
      reg [1:0] state = ZERO;
      reg [1:0] next_state;

      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg [C_DATA_WIDTH-1:0] storage_data2;
      reg                    s_valid_d = 1'b0;
      reg                    s_ready_d = 1'b0;
      reg                    m_ready_d = 1'b0;
      reg                    m_valid_d = 1'b0;
      reg                    load_s2;
      reg                    sel_s2;
      wire                   new_access;
      wire                   access_done;
      wire                   s_ready_i; //local signal of output
      reg                    s_ready_ii;
      reg                    m_valid_i; //local signal of output
      
      (* equivalent_register_removal = "no" *) reg areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= ARESET;
        end
      end
      
      // assign local signal to its output signal
      assign S_READY = (state == ZERO) ? 1'b0 : s_ready_i;
      assign M_VALID = (state == ZERO) ? 1'b0 : m_valid_i;
      assign s_ready_i = s_ready_ii & ~areset_d;

      // Registrate input control signals
      always @(posedge ACLK) 
      begin
        if (ARESET) begin          
          s_valid_d <= 1'b0;
          s_ready_d <= 1'b0;
          m_ready_d <= 1'b0;
        end else if (ACLKEN) begin
          s_valid_d <= S_VALID;
          s_ready_d <= s_ready_i;
          m_ready_d <= M_READY;
        end
      end // always @ (posedge ACLK)

      // Load storage1 with slave side payload data when slave side ready is high
      always @(posedge ACLK) 
      begin
        if (ACLKEN)
          storage_data1 <= (s_ready_i) ? S_PAYLOAD_DATA : storage_data1;          
      end

      // Load storage2 with storage data 
      always @(posedge ACLK) 
      begin
        if (ACLKEN)
          storage_data2 <= load_s2 ? storage_data1 : storage_data2;
      end

      always @(posedge ACLK) 
      begin
        if (ARESET) 
          m_valid_d <= 1'b0;
        else if (ACLKEN)
          m_valid_d <= m_valid_i;
      end

      // Local help signals
      assign new_access  = s_ready_d & s_valid_d;
      assign access_done = m_ready_d & m_valid_d;


      // State Machine for handling output signals
      always @*
      begin
        next_state = state; // Stay in the same state unless we need to move to another state
        load_s2   = 0;
        sel_s2    = 0;
        m_valid_i = 0;
        s_ready_ii = 0;
        case (state)
            // No transaction stored locally
            ZERO: begin
              load_s2   = 0;
              sel_s2    = 0;
              m_valid_i = 0;
              s_ready_ii = 1;
              if (new_access) begin
                next_state = ONE; // Got one so move to ONE
                load_s2   = 1;
                m_valid_i = 0;
              end
              else begin
                next_state = next_state;
                load_s2   = load_s2;
                m_valid_i = m_valid_i;
              end

            end // case: ZERO

            // One transaction stored locally
            ONE: begin
              load_s2   = 0;
              sel_s2    = 1;
              m_valid_i = 1;
              s_ready_ii = 1;
              if (~new_access & access_done) begin
                next_state = ZERO; // Read out one so move to ZERO
                m_valid_i = 0;                      
              end
              else if (new_access & ~access_done) begin
                next_state = TWO;  // Got another one so move to TWO
                s_ready_ii = 0;
              end
              else if (new_access & access_done) begin
                load_s2   = 1;
                sel_s2    = 0;
              end
              else begin
                load_s2   = load_s2;
                sel_s2    = sel_s2;
              end


            end // case: ONE

            // TWO transaction stored locally
            TWO: begin
              load_s2   = 0;
              sel_s2    = 1;
              m_valid_i = 1;
              s_ready_ii = 0;
              if (access_done) begin 
                next_state = ONE; // Read out one so move to ONE
                s_ready_ii  = 1;
                load_s2    = 1;
                sel_s2     = 0;
              end
              else begin
                next_state = next_state;
                s_ready_ii  = s_ready_ii;
                load_s2    = load_s2;
                sel_s2     = sel_s2;
              end
            end // case: TWO
        endcase // case (state)
      end // always @ *


      // State Machine for handling output signals
      always @(posedge ACLK) 
      begin
        if (ARESET) 
          state <= ZERO;
        else if (ACLKEN)
          state <= next_state; // Stay in the same state unless we need to move to another state
      end
      
      // Master Payload mux
      assign M_PAYLOAD_DATA = sel_s2?storage_data2:storage_data1;

    end // if (C_REG_CONFIG == 6)
  ////////////////////////////////////////////////////////////////////
  //
  // C_REG_CONFIG = 7
  // Light-weight mode.
  // 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
  // Operates same as 1-deep FIFO
  //
  ////////////////////////////////////////////////////////////////////
    else if (C_REG_CONFIG == 32'h00000007)
    begin
      reg [C_DATA_WIDTH-1:0] storage_data1;
      reg                    s_ready_i = 1'b0; //local signal of output
      reg                    m_valid_i = 1'b0; //local signal of output

      // assign local signal to its output signal
      assign S_READY = s_ready_i;
      assign M_VALID = m_valid_i;

      (* equivalent_register_removal = "no" *) reg [1:0] areset_d; // Reset delay register
      always @(posedge ACLK) begin
        if (ACLKEN) begin
          areset_d <= {areset_d[0], ARESET};
        end
      end
      
      // Load storage1 with slave side data
      always @(posedge ACLK) 
      begin
        if (ARESET) begin
          s_ready_i <= 1'b0;
          m_valid_i <= 1'b0;
        end else if (ACLKEN && areset_d == 2'b10) begin
          s_ready_i <= 1'b1;
        end else if (ACLKEN && areset_d == 2'b00) begin
          if (m_valid_i & M_READY) begin
            s_ready_i <= 1'b1;
            m_valid_i <= 1'b0;
          end else if (S_VALID & s_ready_i) begin
            s_ready_i <= 1'b0;
            m_valid_i <= 1'b1;
          end
        end
        if (~m_valid_i) begin
          storage_data1 <= S_PAYLOAD_DATA;        
        end
      end
      assign M_PAYLOAD_DATA = storage_data1;
    end // if (C_REG_CONFIG == 7)
    
    else begin : default_case
      // Passthrough
      assign M_PAYLOAD_DATA = S_PAYLOAD_DATA;
      assign M_VALID        = S_VALID;
      assign S_READY        = M_READY;      
    end

  endgenerate
endmodule // axisc_register_slice


//  (c) Copyright 2011-2014 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// Register Slice
//   Generic single-channel AXIS pipeline register on forward and/or reverse signal path.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_register_slice
//     util_axis2vector
//     axisc_register_slice
//     util_vector2axis
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_register_slice_v1_1_15_axis_register_slice #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex6",
   parameter integer C_AXIS_TDATA_WIDTH = 8,
   parameter integer C_AXIS_TID_WIDTH   = 1,
   parameter integer C_AXIS_TDEST_WIDTH = 1,
   parameter integer C_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'h3,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_REG_CONFIG       = 1
   // C_REG_CONFIG:
   //   0 => BYPASS    = The channel is just wired through the module.
   //   1 => DEFAULT   = Minimized fanout on input signals M_READY and S_TVALID
   //   2 => FWD       = The master VALID and payload signals are registrated. 
   //   3 => REV       = The slave ready signal is registrated
   //   4 => RESERVED (all outputs driven to 0).
   //   5 => RESERVED (all outputs driven to 0).
   //   6 => INPUTS    = Slave and Master side inputs are registrated.
   //   7 => LIGHT_WT  = 1-stage pipeline register with bubble cycle, both FWD and REV pipelining
   //   8 => FWD_REV   = Both FWD and REV (fully-registered)
   //   10 => NO_READY = Assume no ready signal
   //   12 => SLR Crossing (source->dest flops, full-width payload, single clock)
   //   13 => TDM SLR Crossing (source->dest flops, half-width payload, dual clock)
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire aclk,
   input wire aclk2x,
   input wire aresetn,
   input wire aclken,

   // Slave side
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
   output wire                            m_axis_tvalid,
   input  wire                            m_axis_tready,
   output wire [C_AXIS_TDATA_WIDTH-1:0]   m_axis_tdata,
   output wire [C_AXIS_TDATA_WIDTH/8-1:0] m_axis_tstrb,
   output wire [C_AXIS_TDATA_WIDTH/8-1:0] m_axis_tkeep,
   output wire                            m_axis_tlast,
   output wire [C_AXIS_TID_WIDTH-1:0]     m_axis_tid,
   output wire [C_AXIS_TDEST_WIDTH-1:0]   m_axis_tdest,
   output wire [C_AXIS_TUSER_WIDTH-1:0]   m_axis_tuser
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
  localparam P_TPAYLOAD_WIDTH = f_payload_width(C_AXIS_TDATA_WIDTH, C_AXIS_TID_WIDTH, 
                                                C_AXIS_TDEST_WIDTH, C_AXIS_TUSER_WIDTH, 
                                                C_AXIS_SIGNAL_SET);

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg                         areset_r;
wire [P_TPAYLOAD_WIDTH-1:0] s_axis_tpayload;
wire [P_TPAYLOAD_WIDTH-1:0] m_axis_tpayload;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
always @(posedge aclk) begin
  areset_r <= ~aresetn;
end

  axis_infrastructure_v1_1_0_util_axis2vector #(
    .C_TDATA_WIDTH    ( C_AXIS_TDATA_WIDTH ) ,
    .C_TID_WIDTH      ( C_AXIS_TID_WIDTH   ) ,
    .C_TDEST_WIDTH    ( C_AXIS_TDEST_WIDTH ) ,
    .C_TUSER_WIDTH    ( C_AXIS_TUSER_WIDTH ) ,
    .C_TPAYLOAD_WIDTH ( P_TPAYLOAD_WIDTH   ) ,
    .C_SIGNAL_SET     ( C_AXIS_SIGNAL_SET  ) 
  )
  util_axis2vector_0 (
    .TDATA    ( s_axis_tdata    ) ,
    .TSTRB    ( s_axis_tstrb    ) ,
    .TKEEP    ( s_axis_tkeep    ) ,
    .TLAST    ( s_axis_tlast    ) ,
    .TID      ( s_axis_tid      ) ,
    .TDEST    ( s_axis_tdest    ) ,
    .TUSER    ( s_axis_tuser    ) ,
    .TPAYLOAD ( s_axis_tpayload )
  );

  axis_register_slice_v1_1_15_axisc_register_slice #(
    .C_FAMILY     ( C_FAMILY         ) ,
    .C_DATA_WIDTH ( P_TPAYLOAD_WIDTH ) ,
    .C_REG_CONFIG ( (C_AXIS_SIGNAL_SET[0] == 0) ? 32'hA : C_REG_CONFIG)
  )
  axisc_register_slice_0 (
    .ACLK           ( aclk            ) ,
    .ACLK2X         ( aclk2x          ) ,
    .ARESET         ( areset_r        ) ,
    .ACLKEN         ( aclken          ) ,
    .S_VALID        ( s_axis_tvalid   ) ,
    .S_READY        ( s_axis_tready   ) ,
    .S_PAYLOAD_DATA ( s_axis_tpayload ) ,

    .M_VALID        ( m_axis_tvalid   ) ,
    .M_READY        ( (C_AXIS_SIGNAL_SET[0] == 0) ? 1'b1 : m_axis_tready   ) ,
    .M_PAYLOAD_DATA ( m_axis_tpayload ) 
  );

  axis_infrastructure_v1_1_0_util_vector2axis #(
    .C_TDATA_WIDTH    ( C_AXIS_TDATA_WIDTH ) ,
    .C_TID_WIDTH      ( C_AXIS_TID_WIDTH   ) ,
    .C_TDEST_WIDTH    ( C_AXIS_TDEST_WIDTH ) ,
    .C_TUSER_WIDTH    ( C_AXIS_TUSER_WIDTH ) ,
    .C_TPAYLOAD_WIDTH ( P_TPAYLOAD_WIDTH   ) ,
    .C_SIGNAL_SET     ( C_AXIS_SIGNAL_SET  ) 
  )
  util_vector2axis_0 (
    .TPAYLOAD ( m_axis_tpayload ) ,
    .TDATA    ( m_axis_tdata    ) ,
    .TSTRB    ( m_axis_tstrb    ) ,
    .TKEEP    ( m_axis_tkeep    ) ,
    .TLAST    ( m_axis_tlast    ) ,
    .TID      ( m_axis_tid      ) ,
    .TDEST    ( m_axis_tdest    ) ,
    .TUSER    ( m_axis_tuser    ) 
  );


endmodule // axis_register_slice

`default_nettype wire



