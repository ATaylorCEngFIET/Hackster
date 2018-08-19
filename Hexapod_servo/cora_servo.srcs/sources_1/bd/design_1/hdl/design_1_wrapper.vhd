--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sat Aug 11 16:19:02 2018
--Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    ja_pin10_io : inout STD_LOGIC;
    ja_pin1_io : inout STD_LOGIC;
    ja_pin2_io : inout STD_LOGIC;
    ja_pin3_io : inout STD_LOGIC;
    ja_pin4_io : inout STD_LOGIC;
    ja_pin7_io : inout STD_LOGIC;
    ja_pin8_io : inout STD_LOGIC;
    ja_pin9_io : inout STD_LOGIC;
    jb_0_pin10_io : inout STD_LOGIC;
    jb_0_pin1_io : inout STD_LOGIC;
    jb_0_pin2_io : inout STD_LOGIC;
    jb_0_pin3_io : inout STD_LOGIC;
    jb_0_pin4_io : inout STD_LOGIC;
    jb_0_pin7_io : inout STD_LOGIC;
    jb_0_pin8_io : inout STD_LOGIC;
    jb_0_pin9_io : inout STD_LOGIC;
    shield_i2c_scl_io : inout STD_LOGIC;
    shield_i2c_sda_io : inout STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    shield_i2c_scl_i : in STD_LOGIC;
    shield_i2c_scl_o : out STD_LOGIC;
    shield_i2c_scl_t : out STD_LOGIC;
    shield_i2c_sda_i : in STD_LOGIC;
    shield_i2c_sda_o : out STD_LOGIC;
    shield_i2c_sda_t : out STD_LOGIC;
    ja_pin1_o : out STD_LOGIC;
    ja_pin7_i : in STD_LOGIC;
    ja_pin2_o : out STD_LOGIC;
    ja_pin8_i : in STD_LOGIC;
    ja_pin3_o : out STD_LOGIC;
    ja_pin9_i : in STD_LOGIC;
    ja_pin10_o : out STD_LOGIC;
    ja_pin4_o : out STD_LOGIC;
    ja_pin3_i : in STD_LOGIC;
    ja_pin4_i : in STD_LOGIC;
    ja_pin1_i : in STD_LOGIC;
    ja_pin2_i : in STD_LOGIC;
    ja_pin10_t : out STD_LOGIC;
    ja_pin8_t : out STD_LOGIC;
    ja_pin9_t : out STD_LOGIC;
    ja_pin4_t : out STD_LOGIC;
    ja_pin9_o : out STD_LOGIC;
    ja_pin10_i : in STD_LOGIC;
    ja_pin7_t : out STD_LOGIC;
    ja_pin1_t : out STD_LOGIC;
    ja_pin2_t : out STD_LOGIC;
    ja_pin7_o : out STD_LOGIC;
    ja_pin3_t : out STD_LOGIC;
    ja_pin8_o : out STD_LOGIC;
    jb_0_pin1_o : out STD_LOGIC;
    jb_0_pin7_i : in STD_LOGIC;
    jb_0_pin2_o : out STD_LOGIC;
    jb_0_pin8_i : in STD_LOGIC;
    jb_0_pin3_o : out STD_LOGIC;
    jb_0_pin9_i : in STD_LOGIC;
    jb_0_pin10_o : out STD_LOGIC;
    jb_0_pin4_o : out STD_LOGIC;
    jb_0_pin3_i : in STD_LOGIC;
    jb_0_pin4_i : in STD_LOGIC;
    jb_0_pin1_i : in STD_LOGIC;
    jb_0_pin2_i : in STD_LOGIC;
    jb_0_pin10_t : out STD_LOGIC;
    jb_0_pin8_t : out STD_LOGIC;
    jb_0_pin9_t : out STD_LOGIC;
    jb_0_pin4_t : out STD_LOGIC;
    jb_0_pin9_o : out STD_LOGIC;
    jb_0_pin10_i : in STD_LOGIC;
    jb_0_pin7_t : out STD_LOGIC;
    jb_0_pin1_t : out STD_LOGIC;
    jb_0_pin2_t : out STD_LOGIC;
    jb_0_pin7_o : out STD_LOGIC;
    jb_0_pin3_t : out STD_LOGIC;
    jb_0_pin8_o : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal ja_pin10_i : STD_LOGIC;
  signal ja_pin10_o : STD_LOGIC;
  signal ja_pin10_t : STD_LOGIC;
  signal ja_pin1_i : STD_LOGIC;
  signal ja_pin1_o : STD_LOGIC;
  signal ja_pin1_t : STD_LOGIC;
  signal ja_pin2_i : STD_LOGIC;
  signal ja_pin2_o : STD_LOGIC;
  signal ja_pin2_t : STD_LOGIC;
  signal ja_pin3_i : STD_LOGIC;
  signal ja_pin3_o : STD_LOGIC;
  signal ja_pin3_t : STD_LOGIC;
  signal ja_pin4_i : STD_LOGIC;
  signal ja_pin4_o : STD_LOGIC;
  signal ja_pin4_t : STD_LOGIC;
  signal ja_pin7_i : STD_LOGIC;
  signal ja_pin7_o : STD_LOGIC;
  signal ja_pin7_t : STD_LOGIC;
  signal ja_pin8_i : STD_LOGIC;
  signal ja_pin8_o : STD_LOGIC;
  signal ja_pin8_t : STD_LOGIC;
  signal ja_pin9_i : STD_LOGIC;
  signal ja_pin9_o : STD_LOGIC;
  signal ja_pin9_t : STD_LOGIC;
  signal jb_0_pin10_i : STD_LOGIC;
  signal jb_0_pin10_o : STD_LOGIC;
  signal jb_0_pin10_t : STD_LOGIC;
  signal jb_0_pin1_i : STD_LOGIC;
  signal jb_0_pin1_o : STD_LOGIC;
  signal jb_0_pin1_t : STD_LOGIC;
  signal jb_0_pin2_i : STD_LOGIC;
  signal jb_0_pin2_o : STD_LOGIC;
  signal jb_0_pin2_t : STD_LOGIC;
  signal jb_0_pin3_i : STD_LOGIC;
  signal jb_0_pin3_o : STD_LOGIC;
  signal jb_0_pin3_t : STD_LOGIC;
  signal jb_0_pin4_i : STD_LOGIC;
  signal jb_0_pin4_o : STD_LOGIC;
  signal jb_0_pin4_t : STD_LOGIC;
  signal jb_0_pin7_i : STD_LOGIC;
  signal jb_0_pin7_o : STD_LOGIC;
  signal jb_0_pin7_t : STD_LOGIC;
  signal jb_0_pin8_i : STD_LOGIC;
  signal jb_0_pin8_o : STD_LOGIC;
  signal jb_0_pin8_t : STD_LOGIC;
  signal jb_0_pin9_i : STD_LOGIC;
  signal jb_0_pin9_o : STD_LOGIC;
  signal jb_0_pin9_t : STD_LOGIC;
  signal shield_i2c_scl_i : STD_LOGIC;
  signal shield_i2c_scl_o : STD_LOGIC;
  signal shield_i2c_scl_t : STD_LOGIC;
  signal shield_i2c_sda_i : STD_LOGIC;
  signal shield_i2c_sda_o : STD_LOGIC;
  signal shield_i2c_sda_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      ja_pin10_i => ja_pin10_i,
      ja_pin10_o => ja_pin10_o,
      ja_pin10_t => ja_pin10_t,
      ja_pin1_i => ja_pin1_i,
      ja_pin1_o => ja_pin1_o,
      ja_pin1_t => ja_pin1_t,
      ja_pin2_i => ja_pin2_i,
      ja_pin2_o => ja_pin2_o,
      ja_pin2_t => ja_pin2_t,
      ja_pin3_i => ja_pin3_i,
      ja_pin3_o => ja_pin3_o,
      ja_pin3_t => ja_pin3_t,
      ja_pin4_i => ja_pin4_i,
      ja_pin4_o => ja_pin4_o,
      ja_pin4_t => ja_pin4_t,
      ja_pin7_i => ja_pin7_i,
      ja_pin7_o => ja_pin7_o,
      ja_pin7_t => ja_pin7_t,
      ja_pin8_i => ja_pin8_i,
      ja_pin8_o => ja_pin8_o,
      ja_pin8_t => ja_pin8_t,
      ja_pin9_i => ja_pin9_i,
      ja_pin9_o => ja_pin9_o,
      ja_pin9_t => ja_pin9_t,
      jb_0_pin10_i => jb_0_pin10_i,
      jb_0_pin10_o => jb_0_pin10_o,
      jb_0_pin10_t => jb_0_pin10_t,
      jb_0_pin1_i => jb_0_pin1_i,
      jb_0_pin1_o => jb_0_pin1_o,
      jb_0_pin1_t => jb_0_pin1_t,
      jb_0_pin2_i => jb_0_pin2_i,
      jb_0_pin2_o => jb_0_pin2_o,
      jb_0_pin2_t => jb_0_pin2_t,
      jb_0_pin3_i => jb_0_pin3_i,
      jb_0_pin3_o => jb_0_pin3_o,
      jb_0_pin3_t => jb_0_pin3_t,
      jb_0_pin4_i => jb_0_pin4_i,
      jb_0_pin4_o => jb_0_pin4_o,
      jb_0_pin4_t => jb_0_pin4_t,
      jb_0_pin7_i => jb_0_pin7_i,
      jb_0_pin7_o => jb_0_pin7_o,
      jb_0_pin7_t => jb_0_pin7_t,
      jb_0_pin8_i => jb_0_pin8_i,
      jb_0_pin8_o => jb_0_pin8_o,
      jb_0_pin8_t => jb_0_pin8_t,
      jb_0_pin9_i => jb_0_pin9_i,
      jb_0_pin9_o => jb_0_pin9_o,
      jb_0_pin9_t => jb_0_pin9_t,
      shield_i2c_scl_i => shield_i2c_scl_i,
      shield_i2c_scl_o => shield_i2c_scl_o,
      shield_i2c_scl_t => shield_i2c_scl_t,
      shield_i2c_sda_i => shield_i2c_sda_i,
      shield_i2c_sda_o => shield_i2c_sda_o,
      shield_i2c_sda_t => shield_i2c_sda_t
    );
ja_pin10_iobuf: component IOBUF
     port map (
      I => ja_pin10_o,
      IO => ja_pin10_io,
      O => ja_pin10_i,
      T => ja_pin10_t
    );
ja_pin1_iobuf: component IOBUF
     port map (
      I => ja_pin1_o,
      IO => ja_pin1_io,
      O => ja_pin1_i,
      T => ja_pin1_t
    );
ja_pin2_iobuf: component IOBUF
     port map (
      I => ja_pin2_o,
      IO => ja_pin2_io,
      O => ja_pin2_i,
      T => ja_pin2_t
    );
ja_pin3_iobuf: component IOBUF
     port map (
      I => ja_pin3_o,
      IO => ja_pin3_io,
      O => ja_pin3_i,
      T => ja_pin3_t
    );
ja_pin4_iobuf: component IOBUF
     port map (
      I => ja_pin4_o,
      IO => ja_pin4_io,
      O => ja_pin4_i,
      T => ja_pin4_t
    );
ja_pin7_iobuf: component IOBUF
     port map (
      I => ja_pin7_o,
      IO => ja_pin7_io,
      O => ja_pin7_i,
      T => ja_pin7_t
    );
ja_pin8_iobuf: component IOBUF
     port map (
      I => ja_pin8_o,
      IO => ja_pin8_io,
      O => ja_pin8_i,
      T => ja_pin8_t
    );
ja_pin9_iobuf: component IOBUF
     port map (
      I => ja_pin9_o,
      IO => ja_pin9_io,
      O => ja_pin9_i,
      T => ja_pin9_t
    );
jb_0_pin10_iobuf: component IOBUF
     port map (
      I => jb_0_pin10_o,
      IO => jb_0_pin10_io,
      O => jb_0_pin10_i,
      T => jb_0_pin10_t
    );
jb_0_pin1_iobuf: component IOBUF
     port map (
      I => jb_0_pin1_o,
      IO => jb_0_pin1_io,
      O => jb_0_pin1_i,
      T => jb_0_pin1_t
    );
jb_0_pin2_iobuf: component IOBUF
     port map (
      I => jb_0_pin2_o,
      IO => jb_0_pin2_io,
      O => jb_0_pin2_i,
      T => jb_0_pin2_t
    );
jb_0_pin3_iobuf: component IOBUF
     port map (
      I => jb_0_pin3_o,
      IO => jb_0_pin3_io,
      O => jb_0_pin3_i,
      T => jb_0_pin3_t
    );
jb_0_pin4_iobuf: component IOBUF
     port map (
      I => jb_0_pin4_o,
      IO => jb_0_pin4_io,
      O => jb_0_pin4_i,
      T => jb_0_pin4_t
    );
jb_0_pin7_iobuf: component IOBUF
     port map (
      I => jb_0_pin7_o,
      IO => jb_0_pin7_io,
      O => jb_0_pin7_i,
      T => jb_0_pin7_t
    );
jb_0_pin8_iobuf: component IOBUF
     port map (
      I => jb_0_pin8_o,
      IO => jb_0_pin8_io,
      O => jb_0_pin8_i,
      T => jb_0_pin8_t
    );
jb_0_pin9_iobuf: component IOBUF
     port map (
      I => jb_0_pin9_o,
      IO => jb_0_pin9_io,
      O => jb_0_pin9_i,
      T => jb_0_pin9_t
    );
shield_i2c_scl_iobuf: component IOBUF
     port map (
      I => shield_i2c_scl_o,
      IO => shield_i2c_scl_io,
      O => shield_i2c_scl_i,
      T => shield_i2c_scl_t
    );
shield_i2c_sda_iobuf: component IOBUF
     port map (
      I => shield_i2c_sda_o,
      IO => shield_i2c_sda_io,
      O => shield_i2c_sda_i,
      T => shield_i2c_sda_t
    );
end STRUCTURE;
