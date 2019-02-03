----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2018 20:48:28
-- Design Name: 
-- Module Name: axis_route - Behavioral
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

entity axis_route is
    Port ( s_data : in STD_LOGIC_VECTOR (23 downto 0);
           s_tready : out STD_LOGIC;
           s_valid : in STD_LOGIC;
           s_user : in STD_LOGIC;
           s_last : in STD_LOGIC;
           
          m_0_data : out STD_LOGIC_VECTOR (23 downto 0);
          m_0_tready : in STD_LOGIC;
          m_0_valid : out STD_LOGIC;
          m_0_user : out STD_LOGIC;
          m_0_last : out STD_LOGIC;
          
          m_1_data : out STD_LOGIC_VECTOR (23 downto 0);
          m_1_tready : in STD_LOGIC;
          m_1_valid : out STD_LOGIC;
          m_1_user : out STD_LOGIC;
          m_1_last : out STD_LOGIC
          
           );
end axis_route;

architecture Behavioral of axis_route is

begin

s_tready <= m_0_tready or m_1_tready;

m_0_data <= s_data;
m_0_valid <= s_valid;
m_0_user <= s_user;
m_0_last <= s_user;

m_1_data <= s_data;
m_1_valid <= s_valid;
m_1_user <= s_user;
m_1_last <= s_user;


end Behavioral;
