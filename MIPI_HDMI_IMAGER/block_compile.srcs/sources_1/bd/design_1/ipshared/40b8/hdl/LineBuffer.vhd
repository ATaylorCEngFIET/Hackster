-------------------------------------------------------------------------------
--
-- File: LineBuffer.vhd
-- Author: Ioan Catuna
-- Original Project: AXI Bayer to RGB Image Conversion
-- Date: 23 November 2017
--
-------------------------------------------------------------------------------
-- MIT License

-- Copyright (c) 2017 Digilent

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
--
-------------------------------------------------------------------------------
--
-- Purpose:
-- This component is line buffer implemented in Block RAM. Its width is defined
-- by kLineBufferWidth generic parameter.
--  
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity LineBuffer is
generic (kLineBufferWidth: integer := 2048);
port (
  PixelClk: in STD_LOGIC;
  pWriteEnable: in STD_LOGIC;
  pWriteAddr: in STD_LOGIC_VECTOR(10 downto 0);
  pWriteData: in STD_LOGIC_VECTOR(9 downto 0);
  pReadEnable: in STD_LOGIC;
  pReadAddr: in STD_LOGIC_VECTOR(10 downto 0);
  pReadData: out STD_LOGIC_VECTOR(9 downto 0)
);
end LineBuffer;

architecture rtl of LineBuffer is
type LineBuffer_t is array ((kLineBufferWidth-1) downto 0) of STD_LOGIC_VECTOR(9 downto 0);
signal pLineBuffer : LineBuffer_t;

attribute block_ram : boolean;
attribute block_ram of pLineBuffer : signal is TRUE;

begin

process (PixelClk)
begin
  if rising_edge(PixelClk) then
    if pWriteEnable = '1' then
      pLineBuffer(to_integer(unsigned(pWriteAddr))) <= pWriteData;
    end if;
    if pReadEnable = '1' then
      pReadData <= pLineBuffer(to_integer(unsigned(pReadAddr)));
    end if;
  end if;
end process;

end rtl;
