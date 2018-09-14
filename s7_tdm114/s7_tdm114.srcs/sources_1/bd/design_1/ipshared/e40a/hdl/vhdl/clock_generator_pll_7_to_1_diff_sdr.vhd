------------------------------------------------------------------------------
-- Copyright (c) 2012 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor: Xilinx
-- \   \   \/    Version: 1.0
--  \   \        Filename: clock_generator_pll_7_to_1_diff_sdr.vhd
--  /   /        Date Last Modified:  March 30th 2012
-- /___/   /\    Date Created: August 1 2009
-- \   \  /  \
--  \___\/\___\
-- 
--Device: 	Virtex 6
--Purpose:  	MMCM Based clock generator. Takes in a differential clock and multiplies it
--		by the amount specified. 
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

entity clock_generator_pll_7_to_1_diff_sdr is generic (
	TX_CLOCK 				: string := "BUFIO" ;  -- Parameter to set transmission clock buffer type, BUFIO, BUF_H, BUF_G
	PIXEL_CLOCK 			: string := "BUF_R" ;  -- Parameter to set final clock buffer type, BUF_R, BUF_H, BUF_G
	PIXEL_CLOCK_D 			: integer := 1 ;       -- Divider used to synthesize pixel clock from clock input
	PIXEL_CLOCK_M 			: integer := 1 ;       -- Multiplier used to synthesize pixel clock from clock input
	PIXEL_CLOCK_D_REAL 	: real := 1.000 ;      -- Divider used to synthesize pixel clock from clock input
	PIXEL_CLOCK_M_REAL 	: real := 1.000 ;      -- Multiplier used to synthesize pixel clock from clock input
	USE_PLL 					: boolean := FALSE ;   -- Parameter to enable PLL use rather than MMCM use, note, PLL does not support BUFIO and BUFR
	CLKIN_PERIOD			: real := 6.000 ;		  -- clock period (ns) of input clock on clkin
	DIFF_TERM				: boolean := TRUE) ;	  -- Enable or disable internal differential termination
port 	(
	reset			:  in std_logic ;               -- reset (active high)
	clkin			:  in std_logic ;               -- single ended clock input
	txclk			: out std_logic ;               -- CLK for serdes
	txclk_div		: out std_logic ;            -- CLKDIV for serdes, and gearbox output = pixel clock / 2
	mmcm_lckd		: out std_logic) ; 		     -- Locked output from MMCM
end clock_generator_pll_7_to_1_diff_sdr ;

architecture arch_clock_generator_pll_7_to_1_diff_sdr of clock_generator_pll_7_to_1_diff_sdr is

signal 	clkint			: std_logic ;			--
signal 	dummy			: std_logic ;			--
signal 	mmcmout_x7		: std_logic ;			--
signal 	mmcmout_x1		: std_logic ;			--

begin

clkint	<= clkin ;

loop8 : if USE_PLL = FALSE generate				-- use an MMCM
      	
tx_mmcm_adv_inst : MMCM_ADV generic map(
      	BANDWIDTH		=> "OPTIMIZED",  -- "high", "low" or "optimized"
      	CLKFBOUT_MULT_F		=> 7.000*PIXEL_CLOCK_M_REAL,  -- multiplication factor for all output clocks
      	CLKFBOUT_PHASE		=> 0.0,  -- phase shift (degrees) of all output clocks
      	CLKIN1_PERIOD		=> CLKIN_PERIOD,  -- clock period (ns) of input clock on clkin1
      	CLKIN2_PERIOD		=> CLKIN_PERIOD,  -- clock period (ns) of input clock on clkin2
      	CLKOUT0_DIVIDE_F	=> 1.000*PIXEL_CLOCK_D_REAL,  -- division factor for clkout0 (1 to 128)
      	CLKOUT0_DUTY_CYCLE	=> 0.5,  -- duty cycle for clkout0 (0.01 to 0.99)
      	CLKOUT0_PHASE		=> 0.0,  -- phase shift (degrees) for clkout0 (0.0 to 360.0)
      	CLKOUT1_DIVIDE		=> 7*PIXEL_CLOCK_D,  -- division factor for clkout1 (1 to 128)
      	CLKOUT1_DUTY_CYCLE	=> 0.5,  -- duty cycle for clkout1 (0.01 to 0.99)
      	CLKOUT1_PHASE		=> 0.0,  -- phase shift (degrees) for clkout1 (0.0 to 360.0)
      	CLKOUT2_DIVIDE		=> 7*PIXEL_CLOCK_D,  -- division factor for clkout2 (1 to 128)
      	CLKOUT2_DUTY_CYCLE	=> 0.5, 	-- duty cycle for clkout2 (0.01 to 0.99)
      	CLKOUT2_PHASE		=> 0.0,  -- phase shift (degrees) for clkout2 (0.0 to 360.0)
      	CLKOUT3_DIVIDE		=> 8,  -- division factor for clkout3 (1 to 128)
      	CLKOUT3_DUTY_CYCLE	=> 0.5,  -- duty cycle for clkout3 (0.01 to 0.99)
      	CLKOUT3_PHASE		=> 0.0,  -- phase shift (degrees) for clkout3 (0.0 to 360.0)
      	CLKOUT4_DIVIDE		=> 8,  -- division factor for clkout4 (1 to 128)
      	CLKOUT4_DUTY_CYCLE	=> 0.5,  -- duty cycle for clkout4 (0.01 to 0.99)
      	CLKOUT4_PHASE		=> 0.0,  -- phase shift (degrees) for clkout4 (0.0 to 360.0)
      	CLKOUT5_DIVIDE		=> 8,  -- division factor for clkout5 (1 to 128)
      	CLKOUT5_DUTY_CYCLE	=> 0.5,  -- duty cycle for clkout5 (0.01 to 0.99)
      	CLKOUT5_PHASE		=> 0.0,  -- phase shift (degrees) for clkout5 (0.0 to 360.0)
      	COMPENSATION		=> "ZHOLD",	 -- "SYSTEM_SYNCHRONOUS", "SOURCE_SYNCHRONOUS", "INTERNAL", "EXTERNAL", "DCM2MMCM", "MMCM2DCM"
      	DIVCLK_DIVIDE		=> 1)  -- division factor for all clocks (1 to 52)
port map (
      	CLKFBOUT		=> dummy,              		-- general output feedback signal
      	CLKFBOUTB		=> open,  
      	CLKFBSTOPPED		=> open,  
      	CLKINSTOPPED		=> open,  
      	CLKOUT0			=> mmcmout_x7,      		-- x7 clock for transmitter
      	CLKOUT0B		=> open,  
      	CLKOUT1			=> open,      			--
      	CLKOUT1B		=> open,  
      	CLKOUT2			=> mmcmout_x1,              	-- x1 clock for BUFG
      	CLKOUT2B		=> open,  
      	CLKOUT3			=> open,	              	-- x2 clock for BUFG
       	CLKOUT3B		=> open,  
     	CLKOUT4			=> open,              		-- one of six general clock output signals
      	CLKOUT5			=> open,              		-- one of six general clock output signals
      	DO			=> open,                	-- dynamic reconfig data output (16-bits)
      	DRDY			=> open,                	-- dynamic reconfig ready output
      	PSDONE			=> open,
      	PSCLK			=> '0',
      	PSEN			=> '0',
      	PSINCDEC		=> '0',
      	PWRDWN			=> '0',
      	LOCKED			=> mmcm_lckd,        		-- active high mmcm lock signal
      	CLKFBIN			=> dummy,			-- clock feedback input
      	CLKIN1			=> clkint,	     		-- primary clock input
      	CLKIN2			=> '0', 	    		-- secondary clock input
      	CLKINSEL		=> '1',             		-- selects '1' = clkin1, '0' = clkin2
      	DADDR			=> "0000000",            	-- dynamic reconfig address input (7-bits)
      	DCLK			=> '0',               		-- dynamic reconfig clock input
      	DEN			=> '0',                		-- dynamic reconfig enable input
      	DI			=> "0000000000000000", 		-- dynamic reconfig data input (16-bits)
      	DWE			=> '0',                		-- dynamic reconfig write enable input
      	RST			=> reset) ;               	-- asynchronous mmcm reset

  loop6 : if PIXEL_CLOCK = "BUF_G" generate
     bufg_mmcm_x1 : BUFG	port map (I => mmcmout_x1, O => txclk_div) ;
  end generate ;
  loop6a : if PIXEL_CLOCK = "BUF_R" generate
     bufr_mmcm_x1 : BUFR generic map(BUFR_DIVIDE => "1", SIM_DEVICE => "7SERIES") port map (I => mmcmout_x1,CE => '1',O => txclk_div,CLR => '0') ;
  end generate ;
  loop6b : if PIXEL_CLOCK = "BUF_H" generate
     bufh_mmcm_x1 : BUFH	port map (I => mmcmout_x1, O => txclk_div) ;
  end generate ;
 
  loop9 : if TX_CLOCK = "BUF_G" generate
     bufg_mmcm_xn : BUFG port map(I => mmcmout_x7, O => txclk) ;
  end generate ;
  loop9a : if TX_CLOCK = "BUFIO" generate
     bufio_mmcm_xn : BUFIO port map (I => mmcmout_x7, O => txclk) ;
  end generate ;
  loop9b : if TX_CLOCK = "BUF_H" generate
     bufh_mmcm_xn : BUFH port map(I => mmcmout_x7, O => txclk) ;
  end generate ;
end generate ;

loop2 : if USE_PLL = TRUE generate				-- use an MMCM
	
rx_mmcm_adv_inst : PLLE2_ADV generic map(
      	BANDWIDTH		=> "OPTIMIZED",  		
      	CLKFBOUT_MULT		=> 7*PIXEL_CLOCK_M,       			
      	CLKFBOUT_PHASE		=> 0.0,     			
      	CLKIN1_PERIOD		=> CLKIN_PERIOD,  		
      	CLKIN2_PERIOD		=> CLKIN_PERIOD,  		
      	CLKOUT0_DIVIDE		=> 1*PIXEL_CLOCK_D,       			
      	CLKOUT0_DUTY_CYCLE	=> 0.5, 				
      	CLKOUT0_PHASE		=> 0.0, 				
      	CLKOUT1_DIVIDE		=> 7*PIXEL_CLOCK_D,   				
      	CLKOUT1_DUTY_CYCLE	=> 0.5, 				
      	CLKOUT1_PHASE		=> 0.0, 				
      	CLKOUT2_DIVIDE		=> 7*PIXEL_CLOCK_D,   				
      	CLKOUT2_DUTY_CYCLE	=> 0.5, 				
      	CLKOUT2_PHASE		=> 0.0, 				
      	CLKOUT3_DIVIDE		=> 7,   				
      	CLKOUT3_DUTY_CYCLE	=> 0.5, 				
      	CLKOUT3_PHASE		=> 0.0, 				
      	CLKOUT4_DIVIDE		=> 7,   				
      	CLKOUT4_DUTY_CYCLE	=> 0.5, 				
      	CLKOUT4_PHASE		=> 0.0,      			
      	CLKOUT5_DIVIDE		=> 7,       			
      	CLKOUT5_DUTY_CYCLE	=> 0.5, 				
      	CLKOUT5_PHASE		=> 0.0,      			
      	COMPENSATION		=> "ZHOLD",		
      	DIVCLK_DIVIDE		=> 1,        		
      	REF_JITTER1		=> 0.100)        		
port map (                      
      	CLKFBOUT		=> dummy,              		
      	CLKOUT0			=> mmcmout_x7,      		
      	CLKOUT1			=> open,      		
      	CLKOUT2			=> mmcmout_x1, 		
      	CLKOUT3			=> open,              		
      	CLKOUT4			=> open,              		
      	CLKOUT5			=> open,              		
      	DO			=> open,                    		
      	DRDY			=> open,                  		
      	PWRDWN			=> '0', 
      	LOCKED			=> mmcm_lckd,        		
      	CLKFBIN			=> dummy,			
      	CLKIN1			=> clkint,     	
      	CLKIN2			=> '0',		     		
      	CLKINSEL		=> '1',             		
      	DADDR			=> "0000000",            		
      	DCLK			=> '0',               		
      	DEN			=> '0',                		
      	DI			=> X"0000",        		
      	DWE			=> '0',                		
      	RST			=> reset) ;               	

  loop4 : if PIXEL_CLOCK = "BUF_G" generate
     bufg_pll_x1 : BUFG	port map (I => mmcmout_x1, O => txclk_div) ;
  end generate ;
  loop4a : if PIXEL_CLOCK = "BUF_R" generate
     bufr_pll_x1 : BUFR generic map(BUFR_DIVIDE => "1", SIM_DEVICE => "7SERIES") port map (I => mmcmout_x1,CE => '1',O => txclk_div,CLR => '0') ;
  end generate ;
  loop4b : if PIXEL_CLOCK = "BUF_H" generate
     bufh_pll_x1 : BUFH	port map (I => mmcmout_x1, O => txclk_div) ;
  end generate ;
  
  loop10 : if TX_CLOCK = "BUF_G" generate
     bufg_pll_xn : BUFG port map(I => mmcmout_x7, O => txclk) ;
  end generate ;
  loop10a : if TX_CLOCK = "BUFIO" generate
     bufio_pll_xn : BUFIO port map (I => mmcmout_x7, O => txclk) ;
  end generate ;
  loop10b : if TX_CLOCK = "BUF_H" generate
     bufh_pll_xn : BUFH port map(I => mmcmout_x7, O => txclk) ;
  end generate ;
end generate ;

end arch_clock_generator_pll_7_to_1_diff_sdr ;