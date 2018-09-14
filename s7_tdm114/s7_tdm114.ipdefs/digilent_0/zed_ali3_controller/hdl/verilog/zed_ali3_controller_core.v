//----------------------------------------------------------------------------
//      _____
//     /     \
//    /____   \____
//   / \===\   \==/
//  /___\===\___\/  AVNET
//       \======/
//        \====/    
//----------------------------------------------------------------------------
//
// This design is the property of Avnet.  Publication of this
// design is not authorized without written consent from Avnet.
// 
// Please direct any questions to:  technical.support@avnet.com
//
// Disclaimer:
//    Avnet, Inc. makes no warranty for the use of this code or design.
//    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
//    any errors, which may appear in this code, nor does it make a commitment
//    to update the information contained herein. Avnet, Inc specifically
//    disclaims any implied warranties of fitness for a particular purpose.
//                     Copyright(c) 2013 Avnet, Inc.
//                             All rights reserved.
//
//----------------------------------------------------------------------------
//
// Create Date:         Feb 27, 2013
// Project Name:        ZedBoard ALI3 Controller
// Module Name:         zed_ali3_controller_core.v
// Target Devices:      Zynq-7000
// Avnet Boards:        ZedBoard
//
// Tool versions:       ISE 14.4
//
// Description:         This project implements a LCD controller 
//                      based on the SerDes 4B 7to1 reference design.
//
// Dependencies:        
//
// Revision:            Feb 27, 2013: 1.00 First Version
//                      Feb 27, 2013: 1.02 Updated to remove PWN and DIM
//                      Oct 13, 2015: 1.03 Updated to add support for 
//                                         additional, higher clock frequency
//                                         modes
//
//----------------------------------------------------------------------------

`timescale 1 ps / 1 ps

module zed_ali3_controller_core # (
  parameter C_PIXEL_CLOCK_RATE = 1 // Default clock rate is 33.33MHz
  )
  (

  input  wire       reset_in,
  input  wire       clk_in,

  output wire       pll_locked,
  output wire       reset_out,
  output wire       clk_out,

  input  wire       de,
  input  wire       vsync,
  input  wire       hsync,
  input  wire [7:0] red,
  input  wire [7:0] green,
  input  wire [7:0] blue,
  
  output wire       ALI_RST_N,
  
  output wire [3:0] ALI_DATA_P,
  output wire [3:0] ALI_DATA_N,
  output wire       ALI_CLK_P,
  output wire       ALI_CLK_N
);

  localparam integer PCLK_D = (C_PIXEL_CLOCK_RATE > 4)? 2 : 3;
  localparam integer PCLK_M = (C_PIXEL_CLOCK_RATE > 4)? 2 : 3;
  localparam real PCLK_D_REAL = (C_PIXEL_CLOCK_RATE > 4)? 2.000 : 3.000;
  localparam real PCLK_M_REAL = (C_PIXEL_CLOCK_RATE > 4)? 2.000 : 3.000;
  // Clock period assignments (in nanoseconds)
  localparam real CLKIN_PERIOD = (C_PIXEL_CLOCK_RATE == 3)? 20.000 : (C_PIXEL_CLOCK_RATE == 5)? 14.06 : 30.000;
  
  wire pll_lckd;
  wire clkfbout;
  wire clk_gen_txclk, clk_gen_txclk_div;
  
  wire clk_in_buf;
  wire reset;
  wire pclk;
  
  //
  // Pixel Rate clock buffer
  //
  BUFG pclkbufg (.I(clk_gen_txclk_div), .O(pclk));
  
  //
  // Input clock buffer
  //
  BUFG clk_inbufg (.I(clk_in), .O(clk_in_buf));

  //////////////////////////////////////////////////////////////////
  // 7x pclk is used to drive IOCLK network so a bit rate reference
  // can be used by OSERDES2
  //////////////////////////////////////////////////////////////////
  clock_generator_pll_7_to_1_diff_sdr # (
	 .TX_CLOCK("BUFIO"),
	 .PIXEL_CLOCK("BUF_G"),
	 .PIXEL_CLOCK_D(PCLK_D),
	 .PIXEL_CLOCK_M(PCLK_M),
	 .PIXEL_CLOCK_D_REAL(PCLK_D_REAL),
	 .PIXEL_CLOCK_M_REAL(PCLK_M_REAL),
	 .CLKIN_PERIOD(CLKIN_PERIOD)
	 //.USE_PLL(0)  // Use MMCM block only, not the PLL block.
  ) clock_generator_serdes (
    .reset(reset_in),
	 .clkin(clk_in),
	 .txclk(clk_gen_txclk),
	 .txclk_div(clk_gen_txclk_div),
	 .mmcm_lckd(pll_lckd)
  );
	 
  synchro #(.INITIALIZE("LOGIC1"))
  synchro_reset (.async(!pll_lckd),.sync(reset),.clk(clk_gen_txclk_div));


  ///////////////////////////////////
  // LVDS 7:1 Serializer
  ///////////////////////////////////

// Parameters for serdes factor and number of IO pins

parameter integer     S = 7 ;			// Set the serdes factor to be 7
parameter integer     D = 4 ;			// Set the number of inputs and outputs to be 4
parameter integer     DS = (D*S)-1 ;		// Used for bus widths = serdes factor * number of inputs - 1

// Parameters for clock generation

parameter [S-1:0] TX_CLK_GEN   = 7'b1100001 ;	// Transmit a constant to make a 3:4 clock, two ticks in advance of bit0 of the data word

// Serializer Pin Mapping

wire	[DS:0] 	txd ;				// Registered Data to serdeses

   // 8 bit MAP B
   assign txd[ 0] = green[0];
   assign txd[ 1] = blue[1];
   assign txd[ 2] = de;
   assign txd[ 3] = 1'b0;
   assign txd[ 4] = red[5];
   assign txd[ 5] = blue[0];
   assign txd[ 6] = vsync;
   assign txd[ 7] = blue[7];
   assign txd[ 8] = red[4];
   assign txd[ 9] = green[5];
   assign txd[10] = hsync;
   assign txd[11] = blue[6];
   assign txd[12] = red[3];
   assign txd[13] = green[4];
   assign txd[14] = blue[5];
   assign txd[15] = green[7];
   assign txd[16] = red[2];
   assign txd[17] = green[3];
   assign txd[18] = blue[4];
   assign txd[19] = green[6];
   assign txd[20] = red[1];
   assign txd[21] = green[2];
   assign txd[22] = blue[3];
   assign txd[23] = red[7];
   assign txd[24] = red[0];
   assign txd[25] = green[1];
   assign txd[26] = blue[2];
   assign txd[27] = red[6];

   /*   
   // 8 bit MAP A
   assign txd[ 0] = green[2];
   assign txd[ 1] = blue[3];
   assign txd[ 2] = de;
   assign txd[ 3] = 1'b0;
   assign txd[ 4] = red[7];
   assign txd[ 5] = blue[2];
   assign txd[ 6] = vsync;
   assign txd[ 7] = blue[1];
   assign txd[ 8] = red[6];
   assign txd[ 9] = green[7];
   assign txd[10] = hsync;
   assign txd[11] = blue[0];
   assign txd[12] = red[5];
   assign txd[13] = green[6];
   assign txd[14] = blue[7];
   assign txd[15] = green[1];
   assign txd[16] = red[4];
   assign txd[17] = green[5];
   assign txd[18] = blue[6];
   assign txd[19] = green[0];
   assign txd[20] = red[3];
   assign txd[21] = green[4];
   assign txd[22] = blue[5];
   assign txd[23] = red[1];
   assign txd[24] = red[2];
   assign txd[25] = green[3];
   assign txd[26] = blue[4];
   assign txd[27] = red[0];
	*/

serdes_7_to_1_diff_sdr #(
      	.D					(D),
      	.DATA_FORMAT	("PER_CLOCK"))
videoout (
	.txclk    		(clk_gen_txclk),
	.reset     		(reset),
	.txclk_div 		(clk_gen_txclk_div),
	.datain  		(txd),  // Parallel data from the display controller source.
	.clk_pattern	(TX_CLK_GEN),  // Transmit a constant to make the clock
	.clkout_p		(ALI_CLK_P),  // Ouput clock channel
	.clkout_n		(ALI_CLK_N),  // Ouput clock channel
	.dataout_p  	(ALI_DATA_P),   // Ouput data channels
	.dataout_n  	(ALI_DATA_N));  // Ouput data channels

   ///////////////////////////////////
   // Output ports
   ///////////////////////////////////

   assign pll_locked = pll_lckd;
   assign reset_out  = reset;
   assign clk_out    = pclk;   

   assign ALI_RST_N  = 1'b1;
 
endmodule
