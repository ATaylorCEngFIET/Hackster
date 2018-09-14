-- dynshreg_i_f - entity / architecture pair
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
-- ** Copyright (c) 2007-2010 Xilinx, Inc. All rights reserved.           **
-- **                                                                     **
-- ** This copyright and support notice must be retained as part          **
-- ** of this text at all times.                                          **
-- **                                                                     **
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:      dynshreg_i_f.vhd
--
-- Description:   This module implements a dynamic shift register with clock
--                enable. (Think, for example, of the function of the SRL16E.)
--                The width and depth of the shift register are selectable
--                via generics C_WIDTH and C_DEPTH, respectively. The C_FAMILY
--                allows the implementation to be tailored to the target
--                FPGA family. An inferred implementation is used if C_FAMILY
--                is "nofamily" (the default) or if synthesis will not produce
--                an optimal implementation.  Otherwise, a structural
--                implementation will be generated.
--
--                There is no restriction on the values of C_WIDTH and
--                C_DEPTH and, in particular, the C_DEPTH does not have
--                to be a power of two.
--
--                This version allows the client to specify the initial value
--                of the contents of the shift register, as applied
--                during configuration.
--
--
-- VHDL-Standard:   VHDL'93
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
--      predecessor value by # clks:            "*_p#"

---(
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.UNSIGNED;
use     ieee.numeric_std.TO_INTEGER;
--
library lib_pkg_v1_0_2;
    use lib_pkg_v1_0_2.all;
    use lib_pkg_v1_0_2.lib_pkg.clog2;


--------------------------------------------------------------------------------
-- Explanations of generics and ports regarding aspects that may not be obvious.
--
-- C_DWIDTH
   --------
-- Theoretically, C_DWIDTH may be set to zero and this could be a more
-- natural or preferrable way of excluding a dynamic shift register
-- in a client than using a VHDL Generate statement. However, this usage is not
-- tested, and the user should expect that some VHDL tools will be deficient
-- with respect to handling this properly.
--
-- C_INIT_VALUE
   ---------------
-- C_INIT_VALUE can be used to specify the initial values of the elements
-- in the dynamic shift register, i.e. the values to be present after config-
-- uration. C_INIT_VALUE need not be the same size as the dynamic shift
-- register, i.e. C_DWIDTH*C_DEPTH. When smaller, C_INIT_VALUE
-- is replicated as many times as needed (possibly fractionally the last time)
-- to form a full initial value that is the size of the shift register.
-- So, if C_INIT_VALUE is left at its default value--an array of size one
-- whose value is '0'--the shift register will initialize with all bits at
-- all addresses set to '0'. This will also be the case if C_INIT_VALUE is a
-- null (size zero) array.
-- When determined according to the rules outlined above, the full
-- initial value is a std_logic_vector value from (0 to C_DWIDTH*C_DEPTH-1). It
-- is allocated to the addresses of the dynamic shift register in this
-- manner: The first C_DWIDTH values (i.e. 0 to C_CWIDTH-1) assigned to
-- the corresponding indices at address 0, the second C_DWIDTH values
-- assigned to address 1, and so forth.
-- Please note that the shift register is not resettable after configuration.
--
-- Addr
   ----
-- Addr addresses the elements of the dynamic shift register. Addr=0 causes
-- the most recently shifted-in element to appear at Dout, Addr=1
-- the second most recently shifted in element, etc. If C_DEPTH is not
-- a power of two, then not all of the values of Addr correspond to an
-- element in the shift register. When such an address is applied, the value
-- of Dout is undefined until a valid address is established.
--------------------------------------------------------------------------------
entity dynshreg_i_f is
  generic (
    C_DEPTH  : positive := 32;
    C_DWIDTH : natural := 1;
    C_INIT_VALUE : bit_vector := "0";
    C_FAMILY : string := "nofamily"
  );
  port (
    Clk   : in  std_logic;
    Clken : in  std_logic;
    Addr  : in  std_logic_vector(0 to clog2(C_DEPTH)-1);
    Din   : in  std_logic_vector(0 to C_DWIDTH-1);
    Dout  : out std_logic_vector(0 to C_DWIDTH-1)
  );
end dynshreg_i_f;


architecture behavioral of dynshreg_i_f is

  constant USE_INFERRED     : boolean := true;
    type     bv2sl_type is array(bit) of std_logic;
  constant bv2sl      : bv2sl_type := ('0' => '0', '1' => '1');
  function min(a, b: natural) return natural is
  begin
      if a<b then return a; else return b; end if;
  end min;

  --
  ------------------------------------------------------------------------------
  -- Function used to establish the full initial value. (See the comments for
  -- C_INIT_VALUE, above.)
  ------------------------------------------------------------------------------
  function full_initial_value(w : natural; d : positive; v : bit_vector
                             ) return bit_vector is
    variable r : bit_vector(0 to w*d-1);
    variable i, j : natural;
             -- i - the index where filling of r continues
             -- j - the amount to fill on the cur. iteration of the while loop
  begin
    if w = 0 then null;  -- Handle the case where the shift reg width is zero
    elsif v'length = 0 then r := (others => '0');
    else
      i := 0;
      while i /= r'length loop
          j := min(v'length, r'length-i);
          r(i to i+j-1) := v(0 to j-1);
          i := i+j;
      end loop;
    end if;
    return r;
  end full_initial_value;

  constant FULL_INIT_VAL : bit_vector(0 to C_DWIDTH*C_DEPTH -1)
                         := full_initial_value(C_DWIDTH, C_DEPTH, C_INIT_VALUE);

  -- As of I.32, XST is not infering optimal dynamic shift registers for
  -- depths not a power of two (by not taking advantage of don't care
  -- at output when address not within the range of the depth)
  -- or a power of two less than the native SRL depth (by building shift
  -- register out of discrete FFs and LUTs instead of SRLs).

 ---------------------------------------------------------------------------- 
 -- Unisim components declared locally for maximum avoidance of default
 -- binding and vcomponents version issues.
 ---------------------------------------------------------------------------- 


begin

  INFERRED_GEN : if USE_INFERRED = true generate
    --
    type dataType is array (0 to C_DEPTH-1) of std_logic_vector(0 to C_DWIDTH-1);
    --
    function fill_data(w: natural; d: positive; v: bit_vector
                      ) return dataType is
        variable r : dataType;
    begin
        for i in 0 to d-1 loop
           for j in 0 to w-1 loop
               r(i)(j) := bv2sl(v(i*w+j)); 
           end loop;
        end loop;
        return r;
    end fill_data;

    signal data: dataType := fill_data(C_DWIDTH, C_DEPTH, FULL_INIT_VAL);
    --
  begin
    process(Clk)
    begin
      if Clk'event and Clk = '1' then
        if Clken = '1' then
          data <= Din & data(0 to C_DEPTH-2);
        end if;
      end if;
    end process;

    Dout <= data(TO_INTEGER(UNSIGNED(Addr)))
                when (TO_INTEGER(UNSIGNED(Addr)) < C_DEPTH)
                else
            (others => '-');
  end generate INFERRED_GEN;
  ---)

end behavioral;


-------------------------------------------------------------------------------
-- uartlite_tx - entity/architecture pair
-------------------------------------------------------------------------------
--
   -- *******************************************************************
-- -- ** (c) Copyright [2007] - [2011] Xilinx, Inc. All rights reserved.*
-- -- **                                                                *
-- -- ** This file contains confidential and proprietary information    *
-- -- ** of Xilinx, Inc. and is protected under U.S. and                *
-- -- ** international copyright and other intellectual property        *
-- -- ** laws.                                                          *
-- -- **                                                                *
-- -- ** DISCLAIMER                                                     *
-- -- ** This disclaimer is not a license and does not grant any        *
-- -- ** rights to the materials distributed herewith. Except as        *
-- -- ** otherwise provided in a valid license issued to you by         *
-- -- ** Xilinx, and to the maximum extent permitted by applicable      *
-- -- ** law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND        *
-- -- ** WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES    *
-- -- ** AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING      *
-- -- ** BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-         *
-- -- ** INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and       *
-- -- ** (2) Xilinx shall not be liable (whether in contract or tort,   *
-- -- ** including negligence, or under any other theory of             *
-- -- ** liability) for any loss or damage of any kind or nature        *
-- -- ** related to, arising under or in connection with these          *
-- -- ** materials, including for any direct, or any indirect,          *
-- -- ** special, incidental, or consequential loss or damage           *
-- -- ** (including loss of data, profits, goodwill, or any type of     *
-- -- ** loss or damage suffered as a result of any action brought      *
-- -- ** by a third party) even if such damage or loss was              *
-- -- ** reasonably foreseeable or Xilinx had been advised of the       *
-- -- ** possibility of the same.                                       *
-- -- **                                                                *
-- -- ** CRITICAL APPLICATIONS                                          *
-- -- ** Xilinx products are not designed or intended to be fail-       *
-- -- ** safe, or for use in any application requiring fail-safe        *
-- -- ** performance, such as life-support or safety devices or         *
-- -- ** systems, Class III medical devices, nuclear facilities,        *
-- -- ** applications related to the deployment of airbags, or any      *
-- -- ** other applications that could lead to death, personal          *
-- -- ** injury, or severe property or environmental damage             *
-- -- ** (individually and collectively, "Critical                      *
-- -- ** Applications"). Customer assumes the sole risk and             *
-- -- ** liability of any use of Xilinx products in Critical            *
-- -- ** Applications, subject only to applicable laws and              *
-- -- ** regulations governing limitations on product liability.        *
-- -- **                                                                *
-- -- ** THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS       *
-- -- ** PART OF THIS FILE AT ALL TIMES.                                *
   -- *******************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        uartlite_tx.vhd
-- Version:         v2.0
-- Description:     UART Lite Transmit Interface Module
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
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
use IEEE.numeric_std.UNSIGNED;
use IEEE.numeric_std.to_unsigned;
use IEEE.numeric_std."-";

library lib_srl_fifo_v1_0_2;
-- dynshreg_i_f refered from proc_common_v4_0_20_a
library axi_uartlite_v2_0_21;
-- uartlite_core refered from axi_uartlite_v2_0_21
use axi_uartlite_v2_0_21.all;
-- srl_fifo_f refered from proc_common_v4_0_20_a
use lib_srl_fifo_v1_0_2.srl_fifo_f;

-------------------------------------------------------------------------------
-- Port Declaration
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Generics :
-------------------------------------------------------------------------------
-- UART Lite generics
--  C_DATA_BITS     -- The number of data bits in the serial frame
--  C_USE_PARITY    -- Determines whether parity is used or not
--  C_ODD_PARITY    -- If parity is used determines whether parity
--                     is even or odd
-- System generics
--  C_FAMILY        -- Xilinx FPGA Family
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Ports :
-------------------------------------------------------------------------------
-- System Signals
--  Clk               --  Clock signal
--  Rst               --  Reset signal
-- UART Lite interface
--  TX                --  Transmit Data
-- Internal UART interface signals
--  EN_16x_Baud       --  Enable signal which is 16x times baud rate
--  Write_TX_FIFO     --  Write transmit FIFO
--  Reset_TX_FIFO     --  Reset transmit FIFO
--  TX_Data           --  Transmit data input
--  TX_Buffer_Full    --  Transmit buffer full
--  TX_Buffer_Empty   --  Transmit buffer empty
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                  Entity Section
-------------------------------------------------------------------------------
entity uartlite_tx is
  generic 
   (
    C_FAMILY        : string               := "virtex7";
    C_DATA_BITS     : integer range 5 to 8 := 8;
    C_USE_PARITY    : integer range 0 to 1 := 0;
    C_ODD_PARITY    : integer range 0 to 1 := 0
   );
  port
   (
    Clk             : in  std_logic;
    Reset           : in  std_logic;
    EN_16x_Baud     : in  std_logic;
    TX              : out std_logic;
    Write_TX_FIFO   : in  std_logic;
    Reset_TX_FIFO   : in  std_logic;
    TX_Data         : in  std_logic_vector(0 to C_DATA_BITS-1);
    TX_Buffer_Full  : out std_logic;
    TX_Buffer_Empty : out std_logic
   );
end entity uartlite_tx;

-------------------------------------------------------------------------------
-- Architecture Section
-------------------------------------------------------------------------------
architecture RTL of uartlite_tx is
-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of RTL : architecture is "yes";

    type     bo2sl_type is array(boolean) of std_logic;
    constant bo2sl      :  bo2sl_type := (false => '0', true => '1');

    -------------------------------------------------------------------------
    --  Constant Declarations
    -------------------------------------------------------------------------
    constant MUX_SEL_INIT : std_logic_vector(0 to 2) :=
      std_logic_vector(to_unsigned(C_DATA_BITS-1, 3));

    -------------------------------------------------------------------------
    -- Signal Declarations
    -------------------------------------------------------------------------
    signal parity            : std_logic;
    signal tx_Run1           : std_logic;
    signal select_Parity     : std_logic;
    signal data_to_transfer  : std_logic_vector(0 to C_DATA_BITS-1);
    signal div16             : std_logic;
    signal tx_Data_Enable    : std_logic;
    signal tx_Start          : std_logic;
    signal tx_DataBits       : std_logic;
    signal tx_Run            : std_logic;
    signal mux_sel           : std_logic_vector(0 to 2);
    signal mux_sel_is_zero   : std_logic;
    signal mux_01            : std_logic;
    signal mux_23            : std_logic;
    signal mux_45            : std_logic;
    signal mux_67            : std_logic;
    signal mux_0123          : std_logic;
    signal mux_4567          : std_logic;
    signal mux_Out           : std_logic;
    signal serial_Data       : std_logic;
    signal fifo_Read         : std_logic;
    signal fifo_Data_Present : std_logic := '0';
    signal fifo_Data_Empty   : std_logic;
    signal fifo_DOut         : std_logic_vector(0 to C_DATA_BITS-1);
    signal fifo_wr           : std_logic;
    signal fifo_rd           : std_logic;
    signal tx_buffer_full_i  : std_logic;
    signal TX_FIFO_Reset     : std_logic;
    signal data_shift : std_logic_vector(15 downto 0);

begin  -- architecture IMP

    ---------------------------------------------------------------------------
    --MID_START_BIT_SRL16_I : Shift register is used to generate div16 that
    --                        gets shifted for 16 times(as Addr = 15) when 
    --                        EN_16x_Baud is high.
    ---------------------------------------------------------------------------
--    MID_START_BIT_SRL16_I : entity axi_uartlite_v2_0_21.dynshreg_i_f
--      generic map
--       (
--        C_DEPTH      => 16,
--        C_DWIDTH     => 1,
--        C_INIT_VALUE => X"8000",
--        C_FAMILY     => C_FAMILY
--       )
--      port map
--       (
--        Clk      => Clk,
--        Clken    => EN_16x_Baud,
--        Addr     => "1111",
--        Din(0)   => div16,
--        Dout(0)  => div16
--       );

-- replacing SRL with Flops

    SHIFTER: Process (Clk) is
    begin
        if (Clk'event and Clk = '1') then -- rising clock edge
             if Reset = '1' then          -- synchronous reset (active high)
               data_shift (0) <= '1';
               data_shift (15 downto 1) <= (others => '0');
             elsif (EN_16x_Baud = '1') then
               data_shift (15 downto 1) <= data_shift (14 downto 0);
               data_shift (0) <= data_shift (15); 
             end if;
        end if;
    end process;

    div16 <= data_shift(15);

    ------------------------------------------------------------------------
    -- TX_DATA_ENABLE_DFF : tx_Data_Enable is '1' when div16 is 1 and
    --                      EN_16x_Baud is 1. It will deasserted in the
    --                      next clock cycle.
    ------------------------------------------------------------------------
    TX_DATA_ENABLE_DFF: Process (Clk) is
    begin
        if (Clk'event and Clk = '1') then -- rising clock edge
             if Reset = '1' then          -- synchronous reset (active high)
               tx_Data_Enable <= '0';
             else
                if (tx_Data_Enable = '1') then
                    tx_Data_Enable <= '0';
                elsif (EN_16x_Baud = '1') then
                    tx_Data_Enable <= div16;
                end if;
             end if;
        end if;
    end process TX_DATA_ENABLE_DFF;

    ------------------------------------------------------------------------
    -- TX_START_DFF : tx_start is '1' for the start bit in a transmission
    ------------------------------------------------------------------------
    TX_START_DFF : process (Clk) is
    begin
        if Clk'event and Clk = '1' then -- rising clock edge
            if Reset = '1' then         -- synchronous reset (active high)
                tx_Start <= '0';
            else 
                tx_Start <= (not(tx_Run) and (tx_Start or 
                               (fifo_Data_Present and tx_Data_Enable)));
            end if;
        end if;
    end process TX_START_DFF;

    --------------------------------------------------------------------------
    -- TX_DATA_DFF : tx_DataBits is '1' during all databits transmission
    --------------------------------------------------------------------------
    TX_DATA_DFF : process (Clk) is
    begin
        if Clk'event and Clk = '1' then -- rising clock edge
            if Reset = '1' then         -- synchronous reset (active high)
                tx_DataBits <= '0';
            else 
                tx_DataBits <= (not(fifo_Read) and (tx_DataBits or 
                                           (tx_Start and tx_Data_Enable)));
            end if;
        end if;
    end process TX_DATA_DFF;

    -------------------------------------------------------------------------
    -- COUNTER : If mux_sel is zero then reload with the init value else if 
    --           tx_DataBits = '1', decrement
    -------------------------------------------------------------------------
    COUNTER : process (Clk) is
    begin  -- process Mux_Addr_DFF
        if Clk'event and Clk = '1' then -- rising clock edge
            if Reset = '1' then         -- synchronous reset (active high)
                mux_sel <= std_logic_vector(to_unsigned(C_DATA_BITS-1, 
                                            mux_sel'length));
            elsif (tx_Data_Enable = '1') then
                if (mux_sel_is_zero = '1') then
                    mux_sel <= MUX_SEL_INIT;
                elsif (tx_DataBits = '1') then
                    mux_sel <= std_logic_vector(UNSIGNED(mux_sel) - 1);
                end if;
            end if;
        end if;
    end process COUNTER;

    ------------------------------------------------------------------------
    -- Detecting when mux_sel is zero, i.e. all data bits are transfered
    ------------------------------------------------------------------------
    mux_sel_is_zero <= '1' when mux_sel = "000" else '0';

    --------------------------------------------------------------------------
    -- FIFO_READ_DFF : Read out the next data from the transmit fifo when the 
    --                 data has been transmitted
    --------------------------------------------------------------------------
    FIFO_READ_DFF : process (Clk) is
    begin  -- process FIFO_Read_DFF
        if Clk'event and Clk = '1' then -- rising clock edge
            if Reset = '1' then         -- synchronous reset (active high)
                fifo_Read <= '0';
            else
                fifo_Read <= tx_Data_Enable and mux_sel_is_zero;
            end if;
        end if;
    end process FIFO_READ_DFF;
    --------------------------------------------------------------------------
    -- Select which bit within the data word to transmit
    --------------------------------------------------------------------------

    --------------------------------------------------------------------------
    -- PARITY_BIT_INSERTION : Need special treatment for inserting the parity 
    --                        bit because of parity generation
    --------------------------------------------------------------------------

    data_to_transfer(0 to C_DATA_BITS-2) <= fifo_DOut(0 to C_DATA_BITS-2);

    data_to_transfer(C_DATA_BITS-1) <= parity when select_Parity = '1' else
                                       fifo_DOut(C_DATA_BITS-1);
    
    mux_01 <= data_to_transfer(1) when mux_sel(2) = '1' else 
              data_to_transfer(0);
    mux_23 <= data_to_transfer(3) when mux_sel(2) = '1' else
              data_to_transfer(2);

    --------------------------------------------------------------------------
    -- DATA_BITS_IS_5 : Select total 5 data bits when C_DATA_BITS = 5
    --------------------------------------------------------------------------
    DATA_BITS_IS_5 : if (C_DATA_BITS = 5) generate
        mux_45 <= data_to_transfer(4);
        mux_67 <= '0';
    end generate DATA_BITS_IS_5;

    --------------------------------------------------------------------------
    -- DATA_BITS_IS_6 : Select total 6 data bits when C_DATA_BITS = 6
    --------------------------------------------------------------------------
    DATA_BITS_IS_6 : if (C_DATA_BITS = 6) generate
        mux_45 <= data_to_transfer(5) when mux_sel(2) = '1' else 
                  data_to_transfer(4);
        mux_67 <= '0';
    end generate DATA_BITS_IS_6;

    --------------------------------------------------------------------------
    -- DATA_BITS_IS_7 : Select total 7 data bits when C_DATA_BITS = 7
    --------------------------------------------------------------------------
    DATA_BITS_IS_7 : if (C_DATA_BITS = 7) generate
        mux_45 <= data_to_transfer(5) when mux_sel(2) = '1' else 
                  data_to_transfer(4);
        mux_67 <= data_to_transfer(6);
    end generate DATA_BITS_IS_7;

    --------------------------------------------------------------------------
    -- DATA_BITS_IS_8 : Select total 8 data bits when C_DATA_BITS = 8
    --------------------------------------------------------------------------
    DATA_BITS_IS_8 : if (C_DATA_BITS = 8) generate
      mux_45 <= data_to_transfer(5) when mux_sel(2) = '1' else 
                data_to_transfer(4);
      mux_67 <= data_to_transfer(7) when mux_sel(2) = '1' else 
                data_to_transfer(6);
    end generate DATA_BITS_IS_8;

    mux_0123 <= mux_23   when mux_sel(1) = '1' else mux_01;
    mux_4567 <= mux_67   when mux_sel(1) = '1' else mux_45;
    mux_Out  <= mux_4567 when mux_sel(0) = '1' else mux_0123;

    --------------------------------------------------------------------------
    -- SERIAL_DATA_DFF : Register the mux_Out
    --------------------------------------------------------------------------
    SERIAL_DATA_DFF : process (Clk) is
    begin
        if Clk'event and Clk = '1' then  -- rising clock edge
            if Reset = '1' then          -- synchronous reset (active high)
                serial_Data <= '0';
            else 
                serial_Data <= mux_Out;
            end if;
        end if;
    end process SERIAL_DATA_DFF;

    --------------------------------------------------------------------------
    -- SERIAL_OUT_DFF :Force a '0' when tx_start is '1', Start_bit
    --                 Force a '1' when tx_run is '0',   Idle
    --                 otherwise put out the serial_data
    --------------------------------------------------------------------------
    SERIAL_OUT_DFF : process (Clk) is
    begin  -- process Serial_Out_DFF
        if Clk'event and Clk = '1' then -- rising clock edge
            if Reset = '1' then         -- synchronous reset (active high)
                TX <= '1';
            else 
                TX <= (not(tx_Run) or serial_Data) and (not(tx_Start));
            end if;
        end if;
    end process SERIAL_OUT_DFF;

    --------------------------------------------------------------------------
    -- USING_PARITY : Generate parity handling when C_USE_PARITY = 1
    --------------------------------------------------------------------------
    USING_PARITY : if (C_USE_PARITY = 1) generate

        PARITY_DFF: Process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
                if (tx_Start = '1') then
                    parity <=  bo2sl(C_ODD_PARITY = 1);
                elsif (tx_Data_Enable = '1') then
                    parity <= parity xor serial_Data;
                end if;
            end if;
        end process PARITY_DFF;

        TX_RUN1_DFF : process (Clk) is
        begin
            if Clk'event and Clk = '1' then -- rising clock edge
                if Reset = '1' then         -- synchronous reset (active high)
                    tx_Run1 <= '0';
                elsif (tx_Data_Enable = '1') then
                    tx_Run1 <= tx_DataBits;
                end if;
            end if;
        end process TX_RUN1_DFF;

        tx_Run <= tx_Run1 or tx_DataBits;

        SELECT_PARITY_DFF : process (Clk) is
        begin
            if Clk'event and Clk = '1' then  -- rising clock edge
                if Reset = '1' then          -- synchronous reset (active high)
                    select_Parity <= '0';
                elsif (tx_Data_Enable = '1') then
                    select_Parity <= mux_sel_is_zero;
                end if;
            end if;
        end process SELECT_PARITY_DFF;

    end generate USING_PARITY;

    --------------------------------------------------------------------------
    -- NO_PARITY : When C_USE_PARITY = 0 select parity as '0'
    --------------------------------------------------------------------------
    NO_PARITY : if (C_USE_PARITY = 0) generate
        tx_Run        <= tx_DataBits;
        select_Parity <= '0';
    end generate NO_PARITY;

    --------------------------------------------------------------------------
    -- Write TX FIFO when FIFO is not full when AXI writes data in TX FIFO
    --------------------------------------------------------------------------
    fifo_wr <= Write_TX_FIFO and (not tx_buffer_full_i);
    
    --------------------------------------------------------------------------
    -- Read TX FIFO when FIFO is not empty when AXI reads data from TX FIFO
    --------------------------------------------------------------------------
    fifo_rd <= fifo_Read and (not fifo_Data_Empty);
    
    --------------------------------------------------------------------------
    -- Reset TX FIFO when requested from the control register or system reset
    --------------------------------------------------------------------------
    TX_FIFO_Reset <= Reset_TX_FIFO or Reset;
    
    --------------------------------------------------------------------------
    -- SRL_FIFO_I : Transmit FIFO Interface
    --------------------------------------------------------------------------
    SRL_FIFO_I : entity lib_srl_fifo_v1_0_2.srl_fifo_f
      generic map 
       (
        C_DWIDTH   => C_DATA_BITS,
        C_DEPTH    => 16,
        C_FAMILY   => C_FAMILY
       )
      port map
       (
        Clk        => Clk,
        Reset      => TX_FIFO_Reset,
        FIFO_Write => fifo_wr,
        Data_In    => TX_Data,
        FIFO_Read  => fifo_rd,
        Data_Out   => fifo_DOut,
        FIFO_Full  => tx_buffer_full_i,
        FIFO_Empty => fifo_Data_Empty
       );

    TX_Buffer_Full    <= tx_buffer_full_i;
    TX_Buffer_Empty   <= fifo_Data_Empty;
    fifo_Data_Present <= not fifo_Data_Empty;

end architecture RTL;


-------------------------------------------------------------------------------
-- uartlite_rx - entity/architecture pair
-------------------------------------------------------------------------------
--
   -- *******************************************************************
-- -- ** (c) Copyright [2007] - [2011] Xilinx, Inc. All rights reserved.*
-- -- **                                                                *
-- -- ** This file contains confidential and proprietary information    *
-- -- ** of Xilinx, Inc. and is protected under U.S. and                *
-- -- ** international copyright and other intellectual property        *
-- -- ** laws.                                                          *
-- -- **                                                                *
-- -- ** DISCLAIMER                                                     *
-- -- ** This disclaimer is not a license and does not grant any        *
-- -- ** rights to the materials distributed herewith. Except as        *
-- -- ** otherwise provided in a valid license issued to you by         *
-- -- ** Xilinx, and to the maximum extent permitted by applicable      *
-- -- ** law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND        *
-- -- ** WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES    *
-- -- ** AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING      *
-- -- ** BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-         *
-- -- ** INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and       *
-- -- ** (2) Xilinx shall not be liable (whether in contract or tort,   *
-- -- ** including negligence, or under any other theory of             *
-- -- ** liability) for any loss or damage of any kind or nature        *
-- -- ** related to, arising under or in connection with these          *
-- -- ** materials, including for any direct, or any indirect,          *
-- -- ** special, incidental, or consequential loss or damage           *
-- -- ** (including loss of data, profits, goodwill, or any type of     *
-- -- ** loss or damage suffered as a result of any action brought      *
-- -- ** by a third party) even if such damage or loss was              *
-- -- ** reasonably foreseeable or Xilinx had been advised of the       *
-- -- ** possibility of the same.                                       *
-- -- **                                                                *
-- -- ** CRITICAL APPLICATIONS                                          *
-- -- ** Xilinx products are not designed or intended to be fail-       *
-- -- ** safe, or for use in any application requiring fail-safe        *
-- -- ** performance, such as life-support or safety devices or         *
-- -- ** systems, Class III medical devices, nuclear facilities,        *
-- -- ** applications related to the deployment of airbags, or any      *
-- -- ** other applications that could lead to death, personal          *
-- -- ** injury, or severe property or environmental damage             *
-- -- ** (individually and collectively, "Critical                      *
-- -- ** Applications"). Customer assumes the sole risk and             *
-- -- ** liability of any use of Xilinx products in Critical            *
-- -- ** Applications, subject only to applicable laws and              *
-- -- ** regulations governing limitations on product liability.        *
-- -- **                                                                *
-- -- ** THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS       *
-- -- ** PART OF THIS FILE AT ALL TIMES.                                *
   -- *******************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        uartlite_rx.vhd
-- Version:         v2.0
-- Description:     UART Lite Receive Interface Module
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
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

library lib_srl_fifo_v1_0_2;
library lib_cdc_v1_0_2;
use lib_cdc_v1_0_2.cdc_sync;

-- dynshreg_i_f refered from proc_common_v4_0_2
-- srl_fifo_f refered from proc_common_v4_0_2
use lib_srl_fifo_v1_0_2.srl_fifo_f;

library axi_uartlite_v2_0_21;
-- uartlite_core refered from axi_uartlite_v2_0_21
use axi_uartlite_v2_0_21.all;

-------------------------------------------------------------------------------
-- Port Declaration
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Generics :
-------------------------------------------------------------------------------
-- UART Lite generics
--  C_DATA_BITS           -- The number of data bits in the serial frame
--  C_USE_PARITY          -- Determines whether parity is used or not
--  C_ODD_PARITY          -- If parity is used determines whether parity
--                           is even or odd
--
-- System generics
--  C_FAMILY              -- Xilinx FPGA Family
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Ports :
-------------------------------------------------------------------------------
-- System Signals
--  Clk                 --  Clock signal
--  Rst                 --  Reset signal
-- UART Lite interface
--  RX                  --  Receive Data

-- Internal UART interface signals
--  EN_16x_Baud         --  Enable signal which is 16x times baud rate
--  Read_RX_FIFO        --  Read receive FIFO
--  Reset_RX_FIFO       --  Reset receive FIFO
--  RX_Data             --  Receive data output
--  RX_Data_Present     --  Receive data present
--  RX_Buffer_Full      --  Receive buffer full
--  RX_Frame_Error      --  Receive frame error
--  RX_Overrun_Error    --  Receive overrun error
--  RX_Parity_Error     --  Receive parity error

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                  Entity Section
-------------------------------------------------------------------------------
entity uartlite_rx is
  generic 
   (
    C_FAMILY         : string               := "virtex7";
    C_DATA_BITS      : integer range 5 to 8 := 8;
    C_USE_PARITY     : integer range 0 to 1 := 0;
    C_ODD_PARITY     : integer range 0 to 1 := 0
   );
  port 
   (
    Clk              : in  std_logic;
    Reset            : in  std_logic;
    EN_16x_Baud      : in  std_logic;
    RX               : in  std_logic;
    Read_RX_FIFO     : in  std_logic;
    Reset_RX_FIFO    : in  std_logic;
    RX_Data          : out std_logic_vector(0 to C_DATA_BITS-1);
    RX_Data_Present  : out std_logic;
    RX_Buffer_Full   : out std_logic;
    RX_Frame_Error   : out std_logic;
    RX_Overrun_Error : out std_logic;
    RX_Parity_Error  : out std_logic
   );
end entity uartlite_rx;

-------------------------------------------------------------------------------
-- Architecture Section
-------------------------------------------------------------------------------
architecture RTL of uartlite_rx is
-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of RTL : architecture is "yes";

    type     bo2sl_type is array(boolean) of std_logic;
    
    constant bo2sl      :  bo2sl_type := (false => '0', true => '1');

    ---------------------------------------------------------------------------
    -- Constant declarations
    ---------------------------------------------------------------------------
    constant SERIAL_TO_PAR_LENGTH : integer := 
                                    C_DATA_BITS + C_USE_PARITY;
    constant STOP_BIT_POS         : integer := SERIAL_TO_PAR_LENGTH;
    constant DATA_LSB_POS         : integer := SERIAL_TO_PAR_LENGTH;
    constant CALC_PAR_POS         : integer := SERIAL_TO_PAR_LENGTH;

    ---------------------------------------------------------------------------
    -- Signal declarations
    ---------------------------------------------------------------------------
    signal start_Edge_Detected     : boolean;
    signal start_Edge_Detected_Bit : std_logic;
    signal running                 : boolean;
    signal recycle                 : std_logic;
    signal sample_Point            : std_logic;
    signal stop_Bit_Position       : std_logic;
    signal fifo_Write              : std_logic;
    
    signal fifo_din             : std_logic_vector(0 to SERIAL_TO_PAR_LENGTH);
    signal serial_to_Par        : std_logic_vector(1 to SERIAL_TO_PAR_LENGTH);
    signal calc_parity          : std_logic;
    signal parity               : std_logic;
    signal RX_Buffer_Full_I     : std_logic;
    signal RX_D1                : std_logic;
    signal RX_D2                : std_logic;
    signal rx_1                 : std_logic;
    signal rx_2                 : std_logic;
    signal rx_3                 : std_logic;
    signal rx_4                 : std_logic;
    signal rx_5                 : std_logic;
    signal rx_6                 : std_logic;
    signal rx_7                 : std_logic;
    signal rx_8                 : std_logic;
    signal rx_9                 : std_logic;
    signal rx_Data_Empty        : std_logic := '0';
    signal fifo_wr              : std_logic;
    signal fifo_rd              : std_logic;
    signal RX_FIFO_Reset        : std_logic;
    signal valid_rx             : std_logic;
    signal valid_start          : std_logic;
    signal frame_err_ocrd       : std_logic;
    signal frame_err            : std_logic;
    signal data_shift           : std_logic_vector (15 downto 0);

begin  -- architecture RTL

    ---------------------------------------------------------------------------
    -- RX_SAMPLING : Double sample RX to avoid meta-stability
    ---------------------------------------------------------------------------
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
        prmry_in                   => RX,
        prmry_vect_in              => (others => '0'),

        scndry_aclk                => Clk,
        scndry_resetn              => '0',
        scndry_out                 => RX_D2,
        scndry_vect_out            => open
    );


--    RX_SAMPLING: process (Clk) is
--    begin  -- process RX_Sampling
--        if Clk'event and Clk = '1' then -- rising clock edge
--            if Reset = '1' then         -- synchronous reset (active high)
--                RX_D1 <= '1';
--                RX_D2 <= '1';
--            else 
--                RX_D1 <= RX;
--                RX_D2 <= RX_D1;
--            end if;
--        end if;
--    end process RX_SAMPLING;

-------------------------------------------------------------------------------
-- Detect a falling edge on RX and start a new reception if idle
-------------------------------------------------------------------------------

    ---------------------------------------------------------------------------
     -- detect the start of the frame 
    ---------------------------------------------------------------------------
    RX_DFFS : process (Clk) is
    begin  -- process Prev_RX_DFFS
        if Clk'event and Clk = '1' then  -- rising clock edge
            if (Reset = '1') then
                rx_1 <= '0';
                rx_2 <= '0';
                rx_3 <= '0';
                rx_4 <= '0';
                rx_5 <= '0';
                rx_6 <= '0';
                rx_7 <= '0';
                rx_8 <= '0';
                rx_9 <= '0';
            elsif (EN_16x_Baud = '1') then
                rx_1 <= RX_D2;
                rx_2 <= rx_1;
                rx_3 <= rx_2;
                rx_4 <= rx_3;
                rx_5 <= rx_4;
                rx_6 <= rx_5;
                rx_7 <= rx_6;
                rx_8 <= rx_7;
                rx_9 <= rx_8;
            end if;
        end if;
    end process RX_DFFS;

    ---------------------------------------------------------------------------
     -- Start bit valid when RX is continuously low for atleast 8 samples 
    ---------------------------------------------------------------------------

    valid_start <= rx_8 or rx_7 or rx_6 or rx_5 or 
                   rx_4 or rx_3 or rx_2 or rx_1;
    
    ---------------------------------------------------------------------------
    -- START_EDGE_DFF : Start a new reception if idle
    ---------------------------------------------------------------------------
    START_EDGE_DFF : process (Clk) is
    begin  -- process Start_Edge_DFF
        if Clk'event and Clk = '1' then  -- rising clock edge
            if (Reset = '1') then
                start_Edge_Detected <= false;
            elsif (EN_16x_Baud = '1') then
                start_Edge_Detected <= ((not running) and 
                                        (frame_err_ocrd = '0') and 
                                        (rx_9 = '1') and 
                                        (valid_start = '0'));
            end if;
        end if;
    end process START_EDGE_DFF;
    
    ---------------------------------------------------------------------------
    -- FRAME_ERR_CAPTURE : frame_err_ocrd is '1' when a frame error is occured
    --                     and deasserted when the next low to high on RX
    ---------------------------------------------------------------------------
    FRAME_ERR_CAPTURE : process (Clk) is
    begin  -- process valid_rx_DFF
        if Clk'event and Clk = '1' then -- rising clock edge
            if (Reset = '1') then         -- synchronous reset (active high)
                frame_err_ocrd <= '0';
            elsif (frame_err = '1') then
                    frame_err_ocrd <= '1';
            elsif (RX_D2 = '1') then
                    frame_err_ocrd <= '0';
            end if;           
        end if;
    end process FRAME_ERR_CAPTURE;
    
    ---------------------------------------------------------------------------
    -- VALID_XFER : valid_rx is '1' when a valid start edge detected
    ---------------------------------------------------------------------------
    VALID_XFER : process (Clk) is
    begin  -- process valid_rx_DFF
        if Clk'event and Clk = '1' then -- rising clock edge
            if (Reset = '1') then         -- synchronous reset (active high)
                valid_rx <= '0';
            elsif (start_Edge_Detected = true) then
                    valid_rx <= '1';
            elsif (fifo_Write = '1') then
                    valid_rx <= '0';
            end if;           
        end if;
    end process VALID_XFER;

    ---------------------------------------------------------------------------
    -- RUNNING_DFF : Running is '1' during a reception
    ---------------------------------------------------------------------------
    RUNNING_DFF : process (Clk) is
    begin  -- process Running_DFF
        if Clk'event and Clk = '1' then -- rising clock edge
            if (Reset = '1') then         -- synchronous reset (active high)
                running <= false;
            elsif (EN_16x_Baud = '1') then
                if (start_Edge_Detected) then
                    running <= true;
                elsif ((sample_Point = '1') and (stop_Bit_Position = '1')) then
                    running <= false;
                end if;
            end if;
        end if;
    end process RUNNING_DFF;

    ---------------------------------------------------------------------------
    -- Boolean to std logic conversion of start edge
    ---------------------------------------------------------------------------

    start_Edge_Detected_Bit <= '1' when start_Edge_Detected else '0';

    ---------------------------------------------------------------------------
    -- After the start edge is detected, generate recycle to generate sample
    -- point
    ---------------------------------------------------------------------------

    recycle <= (valid_rx and (not stop_Bit_Position) and 
                            (start_Edge_Detected_Bit or sample_Point));

    -------------------------------------------------------------------------
    -- DELAY_16_I : Keep regenerating new values into the 16 clock delay, 
    -- Starting with the first start_Edge_Detected_Bit and for every new 
    -- sample_points until stop_Bit_Position is reached
    -------------------------------------------------------------------------
--    DELAY_16_I : entity axi_uartlite_v2_0_21.dynshreg_i_f
--      generic map 
--       (
--        C_DEPTH  => 16,
--        C_DWIDTH => 1,
--        C_FAMILY => C_FAMILY
--       )
--      port map
--       (
--        Clk      => Clk,
--        Clken    => EN_16x_Baud,
--        Addr     => "1111",
--        Din(0)   => recycle,
--        Dout(0)  => sample_Point
--       );

-- replacing with flops

  SHIFTER: Process (Clk) is
    begin
        if (Clk'event and Clk = '1') then -- rising clock edge
             if Reset = '1' then          -- synchronous reset (active high)
               data_shift (15 downto 0) <= (others => '0');
             elsif (EN_16x_Baud = '1') then
               data_shift (0) <= recycle;
               data_shift (15 downto 1) <= data_shift (14 downto 0);
             end if;
        end if;
    end process;

    sample_Point <= data_shift (15);

    ---------------------------------------------------------------------------
    -- STOP_BIT_HANDLER : Detect when the stop bit is received
    ---------------------------------------------------------------------------
    STOP_BIT_HANDLER : process (Clk) is
    begin  -- process Stop_Bit_Handler
        if Clk'event and Clk = '1' then -- rising clock edge
            if (Reset = '1') then       -- synchronous reset (active high)
                stop_Bit_Position <= '0';
            elsif (EN_16x_Baud = '1') then
                if (stop_Bit_Position = '0') then
                  -- Start bit has reached the end of the shift register 
                  -- (Stop bit position)
                    stop_Bit_Position <= sample_Point and 
                                         fifo_din(STOP_BIT_POS);
                elsif (sample_Point = '1') then
                  -- if stop_Bit_Position is 1 clear it at next sample_Point
                    stop_Bit_Position <= '0';
                end if;
            end if;
        end if;
    end process STOP_BIT_HANDLER;

    USING_PARITY_NO : if (C_USE_PARITY = 0) generate
        RX_Parity_Error <= '0' ;
    end generate USING_PARITY_NO;
    ---------------------------------------------------------------------------
    -- USING_PARITY : Generate parity handling when C_USE_PARITY = 1
    ---------------------------------------------------------------------------
    USING_PARITY : if (C_USE_PARITY = 1) generate

        PARITY_DFF: Process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
                if (Reset = '1' or start_Edge_Detected_Bit = '1') then
                    parity <=  bo2sl(C_ODD_PARITY = 1);
                elsif (EN_16x_Baud = '1') then
                    parity <= calc_parity;
                end if;
            end if;
        end process PARITY_DFF;
      
        calc_parity <= parity when (stop_Bit_Position or 
                                   (not sample_Point)) = '1'
                       else parity xor RX_D2;

        RX_Parity_Error <= (EN_16x_Baud and sample_Point) and
                           (fifo_din(CALC_PAR_POS)) and not stop_Bit_Position
                           when running and (RX_D2 /= parity) else '0';

    end generate USING_PARITY;

    fifo_din(0) <= RX_D2 and not Reset;

    ---------------------------------------------------------------------------
    -- SERIAL_TO_PARALLEL : Serial to parrallel conversion data part
    ---------------------------------------------------------------------------
    SERIAL_TO_PARALLEL : for i in 1 to serial_to_Par'length generate
    
        serial_to_Par(i) <= fifo_din(i) when (stop_Bit_Position or 
                                              not sample_Point) = '1'
                            else fifo_din(i-1);

        BIT_I: Process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
              if (Reset = '1') then
                    fifo_din(i) <= '0'; -- Bit STOP_BIT_POS resets to '0'; 
              else                                 -- others to '1'
                if (start_Edge_Detected_Bit = '1') then
                    fifo_din(i) <= bo2sl(i=1); -- Bit 1 resets to '1'; 
                                               -- others to '0'
                elsif (EN_16x_Baud = '1') then
                    fifo_din(i) <= serial_to_Par(i);
                end if;
              end if;
            end if;
        end process BIT_I;

    end generate SERIAL_TO_PARALLEL;

    --------------------------------------------------------------------------
    -- FIFO_WRITE_DFF : Write in the received word when the stop_bit has been 
    --                  received and it is a '1'
    --------------------------------------------------------------------------
    FIFO_WRITE_DFF : process (Clk) is
    begin  -- process FIFO_Write_DFF
        if Clk'event and Clk = '1' then  -- rising clock edge
            if Reset = '1' then          -- synchronous reset (active high)
                fifo_Write <= '0';
            else
                fifo_Write <= stop_Bit_Position and RX_D2 and sample_Point 
                                                and EN_16x_Baud;
            end if;
        end if;
    end process FIFO_WRITE_DFF;

    frame_err <= stop_Bit_Position and sample_Point and EN_16x_Baud 
                      and not RX_D2;

    RX_Frame_Error <= frame_err;
    
    --------------------------------------------------------------------------
    -- Write RX FIFO when FIFO is not full when valid data is reveived
    --------------------------------------------------------------------------
    fifo_wr <= fifo_Write and (not RX_Buffer_Full_I) and valid_rx;

    --------------------------------------------------------------------------
    -- Read RX FIFO when FIFO is not empty when AXI reads data from RX FIFO
    --------------------------------------------------------------------------
    fifo_rd <= Read_RX_FIFO and (not rx_Data_Empty);

    --------------------------------------------------------------------------
    -- Reset RX FIFO when requested from the control register or system reset
    --------------------------------------------------------------------------
    RX_FIFO_Reset <= Reset_RX_FIFO or Reset;
    
    ---------------------------------------------------------------------------
    -- SRL_FIFO_I : Receive FIFO Interface
    ---------------------------------------------------------------------------
    SRL_FIFO_I : entity lib_srl_fifo_v1_0_2.srl_fifo_f
      generic map
       (
        C_DWIDTH   => C_DATA_BITS,
        C_DEPTH    => 16,
        C_FAMILY   => C_FAMILY
       )
      port map
       (
        Clk        => Clk,
        Reset      => RX_FIFO_Reset,
        FIFO_Write => fifo_wr,
        Data_In    => fifo_din((DATA_LSB_POS-C_DATA_BITS + 1) to DATA_LSB_POS),
        FIFO_Read  => fifo_rd,
        Data_Out   => RX_Data,
        FIFO_Full  => RX_Buffer_Full_I,
        FIFO_Empty => rx_Data_Empty,
        Addr       => open
       );

    RX_Data_Present  <= not rx_Data_Empty;
    RX_Overrun_Error <= RX_Buffer_Full_I and fifo_Write;  -- Note that if
        -- the RX FIFO is read on the same cycle as it is written while full,
        -- there is no loss of data. However this case is not optimized and
        -- is also reported as an overrun.
    RX_Buffer_Full   <= RX_Buffer_Full_I;

end architecture RTL; 


-------------------------------------------------------------------------------
-- baudrate - entity/architecture pair 
-------------------------------------------------------------------------------
--
   -- *******************************************************************
-- -- ** (c) Copyright [2007] - [2011] Xilinx, Inc. All rights reserved.*
-- -- **                                                                *
-- -- ** This file contains confidential and proprietary information    *
-- -- ** of Xilinx, Inc. and is protected under U.S. and                *
-- -- ** international copyright and other intellectual property        *
-- -- ** laws.                                                          *
-- -- **                                                                *
-- -- ** DISCLAIMER                                                     *
-- -- ** This disclaimer is not a license and does not grant any        *
-- -- ** rights to the materials distributed herewith. Except as        *
-- -- ** otherwise provided in a valid license issued to you by         *
-- -- ** Xilinx, and to the maximum extent permitted by applicable      *
-- -- ** law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND        *
-- -- ** WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES    *
-- -- ** AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING      *
-- -- ** BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-         *
-- -- ** INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and       *
-- -- ** (2) Xilinx shall not be liable (whether in contract or tort,   *
-- -- ** including negligence, or under any other theory of             *
-- -- ** liability) for any loss or damage of any kind or nature        *
-- -- ** related to, arising under or in connection with these          *
-- -- ** materials, including for any direct, or any indirect,          *
-- -- ** special, incidental, or consequential loss or damage           *
-- -- ** (including loss of data, profits, goodwill, or any type of     *
-- -- ** loss or damage suffered as a result of any action brought      *
-- -- ** by a third party) even if such damage or loss was              *
-- -- ** reasonably foreseeable or Xilinx had been advised of the       *
-- -- ** possibility of the same.                                       *
-- -- **                                                                *
-- -- ** CRITICAL APPLICATIONS                                          *
-- -- ** Xilinx products are not designed or intended to be fail-       *
-- -- ** safe, or for use in any application requiring fail-safe        *
-- -- ** performance, such as life-support or safety devices or         *
-- -- ** systems, Class III medical devices, nuclear facilities,        *
-- -- ** applications related to the deployment of airbags, or any      *
-- -- ** other applications that could lead to death, personal          *
-- -- ** injury, or severe property or environmental damage             *
-- -- ** (individually and collectively, "Critical                      *
-- -- ** Applications"). Customer assumes the sole risk and             *
-- -- ** liability of any use of Xilinx products in Critical            *
-- -- ** Applications, subject only to applicable laws and              *
-- -- ** regulations governing limitations on product liability.        *
-- -- **                                                                *
-- -- ** THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS       *
-- -- ** PART OF THIS FILE AT ALL TIMES.                                *
   -- *******************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        baudrate.vhd
-- Version:         v2.0
-- Description:     Baud rate enable logic
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
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

-------------------------------------------------------------------------------
-- Port Declaration
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Generics :
-------------------------------------------------------------------------------
-- UART Lite generics
--  C_RATIO               -- The ratio between clk and the asked baudrate
--                           multiplied with 16
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Ports :
-------------------------------------------------------------------------------
-- System Signals
--  Clk                   --  Clock signal
--  Reset                 --  Reset signal
-- Internal UART interface signals
--  EN_16x_Baud           --  Enable signal which is 16x times baud rate
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                  Entity Section
-------------------------------------------------------------------------------

entity baudrate is
    generic
      (
      C_RATIO      : integer := 48  -- The ratio between clk and the asked
                                   -- baudrate multiplied with 16
      );                              
    port
      (
      Clk          : in  std_logic;
      Reset        : in  std_logic;
      EN_16x_Baud  : out std_logic
      );
end entity baudrate;

-------------------------------------------------------------------------------
-- Architecture Section
-------------------------------------------------------------------------------
architecture RTL of baudrate is
-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of RTL : architecture is "yes";

    ---------------------------------------------------------------------------
    -- Signal Declarations
    ---------------------------------------------------------------------------
    signal count : natural range 0 to C_RATIO-1;

begin  -- architecture VHDL_RTL

    ---------------------------------------------------------------------------
    -- COUNTER_PROCESS : Down counter for generating EN_16x_Baud signal
    ---------------------------------------------------------------------------
    COUNTER_PROCESS : process (Clk) is
        begin
            if Clk'event and Clk = '1' then  -- rising clock edge
                if (Reset = '1') then
                    count       <= 0;
                    EN_16x_Baud <= '0';
                else
                    if (count = 0) then
                        count       <= C_RATIO-1;
                        EN_16x_Baud <= '1';
                    else
                        count       <= count - 1;
                        EN_16x_Baud <= '0';
                    end if;
                end if;
            end if;
    end process COUNTER_PROCESS;

end architecture RTL;


-------------------------------------------------------------------------------
-- uartlite_core - entity/architecture pair
-------------------------------------------------------------------------------
--
   -- *******************************************************************
-- -- ** (c) Copyright [2007] - [2012] Xilinx, Inc. All rights reserved.*
-- -- **                                                                *
-- -- ** This file contains confidential and proprietary information    *
-- -- ** of Xilinx, Inc. and is protected under U.S. and                *
-- -- ** international copyright and other intellectual property        *
-- -- ** laws.                                                          *
-- -- **                                                                *
-- -- ** DISCLAIMER                                                     *
-- -- ** This disclaimer is not a license and does not grant any        *
-- -- ** rights to the materials distributed herewith. Except as        *
-- -- ** otherwise provided in a valid license issued to you by         *
-- -- ** Xilinx, and to the maximum extent permitted by applicable      *
-- -- ** law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND        *
-- -- ** WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES    *
-- -- ** AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING      *
-- -- ** BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-         *
-- -- ** INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and       *
-- -- ** (2) Xilinx shall not be liable (whether in contract or tort,   *
-- -- ** including negligence, or under any other theory of             *
-- -- ** liability) for any loss or damage of any kind or nature        *
-- -- ** related to, arising under or in connection with these          *
-- -- ** materials, including for any direct, or any indirect,          *
-- -- ** special, incidental, or consequential loss or damage           *
-- -- ** (including loss of data, profits, goodwill, or any type of     *
-- -- ** loss or damage suffered as a result of any action brought      *
-- -- ** by a third party) even if such damage or loss was              *
-- -- ** reasonably foreseeable or Xilinx had been advised of the       *
-- -- ** possibility of the same.                                       *
-- -- **                                                                *
-- -- ** CRITICAL APPLICATIONS                                          *
-- -- ** Xilinx products are not designed or intended to be fail-       *
-- -- ** safe, or for use in any application requiring fail-safe        *
-- -- ** performance, such as life-support or safety devices or         *
-- -- ** systems, Class III medical devices, nuclear facilities,        *
-- -- ** applications related to the deployment of airbags, or any      *
-- -- ** other applications that could lead to death, personal          *
-- -- ** injury, or severe property or environmental damage             *
-- -- ** (individually and collectively, "Critical                      *
-- -- ** Applications"). Customer assumes the sole risk and             *
-- -- ** liability of any use of Xilinx products in Critical            *
-- -- ** Applications, subject only to applicable laws and              *
-- -- ** regulations governing limitations on product liability.        *
-- -- **                                                                *
-- -- ** THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS       *
-- -- ** PART OF THIS FILE AT ALL TIMES.                                *
   -- *******************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        uartlite_core.vhd
-- Version:         v2.0
-- Description:     UART Lite core for implementing UART logic
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
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

library axi_uartlite_v2_0_21;
-- baudrate refered from axi_uartlite_v2_0_21
use axi_uartlite_v2_0_21.baudrate;
-- uartlite_rx refered from axi_uartlite_v2_0_21
use axi_uartlite_v2_0_21.uartlite_rx;
-- uartlite_tx refered from axi_uartlite_v2_0_21
use axi_uartlite_v2_0_21.uartlite_tx;

-------------------------------------------------------------------------------
-- Port Declaration
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Generics :
-------------------------------------------------------------------------------
-- UART Lite generics
--  C_DATA_BITS           -- The number of data bits in the serial frame
--  C_S_AXI_ACLK_FREQ_HZ  -- System clock frequency driving UART lite
--                           peripheral in Hz
--  C_BAUDRATE            -- Baud rate of UART Lite in bits per second
--  C_USE_PARITY          -- Determines whether parity is used or not
--  C_ODD_PARITY          -- If parity is used determines whether parity
--                           is even or odd
-- System generics
--  C_FAMILY              -- Xilinx FPGA Family
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Ports :
-------------------------------------------------------------------------------
-- System Signals
--  Clk                   --  Clock signal
--  Rst                   --  Reset signal
-- Slave attachment interface
--  bus2ip_data           --  bus2ip data signal
--  bus2ip_rdce           --  bus2ip read CE
--  bus2ip_wrce           --  bus2ip write CE
--  ip2bus_rdack          --  ip2bus read acknowledgement
--  ip2bus_wrack          --  ip2bus write acknowledgement
--  ip2bus_error          --  ip2bus error
--  SIn_DBus              --  ip2bus data
-- UART Lite interface
--  RX                    --  Receive Data
--  TX                    --  Transmit Data
--  Interrupt             --  UART Interrupt
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                  Entity Section
-------------------------------------------------------------------------------
entity uartlite_core is
  generic
   (
    C_FAMILY            : string               := "virtex7";
    C_S_AXI_ACLK_FREQ_HZ: integer              := 100_000_000;
    C_BAUDRATE          : integer              := 9600;
    C_DATA_BITS         : integer range 5 to 8 := 8;
    C_USE_PARITY        : integer range 0 to 1 := 0;
    C_ODD_PARITY        : integer range 0 to 1 := 0
   );
  port
   (
    Clk          : in  std_logic;
    Reset        : in  std_logic;
    -- IPIF signals
    bus2ip_data  : in  std_logic_vector(0 to 7);
    bus2ip_rdce  : in  std_logic_vector(0 to 3);
    bus2ip_wrce  : in  std_logic_vector(0 to 3);
    bus2ip_cs    : in  std_logic;
    ip2bus_rdack : out std_logic;
    ip2bus_wrack : out std_logic;
    ip2bus_error : out std_logic;
    SIn_DBus     : out std_logic_vector(0 to 7);
    -- UART signals
    RX           : in  std_logic;
    TX           : out std_logic;
    Interrupt    : out std_logic
   );
end entity uartlite_core;

-------------------------------------------------------------------------------
-- Architecture Section
-------------------------------------------------------------------------------
architecture RTL of uartlite_core is
-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of RTL : architecture is "yes";

    ---------------------------------------------------------------------------
    -- function declarations
    ---------------------------------------------------------------------------

    function CALC_RATIO ( C_S_AXI_ACLK_FREQ_HZ : integer;
                          C_BAUDRATE         : integer ) return Integer is
                          
       constant C_BAUDRATE_16_BY_2: integer := (16 * C_BAUDRATE) / 2;
       constant REMAINDER         : integer := 
                                    C_S_AXI_ACLK_FREQ_HZ rem (16 * C_BAUDRATE);
       constant RATIO             : integer := 
                                     C_S_AXI_ACLK_FREQ_HZ / (16 * C_BAUDRATE);   

    begin
        if (C_BAUDRATE_16_BY_2 < REMAINDER) then
            return (RATIO + 1);
        else  
            return RATIO;
        end if;
    end function CALC_RATIO;

   
    ---------------------------------------------------------------------------
    -- Constant declarations
    ---------------------------------------------------------------------------

    constant RATIO : integer := CALC_RATIO( C_S_AXI_ACLK_FREQ_HZ, C_BAUDRATE);

    ---------------------------------------------------------------------------
    -- Signal declarations
    ---------------------------------------------------------------------------
    -- Read Only
    signal status_reg : std_logic_vector(0 to 7) := (others => '0');

    -- bit 7 rx_Data_Present
    -- bit 6 rx_Buffer_Full
    -- bit 5 tx_Buffer_Empty
    -- bit 4 tx_Buffer_Full
    -- bit 3 enable_interrupts
    -- bit 2 Overrun Error
    -- bit 1 Frame Error
    -- bit 0 Parity Error (If C_USE_PARITY is true, otherwise '0')

    -- Write Only
    -- Below mentioned bits belong to Control Register and are declared as
    -- signals below
    -- bit 0-2 Dont'Care
    -- bit 3   enable_interrupts
    -- bit 4-5 Dont'Care
    -- bit 6   Reset_RX_FIFO
    -- bit 7   Reset_TX_FIFO

    signal en_16x_Baud         : std_logic;
    signal enable_interrupts   : std_logic;
    signal reset_RX_FIFO       : std_logic;
    signal rx_Data             : std_logic_vector(0 to C_DATA_BITS-1);
    signal rx_Data_Present     : std_logic;
    signal rx_Buffer_Full      : std_logic;
    signal rx_Frame_Error      : std_logic;
    signal rx_Overrun_Error    : std_logic;
    signal rx_Parity_Error     : std_logic;
    signal clr_Status          : std_logic;
    signal reset_TX_FIFO       : std_logic;
    signal tx_Buffer_Full      : std_logic;
    signal tx_Buffer_Empty     : std_logic;
    signal tx_Buffer_Empty_Pre : std_logic;
    signal rx_Data_Present_Pre : std_logic;

begin  -- architecture IMP

    ---------------------------------------------------------------------------
    -- Generating the acknowledgement and error signals
    ---------------------------------------------------------------------------

    ip2bus_rdack <= bus2ip_rdce(0) or bus2ip_rdce(2) or bus2ip_rdce(1) 
                    or bus2ip_rdce(3);

    ip2bus_wrack <= bus2ip_wrce(1) or bus2ip_wrce(3) or bus2ip_wrce(0) 
                    or bus2ip_wrce(2);

    ip2bus_error <= ((bus2ip_rdce(0) and not rx_Data_Present) or
                     (bus2ip_wrce(1) and tx_Buffer_Full) );
    -------------------------------------------------------------------------
    -- BAUD_RATE_I : Instansiating the baudrate module
    -------------------------------------------------------------------------
    BAUD_RATE_I : entity axi_uartlite_v2_0_21.baudrate
        generic map
         (
          C_RATIO      => RATIO
         )
        port map
         (
          Clk          => Clk,
          Reset        => Reset,
          EN_16x_Baud  => en_16x_Baud
         );

    -------------------------------------------------------------------------
    -- Status register handling
    -------------------------------------------------------------------------
    status_reg(7) <= rx_Data_Present;
    status_reg(6) <= rx_Buffer_Full;
    status_reg(5) <= tx_Buffer_Empty;
    status_reg(4) <= tx_Buffer_Full;
    status_reg(3) <= enable_interrupts;

    -------------------------------------------------------------------------
    -- CLEAR_STATUS_REG : Process to clear status register
    -------------------------------------------------------------------------
    CLEAR_STATUS_REG : process (Clk) is
    begin  -- process Ctrl_Reg_DFF
        if Clk'event and Clk = '1' then
            if Reset = '1' then
                clr_Status <= '0';
            else
                clr_Status <= bus2ip_rdce(2);
            end if;
        end if;
    end process CLEAR_STATUS_REG;

    -------------------------------------------------------------------------
    -- Process to register rx_Overrun_Error
    -------------------------------------------------------------------------
    RX_OVERRUN_ERROR_DFF: Process (Clk) is
    begin
        if (Clk'event and Clk = '1') then
            if ((Reset = '1') or (clr_Status = '1')) then
                status_reg(2) <= '0';
            elsif (rx_Overrun_Error = '1') then
                status_reg(2) <= '1';
            end if;
        end if;
    end process RX_OVERRUN_ERROR_DFF;

    -------------------------------------------------------------------------
    -- Process to register rx_Frame_Error
    -------------------------------------------------------------------------
    RX_FRAME_ERROR_DFF: Process (Clk) is
    begin
        if (Clk'event and Clk = '1') then
            if (Reset = '1') then
                status_reg(1) <= '0';
            else
                if (clr_Status = '1') then
                    status_reg(1) <= '0';
                elsif (rx_Frame_Error = '1') then
                    status_reg(1) <= '1';
                end if;
            end if;
        end if;
    end process RX_FRAME_ERROR_DFF;

    -------------------------------------------------------------------------
    -- If C_USE_PARITY = 1, register rx_Parity_Error
    -------------------------------------------------------------------------
    USING_PARITY : if (C_USE_PARITY = 1) generate
        RX_PARITY_ERROR_DFF: Process (Clk) is
        begin
            if (Clk'event and Clk = '1') then
                if (Reset = '1') then
                    status_reg(0) <= '0';
                else
                   if (clr_Status = '1') then
                       status_reg(0) <= '0';
                   elsif (rx_Parity_Error = '1') then
                       status_reg(0) <= '1';
                   end if;
                end if;
             end if;
        end process RX_PARITY_ERROR_DFF;
    end generate USING_PARITY;

    -------------------------------------------------------------------------
    -- NO_PARITY : If C_USE_PARITY = 0, rx_Parity_Error bit is not present
    -------------------------------------------------------------------------
    NO_PARITY : if (C_USE_PARITY = 0) generate
        status_reg(0) <= '0';
    end generate NO_PARITY;

    -------------------------------------------------------------------------
    -- CTRL_REG_DFF : Control Register Handling 
    -------------------------------------------------------------------------
    CTRL_REG_DFF : process (Clk) is
    begin  -- process Ctrl_Reg_DFF
        if Clk'event and Clk = '1' then -- rising clock edge
            if Reset = '1' then         -- synchronous reset (active high)
                reset_TX_FIFO     <= '1';
                reset_RX_FIFO     <= '1';
                enable_interrupts <= '0';
            elsif (bus2ip_wrce(3) = '1') then
                reset_RX_FIFO     <= bus2ip_data(6);
                reset_TX_FIFO     <= bus2ip_data(7);
                enable_interrupts <= bus2ip_data(3);
            else
                reset_TX_FIFO <= '0';
                reset_RX_FIFO <= '0';
            end if;
        end if;
    end process CTRL_REG_DFF;

    -------------------------------------------------------------------------
    -- Tx Fifo Interrupt handling
    -------------------------------------------------------------------------
    TX_BUFFER_EMPTY_DFF_I: Process (Clk) is
    begin
        if (Clk'event and Clk = '1') then -- rising clock edge
            if Reset = '1' then           -- synchronous reset (active high)
                tx_Buffer_Empty_Pre <= '0';
            else
               if (bus2ip_wrce(1) = '1') then
                   tx_Buffer_Empty_Pre <= '0';
               else
                   tx_Buffer_Empty_Pre <= tx_Buffer_Empty;
               end if;
            end if;
        end if;
    end process TX_BUFFER_EMPTY_DFF_I;
    
    -------------------------------------------------------------------------
    -- Rx Fifo Interrupt handling
    -------------------------------------------------------------------------
    RX_BUFFER_DATA_DFF_I: Process (Clk) is
    begin
         if (Clk'event and Clk = '1') then -- rising clock edge
             if Reset = '1' then           -- synchronous reset (active high)
                rx_Data_Present_Pre <= '0';
             else
                if (bus2ip_rdce(0) = '1') then
                    rx_Data_Present_Pre <= '0';
                else
                    rx_Data_Present_Pre <= rx_Data_Present;
                end if;
             end if;
          end if;
    end process RX_BUFFER_DATA_DFF_I;

    -------------------------------------------------------------------------
    -- Interrupt register handling
    -------------------------------------------------------------------------
    INTERRUPT_DFF: process (Clk) is
    begin 
        if Clk'event and Clk = '1' then
            if Reset = '1' then         -- synchronous reset (active high)
                Interrupt <= '0';
            else 
                Interrupt <= enable_interrupts and 
                            ((rx_Data_Present and not rx_Data_Present_Pre) or 
                             (tx_Buffer_Empty and not tx_Buffer_Empty_Pre));
            end if;
        end if;
    end process INTERRUPT_DFF;

    -------------------------------------------------------------------------
    -- READ_MUX : Read bus interface handling
    -------------------------------------------------------------------------
    READ_MUX : process (status_reg, bus2ip_rdce(2), bus2ip_rdce(0), rx_Data) is
    begin  -- process Read_Mux

            SIn_DBus <= (others => '0');

        if (bus2ip_rdce(2) = '1') then
            SIn_DBus <= status_reg;
        elsif (bus2ip_rdce(0) = '1') then
            SIn_DBus((8-C_DATA_BITS) to 7) <= rx_Data;
          --  SIn_DBus(0 to (7-C_DATA_BITS)) <= (others => '0');
        else
            SIn_DBus <= (others => '0');
        end if;
    end process READ_MUX;

    -------------------------------------------------------------------------
    -- UARTLITE_RX_I : Instansiating the receive module
    -------------------------------------------------------------------------
    UARTLITE_RX_I : entity axi_uartlite_v2_0_21.uartlite_rx
      generic map
       (
        C_FAMILY         => C_FAMILY,
        C_DATA_BITS      => C_DATA_BITS,
        C_USE_PARITY     => C_USE_PARITY,
        C_ODD_PARITY     => C_ODD_PARITY
       )
      port map
       (
        Clk              => Clk,
        Reset            => Reset,
        EN_16x_Baud      => en_16x_Baud,
        RX               => RX,
        Read_RX_FIFO     => bus2ip_rdce(0),
        Reset_RX_FIFO    => reset_RX_FIFO,
        RX_Data          => rx_Data,
        RX_Data_Present  => rx_Data_Present,
        RX_Buffer_Full   => rx_Buffer_Full,
        RX_Frame_Error   => rx_Frame_Error,
        RX_Overrun_Error => rx_Overrun_Error,
        RX_Parity_Error  => rx_Parity_Error
       );

    -------------------------------------------------------------------------
    -- UARTLITE_TX_I : Instansiating the transmit module
    -------------------------------------------------------------------------
    UARTLITE_TX_I : entity axi_uartlite_v2_0_21.uartlite_tx
      generic map
       (
        C_FAMILY        => C_FAMILY,
        C_DATA_BITS     => C_DATA_BITS,
        C_USE_PARITY    => C_USE_PARITY,
        C_ODD_PARITY    => C_ODD_PARITY
       )
      port map
       (
        Clk             => Clk,
        Reset           => Reset,
        EN_16x_Baud     => en_16x_Baud,
        TX              => TX,
        Write_TX_FIFO   => bus2ip_wrce(1),
        Reset_TX_FIFO   => reset_TX_FIFO,
        TX_Data         => bus2ip_data(8-C_DATA_BITS to 7),
        TX_Buffer_Full  => tx_Buffer_Full,
        TX_Buffer_Empty => tx_Buffer_Empty
       );

end architecture RTL;


-------------------------------------------------------------------------------
-- axi_uartlite - entity/architecture pair
-------------------------------------------------------------------------------
--
   -- *******************************************************************
-- -- ** (c) Copyright [2007] - [2011] Xilinx, Inc. All rights reserved.*
-- -- **                                                                *
-- -- ** This file contains confidential and proprietary information    *
-- -- ** of Xilinx, Inc. and is protected under U.S. and                *
-- -- ** international copyright and other intellectual property        *
-- -- ** laws.                                                          *
-- -- **                                                                *
-- -- ** DISCLAIMER                                                     *
-- -- ** This disclaimer is not a license and does not grant any        *
-- -- ** rights to the materials distributed herewith. Except as        *
-- -- ** otherwise provided in a valid license issued to you by         *
-- -- ** Xilinx, and to the maximum extent permitted by applicable      *
-- -- ** law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND        *
-- -- ** WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES    *
-- -- ** AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING      *
-- -- ** BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-         *
-- -- ** INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and       *
-- -- ** (2) Xilinx shall not be liable (whether in contract or tort,   *
-- -- ** including negligence, or under any other theory of             *
-- -- ** liability) for any loss or damage of any kind or nature        *
-- -- ** related to, arising under or in connection with these          *
-- -- ** materials, including for any direct, or any indirect,          *
-- -- ** special, incidental, or consequential loss or damage           *
-- -- ** (including loss of data, profits, goodwill, or any type of     *
-- -- ** loss or damage suffered as a result of any action brought      *
-- -- ** by a third party) even if such damage or loss was              *
-- -- ** reasonably foreseeable or Xilinx had been advised of the       *
-- -- ** possibility of the same.                                       *
-- -- **                                                                *
-- -- ** CRITICAL APPLICATIONS                                          *
-- -- ** Xilinx products are not designed or intended to be fail-       *
-- -- ** safe, or for use in any application requiring fail-safe        *
-- -- ** performance, such as life-support or safety devices or         *
-- -- ** systems, Class III medical devices, nuclear facilities,        *
-- -- ** applications related to the deployment of airbags, or any      *
-- -- ** other applications that could lead to death, personal          *
-- -- ** injury, or severe property or environmental damage             *
-- -- ** (individually and collectively, "Critical                      *
-- -- ** Applications"). Customer assumes the sole risk and             *
-- -- ** liability of any use of Xilinx products in Critical            *
-- -- ** Applications, subject only to applicable laws and              *
-- -- ** regulations governing limitations on product liability.        *
-- -- **                                                                *
-- -- ** THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS       *
-- -- ** PART OF THIS FILE AT ALL TIMES.                                *
   -- *******************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        axi_uartlite.vhd
-- Version:         v1.02.a
-- Description:     AXI UART Lite Interface
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
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

library axi_lite_ipif_v3_0_4;
-- SLV64_ARRAY_TYPE refered from ipif_pkg
use axi_lite_ipif_v3_0_4.ipif_pkg.SLV64_ARRAY_TYPE;
-- INTEGER_ARRAY_TYPE refered from ipif_pkg
use axi_lite_ipif_v3_0_4.ipif_pkg.INTEGER_ARRAY_TYPE;
-- calc_num_ce comoponent refered from ipif_pkg
use axi_lite_ipif_v3_0_4.ipif_pkg.calc_num_ce;

-- axi_lite_ipif refered from axi_lite_ipif_v2_0
    use axi_lite_ipif_v3_0_4.axi_lite_ipif;

library axi_uartlite_v2_0_21;
-- uartlite_core refered from axi_uartlite_v2_0_21
use axi_uartlite_v2_0_21.uartlite_core;

-------------------------------------------------------------------------------
-- Port Declaration
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Generics :
-------------------------------------------------------------------------------
-- System generics
--  C_FAMILY              -- Xilinx FPGA Family
--  C_S_AXI_ACLK_FREQ_HZ  -- System clock frequency driving UART lite
--                           peripheral in Hz
-- AXI generics
--  C_S_AXI_ADDR_WIDTH    -- Width of AXI Address Bus (in bits)
--  C_S_AXI_DATA_WIDTH    -- Width of the AXI Data Bus (in bits)
--
-- UART Lite generics
--  C_BAUDRATE            -- Baud rate of UART Lite in bits per second
--  C_DATA_BITS           -- The number of data bits in the serial frame
--  C_USE_PARITY          -- Determines whether parity is used or not
--  C_ODD_PARITY          -- If parity is used determines whether parity
--                           is even or odd
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Ports :
-------------------------------------------------------------------------------
--System signals
-- s_axi_aclk           -- AXI Clock
-- s_axi_aresetn         -- AXI Reset
-- Interrupt             --  UART Interrupt
--AXI signals
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
--UARTLite Interface Signals
--  rx                   --  Receive Data
--  tx                   --  Transmit Data
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                  Entity Section
-------------------------------------------------------------------------------
entity axi_uartlite is
  generic
   (
--  -- System Parameter
    C_FAMILY              : string                        := "virtex7";
    C_S_AXI_ACLK_FREQ_HZ  : integer                       := 100_000_000;
--  -- AXI Parameters
    C_S_AXI_ADDR_WIDTH    : integer                       := 4;
    C_S_AXI_DATA_WIDTH    : integer range 32 to 128       := 32;
--  -- UARTLite Parameters
    C_BAUDRATE            : integer                       := 9600;
    C_DATA_BITS           : integer range 5 to 8          := 8;
    C_USE_PARITY          : integer range 0 to 1          := 0;
    C_ODD_PARITY          : integer range 0 to 1          := 0
   );
  port
   (

-- System signals
      s_axi_aclk           : in  std_logic;
      s_axi_aresetn         : in  std_logic;
      interrupt             : out std_logic;

-- AXI signals
      s_axi_awaddr          : in  std_logic_vector
                              (3 downto 0);
      s_axi_awvalid         : in  std_logic;
      s_axi_awready         : out std_logic;
      s_axi_wdata           : in  std_logic_vector
                              (31 downto 0);
      s_axi_wstrb           : in  std_logic_vector
                              (3 downto 0);
      s_axi_wvalid          : in  std_logic;
      s_axi_wready          : out std_logic;
      s_axi_bresp           : out std_logic_vector(1 downto 0);
      s_axi_bvalid          : out std_logic;
      s_axi_bready          : in  std_logic;
      s_axi_araddr          : in  std_logic_vector
                              (3 downto 0);
      s_axi_arvalid         : in  std_logic;
      s_axi_arready         : out std_logic;
      s_axi_rdata           : out std_logic_vector
                              (31 downto 0);
      s_axi_rresp           : out std_logic_vector(1 downto 0);
      s_axi_rvalid          : out std_logic;
      s_axi_rready          : in  std_logic;

-- UARTLite Interface Signals
      rx                    : in  std_logic;
      tx                    : out std_logic
   );

-------------------------------------------------------------------------------
-- Attributes
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
  -- Fan-Out attributes for XST
-------------------------------------------------------------------------------

    ATTRIBUTE MAX_FANOUT                   : string;
    ATTRIBUTE MAX_FANOUT  of s_axi_aclk   : signal is "10000";
    ATTRIBUTE MAX_FANOUT  of s_axi_aresetn : signal is "10000";

end entity axi_uartlite;

-------------------------------------------------------------------------------
-- Architecture Section
-------------------------------------------------------------------------------

architecture RTL of axi_uartlite is
-- Pragma Added to supress synth warnings
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of RTL : architecture is "yes";


    --------------------------------------------------------------------------
    -- Constant declarations
    --------------------------------------------------------------------------

    constant ZEROES                 : std_logic_vector(31 downto 0)
                                    := X"00000000";

    constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE :=
            (
              -- UARTLite registers Base Address
              ZEROES & X"00000000",
              ZEROES & (X"00000000" or X"0000000F")
            );

    constant C_ARD_NUM_CE_ARRAY     : INTEGER_ARRAY_TYPE :=
            (
              0 => 4
            );

    constant C_S_AXI_MIN_SIZE       : std_logic_vector(31 downto 0)
                                    := X"0000000F";

    constant C_USE_WSTRB            : integer := 0;

    constant C_DPHASE_TIMEOUT       : integer := 0;

    --------------------------------------------------------------------------
    -- Signal declarations
    --------------------------------------------------------------------------
    signal bus2ip_clk    : std_logic;
    signal bus2ip_reset  : std_logic;
    signal bus2ip_resetn : std_logic;
    signal ip2bus_data   : std_logic_vector((C_S_AXI_DATA_WIDTH-1)  downto 0)
                           := (others  => '0');
    signal ip2bus_error  : std_logic := '0';
    signal ip2bus_wrack  : std_logic := '0';
    signal ip2bus_rdack  : std_logic := '0';
    signal bus2ip_data   : std_logic_vector
                           (C_S_AXI_DATA_WIDTH - 1 downto 0);
    signal bus2ip_cs     : std_logic_vector
                           (((C_ARD_ADDR_RANGE_ARRAY'LENGTH)/2)-1 downto 0);
    signal bus2ip_rdce   : std_logic_vector
                           (calc_num_ce(C_ARD_NUM_CE_ARRAY)-1 downto 0);
    signal bus2ip_wrce   : std_logic_vector
                           (calc_num_ce(C_ARD_NUM_CE_ARRAY)-1 downto 0);

begin  -- architecture IMP

    --------------------------------------------------------------------------
    -- RESET signal assignment - IPIC RESET is active low
    --------------------------------------------------------------------------

         bus2ip_reset <= not bus2ip_resetn;

    --------------------------------------------------------------------------
    -- ip2bus_data assignment - as core is using maximum upto 8 bits
    --------------------------------------------------------------------------

    ip2bus_data((C_S_AXI_DATA_WIDTH-1)  downto 8) <= (others => '0');

    --------------------------------------------------------------------------
    -- Instansiating the UART core
    --------------------------------------------------------------------------
    UARTLITE_CORE_I : entity axi_uartlite_v2_0_21.uartlite_core
      generic map
       (
        C_FAMILY             => C_FAMILY,
        C_S_AXI_ACLK_FREQ_HZ => C_S_AXI_ACLK_FREQ_HZ,
        C_BAUDRATE           => C_BAUDRATE,
        C_DATA_BITS          => C_DATA_BITS,
        C_USE_PARITY         => C_USE_PARITY,
        C_ODD_PARITY         => C_ODD_PARITY
       )
      port map
       (
        Clk          => bus2ip_clk,
        Reset        => bus2ip_reset,
        bus2ip_data  => bus2ip_data(7 downto 0),
        bus2ip_rdce  => bus2ip_rdce(3 downto 0),
        bus2ip_wrce  => bus2ip_wrce(3 downto 0),
        bus2ip_cs    => bus2ip_cs(0),
        ip2bus_rdack => ip2bus_rdack,
        ip2bus_wrack => ip2bus_wrack,
        ip2bus_error => ip2bus_error,
        SIn_DBus     => ip2bus_data(7 downto 0),
        RX           => rx,
        TX           => tx,
        Interrupt    => Interrupt
       );

    --------------------------------------------------------------------------
    -- Instantiate AXI lite IPIF
    --------------------------------------------------------------------------
    AXI_LITE_IPIF_I : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
      generic map
       (
        C_FAMILY                  => C_FAMILY,
        C_S_AXI_ADDR_WIDTH        => 4,
        C_S_AXI_DATA_WIDTH        => C_S_AXI_DATA_WIDTH,
        C_S_AXI_MIN_SIZE          => C_S_AXI_MIN_SIZE,
        C_USE_WSTRB               => C_USE_WSTRB,
        C_DPHASE_TIMEOUT          => C_DPHASE_TIMEOUT,
        C_ARD_ADDR_RANGE_ARRAY    => C_ARD_ADDR_RANGE_ARRAY,
        C_ARD_NUM_CE_ARRAY        => C_ARD_NUM_CE_ARRAY
       )
     port map
       (
        S_AXI_ACLK          =>  s_axi_aclk,
        S_AXI_ARESETN        =>  s_axi_aresetn,
        S_AXI_AWADDR        =>  s_axi_awaddr,
        S_AXI_AWVALID       =>  s_axi_awvalid,
        S_AXI_AWREADY       =>  s_axi_awready,
        S_AXI_WDATA         =>  s_axi_wdata,
        S_AXI_WSTRB         =>  s_axi_wstrb,
        S_AXI_WVALID        =>  s_axi_wvalid,
        S_AXI_WREADY         =>  s_axi_wready,
        S_AXI_BRESP         =>  s_axi_bresp,
        S_AXI_BVALID        =>  s_axi_bvalid,
        S_AXI_BREADY        =>  s_axi_bready,
        S_AXI_ARADDR        =>  s_axi_araddr,
        S_AXI_ARVALID        =>  s_axi_arvalid,
        S_AXI_ARREADY       =>  s_axi_arready,
        S_AXI_RDATA          =>  s_axi_rdata,
        S_AXI_RRESP          =>  s_axi_rresp,
        S_AXI_RVALID        =>  s_axi_rvalid,
        S_AXI_RREADY        =>  s_axi_rready,

     -- IP Interconnect (IPIC) port signals
        Bus2IP_Clk     => bus2ip_clk,
        Bus2IP_Resetn  => bus2ip_resetn,
        IP2Bus_Data    => ip2bus_data,
        IP2Bus_WrAck   => ip2bus_wrack,
        IP2Bus_RdAck   => ip2bus_rdack,
        IP2Bus_Error   => ip2bus_error,
        Bus2IP_Addr    => open,
        Bus2IP_Data    => bus2ip_data,
        Bus2IP_RNW     => open,
        Bus2IP_BE      => open,
        Bus2IP_CS      => bus2ip_cs,
        Bus2IP_RdCE    => bus2ip_rdce,
        Bus2IP_WrCE    => bus2ip_wrce
       );

end architecture RTL;


