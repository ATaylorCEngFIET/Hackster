------------------------------------------------------------------
-- Copyright 2011(c) Analog Devices, Inc.
--
-- All rights reserved.
--
-- Redistribution and use in source and binary forms, with or without modification, 
-- are permitted provided that the following conditions are met:
--  - Redistributions of source code must retain the above copyright
--    notice, this list of conditions and the following disclaimer.
--  - Redistributions in binary form must reproduce the above copyright
--    notice, this list of conditions and the following disclaimer in
--    the documentation and/or other materials provided with the
--    distribution.
--  - Neither the name of Analog Devices, Inc. nor the names of its
--    contributors may be used to endorse or promote products derived
--    from this software without specific prior written permission.
--  - The use of this software may or may not infringe the patent rights
--    of one or more patent holders.  This license does not release you
--    from the requirement that you obtain separate licenses from these
--    patent holders to use this software.
--  - Use of the software either in source or binary form, must be run
--    on or directly connected to an Analog Devices Inc. component.
--
-- THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
-- IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
-- OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE
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

entity adv7511_embed_syncs is
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
end adv7511_embed_syncs;

architecture rtl of adv7511_embed_syncs is

   --
   -- Input Delay
   --

   signal vblank_d        : std_logic_vector(6 downto 1);
   signal hblank_d        : std_logic_vector(6 downto 1);
   signal de_d            : std_logic_vector(6 downto 1);
   signal video_data_d1   : std_logic_vector(15 downto 0);
   signal video_data_d2   : std_logic_vector(15 downto 0);
   signal video_data_d3   : std_logic_vector(15 downto 0);
   signal video_data_d4   : std_logic_vector(15 downto 0);
   signal video_data_d5   : std_logic_vector(15 downto 0);
   signal video_data_d6   : std_logic_vector(15 downto 0);
   --
   signal vblank_df       : std_logic;
   signal hblank_df       : std_logic;
   signal de_df           : std_logic;
   signal video_data_df   : std_logic_vector(15 downto 0);

   --
   -- SAV/EAV Codes
   --

   signal sav            : std_logic_vector(15 downto 0); 
   signal eav            : std_logic_vector(15 downto 0); 

begin

   --
   -- Input Delay
   --

   input_delay_l : process (clk)
   begin
      if Rising_Edge(clk) then
         -- VBLANK delay line
         vblank_d        <= vblank_d(5 downto 1) & vblank_i;
         -- HBLANK delay line
         hblank_d        <= hblank_d(5 downto 1) & hblank_i;
         -- DE delay line
         de_d  <= de_d(5 downto 1) & de_i;
         -- video_data delay line
         video_data_d1   <= video_data_i;
         case ( hblank_d(5 downto 1) ) is
           when "01111" => video_data_d2 <= eav;
           when "00111" => video_data_d2 <= X"0000";
           when "00011" => video_data_d2 <= X"0000";
           when "00001" => video_data_d2 <= X"FFFF";
           when others  => video_data_d2 <= video_data_d1;
         end case;
         video_data_d3   <= video_data_d2;
         video_data_d4   <= video_data_d3;
         video_data_d5   <= video_data_d4;
         video_data_d6   <= video_data_d5;
         --
         vblank_df       <= vblank_d(6);
         hblank_df       <= hblank_d(6);
         de_df           <= de_d(6);
         case ( hblank_d(6 downto 2) ) is
           when "10000" => video_data_df <= sav;
           when "11000" => video_data_df <= X"0000";
           when "11100" => video_data_df <= X"0000";
           when "11110" => video_data_df <= X"FFFF";
           when others  => video_data_df <= video_data_d6;
         end case;
      end if;
   end process;

   video_data_o <= video_data_df;

   --
   -- SAV/EAV Codes
   --

   sav <= X"8080" when (vblank_d(2) = '0') else X"ABAB";
   eav <= X"9D9D" when (vblank_d(2) = '0') else X"B6B6";
       
end rtl;
