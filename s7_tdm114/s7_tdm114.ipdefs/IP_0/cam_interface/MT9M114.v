`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:35 09/07/2016 
// Design Name: 
// Module Name:    MT9M114 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////





module CAM_interface #(

parameter   C_PIXEL_WIDTH  =  8
  )
   (

input pclk ,

input [9:0]pixel_in,

input line_valid_in,

input frame_valid_in,


output wire pclk_out ,

output wire[C_PIXEL_WIDTH-1:0]Dout,

output wire line_valid_out,

output wire frame_valid_out

    );



reg cam_de;

assign pclk_out  =cam_de  ;



assign  line_valid_out        =  line_valid_in ;

assign  frame_valid_out    =  frame_valid_in;


generate

  if (C_PIXEL_WIDTH == 8 ) begin
  
      assign Dout[7:0] =pixel_in[9:2]  ;
	  
  end
  else
   if (C_PIXEL_WIDTH == 10) begin

       assign Dout[9:0] =pixel_in[9:0]  ;
	   
   end
endgenerate   


BUFG BUFG_PixelClk (
      .O(pclk_out), // 1-bit output: Clock output
      .I(pclk)  // 1-bit input: Clock input
   );





endmodule
