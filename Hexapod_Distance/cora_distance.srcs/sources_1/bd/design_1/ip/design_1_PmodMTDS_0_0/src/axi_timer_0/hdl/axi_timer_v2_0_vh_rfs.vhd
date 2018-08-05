
-------------------------------------------------------------------------------
-- counter_f - entity/architecture pair
-------------------------------------------------------------------------------
--
-- *************************************************************************
-- **                                                                     **
-- ** DISCLAIMER OF LIABILITY                                             **
-- **                                                                     **
-- ** This text/file contains proprietary, confidential                   **
-- ** information of Xilinx, Inc., is distributed under                   **
-- ** license from Xilinx, Inc., and may be used, copied                  **
-- ** and/or disclosed only pursuant to the terms of a valid              **
-- ** license agreement with Xilinx, Inc. Xilinx hereby                   **
-- ** grants you a license to use this text/file solely for               **
-- ** design, simulation, implementation and creation of                  **
-- ** design files limited to Xilinx devices or technologies.             **
-- ** Use with non-Xilinx devices or technologies is expressly            **
-- ** prohibited and immediately terminates your license unless           **
-- ** covered by a separate agreement.                                    **
-- **                                                                     **
-- ** Xilinx is providing this design, code, or information               **
-- ** "as-is" solely for use in developing programs and                   **
-- ** solutions for Xilinx devices, with no obligation on the             **
-- ** part of Xilinx to provide support. By providing this design,        **
-- ** code, or information as one possible implementation of              **
-- ** this feature, application or standard, Xilinx is making no          **
-- ** representation that this implementation is free from any            **
-- ** claims of infringement. You are responsible for obtaining           **
-- ** any rights you may require for your implementation.                 **
-- ** Xilinx expressly disclaims any warranty whatsoever with             **
-- ** respect to the adequacy of the implementation, including            **
-- ** but not limited to any warranties or representations that this      **
-- ** implementation is free from claims of infringement, implied         **
-- ** warranties of merchantability or fitness for a particular           **
-- ** purpose.                                                            **
-- **                                                                     **
-- ** Xilinx products are not intended for use in life support            **
-- ** appliances, devices, or systems. Use in such applications is        **
-- ** expressly prohibited.                                               **
-- **                                                                     **
-- ** Any modifications that are made to the Source Code are              **
-- ** done at the user’s sole risk and will be unsupported.               **
-- ** The Xilinx Support Hotline does not have access to source           **
-- ** code and therefore cannot answer specific questions related         **
-- ** to source HDL. The Xilinx Hotline support of original source        **
-- ** code IP shall only address issues and questions related             **
-- ** to the standard Netlist version of the core (and thus               **
-- ** indirectly, the original core source).                              **
-- **                                                                     **
-- ** Copyright (c) 2006-2010 Xilinx, Inc. All rights reserved.           **
-- **                                                                     **
-- ** This copyright and support notice must be retained as part          **
-- ** of this text at all times.                                          **
-- **                                                                     **
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        counter_f.vhd
--
-- Description:     Implements a parameterizable N-bit counter_f
--                      Up/Down Counter
--                      Count Enable
--                      Parallel Load
--                      Synchronous Reset
--                      The structural implementation has incremental cost
--                      of one LUT per bit.
--                      Precedence of operations when simultaneous:
--                        reset, load, count
--
--                  A default inferred-RTL implementation is provided and
--                  is used if the user explicitly specifies C_FAMILY=nofamily
--                  or ommits C_FAMILY (allowing it to default to nofamily).
--                  The default implementation is also used
--                  if needed primitives are not available in FPGAs of the
--                  type given by C_FAMILY.
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--                  counter_f.vhd
--                      family_support.vhd
--
-------------------------------------------------------------------------------
-- Author: FLO & Nitin   06/06/2006   First Version, functional equivalent
--                                    of counter.vhd.
-- History:
--     DET     1/17/2008     v4_0
-- ~~~~~~
--     - Incorporated new disclaimer header
-- ^^^^^^
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
use IEEE.numeric_std.unsigned;
use IEEE.numeric_std."+";
use IEEE.numeric_std."-";

library unisim;
use unisim.all;

-----------------------------------------------------------------------------
-- Entity section
-----------------------------------------------------------------------------

entity counter_f is
    generic(
            C_NUM_BITS : integer := 9;
            C_FAMILY   : string := "nofamily"
           );

    port(
         Clk           : in  std_logic;
         Rst           : in  std_logic;
         Load_In       : in  std_logic_vector(C_NUM_BITS - 1 downto 0);
         Count_Enable  : in  std_logic;
         Count_Load    : in  std_logic;
         Count_Down    : in  std_logic;
         Count_Out     : out std_logic_vector(C_NUM_BITS - 1 downto 0);
         Carry_Out     : out std_logic
        );
end entity counter_f;

-----------------------------------------------------------------------------
-- Architecture section
-----------------------------------------------------------------------------

architecture imp of counter_f is

---------------------------------------------------------------------
-- Begin architecture
---------------------------------------------------------------------
begin

    INFERRED_GEN : if (true) generate

        signal icount_out    : unsigned(C_NUM_BITS downto 0);
        signal icount_out_x  : unsigned(C_NUM_BITS downto 0);
        signal load_in_x     : unsigned(C_NUM_BITS downto 0);

    begin

        load_in_x    <= unsigned('0' & Load_In);

        -- Mask out carry position to retain legacy self-clear on next enable.
 --        icount_out_x <= ('0' & icount_out(C_NUM_BITS-1 downto 0)); -- Echeck WA
         icount_out_x <= unsigned('0' & std_logic_vector(icount_out(C_NUM_BITS-1 downto 0)));

        -----------------------------------------------------------------
        -- Process to generate counter with - synchronous reset, load,
        -- counter enable, count down / up features.
        -----------------------------------------------------------------
        CNTR_PROC : process(Clk)
        begin
            if Clk'event and Clk = '1' then
                if Rst = '1' then
                    icount_out <= (others => '0');
                elsif Count_Load = '1' then
                    icount_out <= load_in_x;
                elsif Count_Down = '1'  and Count_Enable = '1' then
                    icount_out <= icount_out_x - 1;
                elsif Count_Enable = '1' then
                    icount_out <= icount_out_x + 1;
                end if;
            end if;
        end process CNTR_PROC;

        Carry_Out <= icount_out(C_NUM_BITS);
        Count_Out <= std_logic_vector(icount_out(C_NUM_BITS-1 downto 0));

    end generate INFERRED_GEN;


end architecture imp;
---------------------------------------------------------------
-- End of file counter_f.vhd
---------------------------------------------------------------


-- mux_onehot_f - arch and entity
-------------------------------------------------------------------------------
--
-- *************************************************************************
-- **                                                                     **
-- ** DISCLAIMER OF LIABILITY                                             **
-- **                                                                     **
-- ** This text/file contains proprietary, confidential                   **
-- ** information of Xilinx, Inc., is distributed under                   **
-- ** license from Xilinx, Inc., and may be used, copied                  **
-- ** and/or disclosed only pursuant to the terms of a valid              **
-- ** license agreement with Xilinx, Inc. Xilinx hereby                   **
-- ** grants you a license to use this text/file solely for               **
-- ** design, simulation, implementation and creation of                  **
-- ** design files limited to Xilinx devices or technologies.             **
-- ** Use with non-Xilinx devices or technologies is expressly            **
-- ** prohibited and immediately terminates your license unless           **
-- ** covered by a separate agreement.                                    **
-- **                                                                     **
-- ** Xilinx is providing this design, code, or information               **
-- ** "as-is" solely for use in developing programs and                   **
-- ** solutions for Xilinx devices, with no obligation on the             **
-- ** part of Xilinx to provide support. By providing this design,        **
-- ** code, or information as one possible implementation of              **
-- ** this feature, application or standard, Xilinx is making no          **
-- ** representation that this implementation is free from any            **
-- ** claims of infringement. You are responsible for obtaining           **
-- ** any rights you may require for your implementation.                 **
-- ** Xilinx expressly disclaims any warranty whatsoever with             **
-- ** respect to the adequacy of the implementation, including            **
-- ** but not limited to any warranties or representations that this      **
-- ** implementation is free from claims of infringement, implied         **
-- ** warranties of merchantability or fitness for a particular           **
-- ** purpose.                                                            **
-- **                                                                     **
-- ** Xilinx products are not intended for use in life support            **
-- ** appliances, devices, or systems. Use in such applications is        **
-- ** expressly prohibited.                                               **
-- **                                                                     **
-- ** Any modifications that are made to the Source Code are              **
-- ** done at the user’s sole risk and will be unsupported.               **
-- ** The Xilinx Support Hotline does not have access to source           **
-- ** code and therefore cannot answer specific questions related         **
-- ** to source HDL. The Xilinx Hotline support of original source        **
-- ** code IP shall only address issues and questions related             **
-- ** to the standard Netlist version of the core (and thus               **
-- ** indirectly, the original core source).                              **
-- **                                                                     **
-- ** Copyright (c) 2005-2010 Xilinx, Inc. All rights reserved.           **
-- **                                                                     **
-- ** This copyright and support notice must be retained as part          **
-- ** of this text at all times.                                          **
-- **                                                                     **
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        mux_onehot_f.vhd
--
-- Description:     Parameterizable multiplexer with one hot select lines.
--
--                  Please refer to the entity interface while reading the
--                  remainder of this description.
--
--                  If n is the index of the single select line of S(0 to C_NB-1)
--                  that is asserted, then
--
--                      Y(0 to C_DW-1) <= D(n*C_DW to n*C_DW + C_DW -1)
--
--                  That is, Y selects the nth group of C_DW consecutive
--                  bits of D.
--
--                  Note that C_NB = 1 is handled as a special case in which
--                  Y <= D, without regard to the select line, S.
--
--                  The Implementation depends on the C_FAMILY parameter.
--                  If the target family supports the needed primitives,
--                  a carry-chain structure will be implemented. Otherwise,
--                  an implementation dependent on synthesis inferral will
--                  be generated.
--
-------------------------------------------------------------------------------
-- Structure:   
--      mux_onehot_f
--          family_support
--------------------------------------------------------------------------------
-- Author:      FLO
-- History:
--  FLO             11/30/05      -- First version derived from mux_onehot.vhd
--                                -- by BLT and ALS.
--
-- ~~~~~~
--
--     DET     1/17/2008     v4_0
-- ~~~~~~
--     - Changed proc_common library version to v4_0
--     - Incorporated new disclaimer header
-- ^^^^^^
--
---------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_cmb" 
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

-------------------------------------------------------------------------------
-- Generic and Port Declaration
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Generics and Ports
--
--      C_DW: Data width of buses entering the mux. Valid range is 1 to 256.
--      C_NB: Number of data buses entering the mux. Valid range is 1 to 64.
--
--      input D           -- input data bus
--      input S           -- input select bus
--      output Y          -- output bus
--
--      The input data is represented by a one-dimensional bus that is made up
--      of all of the data buses concatenated together. For example, a 4 to 1
--      mux with 2 bit data buses (C_DW=2,C_NB=4) is represented by:
--          
--        D = (Bus0Data0, Bus0Data1, Bus1Data0, Bus1Data1, Bus2Data0, Bus2Data1,
--             Bus3Data0, Bus3Data1)
--      
--        Y = (Bus0Data0, Bus0Data1) if S(0)=1 else
--            (Bus1Data0, Bus1Data1) if S(1)=1 else
--            (Bus2Data0, Bus2Data1) if S(2)=1 else
--            (Bus3Data0, Bus3Data1) if S(3)=1 
--
--        Only one bit of S should be asserted at a time.
--
-------------------------------------------------------------------------------

--library proc_common_v4_0_2;
--use     proc_common_v4_0_2.family_support.all; -- 'supported' function, etc.
--
entity mux_onehot_f is 
   generic( C_DW: integer := 32;
            C_NB: integer := 5;
            C_FAMILY : string := "virtexe");
   port(
      D: in std_logic_vector(0 to C_DW*C_NB-1);
      S: in std_logic_vector(0 to C_NB-1);
      Y: out std_logic_vector(0 to C_DW-1));

end mux_onehot_f;

library unisim;
use     unisim.all; -- Make unisim entities available for default binding.
architecture imp of mux_onehot_f is

    --constant NLS : natural := native_lut_size(fam_as_string => C_FAMILY,
    constant NLS : natural := 6; --native_lut_size(fam_as_string => C_FAMILY,
                                   --           no_lut_return_val => 2*C_NB);

    function lut_val(D, S : std_logic_vector) return std_logic is
        variable rn : std_logic := '0';
    begin
        for i in D'range loop
            rn := rn or (S(i) and D(i));
        end loop;
        return not rn;
    end;

    function min(i, j : integer) return integer is
    begin
        if i < j then return i; else return j; end if;
    end;

-----------------------------------------------------------------------------
-- Signal and Type Declarations
-------------------------------------------------------------------------------
signal Dreord:      std_logic_vector(0 to C_DW*C_NB-1);
signal sel:         std_logic_vector(0 to C_DW*C_NB-1);

-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
component MUXCY
    port
    (
        O : out std_ulogic;
        CI : in std_ulogic;
        DI : in std_ulogic;
        S : in std_ulogic
    );
end component;

begin

-- Reorder data buses

WA_GEN : if C_DW > 0 generate -- XST WA
REORD: process( D )
variable m,n: integer;
begin
for m in 0 to C_DW-1 loop
  for n in 0 to C_NB-1 loop
    Dreord( m*C_NB+n) <= D( n*C_DW+m );
  end loop;
end loop;
end process REORD;
end generate;

-------------------------------------------------------------------------------
-- REPSELS_PROCESS
-------------------------------------------------------------------------------
-- The one-hot select bus contains 1-bit for each bus. To more easily
-- parameterize the carry chains and reduce loading on the select bus, these 
-- signals are replicated into a bus that replicates the select bits for the 
-- data width of the busses
-------------------------------------------------------------------------------
REPSELS_PROCESS : process ( S )
variable i, j   : integer;
begin
    -- loop through all data bits and busses
    for i in 0 to C_DW-1 loop
        for j in 0 to C_NB-1 loop
            sel(i*C_NB+j) <= S(j);
        end loop;
    end loop;
end process REPSELS_PROCESS;


GEN: if C_NB > 1 generate
    constant BPL : positive := NLS / 2; -- Buses per LUT is the native lut
                                        -- size divided by two.signals per bus.
    constant NUMLUTS : positive := (C_NB+(BPL-1))/BPL;
begin

    DATA_WIDTH_GEN: for i in 0 to C_DW-1 generate
        signal cyout  : std_logic_vector(0 to NUMLUTS);
        signal lutout : std_logic_vector(0 to NUMLUTS-1);
    begin

        cyout(0) <= '0';

        NUM_BUSES_GEN: for j in 0 to NUMLUTS - 1 generate
            constant BTL : positive := min(BPL, C_NB - j*BPL);
            -- Number of Buses This Lut (for last LUT this may be less than BPL)
        begin
            lutout(j) <= lut_val(D => Dreord(i*C_NB+j*BPL to i*C_NB+j*BPL+BTL-1),
                                 S =>    sel(i*C_NB+j*BPL to i*C_NB+j*BPL+BTL-1)
                                );

            MUXCY_GEN : if NUMLUTS > 1 generate
            MUXCY_I : component MUXCY
                port map (CI=>cyout(j),
                          DI=> '1',
                          S=>lutout(j),
                          O=>cyout(j+1));
            end generate;

        end generate;

    Y(i) <= cyout(NUMLUTS) when NUMLUTS > 1 else not lutout(0); -- If just one
                                            -- LUT, then take value from
                                            -- lutout rather than cyout.
    end generate;
end generate;


ONE_GEN: if C_NB = 1 generate
    Y <= D;
end generate;

end imp;



-------------------------------------------------------------------------------
-- TC_TYPES - package
-------------------------------------------------------------------------------
--
-- ***************************************************************************
-- DISCLAIMER OF LIABILITY
--
-- This file contains proprietary and confidential information of
-- Xilinx, Inc. ("Xilinx"), that is distributed under a license
-- from Xilinx, and may be used, copied and/or disclosed only
-- pursuant to the terms of a valid license agreement with Xilinx.
--
-- XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
-- ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
-- EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
-- LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
-- MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
-- does not warrant that functions included in the Materials will
-- meet the requirements of Licensee, or that the operation of the
-- Materials will be uninterrupted or error-free, or that defects
-- in the Materials will be corrected. Furthermore, Xilinx does
-- not warrant or make any representations regarding use, or the
-- results of the use, of the Materials in terms of correctness,
-- accuracy, reliability or otherwise.
--
-- Xilinx products are not designed or intended to be fail-safe,
-- or for use in any application requiring fail-safe performance,
-- such as life-support or safety devices or systems, Class III
-- medical devices, nuclear facilities, applications related to
-- the deployment of airbags, or any other applications that could
-- lead to death, personal injury or severe property or
-- environmental damage (individually and collectively, "critical
-- applications"). Customer assumes the sole risk and liability
-- of any use of Xilinx products in critical applications,
-- subject only to applicable laws and regulations governing
-- limitations on product liability.
--
-- Copyright 2001, 2002, 2003, 2004, 2008, 2009 Xilinx, Inc.
-- All rights reserved.
--
-- This disclaimer and copyright notice must be retained as part
-- of this file at all times.
-- ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename        :tc_types.vhd
-- Company         :Xilinx
-- Version         :v2.0
-- Description     :Type definitions for Timer/Counter
-- Standard        :VHDL-93
--
-------------------------------------------------------------------------------
-- Structure:
--
--              tc_types.vhd
-------------------------------------------------------------------------------
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         03/18/2010      -- Ceated the version  v1.00.a
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         09/18/2010      -- Ceated the version  v1.01.a
--                              -- axi lite ipif v1.01.a used
-- ^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_cmb"
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

-------------------------------------------------------------------------------
--Package Declaration
-------------------------------------------------------------------------------
package TC_Types is

  subtype  QUADLET_TYPE             is std_logic_vector(0 to 31);
  subtype  ELEVEN_BIT_TYPE          is std_logic_vector(21 to 31);
  subtype  TWELVE_BIT_TYPE          is std_logic_vector(20 to 31);
  subtype  QUADLET_PLUS1_TYPE       is std_logic_vector(0 to 32);
  subtype  BYTE_TYPE                is std_logic_vector(0 to 7);
  subtype  ALU_OP_TYPE              is std_logic_vector(0 to 1);
  subtype  ADDR_WORD_TYPE           is std_logic_vector(0 to 31);
  subtype  BYTE_ENABLE_TYPE         is std_logic_vector(0 to 3);
  subtype  DATA_WORD_TYPE           is QUADLET_TYPE;
  subtype  INSTRUCTION_WORD_TYPE    is QUADLET_TYPE;

  -- Bus interface data types
  subtype  PLB_DWIDTH_TYPE          is QUADLET_TYPE;
  subtype  PLB_AWIDTH_TYPE          is QUADLET_TYPE;
  subtype  PLB_BEWIDTH_TYPE         is std_logic_vector(0 to 3);
  subtype  BYTE_PLUS1_TYPE          is std_logic_vector(0 to 8);
  subtype  NIBBLE_TYPE              is std_logic_vector(0 to 3);
  type     TWO_QUADLET_TYPE         is array (0 to 1) of QUADLET_TYPE;

  constant CASC_POS     : integer := 20;
  constant ENALL_POS    : integer := 21;
  constant PWMA0_POS    : integer := 22;
  constant T0INT_POS    : integer := 23;
  constant ENT0_POS     : integer := 24;
  constant ENIT0_POS    : integer := 25;
  constant LOAD0_POS    : integer := 26;
  constant ARHT0_POS    : integer := 27;
  constant CAPT0_POS    : integer := 28;
  constant CMPT0_POS    : integer := 29;
  constant UDT0_POS     : integer := 30;
  constant MDT0_POS     : integer := 31;

  constant PWMB0_POS    : integer := 22;
  constant T1INT_POS    : integer := 23;
  constant ENT1_POS     : integer := 24;
  constant ENIT1_POS    : integer := 25;
  constant LOAD1_POS    : integer := 26;
  constant ARHT1_POS    : integer := 27;
  constant CAPT1_POS    : integer := 28;
  constant CMPT1_POS    : integer := 29;
  constant UDT1_POS     : integer := 30;
  constant MDT1_POS     : integer := 31;

  constant LS_ADDR      : std_logic_vector(0 to 1) := "11";

  constant NEXT_MSB_BIT : integer := -1;
  constant NEXT_LSB_BIT : integer := 1;

  -- The following four constants arer reversed from what's
  -- in microblaze_isa_be_pkg.vhd
  constant BYTE_ENABLE_BYTE_0 : natural := 0;
  constant BYTE_ENABLE_BYTE_1 : natural := 1;
  constant BYTE_ENABLE_BYTE_2 : natural := 2;
  constant BYTE_ENABLE_BYTE_3 : natural := 3;

end package TC_TYPES;


-------------------------------------------------------------------------------
-- timer_control - entity/architecture pair
-------------------------------------------------------------------------------
--
-- ***************************************************************************
-- DISCLAIMER OF LIABILITY
--
-- This file contains proprietary and confidential information of
-- Xilinx, Inc. ("Xilinx"), that is distributed under a license
-- from Xilinx, and may be used, copied and/or disclosed only
-- pursuant to the terms of a valid license agreement with Xilinx.
--
-- XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
-- ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
-- EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
-- LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
-- MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
-- does not warrant that functions included in the Materials will
-- meet the requirements of Licensee, or that the operation of the
-- Materials will be uninterrupted or error-free, or that defects
-- in the Materials will be corrected. Furthermore, Xilinx does
-- not warrant or make any representations regarding use, or the
-- results of the use, of the Materials in terms of correctness,
-- accuracy, reliability or otherwise.
--
-- Xilinx products are not designed or intended to be fail-safe,
-- or for use in any application requiring fail-safe performance,
-- such as life-support or safety devices or systems, Class III
-- medical devices, nuclear facilities, applications related to
-- the deployment of airbags, or any other applications that could
-- lead to death, personal injury or severe property or
-- environmental damage (individually and collectively, "critical
-- applications"). Customer assumes the sole risk and liability
-- of any use of Xilinx products in critical applications,
-- subject only to applicable laws and regulations governing
-- limitations on product liability.
--
-- Copyright 2001, 2002, 2003, 2004, 2008, 2009 Xilinx, Inc.
-- All rights reserved.
--
-- This disclaimer and copyright notice must be retained as part
-- of this file at all times.
-- ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename        :timer_control.vhd
-- Company         :Xilinx
-- Version         :v2.0
-- Description     :Control logic for Peripheral Timer/Counter
-- Standard        :VHDL-93
--
-------------------------------------------------------------------------------
-- Structure:
--              timer_control.vhd
-------------------------------------------------------------------------------
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         03/18/2010      -- Ceated the version  v1.00.a
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         09/18/2010      -- Ceated the version  v1.01.a
--                              -- axi lite ipif v1.01.a used
-- ^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_cmb"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                     Definition of Generics
-------------------------------------------------------------------------------
--    C_TRIG0_ASSERT     -- Assertion Level of captureTrig0  
--    C_TRIG1_ASSERT     -- Assertion Level of captureTrig1  
--    C_GEN0_ASSERT      -- Assertion Level for GenerateOut0 
--    C_GEN1_ASSERT      -- Assertion Level for GenerateOut1 
--    C_ARD_NUM_CE_ARRAY -- Number of chip enable
-------------------------------------------------------------------------------
--                  Definition of Ports
-------------------------------------------------------------------------------
--    Clk                -- system clock 
--    Reset              -- system reset 
--    CaptureTrig0       -- Capture Trigger 0 
--    CaptureTrig1       -- Capture Trigger 1 
--    GenerateOut0       -- Generate Output 0 
--    GenerateOut1       -- Generate Output 1
--    Interrupt          -- Interrupt 
--    Counter_TC         -- Carry out signal of counter 
--    Bus2ip_data        -- bus2ip data bus 
--    BE                 -- te enab  les 
--    Load_Counter_Reg   -- Load counter register control 
--    Load_Load_Reg      -- Load load register control 
--    Write_Load_Reg     -- write control of TLR reg  
--    CaptGen_Mux_Sel    -- mux select for capture and generate 
--    Counter_En         -- counter enable signal 
--    Count_Down         -- count down signal 
--    Bus2ip_rdce        -- read select 
--    Bus2ip_wrce        -- write select 
--    Freeze             -- freeze 
--    TCSR0_Reg          -- Control/Status register 0 
--    TCSR1_Reg          -- Control/Status register 1 
-------------------------------------------------------------------------------
  
library ieee;
use ieee.std_logic_1164.all;

library axi_lite_ipif_v3_0_4;
library lib_cdc_v1_0_2;
library lib_pkg_v1_0_2;
use axi_lite_ipif_v3_0_4.ipif_pkg.calc_num_ce;
use axi_lite_ipif_v3_0_4.ipif_pkg.INTEGER_ARRAY_TYPE;
use lib_pkg_v1_0_2.lib_pkg.RESET_ACTIVE;

library unisim;
use unisim.vcomponents.FDRSE;

library axi_timer_v2_0_19;
use axi_timer_v2_0_19.TC_Types.QUADLET_TYPE;
use axi_timer_v2_0_19.TC_Types.TWELVE_BIT_TYPE;
use axi_timer_v2_0_19.TC_Types.ELEVEN_BIT_TYPE;
use axi_timer_v2_0_19.TC_Types.ARHT0_POS;
use axi_timer_v2_0_19.TC_Types.ARHT1_POS;
use axi_timer_v2_0_19.TC_Types.CAPT0_POS;
use axi_timer_v2_0_19.TC_Types.CAPT1_POS;
use axi_timer_v2_0_19.TC_Types.CMPT0_POS;
use axi_timer_v2_0_19.TC_Types.CMPT1_POS;
use axi_timer_v2_0_19.TC_Types.ENALL_POS;
use axi_timer_v2_0_19.TC_Types.ENIT0_POS;
use axi_timer_v2_0_19.TC_Types.ENIT1_POS;
use axi_timer_v2_0_19.TC_Types.ENT0_POS;
use axi_timer_v2_0_19.TC_Types.ENT1_POS;
use axi_timer_v2_0_19.TC_Types.LOAD0_POS;
use axi_timer_v2_0_19.TC_Types.LOAD1_POS;
use axi_timer_v2_0_19.TC_Types.MDT0_POS;
use axi_timer_v2_0_19.TC_Types.MDT1_POS;
use axi_timer_v2_0_19.TC_Types.PWMA0_POS;
use axi_timer_v2_0_19.TC_Types.PWMB0_POS;
use axi_timer_v2_0_19.TC_Types.T0INT_POS;
use axi_timer_v2_0_19.TC_Types.T1INT_POS;
use axi_timer_v2_0_19.TC_Types.UDT0_POS;
use axi_timer_v2_0_19.TC_Types.UDT1_POS;
use axi_timer_v2_0_19.TC_Types.CASC_POS;


-------------------------------------------------------------------------------
-- Entity declarations
-------------------------------------------------------------------------------
entity timer_control is
  generic (
    C_TRIG0_ASSERT     : std_logic := '1';
    C_TRIG1_ASSERT     : std_logic := '1';
    C_GEN0_ASSERT      : std_logic := '1';
    C_GEN1_ASSERT      : std_logic := '1';
    C_ARD_NUM_CE_ARRAY : INTEGER_ARRAY_TYPE 
    );
  port (
    Clk                : in   std_logic;
    Reset              : in   std_logic;
    CaptureTrig0       : in   std_logic;
    CaptureTrig1       : in   std_logic;
    GenerateOut0       : out  std_logic;
    GenerateOut1       : out  std_logic;
    Interrupt          : out  std_logic;
    Counter_TC         : in   std_logic_vector(0 to 1);
    Bus2ip_data        : in   std_logic_vector(0 to 31);
    BE                 : in   std_logic_vector(0 to 3);
    Load_Counter_Reg   : out  std_logic_vector(0 to 1);
    Load_Load_Reg      : out  std_logic_vector(0 to 1);
    Write_Load_Reg     : out  std_logic_vector(0 to 1);
    CaptGen_Mux_Sel    : out  std_logic_vector(0 to 1);
    Counter_En         : out  std_logic_vector(0 to 1);
    Count_Down         : out  std_logic_vector(0 to 1);
    Bus2ip_rdce        : in   std_logic_vector(0 to calc_num_ce(C_ARD_NUM_CE_ARRAY)-1);
    Bus2ip_wrce        : in   std_logic_vector(0 to calc_num_ce(C_ARD_NUM_CE_ARRAY)-1);
    Freeze             : in   std_logic;
    TCSR0_Reg          : out  TWELVE_BIT_TYPE;
    TCSR1_Reg          : out  ELEVEN_BIT_TYPE
    );
end entity timer_control;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture imp of timer_control is
-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

-------------------------------------------------------------------------------
-- Signal declaration
-------------------------------------------------------------------------------
    signal TCSR0_In          : TWELVE_BIT_TYPE;
    signal TCSR0_Reset       : TWELVE_BIT_TYPE;
    signal TCSR0_Set         : TWELVE_BIT_TYPE;
    signal TCSR0_CE          : TWELVE_BIT_TYPE;
    signal TCSR0             : TWELVE_BIT_TYPE;
    signal TCSR1_In          : ELEVEN_BIT_TYPE;
    signal TCSR1_Reset       : ELEVEN_BIT_TYPE;
    signal TCSR1_Set         : ELEVEN_BIT_TYPE;
    signal TCSR1_CE          : ELEVEN_BIT_TYPE;
    signal TCSR1             : ELEVEN_BIT_TYPE;
    signal captureTrig0_d    : std_logic;
    signal captureTrig1_d    : std_logic;
    signal captureTrig0_d2   : std_logic;
    signal captureTrig1_d2   : std_logic;
    signal captureTrig0_Edge : std_logic;
    signal captureTrig1_Edge : std_logic;
    signal captureTrig0_pulse: std_logic;
    signal captureTrig0_pulse_d1: std_logic;
    signal captureTrig0_pulse_d2: std_logic;
    signal captureTrig1_pulse: std_logic;
    signal read_done0        : std_logic;
    signal read_done1        : std_logic;
    signal generateOutPre0   : std_logic;
    signal generateOutPre1   : std_logic;
    signal pair0_Select      : std_logic;
    signal counter_TC_Reg    : std_logic_vector(0 to 1);
    signal counter_TC_Reg2   : std_logic;
    signal tccr0_select      : std_logic;
    signal tccr1_select      : std_logic;
    signal interrupt_reg     : std_logic;
    signal CaptureTrig0_int : std_logic := '0';
    signal CaptureTrig1_int : std_logic := '0';
    signal Freeze_int : std_logic := '0';
-------------------------------------------------------------------------------
-- Bits in Timer Control Status Register 0 (TCSR0)
-------------------------------------------------------------------------------
    alias CASC               : std_logic is TCSR0(CASC_POS);
    alias T0INT              : std_logic is TCSR0(T0INT_POS);
    alias ENT0               : std_logic is TCSR0(ENT0_POS);
    alias ENIT0              : std_logic is TCSR0(ENIT0_POS);
    alias LOAD0              : std_logic is TCSR0(LOAD0_POS);
    alias ARHT0              : std_logic is TCSR0(ARHT0_POS);
    alias CAPT0              : std_logic is TCSR0(CAPT0_POS);
    alias CMPT0              : std_logic is TCSR0(CMPT0_POS);
    alias UDT0               : std_logic is TCSR0(UDT0_POS);
    alias MDT0               : std_logic is TCSR0(MDT0_POS);
    alias PWMA0              : std_logic is TCSR0(PWMA0_POS);

-------------------------------------------------------------------------------
-- Bits in Timer Control Status Register 1 (TCSR1)
-------------------------------------------------------------------------------
    alias T1INT              : std_logic is TCSR1(T1INT_POS);
    alias ENT1               : std_logic is TCSR1(ENT1_POS);
    alias ENIT1              : std_logic is TCSR1(ENIT1_POS);
    alias LOAD1              : std_logic is TCSR1(LOAD1_POS);
    alias ARHT1              : std_logic is TCSR1(ARHT1_POS);
    alias CAPT1              : std_logic is TCSR1(CAPT1_POS);
    alias CMPT1              : std_logic is TCSR1(CMPT1_POS);
    alias UDT1               : std_logic is TCSR1(UDT1_POS);
    alias MDT1               : std_logic is TCSR1(MDT1_POS);
    alias PWMB0              : std_logic is TCSR1(PWMB0_POS);

-------------------------------------------------------------------------------
-- Begin architecture
-------------------------------------------------------------------------------
begin -- architecture imp

    pair0_Select <= (Bus2ip_wrce(0) or Bus2ip_wrce(4));

---------------------------------------------------
--Creating TCSR0 Register
---------------------------------------------------

    TCSR0_GENERATE: for i in TWELVE_BIT_TYPE'range generate
      TCSR0_FF_I: component FDRSE
      port map (
        Q  => TCSR0(i),       -- [out]
        C  => Clk,            -- [in]
        CE => TCSR0_CE(i),    -- [in]
        D  => TCSR0_In(i),    -- [in]
        R  => TCSR0_Reset(i), -- [in]
        S  => TCSR0_Set(i)    -- [in]
      );
    end generate TCSR0_GENERATE;

------------------------------------------------------------------------------------
---Interrupt bit (23-bit) of TCSR0 register is cleared by writing 1 to Interrupt bit
------------------------------------------------------------------------------------
    TCSR0_Reset <= (others => '1') when Reset = RESET_ACTIVE else 
                   "000100000000"  
                    when Bus2ip_data(T0INT_POS)='1' and Bus2ip_wrce(0)='1' else
                   (others => '0') ; 

----------------------------------------------------
--TCSR0 PROCESS:
--TO GENERATE CLOCK ENABLES, AND RESET
--OF TCSR0 REGISTER
----------------------------------------------------
    TCSR0_PROCESS: process (Bus2ip_wrce,Bus2ip_data,MDT0, 
                            captureTrig0_Edge,generateOutPre0,TCSR0,
                            pair0_select,Reset,BE,ENT0,CASC,generateOutPre1) is
    begin

      TCSR0_Set   <= (others => '0');
      ---------------------------------------------
      --Generating clock enables for TCSR0 register
      ---------------------------------------------
      TCSR0_CE(31) <= Bus2ip_wrce(0) and BE(3);
      TCSR0_CE(30) <= Bus2ip_wrce(0) and BE(3);
      TCSR0_CE(29) <= Bus2ip_wrce(0) and BE(3);
      TCSR0_CE(28) <= Bus2ip_wrce(0) and BE(3);
      TCSR0_CE(27) <= Bus2ip_wrce(0) and BE(3);
      TCSR0_CE(26) <= Bus2ip_wrce(0) and BE(3);
      TCSR0_CE(25) <= Bus2ip_wrce(0) and BE(3);
      TCSR0_CE(24) <= Bus2ip_wrce(0) and BE(3);
      TCSR0_CE(23) <= Bus2ip_wrce(0) and BE(2);
      TCSR0_CE(22) <= Bus2ip_wrce(0) and BE(2);
      TCSR0_CE(21) <= Bus2ip_wrce(0) and BE(2);
      TCSR0_CE(20) <= Bus2ip_wrce(0) and BE(2);

      TCSR0_In    <= Bus2ip_data(20 to 31);
      TCSR0_In(T0INT_POS) <= TCSR0(T0INT_POS);

     ---------------------------------------------------- 
      ---interrupt bit (23-bit) of TCSR1 register is set to 1
      ----------------------------------------------------
      if (CASC = '0') then
        if (((MDT0='1' and captureTrig0_Edge='1' and ENT0='1') or
           (MDT0='0' and generateOutPre0='1'))) then
          TCSR0_Set(T0INT_POS) <= '1';
        else
          TCSR0_Set(T0INT_POS) <= '0';
        end if;
      else
        if (((MDT0='1' and captureTrig0_Edge='1' and ENT0='1') or
           (MDT0='0' and generateOutPre1='1'))) then
          TCSR0_Set(T0INT_POS) <= '1';
        else
          TCSR0_Set(T0INT_POS) <= '0';
        end if;
      end if;

      TCSR0_CE(ENALL_POS) <= pair0_Select and BE(2);
      TCSR0_CE(ENT0_POS)  <= pair0_Select;

      TCSR0_In(ENT0_POS)  <= (Bus2ip_data(ENT0_POS) and Bus2ip_wrce(0) and BE(3)) or
                             (Bus2ip_data(ENALL_POS) and BE(2)) or
                             (TCSR0(ENT0_POS) and (not Bus2ip_wrce(0)));  

    end process TCSR0_PROCESS;

---------------------------------------------------
--Creating TCSR1 Register
---------------------------------------------------
    TCSR1_GENERATE: for i in ELEVEN_BIT_TYPE'range generate
      TCSR1_FF_I: component FDRSE
      port map (
        Q  => TCSR1(i),       -- [out]
        C  => Clk,            -- [in]
        CE => TCSR1_CE(i),    -- [in]
        D  => TCSR1_In(i),    -- [in]
        R  => TCSR1_Reset(i), -- [in]
        S  => TCSR1_Set(i)    -- [in]
      );
    end generate TCSR1_GENERATE;


------------------------------------------------------------------------------------
---Interrupt bit (23-bit) of TCSR1 register is cleared by writing 1 to Interrupt bit
------------------------------------------------------------------------------------
    TCSR1_Reset <= (others => '1') when Reset = RESET_ACTIVE else 
                   "00100000000" 
                   when Bus2ip_data(T1INT_POS)='1' and Bus2ip_wrce(4)='1' else
                   (others => '0') ; 
------------------------------------------------------------------------

----------------------------------------------------
--TCSR1 PROCESS:
--TO GENERATE CLOCK ENABLES, AND RESET
--OF TCSR1 REGISTER
----------------------------------------------------
    TCSR1_PROCESS: process (Bus2ip_data,Bus2ip_wrce,MDT1, 
                            captureTrig1_Edge,generateOutPre1,TCSR1,
                            pair0_Select,Reset,BE,ENT1,CASC,
                            MDT0,captureTrig0_Edge,ENT0) is
    begin
       TCSR1_Set   <= (others => '0');

      ---------------------------------------------
      --Generating clock enables for TCSR1 register
      ---------------------------------------------
      TCSR1_CE(31) <= Bus2ip_wrce(4) and BE(3);
      TCSR1_CE(30) <= Bus2ip_wrce(4) and BE(3);
      TCSR1_CE(29) <= Bus2ip_wrce(4) and BE(3);
      TCSR1_CE(28) <= Bus2ip_wrce(4) and BE(3);
      TCSR1_CE(27) <= Bus2ip_wrce(4) and BE(3);
      TCSR1_CE(26) <= Bus2ip_wrce(4) and BE(3);
      TCSR1_CE(25) <= Bus2ip_wrce(4) and BE(3);
      TCSR1_CE(24) <= Bus2ip_wrce(4) and BE(3);
      TCSR1_CE(23) <= Bus2ip_wrce(4) and BE(2);
      TCSR1_CE(22) <= Bus2ip_wrce(4) and BE(2);
      TCSR1_CE(21) <= Bus2ip_wrce(4) and BE(2);

      TCSR1_In    <= Bus2ip_data(21 to 31);
      TCSR1_In(T1INT_POS) <= TCSR1(T1INT_POS);

       ----------------------------------------------------------------
      ---interrupt bit of TCSR1 register is set to 1
      ----------------------------------------------------------------
      if (((MDT1='1' and captureTrig1_Edge='1' and ENT1='1') or
         (MDT1='0' and generateOutPre1='1')) and CASC='0') then
        TCSR1_Set(T1INT_POS) <= '1';
      else
        TCSR1_Set(T1INT_POS) <= '0';
      end if;

      TCSR1_CE(ENALL_POS) <= pair0_Select and BE(2);
      TCSR1_CE(ENT1_POS)  <= pair0_Select;

      TCSR1_In(ENT1_POS) <= (Bus2ip_data(ENT1_POS) and Bus2ip_wrce(4) and BE(3)) or
                            (Bus2ip_data(ENALL_POS) and BE(2)) or
                            (TCSR1(ENT1_POS) and (not Bus2ip_wrce(4)));
    end process TCSR1_PROCESS;

-------------------------------------------------------------------------------
-- Counter Controls
-------------------------------------------------------------------------------
    READ_DONE0_I: component FDRSE
      port map (
        Q  => read_done0,        -- [out]
        C  => Clk,               -- [in]
        CE => '1',               -- [in]
        D  => read_done0,        -- [in]
        R  => captureTrig0_Edge, -- [in]
        S  => tccr0_select       -- [in]
      );

    READ_DONE1_I: component FDRSE
      port map (
        Q  => read_done1,        -- [out]
        C  => Clk,               -- [in]
        CE => '1',               -- [in]
        D  => read_done1,        -- [in]
        R  => captureTrig1_Edge, -- [in]
        S  => tccr1_select       -- [in]
      );

INPUT_DOUBLE_REGS3 : entity lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => 4
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => Freeze,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => Clk,
        scndry_resetn              => '0',
        scndry_out                 => Freeze_int,
        scndry_vect_out            => open
    );


    -------------------------------------------------------
    ---Generating count enable and count down for counter 0
    -------------------------------------------------------
    Counter_En(0)    <= (not Freeze_int and ENT0 and (MDT0 or (not Counter_TC(0)
                        or (ARHT0 or PWMA0)))) when (CASC = '0') else
                        ((not Freeze_int) and ENT0 and (MDT0 or (not Counter_TC(1)) or ARHT0));
    Count_Down(0)    <= UDT0;
    -------------------------------------------------------

    -------------------------------------------------------
    ---Generating count enable and count down for counter 1
    -------------------------------------------------------
    Counter_En(1)    <= (not Freeze_int and ENT1 and (MDT1 or (not Counter_TC(1) 
                        or (ARHT1 or PWMB0)))) when (CASC = '0') else
                         ((not Freeze_int) and ENT0 and generateOutPre0 and (MDT0 or (not Counter_TC(1)) or ARHT0));
          
    Count_Down(1)    <= UDT1 when (CASC = '0') else
                        UDT0;
    -------------------------------------------------------

    -------------------------------------------------------
    ---Load counter0 and counter1 with TLR register value
    -------------------------------------------------------
    Load_Counter_Reg(0)  <=  ((Counter_TC(0) and (ARHT0 or PWMA0) and (not MDT0)) or LOAD0) when (CASC = '0') else
                             ((Counter_TC(1) and ARHT0 and (not MDT0)) or LOAD0) ;

    Load_Counter_Reg(1)  <=  ((Counter_TC(1) and ARHT1 and not PWMB0 and (not MDT1)) or
                              LOAD1 or (Counter_TC(0) and PWMB0)) when (CASC = '0') else
                             ((Counter_TC(1) and ARHT0 and (not MDT0)) or LOAD1) ;
    -------------------------------------------------------

    Load_Load_Reg(0) <=  (MDT0 and captureTrig0_Edge and ARHT0) or
                         (MDT0 and captureTrig0_Edge and not ARHT0 and read_done0);

    Load_Load_Reg(1) <=  ((MDT1 and captureTrig1_Edge and ARHT1) or
                          (MDT1 and captureTrig1_Edge and not ARHT1 and read_done1)) when (CASC = '0') else
                         ((MDT0 and captureTrig1_Edge and ARHT0) or
                          (MDT0 and captureTrig1_Edge and not ARHT0 and read_done1));
    -------------------------------------------------------

    Write_Load_Reg(0) <= Bus2ip_wrce(1);  
    Write_Load_Reg(1) <= Bus2ip_wrce(5);  
    CaptGen_Mux_Sel(0)<= Bus2ip_wrce(1);  
    CaptGen_Mux_Sel(1)<= Bus2ip_wrce(5);  

    tccr0_select <= (Bus2ip_wrce(1) or Bus2ip_rdce(1));
    tccr1_select <= (Bus2ip_wrce(5) or Bus2ip_rdce(5));

-------------------------------------------------------
---CAPTGEN_SYNC_PROCESS:
-- Process to register the signals
-------------------------------------------------------
INPUT_DOUBLE_REGS : entity lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => 4
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => CaptureTrig0,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => Clk,
        scndry_resetn              => '0',
        scndry_out                 => CaptureTrig0_int,
        scndry_vect_out            => open
    );


INPUT_DOUBLE_REGS2 : entity lib_cdc_v1_0_2.cdc_sync
    generic map (
        C_CDC_TYPE                 => 1,
        C_RESET_STATE              => 0,
        C_SINGLE_BIT               => 1,
        C_VECTOR_WIDTH             => 32,
        C_MTBF_STAGES              => 4
    )
    port map (
        prmry_aclk                 => '0',
        prmry_resetn               => '0',
        prmry_in                   => CaptureTrig1,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => Clk,
        scndry_resetn              => '0',
        scndry_out                 => CaptureTrig1_int,
        scndry_vect_out            => open
    );

    CAPTGEN_SYNC_PROCESS: process(Clk) is
    begin
      if Clk'event and Clk='1' then
        if Reset='1' then
          captureTrig0_d <= not C_TRIG0_ASSERT;
          captureTrig1_d <= not C_TRIG1_ASSERT;

          captureTrig0_d2 <= '0';
          captureTrig1_d2 <= '0';

          counter_TC_Reg(0) <= '0';
          counter_TC_Reg(1) <= '0';

          counter_TC_Reg2 <= '0';
         -- counter_TC_Reg2(1) <= '0';

          generateOutPre0 <= '0';
          generateOutPre1 <= '0';

          GenerateOut0 <= not C_GEN0_ASSERT;
          GenerateOut1 <= not C_GEN1_ASSERT;

          Interrupt <= '0';
        else
          captureTrig0_d <= (CaptureTrig0_int xor not(C_TRIG0_ASSERT)) and CAPT0;
          captureTrig1_d <= (CaptureTrig1_int xor not(C_TRIG1_ASSERT)) and CAPT1;

          captureTrig0_d2 <= captureTrig0_d;
          captureTrig1_d2 <= captureTrig1_d;

          counter_TC_Reg(0) <= Counter_TC(0);
          counter_TC_Reg(1) <= Counter_TC(1);

          counter_TC_Reg2 <= counter_TC_Reg(0);
         -- counter_TC_Reg2(1) <= counter_TC_Reg(1);

          generateOutPre0 <= Counter_TC(0) and (not counter_TC_Reg(0));
          generateOutPre1 <= Counter_TC(1) and (not counter_TC_Reg(1));

          GenerateOut0 <= ((((generateOutPre0 and CMPT0) xor not(C_GEN0_ASSERT)) and (not CASC)) or
                           (((generateOutPre1 and CMPT0) xor not(C_GEN0_ASSERT)) and CASC)); 

          GenerateOut1 <= ((((generateOutPre1 and CMPT1) xor not(C_GEN1_ASSERT)) and (not CASC)) or
                           (((generateOutPre0 and CMPT0) xor not(C_GEN0_ASSERT)) and CASC)); 

          Interrupt <= (ENIT0 and T0INT) or (ENIT1 and T1INT);
          -- for edge-sensitive interrupt
          --interrupt_reg<= (ENIT0 and T0INT) or (ENIT1 and T1INT);
          --Interrupt <= ((ENIT0 and T0INT) or (ENIT1 and T1INT))
          --                              and (not interrupt_reg);
        end if;
      end if;
    end process CAPTGEN_SYNC_PROCESS;

    captureTrig0_pulse <= captureTrig0_d and not captureTrig0_d2;
    captureTrig1_pulse <= captureTrig1_d and not captureTrig1_d2;

    captureTrig0_Edge  <= captureTrig0_pulse when (CASC = '0') else
                          (((not Counter_TC(0)) and (not counter_TC_Reg(0)) and captureTrig0_pulse) or
                           (captureTrig0_pulse_d2 and counter_TC_Reg2) or
                           (captureTrig0_pulse_d1 and counter_TC_Reg2));

    captureTrig1_Edge  <= captureTrig1_pulse when (CASC = '0') else
                          captureTrig0_Edge;

    DELAY_CAPT_TRIG_PROCESS: process(Clk) is
    begin
      if Clk'event and Clk='1' then
        if Reset='1' then
          captureTrig0_pulse_d1 <= '0';
          captureTrig0_pulse_d2 <= '0';
        else
          captureTrig0_pulse_d1 <= captureTrig0_pulse;
          captureTrig0_pulse_d2 <= captureTrig0_pulse_d1;
        end if;
      end if;
    end process DELAY_CAPT_TRIG_PROCESS;

    TCSR0_Reg <= TCSR0;
    TCSR1_Reg <= TCSR1;

end architecture imp;


-------------------------------------------------------------------------------
-- count_module - entity/architecture pair
-------------------------------------------------------------------------------
--
-- ***************************************************************************
-- DISCLAIMER OF LIABILITY
--
-- This file contains proprietary and confidential information of
-- Xilinx, Inc. ("Xilinx"), that is distributed under a license
-- from Xilinx, and may be used, copied and/or disclosed only
-- pursuant to the terms of a valid license agreement with Xilinx.
--
-- XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
-- ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
-- EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
-- LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
-- MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
-- does not warrant that functions included in the Materials will
-- meet the requirements of Licensee, or that the operation of the
-- Materials will be uninterrupted or error-free, or that defects
-- in the Materials will be corrected. Furthermore, Xilinx does
-- not warrant or make any representations regarding use, or the
-- results of the use, of the Materials in terms of correctness,
-- accuracy, reliability or otherwise.
--
-- Xilinx products are not designed or intended to be fail-safe,
-- or for use in any application requiring fail-safe performance,
-- such as life-support or safety devices or systems, Class III
-- medical devices, nuclear facilities, applications related to
-- the deployment of airbags, or any other applications that could
-- lead to death, personal injury or severe property or
-- environmental damage (individually and collectively, "critical
-- applications"). Customer assumes the sole risk and liability
-- of any use of Xilinx products in critical applications,
-- subject only to applicable laws and regulations governing
-- limitations on product liability.
--
-- Copyright 2001, 2002, 2003, 2004, 2008, 2009 Xilinx, Inc.
-- All rights reserved.
--
-- This disclaimer and copyright notice must be retained as part
-- of this file at all times.
-- ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        count_module.vhd
-- Version:         v2.0
-- Description:     Module with one counter and load register
--
-------------------------------------------------------------------------------
-- Structure:
--
--              count_module.vhd
--              -- counter_f.vhd

-------------------------------------------------------------------------------
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         03/18/2010      -- Ceated the version  v1.00.a
-- ^^^^^^
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         09/18/2010      -- Ceated the version  v1.01.a
--                              -- axi lite ipif v1.01.a used
-- ^^^^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_cmb"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                     Definition of Generics
-------------------------------------------------------------------------------
-- C_FAMILY          -- Default family
-- C_COUNT_WIDTH     -- Width of the counter
-------------------------------------------------------------------------------
--                  Definition of Ports
-------------------------------------------------------------------------------
-- Clk               -- clock
-- Reset             -- reset
-- Load_DBus         -- Count Load bus
-- Load_Counter_Reg  -- Counter load control
-- Load_Load_Reg     -- Load register control
-- Write_Load_Reg    -- Write Control of TLR reg
-- CaptGen_Mux_Sel   -- Mux select for capture and generate data
-- Counter_En        -- Counter enable
-- Count_Down        -- Count down
-- BE                -- Byte enable
-- LoadReg_DBus      -- Load reg bus
-- CounterReg_DBus   -- Counter reg bus
-- Counter_TC        -- counter Carry out signal
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.FDRE;

library axi_timer_v2_0_19;


-------------------------------------------------------------------------------
-- Entity declarations
-------------------------------------------------------------------------------
entity count_module is
  generic (
    C_FAMILY          : string   := "virtex5";
    C_COUNT_WIDTH     : integer  := 32   
    );
  port (
    Clk               : in  std_logic;
    Reset             : in  std_logic;
    Load_DBus         : in  std_logic_vector(0 to C_COUNT_WIDTH-1);
    Load_Counter_Reg  : in  std_logic;
    Load_Load_Reg     : in  std_logic;
    Write_Load_Reg    : in  std_logic;  
    CaptGen_Mux_Sel   : in  std_logic;
    Counter_En        : in  std_logic;
    Count_Down        : in  std_logic;
    BE                : in  std_Logic_vector(0 to 3);
    LoadReg_DBus      : out std_logic_vector(0 to C_COUNT_WIDTH-1);
    CounterReg_DBus   : out std_logic_vector(0 to C_COUNT_WIDTH-1);
    Counter_TC        : out std_logic
    );
end entity count_module;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture imp of count_module is

-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";
--Signal Declaration
signal iCounterReg_DBus   : std_logic_vector(0 to C_COUNT_WIDTH-1);
signal loadRegIn          : std_logic_vector(0 to C_COUNT_WIDTH-1);
signal load_Reg           : std_logic_vector(0 to C_COUNT_WIDTH-1);
signal load_load_reg_be   : std_logic_vector(0 to C_COUNT_WIDTH-1);
signal carry_out          : std_logic;

-------------------------------------------------------------------------------
-- Begin architecture
-------------------------------------------------------------------------------
begin -- Architecture imp

-------------------------------------------------------------------------------
--CAPTGEN_MUX_PROCESS : Process to implement mux the Load_DBus and
--iCounterReg_DBus
-------------------------------------------------------------------------------
    CAPTGEN_MUX_PROCESS: process (CaptGen_Mux_Sel,Load_DBus,iCounterReg_DBus ) is
    begin
      if CaptGen_Mux_Sel='1' then
        loadRegIn <= Load_DBus;
      else
        loadRegIn <= iCounterReg_DBus;
      end if;
    end process CAPTGEN_MUX_PROCESS;

-------------------------------------------------------------------------------
--LOAD_REG_GEN: To generate load register
-------------------------------------------------------------------------------
    LOAD_REG_GEN: for i in 0 to C_COUNT_WIDTH-1 generate
      load_load_reg_be(i) <= Load_Load_Reg or
                             (Write_Load_Reg and BE((i-C_COUNT_WIDTH+32)/8));
      LOAD_REG_I: component FDRE
        port map (
          Q  => load_Reg(i),                -- [out]
          C  => Clk,                        -- [in]
          CE => load_load_reg_be(i),        -- [in]
          D  => loadRegIn(i),               -- [in]
          R  => Reset                       -- [in]
        );
    end generate LOAD_REG_GEN;

-------------------------------------------------------------------------------
--counter_f module is instantiated
-------------------------------------------------------------------------------
    COUNTER_I: entity axi_timer_v2_0_19.counter_f
    generic map (
                C_NUM_BITS => C_COUNT_WIDTH, -- [integer]
                C_FAMILY   => C_FAMILY       -- [string]
               )
        port map(
             Clk           => Clk,              -- [in  std_logic]
             Rst           => Reset,            -- [in  std_logic]
             Load_In       => load_Reg,         -- [in  std_logic_vector]
             Count_Enable  => Counter_En,       -- [in  std_logic]
             Count_Load    => Load_Counter_Reg, -- [in  std_logic]
             Count_Down    => Count_Down,       -- [in  std_logic]
             Count_Out     => iCounterReg_DBus, -- [out std_logic_vector]
             Carry_Out     => carry_out         -- [out std_logic]
            );

    Counter_TC       <= carry_out;
    LoadReg_DBus     <= load_Reg;
    CounterReg_DBus  <= iCounterReg_DBus;

end architecture imp;




-------------------------------------------------------------------------------
-- TC_Core - entity/architecture pair
-------------------------------------------------------------------------------
--
-- ***************************************************************************
-- DISCLAIMER OF LIABILITY
--
-- This file contains proprietary and confidential information of
-- Xilinx, Inc. ("Xilinx"), that is distributed under a license
-- from Xilinx, and may be used, copied and/or disclosed only
-- pursuant to the terms of a valid license agreement with Xilinx.
--
-- XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
-- ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
-- EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
-- LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
-- MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
-- does not warrant that functions included in the Materials will
-- meet the requirements of Licensee, or that the operation of the
-- Materials will be uninterrupted or error-free, or that defects
-- in the Materials will be corrected. Furthermore, Xilinx does
-- not warrant or make any representations regarding use, or the
-- results of the use, of the Materials in terms of correctness,
-- accuracy, reliability or otherwise.
--
-- Xilinx products are not designed or intended to be fail-safe,
-- or for use in any application requiring fail-safe performance,
-- such as life-support or safety devices or systems, Class III
-- medical devices, nuclear facilities, applications related to
-- the deployment of airbags, or any other applications that could
-- lead to death, personal injury or severe property or
-- environmental damage (individually and collectively, "critical
-- applications"). Customer assumes the sole risk and liability
-- of any use of Xilinx products in critical applications,
-- subject only to applicable laws and regulations governing
-- limitations on product liability.
--
-- Copyright 2001, 2002, 2003, 2004, 2008, 2009 Xilinx, Inc.
-- All rights reserved.
--
-- This disclaimer and copyright notice must be retained as part
-- of this file at all times.
-- ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename        :tc_core.vhd
-- Company         :Xilinx
-- Version         :v2.0
-- Description     :Dual Timer/Counter for PLB bus
-- Standard        :VHDL-93
--
-------------------------------------------------------------------------------
-- Structure:
--
--                    --tc_core.vhd
--                       --mux_onehot_f.vhd
--                        --family_support.vhd     
--                       --timer_control.vhd
--                       --count_module.vhd
--                             --counter_f.vhd
--                             --family_support.vhd  
-------------------------------------------------------------------------------
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         03/18/2010      -- Ceated the version  v1.00.a
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         09/18/2010      -- Ceated the version  v1.01.a
--                              -- axi lite ipif v1.01.a used
-- ^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_cmb"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                     Definition of Generics
-------------------------------------------------------------------------------
-- C_FAMILY           -- Default family
-- C_AWIDTH           -- PLB address bus width
-- C_DWIDTH           -- PLB data bus width
-- C_COUNT_WIDTH      -- Width in the bits of the counter
-- C_ONE_TIMER_ONLY   -- Number of the Timer 
-- C_TRIG0_ASSERT     -- Assertion Level of captureTrig0  
-- C_TRIG1_ASSERT     -- Assertion Level of captureTrig1  
-- C_GEN0_ASSERT      -- Assertion Level for GenerateOut0
-- C_GEN1_ASSERT      -- Assertion Level for GenerateOut1
-- C_ARD_NUM_CE_ARRAY -- Number of chip enable
-------------------------------------------------------------------------------
--                  Definition of Ports
-------------------------------------------------------------------------------
-- Clk                -- PLB Clock  
-- Rst                -- PLB Reset
-- Bus2ip_addr        -- bus to ip address bus
-- Bus2ip_be          -- byte enables
-- Bus2ip_data        -- bus to ip data bus
--   
-- TC_DBus            -- ip to bus data bus
-- bus2ip_rdce        -- read select
-- bus2ip_wrce        -- write select
-- ip2bus_rdack       -- read acknowledge
-- ip2bus_wrack       -- write acknowledge
-- TC_errAck          -- error acknowledge

-------------------------------------------------------------------------------
-- Timer/Counter signals 
-------------------------------------------------------------------------------
-- CaptureTrig0       -- Capture Trigger 0
-- CaptureTrig1       -- Capture Trigger 1
-- GenerateOut0       -- Generate Output 0
-- GenerateOut1       -- Generate Output 1
-- PWM0               -- Pulse Width Modulation Ouput 0
-- Interrupt          -- Interrupt 
-- Freeze             -- Freeze count value
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library axi_timer_v2_0_19;
use axi_timer_v2_0_19.TC_Types.QUADLET_TYPE;
use axi_timer_v2_0_19.TC_Types.PWMA0_POS;
use axi_timer_v2_0_19.TC_Types.PWMB0_POS;

library axi_lite_ipif_v3_0_4;
use axi_lite_ipif_v3_0_4.ipif_pkg.calc_num_ce;
use axi_lite_ipif_v3_0_4.ipif_pkg.INTEGER_ARRAY_TYPE;

library unisim;
use unisim.vcomponents.FDRS;

-------------------------------------------------------------------------------
-- Entity declarations
-------------------------------------------------------------------------------
entity tc_core is
  generic (
    C_FAMILY           : string  := "virtex5";
    C_COUNT_WIDTH      : integer := 32;
    C_ONE_TIMER_ONLY   : integer := 0;
    C_DWIDTH           : integer := 32;
    C_AWIDTH           : integer := 5;
    C_TRIG0_ASSERT     : std_logic := '1';
    C_TRIG1_ASSERT     : std_logic := '1';
    C_GEN0_ASSERT      : std_logic := '1';
    C_GEN1_ASSERT      : std_logic := '1';  
    C_ARD_NUM_CE_ARRAY : INTEGER_ARRAY_TYPE 
    );
  port (
    Clk                : in std_logic;
    Rst                : in std_logic;
    -- PLB signals
    Bus2ip_addr        : in std_logic_vector(0 to C_AWIDTH-1);
    Bus2ip_be          : in std_logic_vector(0 to 3);
    Bus2ip_data        : in std_logic_vector(0 to 31);
    TC_DBus            : out std_logic_vector(0 to 31);
    bus2ip_rdce        : in std_logic_vector(0 to calc_num_ce(C_ARD_NUM_CE_ARRAY)-1);
    bus2ip_wrce        : in std_logic_vector(0 to calc_num_ce(C_ARD_NUM_CE_ARRAY)-1);
    ip2bus_rdack       : out std_logic;
    ip2bus_wrack       : out std_logic;
    TC_errAck          : out std_logic;
    -- PTC signals
    CaptureTrig0       : in std_logic;
    CaptureTrig1       : in std_logic;
    GenerateOut0       : out std_logic;
    GenerateOut1       : out std_logic;
    PWM0               : out std_logic;
    Interrupt          : out std_logic;
    Freeze             : in std_logic
    );
end entity tc_core;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture imp of tc_core is
-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

--Attribute declaration
attribute syn_keep : boolean;
--Signal declaration
signal load_Counter_Reg     : std_logic_vector(0 to 1);
signal load_Load_Reg        : std_logic_vector(0 to 1);
signal write_Load_Reg       : std_logic_vector(0 to 1);
signal captGen_Mux_Sel      : std_logic_vector(0 to 1);
signal loadReg_DBus         : std_logic_vector(0 to C_COUNT_WIDTH*2-1);
signal counterReg_DBus      : std_logic_vector(0 to C_COUNT_WIDTH*2-1);
signal tCSR0_Reg            : QUADLET_TYPE;
signal tCSR1_Reg            : QUADLET_TYPE;
signal counter_TC           : std_logic_vector(0 to 1);
signal counter_En           : std_logic_vector(0 to 1);
signal count_Down           : std_logic_vector(0 to 1);
attribute syn_keep of count_Down : signal is true;
signal iPWM0                : std_logic;
signal iGenerateOut0        : std_logic;
signal iGenerateOut1        : std_logic;
signal pwm_Reset            : std_logic;
signal Read_Reg_In          : QUADLET_TYPE;
signal read_Mux_In          : std_logic_vector(0 to 6*32-1);
signal read_Mux_S           : std_logic_vector(0 to 5);


begin -- architecture imp

-----------------------------------------------------------------------------
-- Generating the acknowledgement/error signals
-----------------------------------------------------------------------------
  
    ip2bus_rdack <= (Bus2ip_rdce(0) or Bus2ip_rdce(1) or Bus2ip_rdce(2) or 
                     Bus2ip_rdce(4) or Bus2ip_rdce(5) or
                     Bus2ip_rdce(6) or Bus2ip_rdce(7));
  
    ip2bus_wrack <= (Bus2ip_wrce(0) or Bus2ip_wrce(1) or Bus2ip_wrce(2) or 
                     Bus2ip_wrce(4) or Bus2ip_wrce(5) or
                     Bus2ip_wrce(6) or Bus2ip_wrce(7));
 
--TCR0 AND TCR1 is read only register, hence writing to these register 
--will not generate error ack. 
--Modify TC_errAck    <= (Bus2ip_wrce(2)or Bus2ip_wrce(6)) on 11/11/08 to;
    TC_errAck    <= '0';

-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
--Process :READ_MUX_INPUT
-----------------------------------------------------------------------------
    READ_MUX_INPUT: process (TCSR0_Reg,TCSR1_Reg,LoadReg_DBus,CounterReg_DBus) is
    begin
      read_Mux_In(0  to 19) <= (others => '0');
      read_Mux_In(20 to 31) <= TCSR0_Reg(20 to 31);
      read_Mux_In(32 to 52) <= (others => '0');
      read_Mux_In(53 to 63) <= TCSR1_Reg(21 to 31);
      if C_COUNT_WIDTH < C_DWIDTH then
        for i in 1 to C_DWIDTH-C_COUNT_WIDTH loop
          read_Mux_In(63 +i)  <= '0';
          read_Mux_In(95 +i)  <= '0';
          read_Mux_In(127+i)  <= '0';
          read_Mux_In(159+i)  <= '0';
        end loop;
      end if;
      read_Mux_In(64 +C_DWIDTH-C_COUNT_WIDTH to  95) <=
        LoadReg_DBus(C_COUNT_WIDTH*0 to C_COUNT_WIDTH*1-1);
      read_Mux_In(96 +C_DWIDTH-C_COUNT_WIDTH to 127) <=
        LoadReg_DBus(C_COUNT_WIDTH*1 to C_COUNT_WIDTH*2-1);
      read_Mux_In(128+C_DWIDTH-C_COUNT_WIDTH to 159) <=
        CounterReg_DBus(C_COUNT_WIDTH*0 to C_COUNT_WIDTH*1-1);
      read_Mux_In(160+C_DWIDTH-C_COUNT_WIDTH to 191) <=
        CounterReg_DBus(C_COUNT_WIDTH*1 to C_COUNT_WIDTH*2-1);
    end process READ_MUX_INPUT;

---------------------------------------------------------              
-- Create read mux select input
-- Bus2ip_rdce(0) -->TCSR0 REG READ ENABLE
-- Bus2ip_rdce(4) -->TCSR1 REG READ ENABLE
-- Bus2ip_rdce(1) -->TLR0  REG READ ENABLE
-- Bus2ip_rdce(5) -->TLR1  REG READ ENABLE
-- Bus2ip_rdce(2) -->TCR0  REG READ ENABLE
-- Bus2ip_rdce(6) -->TCR1  REG READ ENABLE
---------------------------------------------------------

    read_Mux_S <= Bus2ip_rdce(0) & Bus2ip_rdce(4)& Bus2ip_rdce(1)
                  & Bus2ip_rdce(5) & Bus2ip_rdce(2) & Bus2ip_rdce(6); 
              
    -- mux_onehot_f              
    READ_MUX_I: entity axi_timer_v2_0_19.mux_onehot_f
      generic map(
          C_DW => 32,
          C_NB => 6,
          C_FAMILY => C_FAMILY)
      port map(
          D    => read_Mux_In,     --[in]
          S    => read_Mux_S,      --[in]
          Y    => Read_Reg_In      --[out]
          );

    --slave to bus data bus assignment
    TC_DBus <= Read_Reg_In ;
                               
------------------------------------------------------------------

------------------------------------------------------------------
-- COUNTER MODULE
------------------------------------------------------------------
COUNTER_0_I: entity axi_timer_v2_0_19.count_module
  generic map (
    C_FAMILY          => C_FAMILY,
    C_COUNT_WIDTH     => C_COUNT_WIDTH)
  port map (
    Clk               => Clk,                   --[in]
    Reset             => Rst,                   --[in]
    Load_DBus         => Bus2ip_data(C_DWIDTH-C_COUNT_WIDTH to C_DWIDTH-1), --[in]
    Load_Counter_Reg  => load_Counter_Reg(0),   --[in]
    Load_Load_Reg     => load_Load_Reg(0),      --[in]
    Write_Load_Reg    => write_Load_Reg(0),     --[in]
    CaptGen_Mux_Sel   => captGen_Mux_Sel(0),    --[in]
    Counter_En        => counter_En(0),         --[in]
    Count_Down        => count_Down(0),         --[in]
    BE                => Bus2ip_be,             --[in]
    LoadReg_DBus      => loadReg_DBus(C_COUNT_WIDTH*0 to C_COUNT_WIDTH*1-1),    --[out]
    CounterReg_DBus   => counterReg_DBus(C_COUNT_WIDTH*0 to C_COUNT_WIDTH*1-1), --[out]
    Counter_TC        => counter_TC(0)          --[out]
    );
    
----------------------------------------------------------------------    
--GEN_SECOND_TIMER:SECOND COUNTER MODULE IS ADDED TO DESIGN 
--WHEN C_ONE_TIMER_ONLY /= 1 
----------------------------------------------------------------------    
GEN_SECOND_TIMER: if C_ONE_TIMER_ONLY /= 1 generate
COUNTER_1_I: entity axi_timer_v2_0_19.count_module
  generic map (
    C_FAMILY          => C_FAMILY,
    C_COUNT_WIDTH     => C_COUNT_WIDTH)    
  port map (
    Clk               => Clk,                   --[in]
    Reset             => Rst,                   --[in]
    Load_DBus         => Bus2ip_data(C_DWIDTH-C_COUNT_WIDTH to C_DWIDTH-1), --[in]
    Load_Counter_Reg  => load_Counter_Reg(1),   --[in]
    Load_Load_Reg     => load_Load_Reg(1),      --[in]
    Write_Load_Reg    => write_Load_Reg(1),     --[in]
    CaptGen_Mux_Sel   => captGen_Mux_Sel(1),    --[in]
    Counter_En        => counter_En(1),         --[in]
    Count_Down        => count_Down(1),         --[in]
    BE                => Bus2ip_be,             --[in]
    LoadReg_DBus      => loadReg_DBus(C_COUNT_WIDTH*1 to C_COUNT_WIDTH*2-1),    --[out]
    CounterReg_DBus   => counterReg_DBus(C_COUNT_WIDTH*1 to C_COUNT_WIDTH*2-1), --[out]
    Counter_TC        => counter_TC(1)          --[out]
    );
end generate GEN_SECOND_TIMER;

----------------------------------------------------------------------    
--GEN_NO_SECOND_TIMER: GENERATE WHEN C_ONE_TIMER_ONLY = 1 
----------------------------------------------------------------------  
GEN_NO_SECOND_TIMER: if C_ONE_TIMER_ONLY = 1 generate
  loadReg_DBus(C_COUNT_WIDTH*1 to C_COUNT_WIDTH*2-1)    <= (others => '0');
  counterReg_DBus(C_COUNT_WIDTH*1 to C_COUNT_WIDTH*2-1) <= (others => '0');
  counter_TC(1) <= '0';
end generate GEN_NO_SECOND_TIMER;

----------------------------------------------------------------------    
--TIMER_CONTROL_I: TIMER_CONTROL MODULE
----------------------------------------------------------------------  
TIMER_CONTROL_I: entity axi_timer_v2_0_19.timer_control
  generic map (
    C_TRIG0_ASSERT     => C_TRIG0_ASSERT,
    C_TRIG1_ASSERT     => C_TRIG1_ASSERT,
    C_GEN0_ASSERT      => C_GEN0_ASSERT,
    C_GEN1_ASSERT      => C_GEN1_ASSERT,
    C_ARD_NUM_CE_ARRAY => C_ARD_NUM_CE_ARRAY
    )
  port map (
    Clk                => Clk,                -- [in]
    Reset              => Rst,                -- [in]
    CaptureTrig0       => CaptureTrig0,       -- [in]
    CaptureTrig1       => CaptureTrig1,       -- [in]
    GenerateOut0       => iGenerateOut0,      -- [out]
    GenerateOut1       => iGenerateOut1,      -- [out]
    Interrupt          => Interrupt,          -- [out]
    Counter_TC         => counter_TC,         -- [in]
    Bus2ip_data        => Bus2ip_data,        -- [in]
    BE                 => Bus2ip_be,          -- [in]
    Load_Counter_Reg   => load_Counter_Reg,   -- [out]
    Load_Load_Reg      => load_Load_Reg,      -- [out]
    Write_Load_Reg     => write_Load_Reg,     -- [out]
    CaptGen_Mux_Sel    => captGen_Mux_Sel,    -- [out]
    Counter_En         => counter_En,         -- [out]
    Count_Down         => count_Down,         -- [out]
    Bus2ip_rdce        => Bus2ip_rdce,        -- [in]
    Bus2ip_wrce        => Bus2ip_wrce,        -- [in]
    Freeze             => Freeze,             -- [in]
    TCSR0_Reg          => tCSR0_Reg(20 to 31),          -- [out]
    TCSR1_Reg          => tCSR1_Reg(21 to 31)           -- [out]
    );

tCSR0_Reg (0 to 19) <= (others => '0');
tCSR1_Reg (0 to 20) <= (others => '0');

pwm_Reset <= iGenerateOut1 or
             (not tCSR0_Reg(PWMA0_POS) and not tCSR1_Reg(PWMB0_POS));

PWM_FF_I: component FDRS
    port map (
      Q  => iPWM0,                  -- [out]
      C  => Clk,                    -- [in]
      D  => iPWM0,                  -- [in]
      R  => pwm_Reset,              -- [in]
      S  => iGenerateOut0           -- [in]
    );

PWM0         <= iPWM0;
GenerateOut0 <= iGenerateOut0;
GenerateOut1 <= iGenerateOut1;

end architecture IMP;


-------------------------------------------------------------------------------
-- xps_timer - entity/architecture pair
-------------------------------------------------------------------------------
--
-- ***************************************************************************
-- DISCLAIMER OF LIABILITY
--
-- This file contains proprietary and confidential information of
-- Xilinx, Inc. ("Xilinx"), that is distributed under a license
-- from Xilinx, and may be used, copied and/or disclosed only
-- pursuant to the terms of a valid license agreement with Xilinx.
--
-- XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
-- ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
-- EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
-- LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
-- MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
-- does not warrant that functions included in the Materials will
-- meet the requirements of Licensee, or that the operation of the
-- Materials will be uninterrupted or error-free, or that defects
-- in the Materials will be corrected. Furthermore, Xilinx does
-- not warrant or make any representations regarding use, or the
-- results of the use, of the Materials in terms of correctness,
-- accuracy, reliability or otherwise.
--
-- Xilinx products are not designed or intended to be fail-safe,
-- or for use in any application requiring fail-safe performance,
-- such as life-support or safety devices or systems, Class III
-- medical devices, nuclear facilities, applications related to
-- the deployment of airbags, or any other applications that could
-- lead to death, personal injury or severe property or
-- environmental damage (individually and collectively, "critical
-- applications"). Customer assumes the sole risk and liability
-- of any use of Xilinx products in critical applications,
-- subject only to applicable laws and regulations governing
-- limitations on product liability.
--
-- Copyright 2001, 2002, 2003, 2004, 2008, 2009 Xilinx, Inc.
-- All rights reserved.
--
-- This disclaimer and copyright notice must be retained as part
-- of this file at all times.
-- ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename        :axi_timer.vhd
-- Company         :Xilinx
-- Version         :v2.0
-- Description     :Timer/Counter for AXI
-- Standard        :VHDL-93
-------------------------------------------------------------------------------
-- Structure:   This section shows the hierarchical structure of axi_timer.
--
--              axi_timer.vhd
--                 --axi_lite_ipif.vhd
--                    --slave_attachment.vhd
--                       --address_decoder.vhd
--                 --tc_types.vhd
--                 --tc_core.vhd
--                    --mux_onehot_f.vhd
--                      --family_support.vhd     
--                     --timer_control.vhd
--                     --count_module.vhd
--                        --counter_f.vhd
--                        --family_support.vhd     
--                                 
--                 
-------------------------------------------------------------------------------
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         03/18/2010      -- Ceated the version  v1.00.a
-- ^^^^^^
-- Author:      BSB
-- History:
--  BSB         09/18/2010      -- Ceated the version  v1.01.a
--                              -- axi lite ipif v1.01.a used
-- ^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_cmb"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                     Definition of Generics
-------------------------------------------------------------------------------
-- C_S_AXI_DATA_WIDTH    -- AXI data bus width
-- C_S_AXI_ADDR_WIDTH    -- AXI address bus width
-- C_FAMILY              -- Target FPGA family
-------------------------------------------------------------------------------

-- C_COUNT_WIDTH            -- Width in the bits of the counter
-- C_ONE_TIMER_ONLY         -- Number of the Timer 
-- C_TRIG0_ASSERT           -- Assertion Level of captureTrig0  
-- C_TRIG1_ASSERT           -- Assertion Level of captureTrig1  
-- C_GEN0_ASSERT            -- Assertion Level for GenerateOut0
-- C_GEN1_ASSERT            -- Assertion Level for GenerateOut1

-------------------------------------------------------------------------------
--                  Definition of Ports
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- s_axi_aclk            -- AXI Clock
-- s_axi_aresetn         -- AXI Reset
-- s_axi_awaddr          -- AXI Write address
-- s_axi_awvalid         -- Write address valid
-- s_axi_awready         -- Write address ready
-- s_axi_wdata           -- Write data
-- s_axi_wstrb           -- Write strobes
-- s_axi_wvalid          -- Write valid
-- s_axi_wready          -- Write ready
-- s_axi_bresp           -- Write response
-- s_axi_bvalid          -- Write response valid
-- s_axi_bready          -- Response ready
-- s_axi_araddr          -- Read address
-- s_axi_arvalid         -- Read address valid
-- s_axi_arready         -- Read address ready
-- s_axi_rdata           -- Read data
-- s_axi_rresp           -- Read response
-- s_axi_rvalid          -- Read valid
-- s_axi_rready          -- Read ready
-------------------------------------------------------------------------------
-- timer/counter signals 
-------------------------------------------------------------------------------
-- capturetrig0         -- Capture Trigger 0
-- capturetrig1         -- Capture Trigger 1
-- generateout0         -- Generate Output 0
-- generateout1         -- Generate Output 1
-- pwm0                 -- Pulse Width Modulation Ouput 0
-- interrupt            -- Interrupt 
-- freeze               -- Freeze count value
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

library axi_timer_v2_0_19;

library axi_lite_ipif_v3_0_4;

library axi_lite_ipif_v3_0_4;
use axi_lite_ipif_v3_0_4.ipif_pkg.calc_num_ce;
use axi_lite_ipif_v3_0_4.ipif_pkg.SLV64_ARRAY_TYPE;
use axi_lite_ipif_v3_0_4.ipif_pkg.INTEGER_ARRAY_TYPE;

-------------------------------------------------------------------------------
-- Entity declarations
-------------------------------------------------------------------------------
entity axi_timer is
    generic (
    C_FAMILY          : string    := "virtex7";
    C_COUNT_WIDTH     : integer   := 32;
    C_ONE_TIMER_ONLY  : integer   := 0;
    C_TRIG0_ASSERT    : std_logic := '1';
    C_TRIG1_ASSERT    : std_logic := '1';
    C_GEN0_ASSERT     : std_logic := '1';
    C_GEN1_ASSERT     : std_logic := '1';
    -- axi lite ipif block generics
    C_S_AXI_DATA_WIDTH: integer   := 32;
    C_S_AXI_ADDR_WIDTH: integer   := 5 --5
    );
    port 
    (
    --Timer/Counter signals
    capturetrig0      : in  std_logic;
    capturetrig1      : in  std_logic;
    generateout0      : out std_logic;
    generateout1      : out std_logic;
    pwm0              : out std_logic;
    interrupt         : out std_logic;
    freeze            : in  std_logic;
    --system signals
    s_axi_aclk        : in  std_logic;
    s_axi_aresetn     : in  std_logic := '1';
    s_axi_awaddr      : in  std_logic_vector(4 downto 0);
                        --(c_s_axi_addr_width-1 downto 0);
    s_axi_awvalid     : in  std_logic;
    s_axi_awready     : out std_logic;
    s_axi_wdata       : in  std_logic_vector(31 downto 0);
                       -- (c_s_axi_data_width-1 downto 0);
    s_axi_wstrb       : in  std_logic_vector(3 downto 0);
                       -- ((c_s_axi_data_width/8)-1 downto 0);
    s_axi_wvalid      : in  std_logic;
    s_axi_wready      : out std_logic;
    s_axi_bresp       : out std_logic_vector(1 downto 0);
    s_axi_bvalid      : out std_logic;
    s_axi_bready      : in  std_logic;
    s_axi_araddr      : in  std_logic_vector(4 downto 0);
                        --(c_s_axi_addr_width-1 downto 0);
    s_axi_arvalid     : in  std_logic;
    s_axi_arready     : out std_logic;
    s_axi_rdata       : out std_logic_vector(31 downto 0);
                        --(c_s_axi_data_width-1 downto 0);
    s_axi_rresp       : out std_logic_vector(1 downto 0);
    s_axi_rvalid      : out std_logic;
    s_axi_rready      : in  std_logic
    ); 
    -- Fan-out attributes for XST
    attribute MAX_FANOUT                : string;
    attribute MAX_FANOUT of S_AXI_ACLK  : signal is "10000";
    attribute MAX_FANOUT of S_AXI_ARESETN: signal is "10000";

end entity axi_timer;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture imp of axi_timer is

-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";


-------------------------------------------------------------------------------
-- constant added for webtalk information
-------------------------------------------------------------------------------
--function chr(sl: std_logic) return character is
--    variable c: character;
--    begin
--      case sl is
--         when '0' => c:= '0';
--         when '1' => c:= '1';
--         when 'Z' => c:= 'Z';
--         when 'U' => c:= 'U';
--         when 'X' => c:= 'X';
--         when 'W' => c:= 'W';
--         when 'L' => c:= 'L';
--         when 'H' => c:= 'H';
--         when '-' => c:= '-';
--      end case;
--    return c;
--   end chr;
--
--function str(slv: std_logic_vector) return string is
--     variable result : string (1 to slv'length);
--     variable r : integer;
--   begin
--     r := 1;
--     for i in slv'range loop
--        result(r) := chr(slv(i));
--        r := r + 1;
--     end loop;
--     return result;
--   end str;


    constant ZEROES                 : std_logic_vector(0 to 31) := X"00000000";
    constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE :=
        (
          -- Timer registers Base Address
          ZEROES & X"00000000",
          ZEROES & X"0000001F"
         );

    constant C_ARD_NUM_CE_ARRAY     : INTEGER_ARRAY_TYPE :=
        (
          0 => 8          
        );
    constant C_S_AXI_MIN_SIZE       :std_logic_vector(31 downto 0):= X"0000001F";
    constant C_USE_WSTRB            :integer := 0;
    constant C_DPHASE_TIMEOUT       :integer range 0 to 256   := 32;
    --Signal declaration --------------------------------
    signal bus2ip_clk               : std_logic;                    
    signal bus2ip_resetn            : std_logic;
    signal bus2ip_reset             : std_logic;
    signal ip2bus_data              : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1)
                                      :=(others  => '0');
    signal ip2bus_error             : std_logic := '0';
    signal ip2bus_wrack             : std_logic := '0';
    signal ip2bus_rdack             : std_logic := '0';
    -----------------------------------------------------------------------
    signal bus2ip_data              : std_logic_vector
                                      (0 to C_S_AXI_DATA_WIDTH-1);
    signal bus2ip_addr              : std_logic_vector(0 to C_S_AXI_ADDR_WIDTH-1);
    signal bus2ip_be                : std_logic_vector
                                      (0 to C_S_AXI_DATA_WIDTH/8-1 );
    signal bus2ip_rdce              : std_logic_vector
                                      (0 to calc_num_ce(C_ARD_NUM_CE_ARRAY)-1);
    signal bus2ip_wrce              : std_logic_vector
                                      (0 to calc_num_ce(C_ARD_NUM_CE_ARRAY)-1);
-------------------------------------------------------------------------------
-- Begin architecture
-------------------------------------------------------------------------------
begin -- architecture imp

  TC_CORE_I: entity axi_timer_v2_0_19.tc_core
    generic map (
      C_FAMILY                => C_FAMILY,
      C_COUNT_WIDTH           => C_COUNT_WIDTH,
      C_ONE_TIMER_ONLY        => C_ONE_TIMER_ONLY,
      C_DWIDTH                => C_S_AXI_DATA_WIDTH,
      C_AWIDTH                => C_S_AXI_ADDR_WIDTH,
      C_TRIG0_ASSERT          => C_TRIG0_ASSERT,
      C_TRIG1_ASSERT          => C_TRIG1_ASSERT,
      C_GEN0_ASSERT           => C_GEN0_ASSERT,
      C_GEN1_ASSERT           => C_GEN1_ASSERT,
      C_ARD_NUM_CE_ARRAY      => C_ARD_NUM_CE_ARRAY
      )

    port map (
      -- IPIF signals
      Clk                     => bus2ip_clk,     --[in]
      Rst                     => bus2ip_reset,   --[in]
      Bus2ip_addr             => bus2ip_addr,    --[in]
      Bus2ip_be               => bus2ip_be,      --[in]
      Bus2ip_data             => bus2ip_data,    --[in]
      TC_DBus                 => ip2bus_data,    --[out]
      bus2ip_rdce             => bus2ip_rdce,    --[in]
      bus2ip_wrce             => bus2ip_wrce,    --[in]
      ip2bus_rdack            => ip2bus_rdack,   --[out]
      ip2bus_wrack            => ip2bus_wrack,   --[out]
      TC_errAck               => ip2bus_error,   --[out]
      -- Timer/Counter signals
      CaptureTrig0            => capturetrig0,   --[in]
      CaptureTrig1            => capturetrig1,   --[in]
      GenerateOut0            => generateout0,   --[out]
      GenerateOut1            => generateout1,   --[out]
      PWM0                    => pwm0,           --[out]
      Interrupt               => interrupt,      --[out]
      Freeze                  => freeze          --[in]      
      );
     
    ---------------------------------------------------------------------------
    -- INSTANTIATE AXI Lite IPIF
    ---------------------------------------------------------------------------
    AXI4_LITE_I : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
      generic map
           (
        C_S_AXI_DATA_WIDTH    => C_S_AXI_DATA_WIDTH,
        C_S_AXI_ADDR_WIDTH    => C_S_AXI_ADDR_WIDTH,
        C_S_AXI_MIN_SIZE      => C_S_AXI_MIN_SIZE,
        C_USE_WSTRB           => C_USE_WSTRB,
        C_DPHASE_TIMEOUT      => C_DPHASE_TIMEOUT,
        C_ARD_ADDR_RANGE_ARRAY=> C_ARD_ADDR_RANGE_ARRAY,
        C_ARD_NUM_CE_ARRAY    => C_ARD_NUM_CE_ARRAY,
        C_FAMILY              => C_FAMILY
           )
     port map
        (
        S_AXI_ACLK            => s_axi_aclk,
        S_AXI_ARESETN         => s_axi_aresetn,
        S_AXI_AWADDR          => s_axi_awaddr,
        S_AXI_AWVALID         => s_axi_awvalid,
        S_AXI_AWREADY         => s_axi_awready,
        S_AXI_WDATA           => s_axi_wdata,
        S_AXI_WSTRB           => s_axi_wstrb,
        S_AXI_WVALID          => s_axi_wvalid,
        S_AXI_WREADY          => s_axi_wready,
        S_AXI_BRESP           => s_axi_bresp,
        S_AXI_BVALID          => s_axi_bvalid,
        S_AXI_BREADY          => s_axi_bready,
        S_AXI_ARADDR          => s_axi_araddr,
        S_AXI_ARVALID         => s_axi_arvalid,
        S_AXI_ARREADY         => s_axi_arready,
        S_AXI_RDATA           => s_axi_rdata,
        S_AXI_RRESP           => s_axi_rresp,
        S_AXI_RVALID          => s_axi_rvalid,
        S_AXI_RREADY          => s_axi_rready,
         -- IP Interconnect (IPIC) port signals -------------------------------
        Bus2IP_Clk            => bus2ip_clk,
        Bus2IP_Resetn         => bus2ip_resetn,
        IP2Bus_Data           => ip2bus_data,
        IP2Bus_WrAck          => ip2bus_wrack,
        IP2Bus_RdAck          => ip2bus_rdack,
        IP2Bus_Error          => ip2bus_error,
        Bus2IP_Addr           => bus2ip_addr,
        Bus2IP_Data           => bus2ip_data,
        Bus2IP_RNW            => open,
        Bus2IP_BE             => bus2ip_be,
        Bus2IP_CS             => open,
        Bus2IP_RdCE           => bus2ip_rdce,
        Bus2IP_WrCE           => bus2ip_wrce                                
    );
bus2ip_reset <= not bus2ip_resetn;    
end architecture imp;


