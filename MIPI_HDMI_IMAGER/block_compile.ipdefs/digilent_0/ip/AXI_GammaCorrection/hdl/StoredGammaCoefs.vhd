-------------------------------------------------------------------------------
--
-- File: StoredGammaCoefs.vhd
-- Author: Ioan Catuna
-- Original Project: AXI Gamma Correction
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
-- This component is a ROM containing all the possible 8-bit pixel values for
-- the following gamma correction factors: 1.0, 1.5, 1.8 and 2.2.
--  
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity StoredGammaCoefs is
port(
  RomClk: in  STD_LOGIC;
  rReadEnable: in STD_LOGIC;
  rGammaFactor: in STD_LOGIC_VECTOR(2 downto 0);
  rReadAddr: in  STD_LOGIC_VECTOR(9 downto 0);
  rStoredData: out STD_LOGIC_VECTOR(7 downto 0)
);
end StoredGammaCoefs;

architecture rtl of StoredGammaCoefs is

type RomStorage_t is array (1023 downto 0) of std_logic_vector (7 downto 0);

signal rStoredCoefs1_2: RomStorage_t := (x"ff", x"ff", x"ff", x"fe", x"fe", x"fe", x"fe",
x"fe", x"fd", x"fd", x"fd", x"fd", x"fd", x"fc", x"fc", x"fc", x"fc", x"fb", x"fb", x"fb",
x"fb", x"fb", x"fa", x"fa", x"fa", x"fa", x"fa", x"f9", x"f9", x"f9", x"f9", x"f9", x"f8",
x"f8", x"f8", x"f8", x"f7", x"f7", x"f7", x"f7", x"f7", x"f6", x"f6", x"f6", x"f6", x"f6",
x"f5", x"f5", x"f5", x"f5", x"f5", x"f4", x"f4", x"f4", x"f4", x"f4", x"f3", x"f3", x"f3",
x"f3", x"f2", x"f2", x"f2", x"f2", x"f2", x"f1", x"f1", x"f1", x"f1", x"f1", x"f0", x"f0",
x"f0", x"f0", x"f0", x"ef", x"ef", x"ef", x"ef", x"ee", x"ee", x"ee", x"ee", x"ee", x"ed",
x"ed", x"ed", x"ed", x"ed", x"ec", x"ec", x"ec", x"ec", x"ec", x"eb", x"eb", x"eb", x"eb",
x"ea", x"ea", x"ea", x"ea", x"ea", x"e9", x"e9", x"e9", x"e9", x"e9", x"e8", x"e8", x"e8",
x"e8", x"e8", x"e7", x"e7", x"e7", x"e7", x"e6", x"e6", x"e6", x"e6", x"e6", x"e5", x"e5",
x"e5", x"e5", x"e5", x"e4", x"e4", x"e4", x"e4", x"e3", x"e3", x"e3", x"e3", x"e3", x"e2",
x"e2", x"e2", x"e2", x"e2", x"e1", x"e1", x"e1", x"e1", x"e1", x"e0", x"e0", x"e0", x"e0",
x"df", x"df", x"df", x"df", x"df", x"de", x"de", x"de", x"de", x"de", x"dd", x"dd", x"dd",
x"dd", x"dc", x"dc", x"dc", x"dc", x"dc", x"db", x"db", x"db", x"db", x"db", x"da", x"da",
x"da", x"da", x"d9", x"d9", x"d9", x"d9", x"d9", x"d8", x"d8", x"d8", x"d8", x"d8", x"d7",
x"d7", x"d7", x"d7", x"d6", x"d6", x"d6", x"d6", x"d6", x"d5", x"d5", x"d5", x"d5", x"d5",
x"d4", x"d4", x"d4", x"d4", x"d3", x"d3", x"d3", x"d3", x"d3", x"d2", x"d2", x"d2", x"d2",
x"d1", x"d1", x"d1", x"d1", x"d1", x"d0", x"d0", x"d0", x"d0", x"d0", x"cf", x"cf", x"cf",
x"cf", x"ce", x"ce", x"ce", x"ce", x"ce", x"cd", x"cd", x"cd", x"cd", x"cd", x"cc", x"cc",
x"cc", x"cc", x"cb", x"cb", x"cb", x"cb", x"cb", x"ca", x"ca", x"ca", x"ca", x"c9", x"c9",
x"c9", x"c9", x"c9", x"c8", x"c8", x"c8", x"c8", x"c7", x"c7", x"c7", x"c7", x"c7", x"c6",
x"c6", x"c6", x"c6", x"c6", x"c5", x"c5", x"c5", x"c5", x"c4", x"c4", x"c4", x"c4", x"c4",
x"c3", x"c3", x"c3", x"c3", x"c2", x"c2", x"c2", x"c2", x"c2", x"c1", x"c1", x"c1", x"c1",
x"c0", x"c0", x"c0", x"c0", x"c0", x"bf", x"bf", x"bf", x"bf", x"bf", x"be", x"be", x"be",
x"be", x"bd", x"bd", x"bd", x"bd", x"bd", x"bc", x"bc", x"bc", x"bc", x"bb", x"bb", x"bb",
x"bb", x"bb", x"ba", x"ba", x"ba", x"ba", x"b9", x"b9", x"b9", x"b9", x"b9", x"b8", x"b8",
x"b8", x"b8", x"b7", x"b7", x"b7", x"b7", x"b7", x"b6", x"b6", x"b6", x"b6", x"b5", x"b5",
x"b5", x"b5", x"b5", x"b4", x"b4", x"b4", x"b4", x"b3", x"b3", x"b3", x"b3", x"b3", x"b2",
x"b2", x"b2", x"b2", x"b1", x"b1", x"b1", x"b1", x"b1", x"b0", x"b0", x"b0", x"b0", x"af",
x"af", x"af", x"af", x"af", x"ae", x"ae", x"ae", x"ae", x"ad", x"ad", x"ad", x"ad", x"ad",
x"ac", x"ac", x"ac", x"ac", x"ab", x"ab", x"ab", x"ab", x"aa", x"aa", x"aa", x"aa", x"aa",
x"a9", x"a9", x"a9", x"a9", x"a8", x"a8", x"a8", x"a8", x"a8", x"a7", x"a7", x"a7", x"a7",
x"a6", x"a6", x"a6", x"a6", x"a6", x"a5", x"a5", x"a5", x"a5", x"a4", x"a4", x"a4", x"a4",
x"a3", x"a3", x"a3", x"a3", x"a3", x"a2", x"a2", x"a2", x"a2", x"a1", x"a1", x"a1", x"a1",
x"a1", x"a0", x"a0", x"a0", x"a0", x"9f", x"9f", x"9f", x"9f", x"9e", x"9e", x"9e", x"9e",
x"9e", x"9d", x"9d", x"9d", x"9d", x"9c", x"9c", x"9c", x"9c", x"9b", x"9b", x"9b", x"9b",
x"9b", x"9a", x"9a", x"9a", x"9a", x"99", x"99", x"99", x"99", x"98", x"98", x"98", x"98",
x"98", x"97", x"97", x"97", x"97", x"96", x"96", x"96", x"96", x"95", x"95", x"95", x"95",
x"95", x"94", x"94", x"94", x"94", x"93", x"93", x"93", x"93", x"92", x"92", x"92", x"92",
x"92", x"91", x"91", x"91", x"91", x"90", x"90", x"90", x"90", x"8f", x"8f", x"8f", x"8f",
x"8f", x"8e", x"8e", x"8e", x"8e", x"8d", x"8d", x"8d", x"8d", x"8c", x"8c", x"8c", x"8c",
x"8b", x"8b", x"8b", x"8b", x"8b", x"8a", x"8a", x"8a", x"8a", x"89", x"89", x"89", x"89",
x"88", x"88", x"88", x"88", x"87", x"87", x"87", x"87", x"87", x"86", x"86", x"86", x"86",
x"85", x"85", x"85", x"85", x"84", x"84", x"84", x"84", x"83", x"83", x"83", x"83", x"83",
x"82", x"82", x"82", x"82", x"81", x"81", x"81", x"81", x"80", x"80", x"80", x"80", x"7f",
x"7f", x"7f", x"7f", x"7e", x"7e", x"7e", x"7e", x"7e", x"7d", x"7d", x"7d", x"7d", x"7c",
x"7c", x"7c", x"7c", x"7b", x"7b", x"7b", x"7b", x"7a", x"7a", x"7a", x"7a", x"79", x"79",
x"79", x"79", x"78", x"78", x"78", x"78", x"78", x"77", x"77", x"77", x"77", x"76", x"76",
x"76", x"76", x"75", x"75", x"75", x"75", x"74", x"74", x"74", x"74", x"73", x"73", x"73",
x"73", x"72", x"72", x"72", x"72", x"71", x"71", x"71", x"71", x"70", x"70", x"70", x"70",
x"6f", x"6f", x"6f", x"6f", x"6e", x"6e", x"6e", x"6e", x"6e", x"6d", x"6d", x"6d", x"6d",
x"6c", x"6c", x"6c", x"6c", x"6b", x"6b", x"6b", x"6b", x"6a", x"6a", x"6a", x"6a", x"69",
x"69", x"69", x"69", x"68", x"68", x"68", x"68", x"67", x"67", x"67", x"67", x"66", x"66",
x"66", x"66", x"65", x"65", x"65", x"65", x"64", x"64", x"64", x"64", x"63", x"63", x"63",
x"63", x"62", x"62", x"62", x"62", x"61", x"61", x"61", x"61", x"60", x"60", x"60", x"60",
x"5f", x"5f", x"5f", x"5f", x"5e", x"5e", x"5e", x"5e", x"5d", x"5d", x"5d", x"5d", x"5c",
x"5c", x"5c", x"5b", x"5b", x"5b", x"5b", x"5a", x"5a", x"5a", x"5a", x"59", x"59", x"59",
x"59", x"58", x"58", x"58", x"58", x"57", x"57", x"57", x"57", x"56", x"56", x"56", x"56",
x"55", x"55", x"55", x"55", x"54", x"54", x"54", x"54", x"53", x"53", x"53", x"52", x"52",
x"52", x"52", x"51", x"51", x"51", x"51", x"50", x"50", x"50", x"50", x"4f", x"4f", x"4f",
x"4f", x"4e", x"4e", x"4e", x"4d", x"4d", x"4d", x"4d", x"4c", x"4c", x"4c", x"4c", x"4b",
x"4b", x"4b", x"4b", x"4a", x"4a", x"4a", x"4a", x"49", x"49", x"49", x"48", x"48", x"48",
x"48", x"47", x"47", x"47", x"47", x"46", x"46", x"46", x"46", x"45", x"45", x"45", x"44",
x"44", x"44", x"44", x"43", x"43", x"43", x"43", x"42", x"42", x"42", x"41", x"41", x"41",
x"41", x"40", x"40", x"40", x"40", x"3f", x"3f", x"3f", x"3e", x"3e", x"3e", x"3e", x"3d",
x"3d", x"3d", x"3c", x"3c", x"3c", x"3c", x"3b", x"3b", x"3b", x"3b", x"3a", x"3a", x"3a",
x"39", x"39", x"39", x"39", x"38", x"38", x"38", x"37", x"37", x"37", x"37", x"36", x"36",
x"36", x"35", x"35", x"35", x"35", x"34", x"34", x"34", x"33", x"33", x"33", x"33", x"32",
x"32", x"32", x"31", x"31", x"31", x"31", x"30", x"30", x"30", x"2f", x"2f", x"2f", x"2f",
x"2e", x"2e", x"2e", x"2d", x"2d", x"2d", x"2d", x"2c", x"2c", x"2c", x"2b", x"2b", x"2b",
x"2a", x"2a", x"2a", x"2a", x"29", x"29", x"29", x"28", x"28", x"28", x"27", x"27", x"27",
x"27", x"26", x"26", x"26", x"25", x"25", x"25", x"24", x"24", x"24", x"23", x"23", x"23",
x"23", x"22", x"22", x"22", x"21", x"21", x"21", x"20", x"20", x"20", x"1f", x"1f", x"1f",
x"1e", x"1e", x"1e", x"1e", x"1d", x"1d", x"1d", x"1c", x"1c", x"1c", x"1b", x"1b", x"1b",
x"1a", x"1a", x"1a", x"19", x"19", x"19", x"18", x"18", x"18", x"17", x"17", x"17", x"16",
x"16", x"16", x"15", x"15", x"15", x"14", x"14", x"14", x"13", x"13", x"13", x"12", x"12",
x"11", x"11", x"11", x"10", x"10", x"10", x"0f", x"0f", x"0f", x"0e", x"0e", x"0d", x"0d",
x"0d", x"0c", x"0c", x"0c", x"0b", x"0b", x"0a", x"0a", x"0a", x"09", x"09", x"08", x"08",
x"08", x"07", x"07", x"06", x"06", x"05", x"05", x"04", x"04", x"04", x"03", x"03", x"02",
x"01", x"01", x"00");

signal rStoredCoefs1_5: RomStorage_t := (x"ff", x"ff", x"ff", x"ff", x"fe", x"fe", x"fe",
x"fe", x"fe", x"fe", x"fd", x"fd", x"fd", x"fd", x"fd", x"fd", x"fc", x"fc", x"fc", x"fc",
x"fc", x"fb", x"fb", x"fb", x"fb", x"fb", x"fb", x"fa", x"fa", x"fa", x"fa", x"fa", x"fa",
x"f9", x"f9", x"f9", x"f9", x"f9", x"f9", x"f8", x"f8", x"f8", x"f8", x"f8", x"f8", x"f7",
x"f7", x"f7", x"f7", x"f7", x"f7", x"f6", x"f6", x"f6", x"f6", x"f6", x"f6", x"f5", x"f5",
x"f5", x"f5", x"f5", x"f5", x"f4", x"f4", x"f4", x"f4", x"f4", x"f4", x"f3", x"f3", x"f3",
x"f3", x"f3", x"f3", x"f2", x"f2", x"f2", x"f2", x"f2", x"f2", x"f1", x"f1", x"f1", x"f1",
x"f1", x"f1", x"f0", x"f0", x"f0", x"f0", x"f0", x"ef", x"ef", x"ef", x"ef", x"ef", x"ef",
x"ee", x"ee", x"ee", x"ee", x"ee", x"ee", x"ed", x"ed", x"ed", x"ed", x"ed", x"ed", x"ec",
x"ec", x"ec", x"ec", x"ec", x"ec", x"eb", x"eb", x"eb", x"eb", x"eb", x"ea", x"ea", x"ea",
x"ea", x"ea", x"ea", x"e9", x"e9", x"e9", x"e9", x"e9", x"e9", x"e8", x"e8", x"e8", x"e8",
x"e8", x"e8", x"e7", x"e7", x"e7", x"e7", x"e7", x"e6", x"e6", x"e6", x"e6", x"e6", x"e6",
x"e5", x"e5", x"e5", x"e5", x"e5", x"e5", x"e4", x"e4", x"e4", x"e4", x"e4", x"e3", x"e3",
x"e3", x"e3", x"e3", x"e3", x"e2", x"e2", x"e2", x"e2", x"e2", x"e2", x"e1", x"e1", x"e1",
x"e1", x"e1", x"e0", x"e0", x"e0", x"e0", x"e0", x"e0", x"df", x"df", x"df", x"df", x"df",
x"df", x"de", x"de", x"de", x"de", x"de", x"dd", x"dd", x"dd", x"dd", x"dd", x"dd", x"dc",
x"dc", x"dc", x"dc", x"dc", x"dc", x"db", x"db", x"db", x"db", x"db", x"da", x"da", x"da",
x"da", x"da", x"da", x"d9", x"d9", x"d9", x"d9", x"d9", x"d8", x"d8", x"d8", x"d8", x"d8",
x"d8", x"d7", x"d7", x"d7", x"d7", x"d7", x"d6", x"d6", x"d6", x"d6", x"d6", x"d6", x"d5",
x"d5", x"d5", x"d5", x"d5", x"d4", x"d4", x"d4", x"d4", x"d4", x"d4", x"d3", x"d3", x"d3",
x"d3", x"d3", x"d2", x"d2", x"d2", x"d2", x"d2", x"d2", x"d1", x"d1", x"d1", x"d1", x"d1",
x"d0", x"d0", x"d0", x"d0", x"d0", x"d0", x"cf", x"cf", x"cf", x"cf", x"cf", x"ce", x"ce",
x"ce", x"ce", x"ce", x"cd", x"cd", x"cd", x"cd", x"cd", x"cd", x"cc", x"cc", x"cc", x"cc",
x"cc", x"cb", x"cb", x"cb", x"cb", x"cb", x"cb", x"ca", x"ca", x"ca", x"ca", x"ca", x"c9",
x"c9", x"c9", x"c9", x"c9", x"c8", x"c8", x"c8", x"c8", x"c8", x"c8", x"c7", x"c7", x"c7",
x"c7", x"c7", x"c6", x"c6", x"c6", x"c6", x"c6", x"c5", x"c5", x"c5", x"c5", x"c5", x"c4",
x"c4", x"c4", x"c4", x"c4", x"c4", x"c3", x"c3", x"c3", x"c3", x"c3", x"c2", x"c2", x"c2",
x"c2", x"c2", x"c1", x"c1", x"c1", x"c1", x"c1", x"c1", x"c0", x"c0", x"c0", x"c0", x"c0",
x"bf", x"bf", x"bf", x"bf", x"bf", x"be", x"be", x"be", x"be", x"be", x"bd", x"bd", x"bd",
x"bd", x"bd", x"bc", x"bc", x"bc", x"bc", x"bc", x"bb", x"bb", x"bb", x"bb", x"bb", x"bb",
x"ba", x"ba", x"ba", x"ba", x"ba", x"b9", x"b9", x"b9", x"b9", x"b9", x"b8", x"b8", x"b8",
x"b8", x"b8", x"b7", x"b7", x"b7", x"b7", x"b7", x"b6", x"b6", x"b6", x"b6", x"b6", x"b5",
x"b5", x"b5", x"b5", x"b5", x"b4", x"b4", x"b4", x"b4", x"b4", x"b3", x"b3", x"b3", x"b3",
x"b3", x"b2", x"b2", x"b2", x"b2", x"b2", x"b1", x"b1", x"b1", x"b1", x"b1", x"b0", x"b0",
x"b0", x"b0", x"b0", x"af", x"af", x"af", x"af", x"af", x"ae", x"ae", x"ae", x"ae", x"ae",
x"ad", x"ad", x"ad", x"ad", x"ad", x"ac", x"ac", x"ac", x"ac", x"ac", x"ab", x"ab", x"ab",
x"ab", x"ab", x"aa", x"aa", x"aa", x"aa", x"aa", x"a9", x"a9", x"a9", x"a9", x"a9", x"a8",
x"a8", x"a8", x"a8", x"a8", x"a7", x"a7", x"a7", x"a7", x"a7", x"a6", x"a6", x"a6", x"a6",
x"a6", x"a5", x"a5", x"a5", x"a5", x"a4", x"a4", x"a4", x"a4", x"a4", x"a3", x"a3", x"a3",
x"a3", x"a3", x"a2", x"a2", x"a2", x"a2", x"a2", x"a1", x"a1", x"a1", x"a1", x"a1", x"a0",
x"a0", x"a0", x"a0", x"9f", x"9f", x"9f", x"9f", x"9f", x"9e", x"9e", x"9e", x"9e", x"9e",
x"9d", x"9d", x"9d", x"9d", x"9d", x"9c", x"9c", x"9c", x"9c", x"9b", x"9b", x"9b", x"9b",
x"9b", x"9a", x"9a", x"9a", x"9a", x"9a", x"99", x"99", x"99", x"99", x"98", x"98", x"98",
x"98", x"98", x"97", x"97", x"97", x"97", x"97", x"96", x"96", x"96", x"96", x"95", x"95",
x"95", x"95", x"95", x"94", x"94", x"94", x"94", x"93", x"93", x"93", x"93", x"93", x"92",
x"92", x"92", x"92", x"92", x"91", x"91", x"91", x"91", x"90", x"90", x"90", x"90", x"90",
x"8f", x"8f", x"8f", x"8f", x"8e", x"8e", x"8e", x"8e", x"8e", x"8d", x"8d", x"8d", x"8d",
x"8c", x"8c", x"8c", x"8c", x"8c", x"8b", x"8b", x"8b", x"8b", x"8a", x"8a", x"8a", x"8a",
x"89", x"89", x"89", x"89", x"89", x"88", x"88", x"88", x"88", x"87", x"87", x"87", x"87",
x"87", x"86", x"86", x"86", x"86", x"85", x"85", x"85", x"85", x"84", x"84", x"84", x"84",
x"84", x"83", x"83", x"83", x"83", x"82", x"82", x"82", x"82", x"81", x"81", x"81", x"81",
x"81", x"80", x"80", x"80", x"80", x"7f", x"7f", x"7f", x"7f", x"7e", x"7e", x"7e", x"7e",
x"7d", x"7d", x"7d", x"7d", x"7d", x"7c", x"7c", x"7c", x"7c", x"7b", x"7b", x"7b", x"7b",
x"7a", x"7a", x"7a", x"7a", x"79", x"79", x"79", x"79", x"78", x"78", x"78", x"78", x"77",
x"77", x"77", x"77", x"76", x"76", x"76", x"76", x"76", x"75", x"75", x"75", x"75", x"74",
x"74", x"74", x"74", x"73", x"73", x"73", x"73", x"72", x"72", x"72", x"72", x"71", x"71",
x"71", x"71", x"70", x"70", x"70", x"70", x"6f", x"6f", x"6f", x"6f", x"6e", x"6e", x"6e",
x"6e", x"6d", x"6d", x"6d", x"6d", x"6c", x"6c", x"6c", x"6b", x"6b", x"6b", x"6b", x"6a",
x"6a", x"6a", x"6a", x"69", x"69", x"69", x"69", x"68", x"68", x"68", x"68", x"67", x"67",
x"67", x"67", x"66", x"66", x"66", x"66", x"65", x"65", x"65", x"64", x"64", x"64", x"64",
x"63", x"63", x"63", x"63", x"62", x"62", x"62", x"62", x"61", x"61", x"61", x"60", x"60",
x"60", x"60", x"5f", x"5f", x"5f", x"5f", x"5e", x"5e", x"5e", x"5d", x"5d", x"5d", x"5d",
x"5c", x"5c", x"5c", x"5c", x"5b", x"5b", x"5b", x"5a", x"5a", x"5a", x"5a", x"59", x"59",
x"59", x"58", x"58", x"58", x"58", x"57", x"57", x"57", x"56", x"56", x"56", x"56", x"55",
x"55", x"55", x"54", x"54", x"54", x"54", x"53", x"53", x"53", x"52", x"52", x"52", x"52",
x"51", x"51", x"51", x"50", x"50", x"50", x"4f", x"4f", x"4f", x"4f", x"4e", x"4e", x"4e",
x"4d", x"4d", x"4d", x"4c", x"4c", x"4c", x"4c", x"4b", x"4b", x"4b", x"4a", x"4a", x"4a",
x"49", x"49", x"49", x"48", x"48", x"48", x"48", x"47", x"47", x"47", x"46", x"46", x"46",
x"45", x"45", x"45", x"44", x"44", x"44", x"43", x"43", x"43", x"42", x"42", x"42", x"41",
x"41", x"41", x"40", x"40", x"40", x"3f", x"3f", x"3f", x"3e", x"3e", x"3e", x"3d", x"3d",
x"3d", x"3c", x"3c", x"3c", x"3b", x"3b", x"3b", x"3a", x"3a", x"3a", x"39", x"39", x"39",
x"38", x"38", x"38", x"37", x"37", x"36", x"36", x"36", x"35", x"35", x"35", x"34", x"34",
x"34", x"33", x"33", x"32", x"32", x"32", x"31", x"31", x"31", x"30", x"30", x"2f", x"2f",
x"2f", x"2e", x"2e", x"2d", x"2d", x"2d", x"2c", x"2c", x"2b", x"2b", x"2b", x"2a", x"2a",
x"29", x"29", x"29", x"28", x"28", x"27", x"27", x"26", x"26", x"26", x"25", x"25", x"24",
x"24", x"23", x"23", x"23", x"22", x"22", x"21", x"21", x"20", x"20", x"1f", x"1f", x"1e",
x"1e", x"1d", x"1d", x"1c", x"1c", x"1b", x"1b", x"1a", x"1a", x"19", x"19", x"18", x"18",
x"17", x"17", x"16", x"15", x"15", x"14", x"14", x"13", x"13", x"12", x"11", x"11", x"10",
x"0f", x"0f", x"0e", x"0d", x"0c", x"0c", x"0b", x"0a", x"09", x"08", x"07", x"06", x"05",
x"04", x"03", x"00");

signal rStoredCoefs1_8: RomStorage_t := (x"ff", x"ff", x"ff", x"ff", x"fe", x"fe", x"fe",
x"fe", x"fe", x"fe", x"fe", x"fd", x"fd", x"fd", x"fd", x"fd", x"fd", x"fd", x"fc", x"fc",
x"fc", x"fc", x"fc", x"fc", x"fc", x"fc", x"fb", x"fb", x"fb", x"fb", x"fb", x"fb", x"fb",
x"fa", x"fa", x"fa", x"fa", x"fa", x"fa", x"fa", x"f9", x"f9", x"f9", x"f9", x"f9", x"f9",
x"f9", x"f8", x"f8", x"f8", x"f8", x"f8", x"f8", x"f8", x"f7", x"f7", x"f7", x"f7", x"f7",
x"f7", x"f7", x"f6", x"f6", x"f6", x"f6", x"f6", x"f6", x"f6", x"f5", x"f5", x"f5", x"f5",
x"f5", x"f5", x"f5", x"f4", x"f4", x"f4", x"f4", x"f4", x"f4", x"f4", x"f3", x"f3", x"f3",
x"f3", x"f3", x"f3", x"f3", x"f2", x"f2", x"f2", x"f2", x"f2", x"f2", x"f2", x"f1", x"f1",
x"f1", x"f1", x"f1", x"f1", x"f1", x"f0", x"f0", x"f0", x"f0", x"f0", x"f0", x"f0", x"ef",
x"ef", x"ef", x"ef", x"ef", x"ef", x"ef", x"ee", x"ee", x"ee", x"ee", x"ee", x"ee", x"ed",
x"ed", x"ed", x"ed", x"ed", x"ed", x"ed", x"ec", x"ec", x"ec", x"ec", x"ec", x"ec", x"ec",
x"eb", x"eb", x"eb", x"eb", x"eb", x"eb", x"eb", x"ea", x"ea", x"ea", x"ea", x"ea", x"ea",
x"e9", x"e9", x"e9", x"e9", x"e9", x"e9", x"e9", x"e8", x"e8", x"e8", x"e8", x"e8", x"e8",
x"e8", x"e7", x"e7", x"e7", x"e7", x"e7", x"e7", x"e7", x"e6", x"e6", x"e6", x"e6", x"e6",
x"e6", x"e5", x"e5", x"e5", x"e5", x"e5", x"e5", x"e5", x"e4", x"e4", x"e4", x"e4", x"e4",
x"e4", x"e3", x"e3", x"e3", x"e3", x"e3", x"e3", x"e3", x"e2", x"e2", x"e2", x"e2", x"e2",
x"e2", x"e2", x"e1", x"e1", x"e1", x"e1", x"e1", x"e1", x"e0", x"e0", x"e0", x"e0", x"e0",
x"e0", x"e0", x"df", x"df", x"df", x"df", x"df", x"df", x"de", x"de", x"de", x"de", x"de",
x"de", x"de", x"dd", x"dd", x"dd", x"dd", x"dd", x"dd", x"dc", x"dc", x"dc", x"dc", x"dc",
x"dc", x"db", x"db", x"db", x"db", x"db", x"db", x"db", x"da", x"da", x"da", x"da", x"da",
x"da", x"d9", x"d9", x"d9", x"d9", x"d9", x"d9", x"d9", x"d8", x"d8", x"d8", x"d8", x"d8",
x"d8", x"d7", x"d7", x"d7", x"d7", x"d7", x"d7", x"d6", x"d6", x"d6", x"d6", x"d6", x"d6",
x"d5", x"d5", x"d5", x"d5", x"d5", x"d5", x"d5", x"d4", x"d4", x"d4", x"d4", x"d4", x"d4",
x"d3", x"d3", x"d3", x"d3", x"d3", x"d3", x"d2", x"d2", x"d2", x"d2", x"d2", x"d2", x"d1",
x"d1", x"d1", x"d1", x"d1", x"d1", x"d0", x"d0", x"d0", x"d0", x"d0", x"d0", x"d0", x"cf",
x"cf", x"cf", x"cf", x"cf", x"cf", x"ce", x"ce", x"ce", x"ce", x"ce", x"ce", x"cd", x"cd",
x"cd", x"cd", x"cd", x"cd", x"cc", x"cc", x"cc", x"cc", x"cc", x"cc", x"cb", x"cb", x"cb",
x"cb", x"cb", x"cb", x"ca", x"ca", x"ca", x"ca", x"ca", x"ca", x"c9", x"c9", x"c9", x"c9",
x"c9", x"c9", x"c8", x"c8", x"c8", x"c8", x"c8", x"c8", x"c7", x"c7", x"c7", x"c7", x"c7",
x"c7", x"c6", x"c6", x"c6", x"c6", x"c6", x"c6", x"c5", x"c5", x"c5", x"c5", x"c5", x"c5",
x"c4", x"c4", x"c4", x"c4", x"c4", x"c3", x"c3", x"c3", x"c3", x"c3", x"c3", x"c2", x"c2",
x"c2", x"c2", x"c2", x"c2", x"c1", x"c1", x"c1", x"c1", x"c1", x"c1", x"c0", x"c0", x"c0",
x"c0", x"c0", x"c0", x"bf", x"bf", x"bf", x"bf", x"bf", x"be", x"be", x"be", x"be", x"be",
x"be", x"bd", x"bd", x"bd", x"bd", x"bd", x"bd", x"bc", x"bc", x"bc", x"bc", x"bc", x"bb",
x"bb", x"bb", x"bb", x"bb", x"bb", x"ba", x"ba", x"ba", x"ba", x"ba", x"ba", x"b9", x"b9",
x"b9", x"b9", x"b9", x"b8", x"b8", x"b8", x"b8", x"b8", x"b8", x"b7", x"b7", x"b7", x"b7",
x"b7", x"b6", x"b6", x"b6", x"b6", x"b6", x"b6", x"b5", x"b5", x"b5", x"b5", x"b5", x"b4",
x"b4", x"b4", x"b4", x"b4", x"b4", x"b3", x"b3", x"b3", x"b3", x"b3", x"b2", x"b2", x"b2",
x"b2", x"b2", x"b2", x"b1", x"b1", x"b1", x"b1", x"b1", x"b0", x"b0", x"b0", x"b0", x"b0",
x"af", x"af", x"af", x"af", x"af", x"af", x"ae", x"ae", x"ae", x"ae", x"ae", x"ad", x"ad",
x"ad", x"ad", x"ad", x"ac", x"ac", x"ac", x"ac", x"ac", x"ac", x"ab", x"ab", x"ab", x"ab",
x"ab", x"aa", x"aa", x"aa", x"aa", x"aa", x"a9", x"a9", x"a9", x"a9", x"a9", x"a8", x"a8",
x"a8", x"a8", x"a8", x"a7", x"a7", x"a7", x"a7", x"a7", x"a7", x"a6", x"a6", x"a6", x"a6",
x"a6", x"a5", x"a5", x"a5", x"a5", x"a5", x"a4", x"a4", x"a4", x"a4", x"a4", x"a3", x"a3",
x"a3", x"a3", x"a3", x"a2", x"a2", x"a2", x"a2", x"a2", x"a1", x"a1", x"a1", x"a1", x"a1",
x"a0", x"a0", x"a0", x"a0", x"a0", x"9f", x"9f", x"9f", x"9f", x"9f", x"9e", x"9e", x"9e",
x"9e", x"9e", x"9d", x"9d", x"9d", x"9d", x"9d", x"9c", x"9c", x"9c", x"9c", x"9c", x"9b",
x"9b", x"9b", x"9b", x"9a", x"9a", x"9a", x"9a", x"9a", x"99", x"99", x"99", x"99", x"99",
x"98", x"98", x"98", x"98", x"98", x"97", x"97", x"97", x"97", x"97", x"96", x"96", x"96",
x"96", x"95", x"95", x"95", x"95", x"95", x"94", x"94", x"94", x"94", x"94", x"93", x"93",
x"93", x"93", x"92", x"92", x"92", x"92", x"92", x"91", x"91", x"91", x"91", x"90", x"90",
x"90", x"90", x"90", x"8f", x"8f", x"8f", x"8f", x"8f", x"8e", x"8e", x"8e", x"8e", x"8d",
x"8d", x"8d", x"8d", x"8d", x"8c", x"8c", x"8c", x"8c", x"8b", x"8b", x"8b", x"8b", x"8b",
x"8a", x"8a", x"8a", x"8a", x"89", x"89", x"89", x"89", x"88", x"88", x"88", x"88", x"88",
x"87", x"87", x"87", x"87", x"86", x"86", x"86", x"86", x"85", x"85", x"85", x"85", x"85",
x"84", x"84", x"84", x"84", x"83", x"83", x"83", x"83", x"82", x"82", x"82", x"82", x"81",
x"81", x"81", x"81", x"81", x"80", x"80", x"80", x"80", x"7f", x"7f", x"7f", x"7f", x"7e",
x"7e", x"7e", x"7e", x"7d", x"7d", x"7d", x"7d", x"7c", x"7c", x"7c", x"7c", x"7b", x"7b",
x"7b", x"7b", x"7a", x"7a", x"7a", x"7a", x"79", x"79", x"79", x"79", x"78", x"78", x"78",
x"78", x"77", x"77", x"77", x"77", x"76", x"76", x"76", x"76", x"75", x"75", x"75", x"75",
x"74", x"74", x"74", x"74", x"73", x"73", x"73", x"72", x"72", x"72", x"72", x"71", x"71",
x"71", x"71", x"70", x"70", x"70", x"70", x"6f", x"6f", x"6f", x"6e", x"6e", x"6e", x"6e",
x"6d", x"6d", x"6d", x"6d", x"6c", x"6c", x"6c", x"6b", x"6b", x"6b", x"6b", x"6a", x"6a",
x"6a", x"6a", x"69", x"69", x"69", x"68", x"68", x"68", x"68", x"67", x"67", x"67", x"66",
x"66", x"66", x"66", x"65", x"65", x"65", x"64", x"64", x"64", x"63", x"63", x"63", x"63",
x"62", x"62", x"62", x"61", x"61", x"61", x"61", x"60", x"60", x"60", x"5f", x"5f", x"5f",
x"5e", x"5e", x"5e", x"5d", x"5d", x"5d", x"5d", x"5c", x"5c", x"5c", x"5b", x"5b", x"5b",
x"5a", x"5a", x"5a", x"59", x"59", x"59", x"58", x"58", x"58", x"57", x"57", x"57", x"56",
x"56", x"56", x"55", x"55", x"55", x"54", x"54", x"54", x"53", x"53", x"53", x"52", x"52",
x"52", x"51", x"51", x"51", x"50", x"50", x"50", x"4f", x"4f", x"4f", x"4e", x"4e", x"4e",
x"4d", x"4d", x"4c", x"4c", x"4c", x"4b", x"4b", x"4b", x"4a", x"4a", x"4a", x"49", x"49",
x"48", x"48", x"48", x"47", x"47", x"46", x"46", x"46", x"45", x"45", x"44", x"44", x"44",
x"43", x"43", x"42", x"42", x"42", x"41", x"41", x"40", x"40", x"40", x"3f", x"3f", x"3e",
x"3e", x"3d", x"3d", x"3d", x"3c", x"3c", x"3b", x"3b", x"3a", x"3a", x"39", x"39", x"39",
x"38", x"38", x"37", x"37", x"36", x"36", x"35", x"35", x"34", x"34", x"33", x"33", x"32",
x"32", x"31", x"31", x"30", x"30", x"2f", x"2f", x"2e", x"2e", x"2d", x"2c", x"2c", x"2b",
x"2b", x"2a", x"2a", x"29", x"28", x"28", x"27", x"26", x"26", x"25", x"25", x"24", x"23",
x"23", x"22", x"21", x"20", x"20", x"1f", x"1e", x"1d", x"1d", x"1c", x"1b", x"1a", x"19",
x"18", x"18", x"17", x"16", x"15", x"13", x"12", x"11", x"10", x"0f", x"0d", x"0c", x"0a",
x"08", x"05", x"00");

signal rStoredCoefs2_2: RomStorage_t := (
x"ff", x"ff", x"ff", x"ff", x"ff", x"fe", x"fe", x"fe", x"fe", x"fe", x"fe", x"fe", x"fe",
x"fe", x"fd", x"fd", x"fd", x"fd", x"fd", x"fd", x"fd", x"fd", x"fc", x"fc", x"fc", x"fc",
x"fc", x"fc", x"fc", x"fc", x"fc", x"fb", x"fb", x"fb", x"fb", x"fb", x"fb", x"fb", x"fb",
x"fb", x"fa", x"fa", x"fa", x"fa", x"fa", x"fa", x"fa", x"fa", x"f9", x"f9", x"f9", x"f9",
x"f9", x"f9", x"f9", x"f9", x"f9", x"f8", x"f8", x"f8", x"f8", x"f8", x"f8", x"f8", x"f8",
x"f8", x"f7", x"f7", x"f7", x"f7", x"f7", x"f7", x"f7", x"f7", x"f6", x"f6", x"f6", x"f6",
x"f6", x"f6", x"f6", x"f6", x"f5", x"f5", x"f5", x"f5", x"f5", x"f5", x"f5", x"f5", x"f5",
x"f4", x"f4", x"f4", x"f4", x"f4", x"f4", x"f4", x"f4", x"f3", x"f3", x"f3", x"f3", x"f3",
x"f3", x"f3", x"f3", x"f3", x"f2", x"f2", x"f2", x"f2", x"f2", x"f2", x"f2", x"f2", x"f1",
x"f1", x"f1", x"f1", x"f1", x"f1", x"f1", x"f1", x"f0", x"f0", x"f0", x"f0", x"f0", x"f0",
x"f0", x"f0", x"ef", x"ef", x"ef", x"ef", x"ef", x"ef", x"ef", x"ef", x"ee", x"ee", x"ee",
x"ee", x"ee", x"ee", x"ee", x"ee", x"ee", x"ed", x"ed", x"ed", x"ed", x"ed", x"ed", x"ed",
x"ed", x"ec", x"ec", x"ec", x"ec", x"ec", x"ec", x"ec", x"ec", x"eb", x"eb", x"eb", x"eb",
x"eb", x"eb", x"eb", x"eb", x"ea", x"ea", x"ea", x"ea", x"ea", x"ea", x"ea", x"ea", x"e9",
x"e9", x"e9", x"e9", x"e9", x"e9", x"e9", x"e9", x"e8", x"e8", x"e8", x"e8", x"e8", x"e8",
x"e8", x"e8", x"e7", x"e7", x"e7", x"e7", x"e7", x"e7", x"e7", x"e6", x"e6", x"e6", x"e6",
x"e6", x"e6", x"e6", x"e6", x"e5", x"e5", x"e5", x"e5", x"e5", x"e5", x"e5", x"e5", x"e4",
x"e4", x"e4", x"e4", x"e4", x"e4", x"e4", x"e4", x"e3", x"e3", x"e3", x"e3", x"e3", x"e3",
x"e3", x"e2", x"e2", x"e2", x"e2", x"e2", x"e2", x"e2", x"e2", x"e1", x"e1", x"e1", x"e1",
x"e1", x"e1", x"e1", x"e1", x"e0", x"e0", x"e0", x"e0", x"e0", x"e0", x"e0", x"df", x"df",
x"df", x"df", x"df", x"df", x"df", x"df", x"de", x"de", x"de", x"de", x"de", x"de", x"de",
x"dd", x"dd", x"dd", x"dd", x"dd", x"dd", x"dd", x"dd", x"dc", x"dc", x"dc", x"dc", x"dc",
x"dc", x"dc", x"db", x"db", x"db", x"db", x"db", x"db", x"db", x"da", x"da", x"da", x"da",
x"da", x"da", x"da", x"da", x"d9", x"d9", x"d9", x"d9", x"d9", x"d9", x"d9", x"d8", x"d8",
x"d8", x"d8", x"d8", x"d8", x"d8", x"d7", x"d7", x"d7", x"d7", x"d7", x"d7", x"d7", x"d6",
x"d6", x"d6", x"d6", x"d6", x"d6", x"d6", x"d5", x"d5", x"d5", x"d5", x"d5", x"d5", x"d5",
x"d5", x"d4", x"d4", x"d4", x"d4", x"d4", x"d4", x"d4", x"d3", x"d3", x"d3", x"d3", x"d3",
x"d3", x"d3", x"d2", x"d2", x"d2", x"d2", x"d2", x"d2", x"d2", x"d1", x"d1", x"d1", x"d1",
x"d1", x"d1", x"d1", x"d0", x"d0", x"d0", x"d0", x"d0", x"d0", x"cf", x"cf", x"cf", x"cf",
x"cf", x"cf", x"cf", x"ce", x"ce", x"ce", x"ce", x"ce", x"ce", x"ce", x"cd", x"cd", x"cd",
x"cd", x"cd", x"cd", x"cd", x"cc", x"cc", x"cc", x"cc", x"cc", x"cc", x"cc", x"cb", x"cb",
x"cb", x"cb", x"cb", x"cb", x"ca", x"ca", x"ca", x"ca", x"ca", x"ca", x"ca", x"c9", x"c9",
x"c9", x"c9", x"c9", x"c9", x"c9", x"c8", x"c8", x"c8", x"c8", x"c8", x"c8", x"c7", x"c7",
x"c7", x"c7", x"c7", x"c7", x"c7", x"c6", x"c6", x"c6", x"c6", x"c6", x"c6", x"c5", x"c5",
x"c5", x"c5", x"c5", x"c5", x"c5", x"c4", x"c4", x"c4", x"c4", x"c4", x"c4", x"c3", x"c3",
x"c3", x"c3", x"c3", x"c3", x"c3", x"c2", x"c2", x"c2", x"c2", x"c2", x"c2", x"c1", x"c1",
x"c1", x"c1", x"c1", x"c1", x"c0", x"c0", x"c0", x"c0", x"c0", x"c0", x"c0", x"bf", x"bf",
x"bf", x"bf", x"bf", x"bf", x"be", x"be", x"be", x"be", x"be", x"be", x"bd", x"bd", x"bd",
x"bd", x"bd", x"bd", x"bc", x"bc", x"bc", x"bc", x"bc", x"bc", x"bb", x"bb", x"bb", x"bb",
x"bb", x"bb", x"ba", x"ba", x"ba", x"ba", x"ba", x"ba", x"ba", x"b9", x"b9", x"b9", x"b9",
x"b9", x"b9", x"b8", x"b8", x"b8", x"b8", x"b8", x"b7", x"b7", x"b7", x"b7", x"b7", x"b7",
x"b6", x"b6", x"b6", x"b6", x"b6", x"b6", x"b5", x"b5", x"b5", x"b5", x"b5", x"b5", x"b4",
x"b4", x"b4", x"b4", x"b4", x"b4", x"b3", x"b3", x"b3", x"b3", x"b3", x"b3", x"b2", x"b2",
x"b2", x"b2", x"b2", x"b1", x"b1", x"b1", x"b1", x"b1", x"b1", x"b0", x"b0", x"b0", x"b0",
x"b0", x"b0", x"af", x"af", x"af", x"af", x"af", x"ae", x"ae", x"ae", x"ae", x"ae", x"ae",
x"ad", x"ad", x"ad", x"ad", x"ad", x"ad", x"ac", x"ac", x"ac", x"ac", x"ac", x"ab", x"ab",
x"ab", x"ab", x"ab", x"ab", x"aa", x"aa", x"aa", x"aa", x"aa", x"a9", x"a9", x"a9", x"a9",
x"a9", x"a8", x"a8", x"a8", x"a8", x"a8", x"a8", x"a7", x"a7", x"a7", x"a7", x"a7", x"a6",
x"a6", x"a6", x"a6", x"a6", x"a5", x"a5", x"a5", x"a5", x"a5", x"a5", x"a4", x"a4", x"a4",
x"a4", x"a4", x"a3", x"a3", x"a3", x"a3", x"a3", x"a2", x"a2", x"a2", x"a2", x"a2", x"a1",
x"a1", x"a1", x"a1", x"a1", x"a0", x"a0", x"a0", x"a0", x"a0", x"9f", x"9f", x"9f", x"9f",
x"9f", x"9e", x"9e", x"9e", x"9e", x"9e", x"9d", x"9d", x"9d", x"9d", x"9d", x"9c", x"9c",
x"9c", x"9c", x"9c", x"9b", x"9b", x"9b", x"9b", x"9b", x"9a", x"9a", x"9a", x"9a", x"9a",
x"99", x"99", x"99", x"99", x"98", x"98", x"98", x"98", x"98", x"97", x"97", x"97", x"97",
x"97", x"96", x"96", x"96", x"96", x"95", x"95", x"95", x"95", x"95", x"94", x"94", x"94",
x"94", x"94", x"93", x"93", x"93", x"93", x"92", x"92", x"92", x"92", x"92", x"91", x"91",
x"91", x"91", x"90", x"90", x"90", x"90", x"90", x"8f", x"8f", x"8f", x"8f", x"8e", x"8e",
x"8e", x"8e", x"8e", x"8d", x"8d", x"8d", x"8d", x"8c", x"8c", x"8c", x"8c", x"8b", x"8b",
x"8b", x"8b", x"8a", x"8a", x"8a", x"8a", x"8a", x"89", x"89", x"89", x"89", x"88", x"88",
x"88", x"88", x"87", x"87", x"87", x"87", x"86", x"86", x"86", x"86", x"85", x"85", x"85",
x"85", x"84", x"84", x"84", x"84", x"83", x"83", x"83", x"83", x"82", x"82", x"82", x"82",
x"81", x"81", x"81", x"81", x"80", x"80", x"80", x"80", x"7f", x"7f", x"7f", x"7f", x"7e",
x"7e", x"7e", x"7d", x"7d", x"7d", x"7d", x"7c", x"7c", x"7c", x"7c", x"7b", x"7b", x"7b",
x"7b", x"7a", x"7a", x"7a", x"79", x"79", x"79", x"79", x"78", x"78", x"78", x"77", x"77",
x"77", x"77", x"76", x"76", x"76", x"75", x"75", x"75", x"75", x"74", x"74", x"74", x"73",
x"73", x"73", x"73", x"72", x"72", x"72", x"71", x"71", x"71", x"70", x"70", x"70", x"70",
x"6f", x"6f", x"6f", x"6e", x"6e", x"6e", x"6d", x"6d", x"6d", x"6c", x"6c", x"6c", x"6c",
x"6b", x"6b", x"6b", x"6a", x"6a", x"6a", x"69", x"69", x"69", x"68", x"68", x"68", x"67",
x"67", x"67", x"66", x"66", x"66", x"65", x"65", x"65", x"64", x"64", x"63", x"63", x"63",
x"62", x"62", x"62", x"61", x"61", x"61", x"60", x"60", x"60", x"5f", x"5f", x"5e", x"5e",
x"5e", x"5d", x"5d", x"5d", x"5c", x"5c", x"5b", x"5b", x"5b", x"5a", x"5a", x"59", x"59",
x"59", x"58", x"58", x"57", x"57", x"57", x"56", x"56", x"55", x"55", x"54", x"54", x"54",
x"53", x"53", x"52", x"52", x"51", x"51", x"51", x"50", x"50", x"4f", x"4f", x"4e", x"4e",
x"4d", x"4d", x"4c", x"4c", x"4b", x"4b", x"4a", x"4a", x"49", x"49", x"48", x"48", x"47",
x"47", x"46", x"46", x"45", x"45", x"44", x"44", x"43", x"42", x"42", x"41", x"41", x"40",
x"3f", x"3f", x"3e", x"3e", x"3d", x"3c", x"3c", x"3b", x"3a", x"3a", x"39", x"38", x"38",
x"37", x"36", x"36", x"35", x"34", x"33", x"32", x"32", x"31", x"30", x"2f", x"2e", x"2d",
x"2d", x"2c", x"2b", x"2a", x"29", x"28", x"27", x"25", x"24", x"23", x"22", x"20", x"1f",
x"1e", x"1c", x"1a", x"19", x"17", x"15", x"12", x"0f", x"0b", x"00");

attribute rom_style : string;
attribute rom_style of rStoredCoefs1_5 : signal is "block";
attribute rom_style of rStoredCoefs1_8 : signal is "block";
attribute rom_style of rStoredCoefs2_2 : signal is "block";

begin

ReadData: process (RomClk)
begin
  if rising_edge(RomClk) then
    if rReadEnable = '1' then
      if rGammaFactor = "000" then -- Gamma Factor = 1
        rStoredData <= rReadAddr(9 downto 2);
      elsif rGammaFactor = "001" then -- Gamma Factor = 1 / 1.2
        rStoredData <= rStoredCoefs1_2(to_integer(unsigned(rReadAddr)));
      elsif rGammaFactor = "010" then -- Gamma Factor = 1 / 1.5
        rStoredData <= rStoredCoefs1_5(to_integer(unsigned(rReadAddr)));
      elsif rGammaFactor = "011" then -- Gamma Factor = 1 / 1.8
        rStoredData <= rStoredCoefs1_8(to_integer(unsigned(rReadAddr)));
      else -- Gamma Factor = 1 / 2.2
        rStoredData <= rStoredCoefs2_2(to_integer(unsigned(rReadAddr)));
      end if;
    end if;
  end if;
end process ReadData;

end rtl;

