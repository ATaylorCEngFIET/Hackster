----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.07.2018 08:56:40
-- Design Name: 
-- Module Name: axis_video_chk - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axis_video_chk is port(
 clk : in std_logic;
 tuser : in std_logic;
 tlast : in std_logic;
 tvalid: in std_logic;
 pixels : out std_logic_vector(15 downto 0);
 lines  : out std_logic_vector(15 downto 0));
end axis_video_chk;

architecture Behavioral of axis_video_chk is

constant re_det : std_logic_vector(1 downto 0) := "01";

signal pix_cnt  : unsigned(15 downto 0) := (others =>'0');
signal line_cnt : unsigned(15 downto 0) := (others =>'0');

signal tuser_edge  : std_logic_vector(1 downto 0) := (others =>'0');
signal tlast_edge  : std_logic_vector(1 downto 0) := (others =>'0');
signal tvalid_edge : std_logic_vector(1 downto 0):= (others =>'0');


begin


measure : process(clk) 
variable var_pix : unsigned(15 downto 0) := (others => '0');
variable var_line : unsigned(15 downto 0) := (others => '0'); 
begin 
 if rising_edge(clk) then 
  tuser_edge <= tuser_edge(tuser_edge'low) & tuser;
  tlast_edge <= tlast_edge(tlast_edge'low) & tlast;
  tvalid_edge <= tvalid_edge(tvalid_edge'low) & tvalid;
  if tuser_edge = re_det then -- re detected on tuser - start of frame reset counters 
    var_line := (others => '0');
    var_pix  := (others => '0');
  end if; 
  if tvalid_edge(tvalid_edge'high) = '1' then -- count pixels 
    var_pix := var_pix +1;
  end if ;
  if tlast_edge = re_det then -- count line and reset pixel count 
    pix_cnt <= var_pix;
    line_cnt <= var_line; -- +1 to take into account the delay in checking sync   
    var_line := var_line +1;
    
    var_pix  := (others => '0');

    --var_line := (others =>'0');
  end if;
end if;
end process;
pixels <= std_logic_vector(pix_cnt);
lines  <= std_logic_vector(line_cnt);

end Behavioral;
