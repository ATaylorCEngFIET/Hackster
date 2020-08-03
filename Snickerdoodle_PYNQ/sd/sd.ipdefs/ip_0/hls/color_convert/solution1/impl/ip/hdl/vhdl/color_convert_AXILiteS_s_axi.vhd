-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity color_convert_AXILiteS_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 7;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    clk                   :in   STD_LOGIC;
    rst                   :in   STD_LOGIC;
    c1_c1_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    c1_c2_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    c1_c3_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    c2_c1_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    c2_c2_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    c2_c3_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    c3_c1_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    c3_c2_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    c3_c3_V               :out  STD_LOGIC_VECTOR(9 downto 0);
    bias_c1_V             :out  STD_LOGIC_VECTOR(9 downto 0);
    bias_c2_V             :out  STD_LOGIC_VECTOR(9 downto 0);
    bias_c3_V             :out  STD_LOGIC_VECTOR(9 downto 0)
);
end entity color_convert_AXILiteS_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : reserved
-- 0x04 : reserved
-- 0x08 : reserved
-- 0x0c : reserved
-- 0x10 : Data signal of c1_c1_V
--        bit 9~0 - c1_c1_V[9:0] (Read/Write)
--        others  - reserved
-- 0x14 : reserved
-- 0x18 : Data signal of c1_c2_V
--        bit 9~0 - c1_c2_V[9:0] (Read/Write)
--        others  - reserved
-- 0x1c : reserved
-- 0x20 : Data signal of c1_c3_V
--        bit 9~0 - c1_c3_V[9:0] (Read/Write)
--        others  - reserved
-- 0x24 : reserved
-- 0x28 : Data signal of c2_c1_V
--        bit 9~0 - c2_c1_V[9:0] (Read/Write)
--        others  - reserved
-- 0x2c : reserved
-- 0x30 : Data signal of c2_c2_V
--        bit 9~0 - c2_c2_V[9:0] (Read/Write)
--        others  - reserved
-- 0x34 : reserved
-- 0x38 : Data signal of c2_c3_V
--        bit 9~0 - c2_c3_V[9:0] (Read/Write)
--        others  - reserved
-- 0x3c : reserved
-- 0x40 : Data signal of c3_c1_V
--        bit 9~0 - c3_c1_V[9:0] (Read/Write)
--        others  - reserved
-- 0x44 : reserved
-- 0x48 : Data signal of c3_c2_V
--        bit 9~0 - c3_c2_V[9:0] (Read/Write)
--        others  - reserved
-- 0x4c : reserved
-- 0x50 : Data signal of c3_c3_V
--        bit 9~0 - c3_c3_V[9:0] (Read/Write)
--        others  - reserved
-- 0x54 : reserved
-- 0x58 : Data signal of bias_c1_V
--        bit 9~0 - bias_c1_V[9:0] (Read/Write)
--        others  - reserved
-- 0x5c : reserved
-- 0x60 : Data signal of bias_c2_V
--        bit 9~0 - bias_c2_V[9:0] (Read/Write)
--        others  - reserved
-- 0x64 : reserved
-- 0x68 : Data signal of bias_c3_V
--        bit 9~0 - bias_c3_V[9:0] (Read/Write)
--        others  - reserved
-- 0x6c : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of color_convert_AXILiteS_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_C1_C1_V_DATA_0   : INTEGER := 16#10#;
    constant ADDR_C1_C1_V_CTRL     : INTEGER := 16#14#;
    constant ADDR_C1_C2_V_DATA_0   : INTEGER := 16#18#;
    constant ADDR_C1_C2_V_CTRL     : INTEGER := 16#1c#;
    constant ADDR_C1_C3_V_DATA_0   : INTEGER := 16#20#;
    constant ADDR_C1_C3_V_CTRL     : INTEGER := 16#24#;
    constant ADDR_C2_C1_V_DATA_0   : INTEGER := 16#28#;
    constant ADDR_C2_C1_V_CTRL     : INTEGER := 16#2c#;
    constant ADDR_C2_C2_V_DATA_0   : INTEGER := 16#30#;
    constant ADDR_C2_C2_V_CTRL     : INTEGER := 16#34#;
    constant ADDR_C2_C3_V_DATA_0   : INTEGER := 16#38#;
    constant ADDR_C2_C3_V_CTRL     : INTEGER := 16#3c#;
    constant ADDR_C3_C1_V_DATA_0   : INTEGER := 16#40#;
    constant ADDR_C3_C1_V_CTRL     : INTEGER := 16#44#;
    constant ADDR_C3_C2_V_DATA_0   : INTEGER := 16#48#;
    constant ADDR_C3_C2_V_CTRL     : INTEGER := 16#4c#;
    constant ADDR_C3_C3_V_DATA_0   : INTEGER := 16#50#;
    constant ADDR_C3_C3_V_CTRL     : INTEGER := 16#54#;
    constant ADDR_BIAS_C1_V_DATA_0 : INTEGER := 16#58#;
    constant ADDR_BIAS_C1_V_CTRL   : INTEGER := 16#5c#;
    constant ADDR_BIAS_C2_V_DATA_0 : INTEGER := 16#60#;
    constant ADDR_BIAS_C2_V_CTRL   : INTEGER := 16#64#;
    constant ADDR_BIAS_C3_V_DATA_0 : INTEGER := 16#68#;
    constant ADDR_BIAS_C3_V_CTRL   : INTEGER := 16#6c#;
    constant ADDR_BITS         : INTEGER := 7;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_c1_c1_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_c1_c2_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_c1_c3_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_c2_c1_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_c2_c2_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_c2_c3_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_c3_c1_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_c3_c2_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_c3_c3_V         : UNSIGNED(9 downto 0) := (others => '0');
    signal int_bias_c1_V       : UNSIGNED(9 downto 0) := (others => '0');
    signal int_bias_c2_V       : UNSIGNED(9 downto 0) := (others => '0');
    signal int_bias_c3_V       : UNSIGNED(9 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    case (TO_INTEGER(raddr)) is
                    when ADDR_C1_C1_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c1_c1_V(9 downto 0), 32);
                    when ADDR_C1_C2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c1_c2_V(9 downto 0), 32);
                    when ADDR_C1_C3_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c1_c3_V(9 downto 0), 32);
                    when ADDR_C2_C1_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c2_c1_V(9 downto 0), 32);
                    when ADDR_C2_C2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c2_c2_V(9 downto 0), 32);
                    when ADDR_C2_C3_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c2_c3_V(9 downto 0), 32);
                    when ADDR_C3_C1_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c3_c1_V(9 downto 0), 32);
                    when ADDR_C3_C2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c3_c2_V(9 downto 0), 32);
                    when ADDR_C3_C3_V_DATA_0 =>
                        rdata_data <= RESIZE(int_c3_c3_V(9 downto 0), 32);
                    when ADDR_BIAS_C1_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bias_c1_V(9 downto 0), 32);
                    when ADDR_BIAS_C2_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bias_c2_V(9 downto 0), 32);
                    when ADDR_BIAS_C3_V_DATA_0 =>
                        rdata_data <= RESIZE(int_bias_c3_V(9 downto 0), 32);
                    when others =>
                        rdata_data <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    c1_c1_V              <= STD_LOGIC_VECTOR(int_c1_c1_V);
    c1_c2_V              <= STD_LOGIC_VECTOR(int_c1_c2_V);
    c1_c3_V              <= STD_LOGIC_VECTOR(int_c1_c3_V);
    c2_c1_V              <= STD_LOGIC_VECTOR(int_c2_c1_V);
    c2_c2_V              <= STD_LOGIC_VECTOR(int_c2_c2_V);
    c2_c3_V              <= STD_LOGIC_VECTOR(int_c2_c3_V);
    c3_c1_V              <= STD_LOGIC_VECTOR(int_c3_c1_V);
    c3_c2_V              <= STD_LOGIC_VECTOR(int_c3_c2_V);
    c3_c3_V              <= STD_LOGIC_VECTOR(int_c3_c3_V);
    bias_c1_V            <= STD_LOGIC_VECTOR(int_bias_c1_V);
    bias_c2_V            <= STD_LOGIC_VECTOR(int_bias_c2_V);
    bias_c3_V            <= STD_LOGIC_VECTOR(int_bias_c3_V);

    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C1_C1_V_DATA_0) then
                 int_c1_c1_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c1_c1_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C1_C2_V_DATA_0) then
                 int_c1_c2_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c1_c2_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C1_C3_V_DATA_0) then
                 int_c1_c3_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c1_c3_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C2_C1_V_DATA_0) then
                 int_c2_c1_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c2_c1_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C2_C2_V_DATA_0) then
                 int_c2_c2_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c2_c2_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C2_C3_V_DATA_0) then
                 int_c2_c3_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c2_c3_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C3_C1_V_DATA_0) then
                 int_c3_c1_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c3_c1_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C3_C2_V_DATA_0) then
                 int_c3_c2_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c3_c2_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_C3_C3_V_DATA_0) then
                 int_c3_c3_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_c3_c3_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_BIAS_C1_V_DATA_0) then
                 int_bias_c1_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_bias_c1_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_BIAS_C2_V_DATA_0) then
                 int_bias_c2_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_bias_c2_V(9 downto 0));
            end if;
        end if;
    end process;
    process (clk)
    begin
        if (clk'event and clk = '1') then
             if (w_hs = '1' and waddr = ADDR_BIAS_C3_V_DATA_0) then
                 int_bias_c3_V(9 downto 0) <= (UNSIGNED(WDATA(9 downto 0)) and wmask(9 downto 0)) or ((not wmask(9 downto 0)) and int_bias_c3_V(9 downto 0));
            end if;
        end if;
    end process;

-- ----------------------- Memory logic ------------------

end architecture behave;
