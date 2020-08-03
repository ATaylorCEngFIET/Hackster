------------------------------------------------------------------
--      _____
--     /     \
--    /____   \____
--   / \===\   \==/
--  /___\===\___\/  AVNET
--       \======/
--        \====/    
-----------------------------------------------------------------
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
--                     Copyright(c) 2011 Avnet, Inc.
--                             All rights reserved.
--
------------------------------------------------------------------
--
-- Create Date:         Aug 31, 2011
-- Design Name:         Avnet HDMI Output interface
-- Module Name:         avnet_hdmi_out.vhd
-- Project Name:        Avnet HDMI Output interface
-- Target Devices:      Zynq-7000
-- Avnet Boards:        FMC-IMAGEON + VITA-2000, EMBV + PYTYHON-1300-C
--
-- Tool versions:       Vivado 2014.4
--
-- Description:         HDMI input interface for use with ADV7511 device
--                      in 16 bits YCbCr 4:2:2 mode, with embedded syncs
--
-- Dependencies:        
--
-- Revision:            Aug 31, 2011: 1.01 Initial version
--                      Nov 11, 2011: 1.02 Add logic to embed syncs
--                                         Add vblank/hblank ports
--                                         Remove vsync/hsync ports
--                                         Add embed_syncs port
--                      Dec 05, 2011: 1.03 Place embed logic in sub-module
--                      Feb 06, 2012: 1.04 Add IOB attribute to "FORCE"
--                      Feb 21, 2012: 1.05 Add support for Zynq
--                      Oct 19, 2012: 2.01a Remove XSVI bus interface
--                                          Remove xsvi_ prefixes to video_
--                                          Rename active_video to de
--                                          Change IP_GROUP to FMC-IMAGEON
--                      Jan 02, 2012: 2.02 Replace X"00" values of Y with X"01"
--                                         to prevent false SAV/EAV codes
--                      Nov 05, 2013: 2.02b Vivado version.  Replaced "FORCE"
--                                          with "TRUE"
------------------------------------------------------------------
--                      Feb 18, 2015: 3.01  Rename to avnet_hdmi_out
--
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity avnet_hdmi_out is
   Generic
   (
      C_DATA_WIDTH        : integer := 16;
      C_FAMILY            : string  := "virtex6"
   );
   Port
   (
      clk                 : in  std_logic;
      reset               : in  std_logic;
      oe                  : in  std_logic;
      embed_syncs         : in  std_logic;
      -- Audio Port
      audio_spdif         : in  std_logic;
      -- Video Ports
--      video_vsync         : in  std_logic;
--      video_hsync         : in  std_logic;
      video_vblank        : in  std_logic;
      video_hblank        : in  std_logic;
      video_de            : in  std_logic;
      video_data          : in  std_logic_vector((C_DATA_WIDTH-1) downto 0);
      -- I/O pins
      io_hdmio_spdif      : out std_logic;
      io_hdmio_video      : out std_logic_vector(15 downto 0);
      io_hdmio_clk        : out std_logic;
      -- Debug Port
      debug_o             : out std_logic_vector(39 downto 0)
   );
end avnet_hdmi_out;

architecture rtl of avnet_hdmi_out is

   signal clk_n           : std_logic;

   signal net0            : std_logic;
   signal net1            : std_logic;

   signal oe_n            : std_logic;

   --
   -- Input Delay
   --

   signal vblank_d        : std_logic;
   signal hblank_d        : std_logic;
   signal de_d            : std_logic;
   signal video_data_d    : std_logic_vector((C_DATA_WIDTH-1) downto 0);

   --
   -- ADV7511 Embed Syncs
   -- 

   component adv7511_embed_syncs is
   Port
   (
      clk                 : in  std_logic;
      reset               : in  std_logic;
      -- Video Input
      vblank_i            : in  std_logic;
      hblank_i            : in  std_logic;
      de_i                : in  std_logic;
      video_data_i        : in  std_logic_vector(15 downto 0);
      -- Video Output
      video_data_o        : out std_logic_vector(15 downto 0)
   );
   end component adv7511_embed_syncs;

   signal video_data_es   : std_logic_vector((C_DATA_WIDTH-1) downto 0);

   --
   -- Audio Port
   --

   signal spdif_r         : std_logic;

   --
   -- Video Port
   --

   signal video_r         : std_logic_vector(15 downto 0);

   --
   -- IOB Registers
   -- 
    
   signal hdmio_spdif_o   : std_logic;
   signal hdmio_video_o   : std_logic_vector(15 downto 0);
   signal hdmio_clk_o     : std_logic;

   signal hdmio_spdif_t   : std_logic;
   signal hdmio_video_t   : std_logic_vector(15 downto 0);
   signal hdmio_clk_t     : std_logic;

   attribute IOB : string;
   attribute IOB of hdmio_spdif_o: signal is "TRUE";
   attribute IOB of hdmio_video_o: signal is "TRUE";
   attribute IOB of hdmio_clk_o  : signal is "TRUE";

begin

   clk_n <= not clk;
   oe_n  <= not oe;

   net0 <= '0';
   net1 <= '1';

   --
   -- Input Delay
   --

   input_delay_l : process (clk)
   begin
      if Rising_Edge(clk) then
         vblank_d        <= video_vblank;
         hblank_d        <= video_hblank;
         de_d            <= video_de;
         -- video_data[15: 8] => Y (luma)
         -- video_data[ 7: 0] => CbCr (chroma)
         if ( video_data(15 downto 8) = X"00" ) then
            video_data_d    <= X"01" & video_data(7 downto 0);
         else
            video_data_d    <= video_data;
         end if;
      end if;
   end process;

   --
   -- ADV7511 Embed Syncs
   --

   embed_syncs_l : adv7511_embed_syncs
   port map
   (
      clk                 => clk,
      reset               => reset,
      -- Video Input
      vblank_i            => vblank_d,
      hblank_i            => hblank_d,
      de_i                => de_d,
      video_data_i        => video_data_d,
      -- Video Output
      video_data_o        => video_data_es
   );

   --
   -- Audio Port
   -- 

   spdif_r <= audio_spdif;

   --
   -- Video Ports
   --

   VIDEO_PORTS_16BIT_GEN : if (C_DATA_WIDTH = 16) generate
      video_ports_16bit_iregs_l : process (clk)
      begin
         if Rising_Edge(clk) then
            if ( embed_syncs = '1' ) then
               video_r <= video_data_es(15 downto 0);
            else
               video_r <= video_data_es(15 downto 0);
            end if;
         end if;
      end process;
   end generate VIDEO_PORTS_16BIT_GEN;

   --
   -- IOB Registers
   --
   
   io_oregs_l : process (clk)
   begin
      if Rising_Edge(clk) then
         hdmio_spdif_o <= spdif_r;
         hdmio_video_o <= video_r;
         --
         hdmio_spdif_t <= oe_n;
         hdmio_video_t <= (others => oe_n);
      end if;
   end process;

   S3ADSP_GEN : if (C_FAMILY = "spartan3adsp") generate

      ODDR_hdmio_clk_o : ODDR2 
         generic map (
            DDR_ALIGNMENT => "NONE", -- "NONE", "C0" or "C1" 
            INIT => '1',             -- Sets initial state of Q  
            SRTYPE => "ASYNC")       -- Reset type     
         port map (
            Q  => hdmio_clk_o,
            C0 => clk,
            C1 => clk_n,
            CE => net1,
            D0 => net0, 
            D1 => net1, 
            R  => net0, 
            S  => net0);

      ODDR_hdmio_clk_t : ODDR2 
         generic map (
            DDR_ALIGNMENT => "NONE", -- "NONE", "C0" or "C1" 
            INIT => '1',             -- Sets initial state of Q  
            SRTYPE => "ASYNC")       -- Reset type     
         port map (
            Q  => hdmio_clk_t,
            C0 => clk,
            C1 => clk_n,
            CE => net1,
            D0 => oe_n, 
            D1 => oe_n, 
            R  => net0, 
            S  => net0);

   end generate S3ADSP_GEN;

   S6_GEN : if (C_FAMILY = "spartan6") generate

      ODDR_hdmio_clk_o : ODDR2 
         generic map (
            DDR_ALIGNMENT => "C0", -- "NONE", "C0" or "C1" 
            INIT => '1',             -- Sets initial state of Q  
            SRTYPE => "ASYNC")       -- Reset type     
         port map (
            Q  => hdmio_clk_o,
            C0 => clk,
            C1 => clk_n,
            CE => net1,
            D0 => net0,
            D1 => net1,
            R  => net0,
            S  => net0);

      ODDR_hdmio_clk_t : ODDR2 
         generic map (
            DDR_ALIGNMENT => "C0", -- "NONE", "C0" or "C1" 
            INIT => '1',             -- Sets initial state of Q  
            SRTYPE => "ASYNC")       -- Reset type     
         port map (
            Q  => hdmio_clk_t,
            C0 => clk,
            C1 => clk_n,
            CE => net1,
            D0 => oe_n, 
            D1 => oe_n, 
            R  => net0, 
            S  => net0);

   end generate S6_GEN;

   V6_GEN : if (C_FAMILY = "virtex6" or C_FAMILY = "kintex7" or C_FAMILY = "zynq" or C_FAMILY = "artix7" or C_FAMILY = "virtex7") generate

      ODDR_hdmio_clk_o : ODDR
         generic map (
              DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE"  
            INIT => '1',             -- Sets initial state of Q  
            SRTYPE => "ASYNC")       -- Reset type     
         port map (
            Q  => hdmio_clk_o,
            C  => clk,
            CE => net1,
            D1 => net0,
            D2 => net1,
            R  => net0,
            S  => net0);

      ODDR_hdmio_clk_t : ODDR 
         generic map (
            DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE"  
            INIT => '1',             -- Sets initial state of Q  
            SRTYPE => "ASYNC")       -- Reset type     
         port map (
            Q  => hdmio_clk_t,
            C  => clk,
            CE => net1,
            D1 => oe_n, 
            D2 => oe_n, 
            R  => net0, 
            S  => net0);

   end generate V6_GEN;

   --
   -- Tri-stateable outputs
   --    Can be used to disable outputs to FMC connector
   --    until FMC module is correctly identified.
   -- 

   OBUFT_hdmio_spdif : OBUFT
   port map (
      O => io_hdmio_spdif,
      I => hdmio_spdif_o,
      T => hdmio_spdif_t
   );

   IO1: for I in 0 to 15 generate
      OBUFT_hdmio_video : OBUFT
      port map (
         O => io_hdmio_video(I),
         I => hdmio_video_o(I),
         T => hdmio_video_t(I)
      );
   end generate IO1;
   
   OBUFT_hdmio_clk : OBUFT
   port map (
      O => io_hdmio_clk,
      I => hdmio_clk_o,
      T => hdmio_clk_t
   );

   --
   -- Debug Port
   --    Can be used to connect to ChipScope for debugging.
   --    Having a port makes these signals accessible for debug via EDK.
   -- 

   debug_l : process (clk)
   begin
      if Rising_Edge(clk) then
         debug_o(15 downto  0) <= video_r;
         debug_o(          16) <= spdif_r;
         debug_o(          17) <= '0';
         debug_o(          18) <= '0';
         debug_o(          19) <= embed_syncs;
         debug_o(35 downto 20) <= video_data_d;
         debug_o(          36) <= de_d;
         debug_o(          37) <= hblank_d;
         debug_o(          38) <= vblank_d;
         debug_o(          39) <= '0';
      end if;
   end process;
        
end rtl;
