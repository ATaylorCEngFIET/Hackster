------------------------------------------------------------------------------
-- Copyright (c) 2012 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor: Xilinx
-- \   \   \/    Version: 1.0
--  \   \        Filename: serdes_7_to_1_diff_sdr.vhd
--  /   /        Date Last Modified:  March 30th 2012
-- /___/   /\    Date Created: March 16 2012
-- \   \  /  \
--  \___\/\___\
-- 
--Device: 	7-Series
--Purpose:  	SDR D-bit generic 7:1 transmitter module via 14:1 serdes mode
-- 		Takes in 7*D bits of data and serialises this to D bits
-- 		data is transmitted LSB first
--		Data formatting is set by the DATA_FORMAT parameter. 
--		PER_CLOCK format transmits bits for 0, 7, 14 .. at the same time
--		PER_CHANL format transmits bits for 0, 1, 2 ... at the same time
--		Data inversion can be accomplished via the TX_SWAP_MASK 
--		parameter if required.
--		Also generates clock output
--
--Reference:	XAPP585.pdf
--    
--Revision History:
--    Rev 1.0 - First created (nicks)
------------------------------------------------------------------------------
--
--  Disclaimer: 
--
--		This disclaimer is not a license and does not grant any rights to the materials 
--              distributed herewith. Except as otherwise provided in a valid license issued to you 
--              by Xilinx, and to the maximum extent permitted by applicable law: 
--              (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, 
--              AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
--              INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
--              FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract 
--              or tort, including negligence, or under any other theory of liability) for any loss or damage 
--              of any kind or nature related to, arising under or in connection with these materials, 
--              including for any direct, or any indirect, special, incidental, or consequential loss 
--              or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered 
--              as a result of any action brought by a third party) even if such damage or loss was 
--              reasonably foreseeable or Xilinx had been advised of the possibility of the same.
--
--  Critical Applications:
--
--		Xilinx products are not designed or intended to be fail-safe, or for use in any application 
--		requiring fail-safe performance, such as life-support or safety devices or systems, 
--		Class III medical devices, nuclear facilities, applications related to the deployment of airbags,
--		or any other applications that could lead to death, personal injury, or severe property or 
--		environmental damage (individually and collectively, "Critical Applications"). Customer assumes 
--		the sole risk and liability of any use of Xilinx products in Critical Applications, subject only 
--		to applicable laws and regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all ;

library unisim ;
use unisim.vcomponents.all ;

entity serdes_7_to_1_diff_sdr is generic (
	D 			: integer := 8	;			-- Set the number of outputs
	DATA_FORMAT 		: string := "PER_CLOCK") ;			-- Used to determine method for mapping input parallel word to output serial words
port (                                     	
	txclk			:  in std_logic ;				-- IO Clock network
	reset			:  in std_logic ;				-- Reset line
	txclk_div		:  in std_logic ;				-- 1/2 rate global clock output from BUFG for gearbox
	datain			:  in std_logic_vector(D*7-1 downto 0) ;	-- Data for output
	clk_pattern		:  in std_logic_vector(6 downto 0) ;		-- clock pattern for output
	clkout_p		: out std_logic ;				-- output clock
	clkout_n		: out std_logic ;				-- output clock
	dataout_p		: out std_logic_vector(D-1 downto 0) ;  	-- output data
	dataout_n		: out std_logic_vector(D-1 downto 0)) ;  	-- output data
end serdes_7_to_1_diff_sdr ;

architecture arch_serdes_7_to_1_diff_sdr of serdes_7_to_1_diff_sdr is

signal 	tx_data_out		: std_logic_vector(D-1 downto 0) ;		--
signal 	mdataina 		: std_logic_vector(D*7-1 downto 0) ;		--
signal 	reset_int 		: std_logic ;
signal 	tx_clk_out 		: std_logic ;
	
constant TX_SWAP_MASK : std_logic_vector(D-1 downto 0) := (others => '0') ;	-- pinswap mask for output bits (0 = no swap (default), 1 = swap). Allows outputs to be connected the 'wrong way round' to ease PCB routing.

begin

-- Local reset

process (txclk_div, reset) begin
if reset = '1' then
	reset_int <= '1' ;
elsif txclk_div'event and txclk_div = '1' then
	reset_int <= '0' ;
end if ;
end process ;

loop0 : for i in 0 to D-1 generate

io_data_out : OBUFDS port map (
	O    			=> dataout_p(i),
	OB       		=> dataout_n(i),
	I         		=> tx_data_out(i));

-- re-arrange data bits for transmission and invert lines as given by the mask
-- NOTE If pin inversion is required (non-zero SWAP MASK) then inverters will occur in fabric, as there are no inverters in the OSERDESE2
-- This can be avoided by doing the inversion (if necessary) in the user logic
loop1 : for j in 0 to 6 generate
	loop1a : if DATA_FORMAT = "PER_CLOCK" generate
		mdataina((7*i)+j) <= datain(i+(D*j)) xor TX_SWAP_MASK(i) ;
	end generate ;
	loop1b : if DATA_FORMAT = "PER_CHANL" generate
		mdataina((7*i)+j) <= datain((7*i)+j) xor TX_SWAP_MASK(i) ;
	end generate ;
end generate ;

oserdes_m : OSERDESE2 generic map(
	DATA_WIDTH     		=> 7, 			-- SERDES word width
	TRISTATE_WIDTH     	=> 1, 
	DATA_RATE_OQ      	=> "SDR", 		-- <SDR>, DDR
	DATA_RATE_TQ      	=> "SDR", 		-- <SDR>, DDR
	SERDES_MODE    		=> "MASTER")  		-- <DEFAULT>, MASTER, SLAVE
port map (                     
	OQ       		=> tx_data_out(i),
	OCE     		=> '1',
	CLK    			=> txclk,
	RST     		=> reset_int,
	CLKDIV  		=> txclk_div,
	D8  			=> '0',
	D7  			=> mdataina((7*i)+6),
	D6  			=> mdataina((7*i)+5),
	D5  			=> mdataina((7*i)+4),
	D4  			=> mdataina((7*i)+3),
	D3  			=> mdataina((7*i)+2),
	D2  			=> mdataina((7*i)+1),
	D1  			=> mdataina((7*i)+0),
	TQ  			=> open,
	T1 			=> '0',
	T2 			=> '0',
	T3 			=> '0',
	T4 			=> '0',
	TCE	 		=> '1',
	TBYTEIN			=> '0',
	TBYTEOUT		=> open,
	OFB	 		=> open,
	TFB	 		=> open,
	SHIFTOUT1 		=> open,			
	SHIFTOUT2 		=> open,			
	SHIFTIN1 		=> '0',	
	SHIFTIN2 		=> '0') ;			

end generate ;

io_clk_out : OBUFDS port map (
	O    			=> clkout_p,
	OB       		=> clkout_n,
	I         		=> tx_clk_out);

oserdes_cm : OSERDESE2 generic map(
	DATA_WIDTH     		=> 7, 			-- SERDES word width
	TRISTATE_WIDTH     	=> 1, 
	DATA_RATE_OQ      	=> "SDR", 		-- <SDR>, DDR
	DATA_RATE_TQ      	=> "SDR", 		-- <SDR>, DDR
	SERDES_MODE    		=> "MASTER")  		-- <DEFAULT>, MASTER, SLAVE
port map (                      
	OQ       		=> tx_clk_out,
	OCE     		=> '1',
	CLK    			=> txclk,
	RST     		=> reset_int,
	CLKDIV  		=> txclk_div,
	D8  			=> '0',
	D7  			=> clk_pattern(6),
	D6  			=> clk_pattern(5),
	D5  			=> clk_pattern(4),
	D4  			=> clk_pattern(3),
	D3  			=> clk_pattern(2),
	D2  			=> clk_pattern(1),
	D1  			=> clk_pattern(0),
	TQ  			=> open,
	T1 			=> '0',
	T2 			=> '0',
	T3 			=> '0',
	T4 			=> '0',
	TCE	 		=> '1',
	TBYTEIN			=> '0',
	TBYTEOUT		=> open,
	OFB	 		=> open,
	TFB	 		=> open,
	SHIFTOUT1 		=> open,			
	SHIFTOUT2 		=> open,			
	SHIFTIN1 		=> '0',	
	SHIFTIN2 		=> '0') ;	
		
end arch_serdes_7_to_1_diff_sdr ;
