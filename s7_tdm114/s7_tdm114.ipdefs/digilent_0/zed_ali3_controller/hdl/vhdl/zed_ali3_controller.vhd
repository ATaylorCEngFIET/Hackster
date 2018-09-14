------------------------------------------------------------------------------
--      _____
--     /     \
--    /____   \____
--   / \===\   \==/
--  /___\===\___\/  AVNET
--       \======/
--        \====/    
------------------------------------------------------------------------------
--
-- This design is the property of Avnet.  Publication of this
-- design is not authorized without written consent from Avnet.
-- 
-- Please direct any questions to:  technical.support@avnet.com
--
-- Disclaimer:
--    Avnet, Inc. makes no warranty for the use of this code or design.
--    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
--    any errors, which may appear in this code, nor does it make a commitment
--    to update the information contained herein. Avnet, Inc specifically
--    disclaims any implied warranties of fitness for a particular purpose.
--                     Copyright(c) 2013 Avnet, Inc.
--                             All rights reserved.
--
------------------------------------------------------------------------------
--
-- Create Date:         May 16, 2013
-- Project Name:        ZedBoard ALI3 Controller
--
-- Target Devices:      Zynq-7000
-- Avnet Boards:        ZedBoard
--
--
-- Tool versions:       ISE 14.5
--
-- Description:         This project implements a LCD controller 
--                      based on the SerDes 4B 7to1 reference design.
--
-- Dependencies:        
--
-- Revision:            May 16, 2013: 1.01 First Version
--                      May 23, 2013: 1.02 Updated to remove PWN and DIM
--
------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity zed_ali3_controller is
    generic (
      C_PIXEL_CLOCK_RATE : integer := 1; -- Default clock rate is 33.33MHz
      C_FAMILY           : string  := "zynq"
    );
    port (
      reset_in           : in  std_logic;
      clk_in             : in  std_logic;
      pll_locked         : out std_logic;
      reset_out          : out std_logic;
      clk_out            : out std_logic;
      -- 24 bit RGB Parallel Interface
      video_de           : in  std_logic;
      video_vsync        : in  std_logic;
      video_hsync        : in  std_logic;
      video_data         : in  std_logic_vector(31 downto 0);
      -- I/O pins
      ALI_RST_N          : out std_logic;
      ALI_CLK_N          : out std_logic;
      ALI_CLK_P          : out std_logic;
      ALI_DATA_N         : out std_logic_vector(3 downto 0);
      ALI_DATA_P         : out std_logic_vector(3 downto 0)
   );
end zed_ali3_controller;

architecture rtl of zed_ali3_controller is

   signal clk            : std_logic;
   
   signal de_r           : std_logic;
   signal vsync_r        : std_logic;
   signal hsync_r        : std_logic;
   signal red_r          : std_logic_vector(7 downto 0);
   signal green_r        : std_logic_vector(7 downto 0);
   signal blue_r         : std_logic_vector(7 downto 0);

  
   component zed_ali3_controller_core is
    generic (C_PIXEL_CLOCK_RATE : integer);
      port ( 
         reset_in       : in  std_logic;
         clk_in         : in  std_logic;
         pll_locked     : out std_logic;
         reset_out      : out std_logic;
         clk_out        : out std_logic;
         de             : in  std_logic;
         vsync          : in  std_logic;
         hsync          : in  std_logic;
         red            : in  std_logic_vector(7 downto 0);
         green          : in  std_logic_vector(7 downto 0);
         blue           : in  std_logic_vector(7 downto 0);
         ALI_RST_N      : out std_logic;
         ALI_CLK_N      : out std_logic;
         ALI_CLK_P      : out std_logic;
         ALI_DATA_N     : out std_logic_vector(3 downto 0);
         ALI_DATA_P     : out std_logic_vector(3 downto 0)
      );
   end component zed_ali3_controller_core;

begin

      rgb_iregs_l : process (clk)
      begin
         if Rising_Edge(clk) then
            de_r    <= video_de;
            vsync_r <= video_vsync;
            hsync_r <= video_hsync;
            red_r   <= video_data(23 downto 16);
            green_r <= video_data(15 downto  8);
            blue_r  <= video_data( 7 downto  0);
         end if;
      end process;

   zed_ali3_controller_core_l : zed_ali3_controller_core
      generic map (C_PIXEL_CLOCK_RATE => C_PIXEL_CLOCK_RATE)
      port map ( 
         reset_in       => reset_in,
         clk_in         => clk_in,
         pll_locked     => pll_locked,
         reset_out      => reset_out,
         clk_out        => clk,
         de             => de_r,
         vsync          => vsync_r,
         hsync          => hsync_r,
         red            => red_r,
         green          => green_r,
         blue           => blue_r,
         ALI_RST_N      => ALI_RST_N,
         ALI_CLK_N      => ALI_CLK_N,
         ALI_CLK_P      => ALI_CLK_P,
         ALI_DATA_N     => ALI_DATA_N,
         ALI_DATA_P     => ALI_DATA_P
      );

   clk_out <= clk;
        
end rtl;
