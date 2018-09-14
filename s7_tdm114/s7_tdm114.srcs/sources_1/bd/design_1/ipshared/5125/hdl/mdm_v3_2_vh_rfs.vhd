-------------------------------------------------------------------------------
-- mdm_funcs.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2016 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm_funcs.vhd
--
-- Description:     Support functions for mdm
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--                  mdm_funcs.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

package mdm_funcs is

  type TARGET_FAMILY_TYPE is (
                              -- pragma xilinx_rtl_off
                              non_RTL,
                              -- pragma xilinx_rtl_on
                              RTL
                             );

  function String_To_Family (S : string; Select_RTL : boolean) return TARGET_FAMILY_TYPE;

end package mdm_funcs;

package body mdm_funcs is

  function LowerCase_Char(char : character) return character is
  begin
    -- If char is not an upper case letter then return char
    if char < 'A' or char > 'Z' then
      return char;
    end if;
    -- Otherwise map char to its corresponding lower case character and
    -- return that
    case char is
      when 'A'    => return 'a'; when 'B' => return 'b'; when 'C' => return 'c'; when 'D' => return 'd';
      when 'E'    => return 'e'; when 'F' => return 'f'; when 'G' => return 'g'; when 'H' => return 'h';
      when 'I'    => return 'i'; when 'J' => return 'j'; when 'K' => return 'k'; when 'L' => return 'l';
      when 'M'    => return 'm'; when 'N' => return 'n'; when 'O' => return 'o'; when 'P' => return 'p';
      when 'Q'    => return 'q'; when 'R' => return 'r'; when 'S' => return 's'; when 'T' => return 't';
      when 'U'    => return 'u'; when 'V' => return 'v'; when 'W' => return 'w'; when 'X' => return 'x';
      when 'Y'    => return 'y'; when 'Z' => return 'z';
      when others => return char;
    end case;
  end LowerCase_Char;

  function LowerCase_String (s : string) return string is
    variable res : string(s'range);
  begin  -- function LoweerCase_String
    for I in s'range loop
      res(I) := LowerCase_Char(s(I));
    end loop;  -- I
    return res;
  end function LowerCase_String;

  -- Returns true if case insensitive string comparison determines that
  -- str1 and str2 are equal
  function Equal_String( str1, str2 : string ) return boolean is
    constant len1 : integer := str1'length;
    constant len2 : integer := str2'length;
    variable equal : boolean := true;
  begin
    if not (len1=len2) then
      equal := false;
    else
      for i in str1'range loop
        if not (LowerCase_Char(str1(i)) = LowerCase_Char(str2(i))) then
          equal := false;
        end if;
      end loop;
    end if;

    return equal;
  end Equal_String;

  function String_To_Family (S : string; Select_RTL : boolean) return TARGET_FAMILY_TYPE is
  begin  -- function String_To_Family
    if ((Select_RTL) or Equal_String(S, "rtl")) then
      return RTL;
    else
      return non_RTL;
    end if;
  end function String_To_Family;

end package body mdm_funcs;


-------------------------------------------------------------------------------
-- mdm_primitives.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2014,2016-2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm_primitives.vhd
--
-- Description:     one bit AND function using carry-chain
--
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:
--              mdm_primitives.vhd
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana  2014-05-23    First Version
--   stefana  2016-06-01    Added wrappers for unisim primitives
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

----- entity BSCANE2 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_BSCANE2 is
  generic (
     C_TARGET     : TARGET_FAMILY_TYPE;
     DISABLE_JTAG : string := "FALSE";
     JTAG_CHAIN   : integer := 1
  );
  port (
     CAPTURE      : out std_logic := 'H';
     DRCK         : out std_logic := 'H';
     RESET        : out std_logic := 'H';
     RUNTEST      : out std_logic := 'L';
     SEL          : out std_logic := 'L';
     SHIFT        : out std_logic := 'L';
     TCK          : out std_logic := 'L';
     TDI          : out std_logic := 'L';
     TMS          : out std_logic := 'L';
     UPDATE       : out std_logic := 'L';
     TDO          : in  std_logic := 'X'
  );
end entity MB_BSCANE2;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BSCANE2 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Use_E2: if ( C_TARGET /= RTL ) generate
  begin
     BSCANE2_I: BSCANE2
      generic map (
        DISABLE_JTAG => DISABLE_JTAG,
        JTAG_CHAIN   => JTAG_CHAIN)
      port map (
        CAPTURE      => CAPTURE,
        DRCK         => DRCK,
        RESET        => RESET,
        RUNTEST      => RUNTEST,
        SEL          => SEL,
        SHIFT        => SHIFT,
        TCK          => TCK,
        TDI          => TDI,
        TMS          => TMS,
        UPDATE       => UPDATE,
        TDO          => TDO);
  end generate Use_E2;

end architecture IMP;


----- entity BUFG -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_BUFG is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
     O : out std_logic;
     I : in  std_logic
  );
end entity MB_BUFG;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BUFG is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= TO_X01(I);
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: BUFG
      port map (
        O => O,
        I => I
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity BUFGCTRL -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_BUFGCTRL is
  generic (
    C_TARGET            : TARGET_FAMILY_TYPE;
    INIT_OUT            : integer := 0;
    IS_CE0_INVERTED     : bit := '0';
    IS_CE1_INVERTED     : bit := '0';
    IS_I0_INVERTED      : bit := '0';
    IS_I1_INVERTED      : bit := '0';
    IS_IGNORE0_INVERTED : bit := '0';
    IS_IGNORE1_INVERTED : bit := '0';
    IS_S0_INVERTED      : bit := '0';
    IS_S1_INVERTED      : bit := '0';
    PRESELECT_I0        : boolean := false;
    PRESELECT_I1        : boolean := false
  );
  port (
    O                   : out std_logic;
    CE0                 : in  std_logic;
    CE1                 : in  std_logic;
    I0                  : in  std_logic;
    I1                  : in  std_logic;
    IGNORE0             : in  std_logic;
    IGNORE1             : in  std_logic;
    S0                  : in  std_logic;
    S1                  : in  std_logic
  );
end entity MB_BUFGCTRL;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_BUFGCTRL is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: BUFGCTRL
      generic map (
        INIT_OUT            => INIT_OUT,
        IS_CE0_INVERTED     => IS_CE0_INVERTED,
        IS_CE1_INVERTED     => IS_CE1_INVERTED,
        IS_I0_INVERTED      => IS_I0_INVERTED,
        IS_I1_INVERTED      => IS_I1_INVERTED,
        IS_IGNORE0_INVERTED => IS_IGNORE0_INVERTED,
        IS_IGNORE1_INVERTED => IS_IGNORE1_INVERTED,
        IS_S0_INVERTED      => IS_S0_INVERTED,
        IS_S1_INVERTED      => IS_S1_INVERTED,
        PRESELECT_I0        => PRESELECT_I0,
        PRESELECT_I1        => PRESELECT_I1
      )
      port map (
        O       => O,
        CE0     => CE0,
        CE1     => CE1,
        I0      => I0,
        I1      => I1,
        IGNORE0 => IGNORE0,
        IGNORE1 => IGNORE1,
        S0      => S0,
        S1      => S1
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDRE -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_FDRE is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port(
    Q        : out std_logic;
    C        : in  std_logic;
    CE       : in  std_logic;
    D        : in  std_logic;
    R        : in  std_logic
  );
end entity MB_FDRE;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_FDRE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    function To_StdLogic(A : in bit ) return std_logic is
    begin
      if( A = '1' ) then
        return '1';
      end if;
      return '0';
    end;

    signal q_o : std_logic := To_StdLogic(INIT);
  begin
    Q <=  q_o;
    process(C)
    begin
      if (rising_edge(C)) then
        if (R = '1') then
          q_o <= '0';
        elsif (CE = '1') then
          q_o <= D;
        end if;
      end if;
    end process;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: FDRE
      generic map(
        INIT => INIT
      )
      port map(
        Q   => Q,
        C   => C,
        CE  => CE,
        D   => D,
        R   => R
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity PLLE2_BASE -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_PLLE2_BASE is
  generic (
    C_TARGET           : TARGET_FAMILY_TYPE;
    BANDWIDTH          : string := "OPTIMIZED";
    CLKFBOUT_MULT      : integer := 5;
    CLKFBOUT_PHASE     : real := 0.000;
    CLKIN1_PERIOD      : real := 0.000;
    CLKOUT0_DIVIDE     : integer := 1;
    CLKOUT0_DUTY_CYCLE : real := 0.500;
    CLKOUT0_PHASE      : real := 0.000;
    CLKOUT1_DIVIDE     : integer := 1;
    CLKOUT1_DUTY_CYCLE : real := 0.500;
    CLKOUT1_PHASE      : real := 0.000;
    CLKOUT2_DIVIDE     : integer := 1;
    CLKOUT2_DUTY_CYCLE : real := 0.500;
    CLKOUT2_PHASE      : real := 0.000;
    CLKOUT3_DIVIDE     : integer := 1;
    CLKOUT3_DUTY_CYCLE : real := 0.500;
    CLKOUT3_PHASE      : real := 0.000;
    CLKOUT4_DIVIDE     : integer := 1;
    CLKOUT4_DUTY_CYCLE : real := 0.500;
    CLKOUT4_PHASE      : real := 0.000;
    CLKOUT5_DIVIDE     : integer := 1;
    CLKOUT5_DUTY_CYCLE : real := 0.500;
    CLKOUT5_PHASE      : real := 0.000;
    DIVCLK_DIVIDE      : integer := 1;
    REF_JITTER1        : real := 0.010;
    STARTUP_WAIT       : string := "FALSE"
  );
  port (
    CLKFBOUT : out std_logic;
    CLKOUT0  : out std_logic;
    CLKOUT1  : out std_logic;
    CLKOUT2  : out std_logic;
    CLKOUT3  : out std_logic;
    CLKOUT4  : out std_logic;
    CLKOUT5  : out std_logic;
    LOCKED   : out std_logic;
    CLKFBIN  : in  std_logic;
    CLKIN1   : in  std_logic;
    PWRDWN   : in  std_logic;
    RST      : in  std_logic
  );
end entity MB_PLLE2_BASE;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_PLLE2_BASE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    assert false report "Illegal use of implementation primitives" severity failure;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: PLLE2_BASE
       generic map (
         BANDWIDTH          => BANDWIDTH,
         CLKFBOUT_MULT      => CLKFBOUT_MULT,
         CLKFBOUT_PHASE     => CLKFBOUT_PHASE,
         CLKIN1_PERIOD      => CLKIN1_PERIOD,
         CLKOUT0_DIVIDE     => CLKOUT0_DIVIDE,
         CLKOUT0_DUTY_CYCLE => CLKOUT0_DUTY_CYCLE,
         CLKOUT0_PHASE      => CLKOUT0_PHASE,
         CLKOUT1_DIVIDE     => CLKOUT1_DIVIDE,
         CLKOUT1_DUTY_CYCLE => CLKOUT1_DUTY_CYCLE,
         CLKOUT1_PHASE      => CLKOUT1_PHASE,
         CLKOUT2_DIVIDE     => CLKOUT2_DIVIDE,
         CLKOUT2_DUTY_CYCLE => CLKOUT2_DUTY_CYCLE,
         CLKOUT2_PHASE      => CLKOUT2_PHASE,
         CLKOUT3_DIVIDE     => CLKOUT3_DIVIDE,
         CLKOUT3_DUTY_CYCLE => CLKOUT3_DUTY_CYCLE,
         CLKOUT3_PHASE      => CLKOUT3_PHASE,
         CLKOUT4_DIVIDE     => CLKOUT4_DIVIDE,
         CLKOUT4_DUTY_CYCLE => CLKOUT4_DUTY_CYCLE,
         CLKOUT4_PHASE      => CLKOUT4_PHASE,
         CLKOUT5_DIVIDE     => CLKOUT5_DIVIDE,
         CLKOUT5_DUTY_CYCLE => CLKOUT5_DUTY_CYCLE,
         CLKOUT5_PHASE      => CLKOUT5_PHASE,
         DIVCLK_DIVIDE      => DIVCLK_DIVIDE,
         REF_JITTER1        => REF_JITTER1,
         STARTUP_WAIT       => STARTUP_WAIT
       )
       port map (
         CLKFBOUT           => CLKFBOUT,
         CLKOUT0            => CLKOUT0,
         CLKOUT1            => CLKOUT1,
         CLKOUT2            => CLKOUT2,
         CLKOUT3            => CLKOUT3,
         CLKOUT4            => CLKOUT4,
         CLKOUT5            => CLKOUT5,
         LOCKED             => LOCKED,
         CLKFBIN            => CLKFBIN,
         CLKIN1             => CLKIN1,
         PWRDWN             => PWRDWN,
         RST                => RST
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDC_1 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_FDC_1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port (
     Q       : out std_logic;
     C       : in  std_logic;
     CLR     : in  std_logic;
     D       : in  std_logic
  );
end entity MB_FDC_1;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_FDC_1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out : std_logic := TO_X01(INIT);
  begin
    Q <= q_out;

    FunctionalBehavior : process(C, CLR)
    begin
      if CLR = '1' then
        q_out <= '0';
      elsif (falling_edge(C)) then
        q_out <= D;
      end if;
    end process;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: FDC_1
      generic map (
        INIT => INIT
      )
      port map (
        Q   => Q,
        C   => C,
        CLR => CLR,
        D   => D
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity FDRE_1 -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_FDRE_1 is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    INIT     : bit := '0'
  );
  port (
     Q       : out std_logic;
     C       : in  std_logic;
     CE      : in  std_logic;
     D       : in  std_logic;
     R       : in  std_logic
  );
end entity MB_FDRE_1;

library unisim;
use unisim.vcomponents.all;

architecture IMP of MB_FDRE_1 is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out : std_logic := TO_X01(INIT);
  begin
    Q <= q_out;

    FunctionalBehavior : process(C)
    begin
      if C'EVENT and C = '0' then
        if R = '1' then
          q_out <= '0';
        elsif CE = '1' or CE = 'Z' then
          q_out <= D;
        end if;
      end if;
    end process;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: FDRE_1
       generic map (
         INIT => INIT
       )
       port map (
         Q    => Q,
         C    => C,
         CE   => CE,
         D    => D,
         R    => R
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity SRL16E -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_SRL16E is
  generic(
    C_TARGET    : TARGET_FAMILY_TYPE;
    C_STATIC    : boolean    := false;
    C_USE_SRL16 : string     := "yes";
    INIT        : bit_vector := X"0000");
  port(
    Q   : out std_logic;
    A0  : in  std_logic;
    A1  : in  std_logic;
    A2  : in  std_logic;
    A3  : in  std_logic;
    CE  : in  std_logic;
    CLK : in  std_logic;
    D   : in  std_logic);
end entity MB_SRL16E;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_SRL16E is
begin  -- architecture IMP

  Use_unisim: if (C_USE_SRL16 /= "no" and C_TARGET /= RTL) generate
    MB_SRL16E_I1: SRL16E
      generic map (
        INIT  => INIT)  -- [bit_vector]
      port map (
        Q   => Q,       -- [out std_logic]
        A0  => A0,      -- [in  std_logic]
        A1  => A1,      -- [in  std_logic]
        A2  => A2,      -- [in  std_logic]
        A3  => A3,      -- [in  std_logic]
        CE  => CE,      -- [in  std_logic]
        CLK => CLK,     -- [in  std_logic]
        D   => D);      -- [in std_logic]
  end generate Use_unisim;

  Use_RTL : if (C_USE_SRL16 = "no" or C_TARGET = RTL) generate
    signal shift_reg         : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    constant shift_reg_const : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    attribute shreg_extract : string;
    attribute shreg_extract of SHIFT_REG : signal is "no";
  begin

    Static_Values: if (C_STATIC) generate
    begin
      Q <= shift_reg_const(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));
    end generate Static_Values;

    Dynamic_Values: if (not C_STATIC) generate
    begin
      Q <= shift_reg(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));

      process(CLK)
      begin
        if (rising_edge(CLK)) then
          if CE = '1' then
            shift_reg <= shift_reg(14 downto 0) & D;
          end if;
        end if;
      end process;

    end generate Dynamic_Values;

  end generate Use_RTL;

end architecture IMP;


----- entity FDRSE -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_FDRSE is
  generic (
    C_TARGET       : TARGET_FAMILY_TYPE;
    INIT           : bit := '0';
    IS_CE_INVERTED : bit := '0';
    IS_C_INVERTED  : bit := '0';
    IS_D_INVERTED  : bit := '0';
    IS_R_INVERTED  : bit := '0';
    IS_S_INVERTED  : bit := '0'
  );
  port (
    Q              : out std_logic;
    C              : in  std_logic;
    CE             : in  std_logic;
    D              : in  std_logic;
    R              : in  std_logic;
    S              : in  std_logic
  );
end entity MB_FDRSE;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_FDRSE is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
    signal q_out              : std_logic := TO_X01(INIT);
    signal ce_in              : std_logic;
    signal d_in               : std_logic;
    signal s_in               : std_logic;
    signal r_in               : std_logic;
    constant IS_CE_INVERTED_BIN : std_logic := TO_X01(IS_CE_INVERTED);
    constant IS_D_INVERTED_BIN  : std_logic := TO_X01(IS_D_INVERTED);
    constant IS_S_INVERTED_BIN  : std_logic := TO_X01(IS_S_INVERTED);
    constant IS_R_INVERTED_BIN  : std_logic := TO_X01(IS_R_INVERTED);
  begin
    Q      <= q_out;
    ce_in  <= IS_CE_INVERTED_BIN xor CE;
    d_in   <= IS_D_INVERTED_BIN  xor D;
    s_in   <= IS_S_INVERTED_BIN  xor S;
    r_in   <= IS_R_INVERTED_BIN  xor R;

    Rising: if IS_C_INVERTED = '0' generate
    begin
      FunctionalBehavior : process(C)
      begin
        if (rising_edge(C)) then
          if (r_in = '1') then
            q_out <= '0';
          elsif (s_in = '1') then
            q_out <= '1';
          elsif (ce_in = '1') then
            q_out <= D;
          end if;
        end if;
      end process;
    end generate Rising;

    Falling: if IS_C_INVERTED /= '0' generate
    begin
      FunctionalBehavior : process(C)
      begin
        if (falling_edge(C)) then
          if (r_in = '1') then
            q_out <= '0';
          elsif (s_in = '1') then
            q_out <= '1';
          elsif (ce_in = '1') then
            q_out <= D;
          end if;
        end if;
      end process;
    end generate Falling;

  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
     Native: FDRSE
       generic map (
         INIT           => INIT,
         IS_C_INVERTED  => IS_C_INVERTED,
         IS_CE_INVERTED => IS_CE_INVERTED,
         IS_D_INVERTED  => IS_D_INVERTED,
         IS_R_INVERTED  => IS_R_INVERTED,
         IS_S_INVERTED  => IS_S_INVERTED
       )
       port map (
         Q              => Q,
         C              => C,
         CE             => CE,
         R              => R,
         S              => S,
         D              => D
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity MUXCY with XORCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_MUXCY_XORCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    O  : out std_logic;
    LO : out std_logic;
    CI : in  std_logic;
    DI : in  std_logic;
    S  : in  std_logic
  );
end entity MB_MUXCY_XORCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_MUXCY_XORCY is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= (CI xor S);
    LO <= DI when S = '0' else CI;
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native_I1: MUXCY_L
      port map(
        LO => LO,
        CI => CI,
        DI => DI,
        S  => S
      );
    Native_I2: XORCY
      port map(
        O  => O,
        CI => CI,
        LI => S
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity MUXCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_MUXCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    LO : out std_logic;
    CI : in  std_logic;
    DI : in  std_logic;
    S  : in  std_logic
  );
end entity MB_MUXCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_MUXCY is
begin
  
  Using_RTL: if ( C_TARGET = RTL ) generate 
  begin
    LO <= DI when S = '0' else CI;
  end generate Using_RTL;
  
  Using_FPGA: if ( C_TARGET /= RTL ) generate 
  begin
    Native: MUXCY_L
      port map(
        LO => LO,
        CI => CI,
        DI => DI,
        S  => S
      );
  end generate Using_FPGA;
  
end architecture IMP;


----- entity XORCY -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_XORCY is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    O  : out std_logic;
    CI : in  std_logic;
    LI : in  std_logic
  );
end entity MB_XORCY;

library Unisim;
use Unisim.vcomponents.all;

architecture IMP of MB_XORCY is
begin

  Using_RTL: if ( C_TARGET = RTL ) generate
  begin
    O <= (CI xor LI);
  end generate Using_RTL;

  Using_FPGA: if ( C_TARGET /= RTL ) generate
  begin
    Native: XORCY
      port map(
        O  => O,
        CI => CI,
        LI => LI
      );
  end generate Using_FPGA;

end architecture IMP;


----- entity SRLC32E -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MB_SRLC32E is
  generic (
    C_TARGET        : TARGET_FAMILY_TYPE;
    C_USE_SRL16     : string     := "yes";
    INIT            : bit_vector := X"00000000";
    IS_CLK_INVERTED : bit := '0'
  );
  port (
     Q              : out STD_LOGIC;
     Q31            : out STD_LOGIC;
     A              : in  STD_LOGIC_VECTOR (4 downto 0) := "00000";
     CE             : in  STD_LOGIC;
     CLK            : in  STD_LOGIC;
     D              : in  STD_LOGIC
  );
end entity MB_SRLC32E;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of MB_SRLC32E is
begin

  Using_RTL: if (C_USE_SRL16 = "no"  or C_TARGET = RTL) generate
    signal shift_reg : std_logic_vector(31 downto 0) := to_stdLogicVector(INIT);

    attribute shreg_extract : string;
    attribute shreg_extract of shift_reg : signal is "no";
  begin
    Q   <= shift_reg(to_integer(unsigned(A)));
    Q31 <= shift_reg(31);

    Rising: if IS_CLK_INVERTED = '0' generate
    begin
      process(CLK)
      begin
        if (rising_edge(CLK)) then
          if CE = '1' then
            shift_reg <= shift_reg(30 downto 0) & D;
          end if;
        end if;
      end process;
    end generate Rising;

    Falling: if IS_CLK_INVERTED /= '0' generate
    begin
      process(CLK)
      begin
        if (falling_edge(CLK)) then
          if CE = '1' then
            shift_reg <= shift_reg(30 downto 0) & D;
          end if;
        end if;
      end process;
    end generate Falling;

  end generate Using_RTL;

  Using_FPGA: if (C_USE_SRL16 /= "no" and C_TARGET /= RTL ) generate
  begin
     Native: SRLC32E
       generic map (
         INIT            => INIT,
         IS_CLK_INVERTED => IS_CLK_INVERTED
       )
       port map (
         Q               => Q,
         Q31             => Q31,
         A               => A,
         CE              => CE,
         CLK             => CLK,
         D               => D
       );
  end generate Using_FPGA;

end architecture IMP;


----- entity carry_and -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity carry_and is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    Carry_IN  : in  std_logic;
    A         : in  std_logic;
    Carry_OUT : out std_logic);
end entity carry_and;

architecture IMP of carry_and is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal carry_out_i : std_logic;
begin  -- architecture IMP

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => '0',
      CI => Carry_IN,
      S  => A,
      LO => carry_out_i);

  Carry_OUT <= carry_out_i;

end architecture IMP;


----- entity carry_or_vec -----
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity carry_or_vec is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE;
    Size     : natural);
  port (
    Carry_In  : in std_logic;
    In_Vec    : in  std_logic_vector(0 to Size-1);
    Carry_Out : out std_logic);
end entity carry_or_vec;

architecture IMP of carry_or_vec is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  constant C_BITS_PER_LUT : natural := 6;

  signal sel   : std_logic_vector(0 to ((Size+(C_BITS_PER_LUT - 1))/C_BITS_PER_LUT) - 1);
  signal carry : std_logic_vector(0 to ((Size+(C_BITS_PER_LUT - 1))/C_BITS_PER_LUT));

  signal sig1  : std_logic_vector(0 to sel'length*C_BITS_PER_LUT - 1);

begin  -- architecture IMP

  assign_sigs : process (In_Vec) is
  begin  -- process assign_sigs
    sig1               <= (others => '0');
    sig1(0 to Size-1)  <= In_Vec;
  end process assign_sigs;

  carry(carry'right) <= Carry_In;

  The_Compare : for I in sel'right downto sel'left generate
  begin
    Compare_All_Bits: process(sig1)
      variable sel_I   : std_logic;
    begin
      sel_I  :=  '0';
      Compare_Bits: for J in C_BITS_PER_LUT - 1 downto 0 loop
        sel_I  := sel_I or ( sig1(C_BITS_PER_LUT * I + J) );
      end loop Compare_Bits;
      sel(I) <= not sel_I;
    end process Compare_All_Bits;

    MUXCY_L_I1 : MB_MUXCY
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        DI => '1',                      -- [in  std_logic S = 0]
        CI => Carry(I+1),               -- [in  std_logic S = 1]
        S  => sel(I),                   -- [in  std_logic (Select)]
        LO => Carry(I));                -- [out std_logic]
  end generate The_Compare;

  Carry_Out <= Carry(0);

end architecture IMP;


----- entity carry_or -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity carry_or is
  generic (
    C_TARGET : TARGET_FAMILY_TYPE
  );
  port (
    Carry_IN  : in  std_logic;
    A         : in  std_logic;
    Carry_OUT : out std_logic);
end entity carry_or;

architecture IMP of carry_or is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal carry_out_i : std_logic;
  signal A_N : std_logic;

begin  -- architecture IMP

  A_N <= not A;

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => '1',
      CI => Carry_IN,
      S  => A_N,
      LO => carry_out_i);

  Carry_OUT <= carry_out_i;

end architecture IMP;


----- entity select_bit -----
library ieee;
use ieee.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity select_bit is
  generic (
    C_TARGET  : TARGET_FAMILY_TYPE;
    sel_value : std_logic_vector(1 downto 0));
  port (
    Mask      : in  std_logic_vector(1 downto 0);
    Request   : in  std_logic_vector(1 downto 0);
    Carry_In  : in  std_logic;
    Carry_Out : out std_logic);
end entity select_bit;

architecture IMP of select_bit is

  component MB_MUXCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY;

  signal di  : std_logic;
  signal sel : std_logic;

begin  -- architecture IMP

  -- Just pass the carry value if none is requesting or is enabled
  sel <= not( (Request(1) and Mask(1)) or (Request(0) and Mask(0)));

  di <= ((Request(0) and Mask(0) and sel_value(0))) or
        ( not(Request(0) and Mask(0)) and Request(1) and Mask(1) and sel_value(1));

  MUXCY_I : MB_MUXCY
    generic map (
      C_TARGET => C_TARGET
    )
    port map (
      DI => di,
      CI => Carry_In,
      S  => sel,
      LO => Carry_Out);

end architecture IMP;


-------------------------------------------------------------------------------
-- arbiter.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2014,2016 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        arbiter.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:   
--              arbiter.vhd
--                  mdm_primitives.vhd
--
-------------------------------------------------------------------------------
-- Author:          goran
--
-- History:
--   goran   2014/05/08    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity Arbiter is
  generic (
    C_TARGET  : TARGET_FAMILY_TYPE;
    Size      : natural := 32;
    Size_Log2 : natural := 5);
  port (
    Clk       : in  std_logic;
    Reset     : in  std_logic;

    Enable    : in  std_logic;
    Requests  : in  std_logic_vector(Size-1 downto 0);
    Granted   : out std_logic_vector(Size-1 downto 0);
    Valid_Sel : out std_logic;
    Selected  : out std_logic_vector(Size_Log2-1 downto 0));
end entity Arbiter;

architecture IMP of Arbiter is

  component select_bit
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE;
      sel_value : std_logic_vector(1 downto 0));
    port (
      Mask      : in  std_logic_vector(1 downto 0);
      Request   : in  std_logic_vector(1 downto 0);
      Carry_In  : in  std_logic;
      Carry_Out : out std_logic);
  end component select_bit;

  component carry_or_vec
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE;
      Size      : natural);
    port (
      Carry_In  : in std_logic;
      In_Vec    : in  std_logic_vector(0 to Size-1);
      Carry_Out : out std_logic);
  end component carry_or_vec;

  component carry_and
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE);
    port (
      Carry_IN  : in  std_logic;
      A         : in  std_logic;
      Carry_OUT : out std_logic);
  end component carry_and;

  component carry_or
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE);
    port (
      Carry_IN  : in  std_logic;
      A         : in  std_logic;
      Carry_OUT : out std_logic);
  end component carry_or;

  subtype index_type is std_logic_vector(Size_Log2-1 downto 0);
  type int_array_type is array (natural range 2*Size-1 downto 0) of index_type;

  function init_index_table return int_array_type is
    variable tmp : int_array_type;
  begin  -- function init_index_table
    for I in 0 to Size-1 loop
      tmp(I)      := std_logic_vector(to_unsigned(I, Size_Log2));
      tmp(Size+I) := std_logic_vector(to_unsigned(I, Size_Log2));
    end loop;  -- I
    return tmp;
  end function init_index_table;

  constant index_table : int_array_type := init_index_table;

  signal long_req      : std_logic_vector(2*Size-1 downto 0);    
  signal mask          : std_logic_vector(2*Size-1 downto 0);

  signal grant_sel     : std_logic_vector(Size_Log2-1 downto 0);

  signal new_granted   : std_logic;
  signal reset_loop    : std_logic;
  signal mask_reset    : std_logic;

  signal valid_grant   : std_logic;

begin  -- architecture IMP

  long_req <= Requests & Requests;

  Request_Or : carry_or_vec
    generic map (
      C_TARGET => C_TARGET,
      Size     => Size)
    port map (
      Carry_In  => Enable,
      In_Vec    => Requests,            -- in  
      Carry_Out => new_granted);        -- out

  Valid_Sel <= new_granted;

  -----------------------------------------------------------------------------
  -- Generate Carry-Chain structure
  -----------------------------------------------------------------------------

  Chain: for I in Size_Log2-1 downto 0 generate
    signal carry : std_logic_vector(Size downto 0);  -- Assumes 2 bit/muxcy
  begin  -- generate Bits

    carry(Size) <= '0';

    Bits: for J in Size-1 downto 0 generate
      constant sel1 : std_logic := index_table(2*J+1)(I);
      constant sel0 : std_logic := index_table(2*J)(I);
      
      attribute keep_hierarchy : string;
      attribute keep_hierarchy of Select_bits : label is "yes";
    begin  -- generate Bits
      Select_bits : select_bit
        generic map (
            C_TARGET => C_TARGET,
            sel_value => sel1 & sel0)
        port map (
            Mask      => mask(2*J+1 downto 2*J),      -- in  
            Request   => long_req(2*J+1 downto 2*J),  -- in  
            Carry_In  => carry(J+1),                  -- in  
            Carry_Out => carry(J));                   -- out
    end generate Bits;

    grant_sel(I) <= carry(0);
  end generate Chain;

  Selected <= grant_sel;

  -----------------------------------------------------------------------------
  -- Handling Mask value
  -----------------------------------------------------------------------------

  -- if (Reset = '1') or ((new_granted and mask(1)) = '1') then
  Reset_loop_and : carry_and
    generic map (
        C_TARGET => C_TARGET)
    port map (
        Carry_IN  => new_granted,       -- in  
        A         => mask(1),           -- in  
        Carry_OUT => reset_loop);       -- out

  Mask_Reset_carry : carry_or
    generic map (
        C_TARGET => C_TARGET)
    port map (
        Carry_IN  => reset_loop,        -- in  
        A         => Reset,             -- in  
        Carry_OUT => mask_reset);       -- out

  Mask_Handler : process (Clk) is
  begin  -- process Mask_Handler
    if Clk'event and Clk = '1' then     -- rising clock edge
      if (mask_reset = '1') then        -- synchronous reset (active high)
        mask(2*Size-1 downto Size) <= (others => '1');
        mask(Size-1 downto 0)      <= (others => '0');
      else        
        if (new_granted = '1') then
          mask(2*Size-1 downto 1) <= mask(1) & mask(2*Size-1 downto 2);
        end if;
      end if;
    end if;
  end process Mask_Handler;

  -----------------------------------------------------------------------------
  -- Generate grant signal
  -----------------------------------------------------------------------------

  Grant_Signals: for K in Size-1 downto 1 generate
    signal tmp : std_logic;
    attribute keep : string;
    attribute keep of tmp : signal is "true";
  begin  -- generate Grant_Signals
    tmp <=  '1' when (K = to_integer(unsigned(grant_sel))) else '0';
    granted(K) <= tmp;
  end generate Grant_Signals;

  Granted(0) <= Requests(0) when to_integer(unsigned(grant_sel)) = 0 else '0';    

end architecture IMP;


-------------------------------------------------------------------------------
-- srl_fifo.vhd
-------------------------------------------------------------------------------
--
-- (c) Copyright 2003,2012,2014,2016-2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        srl_fifo.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              srl_fifo.vhd
--
-------------------------------------------------------------------------------
-- Author:          goran
--
-- History:
--   goran    2001-06-12    First Version
--   stefana  2012-03-16    Added support for 32 processors and external BSCAN
--   stefana  2013-11-01    Added support for depth 32
--   stefana  2016-06-01    Added wrappers for unisim primitives
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity SRL_FIFO is
  generic (
    C_TARGET    : TARGET_FAMILY_TYPE;
    C_DATA_BITS : natural := 8;
    C_DEPTH     : natural := 16;
    C_USE_SRL16 : string  := "yes"
    );
  port (
    Clk         : in  std_logic;
    Reset       : in  std_logic;
    FIFO_Write  : in  std_logic;
    Data_In     : in  std_logic_vector(0 to C_DATA_BITS-1);
    FIFO_Read   : in  std_logic;
    Data_Out    : out std_logic_vector(0 to C_DATA_BITS-1);
    FIFO_Full   : out std_logic;
    Data_Exists : out std_logic
    );

end entity SRL_FIFO;

architecture IMP of SRL_FIFO is

  component MB_MUXCY_XORCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      O  : out std_logic;
      LO : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MB_MUXCY_XORCY;

  component MB_XORCY is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
      O  : out std_logic;
      CI : in  std_logic;
      LI : in  std_logic
    );
  end component MB_XORCY;

  component MB_FDRE is
    generic (
      C_TARGET : TARGET_FAMILY_TYPE;
      INIT : bit := '0'
    );
    port(
      Q  : out std_logic;
      C  : in  std_logic;
      CE : in  std_logic;
      D  : in  std_logic;
      R  : in  std_logic
    );
  end component MB_FDRE;

  component MB_SRL16E is
    generic(
      C_TARGET    : TARGET_FAMILY_TYPE;
      C_STATIC    : boolean    := false;
      C_USE_SRL16 : string     := "yes";
      INIT        : bit_vector := X"0000");
    port(
      Q        : out std_logic;
      A0       : in  std_logic;
      A1       : in  std_logic;
      A2       : in  std_logic;
      A3       : in  std_logic;
      CE       : in  std_logic;
      CLK      : in  std_logic;
      D        : in  std_logic
    );
  end component MB_SRL16E;

  component MB_SRLC32E
    generic (
      C_TARGET        : TARGET_FAMILY_TYPE;
      C_USE_SRL16     : string     := "yes";
      INIT            : bit_vector := X"00000000";
      IS_CLK_INVERTED : bit := '0'
    );
    port (
       Q              : out STD_LOGIC;
       Q31            : out STD_LOGIC;
       A              : in  STD_LOGIC_VECTOR (4 downto 0) := "00000";
       CE             : in  STD_LOGIC;
       CLK            : in  STD_LOGIC;
       D              : in  STD_LOGIC
    );
  end component;

  constant C_ADDR_BITS : integer := 4 + boolean'pos(C_DEPTH = 32);

  signal Addr         : std_logic_vector(0 to C_ADDR_BITS - 1);
  signal buffer_Full  : std_logic;
  signal buffer_Empty : std_logic;

  signal next_Data_Exists : std_logic := '0';
  signal data_Exists_I    : std_logic := '0';

  signal valid_Write : std_logic;

  signal hsum_A  : std_logic_vector(0 to C_ADDR_BITS - 1);
  signal sum_A   : std_logic_vector(0 to C_ADDR_BITS - 1);
  signal addr_cy : std_logic_vector(0 to C_ADDR_BITS - 1);

begin  -- architecture IMP

  assert (C_DEPTH = 16) or (C_DEPTH = 32) report "SRL FIFO: C_DEPTH must be 16 or 32" severity FAILURE;

  buffer_Full <= '1' when (Addr = (0 to C_ADDR_BITS - 1 => '1')) else '0';
  FIFO_Full   <= buffer_Full;

  buffer_Empty <= '1' when (Addr = (0 to C_ADDR_BITS - 1 => '0')) else '0';

  next_Data_Exists <= (data_Exists_I and not buffer_Empty) or
                      (buffer_Empty and FIFO_Write) or
                      (data_Exists_I and not FIFO_Read);

  Data_Exists_DFF : process (Clk) is
  begin  -- process Data_Exists_DFF
    if Clk'event and Clk = '1' then  -- rising clock edge
      if Reset = '1' then
        data_Exists_I <= '0';
      else
        data_Exists_I <= next_Data_Exists;
      end if;
    end if;
  end process Data_Exists_DFF;

  Data_Exists <= data_Exists_I;
  
  valid_Write <= FIFO_Write and (FIFO_Read or not buffer_Full);

  addr_cy(0) <= valid_Write;

  Addr_Counters : for I in 0 to C_ADDR_BITS - 1 generate
  begin

    hsum_A(I) <= (FIFO_Read xor addr(I)) and (FIFO_Write or not buffer_Empty);

    -- Don't need the last muxcy, addr_cy(C_ADDR_BITS) is not used anywhere
    Used_MuxCY: if I < C_ADDR_BITS - 1 generate
    begin
      MUXCY_L_I : MB_MUXCY_XORCY
        generic map (
          C_TARGET => C_TARGET
        )
        port map (
          DI => addr(I),                  -- [in  std_logic]
          CI => addr_cy(I),               -- [in  std_logic]
          S  => hsum_A(I),                -- [in  std_logic]
          O  => sum_A(I),                 -- [out std_logic]
          LO => addr_cy(I+1));            -- [out std_logic]
    end generate Used_MuxCY;

    No_MuxCY: if I = C_ADDR_BITS - 1 generate
    begin
      XORCY_I : MB_XORCY
        generic map (
          C_TARGET => C_TARGET
        )
        port map (
          LI => hsum_A(I),                -- [in  std_logic]
          CI => addr_cy(I),               -- [in  std_logic]
          O  => sum_A(I));                -- [out std_logic]
    end generate No_MuxCY;

    FDRE_I : MB_FDRE
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        Q  => addr(I),                  -- [out std_logic]
        C  => Clk,                      -- [in  std_logic]
        CE => data_Exists_I,            -- [in  std_logic]
        D  => sum_A(I),                 -- [in  std_logic]
        R  => Reset);                   -- [in std_logic]

  end generate Addr_Counters;

  FIFO_RAM : for I in 0 to C_DATA_BITS - 1 generate
  begin
    D16 : if C_DEPTH = 16 generate
    begin
      SRL16E_I : MB_SRL16E
        generic map (
          C_TARGET    => C_TARGET,
          C_USE_SRL16 => C_USE_SRL16,
          INIT        => x"0000"
        )
        port map (
          CE  => valid_Write,             -- [in  std_logic]
          D   => Data_In(I),              -- [in  std_logic]
          Clk => Clk,                     -- [in  std_logic]
          A0  => Addr(0),                 -- [in  std_logic]
          A1  => Addr(1),                 -- [in  std_logic]
          A2  => Addr(2),                 -- [in  std_logic]
          A3  => Addr(3),                 -- [in  std_logic]
          Q   => Data_Out(I));            -- [out std_logic]
    end generate D16;

    D32 : if C_DEPTH = 32 generate
    begin
      SRLC32E_I : MB_SRLC32E
        generic map (
          C_TARGET    => C_TARGET,
          C_USE_SRL16 => C_USE_SRL16,
          INIT        => x"00000000")
        port map (
          CE   => valid_Write,            -- [in  std_logic]
          D    => Data_In(I),             -- [in  std_logic]
          CLK  => Clk,                    -- [in  std_logic]
          A(4) => Addr(4),                -- [in  std_logic]
          A(3) => Addr(3),                -- [in  std_logic]
          A(2) => Addr(2),                -- [in  std_logic]
          A(1) => Addr(1),                -- [in  std_logic]
          A(0) => Addr(0),                -- [in  std_logic]
          Q31  => open,                   -- [out std_logic]
          Q    => Data_Out(I));           -- [out std_logic]
    end generate D32;

  end generate FIFO_RAM;

end architecture IMP;


-------------------------------------------------------------------------------
-- bus_master.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2014,2016-2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        bus_master.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:   
--              bus_master.vhd
--                - srl_fifo
--                - srl_fifo
--
-------------------------------------------------------------------------------
-- Author:          stefana
--
-- History:
--   stefana 2013-11-01    First Version
--   stefana 2013-06-15    Added direct write port
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity bus_master is
  generic (
    C_TARGET                : TARGET_FAMILY_TYPE;
    C_M_AXI_DATA_WIDTH      : natural := 32;
    C_M_AXI_THREAD_ID_WIDTH : natural := 4;
    C_M_AXI_ADDR_WIDTH      : natural := 32;
    C_DATA_SIZE             : natural := 32;
    C_HAS_FIFO_PORTS        : boolean := true;
    C_HAS_DIRECT_PORT       : boolean := false;
    C_USE_SRL16             : string  := "yes"
  );
  port (
    -- Bus read and write transaction
    Rd_Start      : in  std_logic;
    Rd_Addr       : in  std_logic_vector(31 downto 0);
    Rd_Len        : in  std_logic_vector(4  downto 0);
    Rd_Size       : in  std_logic_vector(1  downto 0);
    Rd_Exclusive  : in  std_logic;
    Rd_Idle       : out std_logic;
    Rd_Response   : out std_logic_vector(1  downto 0);

    Wr_Start      : in  std_logic;
    Wr_Addr       : in  std_logic_vector(31 downto 0);
    Wr_Len        : in  std_logic_vector(4  downto 0);
    Wr_Size       : in  std_logic_vector(1  downto 0);
    Wr_Exclusive  : in  std_logic;
    Wr_Idle       : out std_logic;
    Wr_Response   : out std_logic_vector(1  downto 0);

    -- Bus read and write data
    Data_Rd       : in  std_logic;
    Data_Out      : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Data_Exists   : out std_logic;

    Data_Wr       : in  std_logic;
    Data_In       : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Data_Empty    : out std_logic;

    -- Direct write port
    Direct_Wr_Addr    : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Direct_Wr_Len     : in  std_logic_vector(4  downto 0);
    Direct_Wr_Data    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Direct_Wr_Start   : in  std_logic;
    Direct_Wr_Next    : out std_logic;
    Direct_Wr_Done    : out std_logic;
    Direct_Wr_Resp    : out std_logic_vector(1 downto 0);

    -- LMB bus
    LMB_Data_Addr     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe   : out std_logic;
    LMB_Read_Strobe   : out std_logic;
    LMB_Write_Strobe  : out std_logic;
    LMB_Ready         : in  std_logic;
    LMB_Wait          : in  std_logic;
    LMB_UE            : in  std_logic;
    LMB_Byte_Enable   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    -- AXI bus
    M_AXI_ACLK    : in  std_logic;
    M_AXI_ARESETn : in  std_logic;

    M_AXI_AWID    : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_AWADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN   : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE  : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST : out std_logic_vector(1 downto 0);
    M_AXI_AWLOCK  : out std_logic;
    M_AXI_AWCACHE : out std_logic_vector(3 downto 0);
    M_AXI_AWPROT  : out std_logic_vector(2 downto 0);
    M_AXI_AWQOS   : out std_logic_vector(3 downto 0);
    M_AXI_AWVALID : out std_logic;
    M_AXI_AWREADY : in  std_logic;

    M_AXI_WLAST   : out std_logic;
    M_AXI_WDATA   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB   : out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
    M_AXI_WVALID  : out std_logic;
    M_AXI_WREADY  : in  std_logic;

    M_AXI_BRESP   : in  std_logic_vector(1 downto 0);
    M_AXI_BID     : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_BVALID  : in  std_logic;
    M_AXI_BREADY  : out std_logic;

    M_AXI_ARADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARID    : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_ARLEN   : out std_logic_vector(7 downto 0);
    M_AXI_ARSIZE  : out std_logic_vector(2 downto 0);
    M_AXI_ARBURST : out std_logic_vector(1 downto 0);
    M_AXI_ARLOCK  : out std_logic;
    M_AXI_ARCACHE : out std_logic_vector(3 downto 0);
    M_AXI_ARPROT  : out std_logic_vector(2 downto 0);
    M_AXI_ARQOS   : out std_logic_vector(3 downto 0);
    M_AXI_ARVALID : out std_logic;
    M_AXI_ARREADY : in  std_logic;

    M_AXI_RLAST   : in  std_logic;
    M_AXI_RID     : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_RDATA   : in  std_logic_vector(31 downto 0);
    M_AXI_RRESP   : in  std_logic_vector(1 downto 0);
    M_AXI_RVALID  : in  std_logic;
    M_AXI_RREADY  : out std_logic
  );
end entity bus_master;

library IEEE;
use ieee.numeric_std.all;

library mdm_v3_2_14;
use mdm_v3_2_14.all;

architecture IMP of bus_master is

  component SRL_FIFO is
    generic (
      C_TARGET    : TARGET_FAMILY_TYPE;
      C_DATA_BITS : natural;
      C_DEPTH     : natural;
      C_USE_SRL16 : string
    );
    port (
      Clk         : in  std_logic;
      Reset       : in  std_logic;
      FIFO_Write  : in  std_logic;
      Data_In     : in  std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Read   : in  std_logic;
      Data_Out    : out std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Full   : out std_logic;
      Data_Exists : out std_logic
    );
  end component SRL_FIFO;

  -- Calculate WSTRB given size and low address bits
  function Calc_WSTRB (Wr_Size : std_logic_vector(1 downto 0);
                       Wr_Addr : std_logic_vector(1 downto 0)) return std_logic_vector is
  begin
    if Wr_Size = "00" then  -- Byte
      case Wr_Addr is
        when "00" => return "0001";
        when "01" => return "0010";
        when "10" => return "0100";
        when "11" => return "1000";
        when others => null;
      end case;
    end if;
    if Wr_Size = "01" then  -- Halfword
      if Wr_Addr(1) = '0' then
        return "0011";
      else
        return "1100";
      end if;
    end if;
    return "1111";          -- Word
  end function Calc_WSTRB;

  type wr_state_type  is (idle, start, wait_on_ready, wait_on_bchan);

  signal wr_state          : wr_state_type;

  signal wdata             : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal wstrb             : std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);

  signal axi_wvalid        : std_logic;                      -- internal M_AXI_WVALID
  signal axi_wr_start      : std_logic;                      -- LMB did not respond, start AXI write
  signal axi_wr_idle       : std_logic;                      -- AXI write is idle
  signal axi_wr_resp       : std_logic_vector(1  downto 0);  -- AXI write response
  signal axi_do_read       : std_logic;                      -- read word from write FIFO for AXI

  signal axi_dwr_addr      : std_logic_vector(31 downto 0);
  signal axi_dwr_len       : std_logic_vector(4  downto 0);
  signal axi_dwr_size      : std_logic_vector(1  downto 0);
  signal axi_dwr_exclusive : std_logic;
  signal axi_dwr_start     : std_logic;
  signal axi_dwr_wdata     : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal axi_dwr_wstrb     : std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);

  signal axi_dwr_sel       : std_logic;
  signal axi_dwr_done      : std_logic;

begin  -- architecture IMP

  assert (C_DATA_SIZE = C_M_AXI_DATA_WIDTH)
    report "LMB and AXI data widths must be the same" severity FAILURE;

  Has_FIFO: if C_HAS_FIFO_PORTS generate
    type lmb_state_type is (idle, start_rd, wait_rd, start_wr, wait_wr, sample_rd, sample_wr, direct_wr);
    type rd_state_type  is (idle, start, wait_on_ready, wait_on_data);

    signal lmb_state     : lmb_state_type;
    signal rd_state      : rd_state_type;

    signal reset         : std_logic;

    signal rdata         : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);

    signal do_read       : std_logic;
    signal do_write      : std_logic;

    signal lmb_addr      : std_logic_vector(4 downto 0);  -- LMB word address
    signal lmb_addr_next : std_logic_vector(4 downto 0);  -- LMB word address incremented
    signal lmb_len       : std_logic_vector(4 downto 0);  -- LMB length
    signal lmb_len_next  : std_logic_vector(4 downto 0);  -- LMB length decremented
    signal lmb_rd_idle   : std_logic;                     -- LMB read is idle
    signal lmb_wr_idle   : std_logic;                     -- LMB write is idle
    signal lmb_rd_resp   : std_logic_vector(1 downto 0);  -- LMB read response
    signal lmb_wr_resp   : std_logic_vector(1 downto 0);  -- LMB write response

    signal axi_rready    : std_logic;                     -- internal M_AXI_RREADY
    signal axi_rd_start  : std_logic;                     -- LMB did not respond, start AXI read
    signal axi_rd_idle   : std_logic;                     -- AXI read is idle
    signal axi_rd_resp   : std_logic_vector(1 downto 0);  -- AXI read response
    signal axi_do_write  : std_logic;                     -- write word to read FIFO for AXI
    signal wdata_exists  : std_logic;                     -- write FIFO has data
  begin

    reset <= not M_AXI_ARESETn;

    -- Read FIFO instantiation
    Read_FIFO : SRL_FIFO
      generic map (
        C_TARGET    => C_TARGET,
        C_DATA_BITS => 32,
        C_DEPTH     => 32,
        C_USE_SRL16 => C_USE_SRL16
      )
      port map (
        Clk         => M_AXI_ACLK,
        Reset       => reset,
        FIFO_Write  => do_write,
        Data_In     => rdata,
        FIFO_Read   => Data_Rd,
        Data_Out    => Data_Out,
        FIFO_Full   => open,
        Data_Exists => Data_Exists
      );

    -- Write FIFO instantiation
    Write_FIFO : SRL_FIFO
      generic map (
        C_TARGET    => C_TARGET,
        C_DATA_BITS => 32,
        C_DEPTH     => 32,
        C_USE_SRL16 => C_USE_SRL16
      )
      port map (
        Clk         => M_AXI_ACLK,
        Reset       => reset,
        FIFO_Write  => Data_Wr,
        Data_In     => Data_In,
        FIFO_Read   => do_read,
        Data_Out    => wdata,
        FIFO_Full   => open,
        Data_Exists => wdata_exists
      );

    -- Common signals
    Data_Empty   <= not wdata_exists;
    Rd_Idle      <= lmb_rd_idle and axi_rd_idle;
    Rd_Response  <= lmb_rd_resp or  axi_rd_resp;
    Wr_Idle      <= lmb_wr_idle and axi_wr_idle;
    Wr_Response  <= lmb_wr_resp or  axi_wr_resp;

    wstrb    <= Calc_WSTRB(Wr_Size, Wr_Addr(1 downto 0));
    rdata    <= LMB_Data_Read when (LMB_Ready = '1' and lmb_rd_idle = '0') else M_AXI_RDATA;
    do_write <= (LMB_Ready and not lmb_rd_idle) or axi_do_write;
    do_read  <= (LMB_Ready and not lmb_wr_idle) or axi_do_read;


    -- LMB implementation
    LMB_Data_Addr   <= Wr_Addr(C_M_AXI_ADDR_WIDTH-1 downto 7) & lmb_addr & Wr_Addr(1 downto 0);
    LMB_Data_Write  <= wdata;
    LMB_Byte_Enable <= wstrb;

    lmb_addr_next <= std_logic_vector(unsigned(lmb_addr) + 1);
    lmb_len_next  <= std_logic_vector(unsigned(lmb_len)  - 1);

    LMB_Executing : process (M_AXI_ACLK) is
      variable ue : std_logic;
    begin  -- process LMB_Executing
      if (M_AXI_ACLK'event and M_AXI_ACLK = '1') then
        if (M_AXI_ARESETn = '0') then
          lmb_state        <= idle;
          axi_dwr_sel      <= '0';
          axi_rd_start     <= '0';
          axi_wr_start     <= '0';
          lmb_addr         <= (others => '0');
          lmb_rd_idle      <= '1';
          lmb_wr_idle      <= '1';
          lmb_len          <= (others => '0');
          lmb_rd_resp      <= "00";
          lmb_wr_resp      <= "00";
          ue               := '0';
          LMB_Addr_Strobe  <= '0';
          LMB_Read_Strobe  <= '0';
          LMB_Write_Strobe <= '0';
        else
          axi_rd_start <= '0';
          axi_wr_start <= '0';
          case lmb_state is
            when idle =>
              lmb_addr    <= Wr_Addr(6 downto 2);
              lmb_len     <= Wr_Len;
              lmb_rd_idle <= '1';
              lmb_wr_idle <= '1';
              ue          := '0';
              if (Direct_Wr_Start = '1' and C_HAS_DIRECT_PORT) then
                lmb_state   <= direct_wr;
                axi_dwr_sel <= '1';
              end if;
              if (Rd_Start = '1') then
                lmb_state       <= start_rd;
                axi_dwr_sel     <= '0';
                lmb_rd_idle     <= '0';
                lmb_rd_resp     <= "00";
                LMB_Addr_Strobe <= '1';
                LMB_Read_Strobe <= '1';
              end if;
              if (Wr_Start = '1') then
                lmb_state        <= start_wr;
                axi_dwr_sel      <= '0';
                lmb_wr_idle      <= '0';
                lmb_wr_resp      <= "00";
                LMB_Addr_Strobe  <= '1';
                LMB_Write_Strobe <= '1';
              end if;

            when start_rd =>
              lmb_state       <= wait_rd;
              LMB_Addr_Strobe <= '0';
              LMB_Read_Strobe <= '0';

            when wait_rd =>
              lmb_state <= sample_rd;

            when sample_rd =>
              if (LMB_Ready = '1') then
                if (lmb_len = (lmb_len'range => '0')) then
                  lmb_state <= idle;
                else
                  lmb_state       <= start_rd;
                  LMB_Addr_Strobe <= '1';
                  LMB_Read_Strobe <= '1';
                end if;
                lmb_addr    <= lmb_addr_next;
                lmb_len     <= lmb_len_next;
                ue          := LMB_UE or ue;
                lmb_rd_resp <= ue & '0';
              elsif (LMB_Wait = '0') then
                lmb_state    <= idle;
                axi_rd_start <= '1';
              end if;

            when start_wr =>
              lmb_state        <= wait_wr;
              LMB_Addr_Strobe  <= '0';
              LMB_Write_Strobe <= '0';

            when wait_wr =>
              lmb_state <= sample_wr;

            when sample_wr =>
              if (LMB_Ready = '1') then
                if (lmb_len = (lmb_len'range => '0')) then
                  lmb_state <= idle;
                else
                  lmb_state        <= start_wr;
                  LMB_Addr_Strobe  <= '1';
                  LMB_Write_Strobe <= '1';
                end if;
                lmb_addr    <= lmb_addr_next;
                lmb_len     <= lmb_len_next;
                ue          := LMB_UE or ue;
                lmb_wr_resp <= ue & '0';
              elsif (LMB_Wait = '0') then
                lmb_state    <= idle;
                axi_wr_start <= '1';
              end if;

            when direct_wr =>  -- Handle AXI direct write
              if axi_dwr_done = '1' and Direct_Wr_Start = '0' then
                lmb_state   <= idle;
                axi_dwr_sel <= '0';
              end if;

            -- coverage off
            when others =>
              null;
            -- coverage on
          end case;
        end if;
      end if;
    end process LMB_Executing;

    -- AXI Read FSM
    Rd_Executing : process (M_AXI_ACLK) is
      variable rd_resp : std_logic_vector(1 downto 0);
    begin  -- process Rd_Executing
      if (M_AXI_ACLK'event and M_AXI_ACLK = '1') then  -- rising clock edge
        if (M_AXI_ARESETn = '0') then                  -- synchronous reset (active low)
          rd_resp       := "00";
          axi_rready    <= '0';
          axi_rd_idle   <= '1';
          axi_rd_resp   <= "00";
          M_AXI_ARADDR  <= (others => '0');
          M_AXI_ARLEN   <= (others => '0');
          M_AXI_ARSIZE  <= "010";               -- 32-bit accesses
          M_AXI_ARLOCK  <= '0';                 -- No locking
          M_AXI_ARVALID <= '0';
          rd_state      <= idle;
        else
          case rd_state is
            when idle =>
              rd_resp      := "00";
              axi_rd_idle  <= '1';
              if axi_rd_start = '1' then
                rd_state    <= start;
                axi_rd_idle <= '0';
                axi_rd_resp <= "00";
              end if;

            when start =>
              M_AXI_ARVALID <= '1';
              M_AXI_ARADDR  <= Rd_Addr;
              M_AXI_ARLEN   <= "000" & Rd_Len;
              M_AXI_ARSIZE  <= "0"  & Rd_Size;
              M_AXI_ARLOCK  <= Rd_Exclusive;
              rd_state      <= wait_on_ready;

            when wait_on_ready =>
              if (M_AXI_ARREADY = '1') then
                M_AXI_ARVALID <= '0';
                axi_rready    <= '1';
                rd_state      <= wait_on_data;
              end if;

            when wait_on_data =>
              if (M_AXI_RVALID = '1') then
                if rd_resp = "00" and M_AXI_RRESP /= "00" then
                  rd_resp := M_AXI_RRESP;  -- Sticky error response
                end if;
                if (M_AXI_RLAST = '1') then
                  rd_state    <= idle;
                  axi_rd_resp <= rd_resp;
                  axi_rready  <= '0';
                end if;
              end if;

            -- coverage off
            when others =>
              null;
            -- coverage on
          end case;
        end if;
      end if;
    end process Rd_Executing;

    axi_do_write <= axi_rready and M_AXI_RVALID;

  end generate Has_FIFO;

  No_FIFO: if not C_HAS_FIFO_PORTS generate
    type state_type is (idle, direct_wr);

    signal state : state_type;
  begin
    Rd_Idle          <= '1';
    Rd_Response      <= "00";
    Data_Out         <= (others => '0');
    Data_Exists      <= '0';

    Data_Empty       <= '0';
    Wr_Idle          <= '0';
    Wr_Response      <= "00";

    LMB_Data_Addr    <= (others => '0');
    LMB_Data_Write   <= (others => '0');
    LMB_Addr_Strobe  <= '0';
    LMB_Read_Strobe  <= '0';
    LMB_Write_Strobe <= '0';
    LMB_Byte_Enable  <= (others => '0');
    
    M_AXI_ARADDR     <= (others => '0');
    M_AXI_ARLEN      <= (others => '0');
    M_AXI_ARSIZE     <= (others => '0');
    M_AXI_ARLOCK     <= '0';
    M_AXI_ARVALID    <= '0';

    wdata            <= (others => '0');
    wstrb            <= (others => '0');
    axi_wr_start     <= '0';

    AXI_Direct_Write: process (M_AXI_ACLK) is
    begin  -- process AXI_Direct_Write
      if (M_AXI_ACLK'event and M_AXI_ACLK = '1') then  -- rising clock edge
        if (M_AXI_ARESETn = '0') then                  -- synchronous reset (active low)
          state       <= idle;
          axi_dwr_sel <= '0';
        else
          case state is
            when idle =>
              if Direct_Wr_Start = '1' then
                state       <= direct_wr;
                axi_dwr_sel <= '1';
              end if;
            when direct_wr =>
              if axi_dwr_done = '1' and Direct_Wr_Start = '0' then
                state       <= idle;
                axi_dwr_sel <= '0';
              end if;
            -- coverage off
            when others =>
              null;
            -- coverage on
          end case;
        end if;
      end if;
    end process AXI_Direct_Write;

  end generate No_FIFO;

  Has_Direct_Write: if C_HAS_DIRECT_PORT generate
  begin
    Direct_Wr_Next    <= axi_do_read     when axi_dwr_sel = '1' else '0';
    Direct_Wr_Done    <= axi_dwr_done    when axi_dwr_sel = '1' else '0';
    Direct_Wr_Resp    <= axi_wr_resp;
 
    axi_dwr_addr      <= Direct_Wr_Addr  when axi_dwr_sel = '1' else Wr_Addr;
    axi_dwr_len       <= Direct_Wr_Len   when axi_dwr_sel = '1' else Wr_Len;
    axi_dwr_size      <= "10"            when axi_dwr_sel = '1' else Wr_Size;
    axi_dwr_exclusive <= '0'             when axi_dwr_sel = '1' else Wr_Exclusive;
    axi_dwr_start     <= Direct_Wr_Start when axi_dwr_sel = '1' else axi_wr_start;
    axi_dwr_wdata     <= Direct_Wr_Data  when axi_dwr_sel = '1' else wdata;
    axi_dwr_wstrb     <= "1111"          when axi_dwr_sel = '1' else wstrb;
  end generate Has_Direct_Write;

  No_Direct_Write: if not C_HAS_DIRECT_PORT generate
  begin
    Direct_Wr_Next    <= '0';
    Direct_Wr_Done    <= '0';
    Direct_Wr_Resp    <= "00";

    axi_dwr_addr      <= Wr_Addr;
    axi_dwr_len       <= Wr_Len;
    axi_dwr_size      <= Wr_Size;
    axi_dwr_exclusive <= Wr_Exclusive;
    axi_dwr_start     <= axi_wr_start;
    axi_dwr_wdata     <= wdata;
    axi_dwr_wstrb     <= wstrb;
  end generate No_Direct_Write;

  -- AW signals constant values
  M_AXI_AWPROT  <= "010";               -- Non-secure data accesses only
  M_AXI_AWQOS   <= "0000";              -- Don't participate in QoS handling
  M_AXI_AWID    <= (others => '0');     -- ID fixed to zero
  M_AXI_AWBURST <= "01";                -- Only INCR bursts
  M_AXI_AWCACHE <= "0011";              -- Set "Modifiable" and "Bufferable" bit

  -- AR signals constant values
  M_AXI_ARPROT  <= "010";               -- Normal and non-secure Data access only
  M_AXI_ARQOS   <= "0000";              -- Don't participate in QoS handling
  M_AXI_ARID    <= (others => '0');     -- ID fixed to zero
  M_AXI_ARBURST <= "01";                -- Only INCR bursts
  M_AXI_ARCACHE <= "0011";              -- Set "Modifiable" and "Bufferable" bit

  -- R signals constant values
  M_AXI_RREADY <= '1';                  -- Always accepting read data

  -- B signals value
  M_AXI_BREADY <= '1' when wr_state = wait_on_bchan else '0';

  -- AXI Write FSM
  Wr_Executing : process (M_AXI_ACLK) is
    variable address_done : boolean;
    variable data_done    : boolean;
    variable len          : std_logic_vector(4 downto 0);
  begin  -- process Wr_Executing
    if (M_AXI_ACLK'event and M_AXI_ACLK = '1') then   -- rising clock edge
      if (M_AXI_ARESETn = '0') then             -- synchronous reset (active low)
        axi_wr_idle   <= '1';
        axi_wr_resp   <= "00";
        axi_wvalid    <= '0';
        M_AXI_WVALID  <= '0';
        M_AXI_WLAST   <= '0';
        M_AXI_WSTRB   <= (others => '0');
        M_AXI_AWADDR  <= (others => '0');
        M_AXI_AWLEN   <= (others => '0');
        M_AXI_AWSIZE  <= "010";               -- 32-bit accesses
        M_AXI_AWLOCK  <= '0';                 -- No locking
        M_AXI_AWVALID <= '0';
        axi_dwr_done  <= '0';
        address_done  := false;
        data_done     := false;
        len           := (others => '0');
        wr_state      <= idle;
      else
        case wr_state is
          when idle =>
            axi_wr_idle  <= '1';
            axi_dwr_done <= '0';
            address_done := false;
            data_done    := false;
            len          := (others => '0');
            if axi_dwr_start = '1' then
              wr_state    <= start;
              axi_wr_idle <= '0';
              axi_wr_resp <= "00";
            end if;

          when start =>
            M_AXI_WLAST   <= '0';
            M_AXI_AWVALID <= '1';
            M_AXI_AWADDR  <= axi_dwr_addr;
            M_AXI_AWLEN   <= "000" & axi_dwr_len;
            M_AXI_AWSIZE  <= "0" & axi_dwr_size;
            M_AXI_AWLOCK  <= axi_dwr_exclusive;

            axi_wvalid    <= '1';
            M_AXI_WVALID  <= '1';
            if axi_dwr_len = "00000" then
              M_AXI_WLAST <= '1';
            end if;
            M_AXI_WSTRB   <= axi_dwr_wstrb;

            len           := axi_dwr_len;
            wr_state      <= wait_on_ready;

          when wait_on_ready =>
            if M_AXI_AWREADY = '1' then
              M_AXI_AWVALID <= '0';
              address_done := true;              
            end if;
            if M_AXI_WREADY = '1' then
              if len = "00000" then
                axi_wvalid   <= '0';
                M_AXI_WVALID <= '0';
                data_done    := true;
              else
                if len = "00001" then
                  M_AXI_WLAST <= '1';
                end if;
                len := std_logic_vector(unsigned(len) - 1);
              end if;
            end if;
            if (address_done and data_done) then
              wr_state <= wait_on_bchan;
            end if;

          when wait_on_bchan =>
            if (M_AXI_BVALID = '1') then
              wr_state     <= idle;
              axi_dwr_done <= '1';
              axi_wr_resp  <= M_AXI_BRESP;
            end if;

          -- coverage off
          when others =>
            null;
          -- coverage on
        end case;
      end if;
    end if;
  end process Wr_Executing;

  axi_do_read <= axi_wvalid and M_AXI_WREADY;

  M_AXI_WDATA <= axi_dwr_wdata;

end architecture IMP;


-------------------------------------------------------------------------------
-- jtag_control.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2003,2012,2014,2016-2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        jtag_control.vhd
--
-- Description:     
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              jtag_control.vhd
--
-------------------------------------------------------------------------------
-- Author:          goran
--
-- History:
--   goran   2003-02-13    First Version
--   stefana 2012-03-16    Added support for 32 processors and external BSCAN
--   stefana 2013-11-01    Added extended debug: debug register access, debug
--                         memory access, cross trigger support
--   stefana 2013-06-15    Added support for external trace
--   stefana 2016-04-25    Added parallel synchronous debug interface
--   stefana 2016-06-01    Added wrappers for unisim primitives
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-----------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity JTAG_CONTROL is
  generic (
    C_TARGET               : TARGET_FAMILY_TYPE;
    C_USE_BSCAN            : integer;
    C_MB_DBG_PORTS         : integer;
    C_USE_CONFIG_RESET     : integer;
    C_USE_SRL16            : string;
    C_DEBUG_INTERFACE      : integer;
    C_DBG_REG_ACCESS       : integer;
    C_DBG_MEM_ACCESS       : integer;
    C_M_AXI_ADDR_WIDTH     : integer;
    C_M_AXI_DATA_WIDTH     : integer;
    C_USE_CROSS_TRIGGER    : integer;
    C_EXT_TRIG_RESET_VALUE : std_logic_vector(0 to 19);
    C_USE_UART             : integer;
    C_UART_WIDTH           : integer := 8;
    C_TRACE_OUTPUT         : integer;
    C_TRACE_PROTOCOL       : integer;
    C_EN_WIDTH             : integer := 1
  );
  port (
    -- Global signals
    Config_Reset     : in std_logic;
    Scan_Reset_Sel   : in std_logic;
    Scan_Reset       : in std_logic;
    Scan_En          : in std_logic;
    
    Clk              : in std_logic;
    Rst              : in std_logic;

    Clear_Ext_BRK    : in  std_logic;
    Ext_BRK          : out std_logic;
    Ext_NM_BRK       : out std_logic := '0';
    Debug_SYS_Rst    : out std_logic := '0';
    Debug_Rst        : out std_logic := '0';

    Read_RX_FIFO     : in  std_logic;
    Reset_RX_FIFO    : in  std_logic;
    RX_Data          : out std_logic_vector(0 to C_UART_WIDTH-1);
    RX_Data_Present  : out std_logic;
    RX_BUFFER_FULL   : out std_logic; 

    Write_TX_FIFO    : in  std_logic;
    Reset_TX_FIFO    : in  std_logic;
    TX_Data          : in  std_logic_vector(0 to C_UART_WIDTH-1);
    TX_Buffer_Full   : out std_logic;
    TX_Buffer_Empty  : out std_logic;

    -- Debug Register Access signals
    DbgReg_DRCK        : in  std_logic;
    DbgReg_UPDATE      : in  std_logic;
    DbgReg_Access_Lock : in  std_logic;
    DbgReg_Force_Lock  : in  std_logic;
    DbgReg_Unlocked    : in  std_logic;
    JTAG_Access_Lock   : out std_logic;
    JTAG_Force_Lock    : out std_logic;
    JTAG_AXI_Overrun   : in  std_logic;
    JTAG_Clear_Overrun : out std_logic;

    AXI_Transaction    : in  std_logic;
    AXI_Instr_Overrun  : in  std_logic;
    AXI_Data_Overrun   : in  std_logic;
    AXI_Completion_On  : out std_logic;
    AXI_Block          : out std_logic;

    -- MDM signals
    TDI                : in  std_logic;
    RESET              : in  std_logic;
    UPDATE             : in  std_logic;
    SHIFT              : in  std_logic;
    CAPTURE            : in  std_logic;
    SEL                : in  std_logic;
    DRCK               : in  std_logic;
    TDO                : out std_logic;

    -- Bus Master signals
    M_AXI_ACLK         : in  std_logic;
    M_AXI_ARESETn      : in  std_logic;

    Master_rd_start    : out std_logic;
    Master_rd_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_rd_len      : out std_logic_vector(4 downto 0);
    Master_rd_size     : out std_logic_vector(1 downto 0);
    Master_rd_excl     : out std_logic;
    Master_rd_idle     : in  std_logic;
    Master_rd_resp     : in  std_logic_vector(1 downto 0);
    Master_wr_start    : out std_logic;
    Master_wr_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_wr_len      : out std_logic_vector(4 downto 0);
    Master_wr_size     : out std_logic_vector(1 downto 0);
    Master_wr_excl     : out std_logic;
    Master_wr_idle     : in  std_logic;
    Master_wr_resp     : in  std_logic_vector(1 downto 0);
    Master_data_rd     : out std_logic;
    Master_data_out    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_data_exists : in  std_logic;
    Master_data_wr     : out std_logic;
    Master_data_in     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_data_empty  : in  std_logic;

    Master_dwr_addr    : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_dwr_len     : out std_logic_vector(4 downto 0);
    Master_dwr_done    : in  std_logic;
    Master_dwr_resp    : in  std_logic_vector(1 downto 0);

    -- MicroBlaze Debug Signals
    MB_Debug_Enabled   : out std_logic_vector(C_EN_WIDTH-1 downto 0);
    Dbg_Clk            : out std_logic;
    Dbg_TDI            : out std_logic;
    Dbg_TDO            : in  std_logic;
    Dbg_Reg_En         : out std_logic_vector(0 to 7);
    Dbg_Capture        : out std_logic;
    Dbg_Shift          : out std_logic;
    Dbg_Update         : out std_logic;

    Dbg_data_cmd       : out std_logic;
    Dbg_command        : out std_logic_vector(0 to 7);

    -- MicroBlaze Cross Trigger Signals
    Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_10     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_11     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_12     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_13     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_14     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_15     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_16     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_17     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_18     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_19     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_20     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_21     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_22     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_23     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_24     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_25     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_26     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_27     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_28     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_29     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_30     : in  std_logic_vector(0 to 7);
    Dbg_Trig_In_31     : in  std_logic_vector(0 to 7);

    Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_10 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_11 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_12 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_13 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_14 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_15 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_16 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_17 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_18 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_19 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_20 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_21 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_22 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_23 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_24 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_25 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_26 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_27 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_28 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_29 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_30 : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_31 : out std_logic_vector(0 to 7);

    Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_10    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_11    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_12    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_13    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_14    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_15    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_16    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_17    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_18    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_19    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_20    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_21    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_22    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_23    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_24    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_25    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_26    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_27    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_28    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_29    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_30    : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_31    : out std_logic_vector(0 to 7);

    Dbg_Trig_Ack_Out_0  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_1  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_2  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_3  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_4  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_5  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_6  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_7  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_8  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_9  : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);

    Ext_Trig_In         : in  std_logic_vector(0 to 3);
    Ext_Trig_Ack_In     : out std_logic_vector(0 to 3);
    Ext_Trig_Out        : out std_logic_vector(0 to 3);
    Ext_Trig_Ack_Out    : in  std_logic_vector(0 to 3);

    -- Trace signals
    Trace_Clk           : in  std_logic;
    Trace_Reset         : in  std_logic;
    Trace_Test_Pattern  : out std_logic_vector(0 to 3);
    Trace_Test_Start    : out std_logic;
    Trace_Test_Stop     : out std_logic;
    Trace_Test_Timed    : out std_logic;
    Trace_Delay         : out std_logic_vector(0 to 7);
    Trace_Stopped       : out std_logic
  );

end entity JTAG_CONTROL;

library mdm_v3_2_14;
use mdm_v3_2_14.SRL_FIFO;

architecture IMP of JTAG_CONTROL is

  component SRL_FIFO
    generic (
      C_TARGET    :     TARGET_FAMILY_TYPE;
      C_DATA_BITS :     natural;
      C_DEPTH     :     natural;
      C_USE_SRL16 :     string
    );
    port (
      Clk           : in  std_logic;
      Reset         : in  std_logic;
      FIFO_Write    : in  std_logic;
      Data_In       : in  std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Read     : in  std_logic;
      Data_Out      : out std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Full     : out std_logic;
      Data_Exists   : out std_logic
    );
  end component SRL_FIFO;

  component MB_FDC_1
    generic (
      C_TARGET : TARGET_FAMILY_TYPE;
      INIT     : bit := '0'
    );
    port (
       Q       : out std_logic;
       C       : in  std_logic;
       CLR     : in  std_logic;
       D       : in  std_logic
    );
  end component;

  component MB_FDRE_1
    generic (
      C_TARGET : TARGET_FAMILY_TYPE;
      INIT     : bit := '0'
    );
    port (
       Q       : out std_logic;
       C       : in  std_logic;
       CE      : in  std_logic;
       D       : in  std_logic;
       R       : in  std_logic
    );
  end component;

  component MB_SRL16E is
    generic(
      C_TARGET    : TARGET_FAMILY_TYPE;
      C_STATIC    : boolean    := false;
      C_USE_SRL16 : string     := "yes";
      INIT        : bit_vector := X"0000");
    port(
      Q        : out std_logic;
      A0       : in  std_logic;
      A1       : in  std_logic;
      A2       : in  std_logic;
      A3       : in  std_logic;
      CE       : in  std_logic;
      CLK      : in  std_logic;
      D        : in  std_logic
    );
  end component MB_SRL16E;

  component MB_FDRSE
    generic (
      C_TARGET       : TARGET_FAMILY_TYPE;
      INIT           : bit := '0';
      IS_CE_INVERTED : bit := '0';
      IS_C_INVERTED  : bit := '0';
      IS_D_INVERTED  : bit := '0';
      IS_R_INVERTED  : bit := '0';
      IS_S_INVERTED  : bit := '0'
    );
    port (
      Q              : out std_logic;
      C              : in  std_logic;
      CE             : in  std_logic;
      D              : in  std_logic;
      R              : in  std_logic;
      S              : in  std_logic
    );
  end component;

  --
  -- Old Config Word in previous versions
  --
  -- Magic String + Has FSL +   0   + Has UART + UART Width + Num MB + Num hw ports + Debug Version 
  --    8 bits    +  1 bit  + 1 bit +  1 bit   +   5 bits   + 8 bits +    4 bits    +     4 bits  
  --
  -- New Config Word in mdm v2
  --
  -- Magic String +   00   + Has UART + UART Width + Num MB + UART version + Debug Version 
  --    8 bits    + 2 bits +  1 bit   +   5 bits   + 8 bits +    4 bits    +     4 bits  
  --
  -- New Config Word in mdm v2 with extended debug
  --
  -- Extended Config + Magic String +   1   + Extended  + Has UART + UART Width + Num MB + UART version + Debug Version 
  --    5 bits       +    8 bits    + 1 bit +   1 bit   +  1 bit   +   5 bits   + 8 bits +    4 bits    +     4 bits  
  --
  -- Debug Version Table
  --  0,1,2: Obsolete
  --    3,4: Watchpoint support
  --      5: Remove sync
  --      6: Change command and Reg_En signals to 8 bits
  --      7: Change MB_Debug_Enabled to 32 bits
  --
  -- UART Version Table
  --  0: Get version from Debug Version Table
  --  6: Non-buffered mode support
  --
  function TDI_Shifter_Size return integer is
  begin
    if C_USE_CROSS_TRIGGER = 1 or C_TRACE_OUTPUT = 3 then
      if C_MB_DBG_PORTS < 16 then
        return 16;
      else
        return C_MB_DBG_PORTS;
      end if;
    elsif C_TRACE_OUTPUT = 1 then
      if C_MB_DBG_PORTS < 14 then
        return 14;
      else
        return C_MB_DBG_PORTS;
      end if;
    elsif C_MB_DBG_PORTS > 8 then
      return C_MB_DBG_PORTS;
    end if;
    return 8;
  end function TDI_Shifter_Size;

  function Which_MB_Reg_Size return integer is
  begin
    if C_MB_DBG_PORTS > 8 then
      return C_MB_DBG_PORTS;
    end if;
    return 8;
  end function Which_MB_Reg_Size;

  constant No_MicroBlazes : std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(natural(C_MB_DBG_PORTS), 8));
  constant UART_VERSION   : std_logic_vector(3 downto 0) := "0110";
  constant DEBUG_VERSION  : std_logic_vector(3 downto 0) := "0111";

  constant Config_Init_Word_S : std_logic_vector(15 downto 0) :=
    (No_MicroBlazes & UART_VERSION & DEBUG_VERSION);
  constant Config_Init_Word   : bit_vector(15 downto 0)       :=
    to_bitvector(Config_Init_Word_S);

  constant C_EXT_CONFIG    : natural range 0 to 1 :=
    Boolean'Pos(C_DBG_MEM_ACCESS > 0 or C_DBG_REG_ACCESS > 0 or C_USE_CROSS_TRIGGER > 0 or C_TRACE_OUTPUT > 0);
  constant HAVE_EXTENDED : std_logic_vector(0 to 0) :=
    std_logic_vector(to_unsigned(natural(C_EXT_CONFIG), 1));
  constant HAVE_UART    : std_logic_vector(0 to 0) :=
    std_logic_vector(to_unsigned(natural(C_USE_UART), 1));
  constant UART_WIDTH   : std_logic_vector(0 to 4) :=
    std_logic_vector(to_unsigned(natural(C_UART_WIDTH-1), 5));
  constant MAGIC_STRING : std_logic_vector(0 to 7) := "01000010";

  constant Config_Init_Word2_S : std_logic_vector(15 downto 0) :=
    (MAGIC_STRING & '1' & HAVE_EXTENDED & HAVE_UART & UART_WIDTH);
  constant Config_Init_Word2   : bit_vector(15 downto 0)       :=
    to_bitvector(Config_Init_Word2_S);

  constant Config_Init_Word3_S : std_logic_vector(15 downto 0) :=
    std_logic_vector(to_unsigned(0,                           10) &
                     to_unsigned(natural(C_TRACE_PROTOCOL),    1) &
                     to_unsigned(natural(C_TRACE_OUTPUT),      2) &
                     to_unsigned(natural(C_USE_CROSS_TRIGGER), 1) &
                     to_unsigned(natural(C_DBG_REG_ACCESS),    1) &
                     to_unsigned(natural(C_DBG_MEM_ACCESS),    1));
  constant Config_Init_Word3   : bit_vector(15 downto 0)       :=
    to_bitvector(Config_Init_Word3_S);

  signal config_TDO_1 : std_logic;
  signal config_TDO_2 : std_logic;
  signal config_TDO_3 : std_logic;
  signal config_TDO   : std_logic;
  signal ID_TDO       : std_logic;
  signal ID_TDO_1     : std_logic;
  signal ID_TDO_2     : std_logic;
  signal uart_TDO     : std_logic;
  signal compl_TDO    : std_logic;
  signal master_TDO   : std_logic;
  signal axis_TDO     : std_logic;
  signal ct_TDO       : std_logic;
  signal trace_TDO    : std_logic;

  -----------------------------------------------------------------------------
  -- JTAG signals
  -----------------------------------------------------------------------------
  signal drck0_ena        : std_logic;
  signal drck1_ena        : std_logic;
  signal update0_ena      : std_logic;
  signal update1_ena      : std_logic;

  signal data_cmd         : std_logic;
  signal data_cmd_n       : std_logic;
  signal data_cmd_noblock : std_logic := '0';

  signal sel_n       : std_logic := '1';
  signal command     : std_logic_vector(0 to 7) := (others => '0');
  signal command_1   : std_logic_vector(0 to 7) := (others => '0');
  signal tdi_shifter : std_logic_vector(0 to TDI_Shifter_Size - 1) := (others => '0');

  signal shifting_Data : std_logic;

  signal   sync_detected : std_logic;
  signal   sync          : std_logic := '0';
  constant SYNC_CONST    : std_logic_vector(1 to 8) := "01101001";

  signal shift_Count : std_logic_vector(4 + C_EXT_CONFIG downto 0) := (others => '0');

  signal mb_debug_enabled_i : std_logic_vector(C_EN_WIDTH-1 downto 0);

  constant C_NUM_DBG_CT : integer := 8;
  constant C_NUM_EXT_CT : integer := 4;
  type dbg_trig_type is array (0 to 31) of std_logic_vector(0 to C_NUM_DBG_CT - 1);
  signal dbg_trig_ack_in_i : dbg_trig_type;
  signal dbg_trig_out_i    : dbg_trig_type;
  signal ext_trig_ack_in_i : std_logic_vector(0 to C_NUM_EXT_CT - 1);
  signal ext_trig_out_i    : std_logic_vector(0 to C_NUM_EXT_CT - 1);

  signal completion_ctrl   : std_logic_vector(0  downto 0) := (others => '0');
  signal completion_status : std_logic_vector(15 downto 0) := (others => '0');
  signal completion_block  : std_logic := '0';
  signal clear_overrun     : std_logic := '0';
  signal master_overrun    : std_logic;
  signal master_error      : std_logic;

  -----------------------------------------------------------------------------
  -- Register handling
  -----------------------------------------------------------------------------
  constant MDM_DEBUG_ID          : std_logic_vector(0 to 7) := "00000000";
  constant MB_WRITE_CONTROL      : std_logic_vector(0 to 7) := "00000001";
  constant MB_WRITE_COMMAND      : std_logic_vector(0 to 7) := "00000010";
  constant MB_READ_STATUS        : std_logic_vector(0 to 7) := "00000011";
  constant MB_WRITE_INSTR        : std_logic_vector(0 to 7) := "00000100";
  --constant MB_WRITE_DATA         : std_logic_vector(0 to 7) := "00000101";
  constant MB_READ_DATA          : std_logic_vector(0 to 7) := "00000110";
  constant MB_READ_CONFIG        : std_logic_vector(0 to 7) := "00000111";
  constant MB_WRITE_BRK_RST_CTRL : std_logic_vector(0 to 7) := "00001000";
  constant UART_WRITE_BYTE       : std_logic_vector(0 to 7) := "00001001";
  constant UART_READ_STATUS      : std_logic_vector(0 to 7) := "00001010";
  constant UART_READ_BYTE        : std_logic_vector(0 to 7) := "00001011";
  constant MDM_READ_CONFIG       : std_logic_vector(0 to 7) := "00001100";
  constant MDM_WRITE_WHICH_MB    : std_logic_vector(0 to 7) := "00001101";
  constant UART_WRITE_CONTROL    : std_logic_vector(0 to 7) := "00001110";
  --constant MDM_WRITE_TO_FSL      : std_logic_vector(0 to 7) := "00001111";

  -- registers "00010000" to "00011111" are pc breakpoints 1-16

  constant BUSM_WRITE_DATA       : std_logic_vector(0 to 7) := "00100001";
  constant BUSM_READ_STATUS      : std_logic_vector(0 to 7) := "00100010";
  constant BUSM_READ_DATA        : std_logic_vector(0 to 7) := "00100011";
  constant BUSM_WRITE_COMMAND    : std_logic_vector(0 to 7) := "00100101";
  constant BUSM_WRITE_CONTROL    : std_logic_vector(0 to 7) := "00100110";

  constant MDM_READ_COMPL_STATUS : std_logic_vector(0 to 7) := "00101010";
  constant MDM_WRITE_COMPL_CTRL  : std_logic_vector(0 to 7) := "00101101";

  constant AXIS_READ_STATUS      : std_logic_vector(0 to 7) := "00110010";
  constant AXIS_WRITE_COMMAND    : std_logic_vector(0 to 7) := "00110110";

  constant CT_WRITE_EXT_CTRL     : std_logic_vector(0 to 7) := "01000000";
  constant CT_READ_STATUS        : std_logic_vector(0 to 7) := "01000010";
  constant CT_WRITE_CTRL         : std_logic_vector(0 to 7) := "01000110";

  constant TRACE_READ_STATUS     : std_logic_vector(0 to 7) := "01001010";
  constant TRACE_READ_ADDR       : std_logic_vector(0 to 7) := "01001011";
  constant TRACE_WRITE_LOW_ADDR  : std_logic_vector(0 to 7) := "01001100";
  constant TRACE_WRITE_HIGH_ADDR : std_logic_vector(0 to 7) := "01001101";
  constant TRACE_WRITE_CONTROL   : std_logic_vector(0 to 7) := "01001110";

  -- registers "01010000" to "11111111" are reserved for MicroBlaze

  -----------------------------------------------------------------------------
  -- Internal signals for debugging
  -----------------------------------------------------------------------------
  signal set_Ext_BRK     : std_logic := '0';
  signal ext_BRK_i       : std_logic := '0';

  signal Ext_NM_BRK_i    : std_logic := '0';
  signal Debug_SYS_Rst_i : std_logic := '0';
  signal Debug_Rst_i     : std_logic := '0';

  constant ID_Init_Word1 : bit_vector(15 downto 0) := x"4443";  -- Ascii
  constant ID_Init_Word2 : bit_vector(15 downto 0) := x"584D";  -- "XMDC"

  signal config_with_scan_reset : std_logic;
  signal sel_reset              : std_logic;
  signal sel_with_scan_reset    : std_logic;

  attribute KEEP : string;

begin  -- architecture IMP

  config_with_scan_reset <= '0' when Scan_En = '1' else
                            Config_Reset when Scan_Reset_Sel = '0' else
                            Scan_Reset;

  sel_with_scan_reset    <= '0' when Scan_En = '1' else
                            sel_reset when Scan_Reset_Sel = '0' else
                            Scan_Reset;

  -----------------------------------------------------------------------------
  -- Control logic
  -----------------------------------------------------------------------------

  -- data_cmd | meaning
  -- ======================
  --     0    | Command phase
  --     1    | Data phase    

  data_cmd_n <= not data_cmd_noblock;
  data_cmd   <= data_cmd_noblock and not completion_block;

  Sel_DFF: process (DRCK, sel_with_scan_reset) is
  begin
    if sel_with_scan_reset = '1' then
      sel_n <= '1';
    elsif DRCK'event and DRCK = '1' then
      if CAPTURE = '1' and drck1_ena = '1' then
        sel_n <= not SEL;
      end if;
    end if;
  end process Sel_DFF;

  Input_shifter : process (DRCK, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      tdi_shifter <= (others => '0');
    elsif DRCK'event and DRCK = '1' then
      if SEL = '1' and SHIFT = '1' and drck0_ena = '1' then
        tdi_shifter <= TDI & tdi_shifter(0 to tdi_shifter'right - 1);
      end if;
    end if;
  end process Input_shifter;

  Command_update_1 : process (UPDATE, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      command_1 <= (others => '0');
    elsif UPDATE'event and UPDATE = '1' then
      if SEL = '1' and data_cmd = '0' and update1_ena = '1' then
        command_1 <= tdi_shifter (0 to 7);
      end if;
    end if;
  end process Command_update_1;

  Use_BSCAN : if (C_USE_BSCAN /= 3) generate
  begin
    sel_reset <= Config_Reset or (UPDATE and update1_ena and not SEL);

    FDC_I : MB_FDC_1
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        Q   => data_cmd_noblock,  -- [out std_logic]
        C   => Update,            -- [in  std_logic]
        D   => data_cmd_n,        -- [in  std_logic]
        CLR => sel_n);            -- [in  std_logic]

    SYNC_FDRE : MB_FDRE_1
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        Q  => sync,
        C  => DRCK,
        CE => sync_detected,
        D  => '1',
        R  => data_cmd_n);

    Command_update : process (UPDATE, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        command <= (others => '0');
      elsif UPDATE'event and UPDATE = '0' then
        if SEL = '1' then
          command <= command_1;
        end if;
      end if;
    end process Command_update;

    drck0_ena    <= '1';
    drck1_ena    <= '1';
    update0_ena  <= '1';
    update1_ena  <= '1';

    Dbg_Clk      <= DRCK;
    Dbg_Reg_En   <= command when data_cmd = '1' else (others => '0');
    Dbg_TDI      <= TDI;
    Dbg_Capture  <= CAPTURE;
    Dbg_Update   <= UPDATE;
    Dbg_Shift    <= shifting_Data;

    Dbg_data_cmd <= data_cmd;
    Dbg_command  <= command when SEL = '1' else (others => '0');
  end generate Use_BSCAN;

  No_BSCAN : if (C_USE_BSCAN = 3) generate
    signal drck_1                : std_logic;
    signal drck_2                : std_logic;
    signal update_1              : std_logic;
    signal sel_n_with_scan_reset : std_logic;
  begin
    sel_n_with_scan_reset <= '0' when Scan_En = '1' else
                             sel_n when Scan_Reset_Sel = '0' else
                             Scan_Reset;

    sel_reset <= Config_Reset;

    FDC_I : process (Update, sel_n_with_scan_reset) is
    begin
      if sel_n_with_scan_reset = '1' then       -- asynchronous reset (active high)
        data_cmd_noblock <= '0';
      elsif Update'event and Update = '0' then  -- falling clock edge
        if update0_ena = '1' then
          data_cmd_noblock <= data_cmd_n;
        end if;
      end if;
    end process FDC_I;

    SYNC_FDRE : process (DRCK) is
    begin
      if DRCK'event and DRCK = '1' then               -- rising clock edge
        if data_cmd_n = '1' and drck0_ena = '1' then  -- synchronous reset (active high)
          sync <= '0';
        elsif sync_detected = '1' then
          sync <= '1';
        end if;
      end if;
    end process SYNC_FDRE;

    Command_update : process (UPDATE, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        command <= (others => '0');
      elsif UPDATE'event and UPDATE = '1' then
        if SEL = '1' and update0_ena = '1' then
          command <= command_1;
        end if;
      end if;
    end process Command_update;

    UPDATE_DFF: process (Clk) is
    begin  -- process UPDATE_DFF
      if Clk'event and Clk = '1' then  -- rising clock edge
        if Rst = '1' then              -- synchronous reset (active high)
          drck_1   <= '0';
          drck_2   <= '0';
          update_1 <= '0';
        else
          drck_1   <= DbgReg_DRCK;
          drck_2   <= drck_1;
          update_1 <= DbgReg_UPDATE;
        end if;
      end if;
    end process UPDATE_DFF;

    drck0_ena    <= drck_2;
    drck1_ena    <= drck_1;
    update0_ena  <= not DbgReg_UPDATE and update_1;
    update1_ena  <= DbgReg_UPDATE and not update_1;

    -- Unused serial signals
    Dbg_Clk      <= '0';
    Dbg_Reg_En   <= (others => '0');
    Dbg_TDI      <= '0';
    Dbg_Capture  <= '0';
    Dbg_Update   <= '0';
    Dbg_Shift    <= '0';

    Dbg_data_cmd <= '0';
    Dbg_Command  <= (others => '0');
  end generate No_BSCAN;

  -- No sync word requirement for commands other than "Write Instruction"
  shifting_Data <= (SHIFT and sync)
                   when (command = MB_WRITE_INSTR) and (data_cmd = '1')
                   else SHIFT;

  sync_detected <= '1' when tdi_shifter(0 to 7) = SYNC_CONST and data_cmd = '1' and drck0_ena = '1'
                   else '0';

  -----------------------------------------------------------------------------
  -- Shift Counter
  -----------------------------------------------------------------------------
  -- Keep a counter on the number of bits in the data phase after a sync has
  -- been detected
  Shift_Counter : process (DRCK, config_with_scan_reset) is
  begin  --  process Shift_Counter
    if config_with_scan_reset = '1' then
      shift_Count <= (others => '0');
    elsif DRCK'event and DRCK = '1' then   -- rising clock edge
      if SHIFT = '0' and drck1_ena = '1' then
        shift_Count <= (others => '0');
      elsif drck1_ena = '1' then
        shift_Count <= std_logic_vector(unsigned(Shift_Count) + 1);
      end if;
    end if;
  end process Shift_Counter;

  -----------------------------------------------------------------------------
  -- Config Register
  -----------------------------------------------------------------------------
  Use_Config_SRL16E : if (C_USE_CONFIG_RESET = 0) generate
  begin
    SRL16E_1 : MB_SRL16E
      generic map (
        C_TARGET    => C_TARGET,
        C_USE_SRL16 => C_USE_SRL16,
        C_STATIC    => true,
        INIT        => Config_Init_Word
      )
      port map (
        CE   => '0',                      -- [in  std_logic]
        D    => '0',                      -- [in  std_logic]
        Clk  => DRCK,                     -- [in  std_logic]
        A0   => shift_Count(0),           -- [in  std_logic]
        A1   => shift_Count(1),           -- [in  std_logic]
        A2   => shift_Count(2),           -- [in  std_logic]
        A3   => shift_Count(3),           -- [in  std_logic]
        Q    => config_TDO_1);            -- [out std_logic]

    SRL16E_2 : MB_SRL16E
      generic map (
        C_TARGET    => C_TARGET,
        C_USE_SRL16 => C_USE_SRL16,
        C_STATIC    => true,
        INIT        => Config_Init_Word2
      )
      port map (
        CE   => '0',                      -- [in  std_logic]
        D    => '0',                      -- [in  std_logic]
        Clk  => DRCK,                     -- [in  std_logic]
        A0   => shift_Count(0),           -- [in  std_logic]
        A1   => shift_Count(1),           -- [in  std_logic]
        A2   => shift_Count(2),           -- [in  std_logic]
        A3   => shift_Count(3),           -- [in  std_logic]
        Q    => config_TDO_2);            -- [out std_logic]

    Use_Ext_Config: if (C_EXT_CONFIG > 0) generate
    begin
      SRL16E_3 : MB_SRL16E
        generic map (
          C_TARGET    => C_TARGET,
          C_USE_SRL16 => C_USE_SRL16,
          C_STATIC    => true,
          INIT        => Config_Init_Word3
        )
        port map (
          CE   => '0',                      -- [in  std_logic]
          D    => '0',                      -- [in  std_logic]
          Clk  => DRCK,                     -- [in  std_logic]
          A0   => shift_Count(0),           -- [in  std_logic]
          A1   => shift_Count(1),           -- [in  std_logic]
          A2   => shift_Count(2),           -- [in  std_logic]
          A3   => shift_Count(3),           -- [in  std_logic]
          Q    => config_TDO_3);            -- [out std_logic]
    end generate Use_Ext_Config;

  end generate Use_Config_SRL16E;

  No_Config_SRL16E : if (C_USE_CONFIG_RESET = 1) generate
  begin
    config_TDO_1 <= Config_Init_Word_S(to_integer(unsigned(shift_Count(3 downto 0))));
    config_TDO_2 <= Config_Init_Word2_S(to_integer(unsigned(shift_Count(3 downto 0))));

    Use_Ext_Config: if (C_EXT_CONFIG > 0) generate
    begin
      config_TDO_3 <= Config_Init_Word3_S(to_integer(unsigned(shift_Count(3 downto 0))));
    end generate Use_Ext_Config;

  end generate No_Config_SRL16E;

  Use_Ext_Config: if (C_EXT_CONFIG > 0) generate
  begin
    config_TDO <= config_TDO_1 when shift_Count(5 downto 4) = "00" else
                  config_TDO_2 when shift_Count(5 downto 4) = "01" else
                  config_TDO_3;
  end generate Use_Ext_Config;

  No_Ext_Config: if (C_EXT_CONFIG = 0) generate
  begin
    config_TDO_3 <= '0'; -- Unused
    config_TDO <= config_TDO_1 when shift_Count(4) = '0' else config_TDO_2;
  end generate No_Ext_Config;

  -----------------------------------------------------------------------------
  -- ID Register
  -----------------------------------------------------------------------------
  Use_ID_SRL16E : if (C_USE_CONFIG_RESET = 0) generate
  begin
    SRL16E_ID_1 : MB_SRL16E
      generic map (
        C_TARGET    => C_TARGET,
        C_USE_SRL16 => C_USE_SRL16,
        C_STATIC    => true,
        INIT        => ID_Init_Word1
      )
      port map (
        CE   => '0',
        D    => '0',
        Clk  => DRCK,
        A0   => shift_Count(0),
        A1   => shift_Count(1),
        A2   => shift_Count(2),
        A3   => shift_Count(3),
        Q    => ID_TDO_1);

    SRL16E_ID_2 : MB_SRL16E
      generic map (
        C_TARGET    => C_TARGET,
        C_USE_SRL16 => C_USE_SRL16,
        C_STATIC    => true,
        INIT        => ID_Init_Word2
      )
      port map (
        CE   => '0',
        D    => '0',
        Clk  => DRCK,
        A0   => shift_Count(0),
        A1   => shift_Count(1),
        A2   => shift_Count(2),
        A3   => shift_Count(3),
        Q    => ID_TDO_2);
  end generate Use_ID_SRL16E;

  No_ID_SRL16E : if (C_USE_CONFIG_RESET = 1) generate
  begin
    ID_TDO_1 <= To_X01(ID_Init_Word1(to_integer(unsigned(shift_Count(3 downto 0)))));
    ID_TDO_2 <= To_X01(ID_Init_Word2(to_integer(unsigned(shift_Count(3 downto 0)))));
  end generate No_ID_SRL16E;

  ID_TDO <= ID_TDO_1 when shift_Count(4) = '0' else ID_TDO_2;

  -----------------------------------------------------------------------------
  -- Handling the Which_MB register
  -----------------------------------------------------------------------------
  More_Than_One_MB : if (C_MB_DBG_PORTS > 1) generate
    constant Init : std_logic_vector(31 downto 0) := X"00000001";
    signal Which_MB_Reg : std_logic_vector(Which_MB_Reg_Size - 1 downto 0) := Init(Which_MB_Reg_Size - 1 downto 0);
  begin

    Use_BSCAN : if (C_USE_BSCAN /= 3) generate
    begin
      Which_MB_Reg_Handle : process (UPDATE, config_with_scan_reset)
      begin
        if config_with_scan_reset = '1' then
          Which_MB_Reg    <= (others => '0');
          Which_MB_Reg(0) <= '1';
        elsif UPDATE'event and UPDATE = '0' then
          if SEL = '1' and data_cmd = '1' and command = MDM_WRITE_WHICH_MB then
            Which_MB_Reg <= tdi_shifter(0 to Which_MB_Reg_Size - 1);
          end if;
        end if;
      end process Which_MB_Reg_Handle;
    end generate Use_BSCAN;

    No_BSCAN : if (C_USE_BSCAN = 3) generate
    begin
      Which_MB_Reg_Handle : process (UPDATE, config_with_scan_reset)
      begin
        if config_with_scan_reset = '1' then
          Which_MB_Reg    <= (others => '0');
          Which_MB_Reg(0) <= '1';
        elsif UPDATE'event and UPDATE = '1' then
          if SEL = '1' and data_cmd = '1' and command = MDM_WRITE_WHICH_MB and update0_ena = '1' then
            Which_MB_Reg <= tdi_shifter(0 to Which_MB_Reg_Size - 1);
          end if;
        end if;
      end process Which_MB_Reg_Handle;
    end generate No_BSCAN;

    mb_debug_enabled_i(C_MB_DBG_PORTS-1 downto 0) <=
      Which_MB_Reg(C_MB_DBG_PORTS-1 downto 0);

  end generate More_Than_One_MB;

  Only_One_MB : if (C_MB_DBG_PORTS = 1) generate
    mb_debug_enabled_i(0) <= '1';
  end generate Only_One_MB;

  No_MB : if (C_MB_DBG_PORTS = 0) generate
    mb_debug_enabled_i(0) <= '0';
  end generate No_MB;

  MB_Debug_Enabled <= mb_debug_enabled_i;

  -----------------------------------------------------------------------------
  -- Reset Control
  -----------------------------------------------------------------------------
  Reset_Control : process (UPDATE, config_with_scan_reset)
  begin  -- process Reset_Control
    if config_with_scan_reset = '1' then
      Debug_Rst_i     <= '0';
      Debug_SYS_Rst_i <= '0';
      set_Ext_BRK     <= '0';
      Ext_NM_BRK_i    <= '0';
    elsif UPDATE'event and UPDATE = '1' then
      if command = MB_WRITE_BRK_RST_CTRL and data_cmd = '1' and update1_ena = '1' then
        Debug_Rst_i     <= tdi_shifter(0);
        Debug_SYS_Rst_i <= tdi_shifter(1);
        set_Ext_BRK     <= tdi_shifter(2);
        Ext_NM_BRK_i    <= tdi_shifter(3);
      end if;
    end if;
  end process Reset_Control;

  -----------------------------------------------------------------------------
  -- Execute Commands
  -----------------------------------------------------------------------------
  Debug_SYS_Rst <= Debug_SYS_Rst_i;
  Debug_Rst     <= Debug_Rst_i;
  Ext_NM_BRK    <= Ext_NM_BRK_i;
  Ext_BRK       <= ext_BRK_i;

  -----------------------------------------------------------------------------
  -- TDO Mux
  -----------------------------------------------------------------------------
  with command select
    TDO <=
      ID_TDO     when MDM_DEBUG_ID,
      uart_TDO   when UART_READ_BYTE,
      uart_TDO   when UART_READ_STATUS,
      config_TDO when MDM_READ_CONFIG,
      master_TDO when BUSM_READ_DATA,
      master_TDO when BUSM_READ_STATUS,
      compl_TDO  when MDM_READ_COMPL_STATUS,
      axis_TDO   when AXIS_READ_STATUS,
      ct_TDO     when CT_READ_STATUS,
      trace_TDO  when TRACE_READ_ADDR,
      trace_TDO  when TRACE_READ_STATUS,
      Dbg_TDO    when others;

  -----------------------------------------------------------------------------
  -- Unified Overrun and Error Detection section
  -----------------------------------------------------------------------------

  -- Completion Control (clears completion count and block):
  -- 0      Enable completion block
  Completion_Control_Register : process (UPDATE, config_with_scan_reset)
  begin
    if config_with_scan_reset = '1' then
      completion_ctrl <= (others => '0');
    elsif UPDATE'event and UPDATE = '1' then
      if command = MDM_WRITE_COMPL_CTRL and data_cmd_noblock = '1' and update1_ena = '1' then
        completion_ctrl <= tdi_shifter(0 to 0);
      end if;
    end if;
  end process Completion_Control_Register;

  compl_TDO <= completion_status(completion_status'right);

  Use_Serial_Unified_Completion : if C_DEBUG_INTERFACE = 0 generate
    signal mb_instr_overrun : std_logic := '0';
    signal mb_instr_error   : std_logic := '0';
    signal mb_data_overrun  : std_logic := '0';
  begin

    -- Completion Status:
    -- 0-9    Command count
    -- 10     MicroBlaze instruction insert overrun
    -- 11     MicroBlaze instruction insert exception occurred
    -- 12     MicroBlaze data read overrun
    -- 13     Bus Master interface overrun
    -- 14     Bus Master interface error occurred
    -- 15     AXI Slave interface access locked
    Completion_Status_Register : process (DRCK, config_with_scan_reset) is
      variable sample   : std_logic_vector(15 downto 13);
      variable sample_1 : std_logic_vector(15 downto 10);

      attribute ASYNC_REG : string;
      attribute ASYNC_REG of sample : variable is "TRUE";
    begin  -- process Completion_Status_Register
      if config_with_scan_reset = '1' then
        completion_status <= (others => '0');
        completion_block  <= '0';
        clear_overrun     <= '0';
        sample            := (others => '0');
        sample_1          := (others => '0');
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if command = MDM_READ_COMPL_STATUS and data_cmd_noblock = '1' and drck1_ena = '1' then
          if CAPTURE = '1' then
            completion_status(sample_1'range) <= sample_1;
          elsif SHIFT = '1' then
            completion_status <= '0' & completion_status(completion_status'left downto completion_status'right + 1);
          end if;
        elsif command = MDM_WRITE_COMPL_CTRL and data_cmd_noblock = '1'  and drck1_ena = '1' then
          if CAPTURE = '1' then
            completion_status(9 downto 0) <= (others => '0');
            completion_block <= '0';
            clear_overrun    <= '1';
          end if;
        elsif drck1_ena = '1' then
          -- Sample and detect status change
          if completion_ctrl(0) = '1' then
            if (sample_1(10) = '0' and mb_instr_overrun = '1') or
               (sample_1(11) = '0' and mb_instr_error   = '1') or
               (sample_1(12) = '0' and mb_data_overrun  = '1') or
               (sample_1(13) = '0' and sample(13)       = '1') or
               (sample_1(14) = '0' and sample(14)       = '1') or
               (sample_1(15) = '0' and sample(15)       = '1') then
              completion_block <= '1';
            end if;
          end if;
          sample_1(15 downto 13) := sample;
          sample_1(10) := mb_instr_overrun;
          sample_1(11) := mb_instr_error;
          sample_1(12) := mb_data_overrun;
          sample(13)   := master_overrun;
          sample(14)   := master_error;
          sample(15)   := JTAG_AXI_Overrun;

          -- Increment command count
          if CAPTURE = '1' then
            if data_cmd = '0' and completion_block = '0' then
              completion_status(9 downto 0) <= std_logic_vector(unsigned(completion_status(9 downto 0)) + 1);
            end if;
            clear_overrun <= '0';
          end if;
        end if;
      end if;
    end process Completion_Status_Register;

    Write_Instr_Status : process (DRCK, config_with_scan_reset) is
      variable count : std_logic_vector(0 to 1) := "00";
    begin  -- process Write_Instr_Status
      if config_with_scan_reset = '1' then
        mb_instr_overrun <= '0';
        mb_instr_error   <= '0';
        count            := "00";
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if command = MB_WRITE_INSTR and data_cmd = '1' and drck1_ena = '1' then
          if CAPTURE = '1' then
            mb_instr_overrun <= '0';
            mb_instr_error   <= '0';
            count            := "00";
          elsif shifting_Data = '1' and count(0) = '0' then
            if count(1) = '0' then
              mb_instr_overrun <= Dbg_TDO;
            end if;
            if count(1) = '1' then
              mb_instr_error <= Dbg_TDO;
            end if;
            count := std_logic_vector(unsigned(count) + 1);
          end if;
        elsif command = MDM_WRITE_COMPL_CTRL and data_cmd_noblock = '1' and drck1_ena = '1' then
          if CAPTURE = '1' then
            mb_instr_overrun <= '0';
            mb_instr_error   <= '0';
          end if;
        end if;
      end if;
    end process Write_Instr_Status;

    Data_Read_Status : process (DRCK, config_with_scan_reset) is
      variable count : std_logic_vector(0 to 5) := "000000";
    begin  -- process Data_Read_Status
      if config_with_scan_reset = '1' then
        mb_data_overrun <= '0';
        count           := "000000";
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if command = MB_READ_DATA and data_cmd = '1' and drck1_ena = '1' then
          if CAPTURE = '1' then
            mb_data_overrun <= '0';
            count           := "000000";
          elsif SHIFT = '1' then
            if count = "100000" then
              mb_data_overrun <= not Dbg_TDO;
            end if;
            count := std_logic_vector(unsigned(count) + 1);
          end if;
        elsif command = MDM_WRITE_COMPL_CTRL and data_cmd_noblock = '1' and drck1_ena = '1' then
          if CAPTURE = '1' then
            mb_data_overrun <= '0';
          end if;
        end if;
      end if;
    end process Data_Read_Status;

    -- Unused
    AXI_Completion_On <= '0';
    AXI_Block         <= '0';
  end generate Use_Serial_Unified_Completion;

  Use_Parallel_Unified_Completion : if C_DEBUG_INTERFACE > 0 generate
    signal axi_completion_status : std_logic_vector(15 downto 0) := (others => '0');
    signal write_compl_ctrl      : std_logic;
    signal jtag_command          : std_logic;
  begin

    -- Completion Status:
    -- 0-9    Command count + AXI transactions
    -- 10     MicroBlaze instruction insert overrun or exception
    -- 12     MicroBlaze data read overrun
    -- 13     Bus Master interface overrun
    -- 14     Bus Master interface error occurred
    -- 15     AXI Slave interface access locked
    AXI_Completion_Status_Register : process (Clk) is
      variable sample   : std_logic_vector(14 downto 13);
      variable sample_1 : std_logic_vector(15 downto 10);

      attribute ASYNC_REG : string;
      attribute ASYNC_REG of sample : variable is "TRUE";
    begin  -- process AXI_Completion_Status_Register
      if Clk'event and Clk = '1' then  -- rising clock edge
        if Rst = '1' then              -- synchronous reset (active high)
          axi_completion_status <= (others => '0');
          completion_block <= '0';
          clear_overrun    <= '0';
        else
          axi_completion_status(sample_1'range) <= sample_1;

          if write_compl_ctrl = '1' then
            axi_completion_status(9 downto 0) <= (others => '0');
            completion_block <= '0';
            clear_overrun    <= '1';
          end if;

          -- Sample and detect status change
          if completion_ctrl(0) = '1' then
            if (sample_1(10) = '0' and AXI_instr_overrun = '1') or
               (sample_1(12) = '0' and AXI_data_overrun  = '1') or
               (sample_1(13) = '0' and sample(13)        = '1') or
               (sample_1(14) = '0' and sample(14)        = '1') or
               (sample_1(15) = '0' and JTAG_AXI_Overrun  = '1') then
              completion_block <= '1';
            end if;
          end if;
          sample_1(10)           := AXI_instr_overrun;
          sample_1(11)           := '0';
          sample_1(12)           := AXI_data_overrun;
          sample_1(14 downto 13) := sample;
          sample_1(15)           := JTAG_AXI_Overrun;
          sample(13)             := master_overrun;
          sample(14)             := master_error;

          -- Increment command count
          if (AXI_Transaction = '1' or jtag_command = '1') and (completion_block = '0') then
            axi_completion_status(9 downto 0) <= std_logic_vector(unsigned(axi_completion_status(9 downto 0)) + 1);
            clear_overrun <= '0';
          end if;
        end if;
      end if;
    end process AXI_Completion_Status_Register;

    Sample_Commands : process (Clk) is
      variable sample   : std_logic_vector(0 to 1) := (others => '0');
      variable sample_1 : std_logic_vector(0 to 1) := (others => '0');
      variable sample_2 : std_logic_vector(0 to 1) := (others => '0');

      attribute ASYNC_REG : string;
      attribute ASYNC_REG of sample   : variable is "TRUE";
      attribute ASYNC_REG of sample_1 : variable is "TRUE";
    begin  -- process Sample_Commmands
      if Clk'event and Clk = '1' then  -- rising clock edge
        if Rst = '1' then              -- synchronous reset (active high)
          write_compl_ctrl <= '0';
          jtag_command     <= '0';

          sample_2         := (others => '0');
          sample_1         := (others => '0');
          sample           := (others => '0');
        else
          write_compl_ctrl <= sample_1(1) and not sample_2(1);
          jtag_command     <= sample_1(0) and not sample_2(0);

          sample_2 := sample_1;
          sample_1 := sample;
          if command = MDM_WRITE_COMPL_CTRL and data_cmd_noblock = '1' then
            sample(1) := '1';
          else
            sample(1) := '0';
          end if;
          sample(0) := CAPTURE and not data_cmd_noblock;
        end if;
      end if;
    end process Sample_Commands;

    Completion_Status_Register : process (DRCK, config_with_scan_reset) is
    begin  -- process Completion_Status_Register
      if config_with_scan_reset = '1' then
        completion_status <= (others => '0');
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if command = MDM_READ_COMPL_STATUS and data_cmd_noblock = '1' and drck1_ena = '1' then
          if CAPTURE = '1' then
            completion_status <= axi_completion_status;
          elsif SHIFT = '1' then
            completion_status <= '0' & completion_status(completion_status'left downto completion_status'right + 1);
          end if;
        end if;
      end if;
    end process Completion_Status_Register;

    AXI_Completion_On <= completion_ctrl(0);
    AXI_Block         <= completion_block;
  end generate Use_Parallel_Unified_Completion;

  JTAG_Clear_Overrun <= clear_overrun;

  -----------------------------------------------------------------------------
  -- UART section
  -----------------------------------------------------------------------------

  Use_UART : if (C_USE_UART = 1) generate
    signal execute           : std_logic := '0';
    signal execute_1         : std_logic := '0';
    signal execute_2         : std_logic := '0';
    signal execute_3         : std_logic := '0';
    signal fifo_DOut         : std_logic_vector(0 to C_UART_WIDTH-1);
    signal fifo_Data_Present : std_logic := '0';
    signal fifo_Din          : std_logic_vector(0 to C_UART_WIDTH-1);
    signal fifo_Read         : std_logic := '0';
    signal fifo_Write        : std_logic := '0';
    signal rx_Buffer_Full_I  : std_logic := '0';
    signal rx_Data_Present_I : std_logic := '0';
    signal status_reg        : std_logic_vector(0 to 7) := (others => '0');
    signal tdo_reg           : std_logic_vector(0 to C_UART_WIDTH-1) := (others => '0');
    signal tx_Buffer_Full_I  : std_logic := '0';
    signal tx_buffered       : std_logic := '0';  -- Non-buffered mode on startup
    signal tx_buffered_1     : std_logic := '0';
    signal tx_buffered_2     : std_logic := '0';
    signal tx_fifo_wen       : std_logic;
    signal data_cmd_reset    : std_logic;

    attribute ASYNC_REG : string;
    attribute ASYNC_REG of execute_1     : signal is "TRUE";
    attribute ASYNC_REG of execute_2     : signal is "TRUE";
    attribute ASYNC_REG of tx_buffered_1 : signal is "TRUE";
    attribute ASYNC_REG of tx_buffered_2 : signal is "TRUE";
  begin

    Ext_BRK_FDRSE : MB_FDRSE
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        Q  => ext_BRK_i,                  --  [out std_logic]
        C  => Clk,                        --  [in  std_logic]
        CE => '0',                        --  [in  std_logic]
        D  => '0',                        --  [in  std_logic]
        R  => Clear_Ext_BRK,              --  [in  std_logic]
        S  => set_Ext_BRK);               --  [in  std_logic]

    -----------------------------------------------------------------------------
    -- Control Register
    -----------------------------------------------------------------------------

    -- Register accessible on the JTAG interface only
    Control_Register : process (UPDATE, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        tx_buffered <= '0';
      elsif UPDATE'event and UPDATE = '1' then
        if command = UART_WRITE_CONTROL and data_cmd = '1' and update1_ena = '1' then
          tx_buffered <= tdi_shifter(0);
        end if;
      end if;
    end process Control_Register;
  
    Tx_Buffered_DFF: process (Clk)
    begin  -- process Tx_Buffered_DFF
      if Clk'event and Clk = '1' then
        tx_buffered_2 <= tx_buffered_1;
        tx_buffered_1 <= tx_buffered;
      end if;
    end process Tx_Buffered_DFF;

    data_cmd_reset <= '0' when Scan_En = '1' else
                      not data_cmd when Scan_Reset_Sel = '0' else
                      Scan_Reset;

    Execute_UART_Command : process (UPDATE, data_cmd_reset)
    begin  -- process Execute_UART_Command
      if data_cmd_reset = '1' then
        execute   <= '0';
      elsif UPDATE'event and UPDATE = '1' then
        if ((command = UART_READ_BYTE) or
            (command = UART_WRITE_BYTE)) and update1_ena = '1' then
          execute <= '1';
        else
          execute <= '0';
        end if;
      end if;
    end process Execute_UART_Command;

    Execute_FIFO_Command : process (Clk)
    begin  -- process Execute_FIFO_Command
      if Clk'event and Clk = '1' then
        fifo_Write     <= '0';
        fifo_Read      <= '0';
        if (execute_3 = '0') and (execute_2 = '1') then
          if (command = UART_WRITE_BYTE) then
            fifo_Write <= '1';
          end if;
          if (command = UART_READ_BYTE) then
            fifo_Read  <= '1';
          end if;
        end if;
        execute_3      <= execute_2;
        execute_2      <= execute_1;
        execute_1      <= execute;
      end if;
    end process Execute_FIFO_Command;

    -- Since only one bit can change in the status register at time
    -- we don't need to synchronize them with the DRCK clock
    status_reg(7) <= fifo_Data_Present;
    status_reg(6) <= tx_Buffer_Full_I;
    status_reg(5) <= not rx_Data_Present_I;
    status_reg(4) <= rx_Buffer_Full_I;
    status_reg(3) <= '0'; -- FSL0_S_Exists;
    status_reg(2) <= '0'; -- FSL0_M_Full;
    status_reg(1) <= '0'; -- FSL_Read_UnderRun;
    status_reg(0) <= '0'; -- FSL_Write_OverRun;

    -- Read UART registers
    TDO_Register : process (DRCK, config_with_scan_reset) is
    begin  -- process TDO_Register
      if config_with_scan_reset = '1' then
        tdo_reg <= (others => '0');
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if CAPTURE = '1' and drck1_ena = '1' then
          case Command is
            when UART_READ_STATUS =>
              tdo_reg <= (others => '0');
              tdo_reg(tdo_reg'right-status_reg'length+1 to tdo_reg'right) <= status_reg;
            when others =>
              tdo_reg <= fifo_DOut;
          end case;
        elsif SHIFT = '1' and drck1_ena = '1' then
          tdo_reg <= '0' & tdo_reg(tdo_reg'left to tdo_reg'right-1);
        end if;
      end if;
    end process TDO_Register;

    uart_TDO <= tdo_reg(tdo_reg'right);

    -----------------------------------------------------------------------------
    -- TDI Register
    -----------------------------------------------------------------------------
    TDI_Register : process (DRCK, config_with_scan_reset) is
    begin  -- process TDI_Register
      if config_with_scan_reset = '1' then
        fifo_Din <= (others => '0');
      elsif DRCK'event and DRCK = '1' then   -- rising clock edge
        if shifting_Data = '1' and drck0_ena = '1' then
          fifo_Din(fifo_Din'left+1 to fifo_Din'right) <=
            fifo_Din(fifo_Din'left to fifo_Din'right-1);
          fifo_Din(0) <= TDI;
        end if;
      end if;
    end process TDI_Register;

    ---------------------------------------------------------------------------
    -- FIFO
    ---------------------------------------------------------------------------
    RX_FIFO_I : SRL_FIFO
      generic map (
        C_TARGET    => C_TARGET,                       -- [TARGET_FAMILY_TYPE]
        C_DATA_BITS => C_UART_WIDTH,                   -- [natural]
        C_DEPTH     => 16,                             -- [natural]
        C_USE_SRL16 => C_USE_SRL16)                    -- [string]
      port map (
        Clk         => Clk,                            -- [in  std_logic]
        Reset       => Reset_RX_FIFO,                  -- [in  std_logic]
        FIFO_Write  => fifo_Write,                     -- [in  std_logic]
        Data_In     => fifo_Din(0 to C_UART_WIDTH-1),  -- [in  std_logic_vector(0 to C_DATA_BITS-1)]
        FIFO_Read   => Read_RX_FIFO,                   -- [in  std_logic]
        Data_Out    => RX_Data,                        -- [out std_logic_vector(0 to C_DATA_BITS-1)]
        FIFO_Full   => rx_Buffer_Full_I,               -- [out std_logic]
        Data_Exists => rx_Data_Present_I);             -- [out std_logic]

    RX_Data_Present <= rx_Data_Present_I;
    RX_Buffer_Full  <= rx_Buffer_Full_I;

    -- Discard transmit data until XMD enables buffered mode.
    tx_fifo_wen <= Write_TX_FIFO and tx_buffered_2;

    TX_FIFO_I : SRL_FIFO
      generic map (
        C_TARGET    => C_TARGET,            -- [TARGET_FAMILY_TYPE]
        C_DATA_BITS => C_UART_WIDTH,        -- [natural]
        C_DEPTH     => 16,                  -- [natural]
        C_USE_SRL16 => C_USE_SRL16)         -- [string]
      port map (
        Clk         => Clk,                 -- [in  std_logic]
        Reset       => Reset_TX_FIFO,       -- [in  std_logic]
        FIFO_Write  => tx_fifo_wen,         -- [in  std_logic]
        Data_In     => TX_Data,             -- [in  std_logic_vector(0 to C_DATA_BITS-1)]
        FIFO_Read   => fifo_Read,           -- [in  std_logic]
        Data_Out    => fifo_DOut,           -- [out std_logic_vector(0 to C_DATA_BITS-1)]
        FIFO_Full   => TX_Buffer_Full_I,    -- [out std_logic]
        Data_Exists => fifo_Data_Present);  -- [out std_logic]

    TX_Buffer_Full  <= TX_Buffer_Full_I;
    TX_Buffer_Empty <= not fifo_Data_Present;
    
  end generate Use_UART;

  No_UART : if (C_USE_UART = 0) generate
  begin
    ext_BRK_i       <= '0';
    uart_TDO        <= '0';

    RX_Data         <= (others => '0');
    RX_Data_Present <= '0';
    RX_BUFFER_FULL  <= '0';
    TX_Buffer_Full  <= '0';
    TX_Buffer_Empty <= '1';
  end generate No_UART;

  -----------------------------------------------------------------------------
  -- Bus Master Debug Memory Access section
  -----------------------------------------------------------------------------

  Use_Dbg_Mem_Access : if (C_DBG_MEM_ACCESS = 1) generate
    signal input           : std_logic_vector(0 to C_M_AXI_DATA_WIDTH-1);
    signal output          : std_logic_vector(0 to C_M_AXI_DATA_WIDTH-1);
    signal status          : std_logic_vector(0 to 7);
    signal execute         : std_logic := '0';
    signal execute_1       : std_logic := '0';
    signal execute_2       : std_logic := '0';
    signal execute_3       : std_logic := '0';
    signal clear_overrun_1 : std_logic := '0';
    signal clear_overrun_2 : std_logic := '0';
    signal access_idle_1   : std_logic := '0';
    signal access_idle_2   : std_logic := '0';
    signal rd_wr_len       : std_logic_vector(0 to 4) := (others => '0');
    signal rd_wr_size      : std_logic_vector(0 to 1) := (others => '0');
    signal rd_wr_excl      : std_logic := '0';
    signal rd_resp_zero    : boolean;
    signal wr_resp_zero    : boolean;
    signal data_cmd_reset  : std_logic;

    attribute ASYNC_REG : string;
    attribute ASYNC_REG of execute_1       : signal is "TRUE";
    attribute ASYNC_REG of execute_2       : signal is "TRUE";
    attribute ASYNC_REG of clear_overrun_1 : signal is "TRUE";
    attribute ASYNC_REG of clear_overrun_2 : signal is "TRUE";
    attribute ASYNC_REG of access_idle_1   : signal is "TRUE";
    attribute ASYNC_REG of access_idle_2   : signal is "TRUE";
  begin

    -----------------------------------------------------------------------------
    -- Control Register
    -----------------------------------------------------------------------------
    Control_Register : process (UPDATE, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        rd_wr_excl <= '0';              -- no exclusive
        rd_wr_size <= "10";             -- word size
        rd_wr_len  <= (others => '0');  -- single word burst
      elsif UPDATE'event and UPDATE = '1' then
        if command = BUSM_WRITE_CONTROL and data_cmd = '1' and update1_ena = '1' then
          rd_wr_excl <= tdi_shifter(0);
          rd_wr_size <= tdi_shifter(1 to 2);
          rd_wr_len  <= tdi_shifter(3 to 7);
        end if;
      end if;
    end process Control_Register;

    Master_rd_len  <= rd_wr_len;
    Master_wr_len  <= rd_wr_len;
    Master_rd_size <= rd_wr_size;
    Master_wr_size <= rd_wr_size;
    Master_rd_excl <= rd_wr_excl;
    Master_wr_excl <= rd_wr_excl;
  
    -----------------------------------------------------------------------------
    -- Command Registers
    -----------------------------------------------------------------------------
    data_cmd_reset <= '0' when Scan_En = '1' else
                      not data_cmd when Scan_Reset_Sel = '0' else
                      Scan_Reset;

    Execute_Bus_Command : process (UPDATE, data_cmd_reset)
    begin  -- process Execute_Bus_Command
      if data_cmd_reset = '1' then
        execute   <= '0';
      elsif UPDATE'event and UPDATE = '1' then
        if ((command = BUSM_WRITE_COMMAND) or
            (command = BUSM_READ_DATA)     or
            (command = BUSM_WRITE_DATA))   and update1_ena = '1' then
          execute <= '1';
        else
          execute <= '0';
        end if;
      end if;
    end process Execute_Bus_Command;

    Execute_Data_Command : process (M_AXI_ACLK)
    begin  -- process Execute_Data_Command
      if M_AXI_ACLK'event and M_AXI_ACLK = '1' then
        if M_AXI_ARESETn = '0' then
          execute_3       <= '0';
          execute_2       <= '0';
          execute_1       <= '0';
          Master_data_wr  <= '0';
          Master_data_rd  <= '0';
          Master_rd_start <= '0';
          Master_wr_start <= '0';
          master_overrun  <= '0';
          master_error    <= '0';
          clear_overrun_2 <= '0';
          clear_overrun_1 <= '0';
          rd_resp_zero    <= true;
          wr_resp_zero    <= true;
        else
          Master_data_wr  <= '0';
          Master_data_rd  <= '0';
          Master_rd_start <= '0';
          Master_wr_start <= '0';
          if (execute_3 = '0') and (execute_2 = '1') then
            if (Master_rd_idle = '1') and (Master_wr_idle = '1') then
              if (command = BUSM_WRITE_DATA) then
                Master_data_wr <= '1';
              end if;
              if (command = BUSM_READ_DATA) then
                Master_data_rd <= '1';
              end if;
              if (command = BUSM_WRITE_COMMAND) then
                Master_rd_start <= Master_data_empty;
                Master_wr_start <= not Master_data_empty;
                master_error    <= '0';
              end if;
              master_overrun <= '0';
            else
              master_overrun <= '1';
            end if;
          end if;
          execute_3   <= execute_2;
          execute_2   <= execute_1;
          execute_1   <= execute;

          if clear_overrun_2 = '1' then
            master_overrun <= '0';
            master_error   <= '0';
          end if;
          clear_overrun_2 <= clear_overrun_1;
          clear_overrun_1 <= clear_overrun;

          if (Master_rd_resp /= "00" and rd_resp_zero) or (Master_wr_resp /= "00" and wr_resp_zero) then
            master_error <= '1';
          end if;
          rd_resp_zero <= Master_rd_resp = "00";
          wr_resp_zero <= Master_wr_resp = "00";
        end if;
      end if;
    end process Execute_Data_Command;

    -----------------------------------------------------------------------------
    -- Status Register and Data Read Register
    -----------------------------------------------------------------------------

    -- We don't need to synchronize status with DRCK clock
    status(7)      <= '0';
    status(6)      <= '0';
    status(4 to 5) <= Master_rd_resp;
    status(2 to 3) <= Master_wr_resp;
    status(1)      <= Master_rd_idle;
    status(0)      <= Master_wr_idle;

    Output_Register : process (DRCK, config_with_scan_reset) is
    begin  -- process Output_Register
      if config_with_scan_reset = '1' then
        output <= (others => '0');
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if CAPTURE = '1' and drck1_ena = '1' then
          case Command is
            when BUSM_READ_STATUS =>
              output <= (others => '0');
              output(output'right-status'length+1 to output'right) <= status;
            when others =>
              output <= Master_data_out;
          end case;
        elsif SHIFT = '1' and drck1_ena = '1' then
          output <= '0' & output(output'left to output'right-1);
        end if;
      end if;
    end process Output_Register;

    master_TDO <= output(output'right);

    -----------------------------------------------------------------------------
    -- Write Data and Read/Write Address Register
    -----------------------------------------------------------------------------
    Input_Register : process (DRCK, config_with_scan_reset) is
    begin  -- process Input_Register
      if config_with_scan_reset = '1' then
        input <= (others => '0');
        access_idle_2 <= '0';
        access_idle_1 <= '0';
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if shifting_Data = '1' and data_cmd = '1' and access_idle_2 = '1' and
           (command = BUSM_WRITE_DATA or command = BUSM_WRITE_COMMAND) and drck0_ena = '1' then
          input(input'left+1 to input'right) <= input(input'left to input'right-1);
          input(0) <= TDI;
        end if;
        if drck1_ena = '1' then
          access_idle_2 <= access_idle_1;
          access_idle_1 <= Master_rd_idle and Master_wr_idle;
        end if;
      end if;
    end process Input_Register;

    Master_rd_addr <= input;
    Master_wr_addr <= input;
    Master_data_in <= input;

  end generate Use_Dbg_Mem_Access;

  No_Dbg_Mem_Access : if (C_DBG_MEM_ACCESS = 0) generate
  begin
    master_TDO      <= '0';
    master_overrun  <= '0';
    master_error    <= '0';

    Master_rd_start <= '0';
    Master_rd_addr  <= (others => '0');
    Master_rd_len   <= (others => '0');
    Master_rd_size  <= (others => '0');
    Master_rd_excl  <= '0';
    Master_wr_start <= '0';
    Master_wr_addr  <= (others => '0');
    Master_wr_len   <= (others => '0');
    Master_wr_size  <= (others => '0');
    Master_wr_excl  <= '0';
    Master_data_rd  <= '0';
    Master_data_wr  <= '0';
    Master_data_in  <= (others => '0');
  end generate No_Dbg_Mem_Access;

  -----------------------------------------------------------------------------
  -- AXI Slave Debug Register Access section
  -----------------------------------------------------------------------------

  Use_Dbg_Reg_Access : if (C_DBG_REG_ACCESS = 1 and C_USE_BSCAN /= 3) generate
    signal access_lock          : std_logic := '0';
    signal access_lock_cmd_rst  : std_logic;
    signal dbgreg_access_lock_1 : std_logic := '0';
    signal force_lock           : std_logic := '0';
    signal force_lock_cmd_rst   : std_logic;
    signal status_reg           : std_logic_vector(0 to 1);
    signal tdo_reg              : std_logic_vector(0 to 1) := (others => '0');
  begin

    -----------------------------------------------------------------------------
    -- Handle force lock command: first set it on update and then remove after
    -- it has been detected in the other clock region
    -----------------------------------------------------------------------------

    force_lock_cmd_rst <= '0' when Scan_En = '1' else
                          Config_Reset or dbgreg_unlocked when Scan_Reset_Sel = '0' else
                          Scan_Reset;

    Force_Lock_Command_Handle : process (UPDATE, force_lock_cmd_rst)
    begin  -- process Force_Lock_Command_Handle
      if force_lock_cmd_rst = '1' then
        force_lock <= '0';
      elsif UPDATE'event and UPDATE = '1' then
        if command = AXIS_WRITE_COMMAND and data_cmd = '1' then
          force_lock <= tdi_shifter(0);
        end if;
      end if;
    end process Force_Lock_Command_Handle;

    JTAG_Force_Lock <= force_lock;

    -----------------------------------------------------------------------------
    -- Handle normal lock command: set it on update if not locked by other clock
    -- region and remove if force lock by other clock region
    -----------------------------------------------------------------------------

    access_lock_cmd_rst <= '0' when Scan_En = '1' else
                           Config_Reset or DbgReg_Force_Lock when Scan_Reset_Sel = '0' else
                           Scan_Reset;

    Access_Lock_Command_Handle : process (UPDATE, access_lock_cmd_rst)
    begin  -- process Access_Lock_Command_Handle
      if access_lock_cmd_rst = '1' then
        access_lock <= '0';
      elsif UPDATE'event and UPDATE = '1' then
        if command = AXIS_WRITE_COMMAND and data_cmd = '1' then
          access_lock <= tdi_shifter(1) and not dbgreg_access_lock_1;
        end if;
      end if;
    end process Access_Lock_Command_Handle;

    Sync_Access_Lock : process (DRCK, config_with_scan_reset) is
    begin  -- process Sync_Access_Lock
      if config_with_scan_reset = '1' then
        dbgreg_access_lock_1 <= '0';
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        dbgreg_access_lock_1 <= DbgReg_Access_Lock;
      end if;
    end process Sync_Access_Lock;

    JTAG_Access_Lock <= access_lock;

    -----------------------------------------------------------------------------
    -- Read AXI Slave status register
    -----------------------------------------------------------------------------

    status_reg(1) <= access_lock;
    status_reg(0) <= dbgreg_access_lock_1;

    TDO_Register : process (DRCK, config_with_scan_reset) is
    begin  -- process TDO_Register
      if config_with_scan_reset = '1' then
        tdo_reg <= (others => '0');
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if CAPTURE = '1' then
          -- AXIS_READ_STATUS
          tdo_reg <= status_reg;
        elsif SHIFT = '1' then
          tdo_reg <= '0' & tdo_reg(tdo_reg'left to tdo_reg'right-1);
        end if;
      end if;
    end process TDO_Register;

    axis_TDO <= tdo_reg(tdo_reg'right);

  end generate Use_Dbg_Reg_Access;

  No_Dbg_Reg_Access : if (C_DBG_REG_ACCESS = 0 or C_USE_BSCAN = 3) generate
  begin
    axis_TDO <= '0';

    JTAG_Access_Lock   <= '0';
    JTAG_Force_Lock    <= '0';
  end generate No_Dbg_Reg_Access;

  -----------------------------------------------------------------------------
  -- Cross trigger section
  -----------------------------------------------------------------------------

  Use_Cross_Trigger : if (C_USE_CROSS_TRIGGER = 1) generate
    constant C_NUM_CT : integer := C_NUM_DBG_CT + C_NUM_EXT_CT;

    type dbg_in_all_type  is array(0 to C_EN_WIDTH - 1)   of std_logic_vector(0 to C_NUM_DBG_CT - 1);
    type in_all_type      is array(0 to C_EN_WIDTH - 1)   of std_logic_vector(0 to C_NUM_CT - 1);
    type dbg_out_type     is array(0 to C_NUM_DBG_CT - 1) of std_logic_vector(0 to 3);
    type dbg_out_all_type is array(0 to C_EN_WIDTH - 1)   of dbg_out_type;
    type ext_out_type     is array(0 to C_NUM_EXT_CT - 1) of std_logic_vector(0 to 3);

    constant C_DBG_IN_CTRL    : std_logic_vector(0 to C_NUM_DBG_CT - 1) := (0 to C_NUM_EXT_CT - 1 => '1', others => '0');
    constant C_DBG_OUT_CTRL   : dbg_out_type := ("1001", "1010", "1011", "1100", "1101", "1101", "1101", "1101");
    constant C_EXT_IN_CTRL    : std_logic_vector(0 to C_NUM_EXT_CT - 1) := C_EXT_TRIG_RESET_VALUE(0 to 3); -- "1111"
    constant C_EXT_OUT_CTRL   : ext_out_type := (C_EXT_TRIG_RESET_VALUE(4  to 7),   -- "0001"
                                                 C_EXT_TRIG_RESET_VALUE(8  to 11),  -- "0010"
                                                 C_EXT_TRIG_RESET_VALUE(12 to 15),  -- "0011"
                                                 C_EXT_TRIG_RESET_VALUE(16 to 19)); -- "0100"
    signal dbg_trig_in_i      : dbg_trig_type;
    signal dbg_trig_Ack_Out_i : dbg_trig_type;

    signal in_andor_ctrl      : std_logic                               := '0';
    signal in_ctrl            : dbg_in_all_type                         := (others => C_DBG_IN_CTRL);
    signal out_ctrl           : dbg_out_all_type                        := (others => C_DBG_OUT_CTRL);
    signal ext_in_ctrl        : std_logic_vector(0 to C_NUM_EXT_CT - 1) := C_EXT_IN_CTRL;
    signal ext_out_ctrl       : ext_out_type                            := C_EXT_OUT_CTRL;

    signal status_reg         : std_logic_vector(0 to C_NUM_CT * 2 - 1) := (others => '0');
    signal tdo_reg            : std_logic_vector(0 to C_NUM_CT * 2 - 1) := (others => '0');

  begin

    -----------------------------------------------------------------------------
    -- Assign trigger outputs
    -----------------------------------------------------------------------------
    Assign_Outputs: process (in_ctrl, in_andor_ctrl, ext_in_ctrl,
                             out_ctrl, ext_out_ctrl, dbg_trig_in_i, Ext_Trig_In,
                             dbg_trig_ack_out_i, Ext_Trig_Ack_Out) is
      variable in_value_or      : dbg_in_all_type;
      variable in_value_and     : dbg_in_all_type;
      variable in_value         : in_all_type;
      variable in_value_ext_or  : std_logic_vector(0 to C_NUM_DBG_CT - 1);
      variable in_value_ext_and : std_logic_vector(0 to C_NUM_DBG_CT - 1);
      variable in_value_ext     : std_logic_vector(0 to C_NUM_CT - 1);
      variable out_value        : std_logic_vector(0 to 15);
      variable out_ack_value    : std_logic_vector(0 to 15);
      variable dbg_ack_value    : dbg_in_all_type;
      variable ext_ack_value    : std_logic_vector(0 to C_NUM_EXT_CT - 1);
      variable index            : integer range 0 to 15;
    begin  -- process Assign_Outputs
      -- Determine in_value per processor from inputs and input select control registers
      for N in 0 to C_EN_WIDTH - 1 loop
        for K in 0 to C_NUM_DBG_CT - 1 loop
          in_value_or(N)(K)   := '0';
          in_value_and(N)(K)  := '1';
          for I in 0 to C_EN_WIDTH - 1 loop
            if N /= I then -- exclude own processor input
              in_value_or(N)(K)  := in_value_or(N)(K)  or  (dbg_trig_in_i(I)(K) and in_ctrl(I)(K));
              in_value_and(N)(K) := in_value_and(N)(K) and (dbg_trig_in_i(I)(K) and in_ctrl(I)(K));
            end if;
          end loop;
        end loop;
        if in_andor_ctrl = '1' then
          in_value(N)(0 to C_NUM_DBG_CT - 1) := in_value_and(N);
        else
          in_value(N)(0 to C_NUM_DBG_CT - 1) := in_value_or(N);
        end if;
        for K in 0 to C_NUM_EXT_CT - 1 loop
          in_value(N)(K + C_NUM_DBG_CT) := Ext_Trig_In(K) and ext_in_ctrl(K);
        end loop;
      end loop;

      -- Determine in_value_ext from inputs and input select control registers
      for K in 0 to C_NUM_DBG_CT - 1 loop
        in_value_ext_or(K)  := '0';
        in_value_ext_and(K) := '1';
        for I in 0 to C_EN_WIDTH - 1 loop
          in_value_ext_or(K)  := in_value_ext_or(K)  or  (dbg_trig_in_i(I)(K) and in_ctrl(I)(K));
          in_value_ext_and(K) := in_value_ext_and(K) and (dbg_trig_in_i(I)(K) and in_ctrl(I)(K));
        end loop;
        if in_andor_ctrl = '1' then
          in_value_ext(0 to C_NUM_DBG_CT - 1) := in_value_ext_and;
        else
          in_value_ext(0 to C_NUM_DBG_CT - 1) := in_value_ext_or;
        end if;
        for K in 0 to C_NUM_EXT_CT - 1 loop
          in_value_ext(K + C_NUM_DBG_CT) := Ext_Trig_In(K) and ext_in_ctrl(K);
        end loop;
      end loop;

      -- Assign outputs from out_value based on out_ctrl control register
      dbg_trig_out_i <= (others => (others => '0'));
      for N in 0 to C_EN_WIDTH - 1 loop
        out_value := '1' & in_value(N) & "000";  -- 0000: constant 1, N=K: constant 0
        for K in 0 to C_NUM_DBG_CT - 1 loop
          index := to_integer(unsigned(out_ctrl(N)(K)));
          dbg_trig_out_i(N)(K) <= out_value(index);
        end loop;
      end loop;

      -- Assign external outputs from in_value based on ext_out_ctrl control register
      ext_trig_out_i <= (others => '0');
      out_value := '1' & in_value_ext & "000";  -- 0000: constant 1, 1101: constant 0
      for K in 0 to C_NUM_EXT_CT - 1 loop
        index := to_integer(unsigned(ext_out_ctrl(K)));
        ext_trig_out_i(K) <= out_value(index);
      end loop;

      -- Assign dbg_trig_ack_in_i from dbg_ack_value and Ext_Trig_Ack_Out
      -- Create combined acknowledge from all processors and external trig
      dbg_ack_value := (others => (others => '0'));
      dbg_trig_ack_in_i <= (others => (others => '0'));
      for K in 0 to C_NUM_DBG_CT - 1 loop
        for N in 0 to C_EN_WIDTH - 1 loop
          index := to_integer(unsigned(out_ctrl(N)(K)));
          out_ack_value := '0' & dbg_trig_ack_out_i(N) & Ext_Trig_Ack_Out & "000";
          dbg_ack_value(N)(K) := dbg_ack_value(N)(K) or out_ack_value(index);
        end loop;
      end loop;
      for K in 0 to C_NUM_DBG_CT - 1 loop
        for N in 0 to C_EN_WIDTH - 1 loop
          dbg_trig_ack_in_i(N)(K) <= dbg_ack_value(N)(K) and in_ctrl(N)(K);
        end loop;
      end loop;

      -- Assign ext_trig_ack_in_i from dbg_ack_value and Ext_Trig_Ack_Out
      -- Create combined acknowledge from all processors and external trig
      ext_ack_value := (others => '0');
      ext_trig_ack_in_i <= (others => '0');
      for K in 0 to C_NUM_EXT_CT - 1 loop
        index := to_integer(unsigned(ext_out_ctrl(K)));
        for N in 0 to C_EN_WIDTH - 1 loop
          out_ack_value := '0' & dbg_trig_ack_out_i(N) & Ext_Trig_Ack_Out & "000";
          ext_ack_value(K) := ext_ack_value(K) or out_ack_value(index);
        end loop;
      end loop;
      for K in 0 to C_NUM_EXT_CT - 1 loop
        ext_trig_ack_in_i(K) <= ext_ack_value(K) and ext_in_ctrl(K);
      end loop;
    end process Assign_Outputs;

    -----------------------------------------------------------------------------
    -- Control Registers:
    -- 4 output select + 8 input mask + and/or + 3 (index 0-7) = 16
    -- 4 output select + 4 input mask          + 2 (index 0-3) = 10
    -----------------------------------------------------------------------------

    Control_Registers : process (UPDATE, config_with_scan_reset)
      variable dbg_index : std_logic_vector(0 to 2);
      variable ext_index : std_logic_vector(0 to 1);
      variable K         : integer;
    begin
      if config_with_scan_reset = '1' then
        in_andor_ctrl <= '0';
        in_ctrl       <= (others => C_DBG_IN_CTRL);
        out_ctrl      <= (others => C_DBG_OUT_CTRL);
        ext_in_ctrl   <= C_EXT_IN_CTRL;
        ext_out_ctrl  <= C_EXT_OUT_CTRL;
      elsif UPDATE'event and UPDATE = '1' then
        if data_cmd = '1' and update1_ena = '1' then
          if command = CT_WRITE_CTRL and data_cmd = '1' then
            dbg_index := tdi_shifter(4 + C_NUM_DBG_CT + 1 to 4 + C_NUM_DBG_CT + 1 + 2);
            K := to_integer(unsigned(dbg_index));
            for I in 0 to C_EN_WIDTH - 1 loop
              if mb_debug_enabled_i(I) = '1' then
                out_ctrl(I)(K) <= tdi_shifter(0 to 3);
                in_ctrl(I)     <= tdi_shifter(4 to 4 + C_NUM_DBG_CT - 1);
              end if;
            end loop;
            in_andor_ctrl <= tdi_shifter(4 + C_NUM_DBG_CT);
          end if;
          if command = CT_WRITE_EXT_CTRL and data_cmd = '1' then
            ext_index := tdi_shifter(4 + C_NUM_EXT_CT to 4 + C_NUM_EXT_CT + 1);
            K := to_integer(unsigned(ext_index));
            ext_out_ctrl(K) <= tdi_shifter(0 to 3);
            ext_in_ctrl     <= tdi_shifter(4 to 4 + C_NUM_EXT_CT - 1);
          end if;
        end if;
      end if;
    end process Control_Registers;

    -----------------------------------------------------------------------------
    -- Status Register
    -----------------------------------------------------------------------------

    Assign_Status: process (dbg_trig_out_i, ext_trig_out_i, dbg_trig_in_i, Ext_Trig_In, mb_debug_enabled_i) is
    begin  -- process Assign_Status
      status_reg <= (others => '0');
      for I in 0 to C_EN_WIDTH - 1 loop
        if mb_debug_enabled_i(I) = '1' then
          status_reg(0 to C_NUM_DBG_CT * 2 - 1) <= dbg_trig_out_i(I) & dbg_trig_in_i(I);
        end if;
      end loop;
      status_reg(C_NUM_DBG_CT * 2 to C_NUM_CT * 2 - 1) <= ext_trig_out_i & Ext_Trig_In;
    end process Assign_Status;

    TDO_Register : process (DRCK, config_with_scan_reset) is
    begin  -- process TDO_Register
      if config_with_scan_reset = '1' then
        tdo_reg <= (others => '0');
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if CAPTURE = '1' and drck1_ena = '1' then
          -- CT_READ_STATUS
          tdo_reg <= status_reg;
        elsif SHIFT = '1' and drck1_ena = '1' then
          tdo_reg <= '0' & tdo_reg(tdo_reg'left to tdo_reg'right-1);
        end if;
      end if;
    end process TDO_Register;

    ct_TDO <= tdo_reg(tdo_reg'right);

    dbg_trig_in_i(0)  <= Dbg_Trig_In_0;
    dbg_trig_in_i(1)  <= Dbg_Trig_In_1;
    dbg_trig_in_i(2)  <= Dbg_Trig_In_2;
    dbg_trig_in_i(3)  <= Dbg_Trig_In_3;
    dbg_trig_in_i(4)  <= Dbg_Trig_In_4;
    dbg_trig_in_i(5)  <= Dbg_Trig_In_5;
    dbg_trig_in_i(6)  <= Dbg_Trig_In_6;
    dbg_trig_in_i(7)  <= Dbg_Trig_In_7;
    dbg_trig_in_i(8)  <= Dbg_Trig_In_8;
    dbg_trig_in_i(9)  <= Dbg_Trig_In_9;
    dbg_trig_in_i(10) <= Dbg_Trig_In_10;
    dbg_trig_in_i(11) <= Dbg_Trig_In_11;
    dbg_trig_in_i(12) <= Dbg_Trig_In_12;
    dbg_trig_in_i(13) <= Dbg_Trig_In_13;
    dbg_trig_in_i(14) <= Dbg_Trig_In_14;
    dbg_trig_in_i(15) <= Dbg_Trig_In_15;
    dbg_trig_in_i(16) <= Dbg_Trig_In_16;
    dbg_trig_in_i(17) <= Dbg_Trig_In_17;
    dbg_trig_in_i(18) <= Dbg_Trig_In_18;
    dbg_trig_in_i(19) <= Dbg_Trig_In_19;
    dbg_trig_in_i(20) <= Dbg_Trig_In_20;
    dbg_trig_in_i(21) <= Dbg_Trig_In_21;
    dbg_trig_in_i(22) <= Dbg_Trig_In_22;
    dbg_trig_in_i(23) <= Dbg_Trig_In_23;
    dbg_trig_in_i(24) <= Dbg_Trig_In_24;
    dbg_trig_in_i(25) <= Dbg_Trig_In_25;
    dbg_trig_in_i(26) <= Dbg_Trig_In_26;
    dbg_trig_in_i(27) <= Dbg_Trig_In_27;
    dbg_trig_in_i(28) <= Dbg_Trig_In_28;
    dbg_trig_in_i(29) <= Dbg_Trig_In_29;
    dbg_trig_in_i(30) <= Dbg_Trig_In_30;
    dbg_trig_in_i(31) <= Dbg_Trig_In_31;

    dbg_trig_ack_out_i(0)  <= Dbg_Trig_Ack_Out_0;
    dbg_trig_ack_out_i(1)  <= Dbg_Trig_Ack_Out_1;
    dbg_trig_ack_out_i(2)  <= Dbg_Trig_Ack_Out_2;
    dbg_trig_ack_out_i(3)  <= Dbg_Trig_Ack_Out_3;
    dbg_trig_ack_out_i(4)  <= Dbg_Trig_Ack_Out_4;
    dbg_trig_ack_out_i(5)  <= Dbg_Trig_Ack_Out_5;
    dbg_trig_ack_out_i(6)  <= Dbg_Trig_Ack_Out_6;
    dbg_trig_ack_out_i(7)  <= Dbg_Trig_Ack_Out_7;
    dbg_trig_ack_out_i(8)  <= Dbg_Trig_Ack_Out_8;
    dbg_trig_ack_out_i(9)  <= Dbg_Trig_Ack_Out_9;
    dbg_trig_ack_out_i(10) <= Dbg_Trig_Ack_Out_10;
    dbg_trig_ack_out_i(11) <= Dbg_Trig_Ack_Out_11;
    dbg_trig_ack_out_i(12) <= Dbg_Trig_Ack_Out_12;
    dbg_trig_ack_out_i(13) <= Dbg_Trig_Ack_Out_13;
    dbg_trig_ack_out_i(14) <= Dbg_Trig_Ack_Out_14;
    dbg_trig_ack_out_i(15) <= Dbg_Trig_Ack_Out_15;
    dbg_trig_ack_out_i(16) <= Dbg_Trig_Ack_Out_16;
    dbg_trig_ack_out_i(17) <= Dbg_Trig_Ack_Out_17;
    dbg_trig_ack_out_i(18) <= Dbg_Trig_Ack_Out_18;
    dbg_trig_ack_out_i(19) <= Dbg_Trig_Ack_Out_19;
    dbg_trig_ack_out_i(20) <= Dbg_Trig_Ack_Out_20;
    dbg_trig_ack_out_i(21) <= Dbg_Trig_Ack_Out_21;
    dbg_trig_ack_out_i(22) <= Dbg_Trig_Ack_Out_22;
    dbg_trig_ack_out_i(23) <= Dbg_Trig_Ack_Out_23;
    dbg_trig_ack_out_i(24) <= Dbg_Trig_Ack_Out_24;
    dbg_trig_ack_out_i(25) <= Dbg_Trig_Ack_Out_25;
    dbg_trig_ack_out_i(26) <= Dbg_Trig_Ack_Out_26;
    dbg_trig_ack_out_i(27) <= Dbg_Trig_Ack_Out_27;
    dbg_trig_ack_out_i(28) <= Dbg_Trig_Ack_Out_28;
    dbg_trig_ack_out_i(29) <= Dbg_Trig_Ack_Out_29;
    dbg_trig_ack_out_i(30) <= Dbg_Trig_Ack_Out_30;
    dbg_trig_ack_out_i(31) <= Dbg_Trig_Ack_Out_31;
  end generate Use_Cross_Trigger;

  No_Cross_Trigger : if (C_USE_CROSS_TRIGGER = 0) generate
  begin
    dbg_trig_ack_in_i <= (others => (others => '0'));
    dbg_trig_out_i    <= (others => (others => '0'));
    ext_trig_ack_in_i <= (others => '0');
    ext_trig_out_i    <= (others => '0');

    ct_TDO <= '0';
  end generate No_Cross_Trigger;

  Dbg_Trig_Ack_In_0  <= dbg_trig_ack_in_i(0);
  Dbg_Trig_Ack_In_1  <= dbg_trig_ack_in_i(1);
  Dbg_Trig_Ack_In_2  <= dbg_trig_ack_in_i(2);
  Dbg_Trig_Ack_In_3  <= dbg_trig_ack_in_i(3);
  Dbg_Trig_Ack_In_4  <= dbg_trig_ack_in_i(4);
  Dbg_Trig_Ack_In_5  <= dbg_trig_ack_in_i(5);
  Dbg_Trig_Ack_In_6  <= dbg_trig_ack_in_i(6);
  Dbg_Trig_Ack_In_7  <= dbg_trig_ack_in_i(7);
  Dbg_Trig_Ack_In_8  <= dbg_trig_ack_in_i(8);
  Dbg_Trig_Ack_In_9  <= dbg_trig_ack_in_i(9);
  Dbg_Trig_Ack_In_10 <= dbg_trig_ack_in_i(10);
  Dbg_Trig_Ack_In_11 <= dbg_trig_ack_in_i(11);
  Dbg_Trig_Ack_In_12 <= dbg_trig_ack_in_i(12);
  Dbg_Trig_Ack_In_13 <= dbg_trig_ack_in_i(13);
  Dbg_Trig_Ack_In_14 <= dbg_trig_ack_in_i(14);
  Dbg_Trig_Ack_In_15 <= dbg_trig_ack_in_i(15);
  Dbg_Trig_Ack_In_16 <= dbg_trig_ack_in_i(16);
  Dbg_Trig_Ack_In_17 <= dbg_trig_ack_in_i(17);
  Dbg_Trig_Ack_In_18 <= dbg_trig_ack_in_i(18);
  Dbg_Trig_Ack_In_19 <= dbg_trig_ack_in_i(19);
  Dbg_Trig_Ack_In_20 <= dbg_trig_ack_in_i(20);
  Dbg_Trig_Ack_In_21 <= dbg_trig_ack_in_i(21);
  Dbg_Trig_Ack_In_22 <= dbg_trig_ack_in_i(22);
  Dbg_Trig_Ack_In_23 <= dbg_trig_ack_in_i(23);
  Dbg_Trig_Ack_In_24 <= dbg_trig_ack_in_i(24);
  Dbg_Trig_Ack_In_25 <= dbg_trig_ack_in_i(25);
  Dbg_Trig_Ack_In_26 <= dbg_trig_ack_in_i(26);
  Dbg_Trig_Ack_In_27 <= dbg_trig_ack_in_i(27);
  Dbg_Trig_Ack_In_28 <= dbg_trig_ack_in_i(28);
  Dbg_Trig_Ack_In_29 <= dbg_trig_ack_in_i(29);
  Dbg_Trig_Ack_In_30 <= dbg_trig_ack_in_i(30);
  Dbg_Trig_Ack_In_31 <= dbg_trig_ack_in_i(31);

  Dbg_Trig_Out_0     <= dbg_trig_out_i(0);
  Dbg_Trig_Out_1     <= dbg_trig_out_i(1);
  Dbg_Trig_Out_2     <= dbg_trig_out_i(2);
  Dbg_Trig_Out_3     <= dbg_trig_out_i(3);
  Dbg_Trig_Out_4     <= dbg_trig_out_i(4);
  Dbg_Trig_Out_5     <= dbg_trig_out_i(5);
  Dbg_Trig_Out_6     <= dbg_trig_out_i(6);
  Dbg_Trig_Out_7     <= dbg_trig_out_i(7);
  Dbg_Trig_Out_8     <= dbg_trig_out_i(8);
  Dbg_Trig_Out_9     <= dbg_trig_out_i(9);
  Dbg_Trig_Out_10    <= dbg_trig_out_i(10);
  Dbg_Trig_Out_11    <= dbg_trig_out_i(11);
  Dbg_Trig_Out_12    <= dbg_trig_out_i(12);
  Dbg_Trig_Out_13    <= dbg_trig_out_i(13);
  Dbg_Trig_Out_14    <= dbg_trig_out_i(14);
  Dbg_Trig_Out_15    <= dbg_trig_out_i(15);
  Dbg_Trig_Out_16    <= dbg_trig_out_i(16);
  Dbg_Trig_Out_17    <= dbg_trig_out_i(17);
  Dbg_Trig_Out_18    <= dbg_trig_out_i(18);
  Dbg_Trig_Out_19    <= dbg_trig_out_i(19);
  Dbg_Trig_Out_20    <= dbg_trig_out_i(20);
  Dbg_Trig_Out_21    <= dbg_trig_out_i(21);
  Dbg_Trig_Out_22    <= dbg_trig_out_i(22);
  Dbg_Trig_Out_23    <= dbg_trig_out_i(23);
  Dbg_Trig_Out_24    <= dbg_trig_out_i(24);
  Dbg_Trig_Out_25    <= dbg_trig_out_i(25);
  Dbg_Trig_Out_26    <= dbg_trig_out_i(26);
  Dbg_Trig_Out_27    <= dbg_trig_out_i(27);
  Dbg_Trig_Out_28    <= dbg_trig_out_i(28);
  Dbg_Trig_Out_29    <= dbg_trig_out_i(29);
  Dbg_Trig_Out_30    <= dbg_trig_out_i(30);
  Dbg_Trig_Out_31    <= dbg_trig_out_i(31);

  Ext_Trig_Ack_In    <= ext_trig_ack_in_i;
  Ext_Trig_Out       <= ext_trig_out_i;

  -----------------------------------------------------------------------------
  -- Trace section (external, AXI stream, AXI master)
  -----------------------------------------------------------------------------

  Use_Trace_External : if (C_TRACE_OUTPUT = 1) generate
    signal test_pattern     : std_logic_vector(0 to 3) := (others => '0');
    signal test_timed       : std_logic := '0';
    signal test_cont        : std_logic := '0';
    signal delay            : std_logic_vector(0 to 7) := (others => '0');
    signal new_test_pattern : std_logic_vector(0 to 3) := (others => '0');
    signal new_test_start   : std_logic := '0';
    signal new_test_stop    : std_logic := '0';
    signal new_test_timed   : std_logic := '0';
    signal new_delay        : std_logic_vector(0 to 7) := (others => '0');
    signal trace_stopped_i  : std_logic := '0';
    signal execute          : std_logic := '0';
    signal execute_1        : std_logic := '0';
    signal execute_2        : std_logic := '0';
    signal execute_3        : std_logic := '0';
    signal data_cmd_reset   : std_logic;

    attribute ASYNC_REG : string;
    attribute ASYNC_REG of execute_1       : signal is "TRUE";
    attribute ASYNC_REG of execute_2       : signal is "TRUE";
  begin

    -----------------------------------------------------------------------------
    -- Control Register (14 bits)
    -----------------------------------------------------------------------------
    Control_Register : process (UPDATE, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        test_pattern <= "0000";           -- no test pattern
        test_timed   <= '0';              -- no timed test pattern
        test_cont    <= '0';              -- no continuous test pattern
        delay        <= (others => '0');  -- no delay
      elsif UPDATE'event and UPDATE = '1' then
        if command = TRACE_WRITE_CONTROL and data_cmd = '1' and update1_ena = '1' then
          test_pattern <= tdi_shifter(0 to 3);
          test_timed   <= tdi_shifter(4);
          test_cont    <= tdi_shifter(5);
          delay        <= tdi_shifter(6 to 13);
        end if;
      end if;
    end process Control_Register;

    data_cmd_reset <= '0' when Scan_En = '1' else
                      not data_cmd when Scan_Reset_Sel = '0' else
                      Scan_Reset;

    Execute_Command : process (UPDATE, data_cmd_reset)
    begin  -- process Execute_Command
      if data_cmd_reset = '1' then
        execute   <= '0';
      elsif UPDATE'event and UPDATE = '1' then
        if command = TRACE_WRITE_CONTROL and update1_ena = '1' then
          execute <= '1';
        elsif update1_ena = '1' then
          execute <= '0';
        end if;
      end if;
    end process Execute_Command;

    Execute_Test_Command : process (Trace_Clk)
    begin  -- process Execute_Test_Command
      if Trace_Clk'event and Trace_Clk = '1' then
        if Trace_Reset = '1' then
          execute_3     <= '0';
          execute_2     <= '0';
          execute_1     <= '0';
        else
          if (execute_3 = '0') and (execute_2 = '1') then
            -- Execute test
            new_test_pattern <= test_pattern;
            new_test_start   <= test_cont or test_timed;
            new_test_stop    <= not (test_cont or test_timed);
            new_test_timed   <= test_timed;
            new_delay        <= delay;
            trace_stopped_i  <= test_cont or test_timed;
          else
            new_test_start   <= '0';
            new_test_stop    <= '0';
          end if;
          execute_3 <= execute_2;
          execute_2 <= execute_1;
          execute_1 <= execute;
        end if;
      end if;
    end process Execute_Test_Command;

    Trace_Test_Pattern <= new_test_pattern;
    Trace_Test_Start   <= new_test_start;
    Trace_Test_Stop    <= new_test_stop;
    Trace_Test_Timed   <= new_test_timed;
    Trace_Delay        <= new_delay;
    Trace_Stopped      <= trace_stopped_i;

    -- Unused
    Master_dwr_addr    <= (others => '0');
    Master_dwr_len     <= (others => '0');
    trace_TDO          <= '0';
  end generate Use_Trace_External;

  Use_Trace_AXI_Stream : if (C_TRACE_OUTPUT = 2) generate
    signal delay : std_logic_vector(0 to 7) := (others => '0');
  begin

    -----------------------------------------------------------------------------
    -- Control Register (8 bits)
    -----------------------------------------------------------------------------
    Control_Register : process (UPDATE, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        delay <= (others => '0');  -- no delay
      elsif UPDATE'event and UPDATE = '1' then
        if command = TRACE_WRITE_CONTROL and data_cmd = '1' and update1_ena = '1' then
          delay <= tdi_shifter(0 to 7);
        end if;
      end if;
    end process Control_Register;

    Trace_Delay        <= delay;

    -- Unused
    Trace_Test_Pattern <= (others => '0');
    Trace_Test_Start   <= '0';
    Trace_Test_Stop    <= '0';
    Trace_Test_Timed   <= '0';
    Trace_Stopped      <= '0';
    Master_dwr_addr    <= (others => '0');
    Master_dwr_len     <= (others => '0');
    trace_TDO          <= '0';
  end generate Use_Trace_AXI_Stream;

  Use_Trace_AXI_Master : if (C_TRACE_OUTPUT = 3) generate
    constant C_BURST_LEN  : integer := 4;  -- Burst length 4 - Packet size 4*5 = 20

    signal full_stop      : std_logic := '0';
    signal wrap           : std_logic;
    signal wr_resp        : std_logic_vector(0 to 1);
    signal output         : std_logic_vector(0 to 31);
    signal status         : std_logic_vector(0 to 2);
    signal low_addr       : std_logic_vector(0 to 15) := (others => '0');
    signal high_addr      : std_logic_vector(0 to 15) := (others => '0');
    signal execute        : std_logic := '0';
    signal execute_1      : std_logic := '0';
    signal execute_2      : std_logic := '0';
    signal execute_3      : std_logic := '0';
    signal current_addr   : std_logic_vector(0 to 29);
    signal next_addr      : std_logic_vector(0 to 29);
    signal data_cmd_reset : std_logic;

    attribute ASYNC_REG : string;
    attribute ASYNC_REG of execute_1       : signal is "TRUE";
    attribute ASYNC_REG of execute_2       : signal is "TRUE";
  begin

    -----------------------------------------------------------------------------
    -- Control Register (1 bit)
    -----------------------------------------------------------------------------
    Control_Register : process (UPDATE, config_with_scan_reset)
    begin
      if config_with_scan_reset = '1' then
        full_stop <= '0';  -- no stop when full
      elsif UPDATE'event and UPDATE = '1' then
        if command = TRACE_WRITE_CONTROL and data_cmd = '1' and update1_ena = '1' then
          full_stop <= tdi_shifter(0);
        end if;
      end if;
    end process Control_Register;

    -- Unused
    Trace_Test_Pattern <= (others => '0');
    Trace_Test_Start   <= '0';
    Trace_Test_Stop    <= '0';
    Trace_Test_Timed   <= '0';
    Trace_Delay        <= (others => '0');

    -----------------------------------------------------------------------------
    -- Status Register
    -----------------------------------------------------------------------------

    -- We don't need to synchronize status with DRCK clock
    status(0)      <= wrap;
    status(1 to 2) <= wr_resp;

    Output_Register : process (DRCK, config_with_scan_reset) is
    begin  -- process Output_Register
      if config_with_scan_reset = '1' then
        output <= (others => '0');
      elsif DRCK'event and DRCK = '1' then  -- rising clock edge
        if CAPTURE = '1' and drck1_ena = '1' then
          case Command is
            when TRACE_READ_STATUS =>
              output <= (others => '0');
              output(output'right-status'length+1 to output'right) <= status;
            when others =>
              output <= current_addr & "00";
          end case;
        elsif SHIFT = '1' and drck1_ena = '1' then
          output <= '0' & output(output'left to output'right-1);
        end if;
      end if;
    end process Output_Register;

    trace_TDO <= output(output'right);

    -----------------------------------------------------------------------------
    -- Low and High Address Registers
    -----------------------------------------------------------------------------
    Address_Registers : process (UPDATE, config_with_scan_reset) is
    begin  -- process Address_Registers
      if config_with_scan_reset = '1' then
        low_addr  <= (others => '0');
        high_addr <= (others => '0');
      elsif UPDATE'event and UPDATE = '1' then
        if data_cmd = '1' and update1_ena = '1' then
          if command = TRACE_WRITE_LOW_ADDR then
            low_addr <= tdi_shifter(0 to 15);
          end if;
          if command = TRACE_WRITE_HIGH_ADDR then
            high_addr <= tdi_shifter(0 to 15);
          end if;
        end if;
      end if;
    end process Address_Registers;

    -----------------------------------------------------------------------------
    -- Handle current address and status
    -----------------------------------------------------------------------------
    data_cmd_reset <= '0' when Scan_En = '1' else
                      not data_cmd when Scan_Reset_Sel = '0' else
                      Scan_Reset;

    Execute_Command : process (UPDATE, data_cmd_reset)
    begin  -- process Execute_Command
      if data_cmd_reset = '1' then
        execute   <= '0';
      elsif UPDATE'event and UPDATE = '1' then
        if command = TRACE_WRITE_CONTROL and update1_ena = '1' then
          execute <= '1';
        elsif update1_ena = '1' then
          execute <= '0';
        end if;
      end if;
    end process Execute_Command;

    Execute_Addr_Status_Command : process (M_AXI_ACLK)
    begin  -- process Execute_Addr_Status_Command
      if M_AXI_ACLK'event and M_AXI_ACLK = '1' then
        if M_AXI_ARESETn = '0' then
          execute_3     <= '0';
          execute_2     <= '0';
          execute_1     <= '0';
          wrap          <= '0';
          wr_resp       <= (others => '0');
          current_addr  <= (others => '0');
          Trace_Stopped <= '0';
        else
          if (execute_3 = '0') and (execute_2 = '1') then
            -- Reset current address and clear status
            wrap          <= '0';
            wr_resp       <= (others => '0');
            current_addr  <= low_addr & (16 to 29 => '0');
            Trace_Stopped <= '0';
          else
            -- Increment current address and set sticky response status after each write
            if Master_dwr_done = '1' then
              if wr_resp = "00" then
                wr_resp <= Master_dwr_resp;
              end if;
              current_addr <= next_addr;
            end if;
            -- Stop trace or wrap if buffer full
            if current_addr(0 to 15) = high_addr and current_addr(16 to 25) = (16 to 25 => '1') then
              if full_stop = '1' then
                Trace_Stopped <= '1';
              else
                wrap          <= '1';
                current_addr  <= low_addr & (16 to 29 => '0');
              end if;
            end if;
          end if;
          execute_3 <= execute_2;
          execute_2 <= execute_1;
          execute_1 <= execute;
        end if;
      end if;
    end process Execute_Addr_Status_Command;

    next_addr <= std_logic_vector(unsigned(current_addr) + C_BURST_LEN);

    Master_dwr_addr <= current_addr & "00";
    Master_dwr_len  <= std_logic_vector(to_unsigned(C_BURST_LEN - 1, 5));

  end generate Use_Trace_AXI_Master;

  No_Trace : if (C_TRACE_OUTPUT = 0) generate
  begin
    Trace_Test_Pattern <= (others => '0');
    Trace_Test_Start   <= '0';
    Trace_Test_Stop    <= '0';
    Trace_Test_Timed   <= '0';
    Trace_Delay        <= (others => '0');
    Trace_Stopped      <= '0';

    Master_dwr_addr    <= (others => '0');
    Master_dwr_len     <= (others => '0');

    trace_TDO          <= '0';
  end generate No_Trace;

end architecture IMP;


-------------------------------------------------------------------------------
-- mdm_core.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2003-2014,2016-2017 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm_core.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              mdm_core.vhd
--                jtag_control.vhd
--                arbiter.vhd
--
-------------------------------------------------------------------------------
-- Author:          goran
--
-- History:
--   goran   2003-02-13    First Version
--   stefana 2012-03-16    Added support for 32 processors and external BSCAN
--   stefana 2012-12-14    Removed legacy interfaces
--   stefana 2013-11-01    Added extended debug: debug register access, debug
--                         memory access, cross trigger support
--   stefana 2014-04-30    Added external trace support
--   stefana 2016-04-25    Added parallel synchronous debug interface
--   stefana 2016-06-01    Added wrappers for unisim primitives
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

entity MDM_Core is
  generic (
    C_TARGET               : TARGET_FAMILY_TYPE;
    C_JTAG_CHAIN           : integer;
    C_USE_BSCAN            : integer;
    C_USE_CONFIG_RESET     : integer := 0;
    C_USE_SRL16            : string;
    C_DEBUG_INTERFACE      : integer;
    C_MB_DBG_PORTS         : integer;
    C_EN_WIDTH             : integer;
    C_DBG_REG_ACCESS       : integer;
    C_REG_NUM_CE           : integer;
    C_REG_DATA_WIDTH       : integer;
    C_DBG_MEM_ACCESS       : integer;
    C_S_AXI_ADDR_WIDTH     : integer;
    C_S_AXI_ACLK_FREQ_HZ   : integer;
    C_M_AXI_ADDR_WIDTH     : integer;
    C_M_AXI_DATA_WIDTH     : integer;
    C_USE_CROSS_TRIGGER    : integer;
    C_EXT_TRIG_RESET_VALUE : std_logic_vector(0 to 19);
    C_USE_UART             : integer;
    C_UART_WIDTH           : integer := 8;
    C_TRACE_OUTPUT         : integer;
    C_TRACE_DATA_WIDTH     : integer;
    C_TRACE_ASYNC_RESET    : integer;
    C_TRACE_CLK_FREQ_HZ    : integer;
    C_TRACE_CLK_OUT_PHASE  : integer;
    C_TRACE_PROTOCOL       : integer;
    C_TRACE_ID             : integer;
    C_M_AXIS_DATA_WIDTH    : integer;
    C_M_AXIS_ID_WIDTH      : integer
  );

  port (
    -- Global signals
    Config_Reset    : in std_logic;
    Scan_Reset_Sel  : in std_logic;
    Scan_Reset      : in std_logic;
    Scan_En         : in std_logic;

    M_AXIS_ACLK     : in std_logic;
    M_AXIS_ARESETN  : in std_logic;

    Interrupt       : out std_logic;
    Ext_BRK         : out std_logic;
    Ext_NM_BRK      : out std_logic;
    Debug_SYS_Rst   : out std_logic;

    -- Debug Register Access signals
    DbgReg_DRCK   : out std_logic;
    DbgReg_UPDATE : out std_logic;
    DbgReg_Select : out std_logic;
    JTAG_Busy     : in  std_logic;
    S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

    -- IPIC signals
    bus2ip_clk    : in  std_logic;
    bus2ip_resetn : in  std_logic;
    bus2ip_data   : in  std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);
    bus2ip_rdce   : in  std_logic_vector(0 to C_REG_NUM_CE-1);
    bus2ip_wrce   : in  std_logic_vector(0 to C_REG_NUM_CE-1);
    ip2bus_rdack  : out std_logic;
    ip2bus_wrack  : out std_logic;
    ip2bus_error  : out std_logic;
    ip2bus_data   : out std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

    -- Bus Master signals
    MB_Debug_Enabled   : out std_logic_vector(C_EN_WIDTH-1 downto 0);

    M_AXI_ACLK         : in  std_logic;
    M_AXI_ARESETn      : in  std_logic;

    Master_rd_start    : out std_logic;
    Master_rd_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_rd_len      : out std_logic_vector(4 downto 0);
    Master_rd_size     : out std_logic_vector(1 downto 0);
    Master_rd_excl     : out std_logic;
    Master_rd_idle     : in  std_logic;
    Master_rd_resp     : in  std_logic_vector(1 downto 0);
    Master_wr_start    : out std_logic;
    Master_wr_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_wr_len      : out std_logic_vector(4 downto 0);
    Master_wr_size     : out std_logic_vector(1 downto 0);
    Master_wr_excl     : out std_logic;
    Master_wr_idle     : in  std_logic;
    Master_wr_resp     : in  std_logic_vector(1 downto 0);
    Master_data_rd     : out std_logic;
    Master_data_out    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_data_exists : in  std_logic;
    Master_data_wr     : out std_logic;
    Master_data_in     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_data_empty  : in  std_logic;

    Master_dwr_addr    : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    Master_dwr_len     : out std_logic_vector(4 downto 0);
    Master_dwr_data    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    Master_dwr_start   : out std_logic;
    Master_dwr_next    : in  std_logic;
    Master_dwr_done    : in  std_logic;
    Master_dwr_resp    : in  std_logic_vector(1 downto 0);

    -- JTAG signals
    JTAG_TDI     : in  std_logic;
    JTAG_RESET   : in  std_logic;
    UPDATE       : in  std_logic;
    JTAG_SHIFT   : in  std_logic;
    JTAG_CAPTURE : in  std_logic;
    SEL          : in  std_logic;
    DRCK         : in  std_logic;
    JTAG_TDO     : out std_logic;

    -- External Trace AXI Stream output
    M_AXIS_TDATA       : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TID         : out std_logic_vector(C_M_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS_TREADY      : in  std_logic;
    M_AXIS_TVALID      : out std_logic;

    -- External Trace output
    TRACE_CLK_OUT      : out std_logic;
    TRACE_CLK          : in  std_logic;
    TRACE_CTL          : out std_logic;
    TRACE_DATA         : out std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0);

    -- MicroBlaze Debug Signals
    Dbg_Disable_0      : out std_logic;
    Dbg_Clk_0          : out std_logic;
    Dbg_TDI_0          : out std_logic;
    Dbg_TDO_0          : in  std_logic;
    Dbg_Reg_En_0       : out std_logic_vector(0 to 7);
    Dbg_Capture_0      : out std_logic;
    Dbg_Shift_0        : out std_logic;
    Dbg_Update_0       : out std_logic;
    Dbg_Rst_0          : out std_logic;
    Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_0 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_0        : out std_logic;
    Dbg_TrData_0       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_0      : out std_logic;
    Dbg_TrValid_0      : in  std_logic;
    Dbg_AWADDR_0       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_0      : out std_logic;
    Dbg_AWREADY_0      : in  std_logic;
    Dbg_WDATA_0        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_0       : out std_logic;
    Dbg_WREADY_0       : in  std_logic;
    Dbg_BRESP_0        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_0       : in  std_logic;
    Dbg_BREADY_0       : out std_logic;
    Dbg_ARADDR_0       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_0      : out std_logic;
    Dbg_ARREADY_0      : in  std_logic;
    Dbg_RDATA_0        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_0        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_0       : in  std_logic;
    Dbg_RREADY_0       : out std_logic;

    Dbg_Disable_1      : out std_logic;
    Dbg_Clk_1          : out std_logic;
    Dbg_TDI_1          : out std_logic;
    Dbg_TDO_1          : in  std_logic;
    Dbg_Reg_En_1       : out std_logic_vector(0 to 7);
    Dbg_Capture_1      : out std_logic;
    Dbg_Shift_1        : out std_logic;
    Dbg_Update_1       : out std_logic;
    Dbg_Rst_1          : out std_logic;
    Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_1 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_1        : out std_logic;
    Dbg_TrData_1       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_1      : out std_logic;
    Dbg_TrValid_1      : in  std_logic;
    Dbg_AWADDR_1       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_1      : out std_logic;
    Dbg_AWREADY_1      : in  std_logic;
    Dbg_WDATA_1        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_1       : out std_logic;
    Dbg_WREADY_1       : in  std_logic;
    Dbg_BRESP_1        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_1       : in  std_logic;
    Dbg_BREADY_1       : out std_logic;
    Dbg_ARADDR_1       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_1      : out std_logic;
    Dbg_ARREADY_1      : in  std_logic;
    Dbg_RDATA_1        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_1        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_1       : in  std_logic;
    Dbg_RREADY_1       : out std_logic;

    Dbg_Disable_2      : out std_logic;
    Dbg_Clk_2          : out std_logic;
    Dbg_TDI_2          : out std_logic;
    Dbg_TDO_2          : in  std_logic;
    Dbg_Reg_En_2       : out std_logic_vector(0 to 7);
    Dbg_Capture_2      : out std_logic;
    Dbg_Shift_2        : out std_logic;
    Dbg_Update_2       : out std_logic;
    Dbg_Rst_2          : out std_logic;
    Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_2 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_2        : out std_logic;
    Dbg_TrData_2       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_2      : out std_logic;
    Dbg_TrValid_2      : in  std_logic;
    Dbg_AWADDR_2       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_2      : out std_logic;
    Dbg_AWREADY_2      : in  std_logic;
    Dbg_WDATA_2        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_2       : out std_logic;
    Dbg_WREADY_2       : in  std_logic;
    Dbg_BRESP_2        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_2       : in  std_logic;
    Dbg_BREADY_2       : out std_logic;
    Dbg_ARADDR_2       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_2      : out std_logic;
    Dbg_ARREADY_2      : in  std_logic;
    Dbg_RDATA_2        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_2        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_2       : in  std_logic;
    Dbg_RREADY_2       : out std_logic;

    Dbg_Disable_3      : out std_logic;
    Dbg_Clk_3          : out std_logic;
    Dbg_TDI_3          : out std_logic;
    Dbg_TDO_3          : in  std_logic;
    Dbg_Reg_En_3       : out std_logic_vector(0 to 7);
    Dbg_Capture_3      : out std_logic;
    Dbg_Shift_3        : out std_logic;
    Dbg_Update_3       : out std_logic;
    Dbg_Rst_3          : out std_logic;
    Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_3 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_3        : out std_logic;
    Dbg_TrData_3       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_3      : out std_logic;
    Dbg_TrValid_3      : in  std_logic;
    Dbg_AWADDR_3       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_3      : out std_logic;
    Dbg_AWREADY_3      : in  std_logic;
    Dbg_WDATA_3        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_3       : out std_logic;
    Dbg_WREADY_3       : in  std_logic;
    Dbg_BRESP_3        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_3       : in  std_logic;
    Dbg_BREADY_3       : out std_logic;
    Dbg_ARADDR_3       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_3      : out std_logic;
    Dbg_ARREADY_3      : in  std_logic;
    Dbg_RDATA_3        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_3        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_3       : in  std_logic;
    Dbg_RREADY_3       : out std_logic;

    Dbg_Disable_4      : out std_logic;
    Dbg_Clk_4          : out std_logic;
    Dbg_TDI_4          : out std_logic;
    Dbg_TDO_4          : in  std_logic;
    Dbg_Reg_En_4       : out std_logic_vector(0 to 7);
    Dbg_Capture_4      : out std_logic;
    Dbg_Shift_4        : out std_logic;
    Dbg_Update_4       : out std_logic;
    Dbg_Rst_4          : out std_logic;
    Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_4 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_4        : out std_logic;
    Dbg_TrData_4       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_4      : out std_logic;
    Dbg_TrValid_4      : in  std_logic;
    Dbg_AWADDR_4       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_4      : out std_logic;
    Dbg_AWREADY_4      : in  std_logic;
    Dbg_WDATA_4        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_4       : out std_logic;
    Dbg_WREADY_4       : in  std_logic;
    Dbg_BRESP_4        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_4       : in  std_logic;
    Dbg_BREADY_4       : out std_logic;
    Dbg_ARADDR_4       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_4      : out std_logic;
    Dbg_ARREADY_4      : in  std_logic;
    Dbg_RDATA_4        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_4        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_4       : in  std_logic;
    Dbg_RREADY_4       : out std_logic;

    Dbg_Disable_5      : out std_logic;
    Dbg_Clk_5          : out std_logic;
    Dbg_TDI_5          : out std_logic;
    Dbg_TDO_5          : in  std_logic;
    Dbg_Reg_En_5       : out std_logic_vector(0 to 7);
    Dbg_Capture_5      : out std_logic;
    Dbg_Shift_5        : out std_logic;
    Dbg_Update_5       : out std_logic;
    Dbg_Rst_5          : out std_logic;
    Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_5 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_5        : out std_logic;
    Dbg_TrData_5       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_5      : out std_logic;
    Dbg_TrValid_5      : in  std_logic;
    Dbg_AWADDR_5       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_5      : out std_logic;
    Dbg_AWREADY_5      : in  std_logic;
    Dbg_WDATA_5        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_5       : out std_logic;
    Dbg_WREADY_5       : in  std_logic;
    Dbg_BRESP_5        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_5       : in  std_logic;
    Dbg_BREADY_5       : out std_logic;
    Dbg_ARADDR_5       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_5      : out std_logic;
    Dbg_ARREADY_5      : in  std_logic;
    Dbg_RDATA_5        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_5        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_5       : in  std_logic;
    Dbg_RREADY_5       : out std_logic;

    Dbg_Disable_6      : out std_logic;
    Dbg_Clk_6          : out std_logic;
    Dbg_TDI_6          : out std_logic;
    Dbg_TDO_6          : in  std_logic;
    Dbg_Reg_En_6       : out std_logic_vector(0 to 7);
    Dbg_Capture_6      : out std_logic;
    Dbg_Shift_6        : out std_logic;
    Dbg_Update_6       : out std_logic;
    Dbg_Rst_6          : out std_logic;
    Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_6 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_6        : out std_logic;
    Dbg_TrData_6       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_6      : out std_logic;
    Dbg_TrValid_6      : in  std_logic;
    Dbg_AWADDR_6       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_6      : out std_logic;
    Dbg_AWREADY_6      : in  std_logic;
    Dbg_WDATA_6        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_6       : out std_logic;
    Dbg_WREADY_6       : in  std_logic;
    Dbg_BRESP_6        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_6       : in  std_logic;
    Dbg_BREADY_6       : out std_logic;
    Dbg_ARADDR_6       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_6      : out std_logic;
    Dbg_ARREADY_6      : in  std_logic;
    Dbg_RDATA_6        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_6        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_6       : in  std_logic;
    Dbg_RREADY_6       : out std_logic;

    Dbg_Disable_7      : out std_logic;
    Dbg_Clk_7          : out std_logic;
    Dbg_TDI_7          : out std_logic;
    Dbg_TDO_7          : in  std_logic;
    Dbg_Reg_En_7       : out std_logic_vector(0 to 7);
    Dbg_Capture_7      : out std_logic;
    Dbg_Shift_7        : out std_logic;
    Dbg_Update_7       : out std_logic;
    Dbg_Rst_7          : out std_logic;
    Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_7 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_7        : out std_logic;
    Dbg_TrData_7       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_7      : out std_logic;
    Dbg_TrValid_7      : in  std_logic;
    Dbg_AWADDR_7       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_7      : out std_logic;
    Dbg_AWREADY_7      : in  std_logic;
    Dbg_WDATA_7        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_7       : out std_logic;
    Dbg_WREADY_7       : in  std_logic;
    Dbg_BRESP_7        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_7       : in  std_logic;
    Dbg_BREADY_7       : out std_logic;
    Dbg_ARADDR_7       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_7      : out std_logic;
    Dbg_ARREADY_7      : in  std_logic;
    Dbg_RDATA_7        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_7        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_7       : in  std_logic;
    Dbg_RREADY_7       : out std_logic;

    Dbg_Disable_8      : out std_logic;
    Dbg_Clk_8          : out std_logic;
    Dbg_TDI_8          : out std_logic;
    Dbg_TDO_8          : in  std_logic;
    Dbg_Reg_En_8       : out std_logic_vector(0 to 7);
    Dbg_Capture_8      : out std_logic;
    Dbg_Shift_8        : out std_logic;
    Dbg_Update_8       : out std_logic;
    Dbg_Rst_8          : out std_logic;
    Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_8 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_8        : out std_logic;
    Dbg_TrData_8       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_8      : out std_logic;
    Dbg_TrValid_8      : in  std_logic;
    Dbg_AWADDR_8       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_8      : out std_logic;
    Dbg_AWREADY_8      : in  std_logic;
    Dbg_WDATA_8        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_8       : out std_logic;
    Dbg_WREADY_8       : in  std_logic;
    Dbg_BRESP_8        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_8       : in  std_logic;
    Dbg_BREADY_8       : out std_logic;
    Dbg_ARADDR_8       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_8      : out std_logic;
    Dbg_ARREADY_8      : in  std_logic;
    Dbg_RDATA_8        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_8        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_8       : in  std_logic;
    Dbg_RREADY_8       : out std_logic;

    Dbg_Disable_9      : out std_logic;
    Dbg_Clk_9          : out std_logic;
    Dbg_TDI_9          : out std_logic;
    Dbg_TDO_9          : in  std_logic;
    Dbg_Reg_En_9       : out std_logic_vector(0 to 7);
    Dbg_Capture_9      : out std_logic;
    Dbg_Shift_9        : out std_logic;
    Dbg_Update_9       : out std_logic;
    Dbg_Rst_9          : out std_logic;
    Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_9 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_9        : out std_logic;
    Dbg_TrData_9       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_9      : out std_logic;
    Dbg_TrValid_9      : in  std_logic;
    Dbg_AWADDR_9       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_9      : out std_logic;
    Dbg_AWREADY_9      : in  std_logic;
    Dbg_WDATA_9        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_9       : out std_logic;
    Dbg_WREADY_9       : in  std_logic;
    Dbg_BRESP_9        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_9       : in  std_logic;
    Dbg_BREADY_9       : out std_logic;
    Dbg_ARADDR_9       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_9      : out std_logic;
    Dbg_ARREADY_9      : in  std_logic;
    Dbg_RDATA_9        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_9        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_9       : in  std_logic;
    Dbg_RREADY_9       : out std_logic;

    Dbg_Disable_10      : out std_logic;
    Dbg_Clk_10          : out std_logic;
    Dbg_TDI_10          : out std_logic;
    Dbg_TDO_10          : in  std_logic;
    Dbg_Reg_En_10       : out std_logic_vector(0 to 7);
    Dbg_Capture_10      : out std_logic;
    Dbg_Shift_10        : out std_logic;
    Dbg_Update_10       : out std_logic;
    Dbg_Rst_10          : out std_logic;
    Dbg_Trig_In_10      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_10  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_10     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_10        : out std_logic;
    Dbg_TrData_10       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_10      : out std_logic;
    Dbg_TrValid_10      : in  std_logic;
    Dbg_AWADDR_10       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_10      : out std_logic;
    Dbg_AWREADY_10      : in  std_logic;
    Dbg_WDATA_10        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_10       : out std_logic;
    Dbg_WREADY_10       : in  std_logic;
    Dbg_BRESP_10        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_10       : in  std_logic;
    Dbg_BREADY_10       : out std_logic;
    Dbg_ARADDR_10       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_10      : out std_logic;
    Dbg_ARREADY_10      : in  std_logic;
    Dbg_RDATA_10        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_10        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_10       : in  std_logic;
    Dbg_RREADY_10       : out std_logic;

    Dbg_Disable_11      : out std_logic;
    Dbg_Clk_11          : out std_logic;
    Dbg_TDI_11          : out std_logic;
    Dbg_TDO_11          : in  std_logic;
    Dbg_Reg_En_11       : out std_logic_vector(0 to 7);
    Dbg_Capture_11      : out std_logic;
    Dbg_Shift_11        : out std_logic;
    Dbg_Update_11       : out std_logic;
    Dbg_Rst_11          : out std_logic;
    Dbg_Trig_In_11      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_11  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_11     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_11        : out std_logic;
    Dbg_TrData_11       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_11      : out std_logic;
    Dbg_TrValid_11      : in  std_logic;
    Dbg_AWADDR_11       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_11      : out std_logic;
    Dbg_AWREADY_11      : in  std_logic;
    Dbg_WDATA_11        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_11       : out std_logic;
    Dbg_WREADY_11       : in  std_logic;
    Dbg_BRESP_11        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_11       : in  std_logic;
    Dbg_BREADY_11       : out std_logic;
    Dbg_ARADDR_11       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_11      : out std_logic;
    Dbg_ARREADY_11      : in  std_logic;
    Dbg_RDATA_11        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_11        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_11       : in  std_logic;
    Dbg_RREADY_11       : out std_logic;

    Dbg_Disable_12      : out std_logic;
    Dbg_Clk_12          : out std_logic;
    Dbg_TDI_12          : out std_logic;
    Dbg_TDO_12          : in  std_logic;
    Dbg_Reg_En_12       : out std_logic_vector(0 to 7);
    Dbg_Capture_12      : out std_logic;
    Dbg_Shift_12        : out std_logic;
    Dbg_Update_12       : out std_logic;
    Dbg_Rst_12          : out std_logic;
    Dbg_Trig_In_12      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_12  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_12     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_12        : out std_logic;
    Dbg_TrData_12       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_12      : out std_logic;
    Dbg_TrValid_12      : in  std_logic;
    Dbg_AWADDR_12       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_12      : out std_logic;
    Dbg_AWREADY_12      : in  std_logic;
    Dbg_WDATA_12        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_12       : out std_logic;
    Dbg_WREADY_12       : in  std_logic;
    Dbg_BRESP_12        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_12       : in  std_logic;
    Dbg_BREADY_12       : out std_logic;
    Dbg_ARADDR_12       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_12      : out std_logic;
    Dbg_ARREADY_12      : in  std_logic;
    Dbg_RDATA_12        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_12        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_12       : in  std_logic;
    Dbg_RREADY_12       : out std_logic;

    Dbg_Disable_13      : out std_logic;
    Dbg_Clk_13          : out std_logic;
    Dbg_TDI_13          : out std_logic;
    Dbg_TDO_13          : in  std_logic;
    Dbg_Reg_En_13       : out std_logic_vector(0 to 7);
    Dbg_Capture_13      : out std_logic;
    Dbg_Shift_13        : out std_logic;
    Dbg_Update_13       : out std_logic;
    Dbg_Rst_13          : out std_logic;
    Dbg_Trig_In_13      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_13  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_13     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_13        : out std_logic;
    Dbg_TrData_13       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_13      : out std_logic;
    Dbg_TrValid_13      : in  std_logic;
    Dbg_AWADDR_13       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_13      : out std_logic;
    Dbg_AWREADY_13      : in  std_logic;
    Dbg_WDATA_13        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_13       : out std_logic;
    Dbg_WREADY_13       : in  std_logic;
    Dbg_BRESP_13        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_13       : in  std_logic;
    Dbg_BREADY_13       : out std_logic;
    Dbg_ARADDR_13       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_13      : out std_logic;
    Dbg_ARREADY_13      : in  std_logic;
    Dbg_RDATA_13        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_13        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_13       : in  std_logic;
    Dbg_RREADY_13       : out std_logic;

    Dbg_Disable_14      : out std_logic;
    Dbg_Clk_14          : out std_logic;
    Dbg_TDI_14          : out std_logic;
    Dbg_TDO_14          : in  std_logic;
    Dbg_Reg_En_14       : out std_logic_vector(0 to 7);
    Dbg_Capture_14      : out std_logic;
    Dbg_Shift_14        : out std_logic;
    Dbg_Update_14       : out std_logic;
    Dbg_Rst_14          : out std_logic;
    Dbg_Trig_In_14      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_14  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_14     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_14        : out std_logic;
    Dbg_TrData_14       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_14      : out std_logic;
    Dbg_TrValid_14      : in  std_logic;
    Dbg_AWADDR_14       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_14      : out std_logic;
    Dbg_AWREADY_14      : in  std_logic;
    Dbg_WDATA_14        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_14       : out std_logic;
    Dbg_WREADY_14       : in  std_logic;
    Dbg_BRESP_14        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_14       : in  std_logic;
    Dbg_BREADY_14       : out std_logic;
    Dbg_ARADDR_14       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_14      : out std_logic;
    Dbg_ARREADY_14      : in  std_logic;
    Dbg_RDATA_14        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_14        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_14       : in  std_logic;
    Dbg_RREADY_14       : out std_logic;

    Dbg_Disable_15      : out std_logic;
    Dbg_Clk_15          : out std_logic;
    Dbg_TDI_15          : out std_logic;
    Dbg_TDO_15          : in  std_logic;
    Dbg_Reg_En_15       : out std_logic_vector(0 to 7);
    Dbg_Capture_15      : out std_logic;
    Dbg_Shift_15        : out std_logic;
    Dbg_Update_15       : out std_logic;
    Dbg_Rst_15          : out std_logic;
    Dbg_Trig_In_15      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_15  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_15     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_15        : out std_logic;
    Dbg_TrData_15       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_15      : out std_logic;
    Dbg_TrValid_15      : in  std_logic;
    Dbg_AWADDR_15       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_15      : out std_logic;
    Dbg_AWREADY_15      : in  std_logic;
    Dbg_WDATA_15        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_15       : out std_logic;
    Dbg_WREADY_15       : in  std_logic;
    Dbg_BRESP_15        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_15       : in  std_logic;
    Dbg_BREADY_15       : out std_logic;
    Dbg_ARADDR_15       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_15      : out std_logic;
    Dbg_ARREADY_15      : in  std_logic;
    Dbg_RDATA_15        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_15        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_15       : in  std_logic;
    Dbg_RREADY_15       : out std_logic;

    Dbg_Disable_16      : out std_logic;
    Dbg_Clk_16          : out std_logic;
    Dbg_TDI_16          : out std_logic;
    Dbg_TDO_16          : in  std_logic;
    Dbg_Reg_En_16       : out std_logic_vector(0 to 7);
    Dbg_Capture_16      : out std_logic;
    Dbg_Shift_16        : out std_logic;
    Dbg_Update_16       : out std_logic;
    Dbg_Rst_16          : out std_logic;
    Dbg_Trig_In_16      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_16  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_16     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_16        : out std_logic;
    Dbg_TrData_16       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_16      : out std_logic;
    Dbg_TrValid_16      : in  std_logic;
    Dbg_AWADDR_16       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_16      : out std_logic;
    Dbg_AWREADY_16      : in  std_logic;
    Dbg_WDATA_16        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_16       : out std_logic;
    Dbg_WREADY_16       : in  std_logic;
    Dbg_BRESP_16        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_16       : in  std_logic;
    Dbg_BREADY_16       : out std_logic;
    Dbg_ARADDR_16       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_16      : out std_logic;
    Dbg_ARREADY_16      : in  std_logic;
    Dbg_RDATA_16        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_16        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_16       : in  std_logic;
    Dbg_RREADY_16       : out std_logic;

    Dbg_Disable_17      : out std_logic;
    Dbg_Clk_17          : out std_logic;
    Dbg_TDI_17          : out std_logic;
    Dbg_TDO_17          : in  std_logic;
    Dbg_Reg_En_17       : out std_logic_vector(0 to 7);
    Dbg_Capture_17      : out std_logic;
    Dbg_Shift_17        : out std_logic;
    Dbg_Update_17       : out std_logic;
    Dbg_Rst_17          : out std_logic;
    Dbg_Trig_In_17      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_17  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_17     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_17        : out std_logic;
    Dbg_TrData_17       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_17      : out std_logic;
    Dbg_TrValid_17      : in  std_logic;
    Dbg_AWADDR_17       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_17      : out std_logic;
    Dbg_AWREADY_17      : in  std_logic;
    Dbg_WDATA_17        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_17       : out std_logic;
    Dbg_WREADY_17       : in  std_logic;
    Dbg_BRESP_17        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_17       : in  std_logic;
    Dbg_BREADY_17       : out std_logic;
    Dbg_ARADDR_17       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_17      : out std_logic;
    Dbg_ARREADY_17      : in  std_logic;
    Dbg_RDATA_17        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_17        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_17       : in  std_logic;
    Dbg_RREADY_17       : out std_logic;

    Dbg_Disable_18      : out std_logic;
    Dbg_Clk_18          : out std_logic;
    Dbg_TDI_18          : out std_logic;
    Dbg_TDO_18          : in  std_logic;
    Dbg_Reg_En_18       : out std_logic_vector(0 to 7);
    Dbg_Capture_18      : out std_logic;
    Dbg_Shift_18        : out std_logic;
    Dbg_Update_18       : out std_logic;
    Dbg_Rst_18          : out std_logic;
    Dbg_Trig_In_18      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_18  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_18     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_18        : out std_logic;
    Dbg_TrData_18       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_18      : out std_logic;
    Dbg_TrValid_18      : in  std_logic;
    Dbg_AWADDR_18       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_18      : out std_logic;
    Dbg_AWREADY_18      : in  std_logic;
    Dbg_WDATA_18        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_18       : out std_logic;
    Dbg_WREADY_18       : in  std_logic;
    Dbg_BRESP_18        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_18       : in  std_logic;
    Dbg_BREADY_18       : out std_logic;
    Dbg_ARADDR_18       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_18      : out std_logic;
    Dbg_ARREADY_18      : in  std_logic;
    Dbg_RDATA_18        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_18        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_18       : in  std_logic;
    Dbg_RREADY_18       : out std_logic;

    Dbg_Disable_19      : out std_logic;
    Dbg_Clk_19          : out std_logic;
    Dbg_TDI_19          : out std_logic;
    Dbg_TDO_19          : in  std_logic;
    Dbg_Reg_En_19       : out std_logic_vector(0 to 7);
    Dbg_Capture_19      : out std_logic;
    Dbg_Shift_19        : out std_logic;
    Dbg_Update_19       : out std_logic;
    Dbg_Rst_19          : out std_logic;
    Dbg_Trig_In_19      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_19  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_19     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_19        : out std_logic;
    Dbg_TrData_19       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_19      : out std_logic;
    Dbg_TrValid_19      : in  std_logic;
    Dbg_AWADDR_19       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_19      : out std_logic;
    Dbg_AWREADY_19      : in  std_logic;
    Dbg_WDATA_19        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_19       : out std_logic;
    Dbg_WREADY_19       : in  std_logic;
    Dbg_BRESP_19        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_19       : in  std_logic;
    Dbg_BREADY_19       : out std_logic;
    Dbg_ARADDR_19       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_19      : out std_logic;
    Dbg_ARREADY_19      : in  std_logic;
    Dbg_RDATA_19        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_19        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_19       : in  std_logic;
    Dbg_RREADY_19       : out std_logic;

    Dbg_Disable_20      : out std_logic;
    Dbg_Clk_20          : out std_logic;
    Dbg_TDI_20          : out std_logic;
    Dbg_TDO_20          : in  std_logic;
    Dbg_Reg_En_20       : out std_logic_vector(0 to 7);
    Dbg_Capture_20      : out std_logic;
    Dbg_Shift_20        : out std_logic;
    Dbg_Update_20       : out std_logic;
    Dbg_Rst_20          : out std_logic;
    Dbg_Trig_In_20      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_20  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_20     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_20        : out std_logic;
    Dbg_TrData_20       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_20      : out std_logic;
    Dbg_TrValid_20      : in  std_logic;
    Dbg_AWADDR_20       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_20      : out std_logic;
    Dbg_AWREADY_20      : in  std_logic;
    Dbg_WDATA_20        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_20       : out std_logic;
    Dbg_WREADY_20       : in  std_logic;
    Dbg_BRESP_20        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_20       : in  std_logic;
    Dbg_BREADY_20       : out std_logic;
    Dbg_ARADDR_20       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_20      : out std_logic;
    Dbg_ARREADY_20      : in  std_logic;
    Dbg_RDATA_20        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_20        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_20       : in  std_logic;
    Dbg_RREADY_20       : out std_logic;

    Dbg_Disable_21      : out std_logic;
    Dbg_Clk_21          : out std_logic;
    Dbg_TDI_21          : out std_logic;
    Dbg_TDO_21          : in  std_logic;
    Dbg_Reg_En_21       : out std_logic_vector(0 to 7);
    Dbg_Capture_21      : out std_logic;
    Dbg_Shift_21        : out std_logic;
    Dbg_Update_21       : out std_logic;
    Dbg_Rst_21          : out std_logic;
    Dbg_Trig_In_21      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_21  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_21     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_21        : out std_logic;
    Dbg_TrData_21       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_21      : out std_logic;
    Dbg_TrValid_21      : in  std_logic;
    Dbg_AWADDR_21       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_21      : out std_logic;
    Dbg_AWREADY_21      : in  std_logic;
    Dbg_WDATA_21        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_21       : out std_logic;
    Dbg_WREADY_21       : in  std_logic;
    Dbg_BRESP_21        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_21       : in  std_logic;
    Dbg_BREADY_21       : out std_logic;
    Dbg_ARADDR_21       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_21      : out std_logic;
    Dbg_ARREADY_21      : in  std_logic;
    Dbg_RDATA_21        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_21        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_21       : in  std_logic;
    Dbg_RREADY_21       : out std_logic;

    Dbg_Disable_22      : out std_logic;
    Dbg_Clk_22          : out std_logic;
    Dbg_TDI_22          : out std_logic;
    Dbg_TDO_22          : in  std_logic;
    Dbg_Reg_En_22       : out std_logic_vector(0 to 7);
    Dbg_Capture_22      : out std_logic;
    Dbg_Shift_22        : out std_logic;
    Dbg_Update_22       : out std_logic;
    Dbg_Rst_22          : out std_logic;
    Dbg_Trig_In_22      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_22  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_22     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_22        : out std_logic;
    Dbg_TrData_22       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_22      : out std_logic;
    Dbg_TrValid_22      : in  std_logic;
    Dbg_AWADDR_22       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_22      : out std_logic;
    Dbg_AWREADY_22      : in  std_logic;
    Dbg_WDATA_22        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_22       : out std_logic;
    Dbg_WREADY_22       : in  std_logic;
    Dbg_BRESP_22        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_22       : in  std_logic;
    Dbg_BREADY_22       : out std_logic;
    Dbg_ARADDR_22       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_22      : out std_logic;
    Dbg_ARREADY_22      : in  std_logic;
    Dbg_RDATA_22        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_22        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_22       : in  std_logic;
    Dbg_RREADY_22       : out std_logic;

    Dbg_Disable_23      : out std_logic;
    Dbg_Clk_23          : out std_logic;
    Dbg_TDI_23          : out std_logic;
    Dbg_TDO_23          : in  std_logic;
    Dbg_Reg_En_23       : out std_logic_vector(0 to 7);
    Dbg_Capture_23      : out std_logic;
    Dbg_Shift_23        : out std_logic;
    Dbg_Update_23       : out std_logic;
    Dbg_Rst_23          : out std_logic;
    Dbg_Trig_In_23      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_23  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_23     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_23        : out std_logic;
    Dbg_TrData_23       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_23      : out std_logic;
    Dbg_TrValid_23      : in  std_logic;
    Dbg_AWADDR_23       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_23      : out std_logic;
    Dbg_AWREADY_23      : in  std_logic;
    Dbg_WDATA_23        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_23       : out std_logic;
    Dbg_WREADY_23       : in  std_logic;
    Dbg_BRESP_23        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_23       : in  std_logic;
    Dbg_BREADY_23       : out std_logic;
    Dbg_ARADDR_23       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_23      : out std_logic;
    Dbg_ARREADY_23      : in  std_logic;
    Dbg_RDATA_23        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_23        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_23       : in  std_logic;
    Dbg_RREADY_23       : out std_logic;

    Dbg_Disable_24      : out std_logic;
    Dbg_Clk_24          : out std_logic;
    Dbg_TDI_24          : out std_logic;
    Dbg_TDO_24          : in  std_logic;
    Dbg_Reg_En_24       : out std_logic_vector(0 to 7);
    Dbg_Capture_24      : out std_logic;
    Dbg_Shift_24        : out std_logic;
    Dbg_Update_24       : out std_logic;
    Dbg_Rst_24          : out std_logic;
    Dbg_Trig_In_24      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_24  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_24     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_24        : out std_logic;
    Dbg_TrData_24       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_24      : out std_logic;
    Dbg_TrValid_24      : in  std_logic;
    Dbg_AWADDR_24       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_24      : out std_logic;
    Dbg_AWREADY_24      : in  std_logic;
    Dbg_WDATA_24        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_24       : out std_logic;
    Dbg_WREADY_24       : in  std_logic;
    Dbg_BRESP_24        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_24       : in  std_logic;
    Dbg_BREADY_24       : out std_logic;
    Dbg_ARADDR_24       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_24      : out std_logic;
    Dbg_ARREADY_24      : in  std_logic;
    Dbg_RDATA_24        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_24        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_24       : in  std_logic;
    Dbg_RREADY_24       : out std_logic;

    Dbg_Disable_25      : out std_logic;
    Dbg_Clk_25          : out std_logic;
    Dbg_TDI_25          : out std_logic;
    Dbg_TDO_25          : in  std_logic;
    Dbg_Reg_En_25       : out std_logic_vector(0 to 7);
    Dbg_Capture_25      : out std_logic;
    Dbg_Shift_25        : out std_logic;
    Dbg_Update_25       : out std_logic;
    Dbg_Rst_25          : out std_logic;
    Dbg_Trig_In_25      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_25  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_25     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_25        : out std_logic;
    Dbg_TrData_25       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_25      : out std_logic;
    Dbg_TrValid_25      : in  std_logic;
    Dbg_AWADDR_25       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_25      : out std_logic;
    Dbg_AWREADY_25      : in  std_logic;
    Dbg_WDATA_25        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_25       : out std_logic;
    Dbg_WREADY_25       : in  std_logic;
    Dbg_BRESP_25        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_25       : in  std_logic;
    Dbg_BREADY_25       : out std_logic;
    Dbg_ARADDR_25       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_25      : out std_logic;
    Dbg_ARREADY_25      : in  std_logic;
    Dbg_RDATA_25        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_25        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_25       : in  std_logic;
    Dbg_RREADY_25       : out std_logic;

    Dbg_Disable_26      : out std_logic;
    Dbg_Clk_26          : out std_logic;
    Dbg_TDI_26          : out std_logic;
    Dbg_TDO_26          : in  std_logic;
    Dbg_Reg_En_26       : out std_logic_vector(0 to 7);
    Dbg_Capture_26      : out std_logic;
    Dbg_Shift_26        : out std_logic;
    Dbg_Update_26       : out std_logic;
    Dbg_Rst_26          : out std_logic;
    Dbg_Trig_In_26      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_26  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_26     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_26        : out std_logic;
    Dbg_TrData_26       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_26      : out std_logic;
    Dbg_TrValid_26      : in  std_logic;
    Dbg_AWADDR_26       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_26      : out std_logic;
    Dbg_AWREADY_26      : in  std_logic;
    Dbg_WDATA_26        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_26       : out std_logic;
    Dbg_WREADY_26       : in  std_logic;
    Dbg_BRESP_26        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_26       : in  std_logic;
    Dbg_BREADY_26       : out std_logic;
    Dbg_ARADDR_26       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_26      : out std_logic;
    Dbg_ARREADY_26      : in  std_logic;
    Dbg_RDATA_26        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_26        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_26       : in  std_logic;
    Dbg_RREADY_26       : out std_logic;

    Dbg_Disable_27      : out std_logic;
    Dbg_Clk_27          : out std_logic;
    Dbg_TDI_27          : out std_logic;
    Dbg_TDO_27          : in  std_logic;
    Dbg_Reg_En_27       : out std_logic_vector(0 to 7);
    Dbg_Capture_27      : out std_logic;
    Dbg_Shift_27        : out std_logic;
    Dbg_Update_27       : out std_logic;
    Dbg_Rst_27          : out std_logic;
    Dbg_Trig_In_27      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_27  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_27     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_27        : out std_logic;
    Dbg_TrData_27       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_27      : out std_logic;
    Dbg_TrValid_27      : in  std_logic;
    Dbg_AWADDR_27       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_27      : out std_logic;
    Dbg_AWREADY_27      : in  std_logic;
    Dbg_WDATA_27        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_27       : out std_logic;
    Dbg_WREADY_27       : in  std_logic;
    Dbg_BRESP_27        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_27       : in  std_logic;
    Dbg_BREADY_27       : out std_logic;
    Dbg_ARADDR_27       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_27      : out std_logic;
    Dbg_ARREADY_27      : in  std_logic;
    Dbg_RDATA_27        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_27        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_27       : in  std_logic;
    Dbg_RREADY_27       : out std_logic;

    Dbg_Disable_28      : out std_logic;
    Dbg_Clk_28          : out std_logic;
    Dbg_TDI_28          : out std_logic;
    Dbg_TDO_28          : in  std_logic;
    Dbg_Reg_En_28       : out std_logic_vector(0 to 7);
    Dbg_Capture_28      : out std_logic;
    Dbg_Shift_28        : out std_logic;
    Dbg_Update_28       : out std_logic;
    Dbg_Rst_28          : out std_logic;
    Dbg_Trig_In_28      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_28  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_28     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_28        : out std_logic;
    Dbg_TrData_28       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_28      : out std_logic;
    Dbg_TrValid_28      : in  std_logic;
    Dbg_AWADDR_28       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_28      : out std_logic;
    Dbg_AWREADY_28      : in  std_logic;
    Dbg_WDATA_28        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_28       : out std_logic;
    Dbg_WREADY_28       : in  std_logic;
    Dbg_BRESP_28        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_28       : in  std_logic;
    Dbg_BREADY_28       : out std_logic;
    Dbg_ARADDR_28       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_28      : out std_logic;
    Dbg_ARREADY_28      : in  std_logic;
    Dbg_RDATA_28        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_28        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_28       : in  std_logic;
    Dbg_RREADY_28       : out std_logic;

    Dbg_Disable_29      : out std_logic;
    Dbg_Clk_29          : out std_logic;
    Dbg_TDI_29          : out std_logic;
    Dbg_TDO_29          : in  std_logic;
    Dbg_Reg_En_29       : out std_logic_vector(0 to 7);
    Dbg_Capture_29      : out std_logic;
    Dbg_Shift_29        : out std_logic;
    Dbg_Update_29       : out std_logic;
    Dbg_Rst_29          : out std_logic;
    Dbg_Trig_In_29      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_29  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_29     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_29        : out std_logic;
    Dbg_TrData_29       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_29      : out std_logic;
    Dbg_TrValid_29      : in  std_logic;
    Dbg_AWADDR_29       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_29      : out std_logic;
    Dbg_AWREADY_29      : in  std_logic;
    Dbg_WDATA_29        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_29       : out std_logic;
    Dbg_WREADY_29       : in  std_logic;
    Dbg_BRESP_29        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_29       : in  std_logic;
    Dbg_BREADY_29       : out std_logic;
    Dbg_ARADDR_29       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_29      : out std_logic;
    Dbg_ARREADY_29      : in  std_logic;
    Dbg_RDATA_29        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_29        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_29       : in  std_logic;
    Dbg_RREADY_29       : out std_logic;

    Dbg_Disable_30      : out std_logic;
    Dbg_Clk_30          : out std_logic;
    Dbg_TDI_30          : out std_logic;
    Dbg_TDO_30          : in  std_logic;
    Dbg_Reg_En_30       : out std_logic_vector(0 to 7);
    Dbg_Capture_30      : out std_logic;
    Dbg_Shift_30        : out std_logic;
    Dbg_Update_30       : out std_logic;
    Dbg_Rst_30          : out std_logic;
    Dbg_Trig_In_30      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_30  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_30     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_30        : out std_logic;
    Dbg_TrData_30       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_30      : out std_logic;
    Dbg_TrValid_30      : in  std_logic;
    Dbg_AWADDR_30       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_30      : out std_logic;
    Dbg_AWREADY_30      : in  std_logic;
    Dbg_WDATA_30        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_30       : out std_logic;
    Dbg_WREADY_30       : in  std_logic;
    Dbg_BRESP_30        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_30       : in  std_logic;
    Dbg_BREADY_30       : out std_logic;
    Dbg_ARADDR_30       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_30      : out std_logic;
    Dbg_ARREADY_30      : in  std_logic;
    Dbg_RDATA_30        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_30        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_30       : in  std_logic;
    Dbg_RREADY_30       : out std_logic;

    Dbg_Disable_31      : out std_logic;
    Dbg_Clk_31          : out std_logic;
    Dbg_TDI_31          : out std_logic;
    Dbg_TDO_31          : in  std_logic;
    Dbg_Reg_En_31       : out std_logic_vector(0 to 7);
    Dbg_Capture_31      : out std_logic;
    Dbg_Shift_31        : out std_logic;
    Dbg_Update_31       : out std_logic;
    Dbg_Rst_31          : out std_logic;
    Dbg_Trig_In_31      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_31  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_31     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_31        : out std_logic;
    Dbg_TrData_31       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_31      : out std_logic;
    Dbg_TrValid_31      : in  std_logic;
    Dbg_AWADDR_31       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_31      : out std_logic;
    Dbg_AWREADY_31      : in  std_logic;
    Dbg_WDATA_31        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_31       : out std_logic;
    Dbg_WREADY_31       : in  std_logic;
    Dbg_BRESP_31        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_31       : in  std_logic;
    Dbg_BREADY_31       : out std_logic;
    Dbg_ARADDR_31       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_31      : out std_logic;
    Dbg_ARREADY_31      : in  std_logic;
    Dbg_RDATA_31        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_31        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_31       : in  std_logic;
    Dbg_RREADY_31       : out std_logic;

    -- External Trigger Signals
    Ext_Trig_In      : in  std_logic_vector(0 to 3);
    Ext_Trig_Ack_In  : out std_logic_vector(0 to 3);
    Ext_Trig_Out     : out std_logic_vector(0 to 3);
    Ext_Trig_Ack_Out : in  std_logic_vector(0 to 3);
    
    -- External JTAG Signals
    Ext_JTAG_DRCK    : out std_logic;
    Ext_JTAG_RESET   : out std_logic;
    Ext_JTAG_SEL     : out std_logic;
    Ext_JTAG_CAPTURE : out std_logic;
    Ext_JTAG_SHIFT   : out std_logic;
    Ext_JTAG_UPDATE  : out std_logic;
    Ext_JTAG_TDI     : out std_logic;
    Ext_JTAG_TDO     : in  std_logic
  );
end entity MDM_Core;

library IEEE;
use IEEE.numeric_std.all;

library mdm_v3_2_14;
use mdm_v3_2_14.all;

architecture IMP of MDM_CORE is

  -- Used with external trace
  constant C_TRACE_IDA : std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(C_TRACE_ID, 7))     & '0';
  constant C_TRACE_IDB : std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(C_TRACE_ID + 1, 7)) & '0';

  function log2(x : natural) return integer is
    variable i  : integer := 0;   
  begin
    if x = 0 then return 0;
    else
      while 2**i < x loop
        i := i+1;
      end loop;
      return i;
    end if;
  end function log2;

  function clock_bits(x : natural) return integer is
  begin
    if C_DBG_REG_ACCESS = 1 and C_USE_BSCAN = 3 and C_DEBUG_INTERFACE > 0 then
      return 0;
    else
      return log2(x);
    end if;
  end function clock_bits;

  subtype trace_word_type  is std_logic_vector(31 downto 0);
  subtype trace_item_type  is std_logic_vector(C_TRACE_DATA_WIDTH - 1 downto 0);
  subtype trace_index_type is integer range 0 to 32 / C_TRACE_DATA_WIDTH - 1;

  function trace_data_mux(trace_word : trace_word_type; data_index : trace_index_type) return trace_item_type is
    constant C_WIDTH      : integer := C_TRACE_DATA_WIDTH;
    variable trace_item   : trace_item_type;
    variable data_index_2 : integer range 0 to 15;
    variable data_index_4 : integer range 0 to 7;
    variable data_index_8 : integer range 0 to 3;
  begin
    case C_WIDTH is
      when 2 =>
        data_index_2 := data_index;
        case data_index_2 is
          when 1  => trace_item := trace_word(1  * C_WIDTH + C_WIDTH - 1 downto 1  * C_WIDTH);
          when 2  => trace_item := trace_word(2  * C_WIDTH + C_WIDTH - 1 downto 2  * C_WIDTH);
          when 3  => trace_item := trace_word(3  * C_WIDTH + C_WIDTH - 1 downto 3  * C_WIDTH);
          when 4  => trace_item := trace_word(4  * C_WIDTH + C_WIDTH - 1 downto 4  * C_WIDTH);
          when 5  => trace_item := trace_word(5  * C_WIDTH + C_WIDTH - 1 downto 5  * C_WIDTH);
          when 6  => trace_item := trace_word(6  * C_WIDTH + C_WIDTH - 1 downto 6  * C_WIDTH);
          when 7  => trace_item := trace_word(7  * C_WIDTH + C_WIDTH - 1 downto 7  * C_WIDTH);
          when 8  => trace_item := trace_word(8  * C_WIDTH + C_WIDTH - 1 downto 8  * C_WIDTH);
          when 9  => trace_item := trace_word(9  * C_WIDTH + C_WIDTH - 1 downto 9  * C_WIDTH);
          when 10 => trace_item := trace_word(10 * C_WIDTH + C_WIDTH - 1 downto 10 * C_WIDTH);
          when 11 => trace_item := trace_word(11 * C_WIDTH + C_WIDTH - 1 downto 11 * C_WIDTH);
          when 12 => trace_item := trace_word(12 * C_WIDTH + C_WIDTH - 1 downto 12 * C_WIDTH);
          when 13 => trace_item := trace_word(13 * C_WIDTH + C_WIDTH - 1 downto 13 * C_WIDTH);
          when 14 => trace_item := trace_word(14 * C_WIDTH + C_WIDTH - 1 downto 14 * C_WIDTH);
          when 15 => trace_item := trace_word(15 * C_WIDTH + C_WIDTH - 1 downto 15 * C_WIDTH);
          when others => trace_item := trace_word(           C_WIDTH - 1 downto            0);
        end case;
      when 4 =>
        data_index_4 := data_index;
        case data_index_4 is
          when 1 => trace_item := trace_word(1 * C_WIDTH + C_WIDTH - 1 downto 1 * C_WIDTH);
          when 2 => trace_item := trace_word(2 * C_WIDTH + C_WIDTH - 1 downto 2 * C_WIDTH);
          when 3 => trace_item := trace_word(3 * C_WIDTH + C_WIDTH - 1 downto 3 * C_WIDTH);
          when 4 => trace_item := trace_word(4 * C_WIDTH + C_WIDTH - 1 downto 4 * C_WIDTH);
          when 5 => trace_item := trace_word(5 * C_WIDTH + C_WIDTH - 1 downto 5 * C_WIDTH);
          when 6 => trace_item := trace_word(6 * C_WIDTH + C_WIDTH - 1 downto 6 * C_WIDTH);
          when 7 => trace_item := trace_word(7 * C_WIDTH + C_WIDTH - 1 downto 7 * C_WIDTH);
          when others => trace_item := trace_word(         C_WIDTH - 1 downto           0);
        end case;
      when 8 =>
        data_index_8 := data_index;
        case data_index_8 is
          when 1 => trace_item := trace_word(1 * C_WIDTH + C_WIDTH - 1 downto 1 * C_WIDTH);
          when 2 => trace_item := trace_word(2 * C_WIDTH + C_WIDTH - 1 downto 2 * C_WIDTH);
          when 3 => trace_item := trace_word(3 * C_WIDTH + C_WIDTH - 1 downto 3 * C_WIDTH);
          when others => trace_item := trace_word(         C_WIDTH - 1 downto           0);
        end case;
      when 16 =>
        if data_index = 0 then
          trace_item := trace_word(              C_WIDTH - 1 downto           0);
        else
          trace_item := trace_word(1 * C_WIDTH + C_WIDTH - 1 downto 1 * C_WIDTH);
        end if;
      -- coverage off
      when others =>
        trace_item := (others => '0');
      -- coverage on
    end case;
    return trace_item;
  end function trace_data_mux;

  constant C_DRCK_FREQ_HZ : integer := 30000000;
  constant C_CLOCK_BITS   : integer := clock_bits(C_S_AXI_ACLK_FREQ_HZ / C_DRCK_FREQ_HZ);

  constant MB_WRITE_INSTR : std_logic_vector(0 to 7) := "00000100";
  constant MB_READ_DATA   : std_logic_vector(0 to 7) := "00000110";

  component JTAG_CONTROL
    generic (
      C_TARGET               : TARGET_FAMILY_TYPE;
      C_USE_BSCAN            : integer;
      C_MB_DBG_PORTS         : integer;
      C_USE_CONFIG_RESET     : integer;
      C_USE_SRL16            : string;
      C_DEBUG_INTERFACE      : integer;
      C_DBG_REG_ACCESS       : integer;
      C_DBG_MEM_ACCESS       : integer;
      C_M_AXI_ADDR_WIDTH     : integer;
      C_M_AXI_DATA_WIDTH     : integer;
      C_USE_CROSS_TRIGGER    : integer;
      C_EXT_TRIG_RESET_VALUE : std_logic_vector(0 to 19);
      C_USE_UART             : integer;
      C_UART_WIDTH           : integer;
      C_TRACE_OUTPUT         : integer;
      C_TRACE_PROTOCOL       : integer;
      C_EN_WIDTH             : integer := 1
    );
    port (
      -- Global signals
      Config_Reset    : in std_logic;
      Scan_Reset_Sel  : in std_logic;
      Scan_Reset      : in std_logic;
      Scan_En         : in std_logic;

      Clk             : in std_logic;
      Rst             : in std_logic;

      Clear_Ext_BRK   : in  std_logic;
      Ext_BRK         : out std_logic;
      Ext_NM_BRK      : out std_logic;
      Debug_SYS_Rst   : out std_logic;
      Debug_Rst       : out std_logic;

      Read_RX_FIFO    : in  std_logic;
      Reset_RX_FIFO   : in  std_logic;
      RX_Data         : out std_logic_vector(0 to C_UART_WIDTH-1);
      RX_Data_Present : out std_logic;
      RX_Buffer_Full  : out std_logic;

      Write_TX_FIFO   : in  std_logic;
      Reset_TX_FIFO   : in  std_logic;
      TX_Data         : in  std_logic_vector(0 to C_UART_WIDTH-1);
      TX_Buffer_Full  : out std_logic;
      TX_Buffer_Empty : out std_logic;

      -- Debug Register Access signals
      DbgReg_DRCK        : in  std_logic;
      DbgReg_UPDATE      : in  std_logic;
      DbgReg_Access_Lock : in  std_logic;
      DbgReg_Force_Lock  : in  std_logic;
      DbgReg_Unlocked    : in  std_logic;
      JTAG_Access_Lock   : out std_logic;
      JTAG_Force_Lock    : out std_logic;
      JTAG_AXI_Overrun   : in  std_logic;
      JTAG_Clear_Overrun : out std_logic;

      AXI_Transaction    : in  std_logic;
      AXI_Instr_Overrun  : in  std_logic;
      AXI_Data_Overrun   : in  std_logic;
      AXI_Completion_On  : out std_logic;
      AXI_Block          : out std_logic;

      -- MDM signals
      TDI     : in  std_logic;
      RESET   : in  std_logic;
      UPDATE  : in  std_logic;
      SHIFT   : in  std_logic;
      CAPTURE : in  std_logic;
      SEL     : in  std_logic;
      DRCK    : in  std_logic;
      TDO     : out std_logic;

      -- Bus Master signals
      M_AXI_ACLK         : in  std_logic;
      M_AXI_ARESETn      : in  std_logic;

      Master_rd_start    : out std_logic;
      Master_rd_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_rd_len      : out std_logic_vector(4 downto 0);
      Master_rd_size     : out std_logic_vector(1 downto 0);
      Master_rd_excl     : out std_logic;
      Master_rd_idle     : in  std_logic;
      Master_rd_resp     : in  std_logic_vector(1 downto 0);
      Master_wr_start    : out std_logic;
      Master_wr_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_wr_len      : out std_logic_vector(4 downto 0);
      Master_wr_size     : out std_logic_vector(1 downto 0);
      Master_wr_excl     : out std_logic;
      Master_wr_idle     : in  std_logic;
      Master_wr_resp     : in  std_logic_vector(1 downto 0);
      Master_data_rd     : out std_logic;
      Master_data_out    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_data_exists : in  std_logic;
      Master_data_wr     : out std_logic;
      Master_data_in     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_data_empty  : in  std_logic;
      
      Master_dwr_addr    : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_dwr_len     : out std_logic_vector(4 downto 0);
      Master_dwr_done    : in  std_logic;
      Master_dwr_resp    : in  std_logic_vector(1 downto 0);

      -- MicroBlaze Debug Signals
      MB_Debug_Enabled   : out std_logic_vector(C_EN_WIDTH-1 downto 0);
      Dbg_Clk            : out std_logic;
      Dbg_TDI            : out std_logic;
      Dbg_TDO            : in  std_logic;
      Dbg_Reg_En         : out std_logic_vector(0 to 7);
      Dbg_Capture        : out std_logic;
      Dbg_Shift          : out std_logic;
      Dbg_Update         : out std_logic;

      Dbg_data_cmd       : out std_logic;
      Dbg_command        : out std_logic_vector(0 to 7);

      -- MicroBlaze Cross Trigger Signals
      Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_10     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_11     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_12     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_13     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_14     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_15     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_16     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_17     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_18     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_19     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_20     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_21     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_22     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_23     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_24     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_25     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_26     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_27     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_28     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_29     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_30     : in  std_logic_vector(0 to 7);
      Dbg_Trig_In_31     : in  std_logic_vector(0 to 7);

      Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_10 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_11 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_12 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_13 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_14 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_15 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_16 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_17 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_18 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_19 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_20 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_21 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_22 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_23 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_24 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_25 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_26 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_27 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_28 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_29 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_30 : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_31 : out std_logic_vector(0 to 7);

      Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_10    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_11    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_12    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_13    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_14    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_15    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_16    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_17    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_18    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_19    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_20    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_21    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_22    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_23    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_24    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_25    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_26    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_27    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_28    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_29    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_30    : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_31    : out std_logic_vector(0 to 7);

      Dbg_Trig_Ack_Out_0  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_1  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_2  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_3  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_4  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_5  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_6  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_7  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_8  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_9  : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);

      Ext_Trig_In         : in  std_logic_vector(0 to 3);
      Ext_Trig_Ack_In     : out std_logic_vector(0 to 3);
      Ext_Trig_Out        : out std_logic_vector(0 to 3);
      Ext_Trig_Ack_Out    : in  std_logic_vector(0 to 3);

      Trace_Clk           : in  std_logic;
      Trace_Reset         : in  std_logic;
      Trace_Test_Pattern  : out std_logic_vector(0 to 3);
      Trace_Test_Start    : out std_logic;
      Trace_Test_Stop     : out std_logic;
      Trace_Test_Timed    : out std_logic;
      Trace_Delay         : out std_logic_vector(0 to 7);
      Trace_Stopped       : out std_logic
    );
  end component JTAG_CONTROL;

  component Arbiter is
    generic (
      C_TARGET  : TARGET_FAMILY_TYPE;
      Size      : natural;
      Size_Log2 : natural);
    port (
      Clk       : in  std_logic;
      Reset     : in  std_logic;

      Enable    : in  std_logic;
      Requests  : in  std_logic_vector(Size-1 downto 0);
      Granted   : out std_logic_vector(Size-1 downto 0);
      Valid_Sel : out std_logic;
      Selected  : out std_logic_vector(Size_Log2-1 downto 0)
    );
  end component Arbiter;

  component SRL_FIFO
    generic (
      C_TARGET    :     TARGET_FAMILY_TYPE;
      C_DATA_BITS :     natural;
      C_DEPTH     :     natural;
      C_USE_SRL16 :     string
    );
    port (
      Clk           : in  std_logic;
      Reset         : in  std_logic;
      FIFO_Write    : in  std_logic;
      Data_In       : in  std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Read     : in  std_logic;
      Data_Out      : out std_logic_vector(0 to C_DATA_BITS-1);
      FIFO_Full     : out std_logic;
      Data_Exists   : out std_logic
    );
  end component SRL_FIFO;

  component MB_FDRE
    generic (
      C_TARGET      : TARGET_FAMILY_TYPE;
      INIT          : bit := '0'
    );
    port (
      Q             : out std_logic := TO_X01(INIT);
      C             : in  std_logic;
      CE            : in  std_logic;
      D             : in  std_logic;
      R             : in  std_logic
    );
  end component;

  component MB_PLLE2_BASE
    generic (
      C_TARGET           : TARGET_FAMILY_TYPE;
      BANDWIDTH          : string := "OPTIMIZED";
      CLKFBOUT_MULT      : integer := 5;
      CLKFBOUT_PHASE     : real := 0.000;
      CLKIN1_PERIOD      : real := 0.000;
      CLKOUT0_DIVIDE     : integer := 1;
      CLKOUT0_DUTY_CYCLE : real := 0.500;
      CLKOUT0_PHASE      : real := 0.000;
      CLKOUT1_DIVIDE     : integer := 1;
      CLKOUT1_DUTY_CYCLE : real := 0.500;
      CLKOUT1_PHASE      : real := 0.000;
      CLKOUT2_DIVIDE     : integer := 1;
      CLKOUT2_DUTY_CYCLE : real := 0.500;
      CLKOUT2_PHASE      : real := 0.000;
      CLKOUT3_DIVIDE     : integer := 1;
      CLKOUT3_DUTY_CYCLE : real := 0.500;
      CLKOUT3_PHASE      : real := 0.000;
      CLKOUT4_DIVIDE     : integer := 1;
      CLKOUT4_DUTY_CYCLE : real := 0.500;
      CLKOUT4_PHASE      : real := 0.000;
      CLKOUT5_DIVIDE     : integer := 1;
      CLKOUT5_DUTY_CYCLE : real := 0.500;
      CLKOUT5_PHASE      : real := 0.000;
      DIVCLK_DIVIDE      : integer := 1;
      REF_JITTER1        : real := 0.010;
      STARTUP_WAIT       : string := "FALSE"
    );
    port (
      CLKFBOUT : out std_logic;
      CLKOUT0  : out std_logic;
      CLKOUT1  : out std_logic;
      CLKOUT2  : out std_logic;
      CLKOUT3  : out std_logic;
      CLKOUT4  : out std_logic;
      CLKOUT5  : out std_logic;
      LOCKED   : out std_logic;
      CLKFBIN  : in  std_logic;
      CLKIN1   : in  std_logic;
      PWRDWN   : in  std_logic;
      RST      : in  std_logic
    );
  end component;

  component MB_BUFG
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
       O : out std_logic;
       I : in  std_logic
    );
  end component;

  signal config_reset_i    : std_logic;
  signal clear_Ext_BRK     : std_logic;

  signal enable_interrupts : std_logic;
  signal read_RX_FIFO      : std_logic;
  signal reset_RX_FIFO     : std_logic;

  signal rx_Data         : std_logic_vector(0 to C_UART_WIDTH-1);
  signal rx_Data_Present : std_logic;
  signal rx_Buffer_Full  : std_logic;

  signal tx_Data         : std_logic_vector(0 to C_UART_WIDTH-1);
  signal write_TX_FIFO   : std_logic;
  signal reset_TX_FIFO   : std_logic;
  signal tx_Buffer_Full  : std_logic;
  signal tx_Buffer_Empty : std_logic;

  signal mdm_Dbus_i : std_logic_vector(0 to 31);  -- Check!

  signal TDI     : std_logic;
  signal RESET   : std_logic;
  signal SHIFT   : std_logic;
  signal CAPTURE : std_logic;
  signal TDO     : std_logic;

  signal mb_debug_enabled_i : std_logic_vector(C_EN_WIDTH-1 downto 0);
  signal mb_debug_enabled_q : std_logic_vector(C_EN_WIDTH-1 downto 0);
  signal jtag_disable       : std_logic := '1';
  signal disable            : std_logic;

  signal Debug_SYS_Rst_i : std_logic;
  signal Debug_Rst_i     : std_logic;

  -- Interface signals
  signal Dbg_Disable : std_logic_vector(0 to 31);
  signal Dbg_Rst_I   : std_logic_vector(0 to 31);
  signal Dbg_TrClk   : std_logic;
  signal Dbg_TrReady : std_logic_vector(0 to 31);

  -- Serial interface signals
  signal Dbg_Clk            : std_logic;
  signal Dbg_TDI            : std_logic;
  signal Dbg_TDO            : std_logic;
  signal Dbg_Reg_En         : std_logic_vector(0 to 7);
  signal Dbg_Capture        : std_logic;
  signal Dbg_Shift          : std_logic;
  signal Dbg_Update         : std_logic;
  signal Dbg_data_cmd       : std_logic;
  signal Dbg_command        : std_logic_vector(0 to 7);

  subtype Reg_En_TYPE is std_logic_vector(0 to 7);
  type Reg_EN_ARRAY is array(0 to 31) of Reg_En_TYPE;

  signal Dbg_TDO_I    : std_logic_vector(0 to 31);
  signal Dbg_Reg_En_I : Reg_EN_ARRAY;

  -- Parallel interface signals
  signal Dbg_AWADDR    : std_logic_vector(14 downto 2);
  signal Dbg_AWVALID   : std_logic_vector(0  to 31);
  signal Dbg_WVALID    : std_logic_vector(0  to 31);
  signal Dbg_WDATA     : std_logic_vector(31 downto 0);
  signal Dbg_BREADY    : std_logic_vector(0  to 31);
  signal Dbg_ARADDR    : std_logic_vector(14 downto 2);
  signal Dbg_ARVALID   : std_logic_vector(0  to 31);
  signal Dbg_RREADY    : std_logic_vector(0  to 31);

  subtype Resp_TYPE is std_logic_vector(1 downto 0);
  type Resp_ARRAY is array(0 to 31) of Resp_TYPE;

  subtype RData_TYPE is std_logic_vector(31 downto 0);
  type RData_ARRAY is array(0 to 31) of RData_TYPE;

  signal Dbg_AWREADY_I : std_logic_vector(0 to 31);
  signal Dbg_WREADY_I  : std_logic_vector(0 to 31);
  signal Dbg_BRESP_I   : Resp_ARRAY;
  signal Dbg_BVALID_I  : std_logic_vector(0 to 31);
  signal Dbg_ARREADY_I : std_logic_vector(0 to 31);
  signal Dbg_RDATA_I   : RData_ARRAY;
  signal Dbg_RRESP_I   : Resp_ARRAY;
  signal Dbg_RVALID_I  : std_logic_vector(0 to 31);

  signal Dbg_AWVALID_I : std_logic;
  signal Dbg_AWREADY   : std_logic;
  signal Dbg_WVALID_I  : std_logic;
  signal Dbg_WREADY    : std_logic;
  signal Dbg_ARVALID_I : std_logic;
  signal Dbg_ARREADY   : std_logic;
  signal Dbg_BRESP     : std_logic;
  signal Dbg_BVALID    : std_logic;
  signal Dbg_RDATA     : std_logic_vector(31 downto 0);
  signal Dbg_RRESP     : std_logic;
  signal Dbg_RVALID    : std_logic;
  
  -- Other signals
  signal bus_rst : std_logic;

  signal uart_ip2bus_rdack   : std_logic;
  signal uart_ip2bus_wrack   : std_logic;
  signal uart_ip2bus_error   : std_logic;
  signal uart_ip2bus_data    : std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

  signal DbgReg_DRCK_i       : std_logic;
  signal DbgReg_UPDATE_i     : std_logic;
  signal dbgreg_ip2bus_rdack : std_logic;
  signal dbgreg_ip2bus_wrack : std_logic;
  signal dbgreg_ip2bus_error : std_logic;
  signal dbgreg_ip2bus_data  : std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

  signal dbgreg_AWADDR       : std_logic_vector(14 downto 2);
  signal dbgreg_WDATA        : std_logic_vector(31 downto 0);
  signal dbgreg_ARADDR       : std_logic_vector(14 downto 2);
  signal dbgreg_AWVALID      : std_logic;
  signal dbgreg_WVALID       : std_logic;
  signal dbgreg_ARVALID      : std_logic;

  signal dbgreg_transaction  : std_logic;
  signal dbgreg_access_lock  : std_logic;
  signal dbgreg_force_lock   : std_logic;
  signal dbgreg_unlocked     : std_logic;
  signal dbgreg_mb_instr     : std_logic;
  signal dbgreg_mb_data      : std_logic;
  signal jtag_access_lock    : std_logic;
  signal jtag_force_lock     : std_logic;
  signal jtag_axi_overrun    : std_logic;
  signal jtag_clear_overrun  : std_logic;

  signal axi_transaction     : std_logic;
  signal axi_instr_overrun   : std_logic;
  signal axi_data_overrun    : std_logic;
  signal axi_completion_on   : std_logic;
  signal axi_block           : std_logic;

  -- Full frame synchronization packet
  constant C_FF_SYNC_PACKET  : std_logic_vector(31 downto 0) := (31 => '0', others => '1');

  signal trace_clk_i         : std_logic;
  signal trace_reset         : std_logic;
  signal trace_word          : std_logic_vector(31 downto 0);
  signal trace_index         : std_logic_vector(4  downto 0);
  signal trace_trdata        : std_logic_vector(35 downto 0);
  signal trace_valid         : std_logic;
  signal trace_last_word     : std_logic;
  signal trace_started       : std_logic;
  signal trace_ready         : std_logic;
  signal trace_trready       : std_logic;
  signal trace_count_last    : std_logic;

  signal trace_test_pattern  : std_logic_vector(0 to 3);
  signal trace_test_start    : std_logic;
  signal trace_test_stop     : std_logic;
  signal trace_test_timed    : std_logic;
  signal trace_delay         : std_logic_vector(0 to 7);
  signal trace_stopped       : std_logic;

  signal Old_MDM_DRCK    : std_logic;
  signal Old_MDM_TDI     : std_logic;
  signal Old_MDM_TDO     : std_logic;
  signal Old_MDM_SEL     : std_logic;
  signal Old_MDM_SEL_Mux : std_logic;
  signal Old_MDM_SHIFT   : std_logic;
  signal Old_MDM_UPDATE  : std_logic;
  signal Old_MDM_RESET   : std_logic;
  signal Old_MDM_CAPTURE : std_logic;

begin  -- architecture IMP

  config_reset_i <= Config_Reset when C_USE_CONFIG_RESET /= 0 else '0';

  Use_BSCAN : if (C_USE_BSCAN /= 3) generate
    -----------------------------------------------------------------------------
    -- Register mapping
    -----------------------------------------------------------------------------

    -- Magic string "01000010" + "00000000" + No of Jtag peripheral units "0010"
    -- + MDM Version no "00000110"
    --
    -- MDM Versions table:
    --  0,1,2,3: Not used
    --        4: opb_mdm v3
    --        5: mdm v1
    --        6: mdm v2

    constant New_MDM_Config_Word : std_logic_vector(31 downto 0) :=
      "01000010000000000000001000000110";

    signal config_scan_reset : std_logic;
    signal sel_n_reset       : std_logic;
    signal shift_n_reset     : std_logic;
    signal PORT_Selector     : std_logic_vector(3 downto 0) := (others => '0');
    signal PORT_Selector_1   : std_logic_vector(3 downto 0) := (others => '0');
    signal TDI_Shifter       : std_logic_vector(3 downto 0) := (others => '0');
    signal Config_Reg        : std_logic_vector(31 downto 0) := New_MDM_Config_Word;
    signal MDM_SEL           : std_logic;

    attribute shreg_extract : string;
    attribute shreg_extract of Config_Reg : signal is C_USE_SRL16;
  begin
    config_scan_reset <= '0' when Scan_En = '1' else
                         config_reset_i when Scan_Reset_Sel = '0' else
                         Scan_Reset;

    sel_n_reset       <= '0' when Scan_En = '1' else
                         not SEL or config_reset_i when Scan_Reset_Sel = '0' else
                         Scan_Reset;

    shift_n_reset     <= '0' when Scan_En = '1' else
                         not SHIFT or config_reset_i when Scan_Reset_Sel = '0' else
                         Scan_Reset;

    -----------------------------------------------------------------------------
    -- TDI Shift Register
    -----------------------------------------------------------------------------
    -- Shifts data in when PORT 0 is selected. PORT 0 does not actually
    -- exist externaly, but gets selected after asserting the SELECT signal.
    -- The first value shifted in after SELECT goes high will select the new
    -- PORT. 
    JTAG_Mux_Shifting : process (DRCK, sel_n_reset)
    begin
      if sel_n_reset = '1' then
        TDI_Shifter   <= (others => '0');
      elsif DRCK'event and DRCK = '1' then
        if MDM_SEL = '1' and SHIFT = '1' then
          TDI_Shifter <= TDI & TDI_Shifter(3 downto 1);
        end if;
      end if;
    end process JTAG_Mux_Shifting;

    -----------------------------------------------------------------------------
    -- PORT Selector Register
    -----------------------------------------------------------------------------
    -- Captures the shifted data when PORT 0 is selected. The data is captured at
    -- the end of the BSCAN transaction (i.e. when the update signal goes low) to
    -- prevent any other BSCAN signals to assert incorrectly.
    -- Reference : XAPP 139  
    PORT_Selector_Updating : process (UPDATE, sel_n_reset)
    begin
      if sel_n_reset = '1' then
        PORT_Selector   <= (others => '0');
      elsif Update'event and Update = '0' then
        PORT_Selector <= Port_Selector_1;
      end if;
    end process PORT_Selector_Updating;

    PORT_Selector_Updating_1 : process (UPDATE, sel_n_reset)
    begin
      if sel_n_reset = '1' then
        PORT_Selector_1   <= (others => '0');
      elsif Update'event and Update = '1' then
        if MDM_SEL = '1' then
          PORT_Selector_1 <= TDI_Shifter;
        end if;
      end if;
    end process PORT_Selector_Updating_1;

    -----------------------------------------------------------------------------
    -- Configuration register
    -----------------------------------------------------------------------------
    -- TODO Can be replaced by SRLs
    Config_Shifting : process (DRCK, shift_n_reset)
    begin
      if shift_n_reset = '1' then
        Config_Reg <= New_MDM_Config_Word;
      elsif DRCK'event and DRCK = '1' then   -- rising clock edge
        Config_Reg <= '0' & Config_Reg(31 downto 1);
      end if;
    end process Config_Shifting;

    -----------------------------------------------------------------------------
    -- Muxing and demuxing of JTAG Bscan User 1/2/3/4 signals
    --
    -- This block enables the older MDM/JTAG to co-exist with the newer
    -- JTAG multiplexer block
    -----------------------------------------------------------------------------

    -----------------------------------------------------------------------------
    -- TDO Mux
    -----------------------------------------------------------------------------
    with PORT_Selector select
      TDO <=
      Config_Reg(0) when "0000",
      Old_MDM_TDO   when "0001",
      Ext_JTAG_TDO  when "0010",
      '1'           when others;

    -----------------------------------------------------------------------------
    -- SELECT Decoder
    -----------------------------------------------------------------------------
    MDM_SEL         <= SEL when PORT_Selector = "0000" else '0';
    Old_MDM_SEL_Mux <= SEL when PORT_Selector = "0001" else '0';
    Ext_JTAG_SEL    <= SEL when PORT_Selector = "0010" else '0';

    -----------------------------------------------------------------------------
    -- Disable handling
    -----------------------------------------------------------------------------
    Disable_Updating : process (UPDATE, config_scan_reset)
    begin
      if config_scan_reset = '1' then
        jtag_disable <= '1';
      elsif Update'event and Update = '1' then
        jtag_disable <= '0';
      end if;
    end process Disable_Updating;

  end generate Use_BSCAN;

  No_BSCAN : if (C_USE_BSCAN = 3) generate
  begin
    TDO             <= '1';
    Old_MDM_SEL_Mux <= '0';
    Ext_JTAG_SEL    <= '0';
    jtag_disable    <= '1';
  end generate No_BSCAN;

  -----------------------------------------------------------------------------
  -- Old MDM signals
  -----------------------------------------------------------------------------
  Old_MDM_DRCK    <= DRCK;
  Old_MDM_TDI     <= TDI;
  Old_MDM_CAPTURE <= CAPTURE;
  Old_MDM_SHIFT   <= SHIFT;
  Old_MDM_UPDATE  <= UPDATE;
  Old_MDM_RESET   <= RESET;

  -----------------------------------------------------------------------------
  -- External JTAG signals
  -----------------------------------------------------------------------------
  Ext_JTAG_DRCK    <= DRCK;
  Ext_JTAG_TDI     <= TDI;
  Ext_JTAG_CAPTURE <= CAPTURE;
  Ext_JTAG_SHIFT   <= SHIFT;
  Ext_JTAG_UPDATE  <= UPDATE;
  Ext_JTAG_RESET   <= RESET;

  -----------------------------------------------------------------------------
  -- AXI bus interface
  -----------------------------------------------------------------------------
  ip2bus_rdack <= uart_ip2bus_rdack or dbgreg_ip2bus_rdack;
  ip2bus_wrack <= uart_ip2bus_wrack or dbgreg_ip2bus_wrack;
  ip2bus_error <= uart_ip2bus_error or dbgreg_ip2bus_error;
  ip2bus_data  <= uart_ip2bus_data  or dbgreg_ip2bus_data;

  bus_rst <= not bus2ip_resetn;

  -----------------------------------------------------------------------------
  -- UART
  -----------------------------------------------------------------------------
  Use_Uart : if (C_USE_UART = 1) generate
    -- Read Only
    signal status_Reg : std_logic_vector(7 downto 0);
    -- bit 4 enable_interrupts
    -- bit 3 tx_Buffer_Full
    -- bit 2 tx_Buffer_Empty
    -- bit 1 rx_Buffer_Full
    -- bit 0 rx_Data_Present

    -- Write Only
    -- Control Register
    -- bit 7-5 Dont'Care
    -- bit 4   enable_interrupts
    -- bit 3   Dont'Care
    -- bit 2   Clear Ext BRK signal
    -- bit 1   Reset_RX_FIFO
    -- bit 0   Reset_TX_FIFO

    signal tx_Buffer_Empty_Pre : std_logic;
  begin
    ---------------------------------------------------------------------------
    -- Acknowledgement and error signals
    ---------------------------------------------------------------------------
    uart_ip2bus_rdack <= bus2ip_rdce(0) or bus2ip_rdce(2) or bus2ip_rdce(1)
                         or bus2ip_rdce(3);

    uart_ip2bus_wrack <= bus2ip_wrce(1) or bus2ip_wrce(3) or bus2ip_wrce(0)
                         or bus2ip_wrce(2);

    uart_ip2bus_error <= ((bus2ip_rdce(0) and not rx_Data_Present) or
                          (bus2ip_wrce(1) and tx_Buffer_Full) );
    
    ---------------------------------------------------------------------------
    -- Status register
    ---------------------------------------------------------------------------
    status_Reg(0) <= rx_Data_Present;
    status_Reg(1) <= rx_Buffer_Full;
    status_Reg(2) <= tx_Buffer_Empty;
    status_Reg(3) <= tx_Buffer_Full;
    status_Reg(4) <= enable_interrupts;
    status_Reg(7 downto 5) <= "000";

    ---------------------------------------------------------------------------
    -- Control Register    
    ---------------------------------------------------------------------------
    CTRL_REG_DFF : process (bus2ip_clk) is
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then -- rising clock edge
        if bus2ip_resetn = '0' then                 -- synchronous reset (active low)
          enable_interrupts <= '0';
          clear_Ext_BRK     <= '0';
          reset_RX_FIFO     <= '1';
          reset_TX_FIFO     <= '1';
        elsif (bus2ip_wrce(3) = '1') then  -- Control Register is reg 3
           enable_interrupts <= bus2ip_data(4); -- Bit 4 in control reg
           clear_Ext_BRK     <= bus2ip_data(2); -- Bit 2 in control reg
           reset_RX_FIFO     <= bus2ip_data(1); -- Bit 1 in control reg
           reset_TX_FIFO     <= bus2ip_data(0); -- Bit 0 in control reg
        else
          clear_Ext_BRK <= '0';
          reset_RX_FIFO <= '0';
          reset_TX_FIFO <= '0';
        end if;
      end if;
    end process CTRL_REG_DFF;
                               
    ---------------------------------------------------------------------------
    -- Read bus interface
    ---------------------------------------------------------------------------
    READ_MUX : process (status_reg, bus2ip_rdce(2), bus2ip_rdce(0), rx_Data) is
    begin
      uart_ip2bus_data <= (others => '0');
      if (bus2ip_rdce(2) = '1') then    -- Status register is reg 2
        uart_ip2bus_data(status_reg'length-1 downto 0) <= status_reg;
      elsif (bus2ip_rdce(0) = '1') then -- RX FIFO is reg 0
        uart_ip2bus_data(C_UART_WIDTH-1 downto 0) <= rx_Data;
      end if;
    end process READ_MUX;
    
    ---------------------------------------------------------------------------
    -- Write bus interface
    ---------------------------------------------------------------------------
    tx_Data <=  bus2ip_data(C_UART_WIDTH-1 downto 0);
    
    ---------------------------------------------------------------------------
    -- Read and write pulses to the FIFOs
    ---------------------------------------------------------------------------
    write_TX_FIFO <= bus2ip_wrce(1);    -- TX FIFO is reg 1
    read_RX_FIFO  <= bus2ip_rdce(0);    -- RX FIFO is reg 0

    -- Sample the tx_Buffer_Empty signal in order to detect a rising edge 
    TX_Buffer_Empty_FDRE : MB_FDRE
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        Q  => tx_Buffer_Empty_Pre, 
        C  => bus2ip_clk,
        CE => '1',
        D  => tx_Buffer_Empty,
        R  => write_TX_FIFO);

    ---------------------------------------------------------------------------
    -- Interrupt handling
    ---------------------------------------------------------------------------
    Interrupt <= enable_interrupts and ( rx_Data_Present or
                                         ( tx_Buffer_Empty and
                                           not tx_Buffer_Empty_Pre ) );
  end generate Use_UART;

  No_UART : if (C_USE_UART = 0) generate
  begin
    uart_ip2bus_rdack <= bus2ip_rdce(0) or bus2ip_rdce(2) or bus2ip_rdce(1)
                         or bus2ip_rdce(3);
    uart_ip2bus_wrack <= bus2ip_wrce(1) or bus2ip_wrce(3) or bus2ip_wrce(0)
                         or bus2ip_wrce(2);
    uart_ip2bus_error <= '0';
    uart_ip2bus_data  <= (others => '0');

    Interrupt         <= '0';

    reset_TX_FIFO     <= '1';
    reset_RX_FIFO     <= '1';
    enable_interrupts <= '0';
    clear_Ext_BRK     <= '0';
    tx_Data           <= (others => '0');
    write_TX_FIFO     <= '0';
    read_RX_FIFO      <= '0';
  end generate No_UART;

  -----------------------------------------------------------------------------
  -- Debug Register Access
  -----------------------------------------------------------------------------
  Use_Dbg_Reg_Access : if (C_DBG_REG_ACCESS = 1) generate
    type state_type is
      (idle, select_dr, capture_dr, wait_dr, shift_dr, exit1, pause, exit2, update_dr, cmd_done, data_done);

    signal bit_size       : std_logic_vector(8 downto 0);
    signal cmd_val        : std_logic_vector(7 downto 0);
    signal type_lock      : std_logic_vector(1 downto 0);
    signal use_mdm        : std_logic;
    signal reg_data       : std_logic_vector(31 downto 0);

    signal bit_cnt        : std_logic_vector(0 to 8);
    signal clk_cnt        : std_logic_vector(0 to C_CLOCK_BITS / 2);
    signal clk_cnt_zero   : std_logic;
    signal clk_fall       : boolean;
    signal clk_rise       : boolean;
    signal shifting       : boolean;
    signal data_shift     : boolean;
    signal direction      : std_logic;
    signal rd_wr_n        : boolean;
    signal rdack_data     : std_logic;
    signal rdack_data_p   : std_logic;
    signal selected       : std_logic := '0';
    signal shift_index    : std_logic_vector(0 to 4);
    signal state          : state_type;
    signal unlocked       : boolean;
    signal wrack_data     : std_logic;
    signal wrack_data_p   : std_logic;
    signal next_bit       : std_logic;
    signal next_index     : std_logic_vector(0 to 4);
    signal reg_data_bit   : std_logic;
    signal mb_instr       : boolean;

    signal dbgreg_TDI     : std_logic;
    signal dbgreg_RESET   : std_logic;
    signal dbgreg_SHIFT   : std_logic;
    signal dbgreg_CAPTURE : std_logic;
    signal dbgreg_SEL     : std_logic;
    signal dbgreg_disable : std_logic := '1';

    signal wrack_bus      : std_logic;
    signal wrack_bus_p    : std_logic;
    signal rdack_bus      : std_logic;
    signal rdack_bus_p    : std_logic;
    signal error_bus      : std_logic;
    signal bus_data       : std_logic_vector(31 downto 0);

    signal bus2ip_with_scan_reset : std_logic;
  begin

    ---------------------------------------------------------------------------
    -- Acknowledgement and error signals
    ---------------------------------------------------------------------------
    dbgreg_ip2bus_rdack <= bus2ip_rdce(4) or bus2ip_rdce(6) or bus2ip_rdce(7) or
                           rdack_data_p or rdack_bus_p;
    dbgreg_ip2bus_wrack <= bus2ip_wrce(4) or bus2ip_wrce(6) or bus2ip_wrce(7) or
                           wrack_data_p or wrack_bus_p;
    dbgreg_ip2bus_error <= error_bus;

    ---------------------------------------------------------------------------
    -- Control register
    ---------------------------------------------------------------------------
    CTRL_REG_DFF : process (bus2ip_clk) is
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then -- rising clock edge
        if bus2ip_resetn = '0' then                 -- synchronous reset (active low)
          use_mdm   <= '0';
          type_lock <= (others => '0');
          cmd_val   <= (others => '0');
          bit_size  <= (others => '0');
        elsif (bus2ip_wrce(4) = '1') and unlocked then  -- Control Register is reg 4
          type_lock <= bus2ip_data(19 downto 18);
          use_mdm   <= bus2ip_data(17);
          cmd_val   <= bus2ip_data(16 downto 9);
          bit_size  <= bus2ip_data(8  downto 0);
        end if;
      end if;
    end process CTRL_REG_DFF;

    ---------------------------------------------------------------------------
    -- Data register and TAP state machine
    ---------------------------------------------------------------------------
    DATA_REG_DFF : process (bus2ip_clk) is
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then -- rising clock edge
        if bus2ip_resetn = '0' then                 -- synchronous reset (active low)
          reg_data        <= (others => '0');
          rdack_data      <= '0';
          wrack_data      <= '0';
          state           <= idle;
          shifting        <= false;
          data_shift      <= false;
          direction       <= '1';
          rd_wr_n         <= false;
          clk_rise        <= false;
          clk_fall        <= false;
          clk_cnt         <= (others => '0');
          bit_cnt         <= "000000111";
          shift_index     <= "00000";
          dbgreg_TDI      <= '0';
          dbgreg_RESET    <= '0';
          dbgreg_SHIFT    <= '0';
          dbgreg_CAPTURE  <= '0';
          dbgreg_SEL      <= '0';
          DbgReg_DRCK_i   <= '0';
          DbgReg_UPDATE_i <= '0';
          selected        <= '0';
          next_bit        <= '0';
        else
          rdack_data    <= '0';
          wrack_data    <= '0';
          if unlocked and dbgreg_access_lock = '1' and not shifting then
            if bus2ip_wrce(5) = '1' then
              reg_data <= bus2ip_data;
              shifting <= true;
              rd_wr_n  <= false;
            end if;
            if bus2ip_rdce(5) = '1' then
              reg_data <= (others => '0');
              shifting <= true;
              rd_wr_n  <= true;
            end if;
          end if;
          if not unlocked or dbgreg_access_lock = '0' then
            if bus2ip_wrce(5) = '1' then
              wrack_data <= '1';
            end if;
            if bus2ip_rdce(5) = '1' then
              rdack_data <= '1';
            end if;
          end if;
          if clk_rise then
            case state is
              when idle =>
                -- Idle - Start when data access occurs
                if shifting then
                  state <= select_dr;
                end if;
                bit_cnt     <= "000000111";
                shift_index <= "00000";
                selected    <= '0';
                next_bit    <= cmd_val(0);
              when select_dr =>
                -- TAP state Select DR - Set SEL
                state <= capture_dr;
                dbgreg_SEL  <= '1';
                selected    <= '1';
              when capture_dr =>
                -- TAP state Capture DR - Set CAPTURE and pulse DRCK
                if C_CLOCK_BITS < 2 then
                  state <= wait_dr;
                else
                  state <= shift_dr;
                end if;
                dbgreg_CAPTURE <= '1';
                DbgReg_DRCK_i  <= '1';
              when wait_dr =>
                -- Wait for TDO
                state <= shift_dr;
                dbgreg_CAPTURE <= '0';
                dbgreg_SHIFT   <= '1';
                DbgReg_DRCK_i  <= '1';
              when shift_dr =>
                -- TAP state Shift DR - Set SHIFT and pulse DRCK until done or pause
                if bit_cnt = (bit_cnt'range => '0') then
                  state <= exit2;         -- Shift done
                elsif shift_index = (shift_index'range => direction) then
                  state <= exit1;         -- Acknowledge and pause until next word
                  if rd_wr_n then
                    rdack_data <= '1';
                  else
                    wrack_data <= '1';
                  end if;
                elsif data_shift then
                  next_bit <= reg_data(to_integer(unsigned(next_index)));
                else
                  next_bit <= cmd_val(to_integer(unsigned(next_index)));
                end if;
                if data_shift then
                  reg_data(to_integer(unsigned(shift_index))) <= Old_MDM_TDO;
                end if;
                dbgreg_CAPTURE <= '0';
                dbgreg_SHIFT   <= '1';
                DbgReg_DRCK_i  <= '1';
                bit_cnt        <= std_logic_vector(unsigned(bit_cnt) - 1);
                shift_index    <= next_index;
              when exit1 =>
                -- TAP state Exit1 DR - End shift and go to pause
                state <= pause;
                shifting      <= false;
                dbgreg_SHIFT  <= '0';
                DbgReg_DRCK_i <= '0';
              when pause =>
                -- TAP state Pause DR - Pause until new data access or abort
                if dbgreg_access_lock = '0' then
                  state <= exit2;         -- Abort shift
                elsif shifting then
                  state <= shift_dr;      -- Continue with next word
                end if;
                if direction = '1' then
                  next_bit <= reg_data(0);
                elsif bit_cnt(0 to 3) = "0000" and not mb_instr then
                  shift_index <= bit_size(shift_index'length - 1 downto 0);
                  next_bit <= reg_data_bit;
                else
                  next_bit <= reg_data(reg_data'left);
                end if;
                DbgReg_DRCK_i <= '0';
              when exit2 =>
                -- TAP state Exit2 DR - Delay before update
                state <= update_dr;
                dbgreg_SHIFT  <= '0';
                DbgReg_DRCK_i <= '0';
              when update_dr =>
                -- TAP state Update DR - Pulse UPDATE and acknowledge data access
                if data_shift then
                  state <= data_done;
                  if rd_wr_n then
                    rdack_data  <= '1';
                  else
                    wrack_data  <= '1';
                  end if;
                else
                  state <= cmd_done;
                end if;
                DbgReg_UPDATE_i <= '1';
              when cmd_done =>
                -- Command phase done - Continue with data phase
                state <= select_dr;
                data_shift    <= true;
                bit_cnt       <= bit_size;
                if use_mdm = '1' then
                  shift_index <= (others => '0');
                  next_bit    <= reg_data(0);
                elsif bit_size(bit_size'left downto shift_index'length) = "0000" or mb_instr then
                  shift_index <= bit_size(shift_index'length - 1 downto 0);
                  next_bit    <= reg_data_bit;
                else
                  shift_index <= (others => '1');
                  next_bit    <= reg_data(reg_data'left);
                end if;
                direction       <= use_mdm;
                DbgReg_UPDATE_i <= '0';
              when data_done =>
                -- Data phase done - End shifting and go back to idle
                state           <= idle;
                data_shift      <= false;
                shifting        <= false;
                direction       <= '1';
                DbgReg_UPDATE_i <= '0';
            end case;
          elsif clk_fall then
            DbgReg_DRCK_i <= '0';
            dbgreg_TDI    <= next_bit;
          end if;
          if clk_cnt_zero = '1' then
            clk_rise <= (clk_cnt(clk_cnt'left) = '0');
            clk_fall <= (clk_cnt(clk_cnt'left) = '1');
          else
            clk_rise <= false;
            clk_fall <= false;
          end if;
          clk_cnt <= std_logic_vector(unsigned(clk_cnt) - 1);
        end if;
      end if;
    end process DATA_REG_DFF;

    rdack_data_p <= rdack_data and bus2ip_rdce(5);
    wrack_data_p <= wrack_data and bus2ip_wrce(5);

    Many_Clock_Bits: if C_CLOCK_BITS >= 2 generate
    begin
      clk_cnt_zero <=
        '1' when clk_cnt(clk_cnt'left + 1 to clk_cnt'right) = (clk_cnt'left + 1 to clk_cnt'right => '0') else
        '0';
    end generate Many_Clock_Bits;

    Few_Clock_Bits: if C_CLOCK_BITS < 2 generate
    begin
      clk_cnt_zero <= '1';
    end generate Few_Clock_Bits;

    next_index <= std_logic_vector(unsigned(shift_index) + 1) when direction = '1' else
                  std_logic_vector(unsigned(shift_index) - 1);

    reg_data_bit <= reg_data(to_integer(unsigned(bit_size(shift_index'length - 1 downto 0))));

    mb_instr <= cmd_val = MB_WRITE_INSTR;

    ---------------------------------------------------------------------------
    -- Lock register
    ---------------------------------------------------------------------------
    LOCK_REG_DFF : process (bus2ip_clk) is
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
        if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
          unlocked <= false;
        elsif (bus2ip_wrce(6) = '1') then  -- Lock Register is reg 6
          unlocked <= (bus2ip_data(15 downto 0) = X"EBAB") and (not unlocked);
        end if;
      end if;
    end process LOCK_REG_DFF;

    ---------------------------------------------------------------------------
    -- Read bus interface
    ---------------------------------------------------------------------------
    READ_MUX : process (bus2ip_rdce(4), rdack_data, dbgreg_access_lock, reg_data, rdack_bus, bus_data) is
    begin
      dbgreg_ip2bus_data <= (others => '0');
      if (bus2ip_rdce(4) = '1') then    -- Status register is reg 4
        dbgreg_ip2bus_data(0) <= dbgreg_access_lock;
      elsif rdack_data = '1' then       -- Data register is reg 5
        dbgreg_ip2bus_data <= reg_data;
      elsif rdack_bus = '1' and C_DEBUG_INTERFACE > 0 then  -- Parallel bus access
        dbgreg_ip2bus_data <= bus_data;
      end if;
    end process READ_MUX;
    
    ---------------------------------------------------------------------------
    -- Access lock handling
    ---------------------------------------------------------------------------
    Handle_Access_Lock : process (bus2ip_clk) is
      variable jtag_access_lock_1   : std_logic;
      variable jtag_force_lock_1    : std_logic;
      variable jtag_clear_overrun_1 : std_logic;
      variable jtag_busy_1          : std_logic;                                          

      attribute ASYNC_REG : string;
      attribute ASYNC_REG of jtag_access_lock_1   : variable is "TRUE";
      attribute ASYNC_REG of jtag_force_lock_1    : variable is "TRUE";
      attribute ASYNC_REG of jtag_clear_overrun_1 : variable is "TRUE";
      attribute ASYNC_REG of jtag_busy_1          : variable is "TRUE";
    begin
      if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
        if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
          dbgreg_access_lock   <= '0';
          dbgreg_force_lock    <= '0';
          dbgreg_unlocked      <= '0';
          jtag_axi_overrun     <= '0';
          jtag_access_lock_1   := '0';
          jtag_force_lock_1    := '0';
          jtag_clear_overrun_1 := '0';
          jtag_busy_1          := '0';
        else
          -- Unlock after last access for type "01"
          if state = data_done and type_lock = "01" then
            dbgreg_access_lock <= '0';
          end if;

          -- Write to Debug Access Control Register
          if bus2ip_wrce(4) = '1' then
            case bus2ip_data(19 downto 18) is
              when "00" =>                -- Release lock to abort atomic sequence
                dbgreg_access_lock <= '0';
              when "01" | "10" =>         -- Lock before first access
                if dbgreg_access_lock = '0' and jtag_busy_1 = '0' and jtag_access_lock_1 = '0' then
                  dbgreg_access_lock <= '1';
                end if;
              when "11" =>                -- Force access lock
                dbgreg_access_lock <= '1';
                dbgreg_force_lock  <= '1';
              -- coverage off
              when others =>
                null;
              -- coverage on
            end case;
          else
            dbgreg_force_lock <= '0';
          end if;
          jtag_access_lock_1 := JTAG_Access_Lock;

          -- JTAG force lock
          if jtag_force_lock_1 = '1' then
            dbgreg_access_lock <= '0';
            dbgreg_unlocked    <= '1';
          else
            dbgreg_unlocked    <= '0';
          end if;
          jtag_force_lock_1 := jtag_force_lock;

          -- JTAG overrun detection
          if selected = '1' and jtag_busy_1 = '1' then
            jtag_axi_overrun  <= '1';
          elsif jtag_clear_overrun_1 = '1' then
            jtag_axi_overrun  <= '0';
          end if;
          jtag_clear_overrun_1 := jtag_clear_overrun;
          jtag_busy_1          := jtag_busy;
        end if;
      end if;
    end process;

    DbgReg_DRCK   <= DbgReg_DRCK_i;
    DbgReg_UPDATE <= DbgReg_UPDATE_i;
    DbgReg_Select <= selected;

    -----------------------------------------------------------------------------
    -- Disable handling
    -----------------------------------------------------------------------------
    bus2ip_with_scan_reset <= '0' when Scan_En = '1' else
                              not bus2ip_resetn when Scan_Reset_Sel = '0' else
                              Scan_Reset;

    Disable_Updating : process (bus2ip_clk, bus2ip_with_scan_reset)
    begin
      if bus2ip_with_scan_reset = '1' then
        dbgreg_disable <= '1';
      elsif bus2ip_clk'event and bus2ip_clk = '1' then
        if unlocked then
          dbgreg_disable <= '0';
        end if;
      end if;
    end process Disable_Updating;

    Old_MDM_SEL <= dbgreg_SEL     when selected = '1' else Old_MDM_SEL_Mux;
    TDI         <= dbgreg_TDI     when selected = '1' else JTAG_TDI;
    RESET       <= dbgreg_RESET   when selected = '1' else JTAG_RESET;
    SHIFT       <= dbgreg_SHIFT   when selected = '1' else JTAG_SHIFT;
    CAPTURE     <= dbgreg_CAPTURE when selected = '1' else JTAG_CAPTURE;
    JTAG_TDO    <= '0'            when selected = '1' else TDO;
    disable     <= '0'            when dbgreg_disable = '0' or jtag_disable = '0' else '1';

    Use_Parallel_Access : if (C_DEBUG_INTERFACE > 0) generate
      constant C_REG_NUM_BUS : integer := C_REG_NUM_CE - 1;

      signal dbgreg_access     : std_logic;
      signal dbgreg_block      : std_logic;
      signal bus2ip_wrce_other : std_logic;
      signal bus2ip_rdce_other : std_logic;
      signal wrack_bus_1       : std_logic;
      signal rdack_bus_1       : std_logic;
    begin
      dbgreg_AWADDR <= S_AXI_AWADDR(14 downto 2);
      dbgreg_WDATA  <= bus2ip_data;
      dbgreg_ARADDR <= S_AXI_ARADDR(14 downto 2);

      Valid_DFF: process (bus2ip_clk) is
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
          if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
            Dbgreg_AWVALID     <= '0';
            Dbgreg_WVALID      <= '0';
            Dbgreg_ARVALID     <= '0';
            dbgreg_access      <= '0';
            dbgreg_block       <= '0';
            dbgreg_mb_instr    <= '0';
            dbgreg_mb_data     <= '0';
            dbgreg_transaction <= '0';
          else
            if Dbg_AWREADY = '1' then
              dbgreg_AWVALID <= '0';
            end if;
            if Dbg_WREADY = '1' then
              dbgreg_WVALID <= '0';
            end if;
            if unlocked and bus2ip_wrce(C_REG_NUM_BUS) = '1' and dbgreg_access = '0' then
              dbgreg_AWVALID  <= not axi_block;
              dbgreg_WVALID   <= not axi_block;
              dbgreg_access   <= '1';
              dbgreg_block    <= axi_block;
              if S_AXI_AWADDR(13 downto 6) = MB_WRITE_INSTR then
                dbgreg_mb_instr <= '1';
              else
                dbgreg_mb_instr <= '0';
              end if;
            end if;

            if Dbg_ARREADY = '1' then
              dbgreg_ARVALID <= '0';
            end if;
            if unlocked and bus2ip_rdce(C_REG_NUM_BUS) = '1' and dbgreg_access = '0' then
              dbgreg_ARVALID <= not axi_block;
              dbgreg_access  <= '1';
              dbgreg_block   <= axi_block;
              if S_AXI_ARADDR(13 downto 6) = MB_READ_DATA then
                dbgreg_mb_data <= '1';
              else
                dbgreg_mb_data <= '0';
              end if;
            end if;

            if (Dbg_BVALID = '1' or Dbg_RVALID = '1' or dbgreg_block = '1') and (dbgreg_access = '1') then
              dbgreg_access      <= '0';
              dbgreg_block       <= '0';
              dbgreg_mb_instr    <= '0';
              dbgreg_mb_data     <= '0';
              dbgreg_transaction <= '1';
            else
              dbgreg_transaction <= '0';
            end if;
          end if;
        end if;
      end process Valid_DFF;

      Other_CE_DFF: process (bus2ip_clk) is
        variable wrce_other : std_logic;
        variable rdce_other : std_logic;
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
          if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
            bus2ip_wrce_other <= '0';
            bus2ip_rdce_other <= '0';
            wrack_bus_1       <= '0';
            rdack_bus_1       <= '0';
          else
            wrce_other := '0';
            rdce_other := '0';
            for I in 8 to C_REG_NUM_BUS - 1 loop
              wrce_other := wrce_other or bus2ip_wrce(I);
              rdce_other := rdce_other or bus2ip_rdce(I);
            end loop;
            if not unlocked and bus2ip_wrce(C_REG_NUM_BUS) = '1' then
              wrce_other := '1';
            end if;
            if not unlocked and bus2ip_rdce(C_REG_NUM_BUS) = '1' then
              rdce_other := '1';
            end if;
            bus2ip_wrce_other <= wrce_other;
            bus2ip_rdce_other <= rdce_other;
            wrack_bus_1       <= wrack_bus;
            rdack_bus_1       <= rdack_bus;
          end if;
        end if;
      end process Other_CE_DFF;

      wrack_bus <= ((Dbg_BVALID or dbgreg_block) and dbgreg_access) or bus2ip_wrce_other;
      rdack_bus <= ((Dbg_RVALID or dbgreg_block) and dbgreg_access) or bus2ip_rdce_other;
      error_bus <= (Dbg_BRESP or Dbg_RRESP) and (not axi_completion_on) and dbgreg_access;
      bus_data  <= Dbg_RDATA;

      wrack_bus_p <= wrack_bus and not wrack_bus_1;
      rdack_bus_p <= rdack_bus and not rdack_bus_1;
    end generate Use_Parallel_Access;

    Use_Serial_Access : if (C_DEBUG_INTERFACE = 0) generate
    begin
      dbgreg_AWADDR      <= (others => '0');
      dbgreg_WDATA       <= (others => '0');
      dbgreg_ARADDR      <= (others => '0');
      dbgreg_AWVALID     <= '0';
      dbgreg_WVALID      <= '0';
      dbgreg_ARVALID     <= '0';
      dbgreg_transaction <= '0';
      dbgreg_mb_instr    <= '0';
      dbgreg_mb_data     <= '0';
      wrack_bus          <= '0';
      rdack_bus          <= '0';
      error_bus          <= '0';
      bus_data           <= (others => '0');
      wrack_bus_p        <= '0';
      rdack_bus_p        <= '0';
    end generate Use_Serial_Access;

  end generate Use_Dbg_Reg_Access;

  Use_Parallel_Access : if (C_DEBUG_INTERFACE > 0) generate
    signal jtag_mb_instr : std_logic;
    signal jtag_mb_data  : std_logic;
  begin

    Write_Instr_Status : process (bus2ip_clk) is
    begin  -- process Write_Instr_Status
      if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
        if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
          axi_instr_overrun <= '0';
        else
          if (dbgreg_mb_instr = '1' or jtag_mb_instr = '1') and Dbg_BVALID = '1' and Dbg_BRESP = '1' then
            axi_instr_overrun <= '1';
          end if;
          if JTAG_Clear_Overrun = '1' then
            axi_instr_overrun <= '0';
          end if;
        end if;
      end if;
    end process Write_Instr_Status;

    Data_Read_Status : process (bus2ip_clk) is
    begin  -- process Data_Read_Status
      if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
        if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
          axi_data_overrun <= '0';
        else
          if (dbgreg_mb_data = '1' or jtag_mb_data = '1') and Dbg_RVALID = '1' and Dbg_RRESP = '1' then
            axi_data_overrun <= '1';
          end if;
          if JTAG_Clear_Overrun = '1' then
            axi_data_overrun <= '0';
          end if;
        end if;
      end if;
    end process Data_Read_Status;

    Use_BSCAN : if (C_USE_BSCAN /= 3) generate
      signal jtag_AWADDR        : std_logic_vector(14 downto 2);
      signal jtag_AWVALID       : std_logic;
      signal jtag_WVALID        : std_logic;
      signal jtag_WDATA         : std_logic_vector(31 downto 0);
      signal jtag_ARADDR        : std_logic_vector(14 downto 2);
      signal jtag_ARVALID       : std_logic;
      signal jtag_RDATA         : std_logic_vector(31 downto 0);
      signal jtag_access        : boolean;

      signal rd_shiftreg        : std_logic_vector(0 to 31)  := (others => '0');
      signal rd_shiftcount      : std_logic_vector(0 to 4)   := (others => '0');
      signal rd_shiftindex      : std_logic_vector(0 to 4)   := (others => '0');
      signal rd_wordcount       : std_logic_vector(0 to 3)   := (others => '0');
      signal readstart          : std_logic := '0';
      signal next_rd_shiftcount : std_logic_vector(0 to 5);
      signal rd_jtag_access     : boolean;

      signal wr_shiftreg        : std_logic_vector(0 to 255) := (others => '0');
      signal wr_shiftcount      : std_logic_vector(0 to 8)   := (others => '0');
      signal wr_wordcount       : std_logic_vector(0 to 2);
      signal writestart         : std_logic := '0';
      signal next_wr_shiftcount : std_logic_vector(0 to 8);
      signal wr_lowaddr         : std_logic_vector(0 to 2);
      signal wr_command         : std_logic_vector(0 to 7);
      signal wr_index           : integer range 0 to 7;
      signal wr_jtag_access     : boolean;

      signal wr_data_in         : std_logic_vector(0 to 42);
      signal wr_data_write      : std_logic;
      signal wr_data_out        : std_logic_vector(0 to 42);
      signal wr_data_read       : std_logic;
      signal wr_data_exists     : std_logic;

      signal config_with_scan_reset : std_logic;
    begin

      BSCAN_FIFO_I : SRL_FIFO
        generic map (
          C_TARGET    => C_TARGET,         -- [TARGET_FAMILY_TYPE]
          C_DATA_BITS => 43,               -- [natural]
          C_DEPTH     => 16,               -- [natural]
          C_USE_SRL16 => C_USE_SRL16)      -- [string]
        port map (
          Clk         => bus2ip_clk,       -- [in  std_logic]
          Reset       => bus_rst,          -- [in  std_logic]
          FIFO_Write  => wr_data_write,    -- [in  std_logic]
          Data_In     => wr_data_in,       -- [in  std_logic_vector(0 to C_DATA_BITS-1)]
          FIFO_Read   => wr_data_read,     -- [in  std_logic]
          Data_Out    => wr_data_out,      -- [out std_logic_vector(0 to C_DATA_BITS-1)]
          FIFO_Full   => open,             -- [out std_logic]
          Data_Exists => wr_data_exists);  -- [out std_logic]

      wr_index     <= 7 - to_integer(unsigned(wr_wordcount));
      wr_data_in   <= wr_shiftreg(wr_index * 32 to wr_index * 32 + 31) & wr_command & wr_lowaddr;
      wr_data_read <= '1' when Dbg_BVALID = '1' and wr_jtag_access else '0';

      jtag_WDATA    <= wr_data_out(0 to 31);
      jtag_AWADDR   <= '1' & wr_data_out(32 to 39) & '0' & wr_data_out(40 to 42);
      jtag_ARADDR   <= '1' & Dbg_Command & rd_wordcount;
      jtag_mb_instr <= '1' when Dbg_Reg_En = MB_WRITE_INSTR else '0';
      jtag_mb_data  <= '1' when Dbg_Reg_En = MB_READ_DATA   else '0';

      Data_Read : process (bus2ip_clk) is
      begin  -- process Data_Read
        if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
          if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
            jtag_RDATA <= (others => '0');
          elsif Dbg_RVALID = '1' then
            jtag_RDATA <= Dbg_RDATA;
          end if;
        end if;
      end process Data_Read;

      Enabled_DFF : process (bus2ip_clk) is
      begin
        if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
          if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
            mb_debug_enabled_q <= mb_debug_enabled_i;
          elsif not jtag_access then
            mb_debug_enabled_q <= mb_debug_enabled_i;
          end if;
        end if;
      end process Enabled_DFF;

      Valid_DFF : process (bus2ip_clk)
        variable sample   : std_logic_vector(0 to 3) := (others => '0');
        variable sample_1 : std_logic_vector(0 to 3) := (others => '0');
        variable sample_2 : std_logic_vector(0 to 3) := (others => '0');

        attribute ASYNC_REG : string;
        attribute ASYNC_REG of sample   : variable is "TRUE";
        attribute ASYNC_REG of sample_1 : variable is "TRUE";
      begin  -- process Valid_DFF
        if bus2ip_clk'event and bus2ip_clk = '1' then  -- rising clock edge
          if bus2ip_resetn = '0' then                  -- synchronous reset (active low)
            jtag_AWVALID   <= '0';
            jtag_WVALID    <= '0';
            jtag_ARVALID   <= '0';
            jtag_access    <= false;

            rd_jtag_access <= false;
            wr_wordcount   <= (others => '0');
            wr_lowaddr     <= (others => '0');
            wr_command     <= (others => '0');
            wr_data_write  <= '0';
            wr_jtag_access <= false;

            sample_2       := (others => '0');
            sample_1       := (others => '0');
            sample         := (others => '0');
          else
            if Dbg_AWREADY = '1' then
              jtag_AWVALID <= '0';
            end if;
            if Dbg_WREADY = '1' then
              jtag_WVALID <= '0';
            end if;
            if Dbg_ARREADY = '1' then
              jtag_ARVALID <= '0';
            end if;

            -- Sample and edge-detect
            if (sample_1(0) = '1' and sample_1(1) = '1' and sample_2(0) = '0') or
               (sample_1(3) = '1' and sample_1(1) = '1' and sample_2(3) = '0') then
              -- Rising edge of update with data_cmd = 1: Write word to FIFO if not IIR
              -- Rising edge of writestart with data_cmd = 1: Write word to FIFO
              wr_wordcount <= "000";
              if Dbg_Reg_En(0 to 3) = "0001" and wr_shiftcount(0) = '0' then  -- BP (128)
                wr_wordcount <= "011";
              end if;
              if Dbg_Reg_En(0 to 3) = "0001" and wr_shiftcount(0) = '1' then  -- WP (256)
                wr_wordcount <= "111";
              end if;
              if Dbg_Reg_En = "01110110" then  -- PDRR (36)
                wr_wordcount <= "001";
              end if;
              wr_lowaddr    <= (others => '0');
              wr_command    <= Dbg_Command;
              wr_data_write <= not jtag_mb_instr or (sample_1(3) and not sample_2(3));
            elsif wr_wordcount = "000" then
              -- Write done
              wr_data_write <= '0';
            else
              -- Write next word to FIFO
              wr_wordcount <= std_logic_vector(unsigned(wr_wordcount) - 1);
              wr_lowaddr   <= std_logic_vector(unsigned(wr_lowaddr) + 1);
            end if;
            if (sample_1(1) = '1' and sample_2(1) = '0') or
               (sample_1(2) = '1' and sample_1(1) = '1' and sample_2(2) = '0') then
              -- Rising edge of data_cmd
              -- Rising edge of readstart with data_cmd = 1
              jtag_ARVALID   <= '1';
              rd_jtag_access <= true;
              jtag_access    <= true;
            elsif (Dbg_BVALID = '1' and not rd_jtag_access) or
                  (Dbg_RVALID = '1' and not wr_jtag_access) then
              jtag_access    <= false;
            end if;
            sample_2  := sample_1;
            sample_1  := sample;
            sample(0) := Dbg_Update;
            sample(1) := Dbg_data_cmd;
            sample(2) := readstart;
            sample(3) := writestart;

            -- Start write transaction if FIFO not empty and no ongoing access
            if wr_data_exists = '1' and not wr_jtag_access then
              jtag_AWVALID   <= '1';
              jtag_WVALID    <= '1';
              wr_jtag_access <= true;
              jtag_access    <= true;
            elsif (Dbg_BVALID = '1' and not rd_jtag_access) or
                  (Dbg_RVALID = '1' and not wr_jtag_access) then
              jtag_access    <= false;
            end if;

            if Dbg_BVALID = '1' then
              wr_jtag_access <= false;
            end if;
            if Dbg_RVALID = '1' then
              rd_jtag_access <= false;
            end if;
          end if;
        end if;
      end process Valid_DFF;

      config_with_scan_reset <= '0' when Scan_En = '1' else
                                Config_Reset when Scan_Reset_Sel = '0' else
                                Scan_Reset;

      Shifter : process (DRCK, config_with_scan_reset)
      begin
        if config_with_scan_reset = '1' then
          rd_shiftreg   <= (others => '0');
          rd_shiftcount <= (others => '0');
          rd_shiftindex <= (others => '0');
          rd_wordcount  <= (others => '0');
          readstart     <= '0';
          wr_shiftreg   <= (others => '0');
          wr_shiftcount <= (others => '0');
          writestart    <= '0';
        elsif DRCK'event and DRCK = '1' then
          readstart <= '0';
          if Dbg_Shift = '1' then
            rd_shiftreg   <= rd_shiftreg(1 to rd_shiftreg'right) & '0';
            rd_shiftcount <= next_rd_shiftcount(1 to next_rd_shiftcount'right);
            wr_shiftreg   <= wr_shiftreg(1 to wr_shiftreg'right) & Dbg_TDI;
            wr_shiftcount <= next_wr_shiftcount;
          end if;
          if Dbg_Capture = '1' or next_rd_shiftcount(0) = '1' then
            rd_shiftreg  <= jtag_RDATA;
            rd_wordcount <= std_logic_vector(unsigned(rd_wordcount) + 1);
            readstart    <= '1';
          end if;
          if Dbg_Capture = '1' then
            rd_shiftcount <= (others => '0');
            rd_shiftindex <= (others => '0');
            if Dbg_Reg_En = "00000011" then  -- SR (30)
              rd_shiftindex <= "00010";
            end if;
            if Dbg_Reg_En = "01010011" then  -- PCSR (2)
              rd_shiftindex <= "11110";
            end if;
            if Dbg_Reg_En = "01100011" or Dbg_Reg_En = "01100110" then  -- TSR, TDRR (18)
              rd_shiftindex <= "01110";
            end if;
            wr_shiftcount <= (others => '0');
          end if;
          if next_rd_shiftcount(0) = '1' then
            rd_shiftcount <= (others => '0');
            rd_shiftindex <= (others => '0');
            if Dbg_Reg_En = "00000110" and rd_wordcount = "0001" then   -- DRR (32 + 1)
              rd_shiftindex <= "11111";
            end if;
            if Dbg_Reg_En = "01110110" and rd_wordcount = "0001" then   -- PDRR (32 + 4)
              rd_shiftindex <= "11100";
            end if;
          end if;
          if Dbg_Capture = '1' and Dbg_data_cmd = '0' then
            rd_wordcount <= (others => '0');
          end if;
          if next_wr_shiftcount(3) = '1' and Dbg_Reg_En = "00000100" then -- IIR (32)
            writestart <= '1';
            wr_shiftcount <= (others => '0');
          else
            writestart <= '0';
          end if;
        end if;
      end process Shifter;

      next_rd_shiftcount <= std_logic_vector(unsigned('0' & rd_shiftcount) + 1);
      next_wr_shiftcount <= std_logic_vector(unsigned(wr_shiftcount) + 1);

      Dbg_TDO <= rd_shiftreg(to_integer(unsigned(rd_shiftindex)));

      axi_transaction <= '0' when jtag_access else dbgreg_transaction;

      Dbg_AWADDR    <= jtag_AWADDR  when jtag_access else dbgreg_AWADDR;
      Dbg_WDATA     <= jtag_WDATA   when jtag_access else dbgreg_WDATA;
      Dbg_ARADDR    <= jtag_ARADDR  when jtag_access else dbgreg_ARADDR;
      Dbg_AWVALID_I <= jtag_AWVALID when jtag_access else dbgreg_AWVALID;
      Dbg_WVALID_I  <= jtag_WVALID  when jtag_access else dbgreg_WVALID;
      Dbg_ARVALID_I <= jtag_ARVALID when jtag_access else dbgreg_ARVALID;
    end generate Use_BSCAN;

    No_BSCAN : if (C_USE_BSCAN = 3) generate
    begin
      jtag_mb_instr      <= '0';
      jtag_mb_data       <= '0';
      Dbg_TDO            <= '0';
      axi_transaction    <= dbgreg_transaction;
      mb_debug_enabled_q <= mb_debug_enabled_i;

      Dbg_AWADDR         <= dbgreg_AWADDR;
      Dbg_WDATA          <= dbgreg_WDATA;
      Dbg_ARADDR         <= dbgreg_ARADDR;
      Dbg_AWVALID_I      <= dbgreg_AWVALID;
      Dbg_WVALID_I       <= dbgreg_WVALID;
      Dbg_ARVALID_I      <= dbgreg_ARVALID;
    end generate No_BSCAN;

  end generate Use_Parallel_Access;

  Use_Serial_Access : if (C_DEBUG_INTERFACE = 0) generate
  begin
    axi_transaction    <= '0';
    mb_debug_enabled_q <= mb_debug_enabled_i;
    axi_instr_overrun  <= '0';
    axi_data_overrun   <= '0';
  end generate Use_Serial_Access;

  No_Dbg_Reg_Access : if (C_DBG_REG_ACCESS = 0) generate
  begin
    DbgReg_DRCK    <= '0';
    DbgReg_UPDATE  <= '0';
    DbgReg_Select  <= '0';

    DbgReg_DRCK_i       <= '0';
    DbgReg_UPDATE_i     <= '0';
    dbgreg_ip2bus_rdack <= '0';
    dbgreg_ip2bus_wrack <= '0';
    dbgreg_ip2bus_error <= '0';
    dbgreg_ip2bus_data  <= (others => '0');

    dbgreg_AWADDR      <= (others => '0');
    dbgreg_WDATA       <= (others => '0');
    dbgreg_ARADDR      <= (others => '0');
    dbgreg_AWVALID     <= '0';
    dbgreg_WVALID      <= '0';
    dbgreg_ARVALID     <= '0';

    dbgreg_transaction <= '0';      
    dbgreg_access_lock <= '0';
    dbgreg_force_lock  <= '0';
    dbgreg_unlocked    <= '0';
    dbgreg_mb_instr    <= '0';
    dbgreg_mb_data     <= '0';
    jtag_axi_overrun   <= '0';

    Old_MDM_SEL  <= Old_MDM_SEL_Mux;
    TDI          <= JTAG_TDI;
    RESET        <= JTAG_RESET;
    SHIFT        <= JTAG_SHIFT;
    CAPTURE      <= JTAG_CAPTURE;
    JTAG_TDO     <= TDO;
    disable      <= jtag_disable;
  end generate No_Dbg_Reg_Access;

  -----------------------------------------------------------------------------
  -- Trace: External Output, AXI Stream Output and AXI Master Output
  -----------------------------------------------------------------------------
  Use_Trace : if (C_TRACE_OUTPUT > 0) generate
    type TrData_Type is array(0 to 31) of std_logic_vector(0 to 35);

    signal Dbg_TrData  : TrData_Type;
    signal Dbg_TrValid : std_logic_vector(31 downto 0);
  begin

    More_Than_One_MB : if (C_MB_DBG_PORTS > 1) generate
      constant C_LOG2_MB_DBG_PORTS : natural := log2(C_MB_DBG_PORTS);

      signal index : std_logic_vector(C_LOG2_MB_DBG_PORTS-1 downto 0);
      signal valid : std_logic;
      signal idle  : std_logic;
    begin

      Arbiter_i : Arbiter
        generic map (
          C_TARGET  => C_TARGET,                                -- [TARGET_FAMILY_TYPE]
          Size      => C_MB_DBG_PORTS,                          -- [natural]
          Size_Log2 => C_LOG2_MB_DBG_PORTS)                     -- [natural]
        port map (
          Clk       => trace_clk_i,                             -- [in  std_logic]
          Reset     => trace_reset,                             -- [in  std_logic]
          Enable    => '0',                                     -- [in  std_logic]
          Requests  => Dbg_TrValid(C_MB_DBG_PORTS-1 downto 0),  -- [in  std_logic_vector(Size-1 downto 0)]
          Granted   => open,                                    -- [out std_logic_vector(Size-1 downto 0)]
          Valid_Sel => valid,                                   -- [out std_logic]
          Selected  => index                                    -- [out std_logic_vector(Size_Log2-1 downto 0)]
        );

      Arbiter_Keep: process (trace_clk_i) is
      begin  -- process Arbiter_Keep
        if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          if trace_reset = '1' then                      -- synchronous reset (active high)
            trace_index(C_LOG2_MB_DBG_PORTS-1 downto 0) <= (others => '0');
            trace_valid <= '0';
            idle        <= '1';
          else
            if idle = '1' or trace_last_word = '1' then
              trace_index(C_LOG2_MB_DBG_PORTS-1 downto 0) <= index;
              trace_valid <= valid;
              idle        <= not valid;
            end if;
          end if;
        end if;
      end process Arbiter_Keep;

      trace_index(4 downto C_LOG2_MB_DBG_PORTS) <= (others => '0');

      trace_trdata <= Dbg_TrData(to_integer(unsigned(trace_index)));

      Assign_Ready: process (trace_trready, trace_index) is
      begin  -- process Assign_Ready
        Dbg_TrReady <= (others => '0');
        Dbg_TrReady(to_integer(unsigned(trace_index))) <= trace_trready;
      end process Assign_Ready;

    end generate More_Than_One_MB;

    Only_One_MB : if (C_MB_DBG_PORTS = 1) generate
    begin
      trace_index          <= "00000";
      trace_trdata         <= Dbg_TrData(0);
      trace_valid          <= Dbg_TrValid(0);
      Dbg_TrReady(0)       <= trace_trready;
      Dbg_TrReady(1 to 31) <= (others => '0');
    end generate Only_One_MB;

    No_MB : if (C_MB_DBG_PORTS = 0) generate
    begin
      trace_index  <= "00000";
      trace_trdata <= (others => '0');
      trace_valid  <= '0';
      Dbg_TrReady  <= (others => '0');
    end generate No_MB;

    Dbg_TrData(0)  <= Dbg_TrData_0;
    Dbg_TrData(1)  <= Dbg_TrData_1;
    Dbg_TrData(2)  <= Dbg_TrData_2;
    Dbg_TrData(3)  <= Dbg_TrData_3;
    Dbg_TrData(4)  <= Dbg_TrData_4;
    Dbg_TrData(5)  <= Dbg_TrData_5;
    Dbg_TrData(6)  <= Dbg_TrData_6;
    Dbg_TrData(7)  <= Dbg_TrData_7;
    Dbg_TrData(8)  <= Dbg_TrData_8;
    Dbg_TrData(9)  <= Dbg_TrData_9;
    Dbg_TrData(10) <= Dbg_TrData_10;
    Dbg_TrData(11) <= Dbg_TrData_11;
    Dbg_TrData(12) <= Dbg_TrData_12;
    Dbg_TrData(13) <= Dbg_TrData_13;
    Dbg_TrData(14) <= Dbg_TrData_14;
    Dbg_TrData(15) <= Dbg_TrData_15;
    Dbg_TrData(16) <= Dbg_TrData_16;
    Dbg_TrData(17) <= Dbg_TrData_17;
    Dbg_TrData(18) <= Dbg_TrData_18;
    Dbg_TrData(19) <= Dbg_TrData_19;
    Dbg_TrData(20) <= Dbg_TrData_20;
    Dbg_TrData(21) <= Dbg_TrData_21;
    Dbg_TrData(22) <= Dbg_TrData_22;
    Dbg_TrData(23) <= Dbg_TrData_23;
    Dbg_TrData(24) <= Dbg_TrData_24;
    Dbg_TrData(25) <= Dbg_TrData_25;
    Dbg_TrData(26) <= Dbg_TrData_26;
    Dbg_TrData(27) <= Dbg_TrData_27;
    Dbg_TrData(28) <= Dbg_TrData_28;
    Dbg_TrData(29) <= Dbg_TrData_29;
    Dbg_TrData(30) <= Dbg_TrData_30;
    Dbg_TrData(31) <= Dbg_TrData_31;

    Dbg_TrValid(0)  <= Dbg_TrValid_0;
    Dbg_TrValid(1)  <= Dbg_TrValid_1;
    Dbg_TrValid(2)  <= Dbg_TrValid_2;
    Dbg_TrValid(3)  <= Dbg_TrValid_3;
    Dbg_TrValid(4)  <= Dbg_TrValid_4;
    Dbg_TrValid(5)  <= Dbg_TrValid_5;
    Dbg_TrValid(6)  <= Dbg_TrValid_6;
    Dbg_TrValid(7)  <= Dbg_TrValid_7;
    Dbg_TrValid(8)  <= Dbg_TrValid_8;
    Dbg_TrValid(9)  <= Dbg_TrValid_9;
    Dbg_TrValid(10) <= Dbg_TrValid_10;
    Dbg_TrValid(11) <= Dbg_TrValid_11;
    Dbg_TrValid(12) <= Dbg_TrValid_12;
    Dbg_TrValid(13) <= Dbg_TrValid_13;
    Dbg_TrValid(14) <= Dbg_TrValid_14;
    Dbg_TrValid(15) <= Dbg_TrValid_15;
    Dbg_TrValid(16) <= Dbg_TrValid_16;
    Dbg_TrValid(17) <= Dbg_TrValid_17;
    Dbg_TrValid(18) <= Dbg_TrValid_18;
    Dbg_TrValid(19) <= Dbg_TrValid_19;
    Dbg_TrValid(20) <= Dbg_TrValid_20;
    Dbg_TrValid(21) <= Dbg_TrValid_21;
    Dbg_TrValid(22) <= Dbg_TrValid_22;
    Dbg_TrValid(23) <= Dbg_TrValid_23;
    Dbg_TrValid(24) <= Dbg_TrValid_24;
    Dbg_TrValid(25) <= Dbg_TrValid_25;
    Dbg_TrValid(26) <= Dbg_TrValid_26;
    Dbg_TrValid(27) <= Dbg_TrValid_27;
    Dbg_TrValid(28) <= Dbg_TrValid_28;
    Dbg_TrValid(29) <= Dbg_TrValid_29;
    Dbg_TrValid(30) <= Dbg_TrValid_30;
    Dbg_TrValid(31) <= Dbg_TrValid_31;
  end generate Use_Trace;

  Use_Trace_External_AXI_Master : if (C_TRACE_OUTPUT = 1 or C_TRACE_OUTPUT = 3) generate
    type ID_Type is array(integer range 0 to 1, integer range 1 to 4) of std_logic_vector(2 downto 0);

    constant C_ID : ID_Type :=
      (0 => ("010", "001", "011", "100"),   -- C_USE_BSCAN = 0 (internal)
       1 => ("001", "001", "001", "001"));  -- C_USE_BSCAN = 2, 4 (external) or 3 (none)

    subtype block_trready_type is std_logic_vector(0 to 31);
    type block_trready_array_type is array(0 to 1) of block_trready_type;

    -- 16 x 32 bit LUTROM
    type Mux_Select_Type is (Extra, D0, D1, D2, D3, S1, S2, S3, Final, ID, IDA, IDB);
    type Mux_Select_Array_Type is array (3 downto 0) of Mux_Select_Type;
    type Output_Select_Type is array(0 to 31) of Mux_Select_Array_Type;
    type Output_Select_Array_Type is array(0 to 1) of Output_Select_Type;

    constant output_select_0 : Output_Select_Type := (
      0      => (D2,    D1,    D0,    ID),
      1      => (D2,    D1,    D0,    S3),
      2      => (D1,    D0,    Extra, S3),
      3      => (Final, D0,    S3,    S2),

      4      => (Extra, S3,    S2,    S1),  -- Only saved, block trready
      5      => (D3,    D2,    D1,    D0),
      6      => (D3,    D2,    D1,    D0),
      7      => (Final, D1,    D0,    Extra),

      8      => (D0,    S3,    S2,    ID),
      9      => (Extra, S3,    S2,    S1),  -- Only saved, block trready
      10     => (D3,    D2,    D1,    D0),
      11     => (Final, D2,    D1,    D0),

      12     => (D1,    D0,    Extra, S3),
      13     => (D1,    D0,    S3,    S2),
      14     => (D0,    Extra, S3,    S2),
      15     => (Final, S3,    S2,    S1),  -- Only saved, block trready

      16     => (D2,    D1,    D0,    ID),
      17     => (D1,    D0,    Extra, S3),
      18     => (D1,    D0,    S3,    S2),
      19     => (Final, Extra, S3,    S2),  -- Only saved, block trready

      others => (D2,    D1,    D0,    ID)
    );

    constant output_select_1 : Output_Select_Type := (
      0      => (D0,    IDB,   ID,    IDA),
      1      => (D0,    S3,    S2,    S1),
      2      => (Extra, S3,    S2,    S1),  -- Only saved, block trready
      3      => (Final, D2,    D1,    D0),

      4      => (D2,    D1,    D0,    S3),
      5      => (D1,    D0,    Extra, S3),
      6      => (D1,    D0,    S3,    S2),
      7      => (Final, Extra, S3,    S2),  -- Only saved, block trready

      8      => (D3,    D2,    D1,    D0),
      9      => (D3,    D2,    D1,    D0),
      10     => (D2,    D1,    D0,    Extra),
      11     => (Final, D1,    D0,    S3),

      12     => (D0,    Extra, S3,    S2),
      13     => (D0,    S3,    S2,    S1),
      14     => (Extra, S3,    S2,    S1),  -- Only saved, block trready
      15     => (Final, D2,    D1,    D0),

      16     => (D2,    D1,    D0,    S3),
      17     => (D1,    D0,    Extra, S3),
      18     => (D1,    D0,    S3,    S2),
      19     => (Final, Extra, S3,    S2),  -- Only saved, block trready

      others => (D0,    IDB,   ID,    IDA)
    );

    attribute rom_style : string;
    attribute rom_style of output_select_0 : constant is "distributed";
    attribute rom_style of output_select_1 : constant is "distributed";

    constant output_selects : Output_Select_Array_Type := (0 => output_select_0, 1 => output_select_1);
    constant output_select  : Output_Select_Type := output_selects(C_TRACE_PROTOCOL);

    constant block_trready_0 : block_trready_type := "00001000010000010001000000000000";
    constant block_trready_1 : block_trready_type := "00100001000000100001000000000000";

    constant block_trreadys : block_trready_array_type := (0 => block_trready_0, 1 => block_trready_1);
    constant block_trready  : block_trready_type := block_trreadys(C_TRACE_PROTOCOL);

    type Mux_Data_Select_Type is array(Mux_Select_Type) of std_logic_vector(7 downto 0);

    signal dbg_trdata_mux       : Mux_Data_Select_Type;
    signal frame_word_index     : std_logic_vector(0 to 4);
    signal frame_word_first     : std_logic;
    signal frame_word_last      : boolean;
    signal frame_word_next_last : boolean;
    signal output_select_data   : Mux_Select_Array_Type;
    signal block_trready_val    : std_logic;
    signal trace_data_0         : std_logic_vector(7  downto 0);
    signal trace_data_1         : std_logic_vector(7  downto 0);
    signal trace_data_2         : std_logic_vector(7  downto 0);
    signal trace_data_3         : std_logic_vector(7  downto 0);
    signal saved_extra          : std_logic_vector(7  downto 0);
    signal final_byte           : std_logic_vector(7  downto 0);
    signal saved_final          : std_logic_vector(5  downto 0);
    signal saved_trdata         : std_logic_vector(31 downto 8);
    signal trace_id             : std_logic_vector(7  downto 0);
  begin

    output_select_data <= output_select(to_integer(unsigned(frame_word_index)));
    block_trready_val  <= block_trready(to_integer(unsigned(frame_word_index)));

    dbg_trdata_mux <= (
      Extra => saved_extra,
      D0    => trace_trdata(7  downto 0),
      D1    => trace_trdata(15 downto 8),
      D2    => trace_trdata(25 downto 18),
      D3    => trace_trdata(33 downto 26),
      S1    => saved_trdata(15 downto 8),
      S2    => saved_trdata(23 downto 16),
      S3    => saved_trdata(31 downto 24),
      Final => final_byte,
      ID    => trace_id,
      IDA   => C_TRACE_IDA,
      IDB   => C_TRACE_IDB
    );

    trace_data_0 <= dbg_trdata_mux(output_select_data(0));
    trace_data_1 <= dbg_trdata_mux(output_select_data(1));
    trace_data_2 <= dbg_trdata_mux(output_select_data(2));
    trace_data_3 <= dbg_trdata_mux(output_select_data(3));
    final_byte   <= trace_data_2(0) & trace_data_0(0) & saved_final;

    Mux_Output: process (trace_clk_i) is
      variable trace_data_0_lsb : std_logic;
      variable trace_data_2_lsb : std_logic;
    begin  -- process Mux_Output
      if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
        if trace_reset = '1' then                      -- synchronous reset (active high)
          trace_word       <= C_FF_SYNC_PACKET;
          saved_extra      <= (others => '0');
          saved_final      <= (others => '0');
          saved_trdata     <= (others => '0');
          frame_word_index <= (others => '0');
          frame_word_first <= '0';
          frame_word_last  <= false;
          trace_started    <= '0';
          trace_last_word  <= '0';
        else
          if (trace_valid = '1' and trace_stopped = '0' and trace_count_last = '1') or (trace_started = '1') then
            trace_last_word <= '0';
            trace_started   <= '1';
            if trace_ready = '1' or trace_started = '0' then
              if C_TRACE_PROTOCOL = 0 then
                if output_select_data(0) = ID then
                  trace_data_0_lsb := '1';
                else
                  trace_data_0_lsb := '0';
                end if;
                trace_data_2_lsb := '0';
              else
                if output_select_data(0) = IDA then
                  trace_data_0_lsb := '1';
                else
                  trace_data_0_lsb := '0';
                end if;
                if output_select_data(2) = IDB then
                  trace_data_2_lsb := '1';
                else
                  trace_data_2_lsb := '0';
                end if;
              end if;
              trace_word(7  downto 0)  <= trace_data_0(7 downto 1) & trace_data_0_lsb;
              trace_word(15 downto 8)  <= trace_data_1;
              trace_word(23 downto 16) <= trace_data_2(7 downto 1) & trace_data_2_lsb;
              trace_word(31 downto 24) <= trace_data_3;
              if block_trready_val = '0' then
                saved_extra  <= trace_trdata(35 downto 34) & trace_trdata(17 downto 16) & saved_extra(7 downto 4);
              end if;
              saved_final  <= trace_data_2(0) & trace_data_0(0) & saved_final(5 downto 2);
              saved_trdata <= trace_trdata(33 downto 18) & trace_trdata(15 downto 8);
              if frame_word_last then
                frame_word_index <= (others => '0');
                frame_word_first <= '1';
              else
                frame_word_index <= std_logic_vector(unsigned(frame_word_index) + 1);
                frame_word_first <= '0';
              end if;
              if frame_word_next_last then
                trace_last_word <= '1';
              end if;
              frame_word_last <= frame_word_next_last;
            end if;
            if trace_ready = '1' and frame_word_first = '1' then
              trace_word       <= C_FF_SYNC_PACKET;
              frame_word_index <= (others => '0');
              frame_word_first <= '0';
              frame_word_last  <= false;
              trace_started    <= '0';
            end if;
          else
            trace_word       <= C_FF_SYNC_PACKET;
            saved_extra      <= (others => '0');
            saved_final      <= (others => '0');
            saved_trdata     <= (others => '0');
            frame_word_index <= (others => '0');
            frame_word_first <= '0';
            frame_word_last  <= false;
            trace_started    <= '0';
            trace_last_word  <= '0';
          end if;
        end if;
      end if;
    end process Mux_Output;

    frame_word_next_last <= frame_word_index = "10010";  -- 20 32-bit words per packet = 16 36-bit words

    trace_id <=
      C_ID(Boolean'Pos(C_USE_BSCAN = 2 or C_USE_BSCAN = 3 or C_USE_BSCAN = 4), C_JTAG_CHAIN) & trace_index;

    trace_trready <=
      (trace_valid and not trace_stopped and not trace_started) or                         -- first word
      (trace_ready and trace_started and not block_trready_val and not frame_word_first);  -- remaining words

  end generate Use_Trace_External_AXI_Master;

  Use_Trace_External : if (C_TRACE_OUTPUT = 1) generate
    type pattern_select_type is (ZERO, IDLE, ONE, PAT_FE, SHIFT, PAT_55, PAT_AA);
    type trig_type is array (natural range <>) of std_logic_vector(2 to 3);

    signal pattern_sel      : pattern_select_type := ZERO;
    signal pattern          : std_logic_vector(C_TRACE_DATA_WIDTH - 1 downto 0);
    signal next_pattern     : std_logic_vector(C_TRACE_DATA_WIDTH - 1 downto 0) := (others => '0');
    signal delay_count      : std_logic_vector(0 to 7) := (others => '0');
    signal next_delay_count : std_logic_vector(0 to 7);
    signal delay_count_zero : boolean;
    signal sync_packet      : std_logic := '0';
    signal sync_count       : std_logic_vector(0 to 4)  := (others => '0');
    signal testing          : std_logic := '0';
    signal test_ctl         : std_logic := '1';
    signal trace_clk_div2   : std_logic := '0';
    signal trace_data_i     : std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0)  := (others => '0');
    signal trace_ctl_i      : std_logic := '1';
    signal trace_ctl_o      : std_logic := '1';
    signal trace_ctl_next   : std_logic;
    signal trace_trig       : trig_type(0 to 31);
    signal trig_on          : std_logic := '0';
    signal trig_pending     : std_logic := '0';
    signal trig_counting    : std_logic := '0';
    signal trig_count       : std_logic_vector(0 to 16) := (0 => '1', others => '0');
    signal trig_count_init  : std_logic_vector(0 to 16);

    attribute dont_touch : string;
    attribute dont_touch of trace_ctl_i : signal is "true";  -- Keep FF for internal use
    attribute dont_touch of trace_ctl_o : signal is "true";  -- Keep FF for IOB insertion
  begin

    -- Generate test patterns
    pattern(0) <= next_pattern(C_TRACE_DATA_WIDTH - 1) when pattern_sel = SHIFT  else
                 '1'                                   when pattern_sel = IDLE   or
                                                            pattern_sel = ONE    or
                                                            pattern_sel = PAT_55 else
                 '0';

    Gen_Test_Pattern: for I in 1 to C_TRACE_DATA_WIDTH - 1 generate
    begin
      pattern(I) <= next_pattern(I-1) when (pattern_sel = SHIFT)                    else
                    '1'               when (pattern_sel = ONE)                      or
                                           (pattern_sel = PAT_FE)                   or
                                           (pattern_sel = PAT_55 and (I mod 2) = 0) or
                                           (pattern_sel = PAT_AA and (I mod 2) = 1) else
                    '0';
    end generate Gen_Test_Pattern;

    Pattern_DFF: process (trace_clk_i) is
      type state_type is (IDLE, STARTING, WALKING_1, WALKING_0, PAT_AA, PAT_55, PAT_FF, PAT_00);

      variable state : state_type := IDLE;
    begin  -- process Pattern_DFF
      if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
        if trace_reset = '1' then                      -- synchronous reset (active high)
          pattern_sel  <= ZERO;
          delay_count  <= trace_delay;
          testing      <= '0';
          test_ctl     <= '1';
          state        := IDLE;
          next_pattern <= (others => '0');
        else
          case state is
            when IDLE =>
              pattern_sel <= ZERO;
              delay_count <= trace_delay;
              testing     <= '0';
              test_ctl    <= '1';
              if trace_test_start = '1' then
                state := STARTING;
              end if;
            when STARTING =>
              pattern_sel <= ZERO;
              delay_count <= trace_delay;
              if trace_started = '0' and trace_count_last = '1' then
                if trace_test_pattern(3)    = '1' then  -- Alternating FF/00
                  pattern_sel <= ONE;
                  state := PAT_FF;
                elsif trace_test_pattern(2) = '1' then  -- Alternating AA/55
                  pattern_sel <= PAT_55;
                  state := PAT_55;
                elsif trace_test_pattern(1) = '1' then  -- Walking 0s
                  pattern_sel <= PAT_FE;
                  state := WALKING_0;
                elsif trace_test_pattern(0) = '1' then  -- Walking 1s
                  pattern_sel <= IDLE;
                  state := WALKING_1;
                end if;
                testing  <= '1';
                test_ctl <= '0';
              end if;
            when PAT_FF =>
              delay_count <= next_delay_count;
              if trace_test_stop = '1' then
                test_ctl <= '1';
                pattern_sel <= IDLE;
                state := IDLE;
              elsif delay_count_zero then
                delay_count <= trace_delay;
                if trace_test_pattern(2)    = '1' then  -- Alternating AA/55
                  pattern_sel <= PAT_55;
                  state := PAT_55;
                elsif trace_test_pattern(1) = '1' then  -- Walking 0s
                  pattern_sel <= PAT_FE;
                  state := WALKING_0;
                elsif trace_test_pattern(0) = '1' then  -- Walking 1s
                  pattern_sel <= IDLE;
                  state := WALKING_1;
                else
                  test_ctl <= '1';
                  pattern_sel <= IDLE;
                  state := IDLE;
                end if;
              else
                pattern_sel <= ZERO;
                state := PAT_00;
              end if;
            when PAT_00 =>
              delay_count <= next_delay_count;
              if trace_test_stop = '1' then
                test_ctl <= '1';
                pattern_sel <= IDLE;
                state := IDLE;
              elsif delay_count_zero then
                delay_count <= trace_delay;
                if trace_test_pattern(2)    = '1' then  -- Alternating AA/55
                  pattern_sel <= PAT_55;
                  state := PAT_55;
                elsif trace_test_pattern(1) = '1' then  -- Walking 0s
                  pattern_sel <= PAT_FE;
                  state := WALKING_0;
                elsif trace_test_pattern(0) = '1' then  -- Walking 1s
                  pattern_sel <= IDLE;
                  state := WALKING_1;
                else
                  test_ctl <= '1';
                  pattern_sel <= IDLE;
                  state := IDLE;
                end if;
              else
                pattern_sel <= ONE;
                state := PAT_FF;
              end if;
            when PAT_55 =>
              delay_count <= next_delay_count;
              if trace_test_stop = '1' then
                test_ctl <= '1';
                pattern_sel <= IDLE;
                state := IDLE;
              elsif delay_count_zero then
                delay_count <= trace_delay;
                if trace_test_pattern(1)    = '1' then  -- Walking 0s
                  pattern_sel <= PAT_FE;
                  state := WALKING_0;
                elsif trace_test_pattern(0) = '1' then  -- Walking 1s
                  pattern_sel <= IDLE;
                  state := WALKING_1;
                else
                  test_ctl <= '1';
                  pattern_sel <= IDLE;
                  state := IDLE;
                end if;
              else
                pattern_sel <= PAT_AA;
                state := PAT_AA;
              end if;
            when PAT_AA =>
              delay_count <= next_delay_count;
              if trace_test_stop = '1' then
                test_ctl <= '1';
                pattern_sel <= IDLE;
                state := IDLE;
              elsif delay_count_zero then
                delay_count <= trace_delay;
                if trace_test_pattern(1)    = '1' then  -- Walking 0s
                  pattern_sel <= PAT_FE;
                  state := WALKING_0;
                elsif trace_test_pattern(0) = '1' then  -- Walking 1s
                  pattern_sel <= IDLE;
                  state := WALKING_1;
                else
                  test_ctl <= '1';
                  pattern_sel <= IDLE;
                  state := IDLE;
                end if;
              else
                pattern_sel <= PAT_55;
                state := PAT_55;
              end if;
            when WALKING_0 =>
              delay_count <= next_delay_count;
              pattern_sel <= SHIFT;
              if trace_test_stop = '1' then
                test_ctl <= '1';
                pattern_sel <= IDLE;
                state := IDLE;
              elsif delay_count_zero then
                delay_count <= trace_delay;
                pattern_sel <= IDLE;
                if trace_test_pattern(0) = '1' then  -- Walking 1s
                  state := WALKING_1;
                else
                  test_ctl <= '1';
                  state := IDLE;
                end if;
              end if;
            when WALKING_1 =>
              delay_count <= next_delay_count;
              pattern_sel <= SHIFT;
              if delay_count_zero or trace_test_stop = '1' then
                test_ctl <= '1';
                pattern_sel <= IDLE;
                state := IDLE;
              end if;
            -- coverage off
            when others =>
              null;
            -- coverage on
          end case;

          next_pattern <= pattern;
        end if;
      end if;
    end process Pattern_DFF;

    next_delay_count <= std_logic_vector(unsigned(delay_count) - 1);
    delay_count_zero <= delay_count = (delay_count'range => '0') and trace_test_timed = '1';

    -- Output data or test pattern according to width
    Has_Full_Width: if C_TRACE_DATA_WIDTH = 32 generate
    begin

      Data_Output: process (trace_clk_i) is
      begin  -- process Data_Output
        if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          if trace_reset = '1' then                      -- synchronous reset (active high)
            trace_data_i    <= (others => '0');
            trace_data_i(0) <= '1';
            trace_ctl_i     <= '1';
            trace_ctl_o     <= '1';
          else
            if testing = '0' then
              trace_ctl_i  <= trace_ctl_next;
              trace_ctl_o  <= trace_ctl_next;
              trace_data_i <= trace_word;
              if trace_ctl_next = '1' then
                trace_data_i(0) <= '1';              -- Indicates trace disable when TRACE_CTL = '1'
                if trig_on = '1' and sync_packet = '0' then
                  trace_data_i(1 downto 0) <= "10";  -- Indicates trigger when TRACE_CTL = '1'
                end if;
              end if;
            else
              trace_ctl_i  <= test_ctl;
              trace_ctl_o  <= test_ctl;
              trace_data_i <= pattern(C_TRACE_DATA_WIDTH - 1 downto 0);
            end if;
          end if;
        end if;
      end process Data_Output;

      trace_ready      <= not testing;
      trace_count_last <= '1';

    end generate Has_Full_Width;

    Not_Full_Width: if C_TRACE_DATA_WIDTH < 32 generate
      constant C_COUNTER_WIDTH : integer := log2(32 / C_TRACE_DATA_WIDTH);

      signal data_count     : std_logic_vector(0 to C_COUNTER_WIDTH - 1) := (others => '0');
      signal last_word_keep : std_logic := '0'; 
      signal last_word_next : std_logic := '0';
    begin

      Data_Output: process (trace_clk_i) is
        variable data_index : trace_index_type;
      begin  -- process Data_Output
        if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          if trace_reset = '1' then                      -- synchronous reset (active high)
            trace_data_i    <= (others => '0');
            trace_data_i(0) <= '1';
            data_count      <= (others => '0');
            trace_ctl_i     <= '1';
            trace_ctl_o     <= '1';
            last_word_keep  <= '0';
            last_word_next  <= '0';
          else
            if testing = '0' then
              trace_ctl_i  <= trace_ctl_next;
              trace_ctl_o  <= trace_ctl_next;
              data_index   := to_integer(unsigned(data_count));
              -- trace_data_i <= trace_word(data_index * C_TRACE_DATA_WIDTH + C_TRACE_DATA_WIDTH - 1 downto
              --                            data_index * C_TRACE_DATA_WIDTH);
              trace_data_i <= trace_data_mux(trace_word, data_index);
              if trace_last_word = '1' then
                last_word_keep <= '1';
              end if;
              if trace_count_last = '1' then
                data_count     <= (others => '0');
                last_word_next <= last_word_keep;
                last_word_keep <= '0';
              else
                data_count <= std_logic_vector(unsigned(data_count) + 1);
              end if;
              if trace_ctl_next = '1' then
                trace_data_i    <= (others => '0');
                trace_data_i(0) <= '1';              -- Indicates trace disable when TRACE_CTL = '1'
                if trig_on = '1' and sync_packet = '0' then
                  trace_data_i(1 downto 0) <= "10";  -- Indicates trigger when TRACE_CTL = '1'
                end if;
              end if;
            else
              trace_ctl_i  <= test_ctl;
              trace_ctl_o  <= test_ctl;
              trace_data_i <= pattern(C_TRACE_DATA_WIDTH - 1 downto 0);
              data_count   <= (others => '0');
            end if;
          end if;
        end if;
      end process Data_Output;

      trace_count_last <= '1' when data_count = (data_count'range => '1') else '0';
      trace_ready      <= (not trace_ctl_i) and trace_count_last;

    end generate Not_Full_Width;

    trace_ctl_next <= not (trace_started or sync_packet);

    -- Synchronize reset
    Reset_DFF: process (trace_clk_i) is
      variable sample : std_logic_vector(0 to 1) := "11";

      attribute ASYNC_REG : string;
      attribute ASYNC_REG of sample : variable is "TRUE";
    begin  -- process Sync_Reset
      if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
        trace_reset <= sample(1);
        sample(1)   := sample(0);
        sample(0)   := Debug_SYS_Rst_i or config_reset_i;
      end if;
    end process Reset_DFF;

    -- Generate half frequency output clock
    Use_PLL: if C_TRACE_CLK_OUT_PHASE /= 0 generate
      constant C_CLKFBOUT_MULT  : integer := (800000000 + C_TRACE_CLK_FREQ_HZ - 1000000) / C_TRACE_CLK_FREQ_HZ;
      constant C_CLKIN_PERIOD   : real    := 1000000000.0 / real(C_TRACE_CLK_FREQ_HZ);
      constant C_CLKOUT0_DIVIDE : integer := C_CLKFBOUT_MULT * 2;
      constant C_CLKOUT0_PHASE  : real    := real(C_TRACE_CLK_OUT_PHASE);

      signal trace_clk_o        : std_logic;
      signal trace_clk_fbin     : std_logic;
      signal trace_clk_fbout    : std_logic;
    begin

      PLL_TRACE_CLK : MB_PLLE2_BASE
      generic map (
         C_TARGET           => C_TARGET,
         BANDWIDTH          => "OPTIMIZED",
         CLKFBOUT_MULT      => C_CLKFBOUT_MULT,
         CLKFBOUT_PHASE     => 0.000,
         CLKIN1_PERIOD      => C_CLKIN_PERIOD,
         CLKOUT0_DIVIDE     => C_CLKOUT0_DIVIDE,
         CLKOUT0_DUTY_CYCLE => 0.500,
         CLKOUT0_PHASE      => C_CLKOUT0_PHASE,
         CLKOUT1_DIVIDE     => 1,
         CLKOUT1_DUTY_CYCLE => 0.500,
         CLKOUT1_PHASE      => 0.000,
         CLKOUT2_DIVIDE     => 1,
         CLKOUT2_DUTY_CYCLE => 0.500,
         CLKOUT2_PHASE      => 0.000,
         CLKOUT3_DIVIDE     => 1,
         CLKOUT3_DUTY_CYCLE => 0.500,
         CLKOUT3_PHASE      => 0.000,
         CLKOUT4_DIVIDE     => 1,
         CLKOUT4_DUTY_CYCLE => 0.500,
         CLKOUT4_PHASE      => 0.000,
         CLKOUT5_DIVIDE     => 1,
         CLKOUT5_DUTY_CYCLE => 0.500,
         CLKOUT5_PHASE      => 0.000,
         DIVCLK_DIVIDE      => 1,
         REF_JITTER1        => 0.010,
         STARTUP_WAIT       => "FALSE"
      )
      port map (
         CLKFBOUT => trace_clk_fbout,
         CLKOUT0  => trace_clk_div2,
         CLKOUT1  => open,
         CLKOUT2  => open,
         CLKOUT3  => open,
         CLKOUT4  => open,
         CLKOUT5  => open,
         LOCKED   => open,
         CLKFBIN  => trace_clk_fbin,
         CLKIN1   => trace_clk_i,
         PWRDWN   => '0',
         RST      => trace_reset
      );

      BUFG_TRACE_CLK_FB : MB_BUFG
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        O => trace_clk_fbin,
        I => trace_clk_fbout
      );

      BUFG_TRACE_CLK : MB_BUFG
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        O => trace_clk_o,
        I => trace_clk_div2
      );

      TRACE_CLK_OUT <= trace_clk_o;

    end generate Use_PLL;

    No_PLL: if C_TRACE_CLK_OUT_PHASE = 0 generate
      signal trace_clk_div2 : std_logic := '0';
      signal trace_clk_o    : std_logic := '0';

      attribute dont_touch : string;
      attribute dont_touch of trace_clk_o : signal is "true";  -- Keep FF for IOB insertion
    begin

      TRACE_CLK_OUT_DFF: process (trace_clk_i) is
      begin  -- process TRACE_CLK_OUT_DFF
        if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          trace_clk_div2 <= not trace_clk_div2;
          trace_clk_o    <= trace_clk_div2;
        end if;
      end process TRACE_CLK_OUT_DFF;

      TRACE_CLK_OUT <= trace_clk_o;  -- Any clock delay, phase shift or buffering is done outside MDM

    end generate No_PLL;

    TRACE_CTL   <= trace_ctl_o;
    TRACE_DATA  <= trace_data_i;

    trace_clk_i <= TRACE_CLK;  -- Any clock doubling from external port is done outside MDM

    -- Generate synchronization packets
    Sync_Gen: process (trace_clk_i) is
    begin  -- process Sync_Gen
      if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
        if trace_reset = '1' then                      -- synchronous reset (active high)
          sync_packet <= '0';
          sync_count  <= (others => '0');
        else
          if sync_count(0) = '1' then
            sync_count  <= (others => '0');
            sync_packet <= '1';
          elsif trace_last_word = '1' then
            sync_count <= std_logic_vector(unsigned(sync_count) + 1);
          end if;
          if trace_started = '0' and sync_packet = '1' and trace_count_last = '1' then
            sync_packet <= '0';
          end if;
        end if;
      end if;
    end process Sync_Gen;

    -- Generate trigger
    Tigger_Detect: process (trace_clk_i) is
      variable sample   : trig_type(0 to C_MB_DBG_PORTS - 1) := (others => (others => '0'));
      variable sample_1 : trig_type(0 to C_MB_DBG_PORTS - 1) := (others => (others => '0'));
      variable sample_2 : trig_type(0 to C_MB_DBG_PORTS - 1) := (others => (others => '0'));

      attribute ASYNC_REG : string;
      attribute ASYNC_REG of sample   : variable is "TRUE";
      attribute ASYNC_REG of sample_1 : variable is "TRUE";
    begin  -- process Tigger_Detect
      if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
        if trace_reset = '1' then                      -- synchronous reset (active high)
          trig_on       <= '0';
          trig_pending  <= '0';
          trig_counting <= '0';
          trig_count    <= trig_count_init;
          sample_2      := (others => (others => '0'));
          sample_1      := (others => (others => '0'));
          sample        := (others => (others => '0'));
        else
          -- Sample and edge-detect triggers
          for I in 0 to C_MB_DBG_PORTS - 1 loop
            if sample_2(I)(2) = '0' and sample_1(I)(2) = '1' then
              -- Trigger on trace stop, or start counting on trace stop
              trig_pending  <= trig_pending  or trace_test_pattern(0);
              trig_counting <= trig_counting or trace_test_pattern(1);
            end if;
            if sample_2(I)(3) = '0' and sample_1(I)(3) = '1' then
              -- Trigger on trace start, or start counting on trace start
              trig_pending  <= trig_pending  or trace_test_pattern(2);
              trig_counting <= trig_counting or trace_test_pattern(3);
            end if;
          end loop;
          sample_2 := sample_1;
          sample_1 := sample;
          sample   := trace_trig(0 to C_MB_DBG_PORTS - 1);

          -- Decrement trigger count
          if trig_counting = '1' then
            if trig_count(0) = '0' then
              trig_count    <= trig_count_init;
              trig_counting <= '0';
              trig_pending  <= '1';
            else
              trig_count <= std_logic_vector(unsigned(trig_count) - 1);
            end if;
          else
            trig_count <= trig_count_init;
          end if;

          -- Pending trigger output
          if testing = '0' and trace_ctl_i = '1' and sync_packet = '0' and trace_count_last = '1' then
            trig_on      <= trig_pending;
            trig_pending <= '0';
          else
            trig_on      <= '0';
          end if;
        end if;
      end if;
    end process Tigger_Detect;

    trig_count_init <= '1' & trace_delay & "00000000";

    trace_trig(0)  <= Dbg_Trig_In_0(2 to 3);
    trace_trig(1)  <= Dbg_Trig_In_1(2 to 3);
    trace_trig(2)  <= Dbg_Trig_In_2(2 to 3);
    trace_trig(3)  <= Dbg_Trig_In_3(2 to 3);
    trace_trig(4)  <= Dbg_Trig_In_4(2 to 3);
    trace_trig(5)  <= Dbg_Trig_In_5(2 to 3);
    trace_trig(6)  <= Dbg_Trig_In_6(2 to 3);
    trace_trig(7)  <= Dbg_Trig_In_7(2 to 3);
    trace_trig(8)  <= Dbg_Trig_In_8(2 to 3);
    trace_trig(9)  <= Dbg_Trig_In_9(2 to 3);
    trace_trig(10) <= Dbg_Trig_In_10(2 to 3);
    trace_trig(11) <= Dbg_Trig_In_11(2 to 3);
    trace_trig(12) <= Dbg_Trig_In_12(2 to 3);
    trace_trig(13) <= Dbg_Trig_In_13(2 to 3);
    trace_trig(14) <= Dbg_Trig_In_14(2 to 3);
    trace_trig(15) <= Dbg_Trig_In_15(2 to 3);
    trace_trig(16) <= Dbg_Trig_In_16(2 to 3);
    trace_trig(17) <= Dbg_Trig_In_17(2 to 3);
    trace_trig(18) <= Dbg_Trig_In_18(2 to 3);
    trace_trig(19) <= Dbg_Trig_In_19(2 to 3);
    trace_trig(20) <= Dbg_Trig_In_20(2 to 3);
    trace_trig(21) <= Dbg_Trig_In_21(2 to 3);
    trace_trig(22) <= Dbg_Trig_In_22(2 to 3);
    trace_trig(23) <= Dbg_Trig_In_23(2 to 3);
    trace_trig(24) <= Dbg_Trig_In_24(2 to 3);
    trace_trig(25) <= Dbg_Trig_In_25(2 to 3);
    trace_trig(26) <= Dbg_Trig_In_26(2 to 3);
    trace_trig(27) <= Dbg_Trig_In_27(2 to 3);
    trace_trig(28) <= Dbg_Trig_In_28(2 to 3);
    trace_trig(29) <= Dbg_Trig_In_29(2 to 3);
    trace_trig(30) <= Dbg_Trig_In_30(2 to 3);
    trace_trig(31) <= Dbg_Trig_In_31(2 to 3);

    -- Unused
    M_AXIS_TDATA     <= (others => '0');
    M_AXIS_TID       <= (others => '0');
    M_AXIS_TVALID    <= '0';
    Master_dwr_data  <= (others => '0');
    Master_dwr_start <= '0';
  end generate Use_Trace_External;

  Use_Trace_AXI_Stream : if (C_TRACE_OUTPUT = 2) generate
    type ID_Type is array(integer range 0 to 1, integer range 1 to 4) of std_logic_vector(2 downto 0);
    type AXIS_ID_Type is array(integer range 0 to 1, integer range 1 to 4) of std_logic_vector(1 downto 0);

    constant C_ID : ID_Type :=
      (0 => ("010", "001", "011", "100"),   -- C_USE_BSCAN = 0 (internal)
       1 => ("001", "001", "001", "001"));  -- C_USE_BSCAN = 2, 4 (external) or 3 (none)

    constant C_AXIS_ID : AXIS_ID_Type :=
      (0 => ("01", "00", "10", "11"),   -- C_USE_BSCAN = 0
       1 => ("00", "00", "00", "00"));  -- C_USE_BSCAN = 2, 3 or 4

    subtype block_trready_type is std_logic_vector(0 to 31);
    type block_trready_array_type is array(0 to 1) of block_trready_type;

    -- 12 or 16 x 32 bit LUTROM
    type Mux_Select_Type is (Extra, D0, D1, D2, D3, S1, S2, S3, Final, ID, IDA, IDB);
    type Mux_Select_Array_Type is array (3 downto 0) of Mux_Select_Type;
    type Output_Select_Type is array(0 to 31) of Mux_Select_Array_Type;
    type Output_Select_Array_Type is array(0 to 1) of Output_Select_Type;

    constant output_select_0 : Output_Select_Type := (
      0      => (D3,    D2,    D1,    D0),
      1      => (D3,    D2,    D1,    D0),
      2      => (D2,    D1,    D0,    Extra),
      3      => (D2,    D1,    D0,    S3),

      4      => (D1,    D0,    Extra, S3),
      5      => (D1,    D0,    S3,    S2),
      6      => (D0,    Extra, S3,    S2),
      7      => (D0,    S3,    S2,    S1),

      8      => (Extra, S3,    S2,    S1),  -- Only saved, block trready

      9      => (D3,    D2,    D1,    D0),
      10     => (D3,    D2,    D1,    D0),
      11     => (D2,    D1,    D0,    Extra),
      12     => (D2,    D1,    D0,    S3),

      13     => (D1,    D0,    Extra, S3),
      14     => (D1,    D0,    S3,    S2),
      15     => (D0,    Extra, S3,    S2),
      16     => (D0,    S3,    S2,    S1),

      17     => (Extra, S3,    S2,    S1),  -- Only saved, block trready

      others => (Extra, Extra, Extra, Extra)
    );

    constant output_select_1 : Output_Select_Type := (
      0      => (D0,    IDB,   ID,    IDA),
      1      => (D0,    S3,    S2,    S1),
      2      => (Extra, S3,    S2,    S1),  -- Only saved, block trready
      3      => (Final, D2,    D1,    D0),

      4      => (D2,    D1,    D0,    S3),
      5      => (D1,    D0,    Extra, S3),
      6      => (D1,    D0,    S3,    S2),
      7      => (Final, Extra, S3,    S2),  -- Only saved, block trready

      8      => (D3,    D2,    D1,    D0),
      9      => (D3,    D2,    D1,    D0),
      10     => (D2,    D1,    D0,    Extra),
      11     => (Final, D1,    D0,    S3),

      12     => (D0,    Extra, S3,    S2),
      13     => (D0,    S3,    S2,    S1),
      14     => (Extra, S3,    S2,    S1),  -- Only saved, block trready
      15     => (Final, D2,    D1,    D0),

      16     => (D2,    D1,    D0,    S3),
      17     => (D1,    D0,    Extra, S3),
      18     => (D1,    D0,    S3,    S2),
      19     => (Final, Extra, S3,    S2),  -- Only saved, block trready

      others => (D0,    IDB,   ID,    IDA)
    );

    attribute rom_style : string;
    attribute rom_style of output_select_0 : constant is "distributed";
    attribute rom_style of output_select_1 : constant is "distributed";

    constant output_selects : Output_Select_Array_Type := (0 => output_select_0, 1 => output_select_1);
    constant output_select  : Output_Select_Type := output_selects(C_TRACE_PROTOCOL);

    constant block_trready_0 : block_trready_type := "00000000100000000100000000000000";
    constant block_trready_1 : block_trready_type := "00100001000000100001000000000000";

    constant block_trreadys : block_trready_array_type := (0 => block_trready_0, 1 => block_trready_1);
    constant block_trready  : block_trready_type := block_trreadys(C_TRACE_PROTOCOL);

    constant packet_words_minus_1 : std_logic_vector(0 to 4) := std_logic_vector(to_unsigned(17 + 2*C_TRACE_PROTOCOL, 5));
    constant packet_words_minus_2 : std_logic_vector(0 to 4) := std_logic_vector(to_unsigned(16 + 2*C_TRACE_PROTOCOL, 5));

    type Mux_Data_Select_Type is array(Mux_Select_Type) of std_logic_vector(7 downto 0);

    procedure reset_mux_output(signal trace_word       : out std_logic_vector(31 downto 0);
                               signal saved_extra      : out std_logic_vector(7  downto 0);
                               signal saved_final      : out std_logic_vector(5  downto 0);
                               signal saved_trdata     : out std_logic_vector(31 downto 8);
                               signal trace_started    : out std_logic;
                               signal trace_last_word  : out std_logic;
                               signal trace_tvalid     : out std_logic;
                               signal frame_word_index : out std_logic_vector(0 to 4);
                               signal frame_word_first : out std_logic) is
    begin
      trace_word       <= (others => '0');
      saved_extra      <= (others => '0');
      saved_final      <= (others => '0');
      saved_trdata     <= (others => '0');
      trace_started    <= '0';
      trace_last_word  <= '0';
      trace_tvalid     <= '0';
      frame_word_index <= (others => '0');
      frame_word_first <= '0';
    end procedure reset_mux_output;

    procedure calc_mux_output(signal trace_word        : out   std_logic_vector(31 downto 0);
                              signal trace_next        : out   std_logic;
                              signal saved_extra       : inout std_logic_vector(7  downto 0);
                              signal saved_final       : inout std_logic_vector(5  downto 0);
                              signal saved_trdata      : out   std_logic_vector(31 downto 8);
                              signal trace_started     : inout std_logic;
                              signal trace_last_word   : out   std_logic;
                              signal trace_tvalid      : out   std_logic;
                              signal frame_word_index  : inout std_logic_vector(0 to 4);
                              signal frame_word_first  : inout std_logic;
                              signal trace_valid       : in    std_logic;
                              signal delay_zero        : in    std_logic;
                              signal trace_ready       : in    std_logic;
                              signal trace_data_0      : in    std_logic_vector(7  downto 0);
                              signal trace_data_1      : in    std_logic_vector(7  downto 0);
                              signal trace_data_2      : in    std_logic_vector(7  downto 0);
                              signal trace_data_3      : in    std_logic_vector(7  downto 0);
                              signal trace_trdata      : in    std_logic_vector(35 downto 0);
                              signal block_trready_val : in    std_logic;
                              signal output_ida        : in    boolean;
                              signal output_idb        : in    boolean) is
      variable trace_data_0_lsb : std_logic;
      variable trace_data_2_lsb : std_logic;
    begin
      if (trace_valid = '1' or trace_started = '1') and (delay_zero = '1') then
        trace_last_word <= '0';
        trace_started   <= '1';
        trace_tvalid    <= '1';
        trace_next      <= '0';
        if trace_ready = '1' or trace_started = '0' then
          if C_TRACE_PROTOCOL = 0 then
            trace_data_0_lsb := trace_data_0(0);
            trace_data_2_lsb := trace_data_2(0);
          else
            if output_ida then
              trace_data_0_lsb := '1';
            else
              trace_data_0_lsb := '0';
            end if;
            if output_idb then
              trace_data_2_lsb := '1';
            else
              trace_data_2_lsb := '0';
            end if;
          end if;
          trace_word(7  downto 0)  <= trace_data_0(7 downto 1) & trace_data_0_lsb;
          trace_word(15 downto 8)  <= trace_data_1;
          trace_word(23 downto 16) <= trace_data_2(7 downto 1) & trace_data_2_lsb;
          trace_word(31 downto 24) <= trace_data_3;
          if C_TRACE_PROTOCOL = 0 or block_trready_val = '0' then
            saved_extra <= trace_trdata(35 downto 34) & trace_trdata(17 downto 16) & saved_extra(7 downto 4);
          end if;
          if C_TRACE_PROTOCOL = 0 then
            saved_final <= (others => '0');
          else
            saved_final <= trace_data_2(0) & trace_data_0(0) & saved_final(5 downto 2);
          end if;
          saved_trdata <= trace_trdata(33 downto 18) & trace_trdata(15 downto 8);
          trace_next   <= '1';
          if frame_word_index = packet_words_minus_1 then  -- 18 or 20 32-bit words per packet = 16 36-bit words
            frame_word_index <= (others => '0');
            frame_word_first <= '1';
          else
            frame_word_index <= std_logic_vector(unsigned(frame_word_index) + 1);
            frame_word_first <= '0';
          end if;
          if frame_word_index = packet_words_minus_2 then  -- 18 or 20 32-bit words per packet = 16 36-bit words
            trace_last_word <= '1';
          end if;
        end if;
        if trace_ready = '1' and frame_word_first = '1' then
          trace_tvalid     <= '0';
          frame_word_index <= (others => '0');
          frame_word_first <= '0';
          trace_started    <= '0';
        end if;
      else
        trace_tvalid     <= '0';
        trace_next       <= '0';
        frame_word_index <= (others => '0');
        frame_word_first <= '0';
        trace_started    <= '0';
        trace_last_word  <= '0';
      end if;
    end procedure calc_mux_output;

    procedure calc_delay_counter(signal delay_count   : inout std_logic_vector(0  to 7);
                                 signal delay_zero    : inout std_logic;
                                 signal trace_delay   : in    std_logic_vector(0  to 7);
                                 signal trace_valid   : in    std_logic;
                                 signal trace_started : in    std_logic;
                                 signal trace_ready   : in    std_logic) is
    begin
      if trace_delay = (trace_delay'range => '0') then
        delay_count <= trace_delay;
        delay_zero  <= '1';
      elsif (trace_valid = '1' or trace_started = '1') and (delay_zero = '1') and
            (trace_ready = '1' or trace_started = '0') then
        delay_count <= trace_delay;
        delay_zero  <= '0';
      elsif delay_count = (delay_count'range => '0') then
        delay_zero  <= '1';
      else
        delay_count <= std_logic_vector(unsigned(delay_count) - 1);
        delay_zero  <= '0';
      end if;
    end procedure calc_delay_counter;

    signal dbg_trdata_mux     : Mux_Data_Select_Type;
    signal frame_word_index   : std_logic_vector(0 to 4);
    signal frame_word_first   : std_logic;
    signal output_select_data : Mux_Select_Array_Type;
    signal output_ida         : boolean;
    signal output_idb         : boolean;
    signal block_trready_val  : std_logic;
    signal trace_data_0       : std_logic_vector(7  downto 0);
    signal trace_data_1       : std_logic_vector(7  downto 0);
    signal trace_data_2       : std_logic_vector(7  downto 0);
    signal trace_data_3       : std_logic_vector(7  downto 0);
    signal saved_extra        : std_logic_vector(7  downto 0);
    signal final_byte         : std_logic_vector(7  downto 0);
    signal saved_final        : std_logic_vector(5  downto 0);
    signal saved_trdata       : std_logic_vector(31 downto 8);
    signal delay_count        : std_logic_vector(0  to 7);
    signal delay_zero         : std_logic;
    signal trace_id           : std_logic_vector(7  downto 0);
    signal trace_axis_id      : std_logic_vector(6  downto 0);
    signal trace_axis_id_next : std_logic_vector(6  downto 0);
    signal trace_tvalid       : std_logic;
    signal trace_item         : std_logic_vector(C_TRACE_DATA_WIDTH - 1 downto 0);
    signal trace_item_tvalid  : std_logic;
    signal trace_next         : std_logic;
  begin

    output_select_data <= output_select(to_integer(unsigned(frame_word_index)));
    block_trready_val  <= block_trready(to_integer(unsigned(frame_word_index)));

    dbg_trdata_mux <= (
      Extra => saved_extra,
      D0    => trace_trdata(7  downto 0),
      D1    => trace_trdata(15 downto 8),
      D2    => trace_trdata(25 downto 18),
      D3    => trace_trdata(33 downto 26),
      S1    => saved_trdata(15 downto 8),
      S2    => saved_trdata(23 downto 16),
      S3    => saved_trdata(31 downto 24),
      Final => final_byte,
      ID    => trace_id,
      IDA   => C_TRACE_IDA,
      IDB   => C_TRACE_IDB
    );

    trace_data_0 <= dbg_trdata_mux(output_select_data(0));
    trace_data_1 <= dbg_trdata_mux(output_select_data(1));
    trace_data_2 <= dbg_trdata_mux(output_select_data(2));
    trace_data_3 <= dbg_trdata_mux(output_select_data(3));
    final_byte   <= trace_data_2(0) & trace_data_0(0) & saved_final;

    output_ida <= output_select_data(0) = IDA;
    output_idb <= output_select_data(2) = IDB;

    trace_id <=
      C_ID(Boolean'Pos(C_USE_BSCAN = 2 or C_USE_BSCAN = 3 or C_USE_BSCAN = 4), C_JTAG_CHAIN) & trace_index;

    trace_axis_id_next <=
      C_AXIS_ID(Boolean'Pos(C_USE_BSCAN = 2 or C_USE_BSCAN = 3 or C_USE_BSCAN = 4), C_JTAG_CHAIN) & trace_index;

    Use_Synchronous_Reset: if (C_TRACE_ASYNC_RESET = 0) generate
    begin
      Mux_Output: process (trace_clk_i) is
      begin  -- process Mux_Output
        if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          if trace_reset = '1' then                      -- synchronous reset (active high)
            reset_mux_output(trace_word, saved_extra, saved_final, saved_trdata,
                             trace_started, trace_last_word, trace_tvalid,
                             frame_word_index, frame_word_first);
          else
            calc_mux_output(trace_word, trace_next, saved_extra, saved_final, saved_trdata,
                            trace_started, trace_last_word, trace_tvalid,
                            frame_word_index, frame_word_first,
                            trace_valid, delay_zero, trace_ready,
                            trace_data_0, trace_data_1, trace_data_2, trace_data_3, trace_trdata,
                            block_trready_val, output_ida, output_idb);
          end if;
        end if;
      end process Mux_Output;

      Delay_Counter: process (trace_clk_i) is
      begin  -- process Delay_Counter
        if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          if trace_reset = '1' then                      -- synchronous reset (active high)
            delay_count <= (others => '0');
            delay_zero  <= '1';
          else
            calc_delay_counter(delay_count, delay_zero, trace_delay, trace_valid, trace_started, trace_ready);
          end if;
        end if;
      end process Delay_Counter;

      Trace_ID_Output: process (trace_clk_i) is
      begin  -- process Trace_ID_Output
        if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          if trace_reset = '1' then                      -- synchronous reset (active high)
            trace_axis_id <= (others => '0');
          else
            trace_axis_id <= trace_axis_id_next;
          end if;
        end if;
      end process Trace_ID_Output;

      trace_reset <= not M_AXIS_ARESETN;
    end generate Use_Synchronous_Reset;

    Use_Asynchronous_Reset: if (C_TRACE_ASYNC_RESET > 0) generate
      signal trace_with_scan_reset : std_logic;
    begin
      trace_with_scan_reset <= '0' when Scan_En = '1' else
                               trace_reset when Scan_Reset_Sel = '0' else
                               Scan_Reset;

      Mux_Output: process (trace_clk_i, trace_with_scan_reset) is
      begin  -- process Mux_Output
        if trace_with_scan_reset = '1' then                 -- asynchronous reset (active high)
          reset_mux_output(trace_word, saved_extra, saved_final, saved_trdata,
                           trace_started, trace_last_word, trace_tvalid,
                           frame_word_index, frame_word_first);
        elsif trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          calc_mux_output(trace_word, trace_next, saved_extra, saved_final, saved_trdata,
                          trace_started, trace_last_word, trace_tvalid,
                          frame_word_index, frame_word_first,
                          trace_valid, delay_zero, trace_ready,
                          trace_data_0, trace_data_1, trace_data_2, trace_data_3, trace_trdata,
                          block_trready_val, output_ida, output_idb);
        end if;
      end process Mux_Output;

      Delay_Counter: process (trace_clk_i, trace_with_scan_reset) is
      begin  -- process Delay_Counter
        if trace_with_scan_reset = '1' then                 -- asynchronous reset (active high)
          delay_count <= (others => '0');
          delay_zero  <= '1';
        elsif trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          calc_delay_counter(delay_count, delay_zero, trace_delay, trace_valid, trace_started, trace_ready);
        end if;
      end process Delay_Counter;

      Trace_ID_Output: process (trace_clk_i, trace_with_scan_reset) is
      begin  -- process Trace_ID_Output
        if trace_with_scan_reset = '1' then                 -- asynchronous reset (active high)
          trace_axis_id <= (others => '0');
        elsif trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
          trace_axis_id <= trace_axis_id_next;
        end if;
      end process Trace_ID_Output;

      trace_reset <= '0' when Scan_En = '1' else
                     not M_AXIS_ARESETN when Scan_Reset_Sel = '0' else
                     Scan_Reset;
    end generate Use_Asynchronous_Reset;

    -- Output data according to width
    Has_Full_Width: if C_TRACE_DATA_WIDTH = 32 generate
    begin
      trace_item        <= trace_word;
      trace_ready       <= M_AXIS_TREADY;
      trace_item_tvalid <= trace_tvalid;
      trace_count_last  <= '0';
    end generate Has_Full_Width;

    Not_Full_Width: if C_TRACE_DATA_WIDTH < 32 generate
      constant C_COUNTER_WIDTH : integer := log2(32 / C_TRACE_DATA_WIDTH);

      procedure reset_data_output(signal trace_item  : out std_logic_vector(C_TRACE_DATA_WIDTH - 1 downto 0);
                                  signal item_tvalid : out std_logic;
                                  signal data_count  : out std_logic_vector(0 to C_COUNTER_WIDTH - 1)) is
      begin
        trace_item  <= (others => '0');
        item_tvalid <= '0';
        data_count  <= (others => '0');
      end procedure reset_data_output;

      procedure calc_data_output(signal trace_item       : inout std_logic_vector(C_TRACE_DATA_WIDTH - 1 downto 0);
                                 signal item_tvalid      : inout std_logic;
                                 signal data_count       : inout std_logic_vector(0 to C_COUNTER_WIDTH - 1);
                                 signal trace_tvalid     : in    std_logic;
                                 signal trace_item_ready : in    std_logic;
                                 signal trace_next       : in    std_logic;
                                 signal trace_count_last : in    std_logic) is
        variable data_index : trace_index_type;
      begin
        -- Start word transfer
        if trace_tvalid = '1' and item_tvalid = '0' then
          item_tvalid <= '1';
        end if;

        -- Continue with next item in word, until last item
        if (trace_tvalid = '1' and item_tvalid = '0') or (trace_item_ready = '1') then
          data_index := to_integer(unsigned(data_count));
          -- trace_item <= trace_word(data_index * C_TRACE_DATA_WIDTH + C_TRACE_DATA_WIDTH - 1 downto
          --                          data_index * C_TRACE_DATA_WIDTH);
          trace_item <= trace_data_mux(trace_word, data_index);

          if data_count = (data_count'range => '0') then
            item_tvalid <= trace_tvalid;
          end if;
          if trace_count_last = '1' then
            data_count  <= (others => '0');
          else
            data_count  <= std_logic_vector(unsigned(data_count) + 1);
          end if;
        end if;

        -- End transfer
        if trace_tvalid = '0' then
          data_count <= (others => '0');
        end if;
      end procedure calc_data_output;

      signal data_count        : std_logic_vector(0 to C_COUNTER_WIDTH - 1) := (others => '0');
      signal trace_item_ready  : std_logic;
      signal item_tvalid       : std_logic;
    begin

      Use_Synchronous_Reset: if (C_TRACE_ASYNC_RESET = 0) generate
      begin
        Data_Output: process (trace_clk_i) is
        begin  -- process Data_Output
          if trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
            if trace_reset = '1' then                      -- synchronous reset (active high)
              reset_data_output(trace_item, item_tvalid, data_count);
            else
              calc_data_output(trace_item, item_tvalid, data_count, trace_tvalid,
                               trace_item_ready, trace_next, trace_count_last);
            end if;
          end if;
        end process Data_Output;
      end generate Use_Synchronous_Reset;

      Use_Asynchronous_Reset: if (C_TRACE_ASYNC_RESET > 0) generate
        signal trace_with_scan_reset : std_logic;
      begin
        trace_with_scan_reset <= '0' when Scan_En = '1' else
                                 trace_reset when Scan_Reset_Sel = '0' else
                                 Scan_Reset;

        Data_Output: process (trace_clk_i, trace_with_scan_reset) is
        begin  -- process Data_Output
          if trace_with_scan_reset = '1' then                 -- asynchronous reset (active high)
            reset_data_output(trace_item, item_tvalid, data_count);
          elsif trace_clk_i'event and trace_clk_i = '1' then  -- rising clock edge
            calc_data_output(trace_item, item_tvalid, data_count, trace_tvalid,
                             trace_item_ready, trace_next, trace_count_last);
          end if;
        end process Data_Output;
      end generate Use_Asynchronous_Reset;

      trace_count_last  <= '1' when data_count = (data_count'range => '1') else '0';
      trace_ready       <= trace_count_last and trace_item_ready;
      trace_item_tvalid <= item_tvalid;
      trace_item_ready  <= M_AXIS_TREADY;
    end generate Not_Full_Width;

    M_AXIS_TDATA  <= trace_item;
    M_AXIS_TVALID <= trace_item_tvalid;
    M_AXIS_TID    <= trace_axis_id(C_M_AXIS_ID_WIDTH-1 downto 0);

    trace_clk_i   <= M_AXIS_ACLK;

    trace_trready <=
      (trace_valid and not trace_started and delay_zero) or                                              -- first word
      (trace_ready and trace_started and not block_trready_val and not frame_word_first and delay_zero); -- remaining

    -- Unused
    TRACE_CLK_OUT    <= '0';
    TRACE_CTL        <= '1';
    TRACE_DATA       <= (others => '0');
    Master_dwr_data  <= (others => '0');
    Master_dwr_start <= '0';
  end generate Use_Trace_AXI_Stream;

  Use_Trace_AXI_Master : if (C_TRACE_OUTPUT = 3) generate
  begin
    Master_dwr_data  <= trace_word;
    Master_dwr_start <= (trace_valid and not trace_stopped) or trace_started;

    trace_clk_i      <= M_AXI_ACLK;
    trace_reset      <= not M_AXI_ARESETN;
    trace_ready      <= Master_dwr_next;
    trace_count_last <= '1';

    -- Unused
    M_AXIS_TDATA     <= (others => '0');
    M_AXIS_TID       <= (others => '0');
    M_AXIS_TVALID    <= '0';
    TRACE_CLK_OUT    <= '0';
    TRACE_CTL        <= '1';
    TRACE_DATA       <= (others => '0');
  end generate Use_Trace_AXI_Master;

  No_Trace : if (C_TRACE_OUTPUT = 0) generate
  begin
    Dbg_TrReady      <= (others => '0');

    trace_clk_i      <= '0';
    trace_reset      <= '0';
    trace_word       <= (others => '0');
    trace_index      <= (others => '0');
    trace_trdata     <= (others => '0');
    trace_valid      <= '0';
    trace_last_word  <= '0';
    trace_ready      <= '0';
    trace_trready    <= '0';
    trace_started    <= '0';
    trace_count_last <= '0';

    M_AXIS_TDATA     <= (others => '0');
    M_AXIS_TID       <= (others => '0');
    M_AXIS_TVALID    <= '0';

    TRACE_CLK_OUT    <= '0';
    TRACE_CTL        <= '1';
    TRACE_DATA       <= (others => '0');

    Master_dwr_data  <= (others => '0');
    Master_dwr_start <= '0';
  end generate No_Trace;

  Dbg_TrClk <= trace_clk_i;

  ---------------------------------------------------------------------------
  -- Instantiating the receive and transmit modules
  ---------------------------------------------------------------------------
  JTAG_CONTROL_I : JTAG_CONTROL
    generic map (
      C_TARGET               => C_TARGET,
      C_USE_BSCAN            => C_USE_BSCAN,
      C_MB_DBG_PORTS         => C_MB_DBG_PORTS,
      C_USE_CONFIG_RESET     => C_USE_CONFIG_RESET,
      C_USE_SRL16            => C_USE_SRL16,
      C_DEBUG_INTERFACE      => C_DEBUG_INTERFACE,
      C_DBG_REG_ACCESS       => C_DBG_REG_ACCESS,
      C_DBG_MEM_ACCESS       => C_DBG_MEM_ACCESS,
      C_M_AXI_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH     => C_M_AXI_DATA_WIDTH,
      C_USE_CROSS_TRIGGER    => C_USE_CROSS_TRIGGER,
      C_EXT_TRIG_RESET_VALUE => C_EXT_TRIG_RESET_VALUE,
      C_USE_UART             => C_USE_UART,
      C_UART_WIDTH           => C_UART_WIDTH,
      C_TRACE_OUTPUT         => C_TRACE_OUTPUT,
      C_TRACE_PROTOCOL       => C_TRACE_PROTOCOL,
      C_EN_WIDTH             => C_EN_WIDTH
    )
    port map (
      Config_Reset    => config_reset_i,   -- [in  std_logic]
      Scan_Reset_Sel  => Scan_Reset_Sel,   -- [in  std_logic]
      Scan_Reset      => Scan_Reset,       -- [in  std_logic]
      Scan_En         => Scan_En,          -- [in  std_logic]

      Clk             => bus2ip_clk,       -- [in  std_logic]
      Rst             => bus_rst,          -- [in  std_logic]

      Clear_Ext_BRK   => clear_Ext_BRK,    -- [in  std_logic]
      Ext_BRK         => Ext_BRK,          -- [out  std_logic]
      Ext_NM_BRK      => Ext_NM_BRK,       -- [out  std_logic]
      Debug_SYS_Rst   => Debug_SYS_Rst_i,  -- [out  std_logic]
      Debug_Rst       => Debug_Rst_i,      -- [out  std_logic]

      Read_RX_FIFO    => read_RX_FIFO,     -- [in  std_logic]
      Reset_RX_FIFO   => reset_RX_FIFO,    -- [in  std_logic]
      RX_Data         => rx_Data,          -- [out std_logic_vector(0 to 7)]
      RX_Data_Present => rx_Data_Present,  -- [out std_logic]
      RX_Buffer_Full  => rx_Buffer_Full,   -- [out std_logic]

      Write_TX_FIFO   => write_TX_FIFO,    -- [in  std_logic]
      Reset_TX_FIFO   => reset_TX_FIFO,    -- [in  std_logic]
      TX_Data         => tx_Data,          -- [in  std_logic_vector(0 to 7)]
      TX_Buffer_Full  => tx_Buffer_Full,   -- [out std_logic]
      TX_Buffer_Empty => tx_Buffer_Empty,  -- [out std_logic]

      -- Debug Register Access signals
      DbgReg_DRCK        => DbgReg_DRCK_i,       -- [in  std_logic]
      DbgReg_UPDATE      => DbgReg_UPDATE_i,     -- [in  std_logic]
      DbgReg_Access_Lock => dbgreg_access_lock,  -- [in  std_logic]
      DbgReg_Force_Lock  => dbgreg_force_lock,   -- [in  std_logic]
      DbgReg_Unlocked    => dbgreg_unlocked,     -- [in  std_logic]
      JTAG_Access_Lock   => jtag_access_lock,    -- [out std_logic]
      JTAG_Force_Lock    => jtag_force_lock,     -- [out std_logic]
      JTAG_AXI_Overrun   => jtag_axi_overrun,    -- [in  std_logic]
      JTAG_Clear_Overrun => jtag_clear_overrun,  -- [out std_logic]

      AXI_Transaction    => axi_transaction,     -- [in  std_logic]
      AXI_Instr_Overrun  => axi_instr_overrun,   -- [in  std_logic]
      AXI_Data_Overrun   => axi_data_overrun,    -- [in  std_logic]
      AXI_Completion_On  => axi_completion_on,   -- [out std_logic]
      AXI_Block          => axi_block,           -- [out std_logic]

      -- MDM signals
      TDI     => Old_MDM_TDI,         -- [in  std_logic]
      RESET   => Old_MDM_RESET,       -- [in  std_logic]
      UPDATE  => Old_MDM_UPDATE,      -- [in  std_logic]
      SHIFT   => Old_MDM_SHIFT,       -- [in  std_logic]
      CAPTURE => Old_MDM_CAPTURE,     -- [in  std_logic]
      SEL     => Old_MDM_SEL,         -- [in  std_logic]
      DRCK    => Old_MDM_DRCK,        -- [in  std_logic]
      TDO     => Old_MDM_TDO,         -- [out std_logic]

      -- AXI Master signals
      M_AXI_ACLK         => M_AXI_ACLK,          -- [in  std_logic]
      M_AXI_ARESETn      => M_AXI_ARESETn,       -- [in  std_logic]

      Master_rd_start    => Master_rd_start,     -- [out std_logic]
      Master_rd_addr     => Master_rd_addr,      -- [out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)]
      Master_rd_len      => Master_rd_len,       -- [out std_logic_vector(4 downto 0)]
      Master_rd_size     => Master_rd_size,      -- [out std_logic_vector(1 downto 0)]
      Master_rd_excl     => Master_rd_excl,      -- [out std_logic]
      Master_rd_idle     => Master_rd_idle,      -- [out std_logic]
      Master_rd_resp     => Master_rd_resp,      -- [out std_logic_vector(1 downto 0)]
      Master_wr_start    => Master_wr_start,     -- [out std_logic]
      Master_wr_addr     => Master_wr_addr,      -- [out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)]
      Master_wr_len      => Master_wr_len,       -- [out std_logic_vector(4 downto 0)]
      Master_wr_size     => Master_wr_size,      -- [out std_logic_vector(1 downto 0)]
      Master_wr_excl     => Master_wr_excl,      -- [out std_logic]
      Master_wr_idle     => Master_wr_idle,      -- [out std_logic]
      Master_wr_resp     => Master_wr_resp,      -- [out std_logic_vector(1 downto 0)]
      Master_data_rd     => Master_data_rd,      -- [out std_logic]
      Master_data_out    => Master_data_out,     -- [in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0)]
      Master_data_exists => Master_data_exists,  -- [in  std_logic]
      Master_data_wr     => Master_data_wr,      -- [out std_logic]
      Master_data_in     => Master_data_in,      -- [out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0)]
      Master_data_empty  => Master_data_empty,   -- [in  std_logic]

      Master_dwr_addr    => Master_dwr_addr,     -- [out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)]
      Master_dwr_len     => Master_dwr_len,      -- [out std_logic_vector(4 downto 0)]
      Master_dwr_done    => Master_dwr_done,     -- [in  std_logic]
      Master_dwr_resp    => Master_dwr_resp,     -- [in  std_logic]

      -- MicroBlaze Debug Signals
      MB_Debug_Enabled => mb_debug_enabled_i,    -- [out std_logic_vector(7 downto 0)]
      Dbg_Clk          => Dbg_Clk,               -- [out std_logic]
      Dbg_TDI          => Dbg_TDI,               -- [out std_logic]
      Dbg_TDO          => Dbg_TDO,               -- [in  std_logic]
      Dbg_Reg_En       => Dbg_Reg_En,            -- [out std_logic_vector(0 to 7)]
      Dbg_Capture      => Dbg_Capture,           -- [out std_logic]
      Dbg_Shift        => Dbg_Shift,             -- [out std_logic]
      Dbg_Update       => Dbg_Update,            -- [out std_logic]

      Dbg_data_cmd     => Dbg_data_cmd,          -- [out std_logic]
      Dbg_command      => Dbg_command,           -- [out std_logic_vector(0 to 7)]

      -- MicroBlaze Cross Trigger Signals
      Dbg_Trig_In_0        => Dbg_Trig_In_0,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_1        => Dbg_Trig_In_1,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_2        => Dbg_Trig_In_2,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_3        => Dbg_Trig_In_3,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_4        => Dbg_Trig_In_4,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_5        => Dbg_Trig_In_5,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_6        => Dbg_Trig_In_6,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_7        => Dbg_Trig_In_7,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_8        => Dbg_Trig_In_8,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_9        => Dbg_Trig_In_9,       -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_10       => Dbg_Trig_In_10,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_11       => Dbg_Trig_In_11,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_12       => Dbg_Trig_In_12,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_13       => Dbg_Trig_In_13,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_14       => Dbg_Trig_In_14,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_15       => Dbg_Trig_In_15,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_16       => Dbg_Trig_In_16,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_17       => Dbg_Trig_In_17,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_18       => Dbg_Trig_In_18,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_19       => Dbg_Trig_In_19,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_20       => Dbg_Trig_In_20,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_21       => Dbg_Trig_In_21,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_22       => Dbg_Trig_In_22,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_23       => Dbg_Trig_In_23,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_24       => Dbg_Trig_In_24,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_25       => Dbg_Trig_In_25,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_26       => Dbg_Trig_In_26,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_27       => Dbg_Trig_In_27,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_28       => Dbg_Trig_In_28,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_29       => Dbg_Trig_In_29,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_30       => Dbg_Trig_In_30,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_In_31       => Dbg_Trig_In_31,      -- [in  std_logic_vector(0 to 7)]

      Dbg_Trig_Ack_In_0    => Dbg_Trig_Ack_In_0,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_1    => Dbg_Trig_Ack_In_1,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_2    => Dbg_Trig_Ack_In_2,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_3    => Dbg_Trig_Ack_In_3,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_4    => Dbg_Trig_Ack_In_4,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_5    => Dbg_Trig_Ack_In_5,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_6    => Dbg_Trig_Ack_In_6,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_7    => Dbg_Trig_Ack_In_7,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_8    => Dbg_Trig_Ack_In_8,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_9    => Dbg_Trig_Ack_In_9,   -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_10   => Dbg_Trig_Ack_In_10,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_11   => Dbg_Trig_Ack_In_11,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_12   => Dbg_Trig_Ack_In_12,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_13   => Dbg_Trig_Ack_In_13,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_14   => Dbg_Trig_Ack_In_14,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_15   => Dbg_Trig_Ack_In_15,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_16   => Dbg_Trig_Ack_In_16,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_17   => Dbg_Trig_Ack_In_17,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_18   => Dbg_Trig_Ack_In_18,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_19   => Dbg_Trig_Ack_In_19,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_20   => Dbg_Trig_Ack_In_20,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_21   => Dbg_Trig_Ack_In_21,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_22   => Dbg_Trig_Ack_In_22,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_23   => Dbg_Trig_Ack_In_23,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_24   => Dbg_Trig_Ack_In_24,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_25   => Dbg_Trig_Ack_In_25,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_26   => Dbg_Trig_Ack_In_26,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_27   => Dbg_Trig_Ack_In_27,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_28   => Dbg_Trig_Ack_In_28,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_29   => Dbg_Trig_Ack_In_29,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_30   => Dbg_Trig_Ack_In_30,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_31   => Dbg_Trig_Ack_In_31,  -- [out std_logic_vector(0 to 7)]

      Dbg_Trig_Out_0       => Dbg_Trig_Out_0,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_1       => Dbg_Trig_Out_1,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_2       => Dbg_Trig_Out_2,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_3       => Dbg_Trig_Out_3,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_4       => Dbg_Trig_Out_4,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_5       => Dbg_Trig_Out_5,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_6       => Dbg_Trig_Out_6,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_7       => Dbg_Trig_Out_7,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_8       => Dbg_Trig_Out_8,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_9       => Dbg_Trig_Out_9,      -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_10      => Dbg_Trig_Out_10,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_11      => Dbg_Trig_Out_11,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_12      => Dbg_Trig_Out_12,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_13      => Dbg_Trig_Out_13,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_14      => Dbg_Trig_Out_14,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_15      => Dbg_Trig_Out_15,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_16      => Dbg_Trig_Out_16,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_17      => Dbg_Trig_Out_17,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_18      => Dbg_Trig_Out_18,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_19      => Dbg_Trig_Out_19,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_20      => Dbg_Trig_Out_20,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_21      => Dbg_Trig_Out_21,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_22      => Dbg_Trig_Out_22,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_23      => Dbg_Trig_Out_23,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_24      => Dbg_Trig_Out_24,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_25      => Dbg_Trig_Out_25,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_26      => Dbg_Trig_Out_26,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_27      => Dbg_Trig_Out_27,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_28      => Dbg_Trig_Out_28,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_29      => Dbg_Trig_Out_29,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_30      => Dbg_Trig_Out_30,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_31      => Dbg_Trig_Out_31,     -- [out std_logic_vector(0 to 7)]

      Dbg_Trig_Ack_Out_0   => Dbg_Trig_Ack_Out_0,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_1   => Dbg_Trig_Ack_Out_1,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_2   => Dbg_Trig_Ack_Out_2,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_3   => Dbg_Trig_Ack_Out_3,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_4   => Dbg_Trig_Ack_Out_4,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_5   => Dbg_Trig_Ack_Out_5,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_6   => Dbg_Trig_Ack_Out_6,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_7   => Dbg_Trig_Ack_Out_7,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_8   => Dbg_Trig_Ack_Out_8,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_9   => Dbg_Trig_Ack_Out_9,  -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_10  => Dbg_Trig_Ack_Out_10, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_11  => Dbg_Trig_Ack_Out_11, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_12  => Dbg_Trig_Ack_Out_12, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_13  => Dbg_Trig_Ack_Out_13, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_14  => Dbg_Trig_Ack_Out_14, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_15  => Dbg_Trig_Ack_Out_15, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_16  => Dbg_Trig_Ack_Out_16, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_17  => Dbg_Trig_Ack_Out_17, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_18  => Dbg_Trig_Ack_Out_18, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_19  => Dbg_Trig_Ack_Out_19, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_20  => Dbg_Trig_Ack_Out_20, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_21  => Dbg_Trig_Ack_Out_21, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_22  => Dbg_Trig_Ack_Out_22, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_23  => Dbg_Trig_Ack_Out_23, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_24  => Dbg_Trig_Ack_Out_24, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_25  => Dbg_Trig_Ack_Out_25, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_26  => Dbg_Trig_Ack_Out_26, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_27  => Dbg_Trig_Ack_Out_27, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_28  => Dbg_Trig_Ack_Out_28, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_29  => Dbg_Trig_Ack_Out_29, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_30  => Dbg_Trig_Ack_Out_30, -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_31  => Dbg_Trig_Ack_Out_31, -- [in  std_logic_vector(0 to 7)]

      Ext_Trig_In          => Ext_Trig_In,         -- [in  std_logic_vector(0 to 3)]
      Ext_Trig_Ack_In      => Ext_Trig_Ack_In,     -- [out std_logic_vector(0 to 3)]
      Ext_Trig_Out         => Ext_Trig_Out,        -- [out std_logic_vector(0 to 3)]
      Ext_Trig_Ack_Out     => Ext_Trig_Ack_Out,    -- [in  std_logic_vector(0 to 3)]

      Trace_Clk            => trace_clk_i,         -- [in  std_logic]
      Trace_Reset          => trace_reset,         -- [in  std_logic]
      Trace_Test_Pattern   => trace_test_pattern,  -- [out std_logic_vector(0 to 3)]
      Trace_Test_Start     => trace_test_start,    -- [out std_logic]
      Trace_Test_Stop      => trace_test_stop,     -- [out std_logic]
      Trace_Test_Timed     => trace_test_timed,    -- [out std_logic]
      Trace_Delay          => trace_delay,         -- [out std_logic_vector(0 to 7)]
      Trace_Stopped        => trace_stopped        -- [out std_logic]
    );

  -----------------------------------------------------------------------------
  -- Enables for each debug port
  -----------------------------------------------------------------------------
  Generate_Dbg_Port_Signals : process (mb_debug_enabled_q, Debug_Rst_I, disable)
  begin  -- process Generate_Dbg_Port_Signals
    for I in 0 to C_EN_WIDTH-1 loop
      if (mb_debug_enabled_q(I) = '1') then
        Dbg_Rst_I(I)    <= Debug_Rst_i;
      else
        Dbg_Rst_I(I)    <= '0';
      end if;
      Dbg_Disable(I)    <= disable;
    end loop;  -- I
    for I in C_EN_WIDTH to 31 loop
      Dbg_Rst_I(I)      <= '0';
      Dbg_Disable(I)    <= '1';
    end loop;  -- I
  end process Generate_Dbg_Port_Signals;

  Debug_SYS_Rst <= Debug_SYS_Rst_i;

  MB_Debug_Enabled <= mb_debug_enabled_q;

  Dbg_Disable_0 <= Dbg_Disable(0);
  Dbg_Rst_0     <= Dbg_Rst_I(0);
  Dbg_TrClk_0   <= Dbg_TrClk;
  Dbg_TrReady_0 <= Dbg_TrReady(0);

  Dbg_Disable_1 <= Dbg_Disable(1);
  Dbg_Rst_1     <= Dbg_Rst_I(1);
  Dbg_TrClk_1   <= Dbg_TrClk;
  Dbg_TrReady_1 <= Dbg_TrReady(1);

  Dbg_Disable_2 <= Dbg_Disable(2);
  Dbg_Rst_2     <= Dbg_Rst_I(2);
  Dbg_TrClk_2   <= Dbg_TrClk;
  Dbg_TrReady_2 <= Dbg_TrReady(2);

  Dbg_Disable_3 <= Dbg_Disable(3);
  Dbg_Rst_3     <= Dbg_Rst_I(3);
  Dbg_TrClk_3   <= Dbg_TrClk;
  Dbg_TrReady_3 <= Dbg_TrReady(3);

  Dbg_Disable_4 <= Dbg_Disable(4);
  Dbg_Rst_4     <= Dbg_Rst_I(4);
  Dbg_TrClk_4   <= Dbg_TrClk;
  Dbg_TrReady_4 <= Dbg_TrReady(4);

  Dbg_Disable_5 <= Dbg_Disable(5);
  Dbg_Rst_5     <= Dbg_Rst_I(5);
  Dbg_TrClk_5   <= Dbg_TrClk;
  Dbg_TrReady_5 <= Dbg_TrReady(5);

  Dbg_Disable_6 <= Dbg_Disable(6);
  Dbg_Rst_6     <= Dbg_Rst_I(6);
  Dbg_TrClk_6   <= Dbg_TrClk;
  Dbg_TrReady_6 <= Dbg_TrReady(6);

  Dbg_Disable_7 <= Dbg_Disable(7);
  Dbg_Rst_7     <= Dbg_Rst_I(7);
  Dbg_TrClk_7   <= Dbg_TrClk;
  Dbg_TrReady_7 <= Dbg_TrReady(7);

  Dbg_Disable_8 <= Dbg_Disable(8);
  Dbg_Rst_8     <= Dbg_Rst_I(8);
  Dbg_TrClk_8   <= Dbg_TrClk;
  Dbg_TrReady_8 <= Dbg_TrReady(8);

  Dbg_Disable_9 <= Dbg_Disable(9);
  Dbg_Rst_9     <= Dbg_Rst_I(9);
  Dbg_TrClk_9   <= Dbg_TrClk;
  Dbg_TrReady_9 <= Dbg_TrReady(9);

  Dbg_Disable_10 <= Dbg_Disable(10);
  Dbg_Rst_10     <= Dbg_Rst_I(10);
  Dbg_TrClk_10   <= Dbg_TrClk;
  Dbg_TrReady_10 <= Dbg_TrReady(10);

  Dbg_Disable_11 <= Dbg_Disable(11);
  Dbg_Rst_11     <= Dbg_Rst_I(11);
  Dbg_TrClk_11   <= Dbg_TrClk;
  Dbg_TrReady_11 <= Dbg_TrReady(11);

  Dbg_Disable_12 <= Dbg_Disable(12);
  Dbg_Rst_12     <= Dbg_Rst_I(12);
  Dbg_TrClk_12   <= Dbg_TrClk;
  Dbg_TrReady_12 <= Dbg_TrReady(12);

  Dbg_Disable_13 <= Dbg_Disable(13);
  Dbg_Rst_13     <= Dbg_Rst_I(13);
  Dbg_TrClk_13   <= Dbg_TrClk;
  Dbg_TrReady_13 <= Dbg_TrReady(13);

  Dbg_Disable_14 <= Dbg_Disable(14);
  Dbg_Rst_14     <= Dbg_Rst_I(14);
  Dbg_TrClk_14   <= Dbg_TrClk;
  Dbg_TrReady_14 <= Dbg_TrReady(14);

  Dbg_Disable_15 <= Dbg_Disable(15);
  Dbg_Rst_15     <= Dbg_Rst_I(15);
  Dbg_TrClk_15   <= Dbg_TrClk;
  Dbg_TrReady_15 <= Dbg_TrReady(15);

  Dbg_Disable_16 <= Dbg_Disable(16);
  Dbg_Rst_16     <= Dbg_Rst_I(16);
  Dbg_TrClk_16   <= Dbg_TrClk;
  Dbg_TrReady_16 <= Dbg_TrReady(16);

  Dbg_Disable_17 <= Dbg_Disable(17);
  Dbg_Rst_17     <= Dbg_Rst_I(17);
  Dbg_TrClk_17   <= Dbg_TrClk;
  Dbg_TrReady_17 <= Dbg_TrReady(17);

  Dbg_Disable_18 <= Dbg_Disable(18);
  Dbg_Rst_18     <= Dbg_Rst_I(18);
  Dbg_TrClk_18   <= Dbg_TrClk;
  Dbg_TrReady_18 <= Dbg_TrReady(18);

  Dbg_Disable_19 <= Dbg_Disable(19);
  Dbg_Rst_19     <= Dbg_Rst_I(19);
  Dbg_TrClk_19   <= Dbg_TrClk;
  Dbg_TrReady_19 <= Dbg_TrReady(19);

  Dbg_Disable_20 <= Dbg_Disable(20);
  Dbg_Rst_20     <= Dbg_Rst_I(20);
  Dbg_TrClk_20   <= Dbg_TrClk;
  Dbg_TrReady_20 <= Dbg_TrReady(20);

  Dbg_Disable_21 <= Dbg_Disable(21);
  Dbg_Rst_21     <= Dbg_Rst_I(21);
  Dbg_TrClk_21   <= Dbg_TrClk;
  Dbg_TrReady_21 <= Dbg_TrReady(21);

  Dbg_Disable_22 <= Dbg_Disable(22);
  Dbg_Rst_22     <= Dbg_Rst_I(22);
  Dbg_TrClk_22   <= Dbg_TrClk;
  Dbg_TrReady_22 <= Dbg_TrReady(22);

  Dbg_Disable_23 <= Dbg_Disable(23);
  Dbg_Rst_23     <= Dbg_Rst_I(23);
  Dbg_TrClk_23   <= Dbg_TrClk;
  Dbg_TrReady_23 <= Dbg_TrReady(23);

  Dbg_Disable_24 <= Dbg_Disable(24);
  Dbg_Rst_24     <= Dbg_Rst_I(24);
  Dbg_TrClk_24   <= Dbg_TrClk;
  Dbg_TrReady_24 <= Dbg_TrReady(24);

  Dbg_Disable_25 <= Dbg_Disable(25);
  Dbg_Rst_25     <= Dbg_Rst_I(25);
  Dbg_TrClk_25   <= Dbg_TrClk;
  Dbg_TrReady_25 <= Dbg_TrReady(25);

  Dbg_Disable_26 <= Dbg_Disable(26);
  Dbg_Rst_26     <= Dbg_Rst_I(26);
  Dbg_TrClk_26   <= Dbg_TrClk;
  Dbg_TrReady_26 <= Dbg_TrReady(26);

  Dbg_Disable_27 <= Dbg_Disable(27);
  Dbg_Rst_27     <= Dbg_Rst_I(27);
  Dbg_TrClk_27   <= Dbg_TrClk;
  Dbg_TrReady_27 <= Dbg_TrReady(27);

  Dbg_Disable_28 <= Dbg_Disable(28);
  Dbg_Rst_28     <= Dbg_Rst_I(28);
  Dbg_TrClk_28   <= Dbg_TrClk;
  Dbg_TrReady_28 <= Dbg_TrReady(28);

  Dbg_Disable_29 <= Dbg_Disable(29);
  Dbg_Rst_29     <= Dbg_Rst_I(29);
  Dbg_TrClk_29   <= Dbg_TrClk;
  Dbg_TrReady_29 <= Dbg_TrReady(29);

  Dbg_Disable_30 <= Dbg_Disable(30);
  Dbg_Rst_30     <= Dbg_Rst_I(30);
  Dbg_TrClk_30   <= Dbg_TrClk;
  Dbg_TrReady_30 <= Dbg_TrReady(30);

  Dbg_Disable_31 <= Dbg_Disable(31);
  Dbg_Rst_31     <= Dbg_Rst_I(31);
  Dbg_TrClk_31   <= Dbg_TrClk;
  Dbg_TrReady_31 <= Dbg_TrReady(31);

  Use_Serial : if C_DEBUG_INTERFACE = 0 generate
  begin

    Generate_Dbg_Port_Signals : process (mb_debug_enabled_q, Dbg_Reg_En, Dbg_TDO_I)
      variable dbg_tdo_or : std_logic;
    begin  -- process Generate_Dbg_Port_Signals
      dbg_tdo_or   := '0';
      for I in 0 to C_EN_WIDTH-1 loop
        if (mb_debug_enabled_q(I) = '1') then
          Dbg_Reg_En_I(I) <= Dbg_Reg_En;
        else
          Dbg_Reg_En_I(I) <= (others => '0');
        end if;
        dbg_tdo_or := dbg_tdo_or or Dbg_TDO_I(I);
      end loop;  -- I
      for I in C_EN_WIDTH to 31 loop
        Dbg_Reg_En_I(I)   <= (others => '0');
      end loop;  -- I
      Dbg_TDO             <= dbg_tdo_or;
    end process Generate_Dbg_Port_Signals;

    Dbg_Disable_0 <= Dbg_Disable(0);
    Dbg_Clk_0     <= Dbg_Clk;
    Dbg_TDI_0     <= Dbg_TDI;
    Dbg_Reg_En_0  <= Dbg_Reg_En_I(0);
    Dbg_Capture_0 <= Dbg_Capture;
    Dbg_Shift_0   <= Dbg_Shift;
    Dbg_Update_0  <= Dbg_Update;
    Dbg_Rst_0     <= Dbg_Rst_I(0);
    Dbg_TDO_I(0)  <= Dbg_TDO_0;
    Dbg_TrClk_0   <= Dbg_TrClk;
    Dbg_TrReady_0 <= Dbg_TrReady(0);

    Dbg_Disable_1 <= Dbg_Disable(1);
    Dbg_Clk_1     <= Dbg_Clk;
    Dbg_TDI_1     <= Dbg_TDI;
    Dbg_Reg_En_1  <= Dbg_Reg_En_I(1);
    Dbg_Capture_1 <= Dbg_Capture;
    Dbg_Shift_1   <= Dbg_Shift;
    Dbg_Update_1  <= Dbg_Update;
    Dbg_Rst_1     <= Dbg_Rst_I(1);
    Dbg_TDO_I(1)  <= Dbg_TDO_1;
    Dbg_TrClk_1   <= Dbg_TrClk;
    Dbg_TrReady_1 <= Dbg_TrReady(1);

    Dbg_Disable_2 <= Dbg_Disable(2);
    Dbg_Clk_2     <= Dbg_Clk;
    Dbg_TDI_2     <= Dbg_TDI;
    Dbg_Reg_En_2  <= Dbg_Reg_En_I(2);
    Dbg_Capture_2 <= Dbg_Capture;
    Dbg_Shift_2   <= Dbg_Shift;
    Dbg_Update_2  <= Dbg_Update;
    Dbg_Rst_2     <= Dbg_Rst_I(2);
    Dbg_TDO_I(2)  <= Dbg_TDO_2;
    Dbg_TrClk_2   <= Dbg_TrClk;
    Dbg_TrReady_2 <= Dbg_TrReady(2);

    Dbg_Disable_3 <= Dbg_Disable(3);
    Dbg_Clk_3     <= Dbg_Clk;
    Dbg_TDI_3     <= Dbg_TDI;
    Dbg_Reg_En_3  <= Dbg_Reg_En_I(3);
    Dbg_Capture_3 <= Dbg_Capture;
    Dbg_Shift_3   <= Dbg_Shift;
    Dbg_Update_3  <= Dbg_Update;
    Dbg_Rst_3     <= Dbg_Rst_I(3);
    Dbg_TDO_I(3)  <= Dbg_TDO_3;
    Dbg_TrClk_3   <= Dbg_TrClk;
    Dbg_TrReady_3 <= Dbg_TrReady(3);

    Dbg_Disable_4 <= Dbg_Disable(4);
    Dbg_Clk_4     <= Dbg_Clk;
    Dbg_TDI_4     <= Dbg_TDI;
    Dbg_Reg_En_4  <= Dbg_Reg_En_I(4);
    Dbg_Capture_4 <= Dbg_Capture;
    Dbg_Shift_4   <= Dbg_Shift;
    Dbg_Update_4  <= Dbg_Update;
    Dbg_Rst_4     <= Dbg_Rst_I(4);
    Dbg_TDO_I(4)  <= Dbg_TDO_4;
    Dbg_TrClk_4   <= Dbg_TrClk;
    Dbg_TrReady_4 <= Dbg_TrReady(4);

    Dbg_Disable_5 <= Dbg_Disable(5);
    Dbg_Clk_5     <= Dbg_Clk;
    Dbg_TDI_5     <= Dbg_TDI;
    Dbg_Reg_En_5  <= Dbg_Reg_En_I(5);
    Dbg_Capture_5 <= Dbg_Capture;
    Dbg_Shift_5   <= Dbg_Shift;
    Dbg_Update_5  <= Dbg_Update;
    Dbg_Rst_5     <= Dbg_Rst_I(5);
    Dbg_TDO_I(5)  <= Dbg_TDO_5;
    Dbg_TrClk_5   <= Dbg_TrClk;
    Dbg_TrReady_5 <= Dbg_TrReady(5);

    Dbg_Disable_6 <= Dbg_Disable(6);
    Dbg_Clk_6     <= Dbg_Clk;
    Dbg_TDI_6     <= Dbg_TDI;
    Dbg_Reg_En_6  <= Dbg_Reg_En_I(6);
    Dbg_Capture_6 <= Dbg_Capture;
    Dbg_Shift_6   <= Dbg_Shift;
    Dbg_Update_6  <= Dbg_Update;
    Dbg_Rst_6     <= Dbg_Rst_I(6);
    Dbg_TDO_I(6)  <= Dbg_TDO_6;
    Dbg_TrClk_6   <= Dbg_TrClk;
    Dbg_TrReady_6 <= Dbg_TrReady(6);

    Dbg_Disable_7 <= Dbg_Disable(7);
    Dbg_Clk_7     <= Dbg_Clk;
    Dbg_TDI_7     <= Dbg_TDI;
    Dbg_Reg_En_7  <= Dbg_Reg_En_I(7);
    Dbg_Capture_7 <= Dbg_Capture;
    Dbg_Shift_7   <= Dbg_Shift;
    Dbg_Update_7  <= Dbg_Update;
    Dbg_Rst_7     <= Dbg_Rst_I(7);
    Dbg_TDO_I(7)  <= Dbg_TDO_7;
    Dbg_TrClk_7   <= Dbg_TrClk;
    Dbg_TrReady_7 <= Dbg_TrReady(7);

    Dbg_Disable_8 <= Dbg_Disable(8);
    Dbg_Clk_8     <= Dbg_Clk;
    Dbg_TDI_8     <= Dbg_TDI;
    Dbg_Reg_En_8  <= Dbg_Reg_En_I(8);
    Dbg_Capture_8 <= Dbg_Capture;
    Dbg_Shift_8   <= Dbg_Shift;
    Dbg_Update_8  <= Dbg_Update;
    Dbg_Rst_8     <= Dbg_Rst_I(8);
    Dbg_TDO_I(8)  <= Dbg_TDO_8;
    Dbg_TrClk_8   <= Dbg_TrClk;
    Dbg_TrReady_8 <= Dbg_TrReady(8);

    Dbg_Disable_9 <= Dbg_Disable(9);
    Dbg_Clk_9     <= Dbg_Clk;
    Dbg_TDI_9     <= Dbg_TDI;
    Dbg_Reg_En_9  <= Dbg_Reg_En_I(9);
    Dbg_Capture_9 <= Dbg_Capture;
    Dbg_Shift_9   <= Dbg_Shift;
    Dbg_Update_9  <= Dbg_Update;
    Dbg_Rst_9     <= Dbg_Rst_I(9);
    Dbg_TDO_I(9)  <= Dbg_TDO_9;
    Dbg_TrClk_9   <= Dbg_TrClk;
    Dbg_TrReady_9 <= Dbg_TrReady(9);

    Dbg_Disable_10 <= Dbg_Disable(10);
    Dbg_Clk_10     <= Dbg_Clk;
    Dbg_TDI_10     <= Dbg_TDI;
    Dbg_Reg_En_10  <= Dbg_Reg_En_I(10);
    Dbg_Capture_10 <= Dbg_Capture;
    Dbg_Shift_10   <= Dbg_Shift;
    Dbg_Update_10  <= Dbg_Update;
    Dbg_Rst_10     <= Dbg_Rst_I(10);
    Dbg_TDO_I(10)  <= Dbg_TDO_10;
    Dbg_TrClk_10   <= Dbg_TrClk;
    Dbg_TrReady_10 <= Dbg_TrReady(10);

    Dbg_Disable_11 <= Dbg_Disable(11);
    Dbg_Clk_11     <= Dbg_Clk;
    Dbg_TDI_11     <= Dbg_TDI;
    Dbg_Reg_En_11  <= Dbg_Reg_En_I(11);
    Dbg_Capture_11 <= Dbg_Capture;
    Dbg_Shift_11   <= Dbg_Shift;
    Dbg_Update_11  <= Dbg_Update;
    Dbg_Rst_11     <= Dbg_Rst_I(11);
    Dbg_TDO_I(11)  <= Dbg_TDO_11;
    Dbg_TrClk_11   <= Dbg_TrClk;
    Dbg_TrReady_11 <= Dbg_TrReady(11);

    Dbg_Disable_12 <= Dbg_Disable(12);
    Dbg_Clk_12     <= Dbg_Clk;
    Dbg_TDI_12     <= Dbg_TDI;
    Dbg_Reg_En_12  <= Dbg_Reg_En_I(12);
    Dbg_Capture_12 <= Dbg_Capture;
    Dbg_Shift_12   <= Dbg_Shift;
    Dbg_Update_12  <= Dbg_Update;
    Dbg_Rst_12     <= Dbg_Rst_I(12);
    Dbg_TDO_I(12)  <= Dbg_TDO_12;
    Dbg_TrClk_12   <= Dbg_TrClk;
    Dbg_TrReady_12 <= Dbg_TrReady(12);

    Dbg_Disable_13 <= Dbg_Disable(13);
    Dbg_Clk_13     <= Dbg_Clk;
    Dbg_TDI_13     <= Dbg_TDI;
    Dbg_Reg_En_13  <= Dbg_Reg_En_I(13);
    Dbg_Capture_13 <= Dbg_Capture;
    Dbg_Shift_13   <= Dbg_Shift;
    Dbg_Update_13  <= Dbg_Update;
    Dbg_Rst_13     <= Dbg_Rst_I(13);
    Dbg_TDO_I(13)  <= Dbg_TDO_13;
    Dbg_TrClk_13   <= Dbg_TrClk;
    Dbg_TrReady_13 <= Dbg_TrReady(13);

    Dbg_Disable_14 <= Dbg_Disable(14);
    Dbg_Clk_14     <= Dbg_Clk;
    Dbg_TDI_14     <= Dbg_TDI;
    Dbg_Reg_En_14  <= Dbg_Reg_En_I(14);
    Dbg_Capture_14 <= Dbg_Capture;
    Dbg_Shift_14   <= Dbg_Shift;
    Dbg_Update_14  <= Dbg_Update;
    Dbg_Rst_14     <= Dbg_Rst_I(14);
    Dbg_TDO_I(14)  <= Dbg_TDO_14;
    Dbg_TrClk_14   <= Dbg_TrClk;
    Dbg_TrReady_14 <= Dbg_TrReady(14);

    Dbg_Disable_15 <= Dbg_Disable(15);
    Dbg_Clk_15     <= Dbg_Clk;
    Dbg_TDI_15     <= Dbg_TDI;
    Dbg_Reg_En_15  <= Dbg_Reg_En_I(15);
    Dbg_Capture_15 <= Dbg_Capture;
    Dbg_Shift_15   <= Dbg_Shift;
    Dbg_Update_15  <= Dbg_Update;
    Dbg_Rst_15     <= Dbg_Rst_I(15);
    Dbg_TDO_I(15)  <= Dbg_TDO_15;
    Dbg_TrClk_15   <= Dbg_TrClk;
    Dbg_TrReady_15 <= Dbg_TrReady(15);

    Dbg_Disable_16 <= Dbg_Disable(16);
    Dbg_Clk_16     <= Dbg_Clk;
    Dbg_TDI_16     <= Dbg_TDI;
    Dbg_Reg_En_16  <= Dbg_Reg_En_I(16);
    Dbg_Capture_16 <= Dbg_Capture;
    Dbg_Shift_16   <= Dbg_Shift;
    Dbg_Update_16  <= Dbg_Update;
    Dbg_Rst_16     <= Dbg_Rst_I(16);
    Dbg_TDO_I(16)  <= Dbg_TDO_16;
    Dbg_TrClk_16   <= Dbg_TrClk;
    Dbg_TrReady_16 <= Dbg_TrReady(16);

    Dbg_Disable_17 <= Dbg_Disable(17);
    Dbg_Clk_17     <= Dbg_Clk;
    Dbg_TDI_17     <= Dbg_TDI;
    Dbg_Reg_En_17  <= Dbg_Reg_En_I(17);
    Dbg_Capture_17 <= Dbg_Capture;
    Dbg_Shift_17   <= Dbg_Shift;
    Dbg_Update_17  <= Dbg_Update;
    Dbg_Rst_17     <= Dbg_Rst_I(17);
    Dbg_TDO_I(17)  <= Dbg_TDO_17;
    Dbg_TrClk_17   <= Dbg_TrClk;
    Dbg_TrReady_17 <= Dbg_TrReady(17);

    Dbg_Disable_18 <= Dbg_Disable(18);
    Dbg_Clk_18     <= Dbg_Clk;
    Dbg_TDI_18     <= Dbg_TDI;
    Dbg_Reg_En_18  <= Dbg_Reg_En_I(18);
    Dbg_Capture_18 <= Dbg_Capture;
    Dbg_Shift_18   <= Dbg_Shift;
    Dbg_Update_18  <= Dbg_Update;
    Dbg_Rst_18     <= Dbg_Rst_I(18);
    Dbg_TDO_I(18)  <= Dbg_TDO_18;
    Dbg_TrClk_18   <= Dbg_TrClk;
    Dbg_TrReady_18 <= Dbg_TrReady(18);

    Dbg_Disable_19 <= Dbg_Disable(19);
    Dbg_Clk_19     <= Dbg_Clk;
    Dbg_TDI_19     <= Dbg_TDI;
    Dbg_Reg_En_19  <= Dbg_Reg_En_I(19);
    Dbg_Capture_19 <= Dbg_Capture;
    Dbg_Shift_19   <= Dbg_Shift;
    Dbg_Update_19  <= Dbg_Update;
    Dbg_Rst_19     <= Dbg_Rst_I(19);
    Dbg_TDO_I(19)  <= Dbg_TDO_19;
    Dbg_TrClk_19   <= Dbg_TrClk;
    Dbg_TrReady_19 <= Dbg_TrReady(19);

    Dbg_Disable_20 <= Dbg_Disable(20);
    Dbg_Clk_20     <= Dbg_Clk;
    Dbg_TDI_20     <= Dbg_TDI;
    Dbg_Reg_En_20  <= Dbg_Reg_En_I(20);
    Dbg_Capture_20 <= Dbg_Capture;
    Dbg_Shift_20   <= Dbg_Shift;
    Dbg_Update_20  <= Dbg_Update;
    Dbg_Rst_20     <= Dbg_Rst_I(20);
    Dbg_TDO_I(20)  <= Dbg_TDO_20;
    Dbg_TrClk_20   <= Dbg_TrClk;
    Dbg_TrReady_20 <= Dbg_TrReady(20);

    Dbg_Disable_21 <= Dbg_Disable(21);
    Dbg_Clk_21     <= Dbg_Clk;
    Dbg_TDI_21     <= Dbg_TDI;
    Dbg_Reg_En_21  <= Dbg_Reg_En_I(21);
    Dbg_Capture_21 <= Dbg_Capture;
    Dbg_Shift_21   <= Dbg_Shift;
    Dbg_Update_21  <= Dbg_Update;
    Dbg_Rst_21     <= Dbg_Rst_I(21);
    Dbg_TDO_I(21)  <= Dbg_TDO_21;
    Dbg_TrClk_21   <= Dbg_TrClk;
    Dbg_TrReady_21 <= Dbg_TrReady(21);

    Dbg_Disable_22 <= Dbg_Disable(22);
    Dbg_Clk_22     <= Dbg_Clk;
    Dbg_TDI_22     <= Dbg_TDI;
    Dbg_Reg_En_22  <= Dbg_Reg_En_I(22);
    Dbg_Capture_22 <= Dbg_Capture;
    Dbg_Shift_22   <= Dbg_Shift;
    Dbg_Update_22  <= Dbg_Update;
    Dbg_Rst_22     <= Dbg_Rst_I(22);
    Dbg_TDO_I(22)  <= Dbg_TDO_22;
    Dbg_TrClk_22   <= Dbg_TrClk;
    Dbg_TrReady_22 <= Dbg_TrReady(22);

    Dbg_Disable_23 <= Dbg_Disable(23);
    Dbg_Clk_23     <= Dbg_Clk;
    Dbg_TDI_23     <= Dbg_TDI;
    Dbg_Reg_En_23  <= Dbg_Reg_En_I(23);
    Dbg_Capture_23 <= Dbg_Capture;
    Dbg_Shift_23   <= Dbg_Shift;
    Dbg_Update_23  <= Dbg_Update;
    Dbg_Rst_23     <= Dbg_Rst_I(23);
    Dbg_TDO_I(23)  <= Dbg_TDO_23;
    Dbg_TrClk_23   <= Dbg_TrClk;
    Dbg_TrReady_23 <= Dbg_TrReady(23);

    Dbg_Disable_24 <= Dbg_Disable(24);
    Dbg_Clk_24     <= Dbg_Clk;
    Dbg_TDI_24     <= Dbg_TDI;
    Dbg_Reg_En_24  <= Dbg_Reg_En_I(24);
    Dbg_Capture_24 <= Dbg_Capture;
    Dbg_Shift_24   <= Dbg_Shift;
    Dbg_Update_24  <= Dbg_Update;
    Dbg_Rst_24     <= Dbg_Rst_I(24);
    Dbg_TDO_I(24)  <= Dbg_TDO_24;
    Dbg_TrClk_24   <= Dbg_TrClk;
    Dbg_TrReady_24 <= Dbg_TrReady(24);

    Dbg_Disable_25 <= Dbg_Disable(25);
    Dbg_Clk_25     <= Dbg_Clk;
    Dbg_TDI_25     <= Dbg_TDI;
    Dbg_Reg_En_25  <= Dbg_Reg_En_I(25);
    Dbg_Capture_25 <= Dbg_Capture;
    Dbg_Shift_25   <= Dbg_Shift;
    Dbg_Update_25  <= Dbg_Update;
    Dbg_Rst_25     <= Dbg_Rst_I(25);
    Dbg_TDO_I(25)  <= Dbg_TDO_25;
    Dbg_TrClk_25   <= Dbg_TrClk;
    Dbg_TrReady_25 <= Dbg_TrReady(25);

    Dbg_Disable_26 <= Dbg_Disable(26);
    Dbg_Clk_26     <= Dbg_Clk;
    Dbg_TDI_26     <= Dbg_TDI;
    Dbg_Reg_En_26  <= Dbg_Reg_En_I(26);
    Dbg_Capture_26 <= Dbg_Capture;
    Dbg_Shift_26   <= Dbg_Shift;
    Dbg_Update_26  <= Dbg_Update;
    Dbg_Rst_26     <= Dbg_Rst_I(26);
    Dbg_TDO_I(26)  <= Dbg_TDO_26;
    Dbg_TrClk_26   <= Dbg_TrClk;
    Dbg_TrReady_26 <= Dbg_TrReady(26);

    Dbg_Disable_27 <= Dbg_Disable(27);
    Dbg_Clk_27     <= Dbg_Clk;
    Dbg_TDI_27     <= Dbg_TDI;
    Dbg_Reg_En_27  <= Dbg_Reg_En_I(27);
    Dbg_Capture_27 <= Dbg_Capture;
    Dbg_Shift_27   <= Dbg_Shift;
    Dbg_Update_27  <= Dbg_Update;
    Dbg_Rst_27     <= Dbg_Rst_I(27);
    Dbg_TDO_I(27)  <= Dbg_TDO_27;
    Dbg_TrClk_27   <= Dbg_TrClk;
    Dbg_TrReady_27 <= Dbg_TrReady(27);

    Dbg_Disable_28 <= Dbg_Disable(28);
    Dbg_Clk_28     <= Dbg_Clk;
    Dbg_TDI_28     <= Dbg_TDI;
    Dbg_Reg_En_28  <= Dbg_Reg_En_I(28);
    Dbg_Capture_28 <= Dbg_Capture;
    Dbg_Shift_28   <= Dbg_Shift;
    Dbg_Update_28  <= Dbg_Update;
    Dbg_Rst_28     <= Dbg_Rst_I(28);
    Dbg_TDO_I(28)  <= Dbg_TDO_28;
    Dbg_TrClk_28   <= Dbg_TrClk;
    Dbg_TrReady_28 <= Dbg_TrReady(28);

    Dbg_Disable_29 <= Dbg_Disable(29);
    Dbg_Clk_29     <= Dbg_Clk;
    Dbg_TDI_29     <= Dbg_TDI;
    Dbg_Reg_En_29  <= Dbg_Reg_En_I(29);
    Dbg_Capture_29 <= Dbg_Capture;
    Dbg_Shift_29   <= Dbg_Shift;
    Dbg_Update_29  <= Dbg_Update;
    Dbg_Rst_29     <= Dbg_Rst_I(29);
    Dbg_TDO_I(29)  <= Dbg_TDO_29;
    Dbg_TrClk_29   <= Dbg_TrClk;
    Dbg_TrReady_29 <= Dbg_TrReady(29);

    Dbg_Disable_30 <= Dbg_Disable(30);
    Dbg_Clk_30     <= Dbg_Clk;
    Dbg_TDI_30     <= Dbg_TDI;
    Dbg_Reg_En_30  <= Dbg_Reg_En_I(30);
    Dbg_Capture_30 <= Dbg_Capture;
    Dbg_Shift_30   <= Dbg_Shift;
    Dbg_Update_30  <= Dbg_Update;
    Dbg_Rst_30     <= Dbg_Rst_I(30);
    Dbg_TDO_I(30)  <= Dbg_TDO_30;
    Dbg_TrClk_30   <= Dbg_TrClk;
    Dbg_TrReady_30 <= Dbg_TrReady(30);

    Dbg_Disable_31 <= Dbg_Disable(31);
    Dbg_Clk_31     <= Dbg_Clk;
    Dbg_TDI_31     <= Dbg_TDI;
    Dbg_Reg_En_31  <= Dbg_Reg_En_I(31);
    Dbg_Capture_31 <= Dbg_Capture;
    Dbg_Shift_31   <= Dbg_Shift;
    Dbg_Update_31  <= Dbg_Update;
    Dbg_Rst_31     <= Dbg_Rst_I(31);
    Dbg_TDO_I(31)  <= Dbg_TDO_31;
    Dbg_TrClk_31   <= Dbg_TrClk;
    Dbg_TrReady_31 <= Dbg_TrReady(31);

    -- Unused parallel signals
    Dbg_BRESP         <= '0';
    Dbg_BVALID        <= '0';
    Dbg_RDATA         <= (others => '0');
    Dbg_RRESP         <= '0';
    Dbg_RVALID        <= '0';

    Dbg_AWADDR_0       <= (others => '0');
    Dbg_AWVALID_0      <= '0';
    Dbg_AWREADY_I(0)   <= '0';
    Dbg_WDATA_0        <= (others => '0');
    Dbg_WVALID_0       <= '0';
    Dbg_WREADY_I(0)    <= '0';
    Dbg_BRESP_I(0)     <= (others => '0');
    Dbg_BVALID_I(0)    <= '0';
    Dbg_BREADY_0       <= '0';
    Dbg_ARADDR_0       <= (others => '0');
    Dbg_ARVALID_0      <= '0';
    Dbg_ARREADY_I(0)   <= '0';
    Dbg_RDATA_I(0)     <= (others => '0');
    Dbg_RRESP_I(0)     <= (others => '0');
    Dbg_RVALID_I(0)    <= '0';
    Dbg_RREADY_0       <= '0';

    Dbg_AWADDR_1       <= (others => '0');
    Dbg_AWVALID_1      <= '0';
    Dbg_AWREADY_I(1)   <= '0';
    Dbg_WDATA_1        <= (others => '0');
    Dbg_WVALID_1       <= '0';
    Dbg_WREADY_I(1)    <= '0';
    Dbg_BRESP_I(1)     <= (others => '0');
    Dbg_BVALID_I(1)    <= '0';
    Dbg_BREADY_1       <= '0';
    Dbg_ARADDR_1       <= (others => '0');
    Dbg_ARVALID_1      <= '0';
    Dbg_ARREADY_I(1)   <= '0';
    Dbg_RDATA_I(1)     <= (others => '0');
    Dbg_RRESP_I(1)     <= (others => '0');
    Dbg_RVALID_I(1)    <= '0';
    Dbg_RREADY_1       <= '0';

    Dbg_AWADDR_2       <= (others => '0');
    Dbg_AWVALID_2      <= '0';
    Dbg_AWREADY_I(2)   <= '0';
    Dbg_WDATA_2        <= (others => '0');
    Dbg_WVALID_2       <= '0';
    Dbg_WREADY_I(2)    <= '0';
    Dbg_BRESP_I(2)     <= (others => '0');
    Dbg_BVALID_I(2)    <= '0';
    Dbg_BREADY_2       <= '0';
    Dbg_ARADDR_2       <= (others => '0');
    Dbg_ARVALID_2      <= '0';
    Dbg_ARREADY_I(2)   <= '0';
    Dbg_RDATA_I(2)     <= (others => '0');
    Dbg_RRESP_I(2)     <= (others => '0');
    Dbg_RVALID_I(2)    <= '0';
    Dbg_RREADY_2       <= '0';

    Dbg_AWADDR_3       <= (others => '0');
    Dbg_AWVALID_3      <= '0';
    Dbg_AWREADY_I(3)   <= '0';
    Dbg_WDATA_3        <= (others => '0');
    Dbg_WVALID_3       <= '0';
    Dbg_WREADY_I(3)    <= '0';
    Dbg_BRESP_I(3)     <= (others => '0');
    Dbg_BVALID_I(3)    <= '0';
    Dbg_BREADY_3       <= '0';
    Dbg_ARADDR_3       <= (others => '0');
    Dbg_ARVALID_3      <= '0';
    Dbg_ARREADY_I(3)   <= '0';
    Dbg_RDATA_I(3)     <= (others => '0');
    Dbg_RRESP_I(3)     <= (others => '0');
    Dbg_RVALID_I(3)    <= '0';
    Dbg_RREADY_3       <= '0';

    Dbg_AWADDR_4       <= (others => '0');
    Dbg_AWVALID_4      <= '0';
    Dbg_AWREADY_I(4)   <= '0';
    Dbg_WDATA_4        <= (others => '0');
    Dbg_WVALID_4       <= '0';
    Dbg_WREADY_I(4)    <= '0';
    Dbg_BRESP_I(4)     <= (others => '0');
    Dbg_BVALID_I(4)    <= '0';
    Dbg_BREADY_4       <= '0';
    Dbg_ARADDR_4       <= (others => '0');
    Dbg_ARVALID_4      <= '0';
    Dbg_ARREADY_I(4)   <= '0';
    Dbg_RDATA_I(4)     <= (others => '0');
    Dbg_RRESP_I(4)     <= (others => '0');
    Dbg_RVALID_I(4)    <= '0';
    Dbg_RREADY_4       <= '0';

    Dbg_AWADDR_5       <= (others => '0');
    Dbg_AWVALID_5      <= '0';
    Dbg_AWREADY_I(5)   <= '0';
    Dbg_WDATA_5        <= (others => '0');
    Dbg_WVALID_5       <= '0';
    Dbg_WREADY_I(5)    <= '0';
    Dbg_BRESP_I(5)     <= (others => '0');
    Dbg_BVALID_I(5)    <= '0';
    Dbg_BREADY_5       <= '0';
    Dbg_ARADDR_5       <= (others => '0');
    Dbg_ARVALID_5      <= '0';
    Dbg_ARREADY_I(5)   <= '0';
    Dbg_RDATA_I(5)     <= (others => '0');
    Dbg_RRESP_I(5)     <= (others => '0');
    Dbg_RVALID_I(5)    <= '0';
    Dbg_RREADY_5       <= '0';

    Dbg_AWADDR_6       <= (others => '0');
    Dbg_AWVALID_6      <= '0';
    Dbg_AWREADY_I(6)   <= '0';
    Dbg_WDATA_6        <= (others => '0');
    Dbg_WVALID_6       <= '0';
    Dbg_WREADY_I(6)    <= '0';
    Dbg_BRESP_I(6)     <= (others => '0');
    Dbg_BVALID_I(6)    <= '0';
    Dbg_BREADY_6       <= '0';
    Dbg_ARADDR_6       <= (others => '0');
    Dbg_ARVALID_6      <= '0';
    Dbg_ARREADY_I(6)   <= '0';
    Dbg_RDATA_I(6)     <= (others => '0');
    Dbg_RRESP_I(6)     <= (others => '0');
    Dbg_RVALID_I(6)    <= '0';
    Dbg_RREADY_6       <= '0';

    Dbg_AWADDR_7       <= (others => '0');
    Dbg_AWVALID_7      <= '0';
    Dbg_AWREADY_I(7)   <= '0';
    Dbg_WDATA_7        <= (others => '0');
    Dbg_WVALID_7       <= '0';
    Dbg_WREADY_I(7)    <= '0';
    Dbg_BRESP_I(7)     <= (others => '0');
    Dbg_BVALID_I(7)    <= '0';
    Dbg_BREADY_7       <= '0';
    Dbg_ARADDR_7       <= (others => '0');
    Dbg_ARVALID_7      <= '0';
    Dbg_ARREADY_I(7)   <= '0';
    Dbg_RDATA_I(7)     <= (others => '0');
    Dbg_RRESP_I(7)     <= (others => '0');
    Dbg_RVALID_I(7)    <= '0';
    Dbg_RREADY_7       <= '0';

    Dbg_AWADDR_8       <= (others => '0');
    Dbg_AWVALID_8      <= '0';
    Dbg_AWREADY_I(8)   <= '0';
    Dbg_WDATA_8        <= (others => '0');
    Dbg_WVALID_8       <= '0';
    Dbg_WREADY_I(8)    <= '0';
    Dbg_BRESP_I(8)     <= (others => '0');
    Dbg_BVALID_I(8)    <= '0';
    Dbg_BREADY_8       <= '0';
    Dbg_ARADDR_8       <= (others => '0');
    Dbg_ARVALID_8      <= '0';
    Dbg_ARREADY_I(8)   <= '0';
    Dbg_RDATA_I(8)     <= (others => '0');
    Dbg_RRESP_I(8)     <= (others => '0');
    Dbg_RVALID_I(8)    <= '0';
    Dbg_RREADY_8       <= '0';

    Dbg_AWADDR_9       <= (others => '0');
    Dbg_AWVALID_9      <= '0';
    Dbg_AWREADY_I(9)   <= '0';
    Dbg_WDATA_9        <= (others => '0');
    Dbg_WVALID_9       <= '0';
    Dbg_WREADY_I(9)    <= '0';
    Dbg_BRESP_I(9)     <= (others => '0');
    Dbg_BVALID_I(9)    <= '0';
    Dbg_BREADY_9       <= '0';
    Dbg_ARADDR_9       <= (others => '0');
    Dbg_ARVALID_9      <= '0';
    Dbg_ARREADY_I(9)   <= '0';
    Dbg_RDATA_I(9)     <= (others => '0');
    Dbg_RRESP_I(9)     <= (others => '0');
    Dbg_RVALID_I(9)    <= '0';
    Dbg_RREADY_9       <= '0';

    Dbg_AWADDR_10       <= (others => '0');
    Dbg_AWVALID_10      <= '0';
    Dbg_AWREADY_I(10)   <= '0';
    Dbg_WDATA_10        <= (others => '0');
    Dbg_WVALID_10       <= '0';
    Dbg_WREADY_I(10)    <= '0';
    Dbg_BRESP_I(10)     <= (others => '0');
    Dbg_BVALID_I(10)    <= '0';
    Dbg_BREADY_10       <= '0';
    Dbg_ARADDR_10       <= (others => '0');
    Dbg_ARVALID_10      <= '0';
    Dbg_ARREADY_I(10)   <= '0';
    Dbg_RDATA_I(10)     <= (others => '0');
    Dbg_RRESP_I(10)     <= (others => '0');
    Dbg_RVALID_I(10)    <= '0';
    Dbg_RREADY_10       <= '0';

    Dbg_AWADDR_11       <= (others => '0');
    Dbg_AWVALID_11      <= '0';
    Dbg_AWREADY_I(11)   <= '0';
    Dbg_WDATA_11        <= (others => '0');
    Dbg_WVALID_11       <= '0';
    Dbg_WREADY_I(11)    <= '0';
    Dbg_BRESP_I(11)     <= (others => '0');
    Dbg_BVALID_I(11)    <= '0';
    Dbg_BREADY_11       <= '0';
    Dbg_ARADDR_11       <= (others => '0');
    Dbg_ARVALID_11      <= '0';
    Dbg_ARREADY_I(11)   <= '0';
    Dbg_RDATA_I(11)     <= (others => '0');
    Dbg_RRESP_I(11)     <= (others => '0');
    Dbg_RVALID_I(11)    <= '0';
    Dbg_RREADY_11       <= '0';

    Dbg_AWADDR_12       <= (others => '0');
    Dbg_AWVALID_12      <= '0';
    Dbg_AWREADY_I(12)   <= '0';
    Dbg_WDATA_12        <= (others => '0');
    Dbg_WVALID_12       <= '0';
    Dbg_WREADY_I(12)    <= '0';
    Dbg_BRESP_I(12)     <= (others => '0');
    Dbg_BVALID_I(12)    <= '0';
    Dbg_BREADY_12       <= '0';
    Dbg_ARADDR_12       <= (others => '0');
    Dbg_ARVALID_12      <= '0';
    Dbg_ARREADY_I(12)   <= '0';
    Dbg_RDATA_I(12)     <= (others => '0');
    Dbg_RRESP_I(12)     <= (others => '0');
    Dbg_RVALID_I(12)    <= '0';
    Dbg_RREADY_12       <= '0';

    Dbg_AWADDR_13       <= (others => '0');
    Dbg_AWVALID_13      <= '0';
    Dbg_AWREADY_I(13)   <= '0';
    Dbg_WDATA_13        <= (others => '0');
    Dbg_WVALID_13       <= '0';
    Dbg_WREADY_I(13)    <= '0';
    Dbg_BRESP_I(13)     <= (others => '0');
    Dbg_BVALID_I(13)    <= '0';
    Dbg_BREADY_13       <= '0';
    Dbg_ARADDR_13       <= (others => '0');
    Dbg_ARVALID_13      <= '0';
    Dbg_ARREADY_I(13)   <= '0';
    Dbg_RDATA_I(13)     <= (others => '0');
    Dbg_RRESP_I(13)     <= (others => '0');
    Dbg_RVALID_I(13)    <= '0';
    Dbg_RREADY_13       <= '0';

    Dbg_AWADDR_14       <= (others => '0');
    Dbg_AWVALID_14      <= '0';
    Dbg_AWREADY_I(14)   <= '0';
    Dbg_WDATA_14        <= (others => '0');
    Dbg_WVALID_14       <= '0';
    Dbg_WREADY_I(14)    <= '0';
    Dbg_BRESP_I(14)     <= (others => '0');
    Dbg_BVALID_I(14)    <= '0';
    Dbg_BREADY_14       <= '0';
    Dbg_ARADDR_14       <= (others => '0');
    Dbg_ARVALID_14      <= '0';
    Dbg_ARREADY_I(14)   <= '0';
    Dbg_RDATA_I(14)     <= (others => '0');
    Dbg_RRESP_I(14)     <= (others => '0');
    Dbg_RVALID_I(14)    <= '0';
    Dbg_RREADY_14       <= '0';

    Dbg_AWADDR_15       <= (others => '0');
    Dbg_AWVALID_15      <= '0';
    Dbg_AWREADY_I(15)   <= '0';
    Dbg_WDATA_15        <= (others => '0');
    Dbg_WVALID_15       <= '0';
    Dbg_WREADY_I(15)    <= '0';
    Dbg_BRESP_I(15)     <= (others => '0');
    Dbg_BVALID_I(15)    <= '0';
    Dbg_BREADY_15       <= '0';
    Dbg_ARADDR_15       <= (others => '0');
    Dbg_ARVALID_15      <= '0';
    Dbg_ARREADY_I(15)   <= '0';
    Dbg_RDATA_I(15)     <= (others => '0');
    Dbg_RRESP_I(15)     <= (others => '0');
    Dbg_RVALID_I(15)    <= '0';
    Dbg_RREADY_15       <= '0';

    Dbg_AWADDR_16       <= (others => '0');
    Dbg_AWVALID_16      <= '0';
    Dbg_AWREADY_I(16)   <= '0';
    Dbg_WDATA_16        <= (others => '0');
    Dbg_WVALID_16       <= '0';
    Dbg_WREADY_I(16)    <= '0';
    Dbg_BRESP_I(16)     <= (others => '0');
    Dbg_BVALID_I(16)    <= '0';
    Dbg_BREADY_16       <= '0';
    Dbg_ARADDR_16       <= (others => '0');
    Dbg_ARVALID_16      <= '0';
    Dbg_ARREADY_I(16)   <= '0';
    Dbg_RDATA_I(16)     <= (others => '0');
    Dbg_RRESP_I(16)     <= (others => '0');
    Dbg_RVALID_I(16)    <= '0';
    Dbg_RREADY_16       <= '0';

    Dbg_AWADDR_17       <= (others => '0');
    Dbg_AWVALID_17      <= '0';
    Dbg_AWREADY_I(17)   <= '0';
    Dbg_WDATA_17        <= (others => '0');
    Dbg_WVALID_17       <= '0';
    Dbg_WREADY_I(17)    <= '0';
    Dbg_BRESP_I(17)     <= (others => '0');
    Dbg_BVALID_I(17)    <= '0';
    Dbg_BREADY_17       <= '0';
    Dbg_ARADDR_17       <= (others => '0');
    Dbg_ARVALID_17      <= '0';
    Dbg_ARREADY_I(17)   <= '0';
    Dbg_RDATA_I(17)     <= (others => '0');
    Dbg_RRESP_I(17)     <= (others => '0');
    Dbg_RVALID_I(17)    <= '0';
    Dbg_RREADY_17       <= '0';

    Dbg_AWADDR_18       <= (others => '0');
    Dbg_AWVALID_18      <= '0';
    Dbg_AWREADY_I(18)   <= '0';
    Dbg_WDATA_18        <= (others => '0');
    Dbg_WVALID_18       <= '0';
    Dbg_WREADY_I(18)    <= '0';
    Dbg_BRESP_I(18)     <= (others => '0');
    Dbg_BVALID_I(18)    <= '0';
    Dbg_BREADY_18       <= '0';
    Dbg_ARADDR_18       <= (others => '0');
    Dbg_ARVALID_18      <= '0';
    Dbg_ARREADY_I(18)   <= '0';
    Dbg_RDATA_I(18)     <= (others => '0');
    Dbg_RRESP_I(18)     <= (others => '0');
    Dbg_RVALID_I(18)    <= '0';
    Dbg_RREADY_18       <= '0';

    Dbg_AWADDR_19       <= (others => '0');
    Dbg_AWVALID_19      <= '0';
    Dbg_AWREADY_I(19)   <= '0';
    Dbg_WDATA_19        <= (others => '0');
    Dbg_WVALID_19       <= '0';
    Dbg_WREADY_I(19)    <= '0';
    Dbg_BRESP_I(19)     <= (others => '0');
    Dbg_BVALID_I(19)    <= '0';
    Dbg_BREADY_19       <= '0';
    Dbg_ARADDR_19       <= (others => '0');
    Dbg_ARVALID_19      <= '0';
    Dbg_ARREADY_I(19)   <= '0';
    Dbg_RDATA_I(19)     <= (others => '0');
    Dbg_RRESP_I(19)     <= (others => '0');
    Dbg_RVALID_I(19)    <= '0';
    Dbg_RREADY_19       <= '0';

    Dbg_AWADDR_20       <= (others => '0');
    Dbg_AWVALID_20      <= '0';
    Dbg_AWREADY_I(20)   <= '0';
    Dbg_WDATA_20        <= (others => '0');
    Dbg_WVALID_20       <= '0';
    Dbg_WREADY_I(20)    <= '0';
    Dbg_BRESP_I(20)     <= (others => '0');
    Dbg_BVALID_I(20)    <= '0';
    Dbg_BREADY_20       <= '0';
    Dbg_ARADDR_20       <= (others => '0');
    Dbg_ARVALID_20      <= '0';
    Dbg_ARREADY_I(20)   <= '0';
    Dbg_RDATA_I(20)     <= (others => '0');
    Dbg_RRESP_I(20)     <= (others => '0');
    Dbg_RVALID_I(20)    <= '0';
    Dbg_RREADY_20       <= '0';

    Dbg_AWADDR_21       <= (others => '0');
    Dbg_AWVALID_21      <= '0';
    Dbg_AWREADY_I(21)   <= '0';
    Dbg_WDATA_21        <= (others => '0');
    Dbg_WVALID_21       <= '0';
    Dbg_WREADY_I(21)    <= '0';
    Dbg_BRESP_I(21)     <= (others => '0');
    Dbg_BVALID_I(21)    <= '0';
    Dbg_BREADY_21       <= '0';
    Dbg_ARADDR_21       <= (others => '0');
    Dbg_ARVALID_21      <= '0';
    Dbg_ARREADY_I(21)   <= '0';
    Dbg_RDATA_I(21)     <= (others => '0');
    Dbg_RRESP_I(21)     <= (others => '0');
    Dbg_RVALID_I(21)    <= '0';
    Dbg_RREADY_21       <= '0';

    Dbg_AWADDR_22       <= (others => '0');
    Dbg_AWVALID_22      <= '0';
    Dbg_AWREADY_I(22)   <= '0';
    Dbg_WDATA_22        <= (others => '0');
    Dbg_WVALID_22       <= '0';
    Dbg_WREADY_I(22)    <= '0';
    Dbg_BRESP_I(22)     <= (others => '0');
    Dbg_BVALID_I(22)    <= '0';
    Dbg_BREADY_22       <= '0';
    Dbg_ARADDR_22       <= (others => '0');
    Dbg_ARVALID_22      <= '0';
    Dbg_ARREADY_I(22)   <= '0';
    Dbg_RDATA_I(22)     <= (others => '0');
    Dbg_RRESP_I(22)     <= (others => '0');
    Dbg_RVALID_I(22)    <= '0';
    Dbg_RREADY_22       <= '0';

    Dbg_AWADDR_23       <= (others => '0');
    Dbg_AWVALID_23      <= '0';
    Dbg_AWREADY_I(23)   <= '0';
    Dbg_WDATA_23        <= (others => '0');
    Dbg_WVALID_23       <= '0';
    Dbg_WREADY_I(23)    <= '0';
    Dbg_BRESP_I(23)     <= (others => '0');
    Dbg_BVALID_I(23)    <= '0';
    Dbg_BREADY_23       <= '0';
    Dbg_ARADDR_23       <= (others => '0');
    Dbg_ARVALID_23      <= '0';
    Dbg_ARREADY_I(23)   <= '0';
    Dbg_RDATA_I(23)     <= (others => '0');
    Dbg_RRESP_I(23)     <= (others => '0');
    Dbg_RVALID_I(23)    <= '0';
    Dbg_RREADY_23       <= '0';

    Dbg_AWADDR_24       <= (others => '0');
    Dbg_AWVALID_24      <= '0';
    Dbg_AWREADY_I(24)   <= '0';
    Dbg_WDATA_24        <= (others => '0');
    Dbg_WVALID_24       <= '0';
    Dbg_WREADY_I(24)    <= '0';
    Dbg_BRESP_I(24)     <= (others => '0');
    Dbg_BVALID_I(24)    <= '0';
    Dbg_BREADY_24       <= '0';
    Dbg_ARADDR_24       <= (others => '0');
    Dbg_ARVALID_24      <= '0';
    Dbg_ARREADY_I(24)   <= '0';
    Dbg_RDATA_I(24)     <= (others => '0');
    Dbg_RRESP_I(24)     <= (others => '0');
    Dbg_RVALID_I(24)    <= '0';
    Dbg_RREADY_24       <= '0';

    Dbg_AWADDR_25       <= (others => '0');
    Dbg_AWVALID_25      <= '0';
    Dbg_AWREADY_I(25)   <= '0';
    Dbg_WDATA_25        <= (others => '0');
    Dbg_WVALID_25       <= '0';
    Dbg_WREADY_I(25)    <= '0';
    Dbg_BRESP_I(25)     <= (others => '0');
    Dbg_BVALID_I(25)    <= '0';
    Dbg_BREADY_25       <= '0';
    Dbg_ARADDR_25       <= (others => '0');
    Dbg_ARVALID_25      <= '0';
    Dbg_ARREADY_I(25)   <= '0';
    Dbg_RDATA_I(25)     <= (others => '0');
    Dbg_RRESP_I(25)     <= (others => '0');
    Dbg_RVALID_I(25)    <= '0';
    Dbg_RREADY_25       <= '0';

    Dbg_AWADDR_26       <= (others => '0');
    Dbg_AWVALID_26      <= '0';
    Dbg_AWREADY_I(26)   <= '0';
    Dbg_WDATA_26        <= (others => '0');
    Dbg_WVALID_26       <= '0';
    Dbg_WREADY_I(26)    <= '0';
    Dbg_BRESP_I(26)     <= (others => '0');
    Dbg_BVALID_I(26)    <= '0';
    Dbg_BREADY_26       <= '0';
    Dbg_ARADDR_26       <= (others => '0');
    Dbg_ARVALID_26      <= '0';
    Dbg_ARREADY_I(26)   <= '0';
    Dbg_RDATA_I(26)     <= (others => '0');
    Dbg_RRESP_I(26)     <= (others => '0');
    Dbg_RVALID_I(26)    <= '0';
    Dbg_RREADY_26       <= '0';

    Dbg_AWADDR_27       <= (others => '0');
    Dbg_AWVALID_27      <= '0';
    Dbg_AWREADY_I(27)   <= '0';
    Dbg_WDATA_27        <= (others => '0');
    Dbg_WVALID_27       <= '0';
    Dbg_WREADY_I(27)    <= '0';
    Dbg_BRESP_I(27)     <= (others => '0');
    Dbg_BVALID_I(27)    <= '0';
    Dbg_BREADY_27       <= '0';
    Dbg_ARADDR_27       <= (others => '0');
    Dbg_ARVALID_27      <= '0';
    Dbg_ARREADY_I(27)   <= '0';
    Dbg_RDATA_I(27)     <= (others => '0');
    Dbg_RRESP_I(27)     <= (others => '0');
    Dbg_RVALID_I(27)    <= '0';
    Dbg_RREADY_27       <= '0';

    Dbg_AWADDR_28       <= (others => '0');
    Dbg_AWVALID_28      <= '0';
    Dbg_AWREADY_I(28)   <= '0';
    Dbg_WDATA_28        <= (others => '0');
    Dbg_WVALID_28       <= '0';
    Dbg_WREADY_I(28)    <= '0';
    Dbg_BRESP_I(28)     <= (others => '0');
    Dbg_BVALID_I(28)    <= '0';
    Dbg_BREADY_28       <= '0';
    Dbg_ARADDR_28       <= (others => '0');
    Dbg_ARVALID_28      <= '0';
    Dbg_ARREADY_I(28)   <= '0';
    Dbg_RDATA_I(28)     <= (others => '0');
    Dbg_RRESP_I(28)     <= (others => '0');
    Dbg_RVALID_I(28)    <= '0';
    Dbg_RREADY_28       <= '0';

    Dbg_AWADDR_29       <= (others => '0');
    Dbg_AWVALID_29      <= '0';
    Dbg_AWREADY_I(29)   <= '0';
    Dbg_WDATA_29        <= (others => '0');
    Dbg_WVALID_29       <= '0';
    Dbg_WREADY_I(29)    <= '0';
    Dbg_BRESP_I(29)     <= (others => '0');
    Dbg_BVALID_I(29)    <= '0';
    Dbg_BREADY_29       <= '0';
    Dbg_ARADDR_29       <= (others => '0');
    Dbg_ARVALID_29      <= '0';
    Dbg_ARREADY_I(29)   <= '0';
    Dbg_RDATA_I(29)     <= (others => '0');
    Dbg_RRESP_I(29)     <= (others => '0');
    Dbg_RVALID_I(29)    <= '0';
    Dbg_RREADY_29       <= '0';

    Dbg_AWADDR_30       <= (others => '0');
    Dbg_AWVALID_30      <= '0';
    Dbg_AWREADY_I(30)   <= '0';
    Dbg_WDATA_30        <= (others => '0');
    Dbg_WVALID_30       <= '0';
    Dbg_WREADY_I(30)    <= '0';
    Dbg_BRESP_I(30)     <= (others => '0');
    Dbg_BVALID_I(30)    <= '0';
    Dbg_BREADY_30       <= '0';
    Dbg_ARADDR_30       <= (others => '0');
    Dbg_ARVALID_30      <= '0';
    Dbg_ARREADY_I(30)   <= '0';
    Dbg_RDATA_I(30)     <= (others => '0');
    Dbg_RRESP_I(30)     <= (others => '0');
    Dbg_RVALID_I(30)    <= '0';
    Dbg_RREADY_30       <= '0';

    Dbg_AWADDR_31       <= (others => '0');
    Dbg_AWVALID_31      <= '0';
    Dbg_AWREADY_I(31)   <= '0';
    Dbg_WDATA_31        <= (others => '0');
    Dbg_WVALID_31       <= '0';
    Dbg_WREADY_I(31)    <= '0';
    Dbg_BRESP_I(31)     <= (others => '0');
    Dbg_BVALID_I(31)    <= '0';
    Dbg_BREADY_31       <= '0';
    Dbg_ARADDR_31       <= (others => '0');
    Dbg_ARVALID_31      <= '0';
    Dbg_ARREADY_I(31)   <= '0';
    Dbg_RDATA_I(31)     <= (others => '0');
    Dbg_RRESP_I(31)     <= (others => '0');
    Dbg_RVALID_I(31)    <= '0';
    Dbg_RREADY_31       <= '0';
  end generate Use_Serial;

  Use_Parallel : if C_DEBUG_INTERFACE > 0 generate
  begin

    Generate_Dbg_Port_Signals : process (mb_debug_enabled_q,
                                         Dbg_AWVALID_I, Dbg_AWREADY_I,
                                         Dbg_WVALID_I,  Dbg_WREADY_I,
                                         Dbg_ARVALID_I, Dbg_ARREADY_I,
                                         Dbg_BRESP_I,   Dbg_BVALID_I,
                                         Dbg_RDATA_I,   Dbg_RRESP_I, Dbg_RVALID_I)
      variable dbg_awready_or : std_logic;
      variable dbg_wready_or  : std_logic;
      variable dbg_arready_or : std_logic;
      variable dbg_bresp_or   : std_logic;
      variable dbg_bvalid_or  : std_logic;
      variable dbg_rdata_or   : std_logic_vector(31 downto 0);
      variable dbg_rresp_or   : std_logic;
      variable dbg_rvalid_or  : std_logic;
    begin  -- process Generate_Dbg_Port_Signals
      dbg_awready_or := '0';
      dbg_wready_or  := '0';
      dbg_arready_or := '0';
      dbg_bresp_or   := '0';
      dbg_bvalid_or  := '0';
      dbg_rdata_or   := (others => '0');
      dbg_rresp_or   := '0';
      dbg_rvalid_or  := '0';
      for I in 0 to C_EN_WIDTH-1 loop
        if (mb_debug_enabled_q(I) = '1') then
          Dbg_AWVALID(I) <= Dbg_AWVALID_I;
          Dbg_WVALID(I)  <= Dbg_WVALID_I;
          Dbg_ARVALID(I) <= Dbg_ARVALID_I;
        else
          Dbg_AWVALID(I) <= '0';
          Dbg_WVALID(I)  <= '0';
          Dbg_ARVALID(I) <= '0';
        end if;
        Dbg_BREADY(I)    <= '1';
        Dbg_RREADY(I)    <= '1';
        dbg_awready_or   := dbg_awready_or or Dbg_AWREADY_I(I);
        dbg_wready_or    := dbg_wready_or  or Dbg_WREADY_I(I);
        dbg_arready_or   := dbg_arready_or or Dbg_ARREADY_I(I);
        dbg_bresp_or     := dbg_bresp_or   or Dbg_BRESP_I(I)(1);
        dbg_bvalid_or    := dbg_bvalid_or  or Dbg_BVALID_I(I);
        dbg_rdata_or     := dbg_rdata_or   or Dbg_RDATA_I(I);
        dbg_rresp_or     := dbg_rresp_or   or Dbg_RRESP_I(I)(1);
        dbg_rvalid_or    := dbg_rvalid_or  or Dbg_RVALID_I(I);
      end loop;  -- I
      for I in C_EN_WIDTH to 31 loop
        Dbg_AWVALID(I)   <= '0';
        Dbg_WVALID(I)    <= '0';
        Dbg_ARVALID(I)   <= '0';
        Dbg_BREADY(I)    <= '0';
        Dbg_RREADY(I)    <= '0';
      end loop;  -- I
      Dbg_AWREADY <= dbg_awready_or;
      Dbg_WREADY  <= dbg_wready_or;
      Dbg_ARREADY <= dbg_arready_or;
      Dbg_BRESP   <= dbg_bresp_or;
      Dbg_BVALID  <= dbg_bvalid_or;
      Dbg_RDATA   <= dbg_rdata_or;
      Dbg_RRESP   <= dbg_rresp_or;
      Dbg_RVALID  <= dbg_rvalid_or;
    end process Generate_Dbg_Port_Signals;

    Dbg_AWADDR_0       <= Dbg_AWADDR;
    Dbg_AWVALID_0      <= Dbg_WVALID(0);
    Dbg_AWREADY_I(0)   <= Dbg_AWREADY_0;
    Dbg_WDATA_0        <= Dbg_WDATA;
    Dbg_WVALID_0       <= Dbg_AWVALID(0);
    Dbg_WREADY_I(0)    <= Dbg_WREADY_0;
    Dbg_BRESP_I(0)     <= Dbg_BRESP_0;
    Dbg_BVALID_I(0)    <= Dbg_BVALID_0;
    Dbg_BREADY_0       <= Dbg_BREADY(0);
    Dbg_ARADDR_0       <= Dbg_ARADDR;
    Dbg_ARVALID_0      <= Dbg_ARVALID(0);
    Dbg_ARREADY_I(0)   <= Dbg_ARREADY_0;
    Dbg_RDATA_I(0)     <= Dbg_RDATA_0;
    Dbg_RRESP_I(0)     <= Dbg_RRESP_0;
    Dbg_RVALID_I(0)    <= Dbg_RVALID_0;
    Dbg_RREADY_0       <= Dbg_RREADY(0);

    Dbg_AWADDR_1       <= Dbg_AWADDR;
    Dbg_AWVALID_1      <= Dbg_WVALID(1);
    Dbg_AWREADY_I(1)   <= Dbg_AWREADY_1;
    Dbg_WDATA_1        <= Dbg_WDATA;
    Dbg_WVALID_1       <= Dbg_AWVALID(1);
    Dbg_WREADY_I(1)    <= Dbg_WREADY_1;
    Dbg_BRESP_I(1)     <= Dbg_BRESP_1;
    Dbg_BVALID_I(1)    <= Dbg_BVALID_1;
    Dbg_BREADY_1       <= Dbg_BREADY(1);
    Dbg_ARADDR_1       <= Dbg_ARADDR;
    Dbg_ARVALID_1      <= Dbg_ARVALID(1);
    Dbg_ARREADY_I(1)   <= Dbg_ARREADY_1;
    Dbg_RDATA_I(1)     <= Dbg_RDATA_1;
    Dbg_RRESP_I(1)     <= Dbg_RRESP_1;
    Dbg_RVALID_I(1)    <= Dbg_RVALID_1;
    Dbg_RREADY_1       <= Dbg_RREADY(1);

    Dbg_AWADDR_2       <= Dbg_AWADDR;
    Dbg_AWVALID_2      <= Dbg_WVALID(2);
    Dbg_AWREADY_I(2)   <= Dbg_AWREADY_2;
    Dbg_WDATA_2        <= Dbg_WDATA;
    Dbg_WVALID_2       <= Dbg_AWVALID(2);
    Dbg_WREADY_I(2)    <= Dbg_WREADY_2;
    Dbg_BRESP_I(2)     <= Dbg_BRESP_2;
    Dbg_BVALID_I(2)    <= Dbg_BVALID_2;
    Dbg_BREADY_2       <= Dbg_BREADY(2);
    Dbg_ARADDR_2       <= Dbg_ARADDR;
    Dbg_ARVALID_2      <= Dbg_ARVALID(2);
    Dbg_ARREADY_I(2)   <= Dbg_ARREADY_2;
    Dbg_RDATA_I(2)     <= Dbg_RDATA_2;
    Dbg_RRESP_I(2)     <= Dbg_RRESP_2;
    Dbg_RVALID_I(2)    <= Dbg_RVALID_2;
    Dbg_RREADY_2       <= Dbg_RREADY(2);

    Dbg_AWADDR_3       <= Dbg_AWADDR;
    Dbg_AWVALID_3      <= Dbg_WVALID(3);
    Dbg_AWREADY_I(3)   <= Dbg_AWREADY_3;
    Dbg_WDATA_3        <= Dbg_WDATA;
    Dbg_WVALID_3       <= Dbg_AWVALID(3);
    Dbg_WREADY_I(3)    <= Dbg_WREADY_3;
    Dbg_BRESP_I(3)     <= Dbg_BRESP_3;
    Dbg_BVALID_I(3)    <= Dbg_BVALID_3;
    Dbg_BREADY_3       <= Dbg_BREADY(3);
    Dbg_ARADDR_3       <= Dbg_ARADDR;
    Dbg_ARVALID_3      <= Dbg_ARVALID(3);
    Dbg_ARREADY_I(3)   <= Dbg_ARREADY_3;
    Dbg_RDATA_I(3)     <= Dbg_RDATA_3;
    Dbg_RRESP_I(3)     <= Dbg_RRESP_3;
    Dbg_RVALID_I(3)    <= Dbg_RVALID_3;
    Dbg_RREADY_3       <= Dbg_RREADY(3);

    Dbg_AWADDR_4       <= Dbg_AWADDR;
    Dbg_AWVALID_4      <= Dbg_WVALID(4);
    Dbg_AWREADY_I(4)   <= Dbg_AWREADY_4;
    Dbg_WDATA_4        <= Dbg_WDATA;
    Dbg_WVALID_4       <= Dbg_AWVALID(4);
    Dbg_WREADY_I(4)    <= Dbg_WREADY_4;
    Dbg_BRESP_I(4)     <= Dbg_BRESP_4;
    Dbg_BVALID_I(4)    <= Dbg_BVALID_4;
    Dbg_BREADY_4       <= Dbg_BREADY(4);
    Dbg_ARADDR_4       <= Dbg_ARADDR;
    Dbg_ARVALID_4      <= Dbg_ARVALID(4);
    Dbg_ARREADY_I(4)   <= Dbg_ARREADY_4;
    Dbg_RDATA_I(4)     <= Dbg_RDATA_4;
    Dbg_RRESP_I(4)     <= Dbg_RRESP_4;
    Dbg_RVALID_I(4)    <= Dbg_RVALID_4;
    Dbg_RREADY_4       <= Dbg_RREADY(4);

    Dbg_AWADDR_5       <= Dbg_AWADDR;
    Dbg_AWVALID_5      <= Dbg_WVALID(5);
    Dbg_AWREADY_I(5)   <= Dbg_AWREADY_5;
    Dbg_WDATA_5        <= Dbg_WDATA;
    Dbg_WVALID_5       <= Dbg_AWVALID(5);
    Dbg_WREADY_I(5)    <= Dbg_WREADY_5;
    Dbg_BRESP_I(5)     <= Dbg_BRESP_5;
    Dbg_BVALID_I(5)    <= Dbg_BVALID_5;
    Dbg_BREADY_5       <= Dbg_BREADY(5);
    Dbg_ARADDR_5       <= Dbg_ARADDR;
    Dbg_ARVALID_5      <= Dbg_ARVALID(5);
    Dbg_ARREADY_I(5)   <= Dbg_ARREADY_5;
    Dbg_RDATA_I(5)     <= Dbg_RDATA_5;
    Dbg_RRESP_I(5)     <= Dbg_RRESP_5;
    Dbg_RVALID_I(5)    <= Dbg_RVALID_5;
    Dbg_RREADY_5       <= Dbg_RREADY(5);

    Dbg_AWADDR_6       <= Dbg_AWADDR;
    Dbg_AWVALID_6      <= Dbg_WVALID(6);
    Dbg_AWREADY_I(6)   <= Dbg_AWREADY_6;
    Dbg_WDATA_6        <= Dbg_WDATA;
    Dbg_WVALID_6       <= Dbg_AWVALID(6);
    Dbg_WREADY_I(6)    <= Dbg_WREADY_6;
    Dbg_BRESP_I(6)     <= Dbg_BRESP_6;
    Dbg_BVALID_I(6)    <= Dbg_BVALID_6;
    Dbg_BREADY_6       <= Dbg_BREADY(6);
    Dbg_ARADDR_6       <= Dbg_ARADDR;
    Dbg_ARVALID_6      <= Dbg_ARVALID(6);
    Dbg_ARREADY_I(6)   <= Dbg_ARREADY_6;
    Dbg_RDATA_I(6)     <= Dbg_RDATA_6;
    Dbg_RRESP_I(6)     <= Dbg_RRESP_6;
    Dbg_RVALID_I(6)    <= Dbg_RVALID_6;
    Dbg_RREADY_6       <= Dbg_RREADY(6);

    Dbg_AWADDR_7       <= Dbg_AWADDR;
    Dbg_AWVALID_7      <= Dbg_WVALID(7);
    Dbg_AWREADY_I(7)   <= Dbg_AWREADY_7;
    Dbg_WDATA_7        <= Dbg_WDATA;
    Dbg_WVALID_7       <= Dbg_AWVALID(7);
    Dbg_WREADY_I(7)    <= Dbg_WREADY_7;
    Dbg_BRESP_I(7)     <= Dbg_BRESP_7;
    Dbg_BVALID_I(7)    <= Dbg_BVALID_7;
    Dbg_BREADY_7       <= Dbg_BREADY(7);
    Dbg_ARADDR_7       <= Dbg_ARADDR;
    Dbg_ARVALID_7      <= Dbg_ARVALID(7);
    Dbg_ARREADY_I(7)   <= Dbg_ARREADY_7;
    Dbg_RDATA_I(7)     <= Dbg_RDATA_7;
    Dbg_RRESP_I(7)     <= Dbg_RRESP_7;
    Dbg_RVALID_I(7)    <= Dbg_RVALID_7;
    Dbg_RREADY_7       <= Dbg_RREADY(7);

    Dbg_AWADDR_8       <= Dbg_AWADDR;
    Dbg_AWVALID_8      <= Dbg_WVALID(8);
    Dbg_AWREADY_I(8)   <= Dbg_AWREADY_8;
    Dbg_WDATA_8        <= Dbg_WDATA;
    Dbg_WVALID_8       <= Dbg_AWVALID(8);
    Dbg_WREADY_I(8)    <= Dbg_WREADY_8;
    Dbg_BRESP_I(8)     <= Dbg_BRESP_8;
    Dbg_BVALID_I(8)    <= Dbg_BVALID_8;
    Dbg_BREADY_8       <= Dbg_BREADY(8);
    Dbg_ARADDR_8       <= Dbg_ARADDR;
    Dbg_ARVALID_8      <= Dbg_ARVALID(8);
    Dbg_ARREADY_I(8)   <= Dbg_ARREADY_8;
    Dbg_RDATA_I(8)     <= Dbg_RDATA_8;
    Dbg_RRESP_I(8)     <= Dbg_RRESP_8;
    Dbg_RVALID_I(8)    <= Dbg_RVALID_8;
    Dbg_RREADY_8       <= Dbg_RREADY(8);

    Dbg_AWADDR_9       <= Dbg_AWADDR;
    Dbg_AWVALID_9      <= Dbg_WVALID(9);
    Dbg_AWREADY_I(9)   <= Dbg_AWREADY_9;
    Dbg_WDATA_9        <= Dbg_WDATA;
    Dbg_WVALID_9       <= Dbg_AWVALID(9);
    Dbg_WREADY_I(9)    <= Dbg_WREADY_9;
    Dbg_BRESP_I(9)     <= Dbg_BRESP_9;
    Dbg_BVALID_I(9)    <= Dbg_BVALID_9;
    Dbg_BREADY_9       <= Dbg_BREADY(9);
    Dbg_ARADDR_9       <= Dbg_ARADDR;
    Dbg_ARVALID_9      <= Dbg_ARVALID(9);
    Dbg_ARREADY_I(9)   <= Dbg_ARREADY_9;
    Dbg_RDATA_I(9)     <= Dbg_RDATA_9;
    Dbg_RRESP_I(9)     <= Dbg_RRESP_9;
    Dbg_RVALID_I(9)    <= Dbg_RVALID_9;
    Dbg_RREADY_9       <= Dbg_RREADY(9);

    Dbg_AWADDR_10       <= Dbg_AWADDR;
    Dbg_AWVALID_10      <= Dbg_WVALID(10);
    Dbg_AWREADY_I(10)   <= Dbg_AWREADY_10;
    Dbg_WDATA_10        <= Dbg_WDATA;
    Dbg_WVALID_10       <= Dbg_AWVALID(10);
    Dbg_WREADY_I(10)    <= Dbg_WREADY_10;
    Dbg_BRESP_I(10)     <= Dbg_BRESP_10;
    Dbg_BVALID_I(10)    <= Dbg_BVALID_10;
    Dbg_BREADY_10       <= Dbg_BREADY(10);
    Dbg_ARADDR_10       <= Dbg_ARADDR;
    Dbg_ARVALID_10      <= Dbg_ARVALID(10);
    Dbg_ARREADY_I(10)   <= Dbg_ARREADY_10;
    Dbg_RDATA_I(10)     <= Dbg_RDATA_10;
    Dbg_RRESP_I(10)     <= Dbg_RRESP_10;
    Dbg_RVALID_I(10)    <= Dbg_RVALID_10;
    Dbg_RREADY_10       <= Dbg_RREADY(10);

    Dbg_AWADDR_11       <= Dbg_AWADDR;
    Dbg_AWVALID_11      <= Dbg_WVALID(11);
    Dbg_AWREADY_I(11)   <= Dbg_AWREADY_11;
    Dbg_WDATA_11        <= Dbg_WDATA;
    Dbg_WVALID_11       <= Dbg_AWVALID(11);
    Dbg_WREADY_I(11)    <= Dbg_WREADY_11;
    Dbg_BRESP_I(11)     <= Dbg_BRESP_11;
    Dbg_BVALID_I(11)    <= Dbg_BVALID_11;
    Dbg_BREADY_11       <= Dbg_BREADY(11);
    Dbg_ARADDR_11       <= Dbg_ARADDR;
    Dbg_ARVALID_11      <= Dbg_ARVALID(11);
    Dbg_ARREADY_I(11)   <= Dbg_ARREADY_11;
    Dbg_RDATA_I(11)     <= Dbg_RDATA_11;
    Dbg_RRESP_I(11)     <= Dbg_RRESP_11;
    Dbg_RVALID_I(11)    <= Dbg_RVALID_11;
    Dbg_RREADY_11       <= Dbg_RREADY(11);

    Dbg_AWADDR_12       <= Dbg_AWADDR;
    Dbg_AWVALID_12      <= Dbg_WVALID(12);
    Dbg_AWREADY_I(12)   <= Dbg_AWREADY_12;
    Dbg_WDATA_12        <= Dbg_WDATA;
    Dbg_WVALID_12       <= Dbg_AWVALID(12);
    Dbg_WREADY_I(12)    <= Dbg_WREADY_12;
    Dbg_BRESP_I(12)     <= Dbg_BRESP_12;
    Dbg_BVALID_I(12)    <= Dbg_BVALID_12;
    Dbg_BREADY_12       <= Dbg_BREADY(12);
    Dbg_ARADDR_12       <= Dbg_ARADDR;
    Dbg_ARVALID_12      <= Dbg_ARVALID(12);
    Dbg_ARREADY_I(12)   <= Dbg_ARREADY_12;
    Dbg_RDATA_I(12)     <= Dbg_RDATA_12;
    Dbg_RRESP_I(12)     <= Dbg_RRESP_12;
    Dbg_RVALID_I(12)    <= Dbg_RVALID_12;
    Dbg_RREADY_12       <= Dbg_RREADY(12);

    Dbg_AWADDR_13       <= Dbg_AWADDR;
    Dbg_AWVALID_13      <= Dbg_WVALID(13);
    Dbg_AWREADY_I(13)   <= Dbg_AWREADY_13;
    Dbg_WDATA_13        <= Dbg_WDATA;
    Dbg_WVALID_13       <= Dbg_AWVALID(13);
    Dbg_WREADY_I(13)    <= Dbg_WREADY_13;
    Dbg_BRESP_I(13)     <= Dbg_BRESP_13;
    Dbg_BVALID_I(13)    <= Dbg_BVALID_13;
    Dbg_BREADY_13       <= Dbg_BREADY(13);
    Dbg_ARADDR_13       <= Dbg_ARADDR;
    Dbg_ARVALID_13      <= Dbg_ARVALID(13);
    Dbg_ARREADY_I(13)   <= Dbg_ARREADY_13;
    Dbg_RDATA_I(13)     <= Dbg_RDATA_13;
    Dbg_RRESP_I(13)     <= Dbg_RRESP_13;
    Dbg_RVALID_I(13)    <= Dbg_RVALID_13;
    Dbg_RREADY_13       <= Dbg_RREADY(13);

    Dbg_AWADDR_14       <= Dbg_AWADDR;
    Dbg_AWVALID_14      <= Dbg_WVALID(14);
    Dbg_AWREADY_I(14)   <= Dbg_AWREADY_14;
    Dbg_WDATA_14        <= Dbg_WDATA;
    Dbg_WVALID_14       <= Dbg_AWVALID(14);
    Dbg_WREADY_I(14)    <= Dbg_WREADY_14;
    Dbg_BRESP_I(14)     <= Dbg_BRESP_14;
    Dbg_BVALID_I(14)    <= Dbg_BVALID_14;
    Dbg_BREADY_14       <= Dbg_BREADY(14);
    Dbg_ARADDR_14       <= Dbg_ARADDR;
    Dbg_ARVALID_14      <= Dbg_ARVALID(14);
    Dbg_ARREADY_I(14)   <= Dbg_ARREADY_14;
    Dbg_RDATA_I(14)     <= Dbg_RDATA_14;
    Dbg_RRESP_I(14)     <= Dbg_RRESP_14;
    Dbg_RVALID_I(14)    <= Dbg_RVALID_14;
    Dbg_RREADY_14       <= Dbg_RREADY(14);

    Dbg_AWADDR_15       <= Dbg_AWADDR;
    Dbg_AWVALID_15      <= Dbg_WVALID(15);
    Dbg_AWREADY_I(15)   <= Dbg_AWREADY_15;
    Dbg_WDATA_15        <= Dbg_WDATA;
    Dbg_WVALID_15       <= Dbg_AWVALID(15);
    Dbg_WREADY_I(15)    <= Dbg_WREADY_15;
    Dbg_BRESP_I(15)     <= Dbg_BRESP_15;
    Dbg_BVALID_I(15)    <= Dbg_BVALID_15;
    Dbg_BREADY_15       <= Dbg_BREADY(15);
    Dbg_ARADDR_15       <= Dbg_ARADDR;
    Dbg_ARVALID_15      <= Dbg_ARVALID(15);
    Dbg_ARREADY_I(15)   <= Dbg_ARREADY_15;
    Dbg_RDATA_I(15)     <= Dbg_RDATA_15;
    Dbg_RRESP_I(15)     <= Dbg_RRESP_15;
    Dbg_RVALID_I(15)    <= Dbg_RVALID_15;
    Dbg_RREADY_15       <= Dbg_RREADY(15);

    Dbg_AWADDR_16       <= Dbg_AWADDR;
    Dbg_AWVALID_16      <= Dbg_WVALID(16);
    Dbg_AWREADY_I(16)   <= Dbg_AWREADY_16;
    Dbg_WDATA_16        <= Dbg_WDATA;
    Dbg_WVALID_16       <= Dbg_AWVALID(16);
    Dbg_WREADY_I(16)    <= Dbg_WREADY_16;
    Dbg_BRESP_I(16)     <= Dbg_BRESP_16;
    Dbg_BVALID_I(16)    <= Dbg_BVALID_16;
    Dbg_BREADY_16       <= Dbg_BREADY(16);
    Dbg_ARADDR_16       <= Dbg_ARADDR;
    Dbg_ARVALID_16      <= Dbg_ARVALID(16);
    Dbg_ARREADY_I(16)   <= Dbg_ARREADY_16;
    Dbg_RDATA_I(16)     <= Dbg_RDATA_16;
    Dbg_RRESP_I(16)     <= Dbg_RRESP_16;
    Dbg_RVALID_I(16)    <= Dbg_RVALID_16;
    Dbg_RREADY_16       <= Dbg_RREADY(16);

    Dbg_AWADDR_17       <= Dbg_AWADDR;
    Dbg_AWVALID_17      <= Dbg_WVALID(17);
    Dbg_AWREADY_I(17)   <= Dbg_AWREADY_17;
    Dbg_WDATA_17        <= Dbg_WDATA;
    Dbg_WVALID_17       <= Dbg_AWVALID(17);
    Dbg_WREADY_I(17)    <= Dbg_WREADY_17;
    Dbg_BRESP_I(17)     <= Dbg_BRESP_17;
    Dbg_BVALID_I(17)    <= Dbg_BVALID_17;
    Dbg_BREADY_17       <= Dbg_BREADY(17);
    Dbg_ARADDR_17       <= Dbg_ARADDR;
    Dbg_ARVALID_17      <= Dbg_ARVALID(17);
    Dbg_ARREADY_I(17)   <= Dbg_ARREADY_17;
    Dbg_RDATA_I(17)     <= Dbg_RDATA_17;
    Dbg_RRESP_I(17)     <= Dbg_RRESP_17;
    Dbg_RVALID_I(17)    <= Dbg_RVALID_17;
    Dbg_RREADY_17       <= Dbg_RREADY(17);

    Dbg_AWADDR_18       <= Dbg_AWADDR;
    Dbg_AWVALID_18      <= Dbg_WVALID(18);
    Dbg_AWREADY_I(18)   <= Dbg_AWREADY_18;
    Dbg_WDATA_18        <= Dbg_WDATA;
    Dbg_WVALID_18       <= Dbg_AWVALID(18);
    Dbg_WREADY_I(18)    <= Dbg_WREADY_18;
    Dbg_BRESP_I(18)     <= Dbg_BRESP_18;
    Dbg_BVALID_I(18)    <= Dbg_BVALID_18;
    Dbg_BREADY_18       <= Dbg_BREADY(18);
    Dbg_ARADDR_18       <= Dbg_ARADDR;
    Dbg_ARVALID_18      <= Dbg_ARVALID(18);
    Dbg_ARREADY_I(18)   <= Dbg_ARREADY_18;
    Dbg_RDATA_I(18)     <= Dbg_RDATA_18;
    Dbg_RRESP_I(18)     <= Dbg_RRESP_18;
    Dbg_RVALID_I(18)    <= Dbg_RVALID_18;
    Dbg_RREADY_18       <= Dbg_RREADY(18);

    Dbg_AWADDR_19       <= Dbg_AWADDR;
    Dbg_AWVALID_19      <= Dbg_WVALID(19);
    Dbg_AWREADY_I(19)   <= Dbg_AWREADY_19;
    Dbg_WDATA_19        <= Dbg_WDATA;
    Dbg_WVALID_19       <= Dbg_AWVALID(19);
    Dbg_WREADY_I(19)    <= Dbg_WREADY_19;
    Dbg_BRESP_I(19)     <= Dbg_BRESP_19;
    Dbg_BVALID_I(19)    <= Dbg_BVALID_19;
    Dbg_BREADY_19       <= Dbg_BREADY(19);
    Dbg_ARADDR_19       <= Dbg_ARADDR;
    Dbg_ARVALID_19      <= Dbg_ARVALID(19);
    Dbg_ARREADY_I(19)   <= Dbg_ARREADY_19;
    Dbg_RDATA_I(19)     <= Dbg_RDATA_19;
    Dbg_RRESP_I(19)     <= Dbg_RRESP_19;
    Dbg_RVALID_I(19)    <= Dbg_RVALID_19;
    Dbg_RREADY_19       <= Dbg_RREADY(19);

    Dbg_AWADDR_20       <= Dbg_AWADDR;
    Dbg_AWVALID_20      <= Dbg_WVALID(20);
    Dbg_AWREADY_I(20)   <= Dbg_AWREADY_20;
    Dbg_WDATA_20        <= Dbg_WDATA;
    Dbg_WVALID_20       <= Dbg_AWVALID(20);
    Dbg_WREADY_I(20)    <= Dbg_WREADY_20;
    Dbg_BRESP_I(20)     <= Dbg_BRESP_20;
    Dbg_BVALID_I(20)    <= Dbg_BVALID_20;
    Dbg_BREADY_20       <= Dbg_BREADY(20);
    Dbg_ARADDR_20       <= Dbg_ARADDR;
    Dbg_ARVALID_20      <= Dbg_ARVALID(20);
    Dbg_ARREADY_I(20)   <= Dbg_ARREADY_20;
    Dbg_RDATA_I(20)     <= Dbg_RDATA_20;
    Dbg_RRESP_I(20)     <= Dbg_RRESP_20;
    Dbg_RVALID_I(20)    <= Dbg_RVALID_20;
    Dbg_RREADY_20       <= Dbg_RREADY(20);

    Dbg_AWADDR_21       <= Dbg_AWADDR;
    Dbg_AWVALID_21      <= Dbg_WVALID(21);
    Dbg_AWREADY_I(21)   <= Dbg_AWREADY_21;
    Dbg_WDATA_21        <= Dbg_WDATA;
    Dbg_WVALID_21       <= Dbg_AWVALID(21);
    Dbg_WREADY_I(21)    <= Dbg_WREADY_21;
    Dbg_BRESP_I(21)     <= Dbg_BRESP_21;
    Dbg_BVALID_I(21)    <= Dbg_BVALID_21;
    Dbg_BREADY_21       <= Dbg_BREADY(21);
    Dbg_ARADDR_21       <= Dbg_ARADDR;
    Dbg_ARVALID_21      <= Dbg_ARVALID(21);
    Dbg_ARREADY_I(21)   <= Dbg_ARREADY_21;
    Dbg_RDATA_I(21)     <= Dbg_RDATA_21;
    Dbg_RRESP_I(21)     <= Dbg_RRESP_21;
    Dbg_RVALID_I(21)    <= Dbg_RVALID_21;
    Dbg_RREADY_21       <= Dbg_RREADY(21);

    Dbg_AWADDR_22       <= Dbg_AWADDR;
    Dbg_AWVALID_22      <= Dbg_WVALID(22);
    Dbg_AWREADY_I(22)   <= Dbg_AWREADY_22;
    Dbg_WDATA_22        <= Dbg_WDATA;
    Dbg_WVALID_22       <= Dbg_AWVALID(22);
    Dbg_WREADY_I(22)    <= Dbg_WREADY_22;
    Dbg_BRESP_I(22)     <= Dbg_BRESP_22;
    Dbg_BVALID_I(22)    <= Dbg_BVALID_22;
    Dbg_BREADY_22       <= Dbg_BREADY(22);
    Dbg_ARADDR_22       <= Dbg_ARADDR;
    Dbg_ARVALID_22      <= Dbg_ARVALID(22);
    Dbg_ARREADY_I(22)   <= Dbg_ARREADY_22;
    Dbg_RDATA_I(22)     <= Dbg_RDATA_22;
    Dbg_RRESP_I(22)     <= Dbg_RRESP_22;
    Dbg_RVALID_I(22)    <= Dbg_RVALID_22;
    Dbg_RREADY_22       <= Dbg_RREADY(22);

    Dbg_AWADDR_23       <= Dbg_AWADDR;
    Dbg_AWVALID_23      <= Dbg_WVALID(23);
    Dbg_AWREADY_I(23)   <= Dbg_AWREADY_23;
    Dbg_WDATA_23        <= Dbg_WDATA;
    Dbg_WVALID_23       <= Dbg_AWVALID(23);
    Dbg_WREADY_I(23)    <= Dbg_WREADY_23;
    Dbg_BRESP_I(23)     <= Dbg_BRESP_23;
    Dbg_BVALID_I(23)    <= Dbg_BVALID_23;
    Dbg_BREADY_23       <= Dbg_BREADY(23);
    Dbg_ARADDR_23       <= Dbg_ARADDR;
    Dbg_ARVALID_23      <= Dbg_ARVALID(23);
    Dbg_ARREADY_I(23)   <= Dbg_ARREADY_23;
    Dbg_RDATA_I(23)     <= Dbg_RDATA_23;
    Dbg_RRESP_I(23)     <= Dbg_RRESP_23;
    Dbg_RVALID_I(23)    <= Dbg_RVALID_23;
    Dbg_RREADY_23       <= Dbg_RREADY(23);

    Dbg_AWADDR_24       <= Dbg_AWADDR;
    Dbg_AWVALID_24      <= Dbg_WVALID(24);
    Dbg_AWREADY_I(24)   <= Dbg_AWREADY_24;
    Dbg_WDATA_24        <= Dbg_WDATA;
    Dbg_WVALID_24       <= Dbg_AWVALID(24);
    Dbg_WREADY_I(24)    <= Dbg_WREADY_24;
    Dbg_BRESP_I(24)     <= Dbg_BRESP_24;
    Dbg_BVALID_I(24)    <= Dbg_BVALID_24;
    Dbg_BREADY_24       <= Dbg_BREADY(24);
    Dbg_ARADDR_24       <= Dbg_ARADDR;
    Dbg_ARVALID_24      <= Dbg_ARVALID(24);
    Dbg_ARREADY_I(24)   <= Dbg_ARREADY_24;
    Dbg_RDATA_I(24)     <= Dbg_RDATA_24;
    Dbg_RRESP_I(24)     <= Dbg_RRESP_24;
    Dbg_RVALID_I(24)    <= Dbg_RVALID_24;
    Dbg_RREADY_24       <= Dbg_RREADY(24);

    Dbg_AWADDR_25       <= Dbg_AWADDR;
    Dbg_AWVALID_25      <= Dbg_WVALID(25);
    Dbg_AWREADY_I(25)   <= Dbg_AWREADY_25;
    Dbg_WDATA_25        <= Dbg_WDATA;
    Dbg_WVALID_25       <= Dbg_AWVALID(25);
    Dbg_WREADY_I(25)    <= Dbg_WREADY_25;
    Dbg_BRESP_I(25)     <= Dbg_BRESP_25;
    Dbg_BVALID_I(25)    <= Dbg_BVALID_25;
    Dbg_BREADY_25       <= Dbg_BREADY(25);
    Dbg_ARADDR_25       <= Dbg_ARADDR;
    Dbg_ARVALID_25      <= Dbg_ARVALID(25);
    Dbg_ARREADY_I(25)   <= Dbg_ARREADY_25;
    Dbg_RDATA_I(25)     <= Dbg_RDATA_25;
    Dbg_RRESP_I(25)     <= Dbg_RRESP_25;
    Dbg_RVALID_I(25)    <= Dbg_RVALID_25;
    Dbg_RREADY_25       <= Dbg_RREADY(25);

    Dbg_AWADDR_26       <= Dbg_AWADDR;
    Dbg_AWVALID_26      <= Dbg_WVALID(26);
    Dbg_AWREADY_I(26)   <= Dbg_AWREADY_26;
    Dbg_WDATA_26        <= Dbg_WDATA;
    Dbg_WVALID_26       <= Dbg_AWVALID(26);
    Dbg_WREADY_I(26)    <= Dbg_WREADY_26;
    Dbg_BRESP_I(26)     <= Dbg_BRESP_26;
    Dbg_BVALID_I(26)    <= Dbg_BVALID_26;
    Dbg_BREADY_26       <= Dbg_BREADY(26);
    Dbg_ARADDR_26       <= Dbg_ARADDR;
    Dbg_ARVALID_26      <= Dbg_ARVALID(26);
    Dbg_ARREADY_I(26)   <= Dbg_ARREADY_26;
    Dbg_RDATA_I(26)     <= Dbg_RDATA_26;
    Dbg_RRESP_I(26)     <= Dbg_RRESP_26;
    Dbg_RVALID_I(26)    <= Dbg_RVALID_26;
    Dbg_RREADY_26       <= Dbg_RREADY(26);

    Dbg_AWADDR_27       <= Dbg_AWADDR;
    Dbg_AWVALID_27      <= Dbg_WVALID(27);
    Dbg_AWREADY_I(27)   <= Dbg_AWREADY_27;
    Dbg_WDATA_27        <= Dbg_WDATA;
    Dbg_WVALID_27       <= Dbg_AWVALID(27);
    Dbg_WREADY_I(27)    <= Dbg_WREADY_27;
    Dbg_BRESP_I(27)     <= Dbg_BRESP_27;
    Dbg_BVALID_I(27)    <= Dbg_BVALID_27;
    Dbg_BREADY_27       <= Dbg_BREADY(27);
    Dbg_ARADDR_27       <= Dbg_ARADDR;
    Dbg_ARVALID_27      <= Dbg_ARVALID(27);
    Dbg_ARREADY_I(27)   <= Dbg_ARREADY_27;
    Dbg_RDATA_I(27)     <= Dbg_RDATA_27;
    Dbg_RRESP_I(27)     <= Dbg_RRESP_27;
    Dbg_RVALID_I(27)    <= Dbg_RVALID_27;
    Dbg_RREADY_27       <= Dbg_RREADY(27);

    Dbg_AWADDR_28       <= Dbg_AWADDR;
    Dbg_AWVALID_28      <= Dbg_WVALID(28);
    Dbg_AWREADY_I(28)   <= Dbg_AWREADY_28;
    Dbg_WDATA_28        <= Dbg_WDATA;
    Dbg_WVALID_28       <= Dbg_AWVALID(28);
    Dbg_WREADY_I(28)    <= Dbg_WREADY_28;
    Dbg_BRESP_I(28)     <= Dbg_BRESP_28;
    Dbg_BVALID_I(28)    <= Dbg_BVALID_28;
    Dbg_BREADY_28       <= Dbg_BREADY(28);
    Dbg_ARADDR_28       <= Dbg_ARADDR;
    Dbg_ARVALID_28      <= Dbg_ARVALID(28);
    Dbg_ARREADY_I(28)   <= Dbg_ARREADY_28;
    Dbg_RDATA_I(28)     <= Dbg_RDATA_28;
    Dbg_RRESP_I(28)     <= Dbg_RRESP_28;
    Dbg_RVALID_I(28)    <= Dbg_RVALID_28;
    Dbg_RREADY_28       <= Dbg_RREADY(28);

    Dbg_AWADDR_29       <= Dbg_AWADDR;
    Dbg_AWVALID_29      <= Dbg_WVALID(29);
    Dbg_AWREADY_I(29)   <= Dbg_AWREADY_29;
    Dbg_WDATA_29        <= Dbg_WDATA;
    Dbg_WVALID_29       <= Dbg_AWVALID(29);
    Dbg_WREADY_I(29)    <= Dbg_WREADY_29;
    Dbg_BRESP_I(29)     <= Dbg_BRESP_29;
    Dbg_BVALID_I(29)    <= Dbg_BVALID_29;
    Dbg_BREADY_29       <= Dbg_BREADY(29);
    Dbg_ARADDR_29       <= Dbg_ARADDR;
    Dbg_ARVALID_29      <= Dbg_ARVALID(29);
    Dbg_ARREADY_I(29)   <= Dbg_ARREADY_29;
    Dbg_RDATA_I(29)     <= Dbg_RDATA_29;
    Dbg_RRESP_I(29)     <= Dbg_RRESP_29;
    Dbg_RVALID_I(29)    <= Dbg_RVALID_29;
    Dbg_RREADY_29       <= Dbg_RREADY(29);

    Dbg_AWADDR_30       <= Dbg_AWADDR;
    Dbg_AWVALID_30      <= Dbg_WVALID(30);
    Dbg_AWREADY_I(30)   <= Dbg_AWREADY_30;
    Dbg_WDATA_30        <= Dbg_WDATA;
    Dbg_WVALID_30       <= Dbg_AWVALID(30);
    Dbg_WREADY_I(30)    <= Dbg_WREADY_30;
    Dbg_BRESP_I(30)     <= Dbg_BRESP_30;
    Dbg_BVALID_I(30)    <= Dbg_BVALID_30;
    Dbg_BREADY_30       <= Dbg_BREADY(30);
    Dbg_ARADDR_30       <= Dbg_ARADDR;
    Dbg_ARVALID_30      <= Dbg_ARVALID(30);
    Dbg_ARREADY_I(30)   <= Dbg_ARREADY_30;
    Dbg_RDATA_I(30)     <= Dbg_RDATA_30;
    Dbg_RRESP_I(30)     <= Dbg_RRESP_30;
    Dbg_RVALID_I(30)    <= Dbg_RVALID_30;
    Dbg_RREADY_30       <= Dbg_RREADY(30);

    Dbg_AWADDR_31       <= Dbg_AWADDR;
    Dbg_AWVALID_31      <= Dbg_WVALID(31);
    Dbg_AWREADY_I(31)   <= Dbg_AWREADY_31;
    Dbg_WDATA_31        <= Dbg_WDATA;
    Dbg_WVALID_31       <= Dbg_AWVALID(31);
    Dbg_WREADY_I(31)    <= Dbg_WREADY_31;
    Dbg_BRESP_I(31)     <= Dbg_BRESP_31;
    Dbg_BVALID_I(31)    <= Dbg_BVALID_31;
    Dbg_BREADY_31       <= Dbg_BREADY(31);
    Dbg_ARADDR_31       <= Dbg_ARADDR;
    Dbg_ARVALID_31      <= Dbg_ARVALID(31);
    Dbg_ARREADY_I(31)   <= Dbg_ARREADY_31;
    Dbg_RDATA_I(31)     <= Dbg_RDATA_31;
    Dbg_RRESP_I(31)     <= Dbg_RRESP_31;
    Dbg_RVALID_I(31)    <= Dbg_RVALID_31;
    Dbg_RREADY_31       <= Dbg_RREADY(31);

    -- Unused serial signals
    Dbg_Reg_En_I   <= (others => (others => '0'));

    Dbg_Clk_0      <= '0';
    Dbg_TDI_0      <= '0';
    Dbg_TDO_I(0)   <= '0';
    Dbg_Reg_En_0   <= (others => '0');
    Dbg_Capture_0  <= '0';
    Dbg_Shift_0    <= '0';
    Dbg_Update_0   <= '0';

    Dbg_Clk_1      <= '0';
    Dbg_TDI_1      <= '0';
    Dbg_TDO_I(1)   <= '0';
    Dbg_Reg_En_1   <= (others => '0');
    Dbg_Capture_1  <= '0';
    Dbg_Shift_1    <= '0';
    Dbg_Update_1   <= '0';

    Dbg_Clk_2      <= '0';
    Dbg_TDI_2      <= '0';
    Dbg_TDO_I(2)   <= '0';
    Dbg_Reg_En_2   <= (others => '0');
    Dbg_Capture_2  <= '0';
    Dbg_Shift_2    <= '0';
    Dbg_Update_2   <= '0';

    Dbg_Clk_3      <= '0';
    Dbg_TDI_3      <= '0';
    Dbg_TDO_I(3)   <= '0';
    Dbg_Reg_En_3   <= (others => '0');
    Dbg_Capture_3  <= '0';
    Dbg_Shift_3    <= '0';
    Dbg_Update_3   <= '0';

    Dbg_Clk_4      <= '0';
    Dbg_TDI_4      <= '0';
    Dbg_TDO_I(4)   <= '0';
    Dbg_Reg_En_4   <= (others => '0');
    Dbg_Capture_4  <= '0';
    Dbg_Shift_4    <= '0';
    Dbg_Update_4   <= '0';

    Dbg_Clk_5      <= '0';
    Dbg_TDI_5      <= '0';
    Dbg_TDO_I(5)   <= '0';
    Dbg_Reg_En_5   <= (others => '0');
    Dbg_Capture_5  <= '0';
    Dbg_Shift_5    <= '0';
    Dbg_Update_5   <= '0';

    Dbg_Clk_6      <= '0';
    Dbg_TDI_6      <= '0';
    Dbg_TDO_I(6)   <= '0';
    Dbg_Reg_En_6   <= (others => '0');
    Dbg_Capture_6  <= '0';
    Dbg_Shift_6    <= '0';
    Dbg_Update_6   <= '0';

    Dbg_Clk_7      <= '0';
    Dbg_TDI_7      <= '0';
    Dbg_TDO_I(7)   <= '0';
    Dbg_Reg_En_7   <= (others => '0');
    Dbg_Capture_7  <= '0';
    Dbg_Shift_7    <= '0';
    Dbg_Update_7   <= '0';

    Dbg_Clk_8      <= '0';
    Dbg_TDI_8      <= '0';
    Dbg_TDO_I(8)   <= '0';
    Dbg_Reg_En_8   <= (others => '0');
    Dbg_Capture_8  <= '0';
    Dbg_Shift_8    <= '0';
    Dbg_Update_8   <= '0';

    Dbg_Clk_9      <= '0';
    Dbg_TDI_9      <= '0';
    Dbg_TDO_I(9)   <= '0';
    Dbg_Reg_En_9   <= (others => '0');
    Dbg_Capture_9  <= '0';
    Dbg_Shift_9    <= '0';
    Dbg_Update_9   <= '0';

    Dbg_Clk_10      <= '0';
    Dbg_TDI_10      <= '0';
    Dbg_TDO_I(10)   <= '0';
    Dbg_Reg_En_10   <= (others => '0');
    Dbg_Capture_10  <= '0';
    Dbg_Shift_10    <= '0';
    Dbg_Update_10   <= '0';

    Dbg_Clk_11      <= '0';
    Dbg_TDI_11      <= '0';
    Dbg_TDO_I(11)   <= '0';
    Dbg_Reg_En_11   <= (others => '0');
    Dbg_Capture_11  <= '0';
    Dbg_Shift_11    <= '0';
    Dbg_Update_11   <= '0';

    Dbg_Clk_12      <= '0';
    Dbg_TDI_12      <= '0';
    Dbg_TDO_I(12)   <= '0';
    Dbg_Reg_En_12   <= (others => '0');
    Dbg_Capture_12  <= '0';
    Dbg_Shift_12    <= '0';
    Dbg_Update_12   <= '0';

    Dbg_Clk_13      <= '0';
    Dbg_TDI_13      <= '0';
    Dbg_TDO_I(13)   <= '0';
    Dbg_Reg_En_13   <= (others => '0');
    Dbg_Capture_13  <= '0';
    Dbg_Shift_13    <= '0';
    Dbg_Update_13   <= '0';

    Dbg_Clk_14      <= '0';
    Dbg_TDI_14      <= '0';
    Dbg_TDO_I(14)   <= '0';
    Dbg_Reg_En_14   <= (others => '0');
    Dbg_Capture_14  <= '0';
    Dbg_Shift_14    <= '0';
    Dbg_Update_14   <= '0';

    Dbg_Clk_15      <= '0';
    Dbg_TDI_15      <= '0';
    Dbg_TDO_I(15)   <= '0';
    Dbg_Reg_En_15   <= (others => '0');
    Dbg_Capture_15  <= '0';
    Dbg_Shift_15    <= '0';
    Dbg_Update_15   <= '0';

    Dbg_Clk_16      <= '0';
    Dbg_TDI_16      <= '0';
    Dbg_TDO_I(16)   <= '0';
    Dbg_Reg_En_16   <= (others => '0');
    Dbg_Capture_16  <= '0';
    Dbg_Shift_16    <= '0';
    Dbg_Update_16   <= '0';

    Dbg_Clk_17      <= '0';
    Dbg_TDI_17      <= '0';
    Dbg_TDO_I(17)   <= '0';
    Dbg_Reg_En_17   <= (others => '0');
    Dbg_Capture_17  <= '0';
    Dbg_Shift_17    <= '0';
    Dbg_Update_17   <= '0';

    Dbg_Clk_18      <= '0';
    Dbg_TDI_18      <= '0';
    Dbg_TDO_I(18)   <= '0';
    Dbg_Reg_En_18   <= (others => '0');
    Dbg_Capture_18  <= '0';
    Dbg_Shift_18    <= '0';
    Dbg_Update_18   <= '0';

    Dbg_Clk_19      <= '0';
    Dbg_TDI_19      <= '0';
    Dbg_TDO_I(19)   <= '0';
    Dbg_Reg_En_19   <= (others => '0');
    Dbg_Capture_19  <= '0';
    Dbg_Shift_19    <= '0';
    Dbg_Update_19   <= '0';

    Dbg_Clk_20      <= '0';
    Dbg_TDI_20      <= '0';
    Dbg_TDO_I(20)   <= '0';
    Dbg_Reg_En_20   <= (others => '0');
    Dbg_Capture_20  <= '0';
    Dbg_Shift_20    <= '0';
    Dbg_Update_20   <= '0';

    Dbg_Clk_21      <= '0';
    Dbg_TDI_21      <= '0';
    Dbg_TDO_I(21)   <= '0';
    Dbg_Reg_En_21   <= (others => '0');
    Dbg_Capture_21  <= '0';
    Dbg_Shift_21    <= '0';
    Dbg_Update_21   <= '0';

    Dbg_Clk_22      <= '0';
    Dbg_TDI_22      <= '0';
    Dbg_TDO_I(22)   <= '0';
    Dbg_Reg_En_22   <= (others => '0');
    Dbg_Capture_22  <= '0';
    Dbg_Shift_22    <= '0';
    Dbg_Update_22   <= '0';

    Dbg_Clk_23      <= '0';
    Dbg_TDI_23      <= '0';
    Dbg_TDO_I(23)   <= '0';
    Dbg_Reg_En_23   <= (others => '0');
    Dbg_Capture_23  <= '0';
    Dbg_Shift_23    <= '0';
    Dbg_Update_23   <= '0';

    Dbg_Clk_24      <= '0';
    Dbg_TDI_24      <= '0';
    Dbg_TDO_I(24)   <= '0';
    Dbg_Reg_En_24   <= (others => '0');
    Dbg_Capture_24  <= '0';
    Dbg_Shift_24    <= '0';
    Dbg_Update_24   <= '0';

    Dbg_Clk_25      <= '0';
    Dbg_TDI_25      <= '0';
    Dbg_TDO_I(25)   <= '0';
    Dbg_Reg_En_25   <= (others => '0');
    Dbg_Capture_25  <= '0';
    Dbg_Shift_25    <= '0';
    Dbg_Update_25   <= '0';

    Dbg_Clk_26      <= '0';
    Dbg_TDI_26      <= '0';
    Dbg_TDO_I(26)   <= '0';
    Dbg_Reg_En_26   <= (others => '0');
    Dbg_Capture_26  <= '0';
    Dbg_Shift_26    <= '0';
    Dbg_Update_26   <= '0';

    Dbg_Clk_27      <= '0';
    Dbg_TDI_27      <= '0';
    Dbg_TDO_I(27)   <= '0';
    Dbg_Reg_En_27   <= (others => '0');
    Dbg_Capture_27  <= '0';
    Dbg_Shift_27    <= '0';
    Dbg_Update_27   <= '0';

    Dbg_Clk_28      <= '0';
    Dbg_TDI_28      <= '0';
    Dbg_TDO_I(28)   <= '0';
    Dbg_Reg_En_28   <= (others => '0');
    Dbg_Capture_28  <= '0';
    Dbg_Shift_28    <= '0';
    Dbg_Update_28   <= '0';

    Dbg_Clk_29      <= '0';
    Dbg_TDI_29      <= '0';
    Dbg_TDO_I(29)   <= '0';
    Dbg_Reg_En_29   <= (others => '0');
    Dbg_Capture_29  <= '0';
    Dbg_Shift_29    <= '0';
    Dbg_Update_29   <= '0';

    Dbg_Clk_30      <= '0';
    Dbg_TDI_30      <= '0';
    Dbg_TDO_I(30)   <= '0';
    Dbg_Reg_En_30   <= (others => '0');
    Dbg_Capture_30  <= '0';
    Dbg_Shift_30    <= '0';
    Dbg_Update_30   <= '0';

    Dbg_Clk_31      <= '0';
    Dbg_TDI_31      <= '0';
    Dbg_TDO_I(31)   <= '0';
    Dbg_Reg_En_31   <= (others => '0');
    Dbg_Capture_31  <= '0';
    Dbg_Shift_31    <= '0';
    Dbg_Update_31   <= '0';
  end generate Use_Parallel;

end architecture IMP;


-------------------------------------------------------------------------------
-- mdm.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2003-2014,2016-2018 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mdm.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:   
--              mdm.vhd
--
-------------------------------------------------------------------------------
-- Author:          goran
--
-- History:
--   goran   2006-10-27    First Version
--   stefana 2012-03-16    Added support for 32 processors and external BSCAN
--   stefana 2012-12-14    Removed legacy interfaces
--   stefana 2013-11-01    Added extended debug: debug register access, debug
--                         memory access, cross trigger support
--   stefana 2014-04-30    Added external trace support
--   stefana 2016-04-25    Added parallel synchronous debug interface
--   stefana 2016-06-01    Added wrappers for unisim primitives
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library mdm_v3_2_14;
use mdm_v3_2_14.all;

library axi_lite_ipif_v3_0_4;
use axi_lite_ipif_v3_0_4.axi_lite_ipif;
use axi_lite_ipif_v3_0_4.ipif_pkg.all;

entity MDM is
  generic (
    C_FAMILY                : string                        := "virtex7";
    C_JTAG_CHAIN            : integer                       := 2;
    C_USE_BSCAN             : integer                       := 0;
    C_BSCANID               : integer                       := 0;
    C_USE_CONFIG_RESET      : integer                       := 0;
    C_AVOID_PRIMITIVES      : integer                       := 0;
    C_INTERCONNECT          : integer                       := 0;
    C_DEBUG_INTERFACE       : integer                       := 0;
    C_MB_DBG_PORTS          : integer                       := 1;
    C_DBG_REG_ACCESS        : integer                       := 0;
    C_DBG_MEM_ACCESS        : integer                       := 0;
    C_USE_UART              : integer                       := 1;
    C_USE_CROSS_TRIGGER     : integer                       := 0;
    C_EXT_TRIG_RESET_VALUE  : std_logic_vector(0 to 19)     := X"F1234";
    C_TRACE_OUTPUT          : integer                       := 0;
    C_TRACE_DATA_WIDTH      : integer range 2 to 32         := 32;
    C_TRACE_ASYNC_RESET     : integer                       := 0;
    C_TRACE_CLK_FREQ_HZ     : integer                       := 200000000;
    C_TRACE_CLK_OUT_PHASE   : integer range 0 to 360        := 90;
    C_TRACE_PROTOCOL        : integer                       := 0;
    C_TRACE_ID              : integer                       := 110;
    C_S_AXI_ACLK_FREQ_HZ    : integer                       := 100000000;
    C_S_AXI_ADDR_WIDTH      : integer range 4  to 16        := 4;
    C_S_AXI_DATA_WIDTH      : integer range 32 to 128       := 32;
    C_M_AXI_ADDR_WIDTH      : integer range 32 to 32        := 32;
    C_M_AXI_DATA_WIDTH      : integer range 32 to 32        := 32;
    C_M_AXI_THREAD_ID_WIDTH : integer                       := 1;
    C_DATA_SIZE             : integer range 32 to 32        := 32;
    C_M_AXIS_DATA_WIDTH     : integer range 2  to 32        := 32;
    C_M_AXIS_ID_WIDTH       : integer range 1  to 7         := 7
  );

  port (
    -- Global signals
    Config_Reset    : in std_logic := '0';
    Scan_Reset_Sel  : in std_logic := '0';
    Scan_Reset      : in std_logic := '0';
    Scan_En         : in std_logic := '0';

    S_AXI_ACLK      : in std_logic;
    S_AXI_ARESETN   : in std_logic;

    M_AXI_ACLK      : in std_logic;
    M_AXI_ARESETN   : in std_logic;

    M_AXIS_ACLK     : in std_logic;
    M_AXIS_ARESETN  : in std_logic;

    Interrupt       : out std_logic;
    Ext_BRK         : out std_logic;
    Ext_NM_BRK      : out std_logic;
    Debug_SYS_Rst   : out std_logic;

    -- External cross trigger signals
    Trig_In_0      : in  std_logic;
    Trig_Ack_In_0  : out std_logic;
    Trig_Out_0     : out std_logic;
    Trig_Ack_Out_0 : in  std_logic;

    Trig_In_1      : in  std_logic;
    Trig_Ack_In_1  : out std_logic;
    Trig_Out_1     : out std_logic;
    Trig_Ack_Out_1 : in  std_logic;

    Trig_In_2      : in  std_logic;
    Trig_Ack_In_2  : out std_logic;
    Trig_Out_2     : out std_logic;
    Trig_Ack_Out_2 : in  std_logic;

    Trig_In_3      : in  std_logic;
    Trig_Ack_In_3  : out std_logic;
    Trig_Out_3     : out std_logic;
    Trig_Ack_Out_3 : in  std_logic;

    -- AXI slave signals
    S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWVALID : in  std_logic;
    S_AXI_AWREADY : out std_logic;
    S_AXI_WDATA   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID  : in  std_logic;
    S_AXI_WREADY  : out std_logic;
    S_AXI_BRESP   : out std_logic_vector(1 downto 0);
    S_AXI_BVALID  : out std_logic;
    S_AXI_BREADY  : in  std_logic;
    S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARVALID : in  std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP   : out std_logic_vector(1 downto 0);
    S_AXI_RVALID  : out std_logic;
    S_AXI_RREADY  : in  std_logic;

    -- Bus master signals
    M_AXI_AWID          : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_AWADDR        : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN         : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE        : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST       : out std_logic_vector(1 downto 0);
    M_AXI_AWLOCK        : out std_logic;
    M_AXI_AWCACHE       : out std_logic_vector(3 downto 0);
    M_AXI_AWPROT        : out std_logic_vector(2 downto 0);
    M_AXI_AWQOS         : out std_logic_vector(3 downto 0);
    M_AXI_AWVALID       : out std_logic;
    M_AXI_AWREADY       : in  std_logic;
    M_AXI_WDATA         : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB         : out std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI_WLAST         : out std_logic;
    M_AXI_WVALID        : out std_logic;
    M_AXI_WREADY        : in  std_logic;
    M_AXI_BRESP         : in  std_logic_vector(1 downto 0);
    M_AXI_BID           : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_BVALID        : in  std_logic;
    M_AXI_BREADY        : out std_logic;
    M_AXI_ARID          : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_ARADDR        : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_ARLEN         : out std_logic_vector(7 downto 0);
    M_AXI_ARSIZE        : out std_logic_vector(2 downto 0);
    M_AXI_ARBURST       : out std_logic_vector(1 downto 0);
    M_AXI_ARLOCK        : out std_logic;
    M_AXI_ARCACHE       : out std_logic_vector(3 downto 0);
    M_AXI_ARPROT        : out std_logic_vector(2 downto 0);
    M_AXI_ARQOS         : out std_logic_vector(3 downto 0);
    M_AXI_ARVALID       : out std_logic;
    M_AXI_ARREADY       : in  std_logic;
    M_AXI_RID           : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
    M_AXI_RDATA         : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_RRESP         : in  std_logic_vector(1 downto 0);
    M_AXI_RLAST         : in  std_logic;
    M_AXI_RVALID        : in  std_logic;
    M_AXI_RREADY        : out std_logic;

    LMB_Data_Addr_0     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_0     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_0    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_0   : out std_logic;
    LMB_Read_Strobe_0   : out std_logic;
    LMB_Write_Strobe_0  : out std_logic;
    LMB_Ready_0         : in  std_logic;
    LMB_Wait_0          : in  std_logic;
    LMB_CE_0            : in  std_logic;
    LMB_UE_0            : in  std_logic;
    LMB_Byte_Enable_0   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_1     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_1     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_1    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_1   : out std_logic;
    LMB_Read_Strobe_1   : out std_logic;
    LMB_Write_Strobe_1  : out std_logic;
    LMB_Ready_1         : in  std_logic;
    LMB_Wait_1          : in  std_logic;
    LMB_CE_1            : in  std_logic;
    LMB_UE_1            : in  std_logic;
    LMB_Byte_Enable_1   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_2     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_2     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_2    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_2   : out std_logic;
    LMB_Read_Strobe_2   : out std_logic;
    LMB_Write_Strobe_2  : out std_logic;
    LMB_Ready_2         : in  std_logic;
    LMB_Wait_2          : in  std_logic;
    LMB_CE_2            : in  std_logic;
    LMB_UE_2            : in  std_logic;
    LMB_Byte_Enable_2   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_3     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_3     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_3    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_3   : out std_logic;
    LMB_Read_Strobe_3   : out std_logic;
    LMB_Write_Strobe_3  : out std_logic;
    LMB_Ready_3         : in  std_logic;
    LMB_Wait_3          : in  std_logic;
    LMB_CE_3            : in  std_logic;
    LMB_UE_3            : in  std_logic;
    LMB_Byte_Enable_3   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_4     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_4     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_4    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_4   : out std_logic;
    LMB_Read_Strobe_4   : out std_logic;
    LMB_Write_Strobe_4  : out std_logic;
    LMB_Ready_4         : in  std_logic;
    LMB_Wait_4          : in  std_logic;
    LMB_CE_4            : in  std_logic;
    LMB_UE_4            : in  std_logic;
    LMB_Byte_Enable_4   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_5     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_5     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_5    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_5   : out std_logic;
    LMB_Read_Strobe_5   : out std_logic;
    LMB_Write_Strobe_5  : out std_logic;
    LMB_Ready_5         : in  std_logic;
    LMB_Wait_5          : in  std_logic;
    LMB_CE_5            : in  std_logic;
    LMB_UE_5            : in  std_logic;
    LMB_Byte_Enable_5   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_6     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_6     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_6    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_6   : out std_logic;
    LMB_Read_Strobe_6   : out std_logic;
    LMB_Write_Strobe_6  : out std_logic;
    LMB_Ready_6         : in  std_logic;
    LMB_Wait_6          : in  std_logic;
    LMB_CE_6            : in  std_logic;
    LMB_UE_6            : in  std_logic;
    LMB_Byte_Enable_6   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_7     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_7     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_7    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_7   : out std_logic;
    LMB_Read_Strobe_7   : out std_logic;
    LMB_Write_Strobe_7  : out std_logic;
    LMB_Ready_7         : in  std_logic;
    LMB_Wait_7          : in  std_logic;
    LMB_CE_7            : in  std_logic;
    LMB_UE_7            : in  std_logic;
    LMB_Byte_Enable_7   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_8     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_8     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_8    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_8   : out std_logic;
    LMB_Read_Strobe_8   : out std_logic;
    LMB_Write_Strobe_8  : out std_logic;
    LMB_Ready_8         : in  std_logic;
    LMB_Wait_8          : in  std_logic;
    LMB_CE_8            : in  std_logic;
    LMB_UE_8            : in  std_logic;
    LMB_Byte_Enable_8   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_9     : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_9     : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_9    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_9   : out std_logic;
    LMB_Read_Strobe_9   : out std_logic;
    LMB_Write_Strobe_9  : out std_logic;
    LMB_Ready_9         : in  std_logic;
    LMB_Wait_9          : in  std_logic;
    LMB_CE_9            : in  std_logic;
    LMB_UE_9            : in  std_logic;
    LMB_Byte_Enable_9   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_10    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_10    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_10   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_10  : out std_logic;
    LMB_Read_Strobe_10  : out std_logic;
    LMB_Write_Strobe_10 : out std_logic;
    LMB_Ready_10        : in  std_logic;
    LMB_Wait_10         : in  std_logic;
    LMB_CE_10           : in  std_logic;
    LMB_UE_10           : in  std_logic;
    LMB_Byte_Enable_10  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_11    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_11    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_11   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_11  : out std_logic;
    LMB_Read_Strobe_11  : out std_logic;
    LMB_Write_Strobe_11 : out std_logic;
    LMB_Ready_11        : in  std_logic;
    LMB_Wait_11         : in  std_logic;
    LMB_CE_11           : in  std_logic;
    LMB_UE_11           : in  std_logic;
    LMB_Byte_Enable_11  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_12    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_12    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_12   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_12  : out std_logic;
    LMB_Read_Strobe_12  : out std_logic;
    LMB_Write_Strobe_12 : out std_logic;
    LMB_Ready_12        : in  std_logic;
    LMB_Wait_12         : in  std_logic;
    LMB_CE_12           : in  std_logic;
    LMB_UE_12           : in  std_logic;
    LMB_Byte_Enable_12  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_13    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_13    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_13   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_13  : out std_logic;
    LMB_Read_Strobe_13  : out std_logic;
    LMB_Write_Strobe_13 : out std_logic;
    LMB_Ready_13        : in  std_logic;
    LMB_Wait_13         : in  std_logic;
    LMB_CE_13           : in  std_logic;
    LMB_UE_13           : in  std_logic;
    LMB_Byte_Enable_13  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_14    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_14    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_14   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_14  : out std_logic;
    LMB_Read_Strobe_14  : out std_logic;
    LMB_Write_Strobe_14 : out std_logic;
    LMB_Ready_14        : in  std_logic;
    LMB_Wait_14         : in  std_logic;
    LMB_CE_14           : in  std_logic;
    LMB_UE_14           : in  std_logic;
    LMB_Byte_Enable_14  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_15    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_15    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_15   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_15  : out std_logic;
    LMB_Read_Strobe_15  : out std_logic;
    LMB_Write_Strobe_15 : out std_logic;
    LMB_Ready_15        : in  std_logic;
    LMB_Wait_15         : in  std_logic;
    LMB_CE_15           : in  std_logic;
    LMB_UE_15           : in  std_logic;
    LMB_Byte_Enable_15  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_16    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_16    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_16   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_16  : out std_logic;
    LMB_Read_Strobe_16  : out std_logic;
    LMB_Write_Strobe_16 : out std_logic;
    LMB_Ready_16        : in  std_logic;
    LMB_Wait_16         : in  std_logic;
    LMB_CE_16           : in  std_logic;
    LMB_UE_16           : in  std_logic;
    LMB_Byte_Enable_16  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_17    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_17    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_17   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_17  : out std_logic;
    LMB_Read_Strobe_17  : out std_logic;
    LMB_Write_Strobe_17 : out std_logic;
    LMB_Ready_17        : in  std_logic;
    LMB_Wait_17         : in  std_logic;
    LMB_CE_17           : in  std_logic;
    LMB_UE_17           : in  std_logic;
    LMB_Byte_Enable_17  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_18    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_18    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_18   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_18  : out std_logic;
    LMB_Read_Strobe_18  : out std_logic;
    LMB_Write_Strobe_18 : out std_logic;
    LMB_Ready_18        : in  std_logic;
    LMB_Wait_18         : in  std_logic;
    LMB_CE_18           : in  std_logic;
    LMB_UE_18           : in  std_logic;
    LMB_Byte_Enable_18  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_19    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_19    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_19   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_19  : out std_logic;
    LMB_Read_Strobe_19  : out std_logic;
    LMB_Write_Strobe_19 : out std_logic;
    LMB_Ready_19        : in  std_logic;
    LMB_Wait_19         : in  std_logic;
    LMB_CE_19           : in  std_logic;
    LMB_UE_19           : in  std_logic;
    LMB_Byte_Enable_19  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_20    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_20    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_20   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_20  : out std_logic;
    LMB_Read_Strobe_20  : out std_logic;
    LMB_Write_Strobe_20 : out std_logic;
    LMB_Ready_20        : in  std_logic;
    LMB_Wait_20         : in  std_logic;
    LMB_CE_20           : in  std_logic;
    LMB_UE_20           : in  std_logic;
    LMB_Byte_Enable_20  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_21    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_21    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_21   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_21  : out std_logic;
    LMB_Read_Strobe_21  : out std_logic;
    LMB_Write_Strobe_21 : out std_logic;
    LMB_Ready_21        : in  std_logic;
    LMB_Wait_21         : in  std_logic;
    LMB_CE_21           : in  std_logic;
    LMB_UE_21           : in  std_logic;
    LMB_Byte_Enable_21  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_22    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_22    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_22   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_22  : out std_logic;
    LMB_Read_Strobe_22  : out std_logic;
    LMB_Write_Strobe_22 : out std_logic;
    LMB_Ready_22        : in  std_logic;
    LMB_Wait_22         : in  std_logic;
    LMB_CE_22           : in  std_logic;
    LMB_UE_22           : in  std_logic;
    LMB_Byte_Enable_22  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_23    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_23    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_23   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_23  : out std_logic;
    LMB_Read_Strobe_23  : out std_logic;
    LMB_Write_Strobe_23 : out std_logic;
    LMB_Ready_23        : in  std_logic;
    LMB_Wait_23         : in  std_logic;
    LMB_CE_23           : in  std_logic;
    LMB_UE_23           : in  std_logic;
    LMB_Byte_Enable_23  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_24    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_24    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_24   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_24  : out std_logic;
    LMB_Read_Strobe_24  : out std_logic;
    LMB_Write_Strobe_24 : out std_logic;
    LMB_Ready_24        : in  std_logic;
    LMB_Wait_24         : in  std_logic;
    LMB_CE_24           : in  std_logic;
    LMB_UE_24           : in  std_logic;
    LMB_Byte_Enable_24  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_25    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_25    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_25   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_25  : out std_logic;
    LMB_Read_Strobe_25  : out std_logic;
    LMB_Write_Strobe_25 : out std_logic;
    LMB_Ready_25        : in  std_logic;
    LMB_Wait_25         : in  std_logic;
    LMB_CE_25           : in  std_logic;
    LMB_UE_25           : in  std_logic;
    LMB_Byte_Enable_25  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_26    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_26    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_26   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_26  : out std_logic;
    LMB_Read_Strobe_26  : out std_logic;
    LMB_Write_Strobe_26 : out std_logic;
    LMB_Ready_26        : in  std_logic;
    LMB_Wait_26         : in  std_logic;
    LMB_CE_26           : in  std_logic;
    LMB_UE_26           : in  std_logic;
    LMB_Byte_Enable_26  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_27    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_27    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_27   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_27  : out std_logic;
    LMB_Read_Strobe_27  : out std_logic;
    LMB_Write_Strobe_27 : out std_logic;
    LMB_Ready_27        : in  std_logic;
    LMB_Wait_27         : in  std_logic;
    LMB_CE_27           : in  std_logic;
    LMB_UE_27           : in  std_logic;
    LMB_Byte_Enable_27  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_28    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_28    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_28   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_28  : out std_logic;
    LMB_Read_Strobe_28  : out std_logic;
    LMB_Write_Strobe_28 : out std_logic;
    LMB_Ready_28        : in  std_logic;
    LMB_Wait_28         : in  std_logic;
    LMB_CE_28           : in  std_logic;
    LMB_UE_28           : in  std_logic;
    LMB_Byte_Enable_28  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_29    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_29    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_29   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_29  : out std_logic;
    LMB_Read_Strobe_29  : out std_logic;
    LMB_Write_Strobe_29 : out std_logic;
    LMB_Ready_29        : in  std_logic;
    LMB_Wait_29         : in  std_logic;
    LMB_CE_29           : in  std_logic;
    LMB_UE_29           : in  std_logic;
    LMB_Byte_Enable_29  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_30    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_30    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_30   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_30  : out std_logic;
    LMB_Read_Strobe_30  : out std_logic;
    LMB_Write_Strobe_30 : out std_logic;
    LMB_Ready_30        : in  std_logic;
    LMB_Wait_30         : in  std_logic;
    LMB_CE_30           : in  std_logic;
    LMB_UE_30           : in  std_logic;
    LMB_Byte_Enable_30  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
    LMB_Data_Addr_31    : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Read_31    : in  std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Data_Write_31   : out std_logic_vector(0 to C_DATA_SIZE-1);
    LMB_Addr_Strobe_31  : out std_logic;
    LMB_Read_Strobe_31  : out std_logic;
    LMB_Write_Strobe_31 : out std_logic;
    LMB_Ready_31        : in  std_logic;
    LMB_Wait_31         : in  std_logic;
    LMB_CE_31           : in  std_logic;
    LMB_UE_31           : in  std_logic;
    LMB_Byte_Enable_31  : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);

    -- External Trace AXI Stream output
    M_AXIS_TDATA       : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
    M_AXIS_TID         : out std_logic_vector(C_M_AXIS_ID_WIDTH-1 downto 0);
    M_AXIS_TREADY      : in  std_logic;
    M_AXIS_TVALID      : out std_logic;

    -- External Trace output
    TRACE_CLK_OUT      : out std_logic;
    TRACE_CLK          : in  std_logic;
    TRACE_CTL          : out std_logic;
    TRACE_DATA         : out std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0);

    -- MicroBlaze Debug Signals
    Dbg_Disable_0      : out std_logic;
    Dbg_Clk_0          : out std_logic;
    Dbg_TDI_0          : out std_logic;
    Dbg_TDO_0          : in  std_logic;
    Dbg_Reg_En_0       : out std_logic_vector(0 to 7);
    Dbg_Capture_0      : out std_logic;
    Dbg_Shift_0        : out std_logic;
    Dbg_Update_0       : out std_logic;
    Dbg_Rst_0          : out std_logic;
    Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_0 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_0        : out std_logic;
    Dbg_TrData_0       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_0      : out std_logic;
    Dbg_TrValid_0      : in  std_logic;
    Dbg_AWADDR_0       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_0      : out std_logic;
    Dbg_AWREADY_0      : in  std_logic;
    Dbg_WDATA_0        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_0       : out std_logic;
    Dbg_WREADY_0       : in  std_logic;
    Dbg_BRESP_0        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_0       : in  std_logic;
    Dbg_BREADY_0       : out std_logic;
    Dbg_ARADDR_0       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_0      : out std_logic;
    Dbg_ARREADY_0      : in  std_logic;
    Dbg_RDATA_0        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_0        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_0       : in  std_logic;
    Dbg_RREADY_0       : out std_logic;

    Dbg_Disable_1      : out std_logic;
    Dbg_Clk_1          : out std_logic;
    Dbg_TDI_1          : out std_logic;
    Dbg_TDO_1          : in  std_logic;
    Dbg_Reg_En_1       : out std_logic_vector(0 to 7);
    Dbg_Capture_1      : out std_logic;
    Dbg_Shift_1        : out std_logic;
    Dbg_Update_1       : out std_logic;
    Dbg_Rst_1          : out std_logic;
    Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_1 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_1        : out std_logic;
    Dbg_TrData_1       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_1      : out std_logic;
    Dbg_TrValid_1      : in  std_logic;
    Dbg_AWADDR_1       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_1      : out std_logic;
    Dbg_AWREADY_1      : in  std_logic;
    Dbg_WDATA_1        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_1       : out std_logic;
    Dbg_WREADY_1       : in  std_logic;
    Dbg_BRESP_1        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_1       : in  std_logic;
    Dbg_BREADY_1       : out std_logic;
    Dbg_ARADDR_1       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_1      : out std_logic;
    Dbg_ARREADY_1      : in  std_logic;
    Dbg_RDATA_1        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_1        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_1       : in  std_logic;
    Dbg_RREADY_1       : out std_logic;

    Dbg_Disable_2      : out std_logic;
    Dbg_Clk_2          : out std_logic;
    Dbg_TDI_2          : out std_logic;
    Dbg_TDO_2          : in  std_logic;
    Dbg_Reg_En_2       : out std_logic_vector(0 to 7);
    Dbg_Capture_2      : out std_logic;
    Dbg_Shift_2        : out std_logic;
    Dbg_Update_2       : out std_logic;
    Dbg_Rst_2          : out std_logic;
    Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_2 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_2        : out std_logic;
    Dbg_TrData_2       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_2      : out std_logic;
    Dbg_TrValid_2      : in  std_logic;
    Dbg_AWADDR_2       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_2      : out std_logic;
    Dbg_AWREADY_2      : in  std_logic;
    Dbg_WDATA_2        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_2       : out std_logic;
    Dbg_WREADY_2       : in  std_logic;
    Dbg_BRESP_2        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_2       : in  std_logic;
    Dbg_BREADY_2       : out std_logic;
    Dbg_ARADDR_2       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_2      : out std_logic;
    Dbg_ARREADY_2      : in  std_logic;
    Dbg_RDATA_2        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_2        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_2       : in  std_logic;
    Dbg_RREADY_2       : out std_logic;

    Dbg_Disable_3      : out std_logic;
    Dbg_Clk_3          : out std_logic;
    Dbg_TDI_3          : out std_logic;
    Dbg_TDO_3          : in  std_logic;
    Dbg_Reg_En_3       : out std_logic_vector(0 to 7);
    Dbg_Capture_3      : out std_logic;
    Dbg_Shift_3        : out std_logic;
    Dbg_Update_3       : out std_logic;
    Dbg_Rst_3          : out std_logic;
    Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_3 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_3        : out std_logic;
    Dbg_TrData_3       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_3      : out std_logic;
    Dbg_TrValid_3      : in  std_logic;
    Dbg_AWADDR_3       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_3      : out std_logic;
    Dbg_AWREADY_3      : in  std_logic;
    Dbg_WDATA_3        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_3       : out std_logic;
    Dbg_WREADY_3       : in  std_logic;
    Dbg_BRESP_3        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_3       : in  std_logic;
    Dbg_BREADY_3       : out std_logic;
    Dbg_ARADDR_3       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_3      : out std_logic;
    Dbg_ARREADY_3      : in  std_logic;
    Dbg_RDATA_3        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_3        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_3       : in  std_logic;
    Dbg_RREADY_3       : out std_logic;

    Dbg_Disable_4      : out std_logic;
    Dbg_Clk_4          : out std_logic;
    Dbg_TDI_4          : out std_logic;
    Dbg_TDO_4          : in  std_logic;
    Dbg_Reg_En_4       : out std_logic_vector(0 to 7);
    Dbg_Capture_4      : out std_logic;
    Dbg_Shift_4        : out std_logic;
    Dbg_Update_4       : out std_logic;
    Dbg_Rst_4          : out std_logic;
    Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_4 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_4        : out std_logic;
    Dbg_TrData_4       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_4      : out std_logic;
    Dbg_TrValid_4      : in  std_logic;
    Dbg_AWADDR_4       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_4      : out std_logic;
    Dbg_AWREADY_4      : in  std_logic;
    Dbg_WDATA_4        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_4       : out std_logic;
    Dbg_WREADY_4       : in  std_logic;
    Dbg_BRESP_4        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_4       : in  std_logic;
    Dbg_BREADY_4       : out std_logic;
    Dbg_ARADDR_4       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_4      : out std_logic;
    Dbg_ARREADY_4      : in  std_logic;
    Dbg_RDATA_4        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_4        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_4       : in  std_logic;
    Dbg_RREADY_4       : out std_logic;

    Dbg_Disable_5      : out std_logic;
    Dbg_Clk_5          : out std_logic;
    Dbg_TDI_5          : out std_logic;
    Dbg_TDO_5          : in  std_logic;
    Dbg_Reg_En_5       : out std_logic_vector(0 to 7);
    Dbg_Capture_5      : out std_logic;
    Dbg_Shift_5        : out std_logic;
    Dbg_Update_5       : out std_logic;
    Dbg_Rst_5          : out std_logic;
    Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_5 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_5        : out std_logic;
    Dbg_TrData_5       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_5      : out std_logic;
    Dbg_TrValid_5      : in  std_logic;
    Dbg_AWADDR_5       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_5      : out std_logic;
    Dbg_AWREADY_5      : in  std_logic;
    Dbg_WDATA_5        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_5       : out std_logic;
    Dbg_WREADY_5       : in  std_logic;
    Dbg_BRESP_5        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_5       : in  std_logic;
    Dbg_BREADY_5       : out std_logic;
    Dbg_ARADDR_5       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_5      : out std_logic;
    Dbg_ARREADY_5      : in  std_logic;
    Dbg_RDATA_5        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_5        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_5       : in  std_logic;
    Dbg_RREADY_5       : out std_logic;

    Dbg_Disable_6      : out std_logic;
    Dbg_Clk_6          : out std_logic;
    Dbg_TDI_6          : out std_logic;
    Dbg_TDO_6          : in  std_logic;
    Dbg_Reg_En_6       : out std_logic_vector(0 to 7);
    Dbg_Capture_6      : out std_logic;
    Dbg_Shift_6        : out std_logic;
    Dbg_Update_6       : out std_logic;
    Dbg_Rst_6          : out std_logic;
    Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_6 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_6        : out std_logic;
    Dbg_TrData_6       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_6      : out std_logic;
    Dbg_TrValid_6      : in  std_logic;
    Dbg_AWADDR_6       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_6      : out std_logic;
    Dbg_AWREADY_6      : in  std_logic;
    Dbg_WDATA_6        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_6       : out std_logic;
    Dbg_WREADY_6       : in  std_logic;
    Dbg_BRESP_6        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_6       : in  std_logic;
    Dbg_BREADY_6       : out std_logic;
    Dbg_ARADDR_6       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_6      : out std_logic;
    Dbg_ARREADY_6      : in  std_logic;
    Dbg_RDATA_6        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_6        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_6       : in  std_logic;
    Dbg_RREADY_6       : out std_logic;

    Dbg_Disable_7      : out std_logic;
    Dbg_Clk_7          : out std_logic;
    Dbg_TDI_7          : out std_logic;
    Dbg_TDO_7          : in  std_logic;
    Dbg_Reg_En_7       : out std_logic_vector(0 to 7);
    Dbg_Capture_7      : out std_logic;
    Dbg_Shift_7        : out std_logic;
    Dbg_Update_7       : out std_logic;
    Dbg_Rst_7          : out std_logic;
    Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_7 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_7        : out std_logic;
    Dbg_TrData_7       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_7      : out std_logic;
    Dbg_TrValid_7      : in  std_logic;
    Dbg_AWADDR_7       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_7      : out std_logic;
    Dbg_AWREADY_7      : in  std_logic;
    Dbg_WDATA_7        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_7       : out std_logic;
    Dbg_WREADY_7       : in  std_logic;
    Dbg_BRESP_7        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_7       : in  std_logic;
    Dbg_BREADY_7       : out std_logic;
    Dbg_ARADDR_7       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_7      : out std_logic;
    Dbg_ARREADY_7      : in  std_logic;
    Dbg_RDATA_7        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_7        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_7       : in  std_logic;
    Dbg_RREADY_7       : out std_logic;

    Dbg_Disable_8      : out std_logic;
    Dbg_Clk_8          : out std_logic;
    Dbg_TDI_8          : out std_logic;
    Dbg_TDO_8          : in  std_logic;
    Dbg_Reg_En_8       : out std_logic_vector(0 to 7);
    Dbg_Capture_8      : out std_logic;
    Dbg_Shift_8        : out std_logic;
    Dbg_Update_8       : out std_logic;
    Dbg_Rst_8          : out std_logic;
    Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_8 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_8        : out std_logic;
    Dbg_TrData_8       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_8      : out std_logic;
    Dbg_TrValid_8      : in  std_logic;
    Dbg_AWADDR_8       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_8      : out std_logic;
    Dbg_AWREADY_8      : in  std_logic;
    Dbg_WDATA_8        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_8       : out std_logic;
    Dbg_WREADY_8       : in  std_logic;
    Dbg_BRESP_8        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_8       : in  std_logic;
    Dbg_BREADY_8       : out std_logic;
    Dbg_ARADDR_8       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_8      : out std_logic;
    Dbg_ARREADY_8      : in  std_logic;
    Dbg_RDATA_8        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_8        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_8       : in  std_logic;
    Dbg_RREADY_8       : out std_logic;

    Dbg_Disable_9      : out std_logic;
    Dbg_Clk_9          : out std_logic;
    Dbg_TDI_9          : out std_logic;
    Dbg_TDO_9          : in  std_logic;
    Dbg_Reg_En_9       : out std_logic_vector(0 to 7);
    Dbg_Capture_9      : out std_logic;
    Dbg_Shift_9        : out std_logic;
    Dbg_Update_9       : out std_logic;
    Dbg_Rst_9          : out std_logic;
    Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_9 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_9        : out std_logic;
    Dbg_TrData_9       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_9      : out std_logic;
    Dbg_TrValid_9      : in  std_logic;
    Dbg_AWADDR_9       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_9      : out std_logic;
    Dbg_AWREADY_9      : in  std_logic;
    Dbg_WDATA_9        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_9       : out std_logic;
    Dbg_WREADY_9       : in  std_logic;
    Dbg_BRESP_9        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_9       : in  std_logic;
    Dbg_BREADY_9       : out std_logic;
    Dbg_ARADDR_9       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_9      : out std_logic;
    Dbg_ARREADY_9      : in  std_logic;
    Dbg_RDATA_9        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_9        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_9       : in  std_logic;
    Dbg_RREADY_9       : out std_logic;

    Dbg_Disable_10      : out std_logic;
    Dbg_Clk_10          : out std_logic;
    Dbg_TDI_10          : out std_logic;
    Dbg_TDO_10          : in  std_logic;
    Dbg_Reg_En_10       : out std_logic_vector(0 to 7);
    Dbg_Capture_10      : out std_logic;
    Dbg_Shift_10        : out std_logic;
    Dbg_Update_10       : out std_logic;
    Dbg_Rst_10          : out std_logic;
    Dbg_Trig_In_10      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_10  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_10     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_10        : out std_logic;
    Dbg_TrData_10       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_10      : out std_logic;
    Dbg_TrValid_10      : in  std_logic;
    Dbg_AWADDR_10       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_10      : out std_logic;
    Dbg_AWREADY_10      : in  std_logic;
    Dbg_WDATA_10        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_10       : out std_logic;
    Dbg_WREADY_10       : in  std_logic;
    Dbg_BRESP_10        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_10       : in  std_logic;
    Dbg_BREADY_10       : out std_logic;
    Dbg_ARADDR_10       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_10      : out std_logic;
    Dbg_ARREADY_10      : in  std_logic;
    Dbg_RDATA_10        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_10        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_10       : in  std_logic;
    Dbg_RREADY_10       : out std_logic;

    Dbg_Disable_11      : out std_logic;
    Dbg_Clk_11          : out std_logic;
    Dbg_TDI_11          : out std_logic;
    Dbg_TDO_11          : in  std_logic;
    Dbg_Reg_En_11       : out std_logic_vector(0 to 7);
    Dbg_Capture_11      : out std_logic;
    Dbg_Shift_11        : out std_logic;
    Dbg_Update_11       : out std_logic;
    Dbg_Rst_11          : out std_logic;
    Dbg_Trig_In_11      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_11  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_11     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_11        : out std_logic;
    Dbg_TrData_11       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_11      : out std_logic;
    Dbg_TrValid_11      : in  std_logic;
    Dbg_AWADDR_11       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_11      : out std_logic;
    Dbg_AWREADY_11      : in  std_logic;
    Dbg_WDATA_11        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_11       : out std_logic;
    Dbg_WREADY_11       : in  std_logic;
    Dbg_BRESP_11        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_11       : in  std_logic;
    Dbg_BREADY_11       : out std_logic;
    Dbg_ARADDR_11       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_11      : out std_logic;
    Dbg_ARREADY_11      : in  std_logic;
    Dbg_RDATA_11        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_11        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_11       : in  std_logic;
    Dbg_RREADY_11       : out std_logic;

    Dbg_Disable_12      : out std_logic;
    Dbg_Clk_12          : out std_logic;
    Dbg_TDI_12          : out std_logic;
    Dbg_TDO_12          : in  std_logic;
    Dbg_Reg_En_12       : out std_logic_vector(0 to 7);
    Dbg_Capture_12      : out std_logic;
    Dbg_Shift_12        : out std_logic;
    Dbg_Update_12       : out std_logic;
    Dbg_Rst_12          : out std_logic;
    Dbg_Trig_In_12      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_12  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_12     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_12        : out std_logic;
    Dbg_TrData_12       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_12      : out std_logic;
    Dbg_TrValid_12      : in  std_logic;
    Dbg_AWADDR_12       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_12      : out std_logic;
    Dbg_AWREADY_12      : in  std_logic;
    Dbg_WDATA_12        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_12       : out std_logic;
    Dbg_WREADY_12       : in  std_logic;
    Dbg_BRESP_12        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_12       : in  std_logic;
    Dbg_BREADY_12       : out std_logic;
    Dbg_ARADDR_12       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_12      : out std_logic;
    Dbg_ARREADY_12      : in  std_logic;
    Dbg_RDATA_12        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_12        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_12       : in  std_logic;
    Dbg_RREADY_12       : out std_logic;

    Dbg_Disable_13      : out std_logic;
    Dbg_Clk_13          : out std_logic;
    Dbg_TDI_13          : out std_logic;
    Dbg_TDO_13          : in  std_logic;
    Dbg_Reg_En_13       : out std_logic_vector(0 to 7);
    Dbg_Capture_13      : out std_logic;
    Dbg_Shift_13        : out std_logic;
    Dbg_Update_13       : out std_logic;
    Dbg_Rst_13          : out std_logic;
    Dbg_Trig_In_13      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_13  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_13     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_13        : out std_logic;
    Dbg_TrData_13       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_13      : out std_logic;
    Dbg_TrValid_13      : in  std_logic;
    Dbg_AWADDR_13       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_13      : out std_logic;
    Dbg_AWREADY_13      : in  std_logic;
    Dbg_WDATA_13        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_13       : out std_logic;
    Dbg_WREADY_13       : in  std_logic;
    Dbg_BRESP_13        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_13       : in  std_logic;
    Dbg_BREADY_13       : out std_logic;
    Dbg_ARADDR_13       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_13      : out std_logic;
    Dbg_ARREADY_13      : in  std_logic;
    Dbg_RDATA_13        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_13        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_13       : in  std_logic;
    Dbg_RREADY_13       : out std_logic;

    Dbg_Disable_14      : out std_logic;
    Dbg_Clk_14          : out std_logic;
    Dbg_TDI_14          : out std_logic;
    Dbg_TDO_14          : in  std_logic;
    Dbg_Reg_En_14       : out std_logic_vector(0 to 7);
    Dbg_Capture_14      : out std_logic;
    Dbg_Shift_14        : out std_logic;
    Dbg_Update_14       : out std_logic;
    Dbg_Rst_14          : out std_logic;
    Dbg_Trig_In_14      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_14  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_14     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_14        : out std_logic;
    Dbg_TrData_14       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_14      : out std_logic;
    Dbg_TrValid_14      : in  std_logic;
    Dbg_AWADDR_14       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_14      : out std_logic;
    Dbg_AWREADY_14      : in  std_logic;
    Dbg_WDATA_14        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_14       : out std_logic;
    Dbg_WREADY_14       : in  std_logic;
    Dbg_BRESP_14        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_14       : in  std_logic;
    Dbg_BREADY_14       : out std_logic;
    Dbg_ARADDR_14       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_14      : out std_logic;
    Dbg_ARREADY_14      : in  std_logic;
    Dbg_RDATA_14        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_14        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_14       : in  std_logic;
    Dbg_RREADY_14       : out std_logic;

    Dbg_Disable_15      : out std_logic;
    Dbg_Clk_15          : out std_logic;
    Dbg_TDI_15          : out std_logic;
    Dbg_TDO_15          : in  std_logic;
    Dbg_Reg_En_15       : out std_logic_vector(0 to 7);
    Dbg_Capture_15      : out std_logic;
    Dbg_Shift_15        : out std_logic;
    Dbg_Update_15       : out std_logic;
    Dbg_Rst_15          : out std_logic;
    Dbg_Trig_In_15      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_15  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_15     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_15        : out std_logic;
    Dbg_TrData_15       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_15      : out std_logic;
    Dbg_TrValid_15      : in  std_logic;
    Dbg_AWADDR_15       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_15      : out std_logic;
    Dbg_AWREADY_15      : in  std_logic;
    Dbg_WDATA_15        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_15       : out std_logic;
    Dbg_WREADY_15       : in  std_logic;
    Dbg_BRESP_15        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_15       : in  std_logic;
    Dbg_BREADY_15       : out std_logic;
    Dbg_ARADDR_15       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_15      : out std_logic;
    Dbg_ARREADY_15      : in  std_logic;
    Dbg_RDATA_15        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_15        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_15       : in  std_logic;
    Dbg_RREADY_15       : out std_logic;

    Dbg_Disable_16      : out std_logic;
    Dbg_Clk_16          : out std_logic;
    Dbg_TDI_16          : out std_logic;
    Dbg_TDO_16          : in  std_logic;
    Dbg_Reg_En_16       : out std_logic_vector(0 to 7);
    Dbg_Capture_16      : out std_logic;
    Dbg_Shift_16        : out std_logic;
    Dbg_Update_16       : out std_logic;
    Dbg_Rst_16          : out std_logic;
    Dbg_Trig_In_16      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_16  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_16     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_16        : out std_logic;
    Dbg_TrData_16       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_16      : out std_logic;
    Dbg_TrValid_16      : in  std_logic;
    Dbg_AWADDR_16       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_16      : out std_logic;
    Dbg_AWREADY_16      : in  std_logic;
    Dbg_WDATA_16        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_16       : out std_logic;
    Dbg_WREADY_16       : in  std_logic;
    Dbg_BRESP_16        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_16       : in  std_logic;
    Dbg_BREADY_16       : out std_logic;
    Dbg_ARADDR_16       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_16      : out std_logic;
    Dbg_ARREADY_16      : in  std_logic;
    Dbg_RDATA_16        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_16        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_16       : in  std_logic;
    Dbg_RREADY_16       : out std_logic;

    Dbg_Disable_17      : out std_logic;
    Dbg_Clk_17          : out std_logic;
    Dbg_TDI_17          : out std_logic;
    Dbg_TDO_17          : in  std_logic;
    Dbg_Reg_En_17       : out std_logic_vector(0 to 7);
    Dbg_Capture_17      : out std_logic;
    Dbg_Shift_17        : out std_logic;
    Dbg_Update_17       : out std_logic;
    Dbg_Rst_17          : out std_logic;
    Dbg_Trig_In_17      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_17  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_17     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_17        : out std_logic;
    Dbg_TrData_17       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_17      : out std_logic;
    Dbg_TrValid_17      : in  std_logic;
    Dbg_AWADDR_17       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_17      : out std_logic;
    Dbg_AWREADY_17      : in  std_logic;
    Dbg_WDATA_17        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_17       : out std_logic;
    Dbg_WREADY_17       : in  std_logic;
    Dbg_BRESP_17        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_17       : in  std_logic;
    Dbg_BREADY_17       : out std_logic;
    Dbg_ARADDR_17       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_17      : out std_logic;
    Dbg_ARREADY_17      : in  std_logic;
    Dbg_RDATA_17        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_17        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_17       : in  std_logic;
    Dbg_RREADY_17       : out std_logic;

    Dbg_Disable_18      : out std_logic;
    Dbg_Clk_18          : out std_logic;
    Dbg_TDI_18          : out std_logic;
    Dbg_TDO_18          : in  std_logic;
    Dbg_Reg_En_18       : out std_logic_vector(0 to 7);
    Dbg_Capture_18      : out std_logic;
    Dbg_Shift_18        : out std_logic;
    Dbg_Update_18       : out std_logic;
    Dbg_Rst_18          : out std_logic;
    Dbg_Trig_In_18      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_18  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_18     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_18        : out std_logic;
    Dbg_TrData_18       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_18      : out std_logic;
    Dbg_TrValid_18      : in  std_logic;
    Dbg_AWADDR_18       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_18      : out std_logic;
    Dbg_AWREADY_18      : in  std_logic;
    Dbg_WDATA_18        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_18       : out std_logic;
    Dbg_WREADY_18       : in  std_logic;
    Dbg_BRESP_18        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_18       : in  std_logic;
    Dbg_BREADY_18       : out std_logic;
    Dbg_ARADDR_18       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_18      : out std_logic;
    Dbg_ARREADY_18      : in  std_logic;
    Dbg_RDATA_18        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_18        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_18       : in  std_logic;
    Dbg_RREADY_18       : out std_logic;

    Dbg_Disable_19      : out std_logic;
    Dbg_Clk_19          : out std_logic;
    Dbg_TDI_19          : out std_logic;
    Dbg_TDO_19          : in  std_logic;
    Dbg_Reg_En_19       : out std_logic_vector(0 to 7);
    Dbg_Capture_19      : out std_logic;
    Dbg_Shift_19        : out std_logic;
    Dbg_Update_19       : out std_logic;
    Dbg_Rst_19          : out std_logic;
    Dbg_Trig_In_19      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_19  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_19     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_19        : out std_logic;
    Dbg_TrData_19       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_19      : out std_logic;
    Dbg_TrValid_19      : in  std_logic;
    Dbg_AWADDR_19       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_19      : out std_logic;
    Dbg_AWREADY_19      : in  std_logic;
    Dbg_WDATA_19        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_19       : out std_logic;
    Dbg_WREADY_19       : in  std_logic;
    Dbg_BRESP_19        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_19       : in  std_logic;
    Dbg_BREADY_19       : out std_logic;
    Dbg_ARADDR_19       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_19      : out std_logic;
    Dbg_ARREADY_19      : in  std_logic;
    Dbg_RDATA_19        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_19        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_19       : in  std_logic;
    Dbg_RREADY_19       : out std_logic;

    Dbg_Disable_20      : out std_logic;
    Dbg_Clk_20          : out std_logic;
    Dbg_TDI_20          : out std_logic;
    Dbg_TDO_20          : in  std_logic;
    Dbg_Reg_En_20       : out std_logic_vector(0 to 7);
    Dbg_Capture_20      : out std_logic;
    Dbg_Shift_20        : out std_logic;
    Dbg_Update_20       : out std_logic;
    Dbg_Rst_20          : out std_logic;
    Dbg_Trig_In_20      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_20  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_20     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_20        : out std_logic;
    Dbg_TrData_20       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_20      : out std_logic;
    Dbg_TrValid_20      : in  std_logic;
    Dbg_AWADDR_20       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_20      : out std_logic;
    Dbg_AWREADY_20      : in  std_logic;
    Dbg_WDATA_20        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_20       : out std_logic;
    Dbg_WREADY_20       : in  std_logic;
    Dbg_BRESP_20        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_20       : in  std_logic;
    Dbg_BREADY_20       : out std_logic;
    Dbg_ARADDR_20       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_20      : out std_logic;
    Dbg_ARREADY_20      : in  std_logic;
    Dbg_RDATA_20        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_20        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_20       : in  std_logic;
    Dbg_RREADY_20       : out std_logic;

    Dbg_Disable_21      : out std_logic;
    Dbg_Clk_21          : out std_logic;
    Dbg_TDI_21          : out std_logic;
    Dbg_TDO_21          : in  std_logic;
    Dbg_Reg_En_21       : out std_logic_vector(0 to 7);
    Dbg_Capture_21      : out std_logic;
    Dbg_Shift_21        : out std_logic;
    Dbg_Update_21       : out std_logic;
    Dbg_Rst_21          : out std_logic;
    Dbg_Trig_In_21      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_21  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_21     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_21        : out std_logic;
    Dbg_TrData_21       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_21      : out std_logic;
    Dbg_TrValid_21      : in  std_logic;
    Dbg_AWADDR_21       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_21      : out std_logic;
    Dbg_AWREADY_21      : in  std_logic;
    Dbg_WDATA_21        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_21       : out std_logic;
    Dbg_WREADY_21       : in  std_logic;
    Dbg_BRESP_21        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_21       : in  std_logic;
    Dbg_BREADY_21       : out std_logic;
    Dbg_ARADDR_21       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_21      : out std_logic;
    Dbg_ARREADY_21      : in  std_logic;
    Dbg_RDATA_21        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_21        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_21       : in  std_logic;
    Dbg_RREADY_21       : out std_logic;

    Dbg_Disable_22      : out std_logic;
    Dbg_Clk_22          : out std_logic;
    Dbg_TDI_22          : out std_logic;
    Dbg_TDO_22          : in  std_logic;
    Dbg_Reg_En_22       : out std_logic_vector(0 to 7);
    Dbg_Capture_22      : out std_logic;
    Dbg_Shift_22        : out std_logic;
    Dbg_Update_22       : out std_logic;
    Dbg_Rst_22          : out std_logic;
    Dbg_Trig_In_22      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_22  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_22     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_22        : out std_logic;
    Dbg_TrData_22       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_22      : out std_logic;
    Dbg_TrValid_22      : in  std_logic;
    Dbg_AWADDR_22       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_22      : out std_logic;
    Dbg_AWREADY_22      : in  std_logic;
    Dbg_WDATA_22        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_22       : out std_logic;
    Dbg_WREADY_22       : in  std_logic;
    Dbg_BRESP_22        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_22       : in  std_logic;
    Dbg_BREADY_22       : out std_logic;
    Dbg_ARADDR_22       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_22      : out std_logic;
    Dbg_ARREADY_22      : in  std_logic;
    Dbg_RDATA_22        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_22        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_22       : in  std_logic;
    Dbg_RREADY_22       : out std_logic;

    Dbg_Disable_23      : out std_logic;
    Dbg_Clk_23          : out std_logic;
    Dbg_TDI_23          : out std_logic;
    Dbg_TDO_23          : in  std_logic;
    Dbg_Reg_En_23       : out std_logic_vector(0 to 7);
    Dbg_Capture_23      : out std_logic;
    Dbg_Shift_23        : out std_logic;
    Dbg_Update_23       : out std_logic;
    Dbg_Rst_23          : out std_logic;
    Dbg_Trig_In_23      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_23  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_23     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_23        : out std_logic;
    Dbg_TrData_23       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_23      : out std_logic;
    Dbg_TrValid_23      : in  std_logic;
    Dbg_AWADDR_23       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_23      : out std_logic;
    Dbg_AWREADY_23      : in  std_logic;
    Dbg_WDATA_23        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_23       : out std_logic;
    Dbg_WREADY_23       : in  std_logic;
    Dbg_BRESP_23        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_23       : in  std_logic;
    Dbg_BREADY_23       : out std_logic;
    Dbg_ARADDR_23       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_23      : out std_logic;
    Dbg_ARREADY_23      : in  std_logic;
    Dbg_RDATA_23        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_23        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_23       : in  std_logic;
    Dbg_RREADY_23       : out std_logic;

    Dbg_Disable_24      : out std_logic;
    Dbg_Clk_24          : out std_logic;
    Dbg_TDI_24          : out std_logic;
    Dbg_TDO_24          : in  std_logic;
    Dbg_Reg_En_24       : out std_logic_vector(0 to 7);
    Dbg_Capture_24      : out std_logic;
    Dbg_Shift_24        : out std_logic;
    Dbg_Update_24       : out std_logic;
    Dbg_Rst_24          : out std_logic;
    Dbg_Trig_In_24      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_24  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_24     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_24        : out std_logic;
    Dbg_TrData_24       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_24      : out std_logic;
    Dbg_TrValid_24      : in  std_logic;
    Dbg_AWADDR_24       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_24      : out std_logic;
    Dbg_AWREADY_24      : in  std_logic;
    Dbg_WDATA_24        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_24       : out std_logic;
    Dbg_WREADY_24       : in  std_logic;
    Dbg_BRESP_24        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_24       : in  std_logic;
    Dbg_BREADY_24       : out std_logic;
    Dbg_ARADDR_24       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_24      : out std_logic;
    Dbg_ARREADY_24      : in  std_logic;
    Dbg_RDATA_24        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_24        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_24       : in  std_logic;
    Dbg_RREADY_24       : out std_logic;

    Dbg_Disable_25      : out std_logic;
    Dbg_Clk_25          : out std_logic;
    Dbg_TDI_25          : out std_logic;
    Dbg_TDO_25          : in  std_logic;
    Dbg_Reg_En_25       : out std_logic_vector(0 to 7);
    Dbg_Capture_25      : out std_logic;
    Dbg_Shift_25        : out std_logic;
    Dbg_Update_25       : out std_logic;
    Dbg_Rst_25          : out std_logic;
    Dbg_Trig_In_25      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_25  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_25     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_25        : out std_logic;
    Dbg_TrData_25       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_25      : out std_logic;
    Dbg_TrValid_25      : in  std_logic;
    Dbg_AWADDR_25       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_25      : out std_logic;
    Dbg_AWREADY_25      : in  std_logic;
    Dbg_WDATA_25        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_25       : out std_logic;
    Dbg_WREADY_25       : in  std_logic;
    Dbg_BRESP_25        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_25       : in  std_logic;
    Dbg_BREADY_25       : out std_logic;
    Dbg_ARADDR_25       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_25      : out std_logic;
    Dbg_ARREADY_25      : in  std_logic;
    Dbg_RDATA_25        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_25        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_25       : in  std_logic;
    Dbg_RREADY_25       : out std_logic;

    Dbg_Disable_26      : out std_logic;
    Dbg_Clk_26          : out std_logic;
    Dbg_TDI_26          : out std_logic;
    Dbg_TDO_26          : in  std_logic;
    Dbg_Reg_En_26       : out std_logic_vector(0 to 7);
    Dbg_Capture_26      : out std_logic;
    Dbg_Shift_26        : out std_logic;
    Dbg_Update_26       : out std_logic;
    Dbg_Rst_26          : out std_logic;
    Dbg_Trig_In_26      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_26  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_26     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_26        : out std_logic;
    Dbg_TrData_26       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_26      : out std_logic;
    Dbg_TrValid_26      : in  std_logic;
    Dbg_AWADDR_26       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_26      : out std_logic;
    Dbg_AWREADY_26      : in  std_logic;
    Dbg_WDATA_26        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_26       : out std_logic;
    Dbg_WREADY_26       : in  std_logic;
    Dbg_BRESP_26        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_26       : in  std_logic;
    Dbg_BREADY_26       : out std_logic;
    Dbg_ARADDR_26       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_26      : out std_logic;
    Dbg_ARREADY_26      : in  std_logic;
    Dbg_RDATA_26        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_26        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_26       : in  std_logic;
    Dbg_RREADY_26       : out std_logic;

    Dbg_Disable_27      : out std_logic;
    Dbg_Clk_27          : out std_logic;
    Dbg_TDI_27          : out std_logic;
    Dbg_TDO_27          : in  std_logic;
    Dbg_Reg_En_27       : out std_logic_vector(0 to 7);
    Dbg_Capture_27      : out std_logic;
    Dbg_Shift_27        : out std_logic;
    Dbg_Update_27       : out std_logic;
    Dbg_Rst_27          : out std_logic;
    Dbg_Trig_In_27      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_27  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_27     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_27        : out std_logic;
    Dbg_TrData_27       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_27      : out std_logic;
    Dbg_TrValid_27      : in  std_logic;
    Dbg_AWADDR_27       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_27      : out std_logic;
    Dbg_AWREADY_27      : in  std_logic;
    Dbg_WDATA_27        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_27       : out std_logic;
    Dbg_WREADY_27       : in  std_logic;
    Dbg_BRESP_27        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_27       : in  std_logic;
    Dbg_BREADY_27       : out std_logic;
    Dbg_ARADDR_27       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_27      : out std_logic;
    Dbg_ARREADY_27      : in  std_logic;
    Dbg_RDATA_27        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_27        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_27       : in  std_logic;
    Dbg_RREADY_27       : out std_logic;

    Dbg_Disable_28      : out std_logic;
    Dbg_Clk_28          : out std_logic;
    Dbg_TDI_28          : out std_logic;
    Dbg_TDO_28          : in  std_logic;
    Dbg_Reg_En_28       : out std_logic_vector(0 to 7);
    Dbg_Capture_28      : out std_logic;
    Dbg_Shift_28        : out std_logic;
    Dbg_Update_28       : out std_logic;
    Dbg_Rst_28          : out std_logic;
    Dbg_Trig_In_28      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_28  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_28     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_28        : out std_logic;
    Dbg_TrData_28       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_28      : out std_logic;
    Dbg_TrValid_28      : in  std_logic;
    Dbg_AWADDR_28       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_28      : out std_logic;
    Dbg_AWREADY_28      : in  std_logic;
    Dbg_WDATA_28        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_28       : out std_logic;
    Dbg_WREADY_28       : in  std_logic;
    Dbg_BRESP_28        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_28       : in  std_logic;
    Dbg_BREADY_28       : out std_logic;
    Dbg_ARADDR_28       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_28      : out std_logic;
    Dbg_ARREADY_28      : in  std_logic;
    Dbg_RDATA_28        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_28        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_28       : in  std_logic;
    Dbg_RREADY_28       : out std_logic;

    Dbg_Disable_29      : out std_logic;
    Dbg_Clk_29          : out std_logic;
    Dbg_TDI_29          : out std_logic;
    Dbg_TDO_29          : in  std_logic;
    Dbg_Reg_En_29       : out std_logic_vector(0 to 7);
    Dbg_Capture_29      : out std_logic;
    Dbg_Shift_29        : out std_logic;
    Dbg_Update_29       : out std_logic;
    Dbg_Rst_29          : out std_logic;
    Dbg_Trig_In_29      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_29  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_29     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_29        : out std_logic;
    Dbg_TrData_29       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_29      : out std_logic;
    Dbg_TrValid_29      : in  std_logic;
    Dbg_AWADDR_29       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_29      : out std_logic;
    Dbg_AWREADY_29      : in  std_logic;
    Dbg_WDATA_29        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_29       : out std_logic;
    Dbg_WREADY_29       : in  std_logic;
    Dbg_BRESP_29        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_29       : in  std_logic;
    Dbg_BREADY_29       : out std_logic;
    Dbg_ARADDR_29       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_29      : out std_logic;
    Dbg_ARREADY_29      : in  std_logic;
    Dbg_RDATA_29        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_29        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_29       : in  std_logic;
    Dbg_RREADY_29       : out std_logic;

    Dbg_Disable_30      : out std_logic;
    Dbg_Clk_30          : out std_logic;
    Dbg_TDI_30          : out std_logic;
    Dbg_TDO_30          : in  std_logic;
    Dbg_Reg_En_30       : out std_logic_vector(0 to 7);
    Dbg_Capture_30      : out std_logic;
    Dbg_Shift_30        : out std_logic;
    Dbg_Update_30       : out std_logic;
    Dbg_Rst_30          : out std_logic;
    Dbg_Trig_In_30      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_30  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_30     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_30        : out std_logic;
    Dbg_TrData_30       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_30      : out std_logic;
    Dbg_TrValid_30      : in  std_logic;
    Dbg_AWADDR_30       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_30      : out std_logic;
    Dbg_AWREADY_30      : in  std_logic;
    Dbg_WDATA_30        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_30       : out std_logic;
    Dbg_WREADY_30       : in  std_logic;
    Dbg_BRESP_30        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_30       : in  std_logic;
    Dbg_BREADY_30       : out std_logic;
    Dbg_ARADDR_30       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_30      : out std_logic;
    Dbg_ARREADY_30      : in  std_logic;
    Dbg_RDATA_30        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_30        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_30       : in  std_logic;
    Dbg_RREADY_30       : out std_logic;

    Dbg_Disable_31      : out std_logic;
    Dbg_Clk_31          : out std_logic;
    Dbg_TDI_31          : out std_logic;
    Dbg_TDO_31          : in  std_logic;
    Dbg_Reg_En_31       : out std_logic_vector(0 to 7);
    Dbg_Capture_31      : out std_logic;
    Dbg_Shift_31        : out std_logic;
    Dbg_Update_31       : out std_logic;
    Dbg_Rst_31          : out std_logic;
    Dbg_Trig_In_31      : in  std_logic_vector(0 to 7);
    Dbg_Trig_Ack_In_31  : out std_logic_vector(0 to 7);
    Dbg_Trig_Out_31     : out std_logic_vector(0 to 7);
    Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);
    Dbg_TrClk_31        : out std_logic;
    Dbg_TrData_31       : in  std_logic_vector(0 to 35);
    Dbg_TrReady_31      : out std_logic;
    Dbg_TrValid_31      : in  std_logic;
    Dbg_AWADDR_31       : out std_logic_vector(14 downto 2);
    Dbg_AWVALID_31      : out std_logic;
    Dbg_AWREADY_31      : in  std_logic;
    Dbg_WDATA_31        : out std_logic_vector(31 downto 0);
    Dbg_WVALID_31       : out std_logic;
    Dbg_WREADY_31       : in  std_logic;
    Dbg_BRESP_31        : in  std_logic_vector(1  downto 0);
    Dbg_BVALID_31       : in  std_logic;
    Dbg_BREADY_31       : out std_logic;
    Dbg_ARADDR_31       : out std_logic_vector(14 downto 2);
    Dbg_ARVALID_31      : out std_logic;
    Dbg_ARREADY_31      : in  std_logic;
    Dbg_RDATA_31        : in  std_logic_vector(31 downto 0);
    Dbg_RRESP_31        : in  std_logic_vector(1  downto 0);
    Dbg_RVALID_31       : in  std_logic;
    Dbg_RREADY_31       : out std_logic;

    -- External BSCAN inputs
    -- These signals are used when C_USE_BSCAN = 2 (EXTERNAL) or 4 (EXTERNAL_HIDDEN)
    bscan_ext_tdi        : in  std_logic;
    bscan_ext_reset      : in  std_logic;
    bscan_ext_shift      : in  std_logic;
    bscan_ext_update     : in  std_logic;
    bscan_ext_capture    : in  std_logic;
    bscan_ext_sel        : in  std_logic;
    bscan_ext_drck       : in  std_logic;
    bscan_ext_tdo        : out std_logic;
    bscan_ext_tck        : in  std_logic;
    bscan_ext_bscanid_en : in  std_logic;

    -- External JTAG ports
    Ext_JTAG_DRCK    : out std_logic;
    Ext_JTAG_RESET   : out std_logic;
    Ext_JTAG_SEL     : out std_logic;
    Ext_JTAG_CAPTURE : out std_logic;
    Ext_JTAG_SHIFT   : out std_logic;
    Ext_JTAG_UPDATE  : out std_logic;
    Ext_JTAG_TDI     : out std_logic;
    Ext_JTAG_TDO     : in  std_logic

  );

end entity MDM;

library IEEE;
use IEEE.numeric_std.all;

library mdm_v3_2_14;
use mdm_v3_2_14.mdm_funcs.all;

architecture IMP of MDM is

  function bool2std (val : boolean) return std_logic is
  begin  -- function bool2std
    if val then
      return '1';
    else
      return '0';
    end if;
  end function bool2std;

  function bool_to_string (b : boolean) return string is
  begin
    if b then
      return "yes";
    end if;
    return "no";
  end function bool_to_string;

  --------------------------------------------------------------------------
  -- Constant declarations
  --------------------------------------------------------------------------

  constant C_TARGET : TARGET_FAMILY_TYPE := String_To_Family(C_FAMILY, false);

  constant C_USE_SRL16 : string := bool_to_string( C_AVOID_PRIMITIVES = 0 );

  constant C_PARALLEL_DEBUG : integer := boolean'pos(C_DEBUG_INTERFACE > 0);

  constant ZEROES : std_logic_vector(31 downto 0) := X"00000000";

  constant C_REG_NUM_CE_0   : integer := 4 + 4  * C_DBG_REG_ACCESS;
  constant C_REG_DATA_WIDTH : integer := 8 + 24 * C_DBG_REG_ACCESS;
  constant C_ARD_RANGES     : integer := 1 + 10 * C_PARALLEL_DEBUG;
  constant C_REG_NUM_CE     : integer := C_REG_NUM_CE_0 + 10 * C_PARALLEL_DEBUG;

  type S_AXI_MIN_SIZE_T is array(0 to 2) of std_logic_vector(31 downto 0);
  constant C_S_AXI_MIN_SIZE_VEC : S_AXI_MIN_SIZE_T := ((X"0000000F", X"0000001F", X"00007FFF"));
  constant C_S_AXI_MIN_SIZE : std_logic_vector(31 downto 0) :=
    C_S_AXI_MIN_SIZE_VEC(boolean'pos(C_DBG_REG_ACCESS = 1));
  constant C_S_AXI_MIN_SIZE_2 : std_logic_vector(31 downto 0) :=
    C_S_AXI_MIN_SIZE_VEC(boolean'pos(C_DBG_REG_ACCESS = 1) +
                         boolean'pos(C_DBG_REG_ACCESS = 1 and C_DEBUG_INTERFACE > 0));

  constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE := (
    ZEROES & X"00000000",
    ZEROES & C_S_AXI_MIN_SIZE,

    ZEROES & X"00000020",
    ZEROES & X"0000003F",
    ZEROES & X"00000040",
    ZEROES & X"0000007F",
    ZEROES & X"00000080",
    ZEROES & X"000000FF",
    ZEROES & X"00000100",
    ZEROES & X"000001FF",
    ZEROES & X"00000200",
    ZEROES & X"000003FF",
    ZEROES & X"00000400",
    ZEROES & X"000007FF",
    ZEROES & X"00000800",
    ZEROES & X"00000FFF",
    ZEROES & X"00001000",
    ZEROES & X"00001FFF",
    ZEROES & X"00002000",
    ZEROES & X"00003FFF",

    ZEROES & X"00004000",
    ZEROES & (X"00004000" or C_S_AXI_MIN_SIZE_2)
  );

  constant C_ARD_NUM_CE_ARRAY : INTEGER_ARRAY_TYPE := (
    0 => C_REG_NUM_CE_0,
    1 to 10 => 1
  );

  constant C_USE_WSTRB      : integer := 0;
  constant C_DPHASE_TIMEOUT : integer := 0;

  constant C_TRACE_AXI_MASTER : boolean := C_TRACE_OUTPUT = 3;

  --------------------------------------------------------------------------
  -- Component declarations
  --------------------------------------------------------------------------  

  component MDM_Core
    generic (
      C_TARGET               : TARGET_FAMILY_TYPE;
      C_JTAG_CHAIN           : integer;
      C_USE_BSCAN            : integer;
      C_USE_CONFIG_RESET     : integer := 0;
      C_USE_SRL16            : string;
      C_DEBUG_INTERFACE      : integer;
      C_MB_DBG_PORTS         : integer;
      C_EN_WIDTH             : integer;
      C_DBG_REG_ACCESS       : integer;
      C_REG_NUM_CE           : integer;
      C_REG_DATA_WIDTH       : integer;
      C_DBG_MEM_ACCESS       : integer;
      C_S_AXI_ADDR_WIDTH     : integer;
      C_S_AXI_ACLK_FREQ_HZ   : integer;
      C_M_AXI_ADDR_WIDTH     : integer;
      C_M_AXI_DATA_WIDTH     : integer;
      C_USE_CROSS_TRIGGER    : integer;
      C_EXT_TRIG_RESET_VALUE : std_logic_vector(0 to 19);
      C_USE_UART             : integer;
      C_UART_WIDTH           : integer := 8;
      C_TRACE_OUTPUT         : integer;
      C_TRACE_DATA_WIDTH     : integer;
      C_TRACE_ASYNC_RESET    : integer;
      C_TRACE_CLK_FREQ_HZ    : integer;
      C_TRACE_CLK_OUT_PHASE  : integer;
      C_TRACE_PROTOCOL       : integer;
      C_TRACE_ID             : integer;
      C_M_AXIS_DATA_WIDTH    : integer;
      C_M_AXIS_ID_WIDTH      : integer);

    port (
      -- Global signals
      Config_Reset    : in std_logic;
      Scan_Reset_Sel  : in std_logic;
      Scan_Reset      : in std_logic;
      Scan_En         : in std_logic;

      M_AXIS_ACLK     : in std_logic;
      M_AXIS_ARESETN  : in std_logic;

      Interrupt       : out std_logic;
      Ext_BRK         : out std_logic;
      Ext_NM_BRK      : out std_logic;
      Debug_SYS_Rst   : out std_logic;

      -- Debug Register Access signals
      DbgReg_DRCK   : out std_logic;
      DbgReg_UPDATE : out std_logic;
      DbgReg_Select : out std_logic;
      JTAG_Busy     : in  std_logic;
      S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

      -- AXI IPIC signals
      bus2ip_clk    : in  std_logic;
      bus2ip_resetn : in  std_logic;
      bus2ip_data   : in  std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);
      bus2ip_rdce   : in  std_logic_vector(0 to C_REG_NUM_CE-1);
      bus2ip_wrce   : in  std_logic_vector(0 to C_REG_NUM_CE-1);
      ip2bus_rdack  : out std_logic;
      ip2bus_wrack  : out std_logic;
      ip2bus_error  : out std_logic;
      ip2bus_data   : out std_logic_vector(C_REG_DATA_WIDTH-1 downto 0);

      -- Bus Master signals
      MB_Debug_Enabled   : out std_logic_vector(C_EN_WIDTH-1 downto 0);

      M_AXI_ACLK         : in  std_logic;
      M_AXI_ARESETn      : in  std_logic;

      Master_rd_start    : out std_logic;
      Master_rd_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_rd_len      : out std_logic_vector(4 downto 0);
      Master_rd_size     : out std_logic_vector(1 downto 0);
      Master_rd_excl     : out std_logic;
      Master_rd_idle     : in  std_logic;
      Master_rd_resp     : in  std_logic_vector(1 downto 0);
      Master_wr_start    : out std_logic;
      Master_wr_addr     : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_wr_len      : out std_logic_vector(4 downto 0);
      Master_wr_size     : out std_logic_vector(1 downto 0);
      Master_wr_excl     : out std_logic;
      Master_wr_idle     : in  std_logic;
      Master_wr_resp     : in  std_logic_vector(1 downto 0);
      Master_data_rd     : out std_logic;
      Master_data_out    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_data_exists : in  std_logic;
      Master_data_wr     : out std_logic;
      Master_data_in     : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_data_empty  : in  std_logic;

      Master_dwr_addr    : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Master_dwr_len     : out std_logic_vector(4 downto 0);
      Master_dwr_data    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Master_dwr_start   : out std_logic;
      Master_dwr_next    : in  std_logic;
      Master_dwr_done    : in  std_logic;
      Master_dwr_resp    : in  std_logic_vector(1 downto 0);

      -- JTAG signals
      JTAG_TDI     : in  std_logic;
      JTAG_RESET   : in  std_logic;
      UPDATE       : in  std_logic;
      JTAG_SHIFT   : in  std_logic;
      JTAG_CAPTURE : in  std_logic;
      SEL          : in  std_logic;
      DRCK         : in  std_logic;
      JTAG_TDO     : out std_logic;

      -- External Trace AXI Stream output
      M_AXIS_TDATA       : out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0);
      M_AXIS_TID         : out std_logic_vector(C_M_AXIS_ID_WIDTH-1 downto 0);
      M_AXIS_TREADY      : in  std_logic;
      M_AXIS_TVALID      : out std_logic;

      -- External Trace output
      TRACE_CLK_OUT      : out std_logic;
      TRACE_CLK          : in  std_logic;
      TRACE_CTL          : out std_logic;
      TRACE_DATA         : out std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0);

      -- MicroBlaze Debug Signals
      Dbg_Disable_0      : out std_logic;
      Dbg_Clk_0          : out std_logic;
      Dbg_TDI_0          : out std_logic;
      Dbg_TDO_0          : in  std_logic;
      Dbg_Reg_En_0       : out std_logic_vector(0 to 7);
      Dbg_Capture_0      : out std_logic;
      Dbg_Shift_0        : out std_logic;
      Dbg_Update_0       : out std_logic;
      Dbg_Rst_0          : out std_logic;
      Dbg_Trig_In_0      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_0  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_0     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_0 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_0        : out std_logic;
      Dbg_TrData_0       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_0      : out std_logic;
      Dbg_TrValid_0      : in  std_logic;
      Dbg_AWADDR_0       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_0      : out std_logic;
      Dbg_AWREADY_0      : in  std_logic;
      Dbg_WDATA_0        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_0       : out std_logic;
      Dbg_WREADY_0       : in  std_logic;
      Dbg_BRESP_0        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_0       : in  std_logic;
      Dbg_BREADY_0       : out std_logic;
      Dbg_ARADDR_0       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_0      : out std_logic;
      Dbg_ARREADY_0      : in  std_logic;
      Dbg_RDATA_0        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_0        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_0       : in  std_logic;
      Dbg_RREADY_0       : out std_logic;

      Dbg_Disable_1      : out std_logic;
      Dbg_Clk_1          : out std_logic;
      Dbg_TDI_1          : out std_logic;
      Dbg_TDO_1          : in  std_logic;
      Dbg_Reg_En_1       : out std_logic_vector(0 to 7);
      Dbg_Capture_1      : out std_logic;
      Dbg_Shift_1        : out std_logic;
      Dbg_Update_1       : out std_logic;
      Dbg_Rst_1          : out std_logic;
      Dbg_Trig_In_1      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_1  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_1     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_1 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_1        : out std_logic;
      Dbg_TrData_1       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_1      : out std_logic;
      Dbg_TrValid_1      : in  std_logic;
      Dbg_AWADDR_1       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_1      : out std_logic;
      Dbg_AWREADY_1      : in  std_logic;
      Dbg_WDATA_1        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_1       : out std_logic;
      Dbg_WREADY_1       : in  std_logic;
      Dbg_BRESP_1        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_1       : in  std_logic;
      Dbg_BREADY_1       : out std_logic;
      Dbg_ARADDR_1       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_1      : out std_logic;
      Dbg_ARREADY_1      : in  std_logic;
      Dbg_RDATA_1        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_1        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_1       : in  std_logic;
      Dbg_RREADY_1       : out std_logic;

      Dbg_Disable_2      : out std_logic;
      Dbg_Clk_2          : out std_logic;
      Dbg_TDI_2          : out std_logic;
      Dbg_TDO_2          : in  std_logic;
      Dbg_Reg_En_2       : out std_logic_vector(0 to 7);
      Dbg_Capture_2      : out std_logic;
      Dbg_Shift_2        : out std_logic;
      Dbg_Update_2       : out std_logic;
      Dbg_Rst_2          : out std_logic;
      Dbg_Trig_In_2      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_2  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_2     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_2 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_2        : out std_logic;
      Dbg_TrData_2       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_2      : out std_logic;
      Dbg_TrValid_2      : in  std_logic;
      Dbg_AWADDR_2       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_2      : out std_logic;
      Dbg_AWREADY_2      : in  std_logic;
      Dbg_WDATA_2        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_2       : out std_logic;
      Dbg_WREADY_2       : in  std_logic;
      Dbg_BRESP_2        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_2       : in  std_logic;
      Dbg_BREADY_2       : out std_logic;
      Dbg_ARADDR_2       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_2      : out std_logic;
      Dbg_ARREADY_2      : in  std_logic;
      Dbg_RDATA_2        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_2        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_2       : in  std_logic;
      Dbg_RREADY_2       : out std_logic;

      Dbg_Disable_3      : out std_logic;
      Dbg_Clk_3          : out std_logic;
      Dbg_TDI_3          : out std_logic;
      Dbg_TDO_3          : in  std_logic;
      Dbg_Reg_En_3       : out std_logic_vector(0 to 7);
      Dbg_Capture_3      : out std_logic;
      Dbg_Shift_3        : out std_logic;
      Dbg_Update_3       : out std_logic;
      Dbg_Rst_3          : out std_logic;
      Dbg_Trig_In_3      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_3  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_3     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_3 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_3        : out std_logic;
      Dbg_TrData_3       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_3      : out std_logic;
      Dbg_TrValid_3      : in  std_logic;
      Dbg_AWADDR_3       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_3      : out std_logic;
      Dbg_AWREADY_3      : in  std_logic;
      Dbg_WDATA_3        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_3       : out std_logic;
      Dbg_WREADY_3       : in  std_logic;
      Dbg_BRESP_3        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_3       : in  std_logic;
      Dbg_BREADY_3       : out std_logic;
      Dbg_ARADDR_3       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_3      : out std_logic;
      Dbg_ARREADY_3      : in  std_logic;
      Dbg_RDATA_3        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_3        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_3       : in  std_logic;
      Dbg_RREADY_3       : out std_logic;

      Dbg_Disable_4      : out std_logic;
      Dbg_Clk_4          : out std_logic;
      Dbg_TDI_4          : out std_logic;
      Dbg_TDO_4          : in  std_logic;
      Dbg_Reg_En_4       : out std_logic_vector(0 to 7);
      Dbg_Capture_4      : out std_logic;
      Dbg_Shift_4        : out std_logic;
      Dbg_Update_4       : out std_logic;
      Dbg_Rst_4          : out std_logic;
      Dbg_Trig_In_4      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_4  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_4     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_4 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_4        : out std_logic;
      Dbg_TrData_4       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_4      : out std_logic;
      Dbg_TrValid_4      : in  std_logic;
      Dbg_AWADDR_4       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_4      : out std_logic;
      Dbg_AWREADY_4      : in  std_logic;
      Dbg_WDATA_4        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_4       : out std_logic;
      Dbg_WREADY_4       : in  std_logic;
      Dbg_BRESP_4        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_4       : in  std_logic;
      Dbg_BREADY_4       : out std_logic;
      Dbg_ARADDR_4       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_4      : out std_logic;
      Dbg_ARREADY_4      : in  std_logic;
      Dbg_RDATA_4        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_4        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_4       : in  std_logic;
      Dbg_RREADY_4       : out std_logic;

      Dbg_Disable_5      : out std_logic;
      Dbg_Clk_5          : out std_logic;
      Dbg_TDI_5          : out std_logic;
      Dbg_TDO_5          : in  std_logic;
      Dbg_Reg_En_5       : out std_logic_vector(0 to 7);
      Dbg_Capture_5      : out std_logic;
      Dbg_Shift_5        : out std_logic;
      Dbg_Update_5       : out std_logic;
      Dbg_Rst_5          : out std_logic;
      Dbg_Trig_In_5      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_5  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_5     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_5 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_5        : out std_logic;
      Dbg_TrData_5       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_5      : out std_logic;
      Dbg_TrValid_5      : in  std_logic;
      Dbg_AWADDR_5       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_5      : out std_logic;
      Dbg_AWREADY_5      : in  std_logic;
      Dbg_WDATA_5        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_5       : out std_logic;
      Dbg_WREADY_5       : in  std_logic;
      Dbg_BRESP_5        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_5       : in  std_logic;
      Dbg_BREADY_5       : out std_logic;
      Dbg_ARADDR_5       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_5      : out std_logic;
      Dbg_ARREADY_5      : in  std_logic;
      Dbg_RDATA_5        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_5        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_5       : in  std_logic;
      Dbg_RREADY_5       : out std_logic;

      Dbg_Disable_6      : out std_logic;
      Dbg_Clk_6          : out std_logic;
      Dbg_TDI_6          : out std_logic;
      Dbg_TDO_6          : in  std_logic;
      Dbg_Reg_En_6       : out std_logic_vector(0 to 7);
      Dbg_Capture_6      : out std_logic;
      Dbg_Shift_6        : out std_logic;
      Dbg_Update_6       : out std_logic;
      Dbg_Rst_6          : out std_logic;
      Dbg_Trig_In_6      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_6  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_6     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_6 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_6        : out std_logic;
      Dbg_TrData_6       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_6      : out std_logic;
      Dbg_TrValid_6      : in  std_logic;
      Dbg_AWADDR_6       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_6      : out std_logic;
      Dbg_AWREADY_6      : in  std_logic;
      Dbg_WDATA_6        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_6       : out std_logic;
      Dbg_WREADY_6       : in  std_logic;
      Dbg_BRESP_6        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_6       : in  std_logic;
      Dbg_BREADY_6       : out std_logic;
      Dbg_ARADDR_6       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_6      : out std_logic;
      Dbg_ARREADY_6      : in  std_logic;
      Dbg_RDATA_6        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_6        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_6       : in  std_logic;
      Dbg_RREADY_6       : out std_logic;

      Dbg_Disable_7      : out std_logic;
      Dbg_Clk_7          : out std_logic;
      Dbg_TDI_7          : out std_logic;
      Dbg_TDO_7          : in  std_logic;
      Dbg_Reg_En_7       : out std_logic_vector(0 to 7);
      Dbg_Capture_7      : out std_logic;
      Dbg_Shift_7        : out std_logic;
      Dbg_Update_7       : out std_logic;
      Dbg_Rst_7          : out std_logic;
      Dbg_Trig_In_7      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_7  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_7     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_7 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_7        : out std_logic;
      Dbg_TrData_7       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_7      : out std_logic;
      Dbg_TrValid_7      : in  std_logic;
      Dbg_AWADDR_7       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_7      : out std_logic;
      Dbg_AWREADY_7      : in  std_logic;
      Dbg_WDATA_7        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_7       : out std_logic;
      Dbg_WREADY_7       : in  std_logic;
      Dbg_BRESP_7        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_7       : in  std_logic;
      Dbg_BREADY_7       : out std_logic;
      Dbg_ARADDR_7       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_7      : out std_logic;
      Dbg_ARREADY_7      : in  std_logic;
      Dbg_RDATA_7        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_7        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_7       : in  std_logic;
      Dbg_RREADY_7       : out std_logic;

      Dbg_Disable_8      : out std_logic;
      Dbg_Clk_8          : out std_logic;
      Dbg_TDI_8          : out std_logic;
      Dbg_TDO_8          : in  std_logic;
      Dbg_Reg_En_8       : out std_logic_vector(0 to 7);
      Dbg_Capture_8      : out std_logic;
      Dbg_Shift_8        : out std_logic;
      Dbg_Update_8       : out std_logic;
      Dbg_Rst_8          : out std_logic;
      Dbg_Trig_In_8      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_8  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_8     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_8 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_8        : out std_logic;
      Dbg_TrData_8       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_8      : out std_logic;
      Dbg_TrValid_8      : in  std_logic;
      Dbg_AWADDR_8       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_8      : out std_logic;
      Dbg_AWREADY_8      : in  std_logic;
      Dbg_WDATA_8        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_8       : out std_logic;
      Dbg_WREADY_8       : in  std_logic;
      Dbg_BRESP_8        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_8       : in  std_logic;
      Dbg_BREADY_8       : out std_logic;
      Dbg_ARADDR_8       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_8      : out std_logic;
      Dbg_ARREADY_8      : in  std_logic;
      Dbg_RDATA_8        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_8        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_8       : in  std_logic;
      Dbg_RREADY_8       : out std_logic;

      Dbg_Disable_9      : out std_logic;
      Dbg_Clk_9          : out std_logic;
      Dbg_TDI_9          : out std_logic;
      Dbg_TDO_9          : in  std_logic;
      Dbg_Reg_En_9       : out std_logic_vector(0 to 7);
      Dbg_Capture_9      : out std_logic;
      Dbg_Shift_9        : out std_logic;
      Dbg_Update_9       : out std_logic;
      Dbg_Rst_9          : out std_logic;
      Dbg_Trig_In_9      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_9  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_9     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_9 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_9        : out std_logic;
      Dbg_TrData_9       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_9      : out std_logic;
      Dbg_TrValid_9      : in  std_logic;
      Dbg_AWADDR_9       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_9      : out std_logic;
      Dbg_AWREADY_9      : in  std_logic;
      Dbg_WDATA_9        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_9       : out std_logic;
      Dbg_WREADY_9       : in  std_logic;
      Dbg_BRESP_9        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_9       : in  std_logic;
      Dbg_BREADY_9       : out std_logic;
      Dbg_ARADDR_9       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_9      : out std_logic;
      Dbg_ARREADY_9      : in  std_logic;
      Dbg_RDATA_9        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_9        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_9       : in  std_logic;
      Dbg_RREADY_9       : out std_logic;

      Dbg_Disable_10      : out std_logic;
      Dbg_Clk_10          : out std_logic;
      Dbg_TDI_10          : out std_logic;
      Dbg_TDO_10          : in  std_logic;
      Dbg_Reg_En_10       : out std_logic_vector(0 to 7);
      Dbg_Capture_10      : out std_logic;
      Dbg_Shift_10        : out std_logic;
      Dbg_Update_10       : out std_logic;
      Dbg_Rst_10          : out std_logic;
      Dbg_Trig_In_10      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_10  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_10     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_10 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_10        : out std_logic;
      Dbg_TrData_10       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_10      : out std_logic;
      Dbg_TrValid_10      : in  std_logic;
      Dbg_AWADDR_10       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_10      : out std_logic;
      Dbg_AWREADY_10      : in  std_logic;
      Dbg_WDATA_10        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_10       : out std_logic;
      Dbg_WREADY_10       : in  std_logic;
      Dbg_BRESP_10        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_10       : in  std_logic;
      Dbg_BREADY_10       : out std_logic;
      Dbg_ARADDR_10       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_10      : out std_logic;
      Dbg_ARREADY_10      : in  std_logic;
      Dbg_RDATA_10        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_10        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_10       : in  std_logic;
      Dbg_RREADY_10       : out std_logic;

      Dbg_Disable_11      : out std_logic;
      Dbg_Clk_11          : out std_logic;
      Dbg_TDI_11          : out std_logic;
      Dbg_TDO_11          : in  std_logic;
      Dbg_Reg_En_11       : out std_logic_vector(0 to 7);
      Dbg_Capture_11      : out std_logic;
      Dbg_Shift_11        : out std_logic;
      Dbg_Update_11       : out std_logic;
      Dbg_Rst_11          : out std_logic;
      Dbg_Trig_In_11      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_11  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_11     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_11 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_11        : out std_logic;
      Dbg_TrData_11       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_11      : out std_logic;
      Dbg_TrValid_11      : in  std_logic;
      Dbg_AWADDR_11       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_11      : out std_logic;
      Dbg_AWREADY_11      : in  std_logic;
      Dbg_WDATA_11        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_11       : out std_logic;
      Dbg_WREADY_11       : in  std_logic;
      Dbg_BRESP_11        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_11       : in  std_logic;
      Dbg_BREADY_11       : out std_logic;
      Dbg_ARADDR_11       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_11      : out std_logic;
      Dbg_ARREADY_11      : in  std_logic;
      Dbg_RDATA_11        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_11        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_11       : in  std_logic;
      Dbg_RREADY_11       : out std_logic;

      Dbg_Disable_12      : out std_logic;
      Dbg_Clk_12          : out std_logic;
      Dbg_TDI_12          : out std_logic;
      Dbg_TDO_12          : in  std_logic;
      Dbg_Reg_En_12       : out std_logic_vector(0 to 7);
      Dbg_Capture_12      : out std_logic;
      Dbg_Shift_12        : out std_logic;
      Dbg_Update_12       : out std_logic;
      Dbg_Rst_12          : out std_logic;
      Dbg_Trig_In_12      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_12  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_12     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_12 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_12        : out std_logic;
      Dbg_TrData_12       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_12      : out std_logic;
      Dbg_TrValid_12      : in  std_logic;
      Dbg_AWADDR_12       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_12      : out std_logic;
      Dbg_AWREADY_12      : in  std_logic;
      Dbg_WDATA_12        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_12       : out std_logic;
      Dbg_WREADY_12       : in  std_logic;
      Dbg_BRESP_12        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_12       : in  std_logic;
      Dbg_BREADY_12       : out std_logic;
      Dbg_ARADDR_12       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_12      : out std_logic;
      Dbg_ARREADY_12      : in  std_logic;
      Dbg_RDATA_12        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_12        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_12       : in  std_logic;
      Dbg_RREADY_12       : out std_logic;

      Dbg_Disable_13      : out std_logic;
      Dbg_Clk_13          : out std_logic;
      Dbg_TDI_13          : out std_logic;
      Dbg_TDO_13          : in  std_logic;
      Dbg_Reg_En_13       : out std_logic_vector(0 to 7);
      Dbg_Capture_13      : out std_logic;
      Dbg_Shift_13        : out std_logic;
      Dbg_Update_13       : out std_logic;
      Dbg_Rst_13          : out std_logic;
      Dbg_Trig_In_13      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_13  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_13     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_13 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_13        : out std_logic;
      Dbg_TrData_13       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_13      : out std_logic;
      Dbg_TrValid_13      : in  std_logic;
      Dbg_AWADDR_13       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_13      : out std_logic;
      Dbg_AWREADY_13      : in  std_logic;
      Dbg_WDATA_13        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_13       : out std_logic;
      Dbg_WREADY_13       : in  std_logic;
      Dbg_BRESP_13        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_13       : in  std_logic;
      Dbg_BREADY_13       : out std_logic;
      Dbg_ARADDR_13       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_13      : out std_logic;
      Dbg_ARREADY_13      : in  std_logic;
      Dbg_RDATA_13        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_13        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_13       : in  std_logic;
      Dbg_RREADY_13       : out std_logic;

      Dbg_Disable_14      : out std_logic;
      Dbg_Clk_14          : out std_logic;
      Dbg_TDI_14          : out std_logic;
      Dbg_TDO_14          : in  std_logic;
      Dbg_Reg_En_14       : out std_logic_vector(0 to 7);
      Dbg_Capture_14      : out std_logic;
      Dbg_Shift_14        : out std_logic;
      Dbg_Update_14       : out std_logic;
      Dbg_Rst_14          : out std_logic;
      Dbg_Trig_In_14      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_14  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_14     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_14 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_14        : out std_logic;
      Dbg_TrData_14       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_14      : out std_logic;
      Dbg_TrValid_14      : in  std_logic;
      Dbg_AWADDR_14       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_14      : out std_logic;
      Dbg_AWREADY_14      : in  std_logic;
      Dbg_WDATA_14        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_14       : out std_logic;
      Dbg_WREADY_14       : in  std_logic;
      Dbg_BRESP_14        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_14       : in  std_logic;
      Dbg_BREADY_14       : out std_logic;
      Dbg_ARADDR_14       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_14      : out std_logic;
      Dbg_ARREADY_14      : in  std_logic;
      Dbg_RDATA_14        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_14        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_14       : in  std_logic;
      Dbg_RREADY_14       : out std_logic;

      Dbg_Disable_15      : out std_logic;
      Dbg_Clk_15          : out std_logic;
      Dbg_TDI_15          : out std_logic;
      Dbg_TDO_15          : in  std_logic;
      Dbg_Reg_En_15       : out std_logic_vector(0 to 7);
      Dbg_Capture_15      : out std_logic;
      Dbg_Shift_15        : out std_logic;
      Dbg_Update_15       : out std_logic;
      Dbg_Rst_15          : out std_logic;
      Dbg_Trig_In_15      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_15  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_15     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_15 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_15        : out std_logic;
      Dbg_TrData_15       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_15      : out std_logic;
      Dbg_TrValid_15      : in  std_logic;
      Dbg_AWADDR_15       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_15      : out std_logic;
      Dbg_AWREADY_15      : in  std_logic;
      Dbg_WDATA_15        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_15       : out std_logic;
      Dbg_WREADY_15       : in  std_logic;
      Dbg_BRESP_15        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_15       : in  std_logic;
      Dbg_BREADY_15       : out std_logic;
      Dbg_ARADDR_15       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_15      : out std_logic;
      Dbg_ARREADY_15      : in  std_logic;
      Dbg_RDATA_15        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_15        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_15       : in  std_logic;
      Dbg_RREADY_15       : out std_logic;

      Dbg_Disable_16      : out std_logic;
      Dbg_Clk_16          : out std_logic;
      Dbg_TDI_16          : out std_logic;
      Dbg_TDO_16          : in  std_logic;
      Dbg_Reg_En_16       : out std_logic_vector(0 to 7);
      Dbg_Capture_16      : out std_logic;
      Dbg_Shift_16        : out std_logic;
      Dbg_Update_16       : out std_logic;
      Dbg_Rst_16          : out std_logic;
      Dbg_Trig_In_16      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_16  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_16     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_16 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_16        : out std_logic;
      Dbg_TrData_16       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_16      : out std_logic;
      Dbg_TrValid_16      : in  std_logic;
      Dbg_AWADDR_16       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_16      : out std_logic;
      Dbg_AWREADY_16      : in  std_logic;
      Dbg_WDATA_16        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_16       : out std_logic;
      Dbg_WREADY_16       : in  std_logic;
      Dbg_BRESP_16        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_16       : in  std_logic;
      Dbg_BREADY_16       : out std_logic;
      Dbg_ARADDR_16       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_16      : out std_logic;
      Dbg_ARREADY_16      : in  std_logic;
      Dbg_RDATA_16        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_16        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_16       : in  std_logic;
      Dbg_RREADY_16       : out std_logic;

      Dbg_Disable_17      : out std_logic;
      Dbg_Clk_17          : out std_logic;
      Dbg_TDI_17          : out std_logic;
      Dbg_TDO_17          : in  std_logic;
      Dbg_Reg_En_17       : out std_logic_vector(0 to 7);
      Dbg_Capture_17      : out std_logic;
      Dbg_Shift_17        : out std_logic;
      Dbg_Update_17       : out std_logic;
      Dbg_Rst_17          : out std_logic;
      Dbg_Trig_In_17      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_17  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_17     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_17 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_17        : out std_logic;
      Dbg_TrData_17       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_17      : out std_logic;
      Dbg_TrValid_17      : in  std_logic;
      Dbg_AWADDR_17       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_17      : out std_logic;
      Dbg_AWREADY_17      : in  std_logic;
      Dbg_WDATA_17        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_17       : out std_logic;
      Dbg_WREADY_17       : in  std_logic;
      Dbg_BRESP_17        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_17       : in  std_logic;
      Dbg_BREADY_17       : out std_logic;
      Dbg_ARADDR_17       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_17      : out std_logic;
      Dbg_ARREADY_17      : in  std_logic;
      Dbg_RDATA_17        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_17        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_17       : in  std_logic;
      Dbg_RREADY_17       : out std_logic;

      Dbg_Disable_18      : out std_logic;
      Dbg_Clk_18          : out std_logic;
      Dbg_TDI_18          : out std_logic;
      Dbg_TDO_18          : in  std_logic;
      Dbg_Reg_En_18       : out std_logic_vector(0 to 7);
      Dbg_Capture_18      : out std_logic;
      Dbg_Shift_18        : out std_logic;
      Dbg_Update_18       : out std_logic;
      Dbg_Rst_18          : out std_logic;
      Dbg_Trig_In_18      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_18  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_18     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_18 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_18        : out std_logic;
      Dbg_TrData_18       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_18      : out std_logic;
      Dbg_TrValid_18      : in  std_logic;
      Dbg_AWADDR_18       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_18      : out std_logic;
      Dbg_AWREADY_18      : in  std_logic;
      Dbg_WDATA_18        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_18       : out std_logic;
      Dbg_WREADY_18       : in  std_logic;
      Dbg_BRESP_18        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_18       : in  std_logic;
      Dbg_BREADY_18       : out std_logic;
      Dbg_ARADDR_18       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_18      : out std_logic;
      Dbg_ARREADY_18      : in  std_logic;
      Dbg_RDATA_18        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_18        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_18       : in  std_logic;
      Dbg_RREADY_18       : out std_logic;

      Dbg_Disable_19      : out std_logic;
      Dbg_Clk_19          : out std_logic;
      Dbg_TDI_19          : out std_logic;
      Dbg_TDO_19          : in  std_logic;
      Dbg_Reg_En_19       : out std_logic_vector(0 to 7);
      Dbg_Capture_19      : out std_logic;
      Dbg_Shift_19        : out std_logic;
      Dbg_Update_19       : out std_logic;
      Dbg_Rst_19          : out std_logic;
      Dbg_Trig_In_19      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_19  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_19     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_19 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_19        : out std_logic;
      Dbg_TrData_19       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_19      : out std_logic;
      Dbg_TrValid_19      : in  std_logic;
      Dbg_AWADDR_19       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_19      : out std_logic;
      Dbg_AWREADY_19      : in  std_logic;
      Dbg_WDATA_19        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_19       : out std_logic;
      Dbg_WREADY_19       : in  std_logic;
      Dbg_BRESP_19        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_19       : in  std_logic;
      Dbg_BREADY_19       : out std_logic;
      Dbg_ARADDR_19       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_19      : out std_logic;
      Dbg_ARREADY_19      : in  std_logic;
      Dbg_RDATA_19        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_19        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_19       : in  std_logic;
      Dbg_RREADY_19       : out std_logic;

      Dbg_Disable_20      : out std_logic;
      Dbg_Clk_20          : out std_logic;
      Dbg_TDI_20          : out std_logic;
      Dbg_TDO_20          : in  std_logic;
      Dbg_Reg_En_20       : out std_logic_vector(0 to 7);
      Dbg_Capture_20      : out std_logic;
      Dbg_Shift_20        : out std_logic;
      Dbg_Update_20       : out std_logic;
      Dbg_Rst_20          : out std_logic;
      Dbg_Trig_In_20      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_20  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_20     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_20 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_20        : out std_logic;
      Dbg_TrData_20       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_20      : out std_logic;
      Dbg_TrValid_20      : in  std_logic;
      Dbg_AWADDR_20       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_20      : out std_logic;
      Dbg_AWREADY_20      : in  std_logic;
      Dbg_WDATA_20        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_20       : out std_logic;
      Dbg_WREADY_20       : in  std_logic;
      Dbg_BRESP_20        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_20       : in  std_logic;
      Dbg_BREADY_20       : out std_logic;
      Dbg_ARADDR_20       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_20      : out std_logic;
      Dbg_ARREADY_20      : in  std_logic;
      Dbg_RDATA_20        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_20        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_20       : in  std_logic;
      Dbg_RREADY_20       : out std_logic;

      Dbg_Disable_21      : out std_logic;
      Dbg_Clk_21          : out std_logic;
      Dbg_TDI_21          : out std_logic;
      Dbg_TDO_21          : in  std_logic;
      Dbg_Reg_En_21       : out std_logic_vector(0 to 7);
      Dbg_Capture_21      : out std_logic;
      Dbg_Shift_21        : out std_logic;
      Dbg_Update_21       : out std_logic;
      Dbg_Rst_21          : out std_logic;
      Dbg_Trig_In_21      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_21  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_21     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_21 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_21        : out std_logic;
      Dbg_TrData_21       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_21      : out std_logic;
      Dbg_TrValid_21      : in  std_logic;
      Dbg_AWADDR_21       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_21      : out std_logic;
      Dbg_AWREADY_21      : in  std_logic;
      Dbg_WDATA_21        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_21       : out std_logic;
      Dbg_WREADY_21       : in  std_logic;
      Dbg_BRESP_21        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_21       : in  std_logic;
      Dbg_BREADY_21       : out std_logic;
      Dbg_ARADDR_21       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_21      : out std_logic;
      Dbg_ARREADY_21      : in  std_logic;
      Dbg_RDATA_21        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_21        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_21       : in  std_logic;
      Dbg_RREADY_21       : out std_logic;

      Dbg_Disable_22      : out std_logic;
      Dbg_Clk_22          : out std_logic;
      Dbg_TDI_22          : out std_logic;
      Dbg_TDO_22          : in  std_logic;
      Dbg_Reg_En_22       : out std_logic_vector(0 to 7);
      Dbg_Capture_22      : out std_logic;
      Dbg_Shift_22        : out std_logic;
      Dbg_Update_22       : out std_logic;
      Dbg_Rst_22          : out std_logic;
      Dbg_Trig_In_22      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_22  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_22     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_22 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_22        : out std_logic;
      Dbg_TrData_22       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_22      : out std_logic;
      Dbg_TrValid_22      : in  std_logic;
      Dbg_AWADDR_22       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_22      : out std_logic;
      Dbg_AWREADY_22      : in  std_logic;
      Dbg_WDATA_22        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_22       : out std_logic;
      Dbg_WREADY_22       : in  std_logic;
      Dbg_BRESP_22        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_22       : in  std_logic;
      Dbg_BREADY_22       : out std_logic;
      Dbg_ARADDR_22       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_22      : out std_logic;
      Dbg_ARREADY_22      : in  std_logic;
      Dbg_RDATA_22        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_22        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_22       : in  std_logic;
      Dbg_RREADY_22       : out std_logic;

      Dbg_Disable_23      : out std_logic;
      Dbg_Clk_23          : out std_logic;
      Dbg_TDI_23          : out std_logic;
      Dbg_TDO_23          : in  std_logic;
      Dbg_Reg_En_23       : out std_logic_vector(0 to 7);
      Dbg_Capture_23      : out std_logic;
      Dbg_Shift_23        : out std_logic;
      Dbg_Update_23       : out std_logic;
      Dbg_Rst_23          : out std_logic;
      Dbg_Trig_In_23      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_23  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_23     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_23 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_23        : out std_logic;
      Dbg_TrData_23       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_23      : out std_logic;
      Dbg_TrValid_23      : in  std_logic;
      Dbg_AWADDR_23       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_23      : out std_logic;
      Dbg_AWREADY_23      : in  std_logic;
      Dbg_WDATA_23        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_23       : out std_logic;
      Dbg_WREADY_23       : in  std_logic;
      Dbg_BRESP_23        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_23       : in  std_logic;
      Dbg_BREADY_23       : out std_logic;
      Dbg_ARADDR_23       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_23      : out std_logic;
      Dbg_ARREADY_23      : in  std_logic;
      Dbg_RDATA_23        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_23        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_23       : in  std_logic;
      Dbg_RREADY_23       : out std_logic;

      Dbg_Disable_24      : out std_logic;
      Dbg_Clk_24          : out std_logic;
      Dbg_TDI_24          : out std_logic;
      Dbg_TDO_24          : in  std_logic;
      Dbg_Reg_En_24       : out std_logic_vector(0 to 7);
      Dbg_Capture_24      : out std_logic;
      Dbg_Shift_24        : out std_logic;
      Dbg_Update_24       : out std_logic;
      Dbg_Rst_24          : out std_logic;
      Dbg_Trig_In_24      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_24  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_24     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_24 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_24        : out std_logic;
      Dbg_TrData_24       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_24      : out std_logic;
      Dbg_TrValid_24      : in  std_logic;
      Dbg_AWADDR_24       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_24      : out std_logic;
      Dbg_AWREADY_24      : in  std_logic;
      Dbg_WDATA_24        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_24       : out std_logic;
      Dbg_WREADY_24       : in  std_logic;
      Dbg_BRESP_24        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_24       : in  std_logic;
      Dbg_BREADY_24       : out std_logic;
      Dbg_ARADDR_24       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_24      : out std_logic;
      Dbg_ARREADY_24      : in  std_logic;
      Dbg_RDATA_24        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_24        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_24       : in  std_logic;
      Dbg_RREADY_24       : out std_logic;

      Dbg_Disable_25      : out std_logic;
      Dbg_Clk_25          : out std_logic;
      Dbg_TDI_25          : out std_logic;
      Dbg_TDO_25          : in  std_logic;
      Dbg_Reg_En_25       : out std_logic_vector(0 to 7);
      Dbg_Capture_25      : out std_logic;
      Dbg_Shift_25        : out std_logic;
      Dbg_Update_25       : out std_logic;
      Dbg_Rst_25          : out std_logic;
      Dbg_Trig_In_25      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_25  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_25     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_25 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_25        : out std_logic;
      Dbg_TrData_25       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_25      : out std_logic;
      Dbg_TrValid_25      : in  std_logic;
      Dbg_AWADDR_25       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_25      : out std_logic;
      Dbg_AWREADY_25      : in  std_logic;
      Dbg_WDATA_25        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_25       : out std_logic;
      Dbg_WREADY_25       : in  std_logic;
      Dbg_BRESP_25        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_25       : in  std_logic;
      Dbg_BREADY_25       : out std_logic;
      Dbg_ARADDR_25       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_25      : out std_logic;
      Dbg_ARREADY_25      : in  std_logic;
      Dbg_RDATA_25        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_25        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_25       : in  std_logic;
      Dbg_RREADY_25       : out std_logic;

      Dbg_Disable_26      : out std_logic;
      Dbg_Clk_26          : out std_logic;
      Dbg_TDI_26          : out std_logic;
      Dbg_TDO_26          : in  std_logic;
      Dbg_Reg_En_26       : out std_logic_vector(0 to 7);
      Dbg_Capture_26      : out std_logic;
      Dbg_Shift_26        : out std_logic;
      Dbg_Update_26       : out std_logic;
      Dbg_Rst_26          : out std_logic;
      Dbg_Trig_In_26      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_26  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_26     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_26 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_26        : out std_logic;
      Dbg_TrData_26       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_26      : out std_logic;
      Dbg_TrValid_26      : in  std_logic;
      Dbg_AWADDR_26       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_26      : out std_logic;
      Dbg_AWREADY_26      : in  std_logic;
      Dbg_WDATA_26        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_26       : out std_logic;
      Dbg_WREADY_26       : in  std_logic;
      Dbg_BRESP_26        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_26       : in  std_logic;
      Dbg_BREADY_26       : out std_logic;
      Dbg_ARADDR_26       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_26      : out std_logic;
      Dbg_ARREADY_26      : in  std_logic;
      Dbg_RDATA_26        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_26        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_26       : in  std_logic;
      Dbg_RREADY_26       : out std_logic;

      Dbg_Disable_27      : out std_logic;
      Dbg_Clk_27          : out std_logic;
      Dbg_TDI_27          : out std_logic;
      Dbg_TDO_27          : in  std_logic;
      Dbg_Reg_En_27       : out std_logic_vector(0 to 7);
      Dbg_Capture_27      : out std_logic;
      Dbg_Shift_27        : out std_logic;
      Dbg_Update_27       : out std_logic;
      Dbg_Rst_27          : out std_logic;
      Dbg_Trig_In_27      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_27  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_27     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_27 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_27        : out std_logic;
      Dbg_TrData_27       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_27      : out std_logic;
      Dbg_TrValid_27      : in  std_logic;
      Dbg_AWADDR_27       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_27      : out std_logic;
      Dbg_AWREADY_27      : in  std_logic;
      Dbg_WDATA_27        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_27       : out std_logic;
      Dbg_WREADY_27       : in  std_logic;
      Dbg_BRESP_27        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_27       : in  std_logic;
      Dbg_BREADY_27       : out std_logic;
      Dbg_ARADDR_27       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_27      : out std_logic;
      Dbg_ARREADY_27      : in  std_logic;
      Dbg_RDATA_27        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_27        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_27       : in  std_logic;
      Dbg_RREADY_27       : out std_logic;

      Dbg_Disable_28      : out std_logic;
      Dbg_Clk_28          : out std_logic;
      Dbg_TDI_28          : out std_logic;
      Dbg_TDO_28          : in  std_logic;
      Dbg_Reg_En_28       : out std_logic_vector(0 to 7);
      Dbg_Capture_28      : out std_logic;
      Dbg_Shift_28        : out std_logic;
      Dbg_Update_28       : out std_logic;
      Dbg_Rst_28          : out std_logic;
      Dbg_Trig_In_28      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_28  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_28     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_28 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_28        : out std_logic;
      Dbg_TrData_28       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_28      : out std_logic;
      Dbg_TrValid_28      : in  std_logic;
      Dbg_AWADDR_28       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_28      : out std_logic;
      Dbg_AWREADY_28      : in  std_logic;
      Dbg_WDATA_28        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_28       : out std_logic;
      Dbg_WREADY_28       : in  std_logic;
      Dbg_BRESP_28        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_28       : in  std_logic;
      Dbg_BREADY_28       : out std_logic;
      Dbg_ARADDR_28       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_28      : out std_logic;
      Dbg_ARREADY_28      : in  std_logic;
      Dbg_RDATA_28        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_28        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_28       : in  std_logic;
      Dbg_RREADY_28       : out std_logic;

      Dbg_Disable_29      : out std_logic;
      Dbg_Clk_29          : out std_logic;
      Dbg_TDI_29          : out std_logic;
      Dbg_TDO_29          : in  std_logic;
      Dbg_Reg_En_29       : out std_logic_vector(0 to 7);
      Dbg_Capture_29      : out std_logic;
      Dbg_Shift_29        : out std_logic;
      Dbg_Update_29       : out std_logic;
      Dbg_Rst_29          : out std_logic;
      Dbg_Trig_In_29      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_29  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_29     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_29 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_29        : out std_logic;
      Dbg_TrData_29       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_29      : out std_logic;
      Dbg_TrValid_29      : in  std_logic;
      Dbg_AWADDR_29       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_29      : out std_logic;
      Dbg_AWREADY_29      : in  std_logic;
      Dbg_WDATA_29        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_29       : out std_logic;
      Dbg_WREADY_29       : in  std_logic;
      Dbg_BRESP_29        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_29       : in  std_logic;
      Dbg_BREADY_29       : out std_logic;
      Dbg_ARADDR_29       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_29      : out std_logic;
      Dbg_ARREADY_29      : in  std_logic;
      Dbg_RDATA_29        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_29        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_29       : in  std_logic;
      Dbg_RREADY_29       : out std_logic;

      Dbg_Disable_30      : out std_logic;
      Dbg_Clk_30          : out std_logic;
      Dbg_TDI_30          : out std_logic;
      Dbg_TDO_30          : in  std_logic;
      Dbg_Reg_En_30       : out std_logic_vector(0 to 7);
      Dbg_Capture_30      : out std_logic;
      Dbg_Shift_30        : out std_logic;
      Dbg_Update_30       : out std_logic;
      Dbg_Rst_30          : out std_logic;
      Dbg_Trig_In_30      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_30  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_30     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_30 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_30        : out std_logic;
      Dbg_TrData_30       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_30      : out std_logic;
      Dbg_TrValid_30      : in  std_logic;
      Dbg_AWADDR_30       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_30      : out std_logic;
      Dbg_AWREADY_30      : in  std_logic;
      Dbg_WDATA_30        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_30       : out std_logic;
      Dbg_WREADY_30       : in  std_logic;
      Dbg_BRESP_30        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_30       : in  std_logic;
      Dbg_BREADY_30       : out std_logic;
      Dbg_ARADDR_30       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_30      : out std_logic;
      Dbg_ARREADY_30      : in  std_logic;
      Dbg_RDATA_30        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_30        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_30       : in  std_logic;
      Dbg_RREADY_30       : out std_logic;

      Dbg_Disable_31      : out std_logic;
      Dbg_Clk_31          : out std_logic;
      Dbg_TDI_31          : out std_logic;
      Dbg_TDO_31          : in  std_logic;
      Dbg_Reg_En_31       : out std_logic_vector(0 to 7);
      Dbg_Capture_31      : out std_logic;
      Dbg_Shift_31        : out std_logic;
      Dbg_Update_31       : out std_logic;
      Dbg_Rst_31          : out std_logic;
      Dbg_Trig_In_31      : in  std_logic_vector(0 to 7);
      Dbg_Trig_Ack_In_31  : out std_logic_vector(0 to 7);
      Dbg_Trig_Out_31     : out std_logic_vector(0 to 7);
      Dbg_Trig_Ack_Out_31 : in  std_logic_vector(0 to 7);
      Dbg_TrClk_31        : out std_logic;
      Dbg_TrData_31       : in  std_logic_vector(0 to 35);
      Dbg_TrReady_31      : out std_logic;
      Dbg_TrValid_31      : in  std_logic;
      Dbg_AWADDR_31       : out std_logic_vector(14 downto 2);
      Dbg_AWVALID_31      : out std_logic;
      Dbg_AWREADY_31      : in  std_logic;
      Dbg_WDATA_31        : out std_logic_vector(31 downto 0);
      Dbg_WVALID_31       : out std_logic;
      Dbg_WREADY_31       : in  std_logic;
      Dbg_BRESP_31        : in  std_logic_vector(1  downto 0);
      Dbg_BVALID_31       : in  std_logic;
      Dbg_BREADY_31       : out std_logic;
      Dbg_ARADDR_31       : out std_logic_vector(14 downto 2);
      Dbg_ARVALID_31      : out std_logic;
      Dbg_ARREADY_31      : in  std_logic;
      Dbg_RDATA_31        : in  std_logic_vector(31 downto 0);
      Dbg_RRESP_31        : in  std_logic_vector(1  downto 0);
      Dbg_RVALID_31       : in  std_logic;
      Dbg_RREADY_31       : out std_logic;

      -- External Trigger Signals
      Ext_Trig_In      : in  std_logic_vector(0 to 3);
      Ext_Trig_Ack_In  : out std_logic_vector(0 to 3);
      Ext_Trig_Out     : out std_logic_vector(0 to 3);
      Ext_Trig_Ack_Out : in  std_logic_vector(0 to 3);
    
      -- External JTAG
      Ext_JTAG_DRCK    : out std_logic;
      Ext_JTAG_RESET   : out std_logic;
      Ext_JTAG_SEL     : out std_logic;
      Ext_JTAG_CAPTURE : out std_logic;
      Ext_JTAG_SHIFT   : out std_logic;
      Ext_JTAG_UPDATE  : out std_logic;
      Ext_JTAG_TDI     : out std_logic;
      Ext_JTAG_TDO     : in  std_logic
    );
  end component MDM_Core;

  component bus_master is
    generic (
      C_TARGET                : TARGET_FAMILY_TYPE;
      C_M_AXI_DATA_WIDTH      : natural;
      C_M_AXI_THREAD_ID_WIDTH : natural;
      C_M_AXI_ADDR_WIDTH      : natural;
      C_DATA_SIZE             : natural;
      C_HAS_FIFO_PORTS        : boolean;
      C_HAS_DIRECT_PORT       : boolean;
      C_USE_SRL16             : string
    );
    port (
      Rd_Start          : in  std_logic;
      Rd_Addr           : in  std_logic_vector(31 downto 0);
      Rd_Len            : in  std_logic_vector(4  downto 0);
      Rd_Size           : in  std_logic_vector(1  downto 0);
      Rd_Exclusive      : in  std_logic;
      Rd_Idle           : out std_logic;
      Rd_Response       : out std_logic_vector(1  downto 0);

      Wr_Start          : in  std_logic;
      Wr_Addr           : in  std_logic_vector(31 downto 0);
      Wr_Len            : in  std_logic_vector(4  downto 0);
      Wr_Size           : in  std_logic_vector(1  downto 0);
      Wr_Exclusive      : in  std_logic;
      Wr_Idle           : out std_logic;
      Wr_Response       : out std_logic_vector(1  downto 0);

      Data_Rd           : in  std_logic;
      Data_Out          : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Data_Exists       : out std_logic;

      Data_Wr           : in  std_logic;
      Data_In           : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Data_Empty        : out std_logic;

      Direct_Wr_Addr    : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      Direct_Wr_Len     : in  std_logic_vector(4  downto 0);
      Direct_Wr_Data    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
      Direct_Wr_Start   : in  std_logic;
      Direct_Wr_Next    : out std_logic;
      Direct_Wr_Done    : out std_logic;
      Direct_Wr_Resp    : out std_logic_vector(1 downto 0);

      LMB_Data_Addr     : out std_logic_vector(0 to C_DATA_SIZE-1);
      LMB_Data_Read     : in  std_logic_vector(0 to C_DATA_SIZE-1);
      LMB_Data_Write    : out std_logic_vector(0 to C_DATA_SIZE-1);
      LMB_Addr_Strobe   : out std_logic;
      LMB_Read_Strobe   : out std_logic;
      LMB_Write_Strobe  : out std_logic;
      LMB_Ready         : in  std_logic;
      LMB_Wait          : in  std_logic;
      LMB_UE            : in  std_logic;
      LMB_Byte_Enable   : out std_logic_vector(0 to (C_DATA_SIZE-1)/8);
    
      M_AXI_ACLK        : in  std_logic;
      M_AXI_ARESETn     : in  std_logic;

      M_AXI_AWID        : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      M_AXI_AWADDR      : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      M_AXI_AWLEN       : out std_logic_vector(7 downto 0);
      M_AXI_AWSIZE      : out std_logic_vector(2 downto 0);
      M_AXI_AWBURST     : out std_logic_vector(1 downto 0);
      M_AXI_AWLOCK      : out std_logic;
      M_AXI_AWCACHE     : out std_logic_vector(3 downto 0);
      M_AXI_AWPROT      : out std_logic_vector(2 downto 0);
      M_AXI_AWQOS       : out std_logic_vector(3 downto 0);
      M_AXI_AWVALID     : out std_logic;
      M_AXI_AWREADY     : in  std_logic;

      M_AXI_WLAST       : out std_logic;
      M_AXI_WDATA       : out std_logic_vector(31 downto 0);
      M_AXI_WSTRB       : out std_logic_vector(3 downto 0);
      M_AXI_WVALID      : out std_logic;
      M_AXI_WREADY      : in  std_logic;

      M_AXI_BRESP       : in  std_logic_vector(1 downto 0);
      M_AXI_BID         : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      M_AXI_BVALID      : in  std_logic;
      M_AXI_BREADY      : out std_logic;

      M_AXI_ARADDR      : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
      M_AXI_ARID        : out std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      M_AXI_ARLEN       : out std_logic_vector(7 downto 0);
      M_AXI_ARSIZE      : out std_logic_vector(2 downto 0);
      M_AXI_ARBURST     : out std_logic_vector(1 downto 0);
      M_AXI_ARLOCK      : out std_logic;
      M_AXI_ARCACHE     : out std_logic_vector(3 downto 0);
      M_AXI_ARPROT      : out std_logic_vector(2 downto 0);
      M_AXI_ARQOS       : out std_logic_vector(3 downto 0);
      M_AXI_ARVALID     : out std_logic;
      M_AXI_ARREADY     : in  std_logic;

      M_AXI_RLAST       : in  std_logic;
      M_AXI_RID         : in  std_logic_vector(C_M_AXI_THREAD_ID_WIDTH-1 downto 0);
      M_AXI_RDATA       : in  std_logic_vector(31 downto 0);
      M_AXI_RRESP       : in  std_logic_vector(1 downto 0);
      M_AXI_RVALID      : in  std_logic;
      M_AXI_RREADY      : out std_logic
    );
  end component bus_master;

  component MB_BSCANE2
    generic (
       C_TARGET     : TARGET_FAMILY_TYPE;
       DISABLE_JTAG : string := "FALSE";
       JTAG_CHAIN   : integer := 1
    );
    port (
       CAPTURE      : out std_logic := 'H';
       DRCK         : out std_logic := 'H';
       RESET        : out std_logic := 'H';
       RUNTEST      : out std_logic := 'L';
       SEL          : out std_logic := 'L';
       SHIFT        : out std_logic := 'L';
       TCK          : out std_logic := 'L';
       TDI          : out std_logic := 'L';
       TMS          : out std_logic := 'L';
       UPDATE       : out std_logic := 'L';
       TDO          : in  std_logic := 'X'
    );
  end component;

  component MB_BUFG
    generic (
      C_TARGET : TARGET_FAMILY_TYPE
    );
    port (
       O : out std_logic;
       I : in  std_logic
    );
  end component;

  component MB_BUFGCTRL
    generic (
      C_TARGET            : TARGET_FAMILY_TYPE;
      INIT_OUT            : integer := 0;
      IS_CE0_INVERTED     : bit := '0';
      IS_CE1_INVERTED     : bit := '0';
      IS_I0_INVERTED      : bit := '0';
      IS_I1_INVERTED      : bit := '0';
      IS_IGNORE0_INVERTED : bit := '0';
      IS_IGNORE1_INVERTED : bit := '0';
      IS_S0_INVERTED      : bit := '0';
      IS_S1_INVERTED      : bit := '0';
      PRESELECT_I0        : boolean := false;
      PRESELECT_I1        : boolean := false
    );
    port (
      O                   : out std_logic;
      CE0                 : in  std_logic;
      CE1                 : in  std_logic;
      I0                  : in  std_logic;
      I1                  : in  std_logic;
      IGNORE0             : in  std_logic;
      IGNORE1             : in  std_logic;
      S0                  : in  std_logic;
      S1                  : in  std_logic
    );
  end component;

  --------------------------------------------------------------------------
  -- Functions
  --------------------------------------------------------------------------  

  -- Returns at least 1
  function MakePos (a : integer) return integer is
  begin
    if a < 1 then
      return 1;
    else
      return a;
    end if;
  end function MakePos;

  constant C_EN_WIDTH : integer := MakePos(C_MB_DBG_PORTS);

  --------------------------------------------------------------------------
  -- Signal declarations
  --------------------------------------------------------------------------
  signal tdi     : std_logic;
  signal reset   : std_logic;
  signal update  : std_logic;
  signal capture : std_logic;
  signal shift   : std_logic;
  signal sel     : std_logic;
  signal drck    : std_logic;
  signal tdo     : std_logic;

  signal drck_i   : std_logic;
  signal update_i : std_logic;

  signal dbgreg_drck   : std_logic;
  signal dbgreg_update : std_logic;
  signal dbgreg_select : std_logic;
  signal jtag_busy     : std_logic := '0';

  signal bus2ip_clk    : std_logic;
  signal bus2ip_clk_i  : std_logic;
  signal bus2ip_resetn : std_logic;
  signal ip2bus_data   : std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0) := (others => '0');
  signal ip2bus_error  : std_logic                                         := '0';
  signal ip2bus_wrack  : std_logic                                         := '0';
  signal ip2bus_rdack  : std_logic                                         := '0';
  signal bus2ip_data   : std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
  signal bus2ip_rdce   : std_logic_vector(calc_num_ce(C_ARD_NUM_CE_ARRAY(0 to C_ARD_RANGES-1))-1 downto 0);
  signal bus2ip_wrce   : std_logic_vector(calc_num_ce(C_ARD_NUM_CE_ARRAY(0 to C_ARD_RANGES-1))-1 downto 0);

  signal mb_debug_enabled   : std_logic_vector(C_EN_WIDTH-1 downto 0);
  signal master_rd_start    : std_logic;
  signal master_rd_addr     : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_rd_len      : std_logic_vector(4 downto 0);
  signal master_rd_size     : std_logic_vector(1 downto 0);
  signal master_rd_excl     : std_logic;
  signal master_rd_idle     : std_logic;
  signal master_rd_resp     : std_logic_vector(1 downto 0);
  signal master_wr_start    : std_logic;
  signal master_wr_addr     : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_wr_len      : std_logic_vector(4 downto 0);
  signal master_wr_size     : std_logic_vector(1 downto 0);
  signal master_wr_excl     : std_logic;
  signal master_wr_idle     : std_logic;
  signal master_wr_resp     : std_logic_vector(1 downto 0);
  signal master_data_rd     : std_logic;
  signal master_data_out    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal master_data_exists : std_logic;
  signal master_data_wr     : std_logic;
  signal master_data_in     : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal master_data_empty  : std_logic;

  signal master_dwr_addr    : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal master_dwr_len     : std_logic_vector(4 downto 0);
  signal master_dwr_data    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
  signal master_dwr_start   : std_logic;
  signal master_dwr_next    : std_logic;
  signal master_dwr_done    : std_logic;
  signal master_dwr_resp    : std_logic_vector(1 downto 0);

  signal ext_trig_in        : std_logic_vector(0 to 3);
  signal ext_trig_Ack_In    : std_logic_vector(0 to 3);
  signal ext_trig_out       : std_logic_vector(0 to 3);
  signal ext_trig_Ack_Out   : std_logic_vector(0 to 3);

  --------------------------------------------------------------------------
  -- Attibute declarations
  --------------------------------------------------------------------------
  attribute period           : string;
  attribute period of update : signal is "200 ns";

  attribute buffer_type                : string;
  attribute buffer_type of update_i    : signal is "none";
  attribute buffer_type of MDM_Core_I1 : label is "none";

begin  -- architecture IMP

  Use_E2 : if C_USE_BSCAN /= 2 and C_USE_BSCAN /= 3 and C_USE_BSCAN /= 4 generate
  begin
    BSCAN_I : MB_BSCANE2
      generic map (
        C_TARGET     => C_TARGET,
        DISABLE_JTAG => "FALSE",
        JTAG_CHAIN   => C_JTAG_CHAIN)
      port map (
        CAPTURE      => capture,          -- [out std_logic]
        DRCK         => drck_i,           -- [out std_logic]
        RESET        => reset,            -- [out std_logic]
        RUNTEST      => open,             -- [out std_logic]
        SEL          => sel,              -- [out std_logic]
        SHIFT        => shift,            -- [out std_logic]
        TCK          => open,             -- [out std_logic]
        TDI          => tdi,              -- [out std_logic]
        TMS          => open,             -- [out std_logic]
        UPDATE       => update_i,         -- [out std_logic]
        TDO          => tdo);             -- [in  std_logic]
  end generate Use_E2;

  Use_External : if C_USE_BSCAN = 2 or C_USE_BSCAN = 4 generate
  begin
    capture <= bscan_ext_capture;
    drck_i  <= bscan_ext_drck;
    reset   <= bscan_ext_reset;
    sel     <= bscan_ext_sel;
    shift   <= bscan_ext_shift;
    tdi     <= bscan_ext_tdi;

    Use_BSCANID : if C_BSCANID /= 0 generate
      signal bscanid : std_logic_vector(31 downto 0);
      signal idle    : boolean;

      attribute DONT_TOUCH : string;
      attribute DONT_TOUCH of bscanid : signal is "true";
      attribute DONT_TOUCH of idle    : signal is "true";
    begin

      BSCANID_Shift : process (bscan_ext_tck)
      begin
        if bscan_ext_tck'event and bscan_ext_tck = '1' then
          if reset = '1' then
            bscanid <= std_logic_vector(to_unsigned(C_BSCANID, 32));
            idle    <= true;
          elsif idle then
            bscanid <= std_logic_vector(to_unsigned(C_BSCANID, 32));
            idle    <= bscan_ext_bscanid_en = '0';
          elsif bscan_ext_bscanid_en = '0' then
            idle    <= true;
          else
            bscanid <= bscan_ext_tdi & bscanid(31 downto 1);
          end if;
        end if;
      end process BSCANID_Shift;

      No_Dbg_Reg_Access : if C_DBG_REG_ACCESS = 0 generate
      begin
        BUFG_UPDATE : MB_BUFG
          generic map (
            C_TARGET => C_TARGET
          )
          port map (
            O => update_i,
            I => bscan_ext_update
          );
      end generate No_Dbg_Reg_Access;

      Use_Dbg_Reg_Access : if C_DBG_REG_ACCESS = 1 generate
      begin
        update_i <= bscan_ext_update;
      end generate Use_Dbg_Reg_Access;

      bscan_ext_tdo <= bscanid(0) when bscan_ext_bscanid_en = '1' else tdo;
    end generate Use_BSCANID;

    No_BSCANID : if C_BSCANID = 0 generate
    begin
      update_i      <= bscan_ext_update;
      bscan_ext_tdo <= tdo;
    end generate No_BSCANID;

  end generate Use_External;

  No_External : if C_USE_BSCAN /= 2 and C_USE_BSCAN /= 4 generate
  begin
    bscan_ext_tdo <= '0';
  end generate No_External;

  Use_Dbg_Reg_Access : if C_DBG_REG_ACCESS = 1 and C_USE_BSCAN /= 3 generate
    signal dbgreg_select_n        : std_logic;
    signal dbgreg_drck_i          : std_logic;
    signal dbgreg_update_i        : std_logic;
    signal update_set             : std_logic;
    signal update_reset           : std_logic;
    signal busy_with_scan_reset   : std_logic;
    signal update_with_scan_reset : std_logic;
  begin

    dbgreg_select_n <= not dbgreg_select;

    -- drck <= dbgreg_drck when dbgreg_select = '1' else drck_i;

    dbgreg_drck_i <= dbgreg_drck;

    BUFGCTRL_DRCK : MB_BUFGCTRL
      generic map (
        C_TARGET     => C_TARGET,
        INIT_OUT     => 0,
        PRESELECT_I0 => true,
        PRESELECT_I1 => false
      )
      port map (
        O       => drck,
        CE0     => '1',
        CE1     => '1',
        I0      => drck_i,
        I1      => dbgreg_drck_i,
        IGNORE0 => '1',
        IGNORE1 => '1',
        S0      => dbgreg_select_n,
        S1      => dbgreg_select
      );

    -- update <= dbgreg_update when dbgreg_select = '1' else update_i;

    dbgreg_update_i <= dbgreg_update;

    BUFGCTRL_UPDATE : MB_BUFGCTRL
      generic map (
        C_TARGET     => C_TARGET,
        INIT_OUT     => 0,
        PRESELECT_I0 => true,
        PRESELECT_I1 => false
      )
      port map (
        O       => update,
        CE0     => '1',
        CE1     => '1',
        I0      => update_i,
        I1      => dbgreg_update_i,
        IGNORE0 => '1',
        IGNORE1 => '1',
        S0      => dbgreg_select_n,
        S1      => dbgreg_select
      );

    busy_with_scan_reset <= '0' when Scan_En = '1' else
                            not sel or update_set or Config_Reset when Scan_Reset_Sel = '0' else
                            Scan_Reset;

    Use_BSCANID : if (C_USE_BSCAN = 2 or C_USE_BSCAN = 4) and (C_BSCANID /= 0) generate
    begin
      JTAG_Busy_Detect : process (bscan_ext_tck, busy_with_scan_reset)
      begin
        if busy_with_scan_reset = '1' then
          jtag_busy <= '0';
          update_reset <= '1';
        elsif bscan_ext_tck'event and bscan_ext_tck = '1' then
          if sel = '1' and capture = '1' then
            jtag_busy <= '1';
          end if;
          update_reset <= '0';
        end if;
      end process JTAG_Busy_Detect;
    end generate Use_BSCANID;

    No_BSCANID : if (C_USE_BSCAN = 0) or (C_BSCANID = 0) generate
    begin
      JTAG_Busy_Detect : process (drck_i, busy_with_scan_reset)
      begin
        if busy_with_scan_reset = '1' then
          jtag_busy <= '0';
          update_reset <= '1';
        elsif drck_i'event and drck_i = '1' then
          if sel = '1' and capture = '1' then
            jtag_busy <= '1';
          end if;
          update_reset <= '0';
        end if;
      end process JTAG_Busy_Detect;
    end generate No_BSCANID;

    update_with_scan_reset <= '0' when Scan_En = '1' else
                              update_reset or Config_Reset when Scan_Reset_Sel = '0' else
                              Scan_Reset;

    JTAG_Update_Detect : process (update_i, update_with_scan_reset)
    begin
      if update_with_scan_reset = '1' then
        update_set <= '0';
      elsif update_i'event and update_i = '1' then
        update_set <= '1';
      end if;
    end process JTAG_Update_Detect;

  end generate Use_Dbg_Reg_Access;

  No_Dbg_Reg_Access : if C_DBG_REG_ACCESS = 0 and C_USE_BSCAN /= 3 generate
  begin

    BUFG_DRCK : MB_BUFG
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        O => drck,
        I => drck_i
      );

    update <= update_i;

    jtag_busy <= '0';
  end generate No_Dbg_Reg_Access;

  Use_Dbg_Reg_Access_No_BSCAN : if C_DBG_REG_ACCESS = 1 and C_USE_BSCAN = 3 and C_DEBUG_INTERFACE = 0 generate
    signal dbgreg_drck_i   : std_logic;
    signal dbgreg_update_i : std_logic;
  begin

    BUFG_DRCK : MB_BUFG
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        O => dbgreg_drck_i,
        I => dbgreg_drck
      );

    BUFG_UPDATE : MB_BUFG
      generic map (
        C_TARGET => C_TARGET
      )
      port map (
        O => dbgreg_update_i,
        I => dbgreg_update
      );

    drck      <= dbgreg_drck_i;
    update    <= dbgreg_update_i;
    jtag_busy <= '0';

    -- Unused
    tdi       <= '0';
    reset     <= '0';
    capture   <= '0';
    shift     <= '0';
    sel       <= '0';
    drck_i    <= '0';
    update_i  <= '0';
  end generate Use_Dbg_Reg_Access_No_BSCAN;

  Use_Parallel_Dbg_Reg_Access_No_BSCAN : if C_DBG_REG_ACCESS = 1 and C_USE_BSCAN = 3 and C_DEBUG_INTERFACE > 0 generate
  begin
    drck      <= bus2ip_clk;
    update    <= bus2ip_clk;
    jtag_busy <= '0';

    -- Unused
    tdi       <= '0';
    reset     <= '0';
    capture   <= '0';
    shift     <= '0';
    sel       <= '0';
    drck_i    <= '0';
    update_i  <= '0';
  end generate Use_Parallel_Dbg_Reg_Access_No_BSCAN;

  No_BSCAN_No_Dbg_Reg_Access : if C_DBG_REG_ACCESS = 0 and C_USE_BSCAN = 3 generate
  begin
    drck      <= '0';
    update    <= '0';
    jtag_busy <= '0';
    tdi       <= '0';
    reset     <= '0';
    capture   <= '0';
    shift     <= '0';
    sel       <= '0';
    drck_i    <= '0';
    update_i  <= '0';
  end generate No_BSCAN_No_Dbg_Reg_Access;

  ---------------------------------------------------------------------------
  -- MDM core
  ---------------------------------------------------------------------------
  MDM_Core_I1 : MDM_Core
    generic map (
      C_TARGET               => C_TARGET,                -- [TARGET_FAMILY_TYPE]
      C_JTAG_CHAIN           => C_JTAG_CHAIN,            -- [integer]
      C_USE_BSCAN            => C_USE_BSCAN,             -- [integer]
      C_USE_CONFIG_RESET     => C_USE_CONFIG_RESET,      -- [integer = 0]
      C_USE_SRL16            => C_USE_SRL16,             -- [string]
      C_DEBUG_INTERFACE      => C_DEBUG_INTERFACE,       -- [integer]
      C_MB_DBG_PORTS         => C_MB_DBG_PORTS,          -- [integer]
      C_EN_WIDTH             => C_EN_WIDTH,              -- [integer]
      C_DBG_REG_ACCESS       => C_DBG_REG_ACCESS,        -- [integer]
      C_REG_NUM_CE           => C_REG_NUM_CE,            -- [integer]
      C_REG_DATA_WIDTH       => C_REG_DATA_WIDTH,        -- [integer]
      C_DBG_MEM_ACCESS       => C_DBG_MEM_ACCESS,        -- [integer]
      C_S_AXI_ADDR_WIDTH     => C_S_AXI_ADDR_WIDTH,      -- [integer]
      C_S_AXI_ACLK_FREQ_HZ   => C_S_AXI_ACLK_FREQ_HZ,    -- [integer]
      C_M_AXI_ADDR_WIDTH     => C_M_AXI_ADDR_WIDTH,      -- [integer]
      C_M_AXI_DATA_WIDTH     => C_M_AXI_DATA_WIDTH,      -- [integer]
      C_USE_CROSS_TRIGGER    => C_USE_CROSS_TRIGGER,     -- [integer]
      C_EXT_TRIG_RESET_VALUE => C_EXT_TRIG_RESET_VALUE,  -- [std_logic_vector]
      C_USE_UART             => C_USE_UART,              -- [integer]
      C_UART_WIDTH           => 8,                       -- [integer]
      C_TRACE_OUTPUT         => C_TRACE_OUTPUT,          -- [integer]
      C_TRACE_DATA_WIDTH     => C_TRACE_DATA_WIDTH,      -- [integer]
      C_TRACE_ASYNC_RESET    => C_TRACE_ASYNC_RESET,     -- [integer]
      C_TRACE_CLK_FREQ_HZ    => C_TRACE_CLK_FREQ_HZ,     -- [integer]
      C_TRACE_CLK_OUT_PHASE  => C_TRACE_CLK_OUT_PHASE,   -- [integer]
      C_TRACE_PROTOCOL       => C_TRACE_PROTOCOL,        -- [integer]
      C_TRACE_ID             => C_TRACE_ID,              -- [integer]
      C_M_AXIS_DATA_WIDTH    => C_M_AXIS_DATA_WIDTH,     -- [integer]
      C_M_AXIS_ID_WIDTH      => C_M_AXIS_ID_WIDTH        -- [integer]
    )
    port map (
      -- Global signals
      Config_Reset    => Config_Reset,    -- [in  std_logic]
      Scan_Reset_Sel  => Scan_Reset_Sel,  -- [in  std_logic]
      Scan_Reset      => Scan_Reset,      -- [in  std_logic]
      Scan_En         => Scan_En,         -- [in  std_logic]

      M_AXIS_ACLK     => M_AXIS_ACLK,     -- [in  std_logic]
      M_AXIS_ARESETN  => M_AXIS_ARESETN,  -- [in  std_logic]

      Interrupt       => Interrupt,       -- [out std_logic]
      Ext_BRK         => Ext_BRK,         -- [out std_logic]
      Ext_NM_BRK      => Ext_NM_BRK,      -- [out std_logic]
      Debug_SYS_Rst   => Debug_SYS_Rst,   -- [out std_logic]

      -- Debug Register Access signals
      DbgReg_DRCK   => dbgreg_drck,       -- [out std_logic]
      DbgReg_UPDATE => dbgreg_update,     -- [out std_logic]
      DbgReg_Select => dbgreg_select,     -- [out std_logic]
      JTAG_Busy     => jtag_busy,         -- [in  std_logic]
      S_AXI_AWADDR  => S_AXI_AWADDR,      -- [in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0)]
      S_AXI_ARADDR  => S_AXI_ARADDR,      -- [in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0)]

      -- AXI IPIC signals
      bus2ip_clk    => bus2ip_clk_i,
      bus2ip_resetn => bus2ip_resetn,
      bus2ip_data   => bus2ip_data(C_REG_DATA_WIDTH-1 downto 0),
      bus2ip_rdce   => bus2ip_rdce(C_REG_NUM_CE-1 downto 0),
      bus2ip_wrce   => bus2ip_wrce(C_REG_NUM_CE-1 downto 0),
      ip2bus_rdack  => ip2bus_rdack,
      ip2bus_wrack  => ip2bus_wrack,
      ip2bus_error  => ip2bus_error,
      ip2bus_data   => ip2bus_data(C_REG_DATA_WIDTH-1 downto 0),

      -- Bus Master signals
      MB_Debug_Enabled   => mb_debug_enabled,

      M_AXI_ACLK         => M_AXI_ACLK,
      M_AXI_ARESETn      => M_AXI_ARESETn,

      Master_rd_start    => master_rd_start,
      Master_rd_addr     => master_rd_addr,
      Master_rd_len      => master_rd_len,
      Master_rd_size     => master_rd_size,
      Master_rd_excl     => master_rd_excl,
      Master_rd_idle     => master_rd_idle,
      Master_rd_resp     => master_rd_resp,
      Master_wr_start    => master_wr_start,
      Master_wr_addr     => master_wr_addr,
      Master_wr_len      => master_wr_len,
      Master_wr_size     => master_wr_size,
      Master_wr_excl     => master_wr_excl,
      Master_wr_idle     => master_wr_idle,
      Master_wr_resp     => master_wr_resp,
      Master_data_rd     => master_data_rd,
      Master_data_out    => master_data_out,
      Master_data_exists => master_data_exists,
      Master_data_wr     => master_data_wr,
      Master_data_in     => master_data_in,
      Master_data_empty  => master_data_empty,

      Master_dwr_addr    => master_dwr_addr,
      Master_dwr_len     => master_dwr_len,
      Master_dwr_data    => master_dwr_data,
      Master_dwr_start   => master_dwr_start,
      Master_dwr_next    => master_dwr_next,
      Master_dwr_done    => master_dwr_done,
      Master_dwr_resp    => master_dwr_resp,

      -- JTAG signals
      JTAG_TDI     => tdi,              -- [in  std_logic]
      JTAG_RESET   => reset,            -- [in  std_logic]
      UPDATE       => update,           -- [in  std_logic]
      JTAG_SHIFT   => shift,            -- [in  std_logic]
      JTAG_CAPTURE => capture,          -- [in  std_logic]
      SEL          => sel,              -- [in  std_logic]
      DRCK         => drck,             -- [in  std_logic]
      JTAG_TDO     => tdo,              -- [out std_logic]

      -- External Trace AXI Stream output
      M_AXIS_TDATA       => M_AXIS_TDATA,   -- [out std_logic_vector(C_M_AXIS_DATA_WIDTH-1 downto 0)]
      M_AXIS_TID         => M_AXIS_TID,     -- [out std_logic_vector(C_M_AXIS_ID_WIDTH-1 downto 0)]
      M_AXIS_TREADY      => M_AXIS_TREADY,  -- [in  std_logic]
      M_AXIS_TVALID      => M_AXIS_TVALID,  -- [out std_logic]

      -- External Trace output
      TRACE_CLK_OUT      => TRACE_CLK_OUT,  -- [out std_logic]
      TRACE_CLK          => TRACE_CLK,      -- [in  std_logic]
      TRACE_CTL          => TRACE_CTL,      -- [out std_logic]
      TRACE_DATA         => TRACE_DATA,     -- [out std_logic_vector(C_TRACE_DATA_WIDTH-1 downto 0)]

      -- MicroBlaze Debug Signals
      Dbg_Disable_0      => Dbg_Disable_0,      -- [out std_logic]
      Dbg_Clk_0          => Dbg_Clk_0,          -- [out std_logic]
      Dbg_TDI_0          => Dbg_TDI_0,          -- [out std_logic]
      Dbg_TDO_0          => Dbg_TDO_0,          -- [in  std_logic]
      Dbg_Reg_En_0       => Dbg_Reg_En_0,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_0      => Dbg_Capture_0,      -- [out std_logic]
      Dbg_Shift_0        => Dbg_Shift_0,        -- [out std_logic]
      Dbg_Update_0       => Dbg_Update_0,       -- [out std_logic]
      Dbg_Rst_0          => Dbg_Rst_0,          -- [out std_logic]
      Dbg_Trig_In_0      => Dbg_Trig_In_0,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_0  => Dbg_Trig_Ack_In_0,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_0     => Dbg_Trig_Out_0,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_0 => Dbg_Trig_Ack_Out_0, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_0        => Dbg_TrClk_0,        -- [out std_logic]
      Dbg_TrData_0       => Dbg_TrData_0,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_0      => Dbg_TrReady_0,      -- [out std_logic]
      Dbg_TrValid_0      => Dbg_TrValid_0,      -- [in  std_logic]
      Dbg_AWADDR_0       => Dbg_AWADDR_0,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_0      => Dbg_AWVALID_0,      -- [out std_logic]
      Dbg_AWREADY_0      => Dbg_AWREADY_0,      -- [in  std_logic]
      Dbg_WDATA_0        => Dbg_WDATA_0,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_0       => Dbg_WVALID_0,       -- [out std_logic]
      Dbg_WREADY_0       => Dbg_WREADY_0,       -- [in  std_logic]
      Dbg_BRESP_0        => Dbg_BRESP_0,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_0       => Dbg_BVALID_0,       -- [in  std_logic]
      Dbg_BREADY_0       => Dbg_BREADY_0,       -- [out std_logic]
      Dbg_ARADDR_0       => Dbg_ARADDR_0,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_0      => Dbg_ARVALID_0,      -- [out std_logic]
      Dbg_ARREADY_0      => Dbg_ARREADY_0,      -- [in  std_logic]
      Dbg_RDATA_0        => Dbg_RDATA_0,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_0        => Dbg_RRESP_0,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_0       => Dbg_RVALID_0,       -- [in  std_logic]
      Dbg_RREADY_0       => Dbg_RREADY_0,       -- [out std_logic]

      Dbg_Disable_1      => Dbg_Disable_1,      -- [out std_logic]
      Dbg_Clk_1          => Dbg_Clk_1,          -- [out std_logic]
      Dbg_TDI_1          => Dbg_TDI_1,          -- [out std_logic]
      Dbg_TDO_1          => Dbg_TDO_1,          -- [in  std_logic]
      Dbg_Reg_En_1       => Dbg_Reg_En_1,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_1      => Dbg_Capture_1,      -- [out std_logic]
      Dbg_Shift_1        => Dbg_Shift_1,        -- [out std_logic]
      Dbg_Update_1       => Dbg_Update_1,       -- [out std_logic]
      Dbg_Rst_1          => Dbg_Rst_1,          -- [out std_logic]
      Dbg_Trig_In_1      => Dbg_Trig_In_1,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_1  => Dbg_Trig_Ack_In_1,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_1     => Dbg_Trig_Out_1,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_1 => Dbg_Trig_Ack_Out_1, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_1        => Dbg_TrClk_1,        -- [out std_logic]
      Dbg_TrData_1       => Dbg_TrData_1,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_1      => Dbg_TrReady_1,      -- [out std_logic]
      Dbg_TrValid_1      => Dbg_TrValid_1,      -- [in  std_logic]
      Dbg_AWADDR_1       => Dbg_AWADDR_1,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_1      => Dbg_AWVALID_1,      -- [out std_logic]
      Dbg_AWREADY_1      => Dbg_AWREADY_1,      -- [in  std_logic]
      Dbg_WDATA_1        => Dbg_WDATA_1,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_1       => Dbg_WVALID_1,       -- [out std_logic]
      Dbg_WREADY_1       => Dbg_WREADY_1,       -- [in  std_logic]
      Dbg_BRESP_1        => Dbg_BRESP_1,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_1       => Dbg_BVALID_1,       -- [in  std_logic]
      Dbg_BREADY_1       => Dbg_BREADY_1,       -- [out std_logic]
      Dbg_ARADDR_1       => Dbg_ARADDR_1,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_1      => Dbg_ARVALID_1,      -- [out std_logic]
      Dbg_ARREADY_1      => Dbg_ARREADY_1,      -- [in  std_logic]
      Dbg_RDATA_1        => Dbg_RDATA_1,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_1        => Dbg_RRESP_1,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_1       => Dbg_RVALID_1,       -- [in  std_logic]
      Dbg_RREADY_1       => Dbg_RREADY_1,       -- [out std_logic]

      Dbg_Disable_2      => Dbg_Disable_2,      -- [out std_logic]
      Dbg_Clk_2          => Dbg_Clk_2,          -- [out std_logic]
      Dbg_TDI_2          => Dbg_TDI_2,          -- [out std_logic]
      Dbg_TDO_2          => Dbg_TDO_2,          -- [in  std_logic]
      Dbg_Reg_En_2       => Dbg_Reg_En_2,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_2      => Dbg_Capture_2,      -- [out std_logic]
      Dbg_Shift_2        => Dbg_Shift_2,        -- [out std_logic]
      Dbg_Update_2       => Dbg_Update_2,       -- [out std_logic]
      Dbg_Rst_2          => Dbg_Rst_2,          -- [out std_logic]
      Dbg_Trig_In_2      => Dbg_Trig_In_2,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_2  => Dbg_Trig_Ack_In_2,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_2     => Dbg_Trig_Out_2,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_2 => Dbg_Trig_Ack_Out_2, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_2        => Dbg_TrClk_2,        -- [out std_logic]
      Dbg_TrData_2       => Dbg_TrData_2,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_2      => Dbg_TrReady_2,      -- [out std_logic]
      Dbg_TrValid_2      => Dbg_TrValid_2,      -- [in  std_logic]
      Dbg_AWADDR_2       => Dbg_AWADDR_2,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_2      => Dbg_AWVALID_2,      -- [out std_logic]
      Dbg_AWREADY_2      => Dbg_AWREADY_2,      -- [in  std_logic]
      Dbg_WDATA_2        => Dbg_WDATA_2,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_2       => Dbg_WVALID_2,       -- [out std_logic]
      Dbg_WREADY_2       => Dbg_WREADY_2,       -- [in  std_logic]
      Dbg_BRESP_2        => Dbg_BRESP_2,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_2       => Dbg_BVALID_2,       -- [in  std_logic]
      Dbg_BREADY_2       => Dbg_BREADY_2,       -- [out std_logic]
      Dbg_ARADDR_2       => Dbg_ARADDR_2,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_2      => Dbg_ARVALID_2,      -- [out std_logic]
      Dbg_ARREADY_2      => Dbg_ARREADY_2,      -- [in  std_logic]
      Dbg_RDATA_2        => Dbg_RDATA_2,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_2        => Dbg_RRESP_2,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_2       => Dbg_RVALID_2,       -- [in  std_logic]
      Dbg_RREADY_2       => Dbg_RREADY_2,       -- [out std_logic]

      Dbg_Disable_3      => Dbg_Disable_3,      -- [out std_logic]
      Dbg_Clk_3          => Dbg_Clk_3,          -- [out std_logic]
      Dbg_TDI_3          => Dbg_TDI_3,          -- [out std_logic]
      Dbg_TDO_3          => Dbg_TDO_3,          -- [in  std_logic]
      Dbg_Reg_En_3       => Dbg_Reg_En_3,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_3      => Dbg_Capture_3,      -- [out std_logic]
      Dbg_Shift_3        => Dbg_Shift_3,        -- [out std_logic]
      Dbg_Update_3       => Dbg_Update_3,       -- [out std_logic]
      Dbg_Rst_3          => Dbg_Rst_3,          -- [out std_logic]
      Dbg_Trig_In_3      => Dbg_Trig_In_3,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_3  => Dbg_Trig_Ack_In_3,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_3     => Dbg_Trig_Out_3,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_3 => Dbg_Trig_Ack_Out_3, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_3        => Dbg_TrClk_3,        -- [out std_logic]
      Dbg_TrData_3       => Dbg_TrData_3,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_3      => Dbg_TrReady_3,      -- [out std_logic]
      Dbg_TrValid_3      => Dbg_TrValid_3,      -- [in  std_logic]
      Dbg_AWADDR_3       => Dbg_AWADDR_3,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_3      => Dbg_AWVALID_3,      -- [out std_logic]
      Dbg_AWREADY_3      => Dbg_AWREADY_3,      -- [in  std_logic]
      Dbg_WDATA_3        => Dbg_WDATA_3,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_3       => Dbg_WVALID_3,       -- [out std_logic]
      Dbg_WREADY_3       => Dbg_WREADY_3,       -- [in  std_logic]
      Dbg_BRESP_3        => Dbg_BRESP_3,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_3       => Dbg_BVALID_3,       -- [in  std_logic]
      Dbg_BREADY_3       => Dbg_BREADY_3,       -- [out std_logic]
      Dbg_ARADDR_3       => Dbg_ARADDR_3,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_3      => Dbg_ARVALID_3,      -- [out std_logic]
      Dbg_ARREADY_3      => Dbg_ARREADY_3,      -- [in  std_logic]
      Dbg_RDATA_3        => Dbg_RDATA_3,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_3        => Dbg_RRESP_3,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_3       => Dbg_RVALID_3,       -- [in  std_logic]
      Dbg_RREADY_3       => Dbg_RREADY_3,       -- [out std_logic]

      Dbg_Disable_4      => Dbg_Disable_4,      -- [out std_logic]
      Dbg_Clk_4          => Dbg_Clk_4,          -- [out std_logic]
      Dbg_TDI_4          => Dbg_TDI_4,          -- [out std_logic]
      Dbg_TDO_4          => Dbg_TDO_4,          -- [in  std_logic]
      Dbg_Reg_En_4       => Dbg_Reg_En_4,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_4      => Dbg_Capture_4,      -- [out std_logic]
      Dbg_Shift_4        => Dbg_Shift_4,        -- [out std_logic]
      Dbg_Update_4       => Dbg_Update_4,       -- [out std_logic]
      Dbg_Rst_4          => Dbg_Rst_4,          -- [out std_logic]
      Dbg_Trig_In_4      => Dbg_Trig_In_4,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_4  => Dbg_Trig_Ack_In_4,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_4     => Dbg_Trig_Out_4,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_4 => Dbg_Trig_Ack_Out_4, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_4        => Dbg_TrClk_4,        -- [out std_logic]
      Dbg_TrData_4       => Dbg_TrData_4,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_4      => Dbg_TrReady_4,      -- [out std_logic]
      Dbg_TrValid_4      => Dbg_TrValid_4,      -- [in  std_logic]
      Dbg_AWADDR_4       => Dbg_AWADDR_4,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_4      => Dbg_AWVALID_4,      -- [out std_logic]
      Dbg_AWREADY_4      => Dbg_AWREADY_4,      -- [in  std_logic]
      Dbg_WDATA_4        => Dbg_WDATA_4,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_4       => Dbg_WVALID_4,       -- [out std_logic]
      Dbg_WREADY_4       => Dbg_WREADY_4,       -- [in  std_logic]
      Dbg_BRESP_4        => Dbg_BRESP_4,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_4       => Dbg_BVALID_4,       -- [in  std_logic]
      Dbg_BREADY_4       => Dbg_BREADY_4,       -- [out std_logic]
      Dbg_ARADDR_4       => Dbg_ARADDR_4,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_4      => Dbg_ARVALID_4,      -- [out std_logic]
      Dbg_ARREADY_4      => Dbg_ARREADY_4,      -- [in  std_logic]
      Dbg_RDATA_4        => Dbg_RDATA_4,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_4        => Dbg_RRESP_4,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_4       => Dbg_RVALID_4,       -- [in  std_logic]
      Dbg_RREADY_4       => Dbg_RREADY_4,       -- [out std_logic]

      Dbg_Disable_5      => Dbg_Disable_5,      -- [out std_logic]
      Dbg_Clk_5          => Dbg_Clk_5,          -- [out std_logic]
      Dbg_TDI_5          => Dbg_TDI_5,          -- [out std_logic]
      Dbg_TDO_5          => Dbg_TDO_5,          -- [in  std_logic]
      Dbg_Reg_En_5       => Dbg_Reg_En_5,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_5      => Dbg_Capture_5,      -- [out std_logic]
      Dbg_Shift_5        => Dbg_Shift_5,        -- [out std_logic]
      Dbg_Update_5       => Dbg_Update_5,       -- [out std_logic]
      Dbg_Rst_5          => Dbg_Rst_5,          -- [out std_logic]
      Dbg_Trig_In_5      => Dbg_Trig_In_5,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_5  => Dbg_Trig_Ack_In_5,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_5     => Dbg_Trig_Out_5,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_5 => Dbg_Trig_Ack_Out_5, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_5        => Dbg_TrClk_5,        -- [out std_logic]
      Dbg_TrData_5       => Dbg_TrData_5,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_5      => Dbg_TrReady_5,      -- [out std_logic]
      Dbg_TrValid_5      => Dbg_TrValid_5,      -- [in  std_logic]
      Dbg_AWADDR_5       => Dbg_AWADDR_5,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_5      => Dbg_AWVALID_5,      -- [out std_logic]
      Dbg_AWREADY_5      => Dbg_AWREADY_5,      -- [in  std_logic]
      Dbg_WDATA_5        => Dbg_WDATA_5,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_5       => Dbg_WVALID_5,       -- [out std_logic]
      Dbg_WREADY_5       => Dbg_WREADY_5,       -- [in  std_logic]
      Dbg_BRESP_5        => Dbg_BRESP_5,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_5       => Dbg_BVALID_5,       -- [in  std_logic]
      Dbg_BREADY_5       => Dbg_BREADY_5,       -- [out std_logic]
      Dbg_ARADDR_5       => Dbg_ARADDR_5,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_5      => Dbg_ARVALID_5,      -- [out std_logic]
      Dbg_ARREADY_5      => Dbg_ARREADY_5,      -- [in  std_logic]
      Dbg_RDATA_5        => Dbg_RDATA_5,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_5        => Dbg_RRESP_5,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_5       => Dbg_RVALID_5,       -- [in  std_logic]
      Dbg_RREADY_5       => Dbg_RREADY_5,       -- [out std_logic]

      Dbg_Disable_6      => Dbg_Disable_6,      -- [out std_logic]
      Dbg_Clk_6          => Dbg_Clk_6,          -- [out std_logic]
      Dbg_TDI_6          => Dbg_TDI_6,          -- [out std_logic]
      Dbg_TDO_6          => Dbg_TDO_6,          -- [in  std_logic]
      Dbg_Reg_En_6       => Dbg_Reg_En_6,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_6      => Dbg_Capture_6,      -- [out std_logic]
      Dbg_Shift_6        => Dbg_Shift_6,        -- [out std_logic]
      Dbg_Update_6       => Dbg_Update_6,       -- [out std_logic]
      Dbg_Rst_6          => Dbg_Rst_6,          -- [out std_logic]
      Dbg_Trig_In_6      => Dbg_Trig_In_6,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_6  => Dbg_Trig_Ack_In_6,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_6     => Dbg_Trig_Out_6,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_6 => Dbg_Trig_Ack_Out_6, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_6        => Dbg_TrClk_6,        -- [out std_logic]
      Dbg_TrData_6       => Dbg_TrData_6,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_6      => Dbg_TrReady_6,      -- [out std_logic]
      Dbg_TrValid_6      => Dbg_TrValid_6,      -- [in  std_logic]
      Dbg_AWADDR_6       => Dbg_AWADDR_6,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_6      => Dbg_AWVALID_6,      -- [out std_logic]
      Dbg_AWREADY_6      => Dbg_AWREADY_6,      -- [in  std_logic]
      Dbg_WDATA_6        => Dbg_WDATA_6,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_6       => Dbg_WVALID_6,       -- [out std_logic]
      Dbg_WREADY_6       => Dbg_WREADY_6,       -- [in  std_logic]
      Dbg_BRESP_6        => Dbg_BRESP_6,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_6       => Dbg_BVALID_6,       -- [in  std_logic]
      Dbg_BREADY_6       => Dbg_BREADY_6,       -- [out std_logic]
      Dbg_ARADDR_6       => Dbg_ARADDR_6,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_6      => Dbg_ARVALID_6,      -- [out std_logic]
      Dbg_ARREADY_6      => Dbg_ARREADY_6,      -- [in  std_logic]
      Dbg_RDATA_6        => Dbg_RDATA_6,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_6        => Dbg_RRESP_6,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_6       => Dbg_RVALID_6,       -- [in  std_logic]
      Dbg_RREADY_6       => Dbg_RREADY_6,       -- [out std_logic]

      Dbg_Disable_7      => Dbg_Disable_7,      -- [out std_logic]
      Dbg_Clk_7          => Dbg_Clk_7,          -- [out std_logic]
      Dbg_TDI_7          => Dbg_TDI_7,          -- [out std_logic]
      Dbg_TDO_7          => Dbg_TDO_7,          -- [in  std_logic]
      Dbg_Reg_En_7       => Dbg_Reg_En_7,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_7      => Dbg_Capture_7,      -- [out std_logic]
      Dbg_Shift_7        => Dbg_Shift_7,        -- [out std_logic]
      Dbg_Update_7       => Dbg_Update_7,       -- [out std_logic]
      Dbg_Rst_7          => Dbg_Rst_7,          -- [out std_logic]
      Dbg_Trig_In_7      => Dbg_Trig_In_7,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_7  => Dbg_Trig_Ack_In_7,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_7     => Dbg_Trig_Out_7,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_7 => Dbg_Trig_Ack_Out_7, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_7        => Dbg_TrClk_7,        -- [out std_logic]
      Dbg_TrData_7       => Dbg_TrData_7,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_7      => Dbg_TrReady_7,      -- [out std_logic]
      Dbg_TrValid_7      => Dbg_TrValid_7,      -- [in  std_logic]
      Dbg_AWADDR_7       => Dbg_AWADDR_7,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_7      => Dbg_AWVALID_7,      -- [out std_logic]
      Dbg_AWREADY_7      => Dbg_AWREADY_7,      -- [in  std_logic]
      Dbg_WDATA_7        => Dbg_WDATA_7,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_7       => Dbg_WVALID_7,       -- [out std_logic]
      Dbg_WREADY_7       => Dbg_WREADY_7,       -- [in  std_logic]
      Dbg_BRESP_7        => Dbg_BRESP_7,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_7       => Dbg_BVALID_7,       -- [in  std_logic]
      Dbg_BREADY_7       => Dbg_BREADY_7,       -- [out std_logic]
      Dbg_ARADDR_7       => Dbg_ARADDR_7,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_7      => Dbg_ARVALID_7,      -- [out std_logic]
      Dbg_ARREADY_7      => Dbg_ARREADY_7,      -- [in  std_logic]
      Dbg_RDATA_7        => Dbg_RDATA_7,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_7        => Dbg_RRESP_7,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_7       => Dbg_RVALID_7,       -- [in  std_logic]
      Dbg_RREADY_7       => Dbg_RREADY_7,       -- [out std_logic]

      Dbg_Disable_8      => Dbg_Disable_8,      -- [out std_logic]
      Dbg_Clk_8          => Dbg_Clk_8,          -- [out std_logic]
      Dbg_TDI_8          => Dbg_TDI_8,          -- [out std_logic]
      Dbg_TDO_8          => Dbg_TDO_8,          -- [in  std_logic]
      Dbg_Reg_En_8       => Dbg_Reg_En_8,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_8      => Dbg_Capture_8,      -- [out std_logic]
      Dbg_Shift_8        => Dbg_Shift_8,        -- [out std_logic]
      Dbg_Update_8       => Dbg_Update_8,       -- [out std_logic]
      Dbg_Rst_8          => Dbg_Rst_8,          -- [out std_logic]
      Dbg_Trig_In_8      => Dbg_Trig_In_8,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_8  => Dbg_Trig_Ack_In_8,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_8     => Dbg_Trig_Out_8,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_8 => Dbg_Trig_Ack_Out_8, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_8        => Dbg_TrClk_8,        -- [out std_logic]
      Dbg_TrData_8       => Dbg_TrData_8,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_8      => Dbg_TrReady_8,      -- [out std_logic]
      Dbg_TrValid_8      => Dbg_TrValid_8,      -- [in  std_logic]
      Dbg_AWADDR_8       => Dbg_AWADDR_8,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_8      => Dbg_AWVALID_8,      -- [out std_logic]
      Dbg_AWREADY_8      => Dbg_AWREADY_8,      -- [in  std_logic]
      Dbg_WDATA_8        => Dbg_WDATA_8,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_8       => Dbg_WVALID_8,       -- [out std_logic]
      Dbg_WREADY_8       => Dbg_WREADY_8,       -- [in  std_logic]
      Dbg_BRESP_8        => Dbg_BRESP_8,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_8       => Dbg_BVALID_8,       -- [in  std_logic]
      Dbg_BREADY_8       => Dbg_BREADY_8,       -- [out std_logic]
      Dbg_ARADDR_8       => Dbg_ARADDR_8,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_8      => Dbg_ARVALID_8,      -- [out std_logic]
      Dbg_ARREADY_8      => Dbg_ARREADY_8,      -- [in  std_logic]
      Dbg_RDATA_8        => Dbg_RDATA_8,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_8        => Dbg_RRESP_8,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_8       => Dbg_RVALID_8,       -- [in  std_logic]
      Dbg_RREADY_8       => Dbg_RREADY_8,       -- [out std_logic]

      Dbg_Disable_9      => Dbg_Disable_9,      -- [out std_logic]
      Dbg_Clk_9          => Dbg_Clk_9,          -- [out std_logic]
      Dbg_TDI_9          => Dbg_TDI_9,          -- [out std_logic]
      Dbg_TDO_9          => Dbg_TDO_9,          -- [in  std_logic]
      Dbg_Reg_En_9       => Dbg_Reg_En_9,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_9      => Dbg_Capture_9,      -- [out std_logic]
      Dbg_Shift_9        => Dbg_Shift_9,        -- [out std_logic]
      Dbg_Update_9       => Dbg_Update_9,       -- [out std_logic]
      Dbg_Rst_9          => Dbg_Rst_9,          -- [out std_logic]
      Dbg_Trig_In_9      => Dbg_Trig_In_9,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_9  => Dbg_Trig_Ack_In_9,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_9     => Dbg_Trig_Out_9,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_9 => Dbg_Trig_Ack_Out_9, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_9        => Dbg_TrClk_9,        -- [out std_logic]
      Dbg_TrData_9       => Dbg_TrData_9,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_9      => Dbg_TrReady_9,      -- [out std_logic]
      Dbg_TrValid_9      => Dbg_TrValid_9,      -- [in  std_logic]
      Dbg_AWADDR_9       => Dbg_AWADDR_9,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_9      => Dbg_AWVALID_9,      -- [out std_logic]
      Dbg_AWREADY_9      => Dbg_AWREADY_9,      -- [in  std_logic]
      Dbg_WDATA_9        => Dbg_WDATA_9,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_9       => Dbg_WVALID_9,       -- [out std_logic]
      Dbg_WREADY_9       => Dbg_WREADY_9,       -- [in  std_logic]
      Dbg_BRESP_9        => Dbg_BRESP_9,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_9       => Dbg_BVALID_9,       -- [in  std_logic]
      Dbg_BREADY_9       => Dbg_BREADY_9,       -- [out std_logic]
      Dbg_ARADDR_9       => Dbg_ARADDR_9,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_9      => Dbg_ARVALID_9,      -- [out std_logic]
      Dbg_ARREADY_9      => Dbg_ARREADY_9,      -- [in  std_logic]
      Dbg_RDATA_9        => Dbg_RDATA_9,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_9        => Dbg_RRESP_9,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_9       => Dbg_RVALID_9,       -- [in  std_logic]
      Dbg_RREADY_9       => Dbg_RREADY_9,       -- [out std_logic]

      Dbg_Disable_10      => Dbg_Disable_10,      -- [out std_logic]
      Dbg_Clk_10          => Dbg_Clk_10,          -- [out std_logic]
      Dbg_TDI_10          => Dbg_TDI_10,          -- [out std_logic]
      Dbg_TDO_10          => Dbg_TDO_10,          -- [in  std_logic]
      Dbg_Reg_En_10       => Dbg_Reg_En_10,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_10      => Dbg_Capture_10,      -- [out std_logic]
      Dbg_Shift_10        => Dbg_Shift_10,        -- [out std_logic]
      Dbg_Update_10       => Dbg_Update_10,       -- [out std_logic]
      Dbg_Rst_10          => Dbg_Rst_10,          -- [out std_logic]
      Dbg_Trig_In_10      => Dbg_Trig_In_10,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_10  => Dbg_Trig_Ack_In_10,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_10     => Dbg_Trig_Out_10,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_10 => Dbg_Trig_Ack_Out_10, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_10        => Dbg_TrClk_10,        -- [out std_logic]
      Dbg_TrData_10       => Dbg_TrData_10,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_10      => Dbg_TrReady_10,      -- [out std_logic]
      Dbg_TrValid_10      => Dbg_TrValid_10,      -- [in  std_logic]
      Dbg_AWADDR_10       => Dbg_AWADDR_10,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_10      => Dbg_AWVALID_10,      -- [out std_logic]
      Dbg_AWREADY_10      => Dbg_AWREADY_10,      -- [in  std_logic]
      Dbg_WDATA_10        => Dbg_WDATA_10,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_10       => Dbg_WVALID_10,       -- [out std_logic]
      Dbg_WREADY_10       => Dbg_WREADY_10,       -- [in  std_logic]
      Dbg_BRESP_10        => Dbg_BRESP_10,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_10       => Dbg_BVALID_10,       -- [in  std_logic]
      Dbg_BREADY_10       => Dbg_BREADY_10,       -- [out std_logic]
      Dbg_ARADDR_10       => Dbg_ARADDR_10,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_10      => Dbg_ARVALID_10,      -- [out std_logic]
      Dbg_ARREADY_10      => Dbg_ARREADY_10,      -- [in  std_logic]
      Dbg_RDATA_10        => Dbg_RDATA_10,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_10        => Dbg_RRESP_10,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_10       => Dbg_RVALID_10,       -- [in  std_logic]
      Dbg_RREADY_10       => Dbg_RREADY_10,       -- [out std_logic]

      Dbg_Disable_11      => Dbg_Disable_11,      -- [out std_logic]
      Dbg_Clk_11          => Dbg_Clk_11,          -- [out std_logic]
      Dbg_TDI_11          => Dbg_TDI_11,          -- [out std_logic]
      Dbg_TDO_11          => Dbg_TDO_11,          -- [in  std_logic]
      Dbg_Reg_En_11       => Dbg_Reg_En_11,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_11      => Dbg_Capture_11,      -- [out std_logic]
      Dbg_Shift_11        => Dbg_Shift_11,        -- [out std_logic]
      Dbg_Update_11       => Dbg_Update_11,       -- [out std_logic]
      Dbg_Rst_11          => Dbg_Rst_11,          -- [out std_logic]
      Dbg_Trig_In_11      => Dbg_Trig_In_11,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_11  => Dbg_Trig_Ack_In_11,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_11     => Dbg_Trig_Out_11,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_11 => Dbg_Trig_Ack_Out_11, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_11        => Dbg_TrClk_11,        -- [out std_logic]
      Dbg_TrData_11       => Dbg_TrData_11,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_11      => Dbg_TrReady_11,      -- [out std_logic]
      Dbg_TrValid_11      => Dbg_TrValid_11,      -- [in  std_logic]
      Dbg_AWADDR_11       => Dbg_AWADDR_11,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_11      => Dbg_AWVALID_11,      -- [out std_logic]
      Dbg_AWREADY_11      => Dbg_AWREADY_11,      -- [in  std_logic]
      Dbg_WDATA_11        => Dbg_WDATA_11,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_11       => Dbg_WVALID_11,       -- [out std_logic]
      Dbg_WREADY_11       => Dbg_WREADY_11,       -- [in  std_logic]
      Dbg_BRESP_11        => Dbg_BRESP_11,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_11       => Dbg_BVALID_11,       -- [in  std_logic]
      Dbg_BREADY_11       => Dbg_BREADY_11,       -- [out std_logic]
      Dbg_ARADDR_11       => Dbg_ARADDR_11,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_11      => Dbg_ARVALID_11,      -- [out std_logic]
      Dbg_ARREADY_11      => Dbg_ARREADY_11,      -- [in  std_logic]
      Dbg_RDATA_11        => Dbg_RDATA_11,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_11        => Dbg_RRESP_11,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_11       => Dbg_RVALID_11,       -- [in  std_logic]
      Dbg_RREADY_11       => Dbg_RREADY_11,       -- [out std_logic]

      Dbg_Disable_12      => Dbg_Disable_12,      -- [out std_logic]
      Dbg_Clk_12          => Dbg_Clk_12,          -- [out std_logic]
      Dbg_TDI_12          => Dbg_TDI_12,          -- [out std_logic]
      Dbg_TDO_12          => Dbg_TDO_12,          -- [in  std_logic]
      Dbg_Reg_En_12       => Dbg_Reg_En_12,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_12      => Dbg_Capture_12,      -- [out std_logic]
      Dbg_Shift_12        => Dbg_Shift_12,        -- [out std_logic]
      Dbg_Update_12       => Dbg_Update_12,       -- [out std_logic]
      Dbg_Rst_12          => Dbg_Rst_12,          -- [out std_logic]
      Dbg_Trig_In_12      => Dbg_Trig_In_12,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_12  => Dbg_Trig_Ack_In_12,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_12     => Dbg_Trig_Out_12,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_12 => Dbg_Trig_Ack_Out_12, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_12        => Dbg_TrClk_12,        -- [out std_logic]
      Dbg_TrData_12       => Dbg_TrData_12,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_12      => Dbg_TrReady_12,      -- [out std_logic]
      Dbg_TrValid_12      => Dbg_TrValid_12,      -- [in  std_logic]
      Dbg_AWADDR_12       => Dbg_AWADDR_12,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_12      => Dbg_AWVALID_12,      -- [out std_logic]
      Dbg_AWREADY_12      => Dbg_AWREADY_12,      -- [in  std_logic]
      Dbg_WDATA_12        => Dbg_WDATA_12,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_12       => Dbg_WVALID_12,       -- [out std_logic]
      Dbg_WREADY_12       => Dbg_WREADY_12,       -- [in  std_logic]
      Dbg_BRESP_12        => Dbg_BRESP_12,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_12       => Dbg_BVALID_12,       -- [in  std_logic]
      Dbg_BREADY_12       => Dbg_BREADY_12,       -- [out std_logic]
      Dbg_ARADDR_12       => Dbg_ARADDR_12,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_12      => Dbg_ARVALID_12,      -- [out std_logic]
      Dbg_ARREADY_12      => Dbg_ARREADY_12,      -- [in  std_logic]
      Dbg_RDATA_12        => Dbg_RDATA_12,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_12        => Dbg_RRESP_12,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_12       => Dbg_RVALID_12,       -- [in  std_logic]
      Dbg_RREADY_12       => Dbg_RREADY_12,       -- [out std_logic]

      Dbg_Disable_13      => Dbg_Disable_13,      -- [out std_logic]
      Dbg_Clk_13          => Dbg_Clk_13,          -- [out std_logic]
      Dbg_TDI_13          => Dbg_TDI_13,          -- [out std_logic]
      Dbg_TDO_13          => Dbg_TDO_13,          -- [in  std_logic]
      Dbg_Reg_En_13       => Dbg_Reg_En_13,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_13      => Dbg_Capture_13,      -- [out std_logic]
      Dbg_Shift_13        => Dbg_Shift_13,        -- [out std_logic]
      Dbg_Update_13       => Dbg_Update_13,       -- [out std_logic]
      Dbg_Rst_13          => Dbg_Rst_13,          -- [out std_logic]
      Dbg_Trig_In_13      => Dbg_Trig_In_13,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_13  => Dbg_Trig_Ack_In_13,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_13     => Dbg_Trig_Out_13,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_13 => Dbg_Trig_Ack_Out_13, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_13        => Dbg_TrClk_13,        -- [out std_logic]
      Dbg_TrData_13       => Dbg_TrData_13,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_13      => Dbg_TrReady_13,      -- [out std_logic]
      Dbg_TrValid_13      => Dbg_TrValid_13,      -- [in  std_logic]
      Dbg_AWADDR_13       => Dbg_AWADDR_13,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_13      => Dbg_AWVALID_13,      -- [out std_logic]
      Dbg_AWREADY_13      => Dbg_AWREADY_13,      -- [in  std_logic]
      Dbg_WDATA_13        => Dbg_WDATA_13,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_13       => Dbg_WVALID_13,       -- [out std_logic]
      Dbg_WREADY_13       => Dbg_WREADY_13,       -- [in  std_logic]
      Dbg_BRESP_13        => Dbg_BRESP_13,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_13       => Dbg_BVALID_13,       -- [in  std_logic]
      Dbg_BREADY_13       => Dbg_BREADY_13,       -- [out std_logic]
      Dbg_ARADDR_13       => Dbg_ARADDR_13,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_13      => Dbg_ARVALID_13,      -- [out std_logic]
      Dbg_ARREADY_13      => Dbg_ARREADY_13,      -- [in  std_logic]
      Dbg_RDATA_13        => Dbg_RDATA_13,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_13        => Dbg_RRESP_13,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_13       => Dbg_RVALID_13,       -- [in  std_logic]
      Dbg_RREADY_13       => Dbg_RREADY_13,       -- [out std_logic]

      Dbg_Disable_14      => Dbg_Disable_14,      -- [out std_logic]
      Dbg_Clk_14          => Dbg_Clk_14,          -- [out std_logic]
      Dbg_TDI_14          => Dbg_TDI_14,          -- [out std_logic]
      Dbg_TDO_14          => Dbg_TDO_14,          -- [in  std_logic]
      Dbg_Reg_En_14       => Dbg_Reg_En_14,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_14      => Dbg_Capture_14,      -- [out std_logic]
      Dbg_Shift_14        => Dbg_Shift_14,        -- [out std_logic]
      Dbg_Update_14       => Dbg_Update_14,       -- [out std_logic]
      Dbg_Rst_14          => Dbg_Rst_14,          -- [out std_logic]
      Dbg_Trig_In_14      => Dbg_Trig_In_14,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_14  => Dbg_Trig_Ack_In_14,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_14     => Dbg_Trig_Out_14,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_14 => Dbg_Trig_Ack_Out_14, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_14        => Dbg_TrClk_14,        -- [out std_logic]
      Dbg_TrData_14       => Dbg_TrData_14,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_14      => Dbg_TrReady_14,      -- [out std_logic]
      Dbg_TrValid_14      => Dbg_TrValid_14,      -- [in  std_logic]
      Dbg_AWADDR_14       => Dbg_AWADDR_14,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_14      => Dbg_AWVALID_14,      -- [out std_logic]
      Dbg_AWREADY_14      => Dbg_AWREADY_14,      -- [in  std_logic]
      Dbg_WDATA_14        => Dbg_WDATA_14,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_14       => Dbg_WVALID_14,       -- [out std_logic]
      Dbg_WREADY_14       => Dbg_WREADY_14,       -- [in  std_logic]
      Dbg_BRESP_14        => Dbg_BRESP_14,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_14       => Dbg_BVALID_14,       -- [in  std_logic]
      Dbg_BREADY_14       => Dbg_BREADY_14,       -- [out std_logic]
      Dbg_ARADDR_14       => Dbg_ARADDR_14,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_14      => Dbg_ARVALID_14,      -- [out std_logic]
      Dbg_ARREADY_14      => Dbg_ARREADY_14,      -- [in  std_logic]
      Dbg_RDATA_14        => Dbg_RDATA_14,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_14        => Dbg_RRESP_14,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_14       => Dbg_RVALID_14,       -- [in  std_logic]
      Dbg_RREADY_14       => Dbg_RREADY_14,       -- [out std_logic]

      Dbg_Disable_15      => Dbg_Disable_15,      -- [out std_logic]
      Dbg_Clk_15          => Dbg_Clk_15,          -- [out std_logic]
      Dbg_TDI_15          => Dbg_TDI_15,          -- [out std_logic]
      Dbg_TDO_15          => Dbg_TDO_15,          -- [in  std_logic]
      Dbg_Reg_En_15       => Dbg_Reg_En_15,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_15      => Dbg_Capture_15,      -- [out std_logic]
      Dbg_Shift_15        => Dbg_Shift_15,        -- [out std_logic]
      Dbg_Update_15       => Dbg_Update_15,       -- [out std_logic]
      Dbg_Rst_15          => Dbg_Rst_15,          -- [out std_logic]
      Dbg_Trig_In_15      => Dbg_Trig_In_15,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_15  => Dbg_Trig_Ack_In_15,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_15     => Dbg_Trig_Out_15,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_15 => Dbg_Trig_Ack_Out_15, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_15        => Dbg_TrClk_15,        -- [out std_logic]
      Dbg_TrData_15       => Dbg_TrData_15,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_15      => Dbg_TrReady_15,      -- [out std_logic]
      Dbg_TrValid_15      => Dbg_TrValid_15,      -- [in  std_logic]
      Dbg_AWADDR_15       => Dbg_AWADDR_15,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_15      => Dbg_AWVALID_15,      -- [out std_logic]
      Dbg_AWREADY_15      => Dbg_AWREADY_15,      -- [in  std_logic]
      Dbg_WDATA_15        => Dbg_WDATA_15,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_15       => Dbg_WVALID_15,       -- [out std_logic]
      Dbg_WREADY_15       => Dbg_WREADY_15,       -- [in  std_logic]
      Dbg_BRESP_15        => Dbg_BRESP_15,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_15       => Dbg_BVALID_15,       -- [in  std_logic]
      Dbg_BREADY_15       => Dbg_BREADY_15,       -- [out std_logic]
      Dbg_ARADDR_15       => Dbg_ARADDR_15,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_15      => Dbg_ARVALID_15,      -- [out std_logic]
      Dbg_ARREADY_15      => Dbg_ARREADY_15,      -- [in  std_logic]
      Dbg_RDATA_15        => Dbg_RDATA_15,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_15        => Dbg_RRESP_15,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_15       => Dbg_RVALID_15,       -- [in  std_logic]
      Dbg_RREADY_15       => Dbg_RREADY_15,       -- [out std_logic]

      Dbg_Disable_16      => Dbg_Disable_16,      -- [out std_logic]
      Dbg_Clk_16          => Dbg_Clk_16,          -- [out std_logic]
      Dbg_TDI_16          => Dbg_TDI_16,          -- [out std_logic]
      Dbg_TDO_16          => Dbg_TDO_16,          -- [in  std_logic]
      Dbg_Reg_En_16       => Dbg_Reg_En_16,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_16      => Dbg_Capture_16,      -- [out std_logic]
      Dbg_Shift_16        => Dbg_Shift_16,        -- [out std_logic]
      Dbg_Update_16       => Dbg_Update_16,       -- [out std_logic]
      Dbg_Rst_16          => Dbg_Rst_16,          -- [out std_logic]
      Dbg_Trig_In_16      => Dbg_Trig_In_16,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_16  => Dbg_Trig_Ack_In_16,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_16     => Dbg_Trig_Out_16,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_16 => Dbg_Trig_Ack_Out_16, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_16        => Dbg_TrClk_16,        -- [out std_logic]
      Dbg_TrData_16       => Dbg_TrData_16,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_16      => Dbg_TrReady_16,      -- [out std_logic]
      Dbg_TrValid_16      => Dbg_TrValid_16,      -- [in  std_logic]
      Dbg_AWADDR_16       => Dbg_AWADDR_16,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_16      => Dbg_AWVALID_16,      -- [out std_logic]
      Dbg_AWREADY_16      => Dbg_AWREADY_16,      -- [in  std_logic]
      Dbg_WDATA_16        => Dbg_WDATA_16,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_16       => Dbg_WVALID_16,       -- [out std_logic]
      Dbg_WREADY_16       => Dbg_WREADY_16,       -- [in  std_logic]
      Dbg_BRESP_16        => Dbg_BRESP_16,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_16       => Dbg_BVALID_16,       -- [in  std_logic]
      Dbg_BREADY_16       => Dbg_BREADY_16,       -- [out std_logic]
      Dbg_ARADDR_16       => Dbg_ARADDR_16,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_16      => Dbg_ARVALID_16,      -- [out std_logic]
      Dbg_ARREADY_16      => Dbg_ARREADY_16,      -- [in  std_logic]
      Dbg_RDATA_16        => Dbg_RDATA_16,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_16        => Dbg_RRESP_16,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_16       => Dbg_RVALID_16,       -- [in  std_logic]
      Dbg_RREADY_16       => Dbg_RREADY_16,       -- [out std_logic]

      Dbg_Disable_17      => Dbg_Disable_17,      -- [out std_logic]
      Dbg_Clk_17          => Dbg_Clk_17,          -- [out std_logic]
      Dbg_TDI_17          => Dbg_TDI_17,          -- [out std_logic]
      Dbg_TDO_17          => Dbg_TDO_17,          -- [in  std_logic]
      Dbg_Reg_En_17       => Dbg_Reg_En_17,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_17      => Dbg_Capture_17,      -- [out std_logic]
      Dbg_Shift_17        => Dbg_Shift_17,        -- [out std_logic]
      Dbg_Update_17       => Dbg_Update_17,       -- [out std_logic]
      Dbg_Rst_17          => Dbg_Rst_17,          -- [out std_logic]
      Dbg_Trig_In_17      => Dbg_Trig_In_17,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_17  => Dbg_Trig_Ack_In_17,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_17     => Dbg_Trig_Out_17,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_17 => Dbg_Trig_Ack_Out_17, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_17        => Dbg_TrClk_17,        -- [out std_logic]
      Dbg_TrData_17       => Dbg_TrData_17,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_17      => Dbg_TrReady_17,      -- [out std_logic]
      Dbg_TrValid_17      => Dbg_TrValid_17,      -- [in  std_logic]
      Dbg_AWADDR_17       => Dbg_AWADDR_17,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_17      => Dbg_AWVALID_17,      -- [out std_logic]
      Dbg_AWREADY_17      => Dbg_AWREADY_17,      -- [in  std_logic]
      Dbg_WDATA_17        => Dbg_WDATA_17,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_17       => Dbg_WVALID_17,       -- [out std_logic]
      Dbg_WREADY_17       => Dbg_WREADY_17,       -- [in  std_logic]
      Dbg_BRESP_17        => Dbg_BRESP_17,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_17       => Dbg_BVALID_17,       -- [in  std_logic]
      Dbg_BREADY_17       => Dbg_BREADY_17,       -- [out std_logic]
      Dbg_ARADDR_17       => Dbg_ARADDR_17,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_17      => Dbg_ARVALID_17,      -- [out std_logic]
      Dbg_ARREADY_17      => Dbg_ARREADY_17,      -- [in  std_logic]
      Dbg_RDATA_17        => Dbg_RDATA_17,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_17        => Dbg_RRESP_17,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_17       => Dbg_RVALID_17,       -- [in  std_logic]
      Dbg_RREADY_17       => Dbg_RREADY_17,       -- [out std_logic]

      Dbg_Disable_18      => Dbg_Disable_18,      -- [out std_logic]
      Dbg_Clk_18          => Dbg_Clk_18,          -- [out std_logic]
      Dbg_TDI_18          => Dbg_TDI_18,          -- [out std_logic]
      Dbg_TDO_18          => Dbg_TDO_18,          -- [in  std_logic]
      Dbg_Reg_En_18       => Dbg_Reg_En_18,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_18      => Dbg_Capture_18,      -- [out std_logic]
      Dbg_Shift_18        => Dbg_Shift_18,        -- [out std_logic]
      Dbg_Update_18       => Dbg_Update_18,       -- [out std_logic]
      Dbg_Rst_18          => Dbg_Rst_18,          -- [out std_logic]
      Dbg_Trig_In_18      => Dbg_Trig_In_18,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_18  => Dbg_Trig_Ack_In_18,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_18     => Dbg_Trig_Out_18,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_18 => Dbg_Trig_Ack_Out_18, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_18        => Dbg_TrClk_18,        -- [out std_logic]
      Dbg_TrData_18       => Dbg_TrData_18,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_18      => Dbg_TrReady_18,      -- [out std_logic]
      Dbg_TrValid_18      => Dbg_TrValid_18,      -- [in  std_logic]
      Dbg_AWADDR_18       => Dbg_AWADDR_18,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_18      => Dbg_AWVALID_18,      -- [out std_logic]
      Dbg_AWREADY_18      => Dbg_AWREADY_18,      -- [in  std_logic]
      Dbg_WDATA_18        => Dbg_WDATA_18,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_18       => Dbg_WVALID_18,       -- [out std_logic]
      Dbg_WREADY_18       => Dbg_WREADY_18,       -- [in  std_logic]
      Dbg_BRESP_18        => Dbg_BRESP_18,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_18       => Dbg_BVALID_18,       -- [in  std_logic]
      Dbg_BREADY_18       => Dbg_BREADY_18,       -- [out std_logic]
      Dbg_ARADDR_18       => Dbg_ARADDR_18,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_18      => Dbg_ARVALID_18,      -- [out std_logic]
      Dbg_ARREADY_18      => Dbg_ARREADY_18,      -- [in  std_logic]
      Dbg_RDATA_18        => Dbg_RDATA_18,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_18        => Dbg_RRESP_18,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_18       => Dbg_RVALID_18,       -- [in  std_logic]
      Dbg_RREADY_18       => Dbg_RREADY_18,       -- [out std_logic]

      Dbg_Disable_19      => Dbg_Disable_19,      -- [out std_logic]
      Dbg_Clk_19          => Dbg_Clk_19,          -- [out std_logic]
      Dbg_TDI_19          => Dbg_TDI_19,          -- [out std_logic]
      Dbg_TDO_19          => Dbg_TDO_19,          -- [in  std_logic]
      Dbg_Reg_En_19       => Dbg_Reg_En_19,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_19      => Dbg_Capture_19,      -- [out std_logic]
      Dbg_Shift_19        => Dbg_Shift_19,        -- [out std_logic]
      Dbg_Update_19       => Dbg_Update_19,       -- [out std_logic]
      Dbg_Rst_19          => Dbg_Rst_19,          -- [out std_logic]
      Dbg_Trig_In_19      => Dbg_Trig_In_19,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_19  => Dbg_Trig_Ack_In_19,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_19     => Dbg_Trig_Out_19,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_19 => Dbg_Trig_Ack_Out_19, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_19        => Dbg_TrClk_19,        -- [out std_logic]
      Dbg_TrData_19       => Dbg_TrData_19,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_19      => Dbg_TrReady_19,      -- [out std_logic]
      Dbg_TrValid_19      => Dbg_TrValid_19,      -- [in  std_logic]
      Dbg_AWADDR_19       => Dbg_AWADDR_19,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_19      => Dbg_AWVALID_19,      -- [out std_logic]
      Dbg_AWREADY_19      => Dbg_AWREADY_19,      -- [in  std_logic]
      Dbg_WDATA_19        => Dbg_WDATA_19,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_19       => Dbg_WVALID_19,       -- [out std_logic]
      Dbg_WREADY_19       => Dbg_WREADY_19,       -- [in  std_logic]
      Dbg_BRESP_19        => Dbg_BRESP_19,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_19       => Dbg_BVALID_19,       -- [in  std_logic]
      Dbg_BREADY_19       => Dbg_BREADY_19,       -- [out std_logic]
      Dbg_ARADDR_19       => Dbg_ARADDR_19,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_19      => Dbg_ARVALID_19,      -- [out std_logic]
      Dbg_ARREADY_19      => Dbg_ARREADY_19,      -- [in  std_logic]
      Dbg_RDATA_19        => Dbg_RDATA_19,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_19        => Dbg_RRESP_19,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_19       => Dbg_RVALID_19,       -- [in  std_logic]
      Dbg_RREADY_19       => Dbg_RREADY_19,       -- [out std_logic]

      Dbg_Disable_20      => Dbg_Disable_20,      -- [out std_logic]
      Dbg_Clk_20          => Dbg_Clk_20,          -- [out std_logic]
      Dbg_TDI_20          => Dbg_TDI_20,          -- [out std_logic]
      Dbg_TDO_20          => Dbg_TDO_20,          -- [in  std_logic]
      Dbg_Reg_En_20       => Dbg_Reg_En_20,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_20      => Dbg_Capture_20,      -- [out std_logic]
      Dbg_Shift_20        => Dbg_Shift_20,        -- [out std_logic]
      Dbg_Update_20       => Dbg_Update_20,       -- [out std_logic]
      Dbg_Rst_20          => Dbg_Rst_20,          -- [out std_logic]
      Dbg_Trig_In_20      => Dbg_Trig_In_20,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_20  => Dbg_Trig_Ack_In_20,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_20     => Dbg_Trig_Out_20,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_20 => Dbg_Trig_Ack_Out_20, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_20        => Dbg_TrClk_20,        -- [out std_logic]
      Dbg_TrData_20       => Dbg_TrData_20,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_20      => Dbg_TrReady_20,      -- [out std_logic]
      Dbg_TrValid_20      => Dbg_TrValid_20,      -- [in  std_logic]
      Dbg_AWADDR_20       => Dbg_AWADDR_20,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_20      => Dbg_AWVALID_20,      -- [out std_logic]
      Dbg_AWREADY_20      => Dbg_AWREADY_20,      -- [in  std_logic]
      Dbg_WDATA_20        => Dbg_WDATA_20,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_20       => Dbg_WVALID_20,       -- [out std_logic]
      Dbg_WREADY_20       => Dbg_WREADY_20,       -- [in  std_logic]
      Dbg_BRESP_20        => Dbg_BRESP_20,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_20       => Dbg_BVALID_20,       -- [in  std_logic]
      Dbg_BREADY_20       => Dbg_BREADY_20,       -- [out std_logic]
      Dbg_ARADDR_20       => Dbg_ARADDR_20,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_20      => Dbg_ARVALID_20,      -- [out std_logic]
      Dbg_ARREADY_20      => Dbg_ARREADY_20,      -- [in  std_logic]
      Dbg_RDATA_20        => Dbg_RDATA_20,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_20        => Dbg_RRESP_20,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_20       => Dbg_RVALID_20,       -- [in  std_logic]
      Dbg_RREADY_20       => Dbg_RREADY_20,       -- [out std_logic]

      Dbg_Disable_21      => Dbg_Disable_21,      -- [out std_logic]
      Dbg_Clk_21          => Dbg_Clk_21,          -- [out std_logic]
      Dbg_TDI_21          => Dbg_TDI_21,          -- [out std_logic]
      Dbg_TDO_21          => Dbg_TDO_21,          -- [in  std_logic]
      Dbg_Reg_En_21       => Dbg_Reg_En_21,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_21      => Dbg_Capture_21,      -- [out std_logic]
      Dbg_Shift_21        => Dbg_Shift_21,        -- [out std_logic]
      Dbg_Update_21       => Dbg_Update_21,       -- [out std_logic]
      Dbg_Rst_21          => Dbg_Rst_21,          -- [out std_logic]
      Dbg_Trig_In_21      => Dbg_Trig_In_21,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_21  => Dbg_Trig_Ack_In_21,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_21     => Dbg_Trig_Out_21,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_21 => Dbg_Trig_Ack_Out_21, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_21        => Dbg_TrClk_21,        -- [out std_logic]
      Dbg_TrData_21       => Dbg_TrData_21,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_21      => Dbg_TrReady_21,      -- [out std_logic]
      Dbg_TrValid_21      => Dbg_TrValid_21,      -- [in  std_logic]
      Dbg_AWADDR_21       => Dbg_AWADDR_21,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_21      => Dbg_AWVALID_21,      -- [out std_logic]
      Dbg_AWREADY_21      => Dbg_AWREADY_21,      -- [in  std_logic]
      Dbg_WDATA_21        => Dbg_WDATA_21,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_21       => Dbg_WVALID_21,       -- [out std_logic]
      Dbg_WREADY_21       => Dbg_WREADY_21,       -- [in  std_logic]
      Dbg_BRESP_21        => Dbg_BRESP_21,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_21       => Dbg_BVALID_21,       -- [in  std_logic]
      Dbg_BREADY_21       => Dbg_BREADY_21,       -- [out std_logic]
      Dbg_ARADDR_21       => Dbg_ARADDR_21,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_21      => Dbg_ARVALID_21,      -- [out std_logic]
      Dbg_ARREADY_21      => Dbg_ARREADY_21,      -- [in  std_logic]
      Dbg_RDATA_21        => Dbg_RDATA_21,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_21        => Dbg_RRESP_21,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_21       => Dbg_RVALID_21,       -- [in  std_logic]
      Dbg_RREADY_21       => Dbg_RREADY_21,       -- [out std_logic]

      Dbg_Disable_22      => Dbg_Disable_22,      -- [out std_logic]
      Dbg_Clk_22          => Dbg_Clk_22,          -- [out std_logic]
      Dbg_TDI_22          => Dbg_TDI_22,          -- [out std_logic]
      Dbg_TDO_22          => Dbg_TDO_22,          -- [in  std_logic]
      Dbg_Reg_En_22       => Dbg_Reg_En_22,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_22      => Dbg_Capture_22,      -- [out std_logic]
      Dbg_Shift_22        => Dbg_Shift_22,        -- [out std_logic]
      Dbg_Update_22       => Dbg_Update_22,       -- [out std_logic]
      Dbg_Rst_22          => Dbg_Rst_22,          -- [out std_logic]
      Dbg_Trig_In_22      => Dbg_Trig_In_22,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_22  => Dbg_Trig_Ack_In_22,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_22     => Dbg_Trig_Out_22,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_22 => Dbg_Trig_Ack_Out_22, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_22        => Dbg_TrClk_22,        -- [out std_logic]
      Dbg_TrData_22       => Dbg_TrData_22,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_22      => Dbg_TrReady_22,      -- [out std_logic]
      Dbg_TrValid_22      => Dbg_TrValid_22,      -- [in  std_logic]
      Dbg_AWADDR_22       => Dbg_AWADDR_22,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_22      => Dbg_AWVALID_22,      -- [out std_logic]
      Dbg_AWREADY_22      => Dbg_AWREADY_22,      -- [in  std_logic]
      Dbg_WDATA_22        => Dbg_WDATA_22,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_22       => Dbg_WVALID_22,       -- [out std_logic]
      Dbg_WREADY_22       => Dbg_WREADY_22,       -- [in  std_logic]
      Dbg_BRESP_22        => Dbg_BRESP_22,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_22       => Dbg_BVALID_22,       -- [in  std_logic]
      Dbg_BREADY_22       => Dbg_BREADY_22,       -- [out std_logic]
      Dbg_ARADDR_22       => Dbg_ARADDR_22,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_22      => Dbg_ARVALID_22,      -- [out std_logic]
      Dbg_ARREADY_22      => Dbg_ARREADY_22,      -- [in  std_logic]
      Dbg_RDATA_22        => Dbg_RDATA_22,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_22        => Dbg_RRESP_22,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_22       => Dbg_RVALID_22,       -- [in  std_logic]
      Dbg_RREADY_22       => Dbg_RREADY_22,       -- [out std_logic]

      Dbg_Disable_23      => Dbg_Disable_23,      -- [out std_logic]
      Dbg_Clk_23          => Dbg_Clk_23,          -- [out std_logic]
      Dbg_TDI_23          => Dbg_TDI_23,          -- [out std_logic]
      Dbg_TDO_23          => Dbg_TDO_23,          -- [in  std_logic]
      Dbg_Reg_En_23       => Dbg_Reg_En_23,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_23      => Dbg_Capture_23,      -- [out std_logic]
      Dbg_Shift_23        => Dbg_Shift_23,        -- [out std_logic]
      Dbg_Update_23       => Dbg_Update_23,       -- [out std_logic]
      Dbg_Rst_23          => Dbg_Rst_23,          -- [out std_logic]
      Dbg_Trig_In_23      => Dbg_Trig_In_23,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_23  => Dbg_Trig_Ack_In_23,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_23     => Dbg_Trig_Out_23,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_23 => Dbg_Trig_Ack_Out_23, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_23        => Dbg_TrClk_23,        -- [out std_logic]
      Dbg_TrData_23       => Dbg_TrData_23,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_23      => Dbg_TrReady_23,      -- [out std_logic]
      Dbg_TrValid_23      => Dbg_TrValid_23,      -- [in  std_logic]
      Dbg_AWADDR_23       => Dbg_AWADDR_23,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_23      => Dbg_AWVALID_23,      -- [out std_logic]
      Dbg_AWREADY_23      => Dbg_AWREADY_23,      -- [in  std_logic]
      Dbg_WDATA_23        => Dbg_WDATA_23,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_23       => Dbg_WVALID_23,       -- [out std_logic]
      Dbg_WREADY_23       => Dbg_WREADY_23,       -- [in  std_logic]
      Dbg_BRESP_23        => Dbg_BRESP_23,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_23       => Dbg_BVALID_23,       -- [in  std_logic]
      Dbg_BREADY_23       => Dbg_BREADY_23,       -- [out std_logic]
      Dbg_ARADDR_23       => Dbg_ARADDR_23,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_23      => Dbg_ARVALID_23,      -- [out std_logic]
      Dbg_ARREADY_23      => Dbg_ARREADY_23,      -- [in  std_logic]
      Dbg_RDATA_23        => Dbg_RDATA_23,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_23        => Dbg_RRESP_23,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_23       => Dbg_RVALID_23,       -- [in  std_logic]
      Dbg_RREADY_23       => Dbg_RREADY_23,       -- [out std_logic]

      Dbg_Disable_24      => Dbg_Disable_24,      -- [out std_logic]
      Dbg_Clk_24          => Dbg_Clk_24,          -- [out std_logic]
      Dbg_TDI_24          => Dbg_TDI_24,          -- [out std_logic]
      Dbg_TDO_24          => Dbg_TDO_24,          -- [in  std_logic]
      Dbg_Reg_En_24       => Dbg_Reg_En_24,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_24      => Dbg_Capture_24,      -- [out std_logic]
      Dbg_Shift_24        => Dbg_Shift_24,        -- [out std_logic]
      Dbg_Update_24       => Dbg_Update_24,       -- [out std_logic]
      Dbg_Rst_24          => Dbg_Rst_24,          -- [out std_logic]
      Dbg_Trig_In_24      => Dbg_Trig_In_24,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_24  => Dbg_Trig_Ack_In_24,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_24     => Dbg_Trig_Out_24,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_24 => Dbg_Trig_Ack_Out_24, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_24        => Dbg_TrClk_24,        -- [out std_logic]
      Dbg_TrData_24       => Dbg_TrData_24,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_24      => Dbg_TrReady_24,      -- [out std_logic]
      Dbg_TrValid_24      => Dbg_TrValid_24,      -- [in  std_logic]
      Dbg_AWADDR_24       => Dbg_AWADDR_24,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_24      => Dbg_AWVALID_24,      -- [out std_logic]
      Dbg_AWREADY_24      => Dbg_AWREADY_24,      -- [in  std_logic]
      Dbg_WDATA_24        => Dbg_WDATA_24,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_24       => Dbg_WVALID_24,       -- [out std_logic]
      Dbg_WREADY_24       => Dbg_WREADY_24,       -- [in  std_logic]
      Dbg_BRESP_24        => Dbg_BRESP_24,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_24       => Dbg_BVALID_24,       -- [in  std_logic]
      Dbg_BREADY_24       => Dbg_BREADY_24,       -- [out std_logic]
      Dbg_ARADDR_24       => Dbg_ARADDR_24,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_24      => Dbg_ARVALID_24,      -- [out std_logic]
      Dbg_ARREADY_24      => Dbg_ARREADY_24,      -- [in  std_logic]
      Dbg_RDATA_24        => Dbg_RDATA_24,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_24        => Dbg_RRESP_24,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_24       => Dbg_RVALID_24,       -- [in  std_logic]
      Dbg_RREADY_24       => Dbg_RREADY_24,       -- [out std_logic]

      Dbg_Disable_25      => Dbg_Disable_25,      -- [out std_logic]
      Dbg_Clk_25          => Dbg_Clk_25,          -- [out std_logic]
      Dbg_TDI_25          => Dbg_TDI_25,          -- [out std_logic]
      Dbg_TDO_25          => Dbg_TDO_25,          -- [in  std_logic]
      Dbg_Reg_En_25       => Dbg_Reg_En_25,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_25      => Dbg_Capture_25,      -- [out std_logic]
      Dbg_Shift_25        => Dbg_Shift_25,        -- [out std_logic]
      Dbg_Update_25       => Dbg_Update_25,       -- [out std_logic]
      Dbg_Rst_25          => Dbg_Rst_25,          -- [out std_logic]
      Dbg_Trig_In_25      => Dbg_Trig_In_25,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_25  => Dbg_Trig_Ack_In_25,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_25     => Dbg_Trig_Out_25,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_25 => Dbg_Trig_Ack_Out_25, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_25        => Dbg_TrClk_25,        -- [out std_logic]
      Dbg_TrData_25       => Dbg_TrData_25,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_25      => Dbg_TrReady_25,      -- [out std_logic]
      Dbg_TrValid_25      => Dbg_TrValid_25,      -- [in  std_logic]
      Dbg_AWADDR_25       => Dbg_AWADDR_25,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_25      => Dbg_AWVALID_25,      -- [out std_logic]
      Dbg_AWREADY_25      => Dbg_AWREADY_25,      -- [in  std_logic]
      Dbg_WDATA_25        => Dbg_WDATA_25,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_25       => Dbg_WVALID_25,       -- [out std_logic]
      Dbg_WREADY_25       => Dbg_WREADY_25,       -- [in  std_logic]
      Dbg_BRESP_25        => Dbg_BRESP_25,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_25       => Dbg_BVALID_25,       -- [in  std_logic]
      Dbg_BREADY_25       => Dbg_BREADY_25,       -- [out std_logic]
      Dbg_ARADDR_25       => Dbg_ARADDR_25,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_25      => Dbg_ARVALID_25,      -- [out std_logic]
      Dbg_ARREADY_25      => Dbg_ARREADY_25,      -- [in  std_logic]
      Dbg_RDATA_25        => Dbg_RDATA_25,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_25        => Dbg_RRESP_25,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_25       => Dbg_RVALID_25,       -- [in  std_logic]
      Dbg_RREADY_25       => Dbg_RREADY_25,       -- [out std_logic]

      Dbg_Disable_26      => Dbg_Disable_26,      -- [out std_logic]
      Dbg_Clk_26          => Dbg_Clk_26,          -- [out std_logic]
      Dbg_TDI_26          => Dbg_TDI_26,          -- [out std_logic]
      Dbg_TDO_26          => Dbg_TDO_26,          -- [in  std_logic]
      Dbg_Reg_En_26       => Dbg_Reg_En_26,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_26      => Dbg_Capture_26,      -- [out std_logic]
      Dbg_Shift_26        => Dbg_Shift_26,        -- [out std_logic]
      Dbg_Update_26       => Dbg_Update_26,       -- [out std_logic]
      Dbg_Rst_26          => Dbg_Rst_26,          -- [out std_logic]
      Dbg_Trig_In_26      => Dbg_Trig_In_26,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_26  => Dbg_Trig_Ack_In_26,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_26     => Dbg_Trig_Out_26,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_26 => Dbg_Trig_Ack_Out_26, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_26        => Dbg_TrClk_26,        -- [out std_logic]
      Dbg_TrData_26       => Dbg_TrData_26,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_26      => Dbg_TrReady_26,      -- [out std_logic]
      Dbg_TrValid_26      => Dbg_TrValid_26,      -- [in  std_logic]
      Dbg_AWADDR_26       => Dbg_AWADDR_26,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_26      => Dbg_AWVALID_26,      -- [out std_logic]
      Dbg_AWREADY_26      => Dbg_AWREADY_26,      -- [in  std_logic]
      Dbg_WDATA_26        => Dbg_WDATA_26,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_26       => Dbg_WVALID_26,       -- [out std_logic]
      Dbg_WREADY_26       => Dbg_WREADY_26,       -- [in  std_logic]
      Dbg_BRESP_26        => Dbg_BRESP_26,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_26       => Dbg_BVALID_26,       -- [in  std_logic]
      Dbg_BREADY_26       => Dbg_BREADY_26,       -- [out std_logic]
      Dbg_ARADDR_26       => Dbg_ARADDR_26,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_26      => Dbg_ARVALID_26,      -- [out std_logic]
      Dbg_ARREADY_26      => Dbg_ARREADY_26,      -- [in  std_logic]
      Dbg_RDATA_26        => Dbg_RDATA_26,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_26        => Dbg_RRESP_26,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_26       => Dbg_RVALID_26,       -- [in  std_logic]
      Dbg_RREADY_26       => Dbg_RREADY_26,       -- [out std_logic]

      Dbg_Disable_27      => Dbg_Disable_27,      -- [out std_logic]
      Dbg_Clk_27          => Dbg_Clk_27,          -- [out std_logic]
      Dbg_TDI_27          => Dbg_TDI_27,          -- [out std_logic]
      Dbg_TDO_27          => Dbg_TDO_27,          -- [in  std_logic]
      Dbg_Reg_En_27       => Dbg_Reg_En_27,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_27      => Dbg_Capture_27,      -- [out std_logic]
      Dbg_Shift_27        => Dbg_Shift_27,        -- [out std_logic]
      Dbg_Update_27       => Dbg_Update_27,       -- [out std_logic]
      Dbg_Rst_27          => Dbg_Rst_27,          -- [out std_logic]
      Dbg_Trig_In_27      => Dbg_Trig_In_27,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_27  => Dbg_Trig_Ack_In_27,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_27     => Dbg_Trig_Out_27,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_27 => Dbg_Trig_Ack_Out_27, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_27        => Dbg_TrClk_27,        -- [out std_logic]
      Dbg_TrData_27       => Dbg_TrData_27,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_27      => Dbg_TrReady_27,      -- [out std_logic]
      Dbg_TrValid_27      => Dbg_TrValid_27,      -- [in  std_logic]
      Dbg_AWADDR_27       => Dbg_AWADDR_27,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_27      => Dbg_AWVALID_27,      -- [out std_logic]
      Dbg_AWREADY_27      => Dbg_AWREADY_27,      -- [in  std_logic]
      Dbg_WDATA_27        => Dbg_WDATA_27,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_27       => Dbg_WVALID_27,       -- [out std_logic]
      Dbg_WREADY_27       => Dbg_WREADY_27,       -- [in  std_logic]
      Dbg_BRESP_27        => Dbg_BRESP_27,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_27       => Dbg_BVALID_27,       -- [in  std_logic]
      Dbg_BREADY_27       => Dbg_BREADY_27,       -- [out std_logic]
      Dbg_ARADDR_27       => Dbg_ARADDR_27,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_27      => Dbg_ARVALID_27,      -- [out std_logic]
      Dbg_ARREADY_27      => Dbg_ARREADY_27,      -- [in  std_logic]
      Dbg_RDATA_27        => Dbg_RDATA_27,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_27        => Dbg_RRESP_27,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_27       => Dbg_RVALID_27,       -- [in  std_logic]
      Dbg_RREADY_27       => Dbg_RREADY_27,       -- [out std_logic]

      Dbg_Disable_28      => Dbg_Disable_28,      -- [out std_logic]
      Dbg_Clk_28          => Dbg_Clk_28,          -- [out std_logic]
      Dbg_TDI_28          => Dbg_TDI_28,          -- [out std_logic]
      Dbg_TDO_28          => Dbg_TDO_28,          -- [in  std_logic]
      Dbg_Reg_En_28       => Dbg_Reg_En_28,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_28      => Dbg_Capture_28,      -- [out std_logic]
      Dbg_Shift_28        => Dbg_Shift_28,        -- [out std_logic]
      Dbg_Update_28       => Dbg_Update_28,       -- [out std_logic]
      Dbg_Rst_28          => Dbg_Rst_28,          -- [out std_logic]
      Dbg_Trig_In_28      => Dbg_Trig_In_28,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_28  => Dbg_Trig_Ack_In_28,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_28     => Dbg_Trig_Out_28,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_28 => Dbg_Trig_Ack_Out_28, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_28        => Dbg_TrClk_28,        -- [out std_logic]
      Dbg_TrData_28       => Dbg_TrData_28,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_28      => Dbg_TrReady_28,      -- [out std_logic]
      Dbg_TrValid_28      => Dbg_TrValid_28,      -- [in  std_logic]
      Dbg_AWADDR_28       => Dbg_AWADDR_28,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_28      => Dbg_AWVALID_28,      -- [out std_logic]
      Dbg_AWREADY_28      => Dbg_AWREADY_28,      -- [in  std_logic]
      Dbg_WDATA_28        => Dbg_WDATA_28,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_28       => Dbg_WVALID_28,       -- [out std_logic]
      Dbg_WREADY_28       => Dbg_WREADY_28,       -- [in  std_logic]
      Dbg_BRESP_28        => Dbg_BRESP_28,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_28       => Dbg_BVALID_28,       -- [in  std_logic]
      Dbg_BREADY_28       => Dbg_BREADY_28,       -- [out std_logic]
      Dbg_ARADDR_28       => Dbg_ARADDR_28,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_28      => Dbg_ARVALID_28,      -- [out std_logic]
      Dbg_ARREADY_28      => Dbg_ARREADY_28,      -- [in  std_logic]
      Dbg_RDATA_28        => Dbg_RDATA_28,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_28        => Dbg_RRESP_28,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_28       => Dbg_RVALID_28,       -- [in  std_logic]
      Dbg_RREADY_28       => Dbg_RREADY_28,       -- [out std_logic]

      Dbg_Disable_29      => Dbg_Disable_29,      -- [out std_logic]
      Dbg_Clk_29          => Dbg_Clk_29,          -- [out std_logic]
      Dbg_TDI_29          => Dbg_TDI_29,          -- [out std_logic]
      Dbg_TDO_29          => Dbg_TDO_29,          -- [in  std_logic]
      Dbg_Reg_En_29       => Dbg_Reg_En_29,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_29      => Dbg_Capture_29,      -- [out std_logic]
      Dbg_Shift_29        => Dbg_Shift_29,        -- [out std_logic]
      Dbg_Update_29       => Dbg_Update_29,       -- [out std_logic]
      Dbg_Rst_29          => Dbg_Rst_29,          -- [out std_logic]
      Dbg_Trig_In_29      => Dbg_Trig_In_29,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_29  => Dbg_Trig_Ack_In_29,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_29     => Dbg_Trig_Out_29,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_29 => Dbg_Trig_Ack_Out_29, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_29        => Dbg_TrClk_29,        -- [out std_logic]
      Dbg_TrData_29       => Dbg_TrData_29,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_29      => Dbg_TrReady_29,      -- [out std_logic]
      Dbg_TrValid_29      => Dbg_TrValid_29,      -- [in  std_logic]
      Dbg_AWADDR_29       => Dbg_AWADDR_29,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_29      => Dbg_AWVALID_29,      -- [out std_logic]
      Dbg_AWREADY_29      => Dbg_AWREADY_29,      -- [in  std_logic]
      Dbg_WDATA_29        => Dbg_WDATA_29,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_29       => Dbg_WVALID_29,       -- [out std_logic]
      Dbg_WREADY_29       => Dbg_WREADY_29,       -- [in  std_logic]
      Dbg_BRESP_29        => Dbg_BRESP_29,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_29       => Dbg_BVALID_29,       -- [in  std_logic]
      Dbg_BREADY_29       => Dbg_BREADY_29,       -- [out std_logic]
      Dbg_ARADDR_29       => Dbg_ARADDR_29,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_29      => Dbg_ARVALID_29,      -- [out std_logic]
      Dbg_ARREADY_29      => Dbg_ARREADY_29,      -- [in  std_logic]
      Dbg_RDATA_29        => Dbg_RDATA_29,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_29        => Dbg_RRESP_29,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_29       => Dbg_RVALID_29,       -- [in  std_logic]
      Dbg_RREADY_29       => Dbg_RREADY_29,       -- [out std_logic]

      Dbg_Disable_30      => Dbg_Disable_30,      -- [out std_logic]
      Dbg_Clk_30          => Dbg_Clk_30,          -- [out std_logic]
      Dbg_TDI_30          => Dbg_TDI_30,          -- [out std_logic]
      Dbg_TDO_30          => Dbg_TDO_30,          -- [in  std_logic]
      Dbg_Reg_En_30       => Dbg_Reg_En_30,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_30      => Dbg_Capture_30,      -- [out std_logic]
      Dbg_Shift_30        => Dbg_Shift_30,        -- [out std_logic]
      Dbg_Update_30       => Dbg_Update_30,       -- [out std_logic]
      Dbg_Rst_30          => Dbg_Rst_30,          -- [out std_logic]
      Dbg_Trig_In_30      => Dbg_Trig_In_30,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_30  => Dbg_Trig_Ack_In_30,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_30     => Dbg_Trig_Out_30,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_30 => Dbg_Trig_Ack_Out_30, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_30        => Dbg_TrClk_30,        -- [out std_logic]
      Dbg_TrData_30       => Dbg_TrData_30,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_30      => Dbg_TrReady_30,      -- [out std_logic]
      Dbg_TrValid_30      => Dbg_TrValid_30,      -- [in  std_logic]
      Dbg_AWADDR_30       => Dbg_AWADDR_30,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_30      => Dbg_AWVALID_30,      -- [out std_logic]
      Dbg_AWREADY_30      => Dbg_AWREADY_30,      -- [in  std_logic]
      Dbg_WDATA_30        => Dbg_WDATA_30,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_30       => Dbg_WVALID_30,       -- [out std_logic]
      Dbg_WREADY_30       => Dbg_WREADY_30,       -- [in  std_logic]
      Dbg_BRESP_30        => Dbg_BRESP_30,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_30       => Dbg_BVALID_30,       -- [in  std_logic]
      Dbg_BREADY_30       => Dbg_BREADY_30,       -- [out std_logic]
      Dbg_ARADDR_30       => Dbg_ARADDR_30,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_30      => Dbg_ARVALID_30,      -- [out std_logic]
      Dbg_ARREADY_30      => Dbg_ARREADY_30,      -- [in  std_logic]
      Dbg_RDATA_30        => Dbg_RDATA_30,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_30        => Dbg_RRESP_30,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_30       => Dbg_RVALID_30,       -- [in  std_logic]
      Dbg_RREADY_30       => Dbg_RREADY_30,       -- [out std_logic]

      Dbg_Disable_31      => Dbg_Disable_31,      -- [out std_logic]
      Dbg_Clk_31          => Dbg_Clk_31,          -- [out std_logic]
      Dbg_TDI_31          => Dbg_TDI_31,          -- [out std_logic]
      Dbg_TDO_31          => Dbg_TDO_31,          -- [in  std_logic]
      Dbg_Reg_En_31       => Dbg_Reg_En_31,       -- [out std_logic_vector(0 to 7)]
      Dbg_Capture_31      => Dbg_Capture_31,      -- [out std_logic]
      Dbg_Shift_31        => Dbg_Shift_31,        -- [out std_logic]
      Dbg_Update_31       => Dbg_Update_31,       -- [out std_logic]
      Dbg_Rst_31          => Dbg_Rst_31,          -- [out std_logic]
      Dbg_Trig_In_31      => Dbg_Trig_In_31,      -- [in  std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_In_31  => Dbg_Trig_Ack_In_31,  -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Out_31     => Dbg_Trig_Out_31,     -- [out std_logic_vector(0 to 7)]
      Dbg_Trig_Ack_Out_31 => Dbg_Trig_Ack_Out_31, -- [in  std_logic_vector(0 to 7)]
      Dbg_TrClk_31        => Dbg_TrClk_31,        -- [out std_logic]
      Dbg_TrData_31       => Dbg_TrData_31,       -- [in  std_logic_vector(0 to 35)]
      Dbg_TrReady_31      => Dbg_TrReady_31,      -- [out std_logic]
      Dbg_TrValid_31      => Dbg_TrValid_31,      -- [in  std_logic]
      Dbg_AWADDR_31       => Dbg_AWADDR_31,       -- [out std_logic_vector(14 downto 2]
      Dbg_AWVALID_31      => Dbg_AWVALID_31,      -- [out std_logic]
      Dbg_AWREADY_31      => Dbg_AWREADY_31,      -- [in  std_logic]
      Dbg_WDATA_31        => Dbg_WDATA_31,        -- [out std_logic_vector(31 downto 0)]
      Dbg_WVALID_31       => Dbg_WVALID_31,       -- [out std_logic]
      Dbg_WREADY_31       => Dbg_WREADY_31,       -- [in  std_logic]
      Dbg_BRESP_31        => Dbg_BRESP_31,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_BVALID_31       => Dbg_BVALID_31,       -- [in  std_logic]
      Dbg_BREADY_31       => Dbg_BREADY_31,       -- [out std_logic]
      Dbg_ARADDR_31       => Dbg_ARADDR_31,       -- [out std_logic_vector(14 downto 2)]
      Dbg_ARVALID_31      => Dbg_ARVALID_31,      -- [out std_logic]
      Dbg_ARREADY_31      => Dbg_ARREADY_31,      -- [in  std_logic]
      Dbg_RDATA_31        => Dbg_RDATA_31,        -- [in  std_logic_vector(31 downto 0)]
      Dbg_RRESP_31        => Dbg_RRESP_31,        -- [in  std_logic_vector(1  downto 0)]
      Dbg_RVALID_31       => Dbg_RVALID_31,       -- [in  std_logic]
      Dbg_RREADY_31       => Dbg_RREADY_31,       -- [out std_logic]

      Ext_Trig_In        => ext_trig_in,          -- [in  std_logic_vector(0 to 3)]
      Ext_Trig_Ack_In    => ext_trig_ack_in,      -- [out std_logic_vector(0 to 3)]
      Ext_Trig_Out       => ext_trig_out,         -- [out std_logic_vector(0 to 3)]
      Ext_Trig_Ack_Out   => ext_trig_ack_out,     -- [in  std_logic_vector(0 to 3)]

      Ext_JTAG_DRCK      => Ext_JTAG_DRCK,
      Ext_JTAG_RESET     => Ext_JTAG_RESET,
      Ext_JTAG_SEL       => Ext_JTAG_SEL,
      Ext_JTAG_CAPTURE   => Ext_JTAG_CAPTURE,
      Ext_JTAG_SHIFT     => Ext_JTAG_SHIFT,
      Ext_JTAG_UPDATE    => Ext_JTAG_UPDATE,
      Ext_JTAG_TDI       => Ext_JTAG_TDI,
      Ext_JTAG_TDO       => Ext_JTAG_TDO
    );

  ext_trig_in      <= Trig_In_0 & Trig_In_1 & Trig_In_2 & Trig_In_3;
  ext_trig_ack_out <= Trig_Ack_Out_0 & Trig_Ack_Out_1 & Trig_Ack_Out_2 & Trig_Ack_Out_3;

  Trig_Ack_In_0 <= ext_trig_ack_in(0);
  Trig_Ack_In_1 <= ext_trig_ack_in(1);
  Trig_Ack_In_2 <= ext_trig_ack_in(2);
  Trig_Ack_In_3 <= ext_trig_ack_in(3);

  Trig_Out_0    <= ext_trig_out(0);
  Trig_Out_1    <= ext_trig_out(1);
  Trig_Out_2    <= ext_trig_out(2);
  Trig_Out_3    <= ext_trig_out(3);

  -- Bus Master port
  Use_Bus_MASTER : if (C_DBG_MEM_ACCESS = 1) generate
    type LMB_vec_type is array (natural range <>) of std_logic_vector(0 to C_DATA_SIZE - 1);

    signal lmb_data_addr       : std_logic_vector(0 to C_DATA_SIZE - 1);
    signal lmb_data_read       : std_logic_vector(0 to C_DATA_SIZE - 1);
    signal lmb_data_write      : std_logic_vector(0 to C_DATA_SIZE - 1);
    signal lmb_addr_strobe     : std_logic;
    signal lmb_read_strobe     : std_logic;
    signal lmb_write_strobe    : std_logic;
    signal lmb_ready           : std_logic;
    signal lmb_wait            : std_logic;
    signal lmb_ue              : std_logic;
    signal lmb_byte_enable     : std_logic_vector(0 to C_DATA_SIZE / 8 - 1);

    signal lmb_addr_strobe_vec : std_logic_vector(0 to 31);

    signal lmb_data_read_vec   : LMB_vec_type(0 to 31);
    signal lmb_ready_vec       : std_logic_vector(0 to 31);
    signal lmb_wait_vec        : std_logic_vector(0 to 31);
    signal lmb_ue_vec          : std_logic_vector(0 to 31);

    signal lmb_data_read_vec_q : LMB_vec_type(0 to C_EN_WIDTH - 1);
    signal lmb_ready_vec_q     : std_logic_vector(0 to C_EN_WIDTH - 1);
    signal lmb_wait_vec_q      : std_logic_vector(0 to C_EN_WIDTH - 1);
    signal lmb_ue_vec_q        : std_logic_vector(0 to C_EN_WIDTH - 1);
  begin

    bus_master_I : bus_master
    generic map  (
      C_TARGET                => C_TARGET,
      C_M_AXI_DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
      C_M_AXI_THREAD_ID_WIDTH => C_M_AXI_THREAD_ID_WIDTH,
      C_M_AXI_ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
      C_DATA_SIZE             => C_DATA_SIZE,
      C_HAS_FIFO_PORTS        => true,
      C_HAS_DIRECT_PORT       => C_TRACE_AXI_MASTER,
      C_USE_SRL16             => C_USE_SRL16
    )
    port map (
      Rd_Start          => master_rd_start,
      Rd_Addr           => master_rd_addr,
      Rd_Len            => master_rd_len,
      Rd_Size           => master_rd_size,
      Rd_Exclusive      => master_rd_excl,
      Rd_Idle           => master_rd_idle,
      Rd_Response       => master_rd_resp,
      Wr_Start          => master_wr_start,
      Wr_Addr           => master_wr_addr,
      Wr_Len            => master_wr_len,
      Wr_Size           => master_wr_size,
      Wr_Exclusive      => master_wr_excl,
      Wr_Idle           => master_wr_idle,
      Wr_Response       => master_wr_resp,
      Data_Rd           => master_data_rd,
      Data_Out          => master_data_out,
      Data_Exists       => master_data_exists,
      Data_Wr           => master_data_wr,
      Data_In           => master_data_in,
      Data_Empty        => master_data_empty,

      Direct_Wr_Addr    => master_dwr_addr,
      Direct_Wr_Len     => master_dwr_len,
      Direct_Wr_Data    => master_dwr_data,
      Direct_Wr_Start   => master_dwr_start,
      Direct_Wr_Next    => master_dwr_next,
      Direct_Wr_Done    => master_dwr_done,
      Direct_Wr_Resp    => master_dwr_resp,

      LMB_Data_Addr     => lmb_data_addr,
      LMB_Data_Read     => lmb_data_read,
      LMB_Data_Write    => lmb_data_write,
      LMB_Addr_Strobe   => lmb_addr_strobe,
      LMB_Read_Strobe   => lmb_read_strobe,
      LMB_Write_Strobe  => lmb_write_strobe,
      LMB_Ready         => lmb_ready,
      LMB_Wait          => lmb_wait,
      LMB_UE            => lmb_ue,
      LMB_Byte_Enable   => lmb_byte_enable,

      M_AXI_ACLK        => M_AXI_ACLK,
      M_AXI_ARESETn     => M_AXI_ARESETn,
      M_AXI_AWID        => M_AXI_AWID,
      M_AXI_AWADDR      => M_AXI_AWADDR,
      M_AXI_AWLEN       => M_AXI_AWLEN,
      M_AXI_AWSIZE      => M_AXI_AWSIZE,
      M_AXI_AWBURST     => M_AXI_AWBURST,
      M_AXI_AWLOCK      => M_AXI_AWLOCK,
      M_AXI_AWCACHE     => M_AXI_AWCACHE,
      M_AXI_AWPROT      => M_AXI_AWPROT,
      M_AXI_AWQOS       => M_AXI_AWQOS,
      M_AXI_AWVALID     => M_AXI_AWVALID,
      M_AXI_AWREADY     => M_AXI_AWREADY,
      M_AXI_WLAST       => M_AXI_WLAST,
      M_AXI_WDATA       => M_AXI_WDATA,
      M_AXI_WSTRB       => M_AXI_WSTRB,
      M_AXI_WVALID      => M_AXI_WVALID,
      M_AXI_WREADY      => M_AXI_WREADY,
      M_AXI_BRESP       => M_AXI_BRESP,
      M_AXI_BID         => M_AXI_BID,
      M_AXI_BVALID      => M_AXI_BVALID,
      M_AXI_BREADY      => M_AXI_BREADY,
      M_AXI_ARADDR      => M_AXI_ARADDR,
      M_AXI_ARID        => M_AXI_ARID,
      M_AXI_ARLEN       => M_AXI_ARLEN,
      M_AXI_ARSIZE      => M_AXI_ARSIZE,
      M_AXI_ARBURST     => M_AXI_ARBURST,
      M_AXI_ARLOCK      => M_AXI_ARLOCK,
      M_AXI_ARCACHE     => M_AXI_ARCACHE,
      M_AXI_ARPROT      => M_AXI_ARPROT,
      M_AXI_ARQOS       => M_AXI_ARQOS,
      M_AXI_ARVALID     => M_AXI_ARVALID,
      M_AXI_ARREADY     => M_AXI_ARREADY,
      M_AXI_RLAST       => M_AXI_RLAST,
      M_AXI_RID         => M_AXI_RID,
      M_AXI_RDATA       => M_AXI_RDATA,
      M_AXI_RRESP       => M_AXI_RRESP,
      M_AXI_RVALID      => M_AXI_RVALID,
      M_AXI_RREADY      => M_AXI_RREADY
    );

    Generate_LMB_Outputs : process (mb_debug_enabled, lmb_addr_strobe)
    begin  -- process Generate_LMB_Outputs
      lmb_addr_strobe_vec <= (others => '0');
      for I in 0 to C_EN_WIDTH - 1 loop
        lmb_addr_strobe_vec(I) <= lmb_addr_strobe and mb_debug_enabled(I);
      end loop;
    end process Generate_LMB_Outputs;

    LMB_Addr_Strobe_0  <= lmb_addr_strobe_vec(0);
    LMB_Addr_Strobe_1  <= lmb_addr_strobe_vec(1);
    LMB_Addr_Strobe_2  <= lmb_addr_strobe_vec(2);
    LMB_Addr_Strobe_3  <= lmb_addr_strobe_vec(3);
    LMB_Addr_Strobe_4  <= lmb_addr_strobe_vec(4);
    LMB_Addr_Strobe_5  <= lmb_addr_strobe_vec(5);
    LMB_Addr_Strobe_6  <= lmb_addr_strobe_vec(6);
    LMB_Addr_Strobe_7  <= lmb_addr_strobe_vec(7);
    LMB_Addr_Strobe_8  <= lmb_addr_strobe_vec(8);
    LMB_Addr_Strobe_9  <= lmb_addr_strobe_vec(9);
    LMB_Addr_Strobe_10 <= lmb_addr_strobe_vec(10);
    LMB_Addr_Strobe_11 <= lmb_addr_strobe_vec(11);
    LMB_Addr_Strobe_12 <= lmb_addr_strobe_vec(12);
    LMB_Addr_Strobe_13 <= lmb_addr_strobe_vec(13);
    LMB_Addr_Strobe_14 <= lmb_addr_strobe_vec(14);
    LMB_Addr_Strobe_15 <= lmb_addr_strobe_vec(15);
    LMB_Addr_Strobe_16 <= lmb_addr_strobe_vec(16);
    LMB_Addr_Strobe_17 <= lmb_addr_strobe_vec(17);
    LMB_Addr_Strobe_18 <= lmb_addr_strobe_vec(18);
    LMB_Addr_Strobe_19 <= lmb_addr_strobe_vec(19);
    LMB_Addr_Strobe_20 <= lmb_addr_strobe_vec(20);
    LMB_Addr_Strobe_21 <= lmb_addr_strobe_vec(21);
    LMB_Addr_Strobe_22 <= lmb_addr_strobe_vec(22);
    LMB_Addr_Strobe_23 <= lmb_addr_strobe_vec(23);
    LMB_Addr_Strobe_24 <= lmb_addr_strobe_vec(24);
    LMB_Addr_Strobe_25 <= lmb_addr_strobe_vec(25);
    LMB_Addr_Strobe_26 <= lmb_addr_strobe_vec(26);
    LMB_Addr_Strobe_27 <= lmb_addr_strobe_vec(27);
    LMB_Addr_Strobe_28 <= lmb_addr_strobe_vec(28);
    LMB_Addr_Strobe_29 <= lmb_addr_strobe_vec(29);
    LMB_Addr_Strobe_30 <= lmb_addr_strobe_vec(30);
    LMB_Addr_Strobe_31 <= lmb_addr_strobe_vec(31);

    LMB_Data_Addr_0  <= lmb_data_addr;
    LMB_Data_Addr_1  <= lmb_data_addr;
    LMB_Data_Addr_2  <= lmb_data_addr;
    LMB_Data_Addr_3  <= lmb_data_addr;
    LMB_Data_Addr_4  <= lmb_data_addr;
    LMB_Data_Addr_5  <= lmb_data_addr;
    LMB_Data_Addr_6  <= lmb_data_addr;
    LMB_Data_Addr_7  <= lmb_data_addr;
    LMB_Data_Addr_8  <= lmb_data_addr;
    LMB_Data_Addr_9  <= lmb_data_addr;
    LMB_Data_Addr_10 <= lmb_data_addr;
    LMB_Data_Addr_11 <= lmb_data_addr;
    LMB_Data_Addr_12 <= lmb_data_addr;
    LMB_Data_Addr_13 <= lmb_data_addr;
    LMB_Data_Addr_14 <= lmb_data_addr;
    LMB_Data_Addr_15 <= lmb_data_addr;
    LMB_Data_Addr_16 <= lmb_data_addr;
    LMB_Data_Addr_17 <= lmb_data_addr;
    LMB_Data_Addr_18 <= lmb_data_addr;
    LMB_Data_Addr_19 <= lmb_data_addr;
    LMB_Data_Addr_20 <= lmb_data_addr;
    LMB_Data_Addr_21 <= lmb_data_addr;
    LMB_Data_Addr_22 <= lmb_data_addr;
    LMB_Data_Addr_23 <= lmb_data_addr;
    LMB_Data_Addr_24 <= lmb_data_addr;
    LMB_Data_Addr_25 <= lmb_data_addr;
    LMB_Data_Addr_26 <= lmb_data_addr;
    LMB_Data_Addr_27 <= lmb_data_addr;
    LMB_Data_Addr_28 <= lmb_data_addr;
    LMB_Data_Addr_29 <= lmb_data_addr;
    LMB_Data_Addr_30 <= lmb_data_addr;
    LMB_Data_Addr_31 <= lmb_data_addr;

    LMB_Data_write_0  <= lmb_data_write;
    LMB_Data_write_1  <= lmb_data_write;
    LMB_Data_write_2  <= lmb_data_write;
    LMB_Data_write_3  <= lmb_data_write;
    LMB_Data_write_4  <= lmb_data_write;
    LMB_Data_write_5  <= lmb_data_write;
    LMB_Data_write_6  <= lmb_data_write;
    LMB_Data_write_7  <= lmb_data_write;
    LMB_Data_write_8  <= lmb_data_write;
    LMB_Data_write_9  <= lmb_data_write;
    LMB_Data_write_10 <= lmb_data_write;
    LMB_Data_write_11 <= lmb_data_write;
    LMB_Data_write_12 <= lmb_data_write;
    LMB_Data_write_13 <= lmb_data_write;
    LMB_Data_write_14 <= lmb_data_write;
    LMB_Data_write_15 <= lmb_data_write;
    LMB_Data_write_16 <= lmb_data_write;
    LMB_Data_write_17 <= lmb_data_write;
    LMB_Data_write_18 <= lmb_data_write;
    LMB_Data_write_19 <= lmb_data_write;
    LMB_Data_write_20 <= lmb_data_write;
    LMB_Data_write_21 <= lmb_data_write;
    LMB_Data_write_22 <= lmb_data_write;
    LMB_Data_write_23 <= lmb_data_write;
    LMB_Data_write_24 <= lmb_data_write;
    LMB_Data_write_25 <= lmb_data_write;
    LMB_Data_write_26 <= lmb_data_write;
    LMB_Data_write_27 <= lmb_data_write;
    LMB_Data_write_28 <= lmb_data_write;
    LMB_Data_write_29 <= lmb_data_write;
    LMB_Data_write_30 <= lmb_data_write;
    LMB_Data_write_31 <= lmb_data_write;

    LMB_Read_strobe_0  <= lmb_read_strobe;
    LMB_Read_strobe_1  <= lmb_read_strobe;
    LMB_Read_strobe_2  <= lmb_read_strobe;
    LMB_Read_strobe_3  <= lmb_read_strobe;
    LMB_Read_strobe_4  <= lmb_read_strobe;
    LMB_Read_strobe_5  <= lmb_read_strobe;
    LMB_Read_strobe_6  <= lmb_read_strobe;
    LMB_Read_strobe_7  <= lmb_read_strobe;
    LMB_Read_strobe_8  <= lmb_read_strobe;
    LMB_Read_strobe_9  <= lmb_read_strobe;
    LMB_Read_strobe_10 <= lmb_read_strobe;
    LMB_Read_strobe_11 <= lmb_read_strobe;
    LMB_Read_strobe_12 <= lmb_read_strobe;
    LMB_Read_strobe_13 <= lmb_read_strobe;
    LMB_Read_strobe_14 <= lmb_read_strobe;
    LMB_Read_strobe_15 <= lmb_read_strobe;
    LMB_Read_strobe_16 <= lmb_read_strobe;
    LMB_Read_strobe_17 <= lmb_read_strobe;
    LMB_Read_strobe_18 <= lmb_read_strobe;
    LMB_Read_strobe_19 <= lmb_read_strobe;
    LMB_Read_strobe_20 <= lmb_read_strobe;
    LMB_Read_strobe_21 <= lmb_read_strobe;
    LMB_Read_strobe_22 <= lmb_read_strobe;
    LMB_Read_strobe_23 <= lmb_read_strobe;
    LMB_Read_strobe_24 <= lmb_read_strobe;
    LMB_Read_strobe_25 <= lmb_read_strobe;
    LMB_Read_strobe_26 <= lmb_read_strobe;
    LMB_Read_strobe_27 <= lmb_read_strobe;
    LMB_Read_strobe_28 <= lmb_read_strobe;
    LMB_Read_strobe_29 <= lmb_read_strobe;
    LMB_Read_strobe_30 <= lmb_read_strobe;
    LMB_Read_strobe_31 <= lmb_read_strobe;

    LMB_Write_strobe_0  <= lmb_write_strobe;
    LMB_Write_strobe_1  <= lmb_write_strobe;
    LMB_Write_strobe_2  <= lmb_write_strobe;
    LMB_Write_strobe_3  <= lmb_write_strobe;
    LMB_Write_strobe_4  <= lmb_write_strobe;
    LMB_Write_strobe_5  <= lmb_write_strobe;
    LMB_Write_strobe_6  <= lmb_write_strobe;
    LMB_Write_strobe_7  <= lmb_write_strobe;
    LMB_Write_strobe_8  <= lmb_write_strobe;
    LMB_Write_strobe_9  <= lmb_write_strobe;
    LMB_Write_strobe_10 <= lmb_write_strobe;
    LMB_Write_strobe_11 <= lmb_write_strobe;
    LMB_Write_strobe_12 <= lmb_write_strobe;
    LMB_Write_strobe_13 <= lmb_write_strobe;
    LMB_Write_strobe_14 <= lmb_write_strobe;
    LMB_Write_strobe_15 <= lmb_write_strobe;
    LMB_Write_strobe_16 <= lmb_write_strobe;
    LMB_Write_strobe_17 <= lmb_write_strobe;
    LMB_Write_strobe_18 <= lmb_write_strobe;
    LMB_Write_strobe_19 <= lmb_write_strobe;
    LMB_Write_strobe_20 <= lmb_write_strobe;
    LMB_Write_strobe_21 <= lmb_write_strobe;
    LMB_Write_strobe_22 <= lmb_write_strobe;
    LMB_Write_strobe_23 <= lmb_write_strobe;
    LMB_Write_strobe_24 <= lmb_write_strobe;
    LMB_Write_strobe_25 <= lmb_write_strobe;
    LMB_Write_strobe_26 <= lmb_write_strobe;
    LMB_Write_strobe_27 <= lmb_write_strobe;
    LMB_Write_strobe_28 <= lmb_write_strobe;
    LMB_Write_strobe_29 <= lmb_write_strobe;
    LMB_Write_strobe_30 <= lmb_write_strobe;
    LMB_Write_strobe_31 <= lmb_write_strobe;

    LMB_Byte_enable_0  <= lmb_byte_enable;
    LMB_Byte_enable_1  <= lmb_byte_enable;
    LMB_Byte_enable_2  <= lmb_byte_enable;
    LMB_Byte_enable_3  <= lmb_byte_enable;
    LMB_Byte_enable_4  <= lmb_byte_enable;
    LMB_Byte_enable_5  <= lmb_byte_enable;
    LMB_Byte_enable_6  <= lmb_byte_enable;
    LMB_Byte_enable_7  <= lmb_byte_enable;
    LMB_Byte_enable_8  <= lmb_byte_enable;
    LMB_Byte_enable_9  <= lmb_byte_enable;
    LMB_Byte_enable_10 <= lmb_byte_enable;
    LMB_Byte_enable_11 <= lmb_byte_enable;
    LMB_Byte_enable_12 <= lmb_byte_enable;
    LMB_Byte_enable_13 <= lmb_byte_enable;
    LMB_Byte_enable_14 <= lmb_byte_enable;
    LMB_Byte_enable_15 <= lmb_byte_enable;
    LMB_Byte_enable_16 <= lmb_byte_enable;
    LMB_Byte_enable_17 <= lmb_byte_enable;
    LMB_Byte_enable_18 <= lmb_byte_enable;
    LMB_Byte_enable_19 <= lmb_byte_enable;
    LMB_Byte_enable_20 <= lmb_byte_enable;
    LMB_Byte_enable_21 <= lmb_byte_enable;
    LMB_Byte_enable_22 <= lmb_byte_enable;
    LMB_Byte_enable_23 <= lmb_byte_enable;
    LMB_Byte_enable_24 <= lmb_byte_enable;
    LMB_Byte_enable_25 <= lmb_byte_enable;
    LMB_Byte_enable_26 <= lmb_byte_enable;
    LMB_Byte_enable_27 <= lmb_byte_enable;
    LMB_Byte_enable_28 <= lmb_byte_enable;
    LMB_Byte_enable_29 <= lmb_byte_enable;
    LMB_Byte_enable_30 <= lmb_byte_enable;
    LMB_Byte_enable_31 <= lmb_byte_enable;

    Generate_LMB_Inputs : process (mb_debug_enabled, lmb_data_read_vec_q, lmb_ready_vec_q, lmb_wait_vec_q, lmb_ue_vec_q)
      variable data_mask : std_logic_vector(0 to C_DATA_SIZE - 1);
      variable data_read : std_logic_vector(0 to C_DATA_SIZE - 1);
      variable ready     : std_logic;
      variable wait_i    : std_logic;
      variable ue        : std_logic;
    begin  -- process Generate_LMB_Inputs
      data_read := (others => '0');
      ready     := '0';
      wait_i    := '0';
      ue        := '0';
      for I in 0 to C_EN_WIDTH - 1 loop
        data_mask := (0 to C_DATA_SIZE - 1 => mb_debug_enabled(I));
        data_read := data_read or (lmb_data_read_vec_q(I) and data_mask);
        ready     := ready     or (lmb_ready_vec_q(I)     and mb_debug_enabled(I));
        wait_i    := wait_i    or (lmb_wait_vec_q(I)      and mb_debug_enabled(I));
        ue        := ue        or (lmb_ue_vec_q(I)        and mb_debug_enabled(I));
      end loop;
      lmb_data_read <= data_read;
      lmb_ready     <= ready;
      lmb_wait      <= wait_i;
      lmb_ue        <= ue;
    end process Generate_LMB_Inputs;

    Clock_LMB_Inputs : process (M_AXI_ACLK)
    begin
      if M_AXI_ACLK'event and M_AXI_ACLK = '1' then -- rising clock edge
        for I in 0 to C_EN_WIDTH - 1 loop
          lmb_data_read_vec_q(I) <= lmb_data_read_vec(I);
          lmb_ready_vec_q(I)     <= lmb_ready_vec(I);
          lmb_wait_vec_q(I)      <= lmb_wait_vec(I);
          lmb_ue_vec_q(I)        <= lmb_ue_vec(I);
        end loop;
      end if;
    end process Clock_LMB_Inputs;

    lmb_data_read_vec(0)  <= LMB_Data_Read_0;
    lmb_data_read_vec(1)  <= LMB_Data_Read_1;
    lmb_data_read_vec(2)  <= LMB_Data_Read_2;
    lmb_data_read_vec(3)  <= LMB_Data_Read_3;
    lmb_data_read_vec(4)  <= LMB_Data_Read_4;
    lmb_data_read_vec(5)  <= LMB_Data_Read_5;
    lmb_data_read_vec(6)  <= LMB_Data_Read_6;
    lmb_data_read_vec(7)  <= LMB_Data_Read_7;
    lmb_data_read_vec(8)  <= LMB_Data_Read_8;
    lmb_data_read_vec(9)  <= LMB_Data_Read_9;
    lmb_data_read_vec(10) <= LMB_Data_Read_10;
    lmb_data_read_vec(11) <= LMB_Data_Read_11;
    lmb_data_read_vec(12) <= LMB_Data_Read_12;
    lmb_data_read_vec(13) <= LMB_Data_Read_13;
    lmb_data_read_vec(14) <= LMB_Data_Read_14;
    lmb_data_read_vec(15) <= LMB_Data_Read_15;
    lmb_data_read_vec(16) <= LMB_Data_Read_16;
    lmb_data_read_vec(17) <= LMB_Data_Read_17;
    lmb_data_read_vec(18) <= LMB_Data_Read_18;
    lmb_data_read_vec(19) <= LMB_Data_Read_19;
    lmb_data_read_vec(20) <= LMB_Data_Read_20;
    lmb_data_read_vec(21) <= LMB_Data_Read_21;
    lmb_data_read_vec(22) <= LMB_Data_Read_22;
    lmb_data_read_vec(23) <= LMB_Data_Read_23;
    lmb_data_read_vec(24) <= LMB_Data_Read_24;
    lmb_data_read_vec(25) <= LMB_Data_Read_25;
    lmb_data_read_vec(26) <= LMB_Data_Read_26;
    lmb_data_read_vec(27) <= LMB_Data_Read_27;
    lmb_data_read_vec(28) <= LMB_Data_Read_28;
    lmb_data_read_vec(29) <= LMB_Data_Read_29;
    lmb_data_read_vec(30) <= LMB_Data_Read_30;
    lmb_data_read_vec(31) <= LMB_Data_Read_31;

    lmb_ready_vec(0)      <= LMB_Ready_0;
    lmb_ready_vec(1)      <= LMB_Ready_1;
    lmb_ready_vec(2)      <= LMB_Ready_2;
    lmb_ready_vec(3)      <= LMB_Ready_3;
    lmb_ready_vec(4)      <= LMB_Ready_4;
    lmb_ready_vec(5)      <= LMB_Ready_5;
    lmb_ready_vec(6)      <= LMB_Ready_6;
    lmb_ready_vec(7)      <= LMB_Ready_7;
    lmb_ready_vec(8)      <= LMB_Ready_8;
    lmb_ready_vec(9)      <= LMB_Ready_9;
    lmb_ready_vec(10)     <= LMB_Ready_10;
    lmb_ready_vec(11)     <= LMB_Ready_11;
    lmb_ready_vec(12)     <= LMB_Ready_12;
    lmb_ready_vec(13)     <= LMB_Ready_13;
    lmb_ready_vec(14)     <= LMB_Ready_14;
    lmb_ready_vec(15)     <= LMB_Ready_15;
    lmb_ready_vec(16)     <= LMB_Ready_16;
    lmb_ready_vec(17)     <= LMB_Ready_17;
    lmb_ready_vec(18)     <= LMB_Ready_18;
    lmb_ready_vec(19)     <= LMB_Ready_19;
    lmb_ready_vec(20)     <= LMB_Ready_20;
    lmb_ready_vec(21)     <= LMB_Ready_21;
    lmb_ready_vec(22)     <= LMB_Ready_22;
    lmb_ready_vec(23)     <= LMB_Ready_23;
    lmb_ready_vec(24)     <= LMB_Ready_24;
    lmb_ready_vec(25)     <= LMB_Ready_25;
    lmb_ready_vec(26)     <= LMB_Ready_26;
    lmb_ready_vec(27)     <= LMB_Ready_27;
    lmb_ready_vec(28)     <= LMB_Ready_28;
    lmb_ready_vec(29)     <= LMB_Ready_29;
    lmb_ready_vec(30)     <= LMB_Ready_30;
    lmb_ready_vec(31)     <= LMB_Ready_31;

    lmb_wait_vec(0)       <= LMB_Wait_0;
    lmb_wait_vec(1)       <= LMB_Wait_1;
    lmb_wait_vec(2)       <= LMB_Wait_2;
    lmb_wait_vec(3)       <= LMB_Wait_3;
    lmb_wait_vec(4)       <= LMB_Wait_4;
    lmb_wait_vec(5)       <= LMB_Wait_5;
    lmb_wait_vec(6)       <= LMB_Wait_6;
    lmb_wait_vec(7)       <= LMB_Wait_7;
    lmb_wait_vec(8)       <= LMB_Wait_8;
    lmb_wait_vec(9)       <= LMB_Wait_9;
    lmb_wait_vec(10)      <= LMB_Wait_10;
    lmb_wait_vec(11)      <= LMB_Wait_11;
    lmb_wait_vec(12)      <= LMB_Wait_12;
    lmb_wait_vec(13)      <= LMB_Wait_13;
    lmb_wait_vec(14)      <= LMB_Wait_14;
    lmb_wait_vec(15)      <= LMB_Wait_15;
    lmb_wait_vec(16)      <= LMB_Wait_16;
    lmb_wait_vec(17)      <= LMB_Wait_17;
    lmb_wait_vec(18)      <= LMB_Wait_18;
    lmb_wait_vec(19)      <= LMB_Wait_19;
    lmb_wait_vec(20)      <= LMB_Wait_20;
    lmb_wait_vec(21)      <= LMB_Wait_21;
    lmb_wait_vec(22)      <= LMB_Wait_22;
    lmb_wait_vec(23)      <= LMB_Wait_23;
    lmb_wait_vec(24)      <= LMB_Wait_24;
    lmb_wait_vec(25)      <= LMB_Wait_25;
    lmb_wait_vec(26)      <= LMB_Wait_26;
    lmb_wait_vec(27)      <= LMB_Wait_27;
    lmb_wait_vec(28)      <= LMB_Wait_28;
    lmb_wait_vec(29)      <= LMB_Wait_29;
    lmb_wait_vec(30)      <= LMB_Wait_30;
    lmb_wait_vec(31)      <= LMB_Wait_31;

    lmb_ue_vec(0)         <= LMB_UE_0;
    lmb_ue_vec(1)         <= LMB_UE_1;
    lmb_ue_vec(2)         <= LMB_UE_2;
    lmb_ue_vec(3)         <= LMB_UE_3;
    lmb_ue_vec(4)         <= LMB_UE_4;
    lmb_ue_vec(5)         <= LMB_UE_5;
    lmb_ue_vec(6)         <= LMB_UE_6;
    lmb_ue_vec(7)         <= LMB_UE_7;
    lmb_ue_vec(8)         <= LMB_UE_8;
    lmb_ue_vec(9)         <= LMB_UE_9;
    lmb_ue_vec(10)        <= LMB_UE_10;
    lmb_ue_vec(11)        <= LMB_UE_11;
    lmb_ue_vec(12)        <= LMB_UE_12;
    lmb_ue_vec(13)        <= LMB_UE_13;
    lmb_ue_vec(14)        <= LMB_UE_14;
    lmb_ue_vec(15)        <= LMB_UE_15;
    lmb_ue_vec(16)        <= LMB_UE_16;
    lmb_ue_vec(17)        <= LMB_UE_17;
    lmb_ue_vec(18)        <= LMB_UE_18;
    lmb_ue_vec(19)        <= LMB_UE_19;
    lmb_ue_vec(20)        <= LMB_UE_20;
    lmb_ue_vec(21)        <= LMB_UE_21;
    lmb_ue_vec(22)        <= LMB_UE_22;
    lmb_ue_vec(23)        <= LMB_UE_23;
    lmb_ue_vec(24)        <= LMB_UE_24;
    lmb_ue_vec(25)        <= LMB_UE_25;
    lmb_ue_vec(26)        <= LMB_UE_26;
    lmb_ue_vec(27)        <= LMB_UE_27;
    lmb_ue_vec(28)        <= LMB_UE_28;
    lmb_ue_vec(29)        <= LMB_UE_29;
    lmb_ue_vec(30)        <= LMB_UE_30;
    lmb_ue_vec(31)        <= LMB_UE_31;
  end generate Use_Bus_MASTER;

  Use_Bus_MASTER_AXI : if (C_DBG_MEM_ACCESS = 0 and C_TRACE_AXI_MASTER) generate
  begin

    bus_master_I : bus_master
    generic map  (
      C_TARGET                => C_TARGET,
      C_M_AXI_DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
      C_M_AXI_THREAD_ID_WIDTH => C_M_AXI_THREAD_ID_WIDTH,
      C_M_AXI_ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
      C_DATA_SIZE             => C_DATA_SIZE,
      C_HAS_FIFO_PORTS        => false,
      C_HAS_DIRECT_PORT       => true,
      C_USE_SRL16             => C_USE_SRL16
    )
    port map (
      Rd_Start          => master_rd_start,
      Rd_Addr           => master_rd_addr,
      Rd_Len            => master_rd_len,
      Rd_Size           => master_rd_size,
      Rd_Exclusive      => master_rd_excl,
      Rd_Idle           => master_rd_idle,
      Rd_Response       => master_rd_resp,
      Wr_Start          => master_wr_start,
      Wr_Addr           => master_wr_addr,
      Wr_Len            => master_wr_len,
      Wr_Size           => master_wr_size,
      Wr_Exclusive      => master_wr_excl,
      Wr_Idle           => master_wr_idle,
      Wr_Response       => master_wr_resp,
      Data_Rd           => master_data_rd,
      Data_Out          => master_data_out,
      Data_Exists       => master_data_exists,
      Data_Wr           => master_data_wr,
      Data_In           => master_data_in,
      Data_Empty        => master_data_empty,

      Direct_Wr_Addr    => master_dwr_addr,
      Direct_Wr_Len     => master_dwr_len,
      Direct_Wr_Data    => master_dwr_data,
      Direct_Wr_Start   => master_dwr_start,
      Direct_Wr_Next    => master_dwr_next,
      Direct_Wr_Done    => master_dwr_done,
      Direct_Wr_Resp    => master_dwr_resp,

      LMB_Data_Addr     => open,
      LMB_Data_Read     => (others => '0'),
      LMB_Data_Write    => open,
      LMB_Addr_Strobe   => open,
      LMB_Read_Strobe   => open,
      LMB_Write_Strobe  => open,
      LMB_Ready         => '0',
      LMB_Wait          => '0',
      LMB_UE            => '0',
      LMB_Byte_Enable   => open,

      M_AXI_ACLK        => M_AXI_ACLK,
      M_AXI_ARESETn     => M_AXI_ARESETn,
      M_AXI_AWID        => M_AXI_AWID,
      M_AXI_AWADDR      => M_AXI_AWADDR,
      M_AXI_AWLEN       => M_AXI_AWLEN,
      M_AXI_AWSIZE      => M_AXI_AWSIZE,
      M_AXI_AWBURST     => M_AXI_AWBURST,
      M_AXI_AWLOCK      => M_AXI_AWLOCK,
      M_AXI_AWCACHE     => M_AXI_AWCACHE,
      M_AXI_AWPROT      => M_AXI_AWPROT,
      M_AXI_AWQOS       => M_AXI_AWQOS,
      M_AXI_AWVALID     => M_AXI_AWVALID,
      M_AXI_AWREADY     => M_AXI_AWREADY,
      M_AXI_WLAST       => M_AXI_WLAST,
      M_AXI_WDATA       => M_AXI_WDATA,
      M_AXI_WSTRB       => M_AXI_WSTRB,
      M_AXI_WVALID      => M_AXI_WVALID,
      M_AXI_WREADY      => M_AXI_WREADY,
      M_AXI_BRESP       => M_AXI_BRESP,
      M_AXI_BID         => M_AXI_BID,
      M_AXI_BVALID      => M_AXI_BVALID,
      M_AXI_BREADY      => M_AXI_BREADY,
      M_AXI_ARADDR      => M_AXI_ARADDR,
      M_AXI_ARID        => M_AXI_ARID,
      M_AXI_ARLEN       => M_AXI_ARLEN,
      M_AXI_ARSIZE      => M_AXI_ARSIZE,
      M_AXI_ARBURST     => M_AXI_ARBURST,
      M_AXI_ARLOCK      => M_AXI_ARLOCK,
      M_AXI_ARCACHE     => M_AXI_ARCACHE,
      M_AXI_ARPROT      => M_AXI_ARPROT,
      M_AXI_ARQOS       => M_AXI_ARQOS,
      M_AXI_ARVALID     => M_AXI_ARVALID,
      M_AXI_ARREADY     => M_AXI_ARREADY,
      M_AXI_RLAST       => M_AXI_RLAST,
      M_AXI_RID         => M_AXI_RID,
      M_AXI_RDATA       => M_AXI_RDATA,
      M_AXI_RRESP       => M_AXI_RRESP,
      M_AXI_RVALID      => M_AXI_RVALID,
      M_AXI_RREADY      => M_AXI_RREADY
    );

  end generate Use_Bus_MASTER_AXI;

  No_Bus_MASTER_AXI : if (C_DBG_MEM_ACCESS = 0 and not C_TRACE_AXI_MASTER) generate
  begin
    master_rd_idle      <= '1';
    master_rd_resp      <= "00";
    master_wr_idle      <= '1';
    master_wr_resp      <= "00";
    master_data_out     <= (others => '0');
    master_data_exists  <= '0';
    master_data_empty   <= '1';
    master_dwr_next     <= '0';
    master_dwr_done     <= '0';
    master_dwr_resp     <= (others => '0');

    M_AXI_AWID          <= (others => '0');
    M_AXI_AWADDR        <= (others => '0');
    M_AXI_AWLEN         <= (others => '0');
    M_AXI_AWSIZE        <= (others => '0');
    M_AXI_AWBURST       <= (others => '0');
    M_AXI_AWLOCK        <= '0';
    M_AXI_AWCACHE       <= (others => '0');
    M_AXI_AWPROT        <= (others => '0');
    M_AXI_AWQOS         <= (others => '0');
    M_AXI_AWVALID       <= '0';
    M_AXI_WDATA         <= (others => '0');
    M_AXI_WSTRB         <= (others => '0');
    M_AXI_WLAST         <= '0';
    M_AXI_WVALID        <= '0';
    M_AXI_BREADY        <= '0';
    M_AXI_ARID          <= (others => '0');
    M_AXI_ARADDR        <= (others => '0');
    M_AXI_ARLEN         <= (others => '0');
    M_AXI_ARSIZE        <= (others => '0');
    M_AXI_ARBURST       <= (others => '0');
    M_AXI_ARLOCK        <= '0';
    M_AXI_ARCACHE       <= (others => '0');
    M_AXI_ARPROT        <= (others => '0');
    M_AXI_ARQOS         <= (others => '0');
    M_AXI_ARVALID       <= '0';
    M_AXI_RREADY        <= '0';
  end generate No_Bus_MASTER_AXI;

  No_Bus_MASTER_LMB : if (C_DBG_MEM_ACCESS = 0) generate
  begin
    LMB_Data_Addr_0     <= (others => '0');
    LMB_Data_Write_0    <= (others => '0');
    LMB_Addr_Strobe_0   <= '0';
    LMB_Read_Strobe_0   <= '0';
    LMB_Write_Strobe_0  <= '0';
    LMB_Byte_Enable_0   <= (others => '0');

    LMB_Data_Addr_1     <= (others => '0');
    LMB_Data_Write_1    <= (others => '0');
    LMB_Addr_Strobe_1   <= '0';
    LMB_Read_Strobe_1   <= '0';
    LMB_Write_Strobe_1  <= '0';
    LMB_Byte_Enable_1   <= (others => '0');

    LMB_Data_Addr_2     <= (others => '0');
    LMB_Data_Write_2    <= (others => '0');
    LMB_Addr_Strobe_2   <= '0';
    LMB_Read_Strobe_2   <= '0';
    LMB_Write_Strobe_2  <= '0';
    LMB_Byte_Enable_2   <= (others => '0');

    LMB_Data_Addr_3     <= (others => '0');
    LMB_Data_Write_3    <= (others => '0');
    LMB_Addr_Strobe_3   <= '0';
    LMB_Read_Strobe_3   <= '0';
    LMB_Write_Strobe_3  <= '0';
    LMB_Byte_Enable_3   <= (others => '0');

    LMB_Data_Addr_4     <= (others => '0');
    LMB_Data_Write_4    <= (others => '0');
    LMB_Addr_Strobe_4   <= '0';
    LMB_Read_Strobe_4   <= '0';
    LMB_Write_Strobe_4  <= '0';
    LMB_Byte_Enable_4   <= (others => '0');

    LMB_Data_Addr_5     <= (others => '0');
    LMB_Data_Write_5    <= (others => '0');
    LMB_Addr_Strobe_5   <= '0';
    LMB_Read_Strobe_5   <= '0';
    LMB_Write_Strobe_5  <= '0';
    LMB_Byte_Enable_5   <= (others => '0');

    LMB_Data_Addr_6     <= (others => '0');
    LMB_Data_Write_6    <= (others => '0');
    LMB_Addr_Strobe_6   <= '0';
    LMB_Read_Strobe_6   <= '0';
    LMB_Write_Strobe_6  <= '0';
    LMB_Byte_Enable_6   <= (others => '0');

    LMB_Data_Addr_7     <= (others => '0');
    LMB_Data_Write_7    <= (others => '0');
    LMB_Addr_Strobe_7   <= '0';
    LMB_Read_Strobe_7   <= '0';
    LMB_Write_Strobe_7  <= '0';
    LMB_Byte_Enable_7   <= (others => '0');

    LMB_Data_Addr_8     <= (others => '0');
    LMB_Data_Write_8    <= (others => '0');
    LMB_Addr_Strobe_8   <= '0';
    LMB_Read_Strobe_8   <= '0';
    LMB_Write_Strobe_8  <= '0';
    LMB_Byte_Enable_8   <= (others => '0');

    LMB_Data_Addr_9     <= (others => '0');
    LMB_Data_Write_9    <= (others => '0');
    LMB_Addr_Strobe_9   <= '0';
    LMB_Read_Strobe_9   <= '0';
    LMB_Write_Strobe_9  <= '0';
    LMB_Byte_Enable_9   <= (others => '0');

    LMB_Data_Addr_10    <= (others => '0');
    LMB_Data_Write_10   <= (others => '0');
    LMB_Addr_Strobe_10  <= '0';
    LMB_Read_Strobe_10  <= '0';
    LMB_Write_Strobe_10 <= '0';
    LMB_Byte_Enable_10  <= (others => '0');

    LMB_Data_Addr_11    <= (others => '0');
    LMB_Data_Write_11   <= (others => '0');
    LMB_Addr_Strobe_11  <= '0';
    LMB_Read_Strobe_11  <= '0';
    LMB_Write_Strobe_11 <= '0';
    LMB_Byte_Enable_11  <= (others => '0');

    LMB_Data_Addr_12    <= (others => '0');
    LMB_Data_Write_12   <= (others => '0');
    LMB_Addr_Strobe_12  <= '0';
    LMB_Read_Strobe_12  <= '0';
    LMB_Write_Strobe_12 <= '0';
    LMB_Byte_Enable_12  <= (others => '0');

    LMB_Data_Addr_13    <= (others => '0');
    LMB_Data_Write_13   <= (others => '0');
    LMB_Addr_Strobe_13  <= '0';
    LMB_Read_Strobe_13  <= '0';
    LMB_Write_Strobe_13 <= '0';
    LMB_Byte_Enable_13  <= (others => '0');

    LMB_Data_Addr_14    <= (others => '0');
    LMB_Data_Write_14   <= (others => '0');
    LMB_Addr_Strobe_14  <= '0';
    LMB_Read_Strobe_14  <= '0';
    LMB_Write_Strobe_14 <= '0';
    LMB_Byte_Enable_14  <= (others => '0');

    LMB_Data_Addr_15    <= (others => '0');
    LMB_Data_Write_15   <= (others => '0');
    LMB_Addr_Strobe_15  <= '0';
    LMB_Read_Strobe_15  <= '0';
    LMB_Write_Strobe_15 <= '0';
    LMB_Byte_Enable_15  <= (others => '0');

    LMB_Data_Addr_16    <= (others => '0');
    LMB_Data_Write_16   <= (others => '0');
    LMB_Addr_Strobe_16  <= '0';
    LMB_Read_Strobe_16  <= '0';
    LMB_Write_Strobe_16 <= '0';
    LMB_Byte_Enable_16  <= (others => '0');

    LMB_Data_Addr_17    <= (others => '0');
    LMB_Data_Write_17   <= (others => '0');
    LMB_Addr_Strobe_17  <= '0';
    LMB_Read_Strobe_17  <= '0';
    LMB_Write_Strobe_17 <= '0';
    LMB_Byte_Enable_17  <= (others => '0');

    LMB_Data_Addr_18    <= (others => '0');
    LMB_Data_Write_18   <= (others => '0');
    LMB_Addr_Strobe_18  <= '0';
    LMB_Read_Strobe_18  <= '0';
    LMB_Write_Strobe_18 <= '0';
    LMB_Byte_Enable_18  <= (others => '0');

    LMB_Data_Addr_19    <= (others => '0');
    LMB_Data_Write_19   <= (others => '0');
    LMB_Addr_Strobe_19  <= '0';
    LMB_Read_Strobe_19  <= '0';
    LMB_Write_Strobe_19 <= '0';
    LMB_Byte_Enable_19  <= (others => '0');

    LMB_Data_Addr_20    <= (others => '0');
    LMB_Data_Write_20   <= (others => '0');
    LMB_Addr_Strobe_20  <= '0';
    LMB_Read_Strobe_20  <= '0';
    LMB_Write_Strobe_20 <= '0';
    LMB_Byte_Enable_20  <= (others => '0');

    LMB_Data_Addr_21    <= (others => '0');
    LMB_Data_Write_21   <= (others => '0');
    LMB_Addr_Strobe_21  <= '0';
    LMB_Read_Strobe_21  <= '0';
    LMB_Write_Strobe_21 <= '0';
    LMB_Byte_Enable_21  <= (others => '0');

    LMB_Data_Addr_22    <= (others => '0');
    LMB_Data_Write_22   <= (others => '0');
    LMB_Addr_Strobe_22  <= '0';
    LMB_Read_Strobe_22  <= '0';
    LMB_Write_Strobe_22 <= '0';
    LMB_Byte_Enable_22  <= (others => '0');

    LMB_Data_Addr_23    <= (others => '0');
    LMB_Data_Write_23   <= (others => '0');
    LMB_Addr_Strobe_23  <= '0';
    LMB_Read_Strobe_23  <= '0';
    LMB_Write_Strobe_23 <= '0';
    LMB_Byte_Enable_23  <= (others => '0');

    LMB_Data_Addr_24    <= (others => '0');
    LMB_Data_Write_24   <= (others => '0');
    LMB_Addr_Strobe_24  <= '0';
    LMB_Read_Strobe_24  <= '0';
    LMB_Write_Strobe_24 <= '0';
    LMB_Byte_Enable_24  <= (others => '0');

    LMB_Data_Addr_25    <= (others => '0');
    LMB_Data_Write_25   <= (others => '0');
    LMB_Addr_Strobe_25  <= '0';
    LMB_Read_Strobe_25  <= '0';
    LMB_Write_Strobe_25 <= '0';
    LMB_Byte_Enable_25  <= (others => '0');

    LMB_Data_Addr_26    <= (others => '0');
    LMB_Data_Write_26   <= (others => '0');
    LMB_Addr_Strobe_26  <= '0';
    LMB_Read_Strobe_26  <= '0';
    LMB_Write_Strobe_26 <= '0';
    LMB_Byte_Enable_26  <= (others => '0');

    LMB_Data_Addr_27    <= (others => '0');
    LMB_Data_Write_27   <= (others => '0');
    LMB_Addr_Strobe_27  <= '0';
    LMB_Read_Strobe_27  <= '0';
    LMB_Write_Strobe_27 <= '0';
    LMB_Byte_Enable_27  <= (others => '0');

    LMB_Data_Addr_28    <= (others => '0');
    LMB_Data_Write_28   <= (others => '0');
    LMB_Addr_Strobe_28  <= '0';
    LMB_Read_Strobe_28  <= '0';
    LMB_Write_Strobe_28 <= '0';
    LMB_Byte_Enable_28  <= (others => '0');

    LMB_Data_Addr_29    <= (others => '0');
    LMB_Data_Write_29   <= (others => '0');
    LMB_Addr_Strobe_29  <= '0';
    LMB_Read_Strobe_29  <= '0';
    LMB_Write_Strobe_29 <= '0';
    LMB_Byte_Enable_29  <= (others => '0');

    LMB_Data_Addr_30    <= (others => '0');
    LMB_Data_Write_30   <= (others => '0');
    LMB_Addr_Strobe_30  <= '0';
    LMB_Read_Strobe_30  <= '0';
    LMB_Write_Strobe_30 <= '0';
    LMB_Byte_Enable_30  <= (others => '0');

    LMB_Data_Addr_31    <= (others => '0');
    LMB_Data_Write_31   <= (others => '0');
    LMB_Addr_Strobe_31  <= '0';
    LMB_Read_Strobe_31  <= '0';
    LMB_Write_Strobe_31 <= '0';
    LMB_Byte_Enable_31  <= (others => '0');
  end generate No_Bus_MASTER_LMB;
    
  Use_AXI_IPIF : if (C_USE_UART = 1) or (C_DBG_REG_ACCESS = 1) generate
  begin
    -- ip2bus_data assignment - as core may use less than 32 bits
    --ip2bus_data(C_S_AXI_DATA_WIDTH-1 downto C_REG_DATA_WIDTH) <= (others => '0');
    -- Work around spyglass bug report on <null> range to the left but not to the right
    spy_g: if C_S_AXI_DATA_WIDTH > C_REG_DATA_WIDTH generate
    begin
      ip2bus_data(C_S_AXI_DATA_WIDTH-1 downto C_REG_DATA_WIDTH) <= (others => '0');
    end generate spy_g;

    ---------------------------------------------------------------------------
    -- AXI lite IPIF
    ---------------------------------------------------------------------------
    AXI_LITE_IPIF_I : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
      generic map (
        C_FAMILY               => C_FAMILY,
        C_S_AXI_ADDR_WIDTH     => C_S_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH     => C_S_AXI_DATA_WIDTH,
        C_S_AXI_MIN_SIZE       => C_S_AXI_MIN_SIZE_2,
        C_USE_WSTRB            => C_USE_WSTRB,
        C_DPHASE_TIMEOUT       => C_DPHASE_TIMEOUT,
        C_ARD_ADDR_RANGE_ARRAY => C_ARD_ADDR_RANGE_ARRAY(0 to C_ARD_RANGES * 2 - 1),
        C_ARD_NUM_CE_ARRAY     => C_ARD_NUM_CE_ARRAY(0 to C_ARD_RANGES - 1)
      )

      port map(
        S_AXI_ACLK    => S_AXI_ACLK,
        S_AXI_ARESETN => S_AXI_ARESETN,
        S_AXI_AWADDR  => S_AXI_AWADDR,
        S_AXI_AWVALID => S_AXI_AWVALID,
        S_AXI_AWREADY => S_AXI_AWREADY,
        S_AXI_WDATA   => S_AXI_WDATA,
        S_AXI_WSTRB   => S_AXI_WSTRB,
        S_AXI_WVALID  => S_AXI_WVALID,
        S_AXI_WREADY  => S_AXI_WREADY,
        S_AXI_BRESP   => S_AXI_BRESP,
        S_AXI_BVALID  => S_AXI_BVALID,
        S_AXI_BREADY  => S_AXI_BREADY,
        S_AXI_ARADDR  => S_AXI_ARADDR,
        S_AXI_ARVALID => S_AXI_ARVALID,
        S_AXI_ARREADY => S_AXI_ARREADY,
        S_AXI_RDATA   => S_AXI_RDATA,
        S_AXI_RRESP   => S_AXI_RRESP,
        S_AXI_RVALID  => S_AXI_RVALID,
        S_AXI_RREADY  => S_AXI_RREADY,

        -- IP Interconnect (IPIC) port signals
        Bus2IP_Clk    => bus2ip_clk,
        Bus2IP_Resetn => bus2ip_resetn,
        IP2Bus_Data   => ip2bus_data,
        IP2Bus_WrAck  => ip2bus_wrack,
        IP2Bus_RdAck  => ip2bus_rdack,
        IP2Bus_Error  => ip2bus_error,
        Bus2IP_Addr   => open,
        Bus2IP_Data   => bus2ip_data,
        Bus2IP_RNW    => open,
        Bus2IP_BE     => open,
        Bus2IP_CS     => open,
        Bus2IP_RdCE   => bus2ip_rdce,
        Bus2IP_WrCE   => bus2ip_wrce
      );

  end generate Use_AXI_IPIF;

  No_AXI_IPIF : if (C_USE_UART = 0) and (C_DBG_REG_ACCESS = 0) generate
  begin
    S_AXI_AWREADY <= '0';
    S_AXI_WREADY  <= '0';
    S_AXI_BRESP   <= (others => '0');
    S_AXI_BVALID  <= '0';
    S_AXI_ARREADY <= '0';
    S_AXI_RDATA   <= (others => '0');
    S_AXI_RRESP   <= (others => '0');
    S_AXI_RVALID  <= '0';

    bus2ip_clk    <= S_AXI_ACLK;
    bus2ip_resetn <= S_AXI_ARESETN;
    bus2ip_data   <= (others => '0');
    bus2ip_rdce   <= (others => '0');
    bus2ip_wrce   <= (others => '0');
  end generate No_AXI_IPIF;

  -- Delay one delta cycle to avoid simulation issue for parallel debug register
  -- access with no BSCAN, where drck and update are delayed one delta cycle
  bus2ip_clk_i <= bus2ip_clk;

end architecture IMP;


