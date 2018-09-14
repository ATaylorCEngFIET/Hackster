----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.07.2018 09:06:57
-- Design Name: 
-- Module Name: v2axis_if - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity v2axis_if is
    Port ( clk : in STD_LOGIC;
           fs : in STD_LOGIC;
           ls : in STD_LOGIC;
           pixel: in STD_LOGIC_VECTOR(7 downto 0);
           pixel_op : out STD_LOGIC_VECTOR(7 downto 0);
           active_op : out STD_LOGIC;
           hblank_op : out STD_LOGIC;
           vblank_op : out STD_LOGIC;
           hsync_op : out STD_LOGIC;
           vsync_op : out STD_LOGIC);
end v2axis_if;

architecture Behavioral of v2axis_if is

signal ls_reg : std_logic_vector(1 downto 0):=(others =>'0');
signal fs_reg : std_logic_vector(1 downto 0):=(others =>'0');

begin

gen:process(clk)
begin 
 if rising_edge(clk) then 
   hsync_op <= '0';
   vsync_op <= '0';
   pixel_op <= pixel;
   ls_reg <= ls_reg(ls_reg'low) & ls;
   fs_reg <= fs_reg(fs_reg'low) & fs;
   if ls_reg = "01" then 
    hsync_op <= '1';
   end if;
   if fs_reg = "01" then 
    vsync_op <= '1';
   end if;
   active_op <= ls_reg(ls_reg'low);
   hblank_op <= not ls;
   vblank_op <= not fs;
 end if;
end process;
    
end Behavioral;
