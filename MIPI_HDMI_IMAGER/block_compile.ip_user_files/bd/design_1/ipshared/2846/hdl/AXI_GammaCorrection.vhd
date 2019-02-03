-------------------------------------------------------------------------------
--
-- File: AXI_GammaCorrection.vhd
-- Author: Ioan Catuna
-- Original Project: AXI Gamma Correction
-- Date: 15 December 2017
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
-- This component performs image Gamma correction. The gamma correction factor
-- is specified in the "StoredGammaCoefs" subcomponent header comments.
--   The component receives 1 pixel at a time, through its AXI Stream Slave
-- interface. It outputs one pixel at a time, on the AXI Stream Master interface.
--
--   Component specifications:
--     Input sample format: RGB
--     Input sample size: 32 bits (10 bits per color)
--     Input sample count: 1 at a time
--     Output sample format: RGB
--     Output sample size: 24 bits (8 bits per color)
--     Output sample count: 1 at a time
--     Gamma factor value: Selectable among 1.0, 1.5, 1.8 and 2.2 values.
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity AXI_GammaCorrection is
generic (
  kAXI_InputDataWidth : integer := 32;
  kInputColorWidth : integer := 10;
  kAXI_OutputDataWidth : integer := 24;
  -- Width of S_AXI data bus
  C_S_AXI_DATA_WIDTH  : integer  := 32;
  -- Width of S_AXI address bus
  C_S_AXI_ADDR_WIDTH  : integer  := 3
);
port (
  StreamClk : in  STD_LOGIC;
  sStreamReset_n : in  STD_LOGIC;
  s_axis_video_tready : out STD_LOGIC;
  s_axis_video_tdata : in  STD_LOGIC_VECTOR(kAXI_InputDataWidth-1 downto 0);
  s_axis_video_tvalid : in  STD_LOGIC;
  s_axis_video_tuser : in  STD_LOGIC;
  s_axis_video_tlast : in  STD_LOGIC;

  m_axis_video_tready : in  STD_LOGIC;
  m_axis_video_tdata : out STD_LOGIC_VECTOR(kAXI_OutputDataWidth-1 downto 0);
  m_axis_video_tvalid : out STD_LOGIC;
  m_axis_video_tuser : out STD_LOGIC;
  m_axis_video_tlast : out STD_LOGIC;

  AxiLiteClk : in  STD_LOGIC;
  aAxiLiteReset_n : in  STD_LOGIC;
  -- Write address (issued by master, acceped by Slave)
  S_AXI_AWADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  -- Write channel Protection type. This signal indicates the
    -- privilege and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
  S_AXI_AWPROT  : in std_logic_vector(2 downto 0);
  -- Write address valid. This signal indicates that the master signaling
    -- valid write address and control information.
  S_AXI_AWVALID  : in std_logic;
  -- Write address ready. This signal indicates that the slave is ready
    -- to accept an address and associated control signals.
  S_AXI_AWREADY  : out std_logic;
  -- Write data (issued by master, acceped by Slave)
  S_AXI_WDATA  : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  -- Write strobes. This signal indicates which byte lanes hold
    -- valid data. There is one write strobe bit for each eight
    -- bits of the write data bus.
  S_AXI_WSTRB  : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
  -- Write valid. This signal indicates that valid write
    -- data and strobes are available.
  S_AXI_WVALID  : in std_logic;
  -- Write ready. This signal indicates that the slave
    -- can accept the write data.
  S_AXI_WREADY  : out std_logic;
  -- Write response. This signal indicates the status
    -- of the write transaction.
  S_AXI_BRESP  : out std_logic_vector(1 downto 0);
  -- Write response valid. This signal indicates that the channel
    -- is signaling a valid write response.
  S_AXI_BVALID  : out std_logic;
  -- Response ready. This signal indicates that the master
    -- can accept a write response.
  S_AXI_BREADY  : in std_logic;
  -- Read address (issued by master, acceped by Slave)
  S_AXI_ARADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  -- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether the
    -- transaction is a data access or an instruction access.
  S_AXI_ARPROT  : in std_logic_vector(2 downto 0);
  -- Read address valid. This signal indicates that the channel
    -- is signaling valid read address and control information.
  S_AXI_ARVALID  : in std_logic;
  -- Read address ready. This signal indicates that the slave is
    -- ready to accept an address and associated control signals.
  S_AXI_ARREADY  : out std_logic;
  -- Read data (issued by slave)
  S_AXI_RDATA  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  -- Read response. This signal indicates the status of the
    -- read transfer.
  S_AXI_RRESP  : out std_logic_vector(1 downto 0);
  -- Read valid. This signal indicates that the channel is
    -- signaling the required read data.
  S_AXI_RVALID  : out std_logic;
  -- Read ready. This signal indicates that the master can
    -- accept the read data and response information.
  S_AXI_RREADY  : in std_logic
);
end AXI_GammaCorrection;

architecture rtl of AXI_GammaCorrection is

  type RGB_Component_t is array (2 downto 0) of
    STD_LOGIC_VECTOR(7 downto 0);
  signal sGammaComponent: RGB_Component_t;
  signal sAXI_OutputValid : STD_LOGIC;
  signal sDataIsAvailableAndRequested : STD_LOGIC;

  -- AXI4LITE signals
  signal axi_awaddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_awready  : std_logic;
  signal axi_wready  : std_logic;
  signal axi_bresp  : std_logic_vector(1 downto 0);
  signal axi_bvalid  : std_logic;
  signal axi_araddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_arready  : std_logic;
  signal axi_rdata  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal axi_rresp  : std_logic_vector(1 downto 0);
  signal axi_rvalid  : std_logic;

  -- Example-specific design signals
  -- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
  -- ADDR_LSB is used for addressing 32/64 bit registers/memories
  -- ADDR_LSB = 2 for 32 bits (n downto 2)
  -- ADDR_LSB = 3 for 64 bits (n downto 3)
  constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
  constant OPT_MEM_ADDR_BITS : integer := 0;
  ------------------------------------------------
  ---- Signals for user logic register space example
  --------------------------------------------------
  ---- Number of Slave Registers 4
  signal sGammaReg  :std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal slv_reg_rden  : std_logic;
  signal slv_reg_wren  : std_logic;
  signal byte_index  : integer;

begin

sDataIsAvailableAndRequested <= '1' when ((m_axis_video_tready = '1') and
  (s_axis_video_tvalid = '1')) else '0';
s_axis_video_tready <= m_axis_video_tready;

-- This infers multiple ROM components (one for each color component), in
-- order to apply gamma correction to each color component.
GammaStorageCoefsGeneration: for i in 0 to 2 generate
begin
  StoredGammaCoefsInst: entity work.StoredGammaCoefs
  port map(
    RomClk => StreamClk,
    rReadEnable => sDataIsAvailableAndRequested,
    rGammaFactor => sGammaReg(2 downto 0),
    rReadAddr => s_axis_video_tdata((kInputColorWidth*(i+1)-1) downto (kInputColorWidth*i)),
    rStoredData => sGammaComponent(i)
  );
end generate;

-- This process assigns the Valid, User and Last signals on the AXI stream output
-- interface.
ShiftStrobes: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sAXI_OutputValid <= '0';
      m_axis_video_tuser <= '0';
      m_axis_video_tlast <= '0';
    elsif (m_axis_video_tready = '1') then
      if (s_axis_video_tvalid = '1') then
        m_axis_video_tuser  <= s_axis_video_tuser;
        m_axis_video_tlast  <= s_axis_video_tlast;
        sAXI_OutputValid <= '1';
      else
        sAXI_OutputValid <= '0';
      end if;
    elsif (sAXI_OutputValid = '0') then
      sAXI_OutputValid <= '0';
    end if;
  end if;
end process ShiftStrobes;

-- Assign AXI stream output interface signals.
m_axis_video_tvalid <= sAXI_OutputValid;
m_axis_video_tdata  <= sGammaComponent(2) & sGammaComponent(1) & sGammaComponent(0);


-- AXI Lite Interface Implementation Starts Here

-- I/O Connections assignments
  S_AXI_AWREADY  <= axi_awready;
  S_AXI_WREADY  <= axi_wready;
  S_AXI_BRESP  <= axi_bresp;
  S_AXI_BVALID  <= axi_bvalid;
  S_AXI_ARREADY  <= axi_arready;
  S_AXI_RDATA  <= axi_rdata;
  S_AXI_RRESP  <= axi_rresp;
  S_AXI_RVALID  <= axi_rvalid;

  -- Implement axi_awready generation
  -- axi_awready is asserted for one AxiLiteClk clock cycle when both
  -- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
  -- de-asserted when reset is low.
  process (AxiLiteClk)
  begin
    if rising_edge(AxiLiteClk) then
      if aAxiLiteReset_n = '0' then
        axi_awready <= '0';
      else
        if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
          -- Slave is ready to accept write address when
          -- there is a valid write address and write data
          -- on the write address and data bus. This design
          -- expects no outstanding transactions.
          axi_awready <= '1';
        else
          axi_awready <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Implement axi_awaddr latching
  -- This process is used to latch the address when both
  -- S_AXI_AWVALID and S_AXI_WVALID are valid.
  process (AxiLiteClk)
  begin
    if rising_edge(AxiLiteClk) then
      if aAxiLiteReset_n = '0' then
        axi_awaddr <= (others => '0');
      else
        if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
          -- Write Address latching
          axi_awaddr <= S_AXI_AWADDR;
        end if;
      end if;
    end if;
  end process;

  -- Implement axi_wready generation
  -- axi_wready is asserted for one AxiLiteClk clock cycle when both
  -- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
  -- de-asserted when reset is low.
  process (AxiLiteClk)
  begin
    if rising_edge(AxiLiteClk) then
      if aAxiLiteReset_n = '0' then
        axi_wready <= '0';
      else
        if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1') then
            -- Slave is ready to accept write data when
            -- there is a valid write address and write data
            -- on the write address and data bus. This design
            -- expects no outstanding transactions.
            axi_wready <= '1';
        else
          axi_wready <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Implement memory mapped register select and write logic generation
  -- The write data is accepted and written to memory mapped registers when
  -- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
  -- select byte enables of slave registers while writing.
  -- These register is cleared when reset (active low) is applied.
  -- Slave register write enable is asserted when valid address and data is available
  -- and the slave is ready to accept the write address and write data.
  slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

  process (AxiLiteClk)
  variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
  begin
    if rising_edge(AxiLiteClk) then
      if aAxiLiteReset_n = '0' then
        sGammaReg <= (others => '0');
      else
        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
        if (slv_reg_wren = '1') then
          if (loc_addr = "0") then
            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
              if ( S_AXI_WSTRB(byte_index) = '1' ) then
                -- Respective byte enables are asserted as per write strobes
                -- slave register 0
                sGammaReg(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          end if;
        end if;
      end if;
    end if;
  end process;

  -- Implement write response logic generation
  -- The write response and response valid signals are asserted by the slave
  -- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
  -- This marks the acceptance of address and indicates the status of
  -- write transaction.
  process (AxiLiteClk)
  begin
    if rising_edge(AxiLiteClk) then
      if aAxiLiteReset_n = '0' then
        axi_bvalid  <= '0';
        axi_bresp   <= "00"; --need to work more on the responses
      else
        if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
          axi_bvalid <= '1';
          axi_bresp  <= "00";
        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
          axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
        end if;
      end if;
    end if;
  end process;

  -- Implement axi_arready generation
  -- axi_arready is asserted for one AxiLiteClk clock cycle when
  -- S_AXI_ARVALID is asserted. axi_awready is
  -- de-asserted when reset (active low) is asserted.
  -- The read address is also latched when S_AXI_ARVALID is
  -- asserted. axi_araddr is reset to zero on reset assertion.
  process (AxiLiteClk)
  begin
    if rising_edge(AxiLiteClk) then
      if aAxiLiteReset_n = '0' then
        axi_arready <= '0';
        axi_araddr  <= (others => '1');
      else
        if (axi_arready = '0' and S_AXI_ARVALID = '1') then
          -- Indicates that the slave has acceped the valid read address
          axi_arready <= '1';
          -- Read Address latching
          axi_araddr  <= S_AXI_ARADDR;
        else
          axi_arready <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Implement axi_arvalid generation
  -- axi_rvalid is asserted for one AxiLiteClk clock cycle when both
  -- S_AXI_ARVALID and axi_arready are asserted. The slave registers
  -- data are available on the axi_rdata bus at this instance. The
  -- assertion of axi_rvalid marks the validity of read data on the
  -- bus and axi_rresp indicates the status of read transaction.axi_rvalid
  -- is deasserted on reset (active low). axi_rresp and axi_rdata are
  -- cleared to zero on reset (active low).
  process (AxiLiteClk)
  begin
    if rising_edge(AxiLiteClk) then
      if aAxiLiteReset_n = '0' then
        axi_rvalid <= '0';
        axi_rresp  <= "00";
      else
        if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
          -- Valid read data is available at the read data bus
          axi_rvalid <= '1';
          axi_rresp  <= "00"; -- 'OKAY' response
        elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
          -- Read data is accepted by the master
          axi_rvalid <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Implement memory mapped register select and read logic generation
  -- Slave register read enable is asserted when valid address is available
  -- and the slave is ready to accept the read address.
  slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid);

  -- Output register or memory read data
  axi_rdata  <= (others => '0');

end rtl;

