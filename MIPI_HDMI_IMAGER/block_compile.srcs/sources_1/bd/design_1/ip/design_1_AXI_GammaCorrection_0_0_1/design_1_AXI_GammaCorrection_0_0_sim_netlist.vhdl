-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Dec  3 15:43:41 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/hdl_projects/Zybo_EV_Platform/block_compile.srcs/sources_1/bd/design_1/ip/design_1_AXI_GammaCorrection_0_0_1/design_1_AXI_GammaCorrection_0_0_sim_netlist.vhdl
-- Design      : design_1_AXI_GammaCorrection_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sGammaReg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sGammaReg_reg[1]\ : in STD_LOGIC;
    \sGammaReg_reg[0]\ : in STD_LOGIC;
    \sGammaReg_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    StreamClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs : entity is "StoredGammaCoefs";
end design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs;

architecture STRUCTURE of design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs is
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rStoredData[0]_i_100_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_101_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_102_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_103_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_104_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_105_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_106_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_107_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_108_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_109_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_110_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_111_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_112_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_113_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_114_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_115_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_116_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_117_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_118_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_4_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_55_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_56_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_57_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_58_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_59_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_60_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_61_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_62_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_63_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_64_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_65_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_66_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_67_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_68_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_69_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_6_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_70_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_71_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_72_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_73_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_74_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_75_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_76_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_77_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_78_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_79_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_80_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_81_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_82_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_83_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_84_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_85_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_86_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_87_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_88_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_89_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_90_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_91_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_92_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_93_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_94_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_95_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_96_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_97_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_98_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_99_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_100_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_101_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_102_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_103_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_104_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_105_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_106_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_107_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_108_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_109_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_110_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_111_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_112_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_113_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_114_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_115_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_116_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_23_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_24_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_25_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_26_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_4_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_57_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_58_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_59_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_60_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_61_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_62_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_63_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_64_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_65_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_66_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_67_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_68_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_69_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_6_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_70_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_71_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_72_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_73_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_74_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_75_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_76_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_77_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_78_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_79_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_80_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_81_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_82_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_83_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_84_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_85_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_86_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_87_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_88_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_89_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_90_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_91_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_92_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_93_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_94_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_95_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_96_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_97_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_98_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_99_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_100_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_101_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_102_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_103_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_104_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_105_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_106_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_107_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_108_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_15_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_16_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_21_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_22_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_33_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_34_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_35_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_42_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_4_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_54__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_55_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_56_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_57_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_58_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_59_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_60_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_61_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_62_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_63_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_64_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_65_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_66_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_67_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_68_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_69_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_6_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_70_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_71_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_72_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_73_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_74_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_75_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_76_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_77_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_78_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_79_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_80_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_81_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_82_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_83_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_84_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_85_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_86_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_87_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_88_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_89_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_90_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_91_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_92_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_93_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_94_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_95_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_96_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_97_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_98_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_99_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_17_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_18_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_21_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_23__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_24__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_25_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_26_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_27_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_28_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_29_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_32_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_33__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_36_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_37_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_38_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_41_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_42_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_45_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_46_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_47_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_48_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_49_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_4_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_50_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_55_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_56_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_57_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_60__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_61__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_62_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_63_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_64_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_65_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_66_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_67_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_68_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_69_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_6_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_70_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_71_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_72_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_73_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_74_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_75_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_76_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_77_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_78_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_79_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_80_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_81_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_82_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_83_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_84_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_85_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_86_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_87_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_88_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_89_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_8_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_12_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_15_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_16_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_17_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_18_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_19_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_20_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_21_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_22_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_23_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_24_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_25_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_26_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_27_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_28_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_29_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_30_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_31_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_32_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_34__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_35__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_36__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_37__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_38_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_39_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_3_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_40_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_41_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_42__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_43__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_44_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_45_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_46_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_47_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_48__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_49_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_4_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_50_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_51_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_52_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_53_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_54_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_55_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_56__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_57_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_58__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_59__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_60_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_61_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_10_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_12_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_14_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_15_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_16_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_17_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_18_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_19__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_20_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_21__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_22_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_23_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_24__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_25__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_26__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_27_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_28_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_29_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_30_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_31_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_32__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_33_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_34_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_35_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_36__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_37__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_38__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_3_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_4_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_6_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_8_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_10_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_12_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_14_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_15_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_16__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_17__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_18__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_19__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_20_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_4_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_8_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_9__1_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_10__1_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_4_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_6_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_7__1_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_8__1_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_9_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_24_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_25_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_26_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_27_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_28_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_29_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_30_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_31_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_32_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_33_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_34_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_35_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_36_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_37_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_38_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_39_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_40_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_41_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_42_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_43_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_44_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_45_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_46_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_47_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_48_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_49_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_50_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_51_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_52_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_53_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_54_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_14_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_15_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_17_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_18_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_19_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_20_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_21_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_22_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_27_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_28_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_29_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_30_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_31_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_32_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_33_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_34_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_35_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_36_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_37_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_38_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_39_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_40_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_41_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_42_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_43_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_44_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_45_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_46_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_47_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_48_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_49_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_50_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_51_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_52_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_53_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_54_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_55_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_56_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_17_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_18_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_19_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_20_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_23_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_24_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_25_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_26_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_27_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_28_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_29_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_30_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_31_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_32_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_36_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_37_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_38_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_39_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_40_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_41_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_43_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_44_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_45_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_46_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_47_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_48_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_49_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_50_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_51_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_52_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_53_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_19_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_20_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_22_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_30_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_31_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_34_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_35_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_39_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_40_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_43_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_44_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_51_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_52_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_53_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_54_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_58_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_59_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_33_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[6]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rStoredData[2]_i_54__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_23__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_24__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_33__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_36\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_45\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_49\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_57\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_60__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_61__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_25\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_26\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_27\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_32\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_34__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_35__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_36__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_37__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_38\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_40\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_42__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_43__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_44\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_45\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_48__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_50\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_52\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_56__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_58__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_59__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_21__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_24__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_25__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_26__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_27\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_28\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_32__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_33\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_34\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_35\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_36__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_38__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_16__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_17__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_18__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_19__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_20\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_9__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_10__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_8__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_9\ : label is "soft_lutpair15";
begin
\rStoredData[0]_i_100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20DBCD22658E5875"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_100_n_0\
    );
\rStoredData[0]_i_101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E00F3FFFFFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_101_n_0\
    );
\rStoredData[0]_i_102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66666C6696996626"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_102_n_0\
    );
\rStoredData[0]_i_103\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B999CC466233B99"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_103_n_0\
    );
\rStoredData[0]_i_104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99629D3BC499669C"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_104_n_0\
    );
\rStoredData[0]_i_105\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E56A866996E91A9"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_105_n_0\
    );
\rStoredData[0]_i_106\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8999177666E89999"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_106_n_0\
    );
\rStoredData[0]_i_107\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"665D999A26665999"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_107_n_0\
    );
\rStoredData[0]_i_108\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"269B66264D66994D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_108_n_0\
    );
\rStoredData[0]_i_109\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D33332CCCCD93333"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_109_n_0\
    );
\rStoredData[0]_i_110\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"433333CCCCC33333"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_110_n_0\
    );
\rStoredData[0]_i_111\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF40000000FD"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_111_n_0\
    );
\rStoredData[0]_i_112\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00FFFF30FF0000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_112_n_0\
    );
\rStoredData[0]_i_113\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CD204CFF33DFFB"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_113_n_0\
    );
\rStoredData[0]_i_114\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE377F33038080C8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_114_n_0\
    );
\rStoredData[0]_i_115\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"521FBDA4E5063FE8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_115_n_0\
    );
\rStoredData[0]_i_116\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A37DC222DE821DD7"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_116_n_0\
    );
\rStoredData[0]_i_117\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1466B990467B9844"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_117_n_0\
    );
\rStoredData[0]_i_118\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC4013BEEC0137EE"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_118_n_0\
    );
\rStoredData[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[0]_i_4_n_0\,
      I1 => s_axis_video_tdata(2),
      I2 => \rStoredData[0]_i_5_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[0]_i_6_n_0\,
      O => p_1_in(0)
    );
\rStoredData[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_7_n_0\,
      I1 => \rStoredData_reg[0]_i_8_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[0]_i_9_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[0]_i_10_n_0\,
      O => p_0_out(0)
    );
\rStoredData[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_11_n_0\,
      I1 => \rStoredData_reg[0]_i_12_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[0]_i_13_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[0]_i_14_n_0\,
      O => \rStoredData[0]_i_4_n_0\
    );
\rStoredData[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_15_n_0\,
      I1 => \rStoredData_reg[0]_i_16_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[0]_i_17_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[0]_i_18_n_0\,
      O => \rStoredData[0]_i_5_n_0\
    );
\rStoredData[0]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F01FFFF00FA00"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_55_n_0\
    );
\rStoredData[0]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008FFFFFFF7000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_56_n_0\
    );
\rStoredData[0]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0AFFFFF5FD0000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_57_n_0\
    );
\rStoredData[0]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF5F7F51008000A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_58_n_0\
    );
\rStoredData[0]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7655579581A888AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_59_n_0\
    );
\rStoredData[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_19_n_0\,
      I1 => \rStoredData_reg[0]_i_20_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[0]_i_21_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[0]_i_22_n_0\,
      O => \rStoredData[0]_i_6_n_0\
    );
\rStoredData[0]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD4C9BDD329B2632"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_60_n_0\
    );
\rStoredData[0]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC3BC4CC33CC33C3"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_61_n_0\
    );
\rStoredData[0]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A0FF052ADB54A2F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_62_n_0\
    );
\rStoredData[0]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54666AAB999D5446"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_63_n_0\
    );
\rStoredData[0]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"576EEAA899155576"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_64_n_0\
    );
\rStoredData[0]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAA80111575FEEEA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_65_n_0\
    );
\rStoredData[0]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FFFFEAA8000115"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_66_n_0\
    );
\rStoredData[0]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C9249E04F15AD1E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_67_n_0\
    );
\rStoredData[0]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD8819FD297F6222"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_68_n_0\
    );
\rStoredData[0]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC433B8CC533ACDD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_69_n_0\
    );
\rStoredData[0]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFF5FFEE001A011"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_70_n_0\
    );
\rStoredData[0]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008F0000FF70FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_71_n_0\
    );
\rStoredData[0]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D64995DBA9926B2"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_72_n_0\
    );
\rStoredData[0]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAEF7F751510808"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_73_n_0\
    );
\rStoredData[0]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BB26644D99BA266"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_74_n_0\
    );
\rStoredData[0]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B955955666AB6AB9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_75_n_0\
    );
\rStoredData[0]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E675599AAE675599"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_76_n_0\
    );
\rStoredData[0]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"157F15FEEA81A801"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_77_n_0\
    );
\rStoredData[0]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A665AA6659995559"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_78_n_0\
    );
\rStoredData[0]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0007FFE80017FFE"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_79_n_0\
    );
\rStoredData[0]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2665AA66599B55D9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_80_n_0\
    );
\rStoredData[0]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F00000080FFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_81_n_0\
    );
\rStoredData[0]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"665D99BA26645D99"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_82_n_0\
    );
\rStoredData[0]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F76601909BEEF30"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_83_n_0\
    );
\rStoredData[0]_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10518A88EEAE75F7"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_84_n_0\
    );
\rStoredData[0]_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC633BCC4333CCC3"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_85_n_0\
    );
\rStoredData[0]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7655571591A888EA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_86_n_0\
    );
\rStoredData[0]_i_87\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"92DB496D"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_87_n_0\
    );
\rStoredData[0]_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB6699629DAA54B9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_88_n_0\
    );
\rStoredData[0]_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"778876917691EE15"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_89_n_0\
    );
\rStoredData[0]_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C787871E878E861E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_90_n_0\
    );
\rStoredData[0]_i_91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"733C328C4DDBC9B2"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_91_n_0\
    );
\rStoredData[0]_i_92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66CC64D96499C999"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_92_n_0\
    );
\rStoredData[0]_i_93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E9867E69C1966C6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_93_n_0\
    );
\rStoredData[0]_i_94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3C7C3CE1C313833"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_94_n_0\
    );
\rStoredData[0]_i_95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCCC33BD0333CC40"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_95_n_0\
    );
\rStoredData[0]_i_96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D2C6D2434B2B2D3"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_96_n_0\
    );
\rStoredData[0]_i_97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A696869A965A9659"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_97_n_0\
    );
\rStoredData[0]_i_98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A515055F7AA8EAA5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_98_n_0\
    );
\rStoredData[0]_i_99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44EE11EF12E53C12"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[0]_i_99_n_0\
    );
\rStoredData[1]_i_100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2F2D2DBD2DB42D"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_100_n_0\
    );
\rStoredData[1]_i_101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088C88CCEEF7EF77"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_101_n_0\
    );
\rStoredData[1]_i_102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F0F4F0505A020B0"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_102_n_0\
    );
\rStoredData[1]_i_103\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E666777731111998"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_103_n_0\
    );
\rStoredData[1]_i_104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98888EEEE6E67777"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_104_n_0\
    );
\rStoredData[1]_i_105\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5075EFAFF5F78A0A"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_105_n_0\
    );
\rStoredData[1]_i_106\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBB2222004444D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_106_n_0\
    );
\rStoredData[1]_i_107\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080000F0F0FFF3FF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_107_n_0\
    );
\rStoredData[1]_i_108\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFF55040"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_108_n_0\
    );
\rStoredData[1]_i_109\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000FFFFFFFF4"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_109_n_0\
    );
\rStoredData[1]_i_110\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004F0000FFB0FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_110_n_0\
    );
\rStoredData[1]_i_111\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA67551955558AAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_111_n_0\
    );
\rStoredData[1]_i_112\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555D5D59BAAAAAA2"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_112_n_0\
    );
\rStoredData[1]_i_113\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"331CCC9B22774898"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_113_n_0\
    );
\rStoredData[1]_i_114\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8ACAD2D7F7F53520"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_114_n_0\
    );
\rStoredData[1]_i_115\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400AFDD0AFAF5000"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_115_n_0\
    );
\rStoredData[1]_i_116\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555546EAAAAB9D55"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_116_n_0\
    );
\rStoredData[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[1]_i_4_n_0\,
      I1 => s_axis_video_tdata(3),
      I2 => \rStoredData[1]_i_5_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[1]_i_6_n_0\,
      O => p_1_in(1)
    );
\rStoredData[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFF00010000"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[1]_i_23_n_0\
    );
\rStoredData[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BF5FF00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_24_n_0\
    );
\rStoredData[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333CCCCBCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_25_n_0\
    );
\rStoredData[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"334CCCCC32CCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_26_n_0\
    );
\rStoredData[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[1]_i_7_n_0\,
      I1 => \rStoredData_reg[1]_i_8_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[1]_i_9_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[1]_i_10_n_0\,
      O => p_0_out(1)
    );
\rStoredData[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_11_n_0\,
      I1 => \rStoredData_reg[1]_i_12_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[1]_i_13_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[1]_i_14_n_0\,
      O => \rStoredData[1]_i_4_n_0\
    );
\rStoredData[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_15_n_0\,
      I1 => \rStoredData_reg[1]_i_16_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[1]_i_17_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[1]_i_18_n_0\,
      O => \rStoredData[1]_i_5_n_0\
    );
\rStoredData[1]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F5F7751008080A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_57_n_0\
    );
\rStoredData[1]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98AA8AAEE6757755"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_58_n_0\
    );
\rStoredData[1]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999AAAAA2666665"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_59_n_0\
    );
\rStoredData[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_19_n_0\,
      I1 => \rStoredData_reg[1]_i_20_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[1]_i_21_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[1]_i_22_n_0\,
      O => \rStoredData[1]_i_6_n_0\
    );
\rStoredData[1]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAA0A1A5A585075"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_60_n_0\
    );
\rStoredData[1]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66444CCDDDD9999B"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_61_n_0\
    );
\rStoredData[1]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0807FFF0515AAA0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_62_n_0\
    );
\rStoredData[1]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCDDD9B933333"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_63_n_0\
    );
\rStoredData[1]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C4CCCCCCCCCCDD9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_64_n_0\
    );
\rStoredData[1]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EFD389C8176733C"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_65_n_0\
    );
\rStoredData[1]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2F5D5B52D2A280A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_66_n_0\
    );
\rStoredData[1]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA954669115EABB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_67_n_0\
    );
\rStoredData[1]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFFEA0000011"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_68_n_0\
    );
\rStoredData[1]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B00FFFFFCFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_69_n_0\
    );
\rStoredData[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[1]_i_23_n_0\,
      I1 => \rStoredData[1]_i_24_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[1]_i_25_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[1]_i_26_n_0\,
      O => \rStoredData[1]_i_7_n_0\
    );
\rStoredData[1]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7557751118808AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_70_n_0\
    );
\rStoredData[1]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFF751000008"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_71_n_0\
    );
\rStoredData[1]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFF4CCC3330FB33"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_72_n_0\
    );
\rStoredData[1]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAA880115577FEE"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_73_n_0\
    );
\rStoredData[1]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF7FF7551001088"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_74_n_0\
    );
\rStoredData[1]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"157FFFFEEA000001"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_75_n_0\
    );
\rStoredData[1]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"51100888AAEEFFF7"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_76_n_0\
    );
\rStoredData[1]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFE7FFF8000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_77_n_0\
    );
\rStoredData[1]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEF5511F7750088"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_78_n_0\
    );
\rStoredData[1]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008FFFFFFFF000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_79_n_0\
    );
\rStoredData[1]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0520A0AABAFADF5F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_80_n_0\
    );
\rStoredData[1]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43CC33D53A328C22"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_81_n_0\
    );
\rStoredData[1]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5D050000A0BAFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_82_n_0\
    );
\rStoredData[1]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55766EAAA9995556"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_83_n_0\
    );
\rStoredData[1]_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080A080EEFF7F7F5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_84_n_0\
    );
\rStoredData[1]_i_85\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E85EA17A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_85_n_0\
    );
\rStoredData[1]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0177EA001177AA11"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_86_n_0\
    );
\rStoredData[1]_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0005FFAA005FFEA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_87_n_0\
    );
\rStoredData[1]_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC08000033FFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[1]_i_88_n_0\
    );
\rStoredData[1]_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C7CC3334CCB303C"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[1]_i_89_n_0\
    );
\rStoredData[1]_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"870F871E871E0E1E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_90_n_0\
    );
\rStoredData[1]_i_91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A4AD2D24A4B5252"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_91_n_0\
    );
\rStoredData[1]_i_92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33CB33C33C334C34"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_92_n_0\
    );
\rStoredData[1]_i_93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555566EAA9995555"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[1]_i_93_n_0\
    );
\rStoredData[1]_i_94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59717175A5A7A7A6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_94_n_0\
    );
\rStoredData[1]_i_95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E8F8E8175F1F5E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[1]_i_95_n_0\
    );
\rStoredData[1]_i_96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"057FEA0005FFA005"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_96_n_0\
    );
\rStoredData[1]_i_97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C638B728D62B660"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_97_n_0\
    );
\rStoredData[1]_i_98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"331389E8FE339199"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_98_n_0\
    );
\rStoredData[1]_i_99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000040FFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_99_n_0\
    );
\rStoredData[2]_i_100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555556AAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_100_n_0\
    );
\rStoredData[2]_i_101\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95555"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_101_n_0\
    );
\rStoredData[2]_i_102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FF03000000FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_102_n_0\
    );
\rStoredData[2]_i_103\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"663333B9233B3399"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_103_n_0\
    );
\rStoredData[2]_i_104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FF0000FF00FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_104_n_0\
    );
\rStoredData[2]_i_105\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF509F055F2558A0"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_105_n_0\
    );
\rStoredData[2]_i_106\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CDDCDDDFF22BA22"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_106_n_0\
    );
\rStoredData[2]_i_107\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C73C0C3C"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_107_n_0\
    );
\rStoredData[2]_i_108\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999B993333263266"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_108_n_0\
    );
\rStoredData[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[2]_i_33_n_0\,
      I1 => \rStoredData[1]_i_25_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => \rStoredData[2]_i_34_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[2]_i_35_n_0\,
      O => \rStoredData[2]_i_13_n_0\
    );
\rStoredData[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_38_n_0\,
      I1 => \rStoredData_reg[2]_i_39_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_40_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_41_n_0\,
      O => \rStoredData[2]_i_15_n_0\
    );
\rStoredData[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[2]_i_42_n_0\,
      I1 => \rStoredData_reg[2]_i_43_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_44_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_45_n_0\,
      O => \rStoredData[2]_i_16_n_0\
    );
\rStoredData[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[2]_i_4_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => \rStoredData_reg[2]_i_5_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[2]_i_6_n_0\,
      O => p_1_in(2)
    );
\rStoredData[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BBFC88FF00FF00"
    )
        port map (
      I0 => \rStoredData[5]_i_32__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[4]_i_56__1_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[5]_i_26__1_n_0\,
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_21_n_0\
    );
\rStoredData[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC33FC00BB00BB00"
    )
        port map (
      I0 => \rStoredData[2]_i_54__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[4]_i_43__1_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[5]_i_21__1_n_0\,
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_22_n_0\
    );
\rStoredData[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_7_n_0\,
      I1 => \rStoredData_reg[2]_i_8_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[2]_i_9_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[2]_i_10_n_0\,
      O => p_0_out(2)
    );
\rStoredData[2]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00552240AA00FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_33_n_0\
    );
\rStoredData[2]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9DCCCCCCDCCCCC44"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_34_n_0\
    );
\rStoredData[2]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF7F00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_35_n_0\
    );
\rStoredData[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_11_n_0\,
      I1 => \rStoredData_reg[2]_i_12_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[2]_i_13_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_14_n_0\,
      O => \rStoredData[2]_i_4_n_0\
    );
\rStoredData[2]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCDD9B39B33"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_42_n_0\
    );
\rStoredData[2]_i_54__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      O => \rStoredData[2]_i_54__1_n_0\
    );
\rStoredData[2]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFCFFFF00010000"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_55_n_0\
    );
\rStoredData[2]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505A524A0A0F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_56_n_0\
    );
\rStoredData[2]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB9D99DDBB9D99DC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[2]_i_57_n_0\
    );
\rStoredData[2]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A0A5A0A5A0A4A2F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_58_n_0\
    );
\rStoredData[2]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5D5D5D550505042"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_59_n_0\
    );
\rStoredData[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_17_n_0\,
      I1 => \rStoredData_reg[2]_i_18_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_19_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_20_n_0\,
      O => \rStoredData[2]_i_6_n_0\
    );
\rStoredData[2]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBABBBD5555555"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_60_n_0\
    );
\rStoredData[2]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB9BD9D9D"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_61_n_0\
    );
\rStoredData[2]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2AAAAAAAABABAB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_62_n_0\
    );
\rStoredData[2]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BAAABDDC451232E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_63_n_0\
    );
\rStoredData[2]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65757575188A088A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_64_n_0\
    );
\rStoredData[2]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCD99BBDDD93322"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_65_n_0\
    );
\rStoredData[2]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38F0F0F0F0F0F0F5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_66_n_0\
    );
\rStoredData[2]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30EFFF00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_67_n_0\
    );
\rStoredData[2]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A020ABFFFFFF5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_68_n_0\
    );
\rStoredData[2]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD40000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_69_n_0\
    );
\rStoredData[2]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF8F0FFFFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_70_n_0\
    );
\rStoredData[2]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCDD99BB333"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_71_n_0\
    );
\rStoredData[2]_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002BFFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_72_n_0\
    );
\rStoredData[2]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24CCCCCC6CCCCCCD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[2]_i_73_n_0\
    );
\rStoredData[2]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFCF334CFFFF00"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_74_n_0\
    );
\rStoredData[2]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"655D55D999AA88AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_75_n_0\
    );
\rStoredData[2]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F04AF050F00F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_76_n_0\
    );
\rStoredData[2]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BB393B336262624"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_77_n_0\
    );
\rStoredData[2]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C6C4C223333333"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_78_n_0\
    );
\rStoredData[2]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333304C00CC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_79_n_0\
    );
\rStoredData[2]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF3333B3333330"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_80_n_0\
    );
\rStoredData[2]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022AAABBBFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_81_n_0\
    );
\rStoredData[2]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55D5555400002A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_82_n_0\
    );
\rStoredData[2]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB00000000FFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_83_n_0\
    );
\rStoredData[2]_i_84\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D40022FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_84_n_0\
    );
\rStoredData[2]_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E586E486B2C786C6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_85_n_0\
    );
\rStoredData[2]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66B954AAAA9944BB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_86_n_0\
    );
\rStoredData[2]_i_87\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABF5D5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_87_n_0\
    );
\rStoredData[2]_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54224422AAAAAABB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_88_n_0\
    );
\rStoredData[2]_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0BFDFDFDFD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_89_n_0\
    );
\rStoredData[2]_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFF0F0F000010"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_90_n_0\
    );
\rStoredData[2]_i_91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C08003337FFCCCC0"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_91_n_0\
    );
\rStoredData[2]_i_92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE808001017FFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_92_n_0\
    );
\rStoredData[2]_i_93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9115115577667666"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_93_n_0\
    );
\rStoredData[2]_i_94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F557EAAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_94_n_0\
    );
\rStoredData[2]_i_95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F7FFFF0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_95_n_0\
    );
\rStoredData[2]_i_96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAEA80AA00AA55"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_96_n_0\
    );
\rStoredData[2]_i_97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB33333330CC04CC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_97_n_0\
    );
\rStoredData[2]_i_98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666226666622B"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[2]_i_98_n_0\
    );
\rStoredData[2]_i_99\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99955646"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_99_n_0\
    );
\rStoredData[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAE5E5EFEA4040"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[3]_i_32_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[4]_i_34__1_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[3]_i_33__1_n_0\,
      O => \rStoredData[3]_i_11_n_0\
    );
\rStoredData[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_36_n_0\,
      I1 => \rStoredData[3]_i_37_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => \rStoredData[5]_i_19__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[3]_i_38_n_0\,
      O => \rStoredData[3]_i_13_n_0\
    );
\rStoredData[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_45_n_0\,
      I1 => \rStoredData[3]_i_46_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData[5]_i_30_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[3]_i_47_n_0\,
      O => \rStoredData[3]_i_17_n_0\
    );
\rStoredData[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[3]_i_48_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[3]_i_49_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_50_n_0\,
      O => \rStoredData[3]_i_18_n_0\
    );
\rStoredData[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[3]_i_4_n_0\,
      I1 => s_axis_video_tdata(5),
      I2 => \rStoredData[3]_i_5_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[3]_i_6_n_0\,
      O => p_1_in(3)
    );
\rStoredData[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_55_n_0\,
      I1 => \rStoredData[3]_i_56_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[3]_i_57_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[4]_i_59__1_n_0\,
      O => \rStoredData[3]_i_21_n_0\
    );
\rStoredData[3]_i_23__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_23__1_n_0\
    );
\rStoredData[3]_i_24__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8880000"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_24__1_n_0\
    );
\rStoredData[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAF0FC000C0"
    )
        port map (
      I0 => \rStoredData[6]_i_17__1_n_0\,
      I1 => \rStoredData[3]_i_60__1_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[6]_i_18__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_25_n_0\
    );
\rStoredData[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333333F7CFCFC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_26_n_0\
    );
\rStoredData[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_27_n_0\
    );
\rStoredData[3]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCCB3B3"
    )
        port map (
      I0 => \rStoredData[4]_i_42__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[5]_i_24__1_n_0\,
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_28_n_0\
    );
\rStoredData[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0F0A0F0F0CFF0C0"
    )
        port map (
      I0 => \rStoredData[4]_i_43__1_n_0\,
      I1 => \rStoredData[3]_i_61__1_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[4]_i_56__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_29_n_0\
    );
\rStoredData[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_7_n_0\,
      I1 => \rStoredData[3]_i_8_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[3]_i_9_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[3]_i_10_n_0\,
      O => p_0_out(3)
    );
\rStoredData[3]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F557FEAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_32_n_0\
    );
\rStoredData[3]_i_33__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_33__1_n_0\
    );
\rStoredData[3]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333337FC"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_36_n_0\
    );
\rStoredData[3]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7A6A6A6AAAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_37_n_0\
    );
\rStoredData[3]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F70F0F0F0F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_38_n_0\
    );
\rStoredData[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_11_n_0\,
      I1 => \rStoredData_reg[3]_i_12_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[3]_i_13_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[3]_i_14_n_0\,
      O => \rStoredData[3]_i_4_n_0\
    );
\rStoredData[3]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F55550505042"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_41_n_0\
    );
\rStoredData[3]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABB99B99D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_42_n_0\
    );
\rStoredData[3]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_45_n_0\
    );
\rStoredData[3]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01111111FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_46_n_0\
    );
\rStoredData[3]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA880001115555"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_47_n_0\
    );
\rStoredData[3]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333BB33339CCC"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_48_n_0\
    );
\rStoredData[3]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BF5ABF4"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_49_n_0\
    );
\rStoredData[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[3]_i_15_n_0\,
      I1 => \rStoredData_reg[3]_i_16_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[3]_i_17_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[3]_i_18_n_0\,
      O => \rStoredData[3]_i_5_n_0\
    );
\rStoredData[3]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FAAA555FB5F0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_50_n_0\
    );
\rStoredData[3]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57770000FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_55_n_0\
    );
\rStoredData[3]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF5FDF550004000"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_56_n_0\
    );
\rStoredData[3]_i_57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000010FF"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_57_n_0\
    );
\rStoredData[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[3]_i_19_n_0\,
      I1 => \rStoredData_reg[3]_i_20_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[3]_i_21_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[3]_i_22_n_0\,
      O => \rStoredData[3]_i_6_n_0\
    );
\rStoredData[3]_i_60__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_60__1_n_0\
    );
\rStoredData[3]_i_61__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      O => \rStoredData[3]_i_61__1_n_0\
    );
\rStoredData[3]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222776623774558"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[3]_i_62_n_0\
    );
\rStoredData[3]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0A0ABFFFFFF5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_63_n_0\
    );
\rStoredData[3]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555520A420A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_64_n_0\
    );
\rStoredData[3]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555550"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_65_n_0\
    );
\rStoredData[3]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB9B9B99D"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_66_n_0\
    );
\rStoredData[3]_i_67\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA81555"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_67_n_0\
    );
\rStoredData[3]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62AAAAAA2AAAAAAB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[3]_i_68_n_0\
    );
\rStoredData[3]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C3830333333333"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_69_n_0\
    );
\rStoredData[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCBBFC88FF88FF88"
    )
        port map (
      I0 => \rStoredData[7]_i_8__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[3]_i_23__1_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_24__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_7_n_0\
    );
\rStoredData[3]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD55F555400A000A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_70_n_0\
    );
\rStoredData[3]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA1"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_71_n_0\
    );
\rStoredData[3]_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCFB333"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_72_n_0\
    );
\rStoredData[3]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA89999911"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_73_n_0\
    );
\rStoredData[3]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33334CCC3000CCCC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_74_n_0\
    );
\rStoredData[3]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333333304CCC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_75_n_0\
    );
\rStoredData[3]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5FAAAA5F5EAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[3]_i_76_n_0\
    );
\rStoredData[3]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_77_n_0\
    );
\rStoredData[3]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"504040400A0A0A0A"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_78_n_0\
    );
\rStoredData[3]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA080FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_79_n_0\
    );
\rStoredData[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[3]_i_25_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[3]_i_26_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_27_n_0\,
      O => \rStoredData[3]_i_8_n_0\
    );
\rStoredData[3]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_80_n_0\
    );
\rStoredData[3]_i_81\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_81_n_0\
    );
\rStoredData[3]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001555500000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_82_n_0\
    );
\rStoredData[3]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD55555554"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_83_n_0\
    );
\rStoredData[3]_i_84\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFFDFD"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_84_n_0\
    );
\rStoredData[3]_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555500000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_85_n_0\
    );
\rStoredData[3]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F0F4F0F0F2A0AAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_86_n_0\
    );
\rStoredData[3]_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA99BB99AB99BB99"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_87_n_0\
    );
\rStoredData[3]_i_88\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF08000"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_88_n_0\
    );
\rStoredData[3]_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010101777F7F7F"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_89_n_0\
    );
\rStoredData[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBB8BBB8"
    )
        port map (
      I0 => p_0_out(4),
      I1 => sGammaReg(2),
      I2 => \rStoredData[4]_i_3_n_0\,
      I3 => \rStoredData[4]_i_4_n_0\,
      I4 => \rStoredData_reg[4]_i_5_n_0\,
      I5 => \sGammaReg_reg[1]\,
      O => p_0_in(4)
    );
\rStoredData[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3077304430FF30FF"
    )
        port map (
      I0 => \rStoredData[5]_i_28_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[5]_i_29_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[4]_i_25_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_11_n_0\
    );
\rStoredData[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFC88888888"
    )
        port map (
      I0 => \rStoredData[4]_i_26_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[4]_i_27_n_0\,
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_12_n_0\
    );
\rStoredData[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \rStoredData[5]_i_19__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[4]_i_32_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData_reg[4]_i_33_n_0\,
      O => \rStoredData[4]_i_15_n_0\
    );
\rStoredData[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF00AF00FCFFFC00"
    )
        port map (
      I0 => \rStoredData[4]_i_34__1_n_0\,
      I1 => \rStoredData[4]_i_35__1_n_0\,
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(7),
      I4 => \rStoredData[3]_i_27_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_16_n_0\
    );
\rStoredData[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB3333B8BB0000"
    )
        port map (
      I0 => \rStoredData[4]_i_36__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_37__1_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[6]_i_7_n_0\,
      O => \rStoredData[4]_i_17_n_0\
    );
\rStoredData[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[4]_i_18_n_0\
    );
\rStoredData[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[4]_i_38_n_0\,
      I1 => \rStoredData[4]_i_39_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => \rStoredData[4]_i_40_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[4]_i_41_n_0\,
      O => \rStoredData[4]_i_19_n_0\
    );
\rStoredData[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5A5E0A5A5A5A5A5"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[4]_i_42__1_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[4]_i_43__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_20_n_0\
    );
\rStoredData[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \rStoredData[4]_i_44_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[4]_i_45_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[4]_i_46_n_0\,
      O => \rStoredData[4]_i_21_n_0\
    );
\rStoredData[4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B8BBB8BB"
    )
        port map (
      I0 => \rStoredData[4]_i_47_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_7__1_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[4]_i_48__0_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_22_n_0\
    );
\rStoredData[4]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[4]_i_49_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[4]_i_50_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[4]_i_51_n_0\,
      O => \rStoredData[4]_i_23_n_0\
    );
\rStoredData[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DFDF0F00D0D0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[4]_i_52_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData[5]_i_30_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[4]_i_53_n_0\,
      O => \rStoredData[4]_i_24_n_0\
    );
\rStoredData[4]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_25_n_0\
    );
\rStoredData[4]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCC8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_26_n_0\
    );
\rStoredData[4]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_27_n_0\
    );
\rStoredData[4]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FF33BBB8CC00"
    )
        port map (
      I0 => \rStoredData[4]_i_54_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_37__1_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[4]_i_55_n_0\,
      O => \rStoredData[4]_i_28_n_0\
    );
\rStoredData[4]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFC0FFFFBFC00000"
    )
        port map (
      I0 => \rStoredData[4]_i_56__1_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData[4]_i_57_n_0\,
      O => \rStoredData[4]_i_29_n_0\
    );
\rStoredData[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020E0E0E020202"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => sGammaReg(0),
      I2 => sGammaReg(1),
      I3 => \rStoredData_reg[4]_i_8_n_0\,
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData_reg[4]_i_9_n_0\,
      O => \rStoredData[4]_i_3_n_0\
    );
\rStoredData[4]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC000C000C0"
    )
        port map (
      I0 => \rStoredData[4]_i_58__1_n_0\,
      I1 => \rStoredData[5]_i_35_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[4]_i_59__1_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_30_n_0\
    );
\rStoredData[4]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCFF3F3F3B3"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_31_n_0\
    );
\rStoredData[4]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_32_n_0\
    );
\rStoredData[4]_i_34__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_34__1_n_0\
    );
\rStoredData[4]_i_35__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC888"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_35__1_n_0\
    );
\rStoredData[4]_i_36__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_36__1_n_0\
    );
\rStoredData[4]_i_37__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003F7F"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_37__1_n_0\
    );
\rStoredData[4]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000557F"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_38_n_0\
    );
\rStoredData[4]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000800000000001"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_39_n_0\
    );
\rStoredData[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rStoredData_reg[4]_i_10_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_11_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[4]_i_12_n_0\,
      I5 => \sGammaReg_reg[0]\,
      O => \rStoredData[4]_i_4_n_0\
    );
\rStoredData[4]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_40_n_0\
    );
\rStoredData[4]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAAFEAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_41_n_0\
    );
\rStoredData[4]_i_42__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFC8"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_42__1_n_0\
    );
\rStoredData[4]_i_43__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      O => \rStoredData[4]_i_43__1_n_0\
    );
\rStoredData[4]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001555"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_44_n_0\
    );
\rStoredData[4]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_45_n_0\
    );
\rStoredData[4]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCCCCCCCC8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_46_n_0\
    );
\rStoredData[4]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300C040CCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_47_n_0\
    );
\rStoredData[4]_i_48__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5777FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_48__0_n_0\
    );
\rStoredData[4]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A889A98955555555"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_49_n_0\
    );
\rStoredData[4]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80033333"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_50_n_0\
    );
\rStoredData[4]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFF555554000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_51_n_0\
    );
\rStoredData[4]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_52_n_0\
    );
\rStoredData[4]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEAAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_53_n_0\
    );
\rStoredData[4]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555454540A2A2A2A"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_54_n_0\
    );
\rStoredData[4]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFF00000000"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_55_n_0\
    );
\rStoredData[4]_i_56__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_56__1_n_0\
    );
\rStoredData[4]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001FFFFFFFF00000"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_57_n_0\
    );
\rStoredData[4]_i_58__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_58__1_n_0\
    );
\rStoredData[4]_i_59__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCC8"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_59__1_n_0\
    );
\rStoredData[4]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666663733333322A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_60_n_0\
    );
\rStoredData[4]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F55FFEAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_61_n_0\
    );
\rStoredData[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => p_0_out(5),
      I1 => sGammaReg(2),
      I2 => \rStoredData[5]_i_3_n_0\,
      I3 => \rStoredData[5]_i_4_n_0\,
      I4 => \rStoredData[5]_i_5_n_0\,
      I5 => \rStoredData[5]_i_6_n_0\,
      O => p_0_in(5)
    );
\rStoredData[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55040504FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[5]_i_24__1_n_0\,
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_25__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_10_n_0\
    );
\rStoredData[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15555555"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => \rStoredData[5]_i_26__1_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_11_n_0\
    );
\rStoredData[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB88BBB8BBB888"
    )
        port map (
      I0 => \rStoredData[6]_i_12_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[5]_i_27_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[5]_i_28_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_12_n_0\
    );
\rStoredData[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCBB"
    )
        port map (
      I0 => \rStoredData[5]_i_29_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[5]_i_30_n_0\,
      I3 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_13_n_0\
    );
\rStoredData[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55EA55EA00"
    )
        port map (
      I0 => s_axis_video_tdata(9),
      I1 => s_axis_video_tdata(5),
      I2 => \rStoredData[5]_i_28_n_0\,
      I3 => s_axis_video_tdata(8),
      I4 => \rStoredData[5]_i_31_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_14_n_0\
    );
\rStoredData[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFB333333300000"
    )
        port map (
      I0 => \rStoredData[5]_i_32__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[5]_i_21__1_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_15_n_0\
    );
\rStoredData[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8383330333333333"
    )
        port map (
      I0 => \rStoredData[5]_i_32__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(6),
      I3 => \rStoredData[5]_i_33_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_16_n_0\
    );
\rStoredData[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0F0AF8FAF8F"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[5]_i_34_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[5]_i_35_n_0\,
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[5]_i_17_n_0\
    );
\rStoredData[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000003033303"
    )
        port map (
      I0 => \rStoredData[5]_i_36__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[5]_i_24__1_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_18_n_0\
    );
\rStoredData[5]_i_19__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_19__1_n_0\
    );
\rStoredData[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B833B83333333300"
    )
        port map (
      I0 => \rStoredData[6]_i_18__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[5]_i_24__1_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[5]_i_32__1_n_0\,
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_20_n_0\
    );
\rStoredData[5]_i_21__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C080"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      O => \rStoredData[5]_i_21__1_n_0\
    );
\rStoredData[5]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFAEA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[5]_i_37__1_n_0\,
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_38__1_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_22_n_0\
    );
\rStoredData[5]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C08080FCCCCCCC"
    )
        port map (
      I0 => \rStoredData[7]_i_10__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[5]_i_32__1_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_23_n_0\
    );
\rStoredData[5]_i_24__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      O => \rStoredData[5]_i_24__1_n_0\
    );
\rStoredData[5]_i_25__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_25__0_n_0\
    );
\rStoredData[5]_i_26__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      O => \rStoredData[5]_i_26__1_n_0\
    );
\rStoredData[5]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_27_n_0\
    );
\rStoredData[5]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_28_n_0\
    );
\rStoredData[5]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_29_n_0\
    );
\rStoredData[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rStoredData_reg[5]_i_9_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[5]_i_10_n_0\,
      I3 => s_axis_video_tdata(8),
      I4 => \rStoredData[5]_i_11_n_0\,
      I5 => \sGammaReg_reg[0]_0\,
      O => \rStoredData[5]_i_3_n_0\
    );
\rStoredData[5]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000111FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_30_n_0\
    );
\rStoredData[5]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_31_n_0\
    );
\rStoredData[5]_i_32__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      O => \rStoredData[5]_i_32__1_n_0\
    );
\rStoredData[5]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_33_n_0\
    );
\rStoredData[5]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_34_n_0\
    );
\rStoredData[5]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000057FF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_35_n_0\
    );
\rStoredData[5]_i_36__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      O => \rStoredData[5]_i_36__1_n_0\
    );
\rStoredData[5]_i_37__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      O => \rStoredData[5]_i_37__1_n_0\
    );
\rStoredData[5]_i_38__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_38__1_n_0\
    );
\rStoredData[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => sGammaReg(1),
      I2 => sGammaReg(0),
      O => \rStoredData[5]_i_4_n_0\
    );
\rStoredData[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \rStoredData[5]_i_12_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[5]_i_13_n_0\,
      I3 => s_axis_video_tdata(7),
      I4 => \rStoredData[5]_i_14_n_0\,
      I5 => \sGammaReg_reg[0]\,
      O => \rStoredData[5]_i_5_n_0\
    );
\rStoredData[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \rStoredData[5]_i_15_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[5]_i_16_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_17_n_0\,
      I5 => \sGammaReg_reg[1]\,
      O => \rStoredData[5]_i_6_n_0\
    );
\rStoredData[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8BB8888"
    )
        port map (
      I0 => \rStoredData[5]_i_18_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[5]_i_19__1_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData[5]_i_20_n_0\,
      O => \rStoredData[5]_i_7_n_0\
    );
\rStoredData[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(5),
      I2 => \rStoredData[5]_i_21__1_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_8_n_0\
    );
\rStoredData[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB3B3B3B0"
    )
        port map (
      I0 => \rStoredData[6]_i_18__1_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[6]_i_19__1_n_0\,
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_10_n_0\
    );
\rStoredData[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(2),
      I2 => \rStoredData[6]_i_20_n_0\,
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[6]_i_11_n_0\
    );
\rStoredData[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555557F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[6]_i_12_n_0\
    );
\rStoredData[6]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEA0000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(6),
      O => \rStoredData[6]_i_13_n_0\
    );
\rStoredData[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF75FF0000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => \rStoredData[5]_i_33_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(8),
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[6]_i_14_n_0\
    );
\rStoredData[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA888"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_10__1_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[6]_i_15_n_0\
    );
\rStoredData[6]_i_16__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      O => \rStoredData[6]_i_16__1_n_0\
    );
\rStoredData[6]_i_17__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[6]_i_17__1_n_0\
    );
\rStoredData[6]_i_18__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[6]_i_18__1_n_0\
    );
\rStoredData[6]_i_19__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      O => \rStoredData[6]_i_19__1_n_0\
    );
\rStoredData[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[6]_i_4_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[6]_i_5_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData_reg[6]_i_6_n_0\,
      O => p_1_in(6)
    );
\rStoredData[6]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[6]_i_20_n_0\
    );
\rStoredData[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE5555FFFE0000"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[6]_i_7_n_0\,
      I3 => s_axis_video_tdata(7),
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[6]_i_8_n_0\,
      O => p_0_out(6)
    );
\rStoredData[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCEEFFFFF0000000"
    )
        port map (
      I0 => \rStoredData[6]_i_9__1_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[6]_i_10_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[6]_i_4_n_0\
    );
\rStoredData[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5E0EFEFE5E0EAEA"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => \rStoredData[6]_i_11_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[6]_i_12_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData[6]_i_13_n_0\,
      O => \rStoredData[6]_i_5_n_0\
    );
\rStoredData[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_7_n_0\
    );
\rStoredData[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBF0FBFFFF0F0F0"
    )
        port map (
      I0 => \rStoredData[6]_i_16__1_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(7),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[6]_i_17__1_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[6]_i_8_n_0\
    );
\rStoredData[6]_i_9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_9__1_n_0\
    );
\rStoredData[7]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      O => \rStoredData[7]_i_10__1_n_0\
    );
\rStoredData[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CAFFCA00"
    )
        port map (
      I0 => \rStoredData[7]_i_4_n_0\,
      I1 => \rStoredData[7]_i_5_n_0\,
      I2 => sGammaReg(1),
      I3 => sGammaReg(0),
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[7]_i_6_n_0\,
      O => p_1_in(7)
    );
\rStoredData[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => s_axis_video_tdata(9),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_7__1_n_0\,
      I3 => s_axis_video_tdata(7),
      I4 => s_axis_video_tdata(8),
      O => p_0_out(7)
    );
\rStoredData[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE000"
    )
        port map (
      I0 => \rStoredData[7]_i_8__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(8),
      I3 => s_axis_video_tdata(7),
      I4 => s_axis_video_tdata(9),
      O => \rStoredData[7]_i_4_n_0\
    );
\rStoredData[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCCC888"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(8),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[7]_i_9_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[7]_i_5_n_0\
    );
\rStoredData[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAAA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_10__1_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[7]_i_6_n_0\
    );
\rStoredData[7]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[7]_i_7__1_n_0\
    );
\rStoredData[7]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[7]_i_8__1_n_0\
    );
\rStoredData[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[7]_i_9_n_0\
    );
\rStoredData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => p_0_in(0),
      Q => m_axis_video_tdata(0),
      R => '0'
    );
\rStoredData_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_1_in(0),
      I1 => p_0_out(0),
      O => p_0_in(0),
      S => sGammaReg(2)
    );
\rStoredData_reg[0]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_29_n_0\,
      I1 => \rStoredData_reg[0]_i_30_n_0\,
      O => \rStoredData_reg[0]_i_10_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_31_n_0\,
      I1 => \rStoredData_reg[0]_i_32_n_0\,
      O => \rStoredData_reg[0]_i_11_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_33_n_0\,
      I1 => \rStoredData_reg[0]_i_34_n_0\,
      O => \rStoredData_reg[0]_i_12_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_35_n_0\,
      I1 => \rStoredData_reg[0]_i_36_n_0\,
      O => \rStoredData_reg[0]_i_13_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_37_n_0\,
      I1 => \rStoredData_reg[0]_i_38_n_0\,
      O => \rStoredData_reg[0]_i_14_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_39_n_0\,
      I1 => \rStoredData_reg[0]_i_40_n_0\,
      O => \rStoredData_reg[0]_i_15_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_41_n_0\,
      I1 => \rStoredData_reg[0]_i_42_n_0\,
      O => \rStoredData_reg[0]_i_16_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_43_n_0\,
      I1 => \rStoredData_reg[0]_i_44_n_0\,
      O => \rStoredData_reg[0]_i_17_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_18\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_45_n_0\,
      I1 => \rStoredData_reg[0]_i_46_n_0\,
      O => \rStoredData_reg[0]_i_18_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_19\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_47_n_0\,
      I1 => \rStoredData_reg[0]_i_48_n_0\,
      O => \rStoredData_reg[0]_i_19_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_20\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_49_n_0\,
      I1 => \rStoredData_reg[0]_i_50_n_0\,
      O => \rStoredData_reg[0]_i_20_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_21\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_51_n_0\,
      I1 => \rStoredData_reg[0]_i_52_n_0\,
      O => \rStoredData_reg[0]_i_21_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_22\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_53_n_0\,
      I1 => \rStoredData_reg[0]_i_54_n_0\,
      O => \rStoredData_reg[0]_i_22_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_55_n_0\,
      I1 => \rStoredData[0]_i_56_n_0\,
      O => \rStoredData_reg[0]_i_23_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_57_n_0\,
      I1 => \rStoredData[0]_i_58_n_0\,
      O => \rStoredData_reg[0]_i_24_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_59_n_0\,
      I1 => \rStoredData[0]_i_60_n_0\,
      O => \rStoredData_reg[0]_i_25_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_61_n_0\,
      I1 => \rStoredData[0]_i_62_n_0\,
      O => \rStoredData_reg[0]_i_26_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_63_n_0\,
      I1 => \rStoredData[0]_i_64_n_0\,
      O => \rStoredData_reg[0]_i_27_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_65_n_0\,
      I1 => \rStoredData[0]_i_66_n_0\,
      O => \rStoredData_reg[0]_i_28_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_67_n_0\,
      I1 => \rStoredData[0]_i_68_n_0\,
      O => \rStoredData_reg[0]_i_29_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_69_n_0\,
      I1 => \rStoredData[0]_i_70_n_0\,
      O => \rStoredData_reg[0]_i_30_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_71_n_0\,
      I1 => \rStoredData[0]_i_72_n_0\,
      O => \rStoredData_reg[0]_i_31_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_73_n_0\,
      I1 => \rStoredData[0]_i_74_n_0\,
      O => \rStoredData_reg[0]_i_32_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_75_n_0\,
      I1 => \rStoredData[0]_i_76_n_0\,
      O => \rStoredData_reg[0]_i_33_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_77_n_0\,
      I1 => \rStoredData[0]_i_78_n_0\,
      O => \rStoredData_reg[0]_i_34_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_79_n_0\,
      I1 => \rStoredData[0]_i_80_n_0\,
      O => \rStoredData_reg[0]_i_35_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_81_n_0\,
      I1 => \rStoredData[0]_i_82_n_0\,
      O => \rStoredData_reg[0]_i_36_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_83_n_0\,
      I1 => \rStoredData[0]_i_84_n_0\,
      O => \rStoredData_reg[0]_i_37_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_85_n_0\,
      I1 => \rStoredData[0]_i_86_n_0\,
      O => \rStoredData_reg[0]_i_38_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_87_n_0\,
      I1 => \rStoredData[0]_i_88_n_0\,
      O => \rStoredData_reg[0]_i_39_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_89_n_0\,
      I1 => \rStoredData[0]_i_90_n_0\,
      O => \rStoredData_reg[0]_i_40_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_91_n_0\,
      I1 => \rStoredData[0]_i_92_n_0\,
      O => \rStoredData_reg[0]_i_41_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_42\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_93_n_0\,
      I1 => \rStoredData[0]_i_94_n_0\,
      O => \rStoredData_reg[0]_i_42_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_43\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_95_n_0\,
      I1 => \rStoredData[0]_i_96_n_0\,
      O => \rStoredData_reg[0]_i_43_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_44\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_97_n_0\,
      I1 => \rStoredData[0]_i_98_n_0\,
      O => \rStoredData_reg[0]_i_44_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_45\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_99_n_0\,
      I1 => \rStoredData[0]_i_100_n_0\,
      O => \rStoredData_reg[0]_i_45_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_46\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_101_n_0\,
      I1 => \rStoredData[0]_i_102_n_0\,
      O => \rStoredData_reg[0]_i_46_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_47\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_103_n_0\,
      I1 => \rStoredData[0]_i_104_n_0\,
      O => \rStoredData_reg[0]_i_47_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_48\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_105_n_0\,
      I1 => \rStoredData[0]_i_106_n_0\,
      O => \rStoredData_reg[0]_i_48_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_49\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_107_n_0\,
      I1 => \rStoredData[0]_i_108_n_0\,
      O => \rStoredData_reg[0]_i_49_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_50\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_109_n_0\,
      I1 => \rStoredData[0]_i_110_n_0\,
      O => \rStoredData_reg[0]_i_50_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_51\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_111_n_0\,
      I1 => \rStoredData[0]_i_112_n_0\,
      O => \rStoredData_reg[0]_i_51_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_52\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_113_n_0\,
      I1 => \rStoredData[0]_i_114_n_0\,
      O => \rStoredData_reg[0]_i_52_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_53\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_115_n_0\,
      I1 => \rStoredData[0]_i_116_n_0\,
      O => \rStoredData_reg[0]_i_53_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_54\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_117_n_0\,
      I1 => \rStoredData[0]_i_118_n_0\,
      O => \rStoredData_reg[0]_i_54_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_23_n_0\,
      I1 => \rStoredData_reg[0]_i_24_n_0\,
      O => \rStoredData_reg[0]_i_7_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_25_n_0\,
      I1 => \rStoredData_reg[0]_i_26_n_0\,
      O => \rStoredData_reg[0]_i_8_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_27_n_0\,
      I1 => \rStoredData_reg[0]_i_28_n_0\,
      O => \rStoredData_reg[0]_i_9_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => p_0_in(1),
      Q => m_axis_video_tdata(1),
      R => '0'
    );
\rStoredData_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_1_in(1),
      I1 => p_0_out(1),
      O => p_0_in(1),
      S => sGammaReg(2)
    );
\rStoredData_reg[1]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_31_n_0\,
      I1 => \rStoredData_reg[1]_i_32_n_0\,
      O => \rStoredData_reg[1]_i_10_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_33_n_0\,
      I1 => \rStoredData_reg[1]_i_34_n_0\,
      O => \rStoredData_reg[1]_i_11_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_35_n_0\,
      I1 => \rStoredData_reg[1]_i_36_n_0\,
      O => \rStoredData_reg[1]_i_12_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_37_n_0\,
      I1 => \rStoredData_reg[1]_i_38_n_0\,
      O => \rStoredData_reg[1]_i_13_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_39_n_0\,
      I1 => \rStoredData_reg[1]_i_40_n_0\,
      O => \rStoredData_reg[1]_i_14_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_41_n_0\,
      I1 => \rStoredData_reg[1]_i_42_n_0\,
      O => \rStoredData_reg[1]_i_15_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_43_n_0\,
      I1 => \rStoredData_reg[1]_i_44_n_0\,
      O => \rStoredData_reg[1]_i_16_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_45_n_0\,
      I1 => \rStoredData_reg[1]_i_46_n_0\,
      O => \rStoredData_reg[1]_i_17_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_18\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_47_n_0\,
      I1 => \rStoredData_reg[1]_i_48_n_0\,
      O => \rStoredData_reg[1]_i_18_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_19\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_49_n_0\,
      I1 => \rStoredData_reg[1]_i_50_n_0\,
      O => \rStoredData_reg[1]_i_19_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_20\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_51_n_0\,
      I1 => \rStoredData_reg[1]_i_52_n_0\,
      O => \rStoredData_reg[1]_i_20_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_21\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_53_n_0\,
      I1 => \rStoredData_reg[1]_i_54_n_0\,
      O => \rStoredData_reg[1]_i_21_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_22\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_55_n_0\,
      I1 => \rStoredData_reg[1]_i_56_n_0\,
      O => \rStoredData_reg[1]_i_22_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_57_n_0\,
      I1 => \rStoredData[1]_i_58_n_0\,
      O => \rStoredData_reg[1]_i_27_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_59_n_0\,
      I1 => \rStoredData[1]_i_60_n_0\,
      O => \rStoredData_reg[1]_i_28_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_61_n_0\,
      I1 => \rStoredData[1]_i_62_n_0\,
      O => \rStoredData_reg[1]_i_29_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_63_n_0\,
      I1 => \rStoredData[1]_i_64_n_0\,
      O => \rStoredData_reg[1]_i_30_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_65_n_0\,
      I1 => \rStoredData[1]_i_66_n_0\,
      O => \rStoredData_reg[1]_i_31_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_67_n_0\,
      I1 => \rStoredData[1]_i_68_n_0\,
      O => \rStoredData_reg[1]_i_32_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_69_n_0\,
      I1 => \rStoredData[1]_i_70_n_0\,
      O => \rStoredData_reg[1]_i_33_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_71_n_0\,
      I1 => \rStoredData[1]_i_72_n_0\,
      O => \rStoredData_reg[1]_i_34_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_73_n_0\,
      I1 => \rStoredData[1]_i_74_n_0\,
      O => \rStoredData_reg[1]_i_35_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_75_n_0\,
      I1 => \rStoredData[1]_i_76_n_0\,
      O => \rStoredData_reg[1]_i_36_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_77_n_0\,
      I1 => \rStoredData[1]_i_78_n_0\,
      O => \rStoredData_reg[1]_i_37_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_79_n_0\,
      I1 => \rStoredData[1]_i_80_n_0\,
      O => \rStoredData_reg[1]_i_38_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_81_n_0\,
      I1 => \rStoredData[1]_i_82_n_0\,
      O => \rStoredData_reg[1]_i_39_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_83_n_0\,
      I1 => \rStoredData[1]_i_84_n_0\,
      O => \rStoredData_reg[1]_i_40_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_85_n_0\,
      I1 => \rStoredData[1]_i_86_n_0\,
      O => \rStoredData_reg[1]_i_41_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_42\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_87_n_0\,
      I1 => \rStoredData[1]_i_88_n_0\,
      O => \rStoredData_reg[1]_i_42_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_43\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_89_n_0\,
      I1 => \rStoredData[1]_i_90_n_0\,
      O => \rStoredData_reg[1]_i_43_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_44\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_91_n_0\,
      I1 => \rStoredData[1]_i_92_n_0\,
      O => \rStoredData_reg[1]_i_44_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_45\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_93_n_0\,
      I1 => \rStoredData[1]_i_94_n_0\,
      O => \rStoredData_reg[1]_i_45_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_46\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_95_n_0\,
      I1 => \rStoredData[1]_i_96_n_0\,
      O => \rStoredData_reg[1]_i_46_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_47\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_97_n_0\,
      I1 => \rStoredData[1]_i_98_n_0\,
      O => \rStoredData_reg[1]_i_47_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_48\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_99_n_0\,
      I1 => \rStoredData[1]_i_100_n_0\,
      O => \rStoredData_reg[1]_i_48_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_49\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_101_n_0\,
      I1 => \rStoredData[1]_i_102_n_0\,
      O => \rStoredData_reg[1]_i_49_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_50\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_103_n_0\,
      I1 => \rStoredData[1]_i_104_n_0\,
      O => \rStoredData_reg[1]_i_50_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_51\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_105_n_0\,
      I1 => \rStoredData[1]_i_106_n_0\,
      O => \rStoredData_reg[1]_i_51_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_52\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_107_n_0\,
      I1 => \rStoredData[1]_i_108_n_0\,
      O => \rStoredData_reg[1]_i_52_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_53\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_109_n_0\,
      I1 => \rStoredData[1]_i_110_n_0\,
      O => \rStoredData_reg[1]_i_53_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_54\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_111_n_0\,
      I1 => \rStoredData[1]_i_112_n_0\,
      O => \rStoredData_reg[1]_i_54_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_55\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_113_n_0\,
      I1 => \rStoredData[1]_i_114_n_0\,
      O => \rStoredData_reg[1]_i_55_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_56\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_115_n_0\,
      I1 => \rStoredData[1]_i_116_n_0\,
      O => \rStoredData_reg[1]_i_56_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_27_n_0\,
      I1 => \rStoredData_reg[1]_i_28_n_0\,
      O => \rStoredData_reg[1]_i_8_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_29_n_0\,
      I1 => \rStoredData_reg[1]_i_30_n_0\,
      O => \rStoredData_reg[1]_i_9_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => p_0_in(2),
      Q => m_axis_video_tdata(2),
      R => '0'
    );
\rStoredData_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_1_in(2),
      I1 => p_0_out(2),
      O => p_0_in(2),
      S => sGammaReg(2)
    );
\rStoredData_reg[2]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_27_n_0\,
      I1 => \rStoredData_reg[2]_i_28_n_0\,
      O => \rStoredData_reg[2]_i_10_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_29_n_0\,
      I1 => \rStoredData_reg[2]_i_30_n_0\,
      O => \rStoredData_reg[2]_i_11_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_31_n_0\,
      I1 => \rStoredData_reg[2]_i_32_n_0\,
      O => \rStoredData_reg[2]_i_12_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_36_n_0\,
      I1 => \rStoredData_reg[2]_i_37_n_0\,
      O => \rStoredData_reg[2]_i_14_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_46_n_0\,
      I1 => \rStoredData_reg[2]_i_47_n_0\,
      O => \rStoredData_reg[2]_i_17_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_18\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_48_n_0\,
      I1 => \rStoredData_reg[2]_i_49_n_0\,
      O => \rStoredData_reg[2]_i_18_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_19\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_50_n_0\,
      I1 => \rStoredData_reg[2]_i_51_n_0\,
      O => \rStoredData_reg[2]_i_19_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_20\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_52_n_0\,
      I1 => \rStoredData_reg[2]_i_53_n_0\,
      O => \rStoredData_reg[2]_i_20_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_55_n_0\,
      I1 => \rStoredData[2]_i_56_n_0\,
      O => \rStoredData_reg[2]_i_23_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_57_n_0\,
      I1 => \rStoredData[2]_i_58_n_0\,
      O => \rStoredData_reg[2]_i_24_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_59_n_0\,
      I1 => \rStoredData[2]_i_60_n_0\,
      O => \rStoredData_reg[2]_i_25_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_61_n_0\,
      I1 => \rStoredData[2]_i_62_n_0\,
      O => \rStoredData_reg[2]_i_26_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_63_n_0\,
      I1 => \rStoredData[2]_i_64_n_0\,
      O => \rStoredData_reg[2]_i_27_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_65_n_0\,
      I1 => \rStoredData[2]_i_66_n_0\,
      O => \rStoredData_reg[2]_i_28_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_67_n_0\,
      I1 => \rStoredData[2]_i_68_n_0\,
      O => \rStoredData_reg[2]_i_29_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_69_n_0\,
      I1 => \rStoredData[2]_i_70_n_0\,
      O => \rStoredData_reg[2]_i_30_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_71_n_0\,
      I1 => \rStoredData[2]_i_72_n_0\,
      O => \rStoredData_reg[2]_i_31_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_73_n_0\,
      I1 => \rStoredData[2]_i_74_n_0\,
      O => \rStoredData_reg[2]_i_32_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_75_n_0\,
      I1 => \rStoredData[2]_i_76_n_0\,
      O => \rStoredData_reg[2]_i_36_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_77_n_0\,
      I1 => \rStoredData[2]_i_78_n_0\,
      O => \rStoredData_reg[2]_i_37_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_79_n_0\,
      I1 => \rStoredData[2]_i_80_n_0\,
      O => \rStoredData_reg[2]_i_38_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_81_n_0\,
      I1 => \rStoredData[2]_i_82_n_0\,
      O => \rStoredData_reg[2]_i_39_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_83_n_0\,
      I1 => \rStoredData[2]_i_84_n_0\,
      O => \rStoredData_reg[2]_i_40_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_85_n_0\,
      I1 => \rStoredData[2]_i_86_n_0\,
      O => \rStoredData_reg[2]_i_41_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_43\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_87_n_0\,
      I1 => \rStoredData[2]_i_88_n_0\,
      O => \rStoredData_reg[2]_i_43_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_44\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_89_n_0\,
      I1 => \rStoredData[2]_i_90_n_0\,
      O => \rStoredData_reg[2]_i_44_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_45\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_91_n_0\,
      I1 => \rStoredData[2]_i_92_n_0\,
      O => \rStoredData_reg[2]_i_45_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_46\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_93_n_0\,
      I1 => \rStoredData[2]_i_94_n_0\,
      O => \rStoredData_reg[2]_i_46_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_47\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_95_n_0\,
      I1 => \rStoredData[2]_i_96_n_0\,
      O => \rStoredData_reg[2]_i_47_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_48\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_97_n_0\,
      I1 => \rStoredData[2]_i_98_n_0\,
      O => \rStoredData_reg[2]_i_48_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_49\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_99_n_0\,
      I1 => \rStoredData[2]_i_100_n_0\,
      O => \rStoredData_reg[2]_i_49_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_15_n_0\,
      I1 => \rStoredData[2]_i_16_n_0\,
      O => \rStoredData_reg[2]_i_5_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_50\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_101_n_0\,
      I1 => \rStoredData[2]_i_102_n_0\,
      O => \rStoredData_reg[2]_i_50_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_51\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_103_n_0\,
      I1 => \rStoredData[2]_i_104_n_0\,
      O => \rStoredData_reg[2]_i_51_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_52\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_105_n_0\,
      I1 => \rStoredData[2]_i_106_n_0\,
      O => \rStoredData_reg[2]_i_52_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_53\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_107_n_0\,
      I1 => \rStoredData[2]_i_108_n_0\,
      O => \rStoredData_reg[2]_i_53_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_21_n_0\,
      I1 => \rStoredData[2]_i_22_n_0\,
      O => \rStoredData_reg[2]_i_7_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_23_n_0\,
      I1 => \rStoredData_reg[2]_i_24_n_0\,
      O => \rStoredData_reg[2]_i_8_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_25_n_0\,
      I1 => \rStoredData_reg[2]_i_26_n_0\,
      O => \rStoredData_reg[2]_i_9_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => p_0_in(3),
      Q => m_axis_video_tdata(3),
      R => '0'
    );
\rStoredData_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_1_in(3),
      I1 => p_0_out(3),
      O => p_0_in(3),
      S => sGammaReg(2)
    );
\rStoredData_reg[3]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_30_n_0\,
      I1 => \rStoredData_reg[3]_i_31_n_0\,
      O => \rStoredData_reg[3]_i_10_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_34_n_0\,
      I1 => \rStoredData_reg[3]_i_35_n_0\,
      O => \rStoredData_reg[3]_i_12_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_39_n_0\,
      I1 => \rStoredData_reg[3]_i_40_n_0\,
      O => \rStoredData_reg[3]_i_14_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_41_n_0\,
      I1 => \rStoredData[3]_i_42_n_0\,
      O => \rStoredData_reg[3]_i_15_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[3]_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_43_n_0\,
      I1 => \rStoredData_reg[3]_i_44_n_0\,
      O => \rStoredData_reg[3]_i_16_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[3]_i_19\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_51_n_0\,
      I1 => \rStoredData_reg[3]_i_52_n_0\,
      O => \rStoredData_reg[3]_i_19_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_20\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_53_n_0\,
      I1 => \rStoredData_reg[3]_i_54_n_0\,
      O => \rStoredData_reg[3]_i_20_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_22\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_58_n_0\,
      I1 => \rStoredData_reg[3]_i_59_n_0\,
      O => \rStoredData_reg[3]_i_22_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_62_n_0\,
      I1 => \rStoredData[3]_i_63_n_0\,
      O => \rStoredData_reg[3]_i_30_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_64_n_0\,
      I1 => \rStoredData[3]_i_65_n_0\,
      O => \rStoredData_reg[3]_i_31_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_66_n_0\,
      I1 => \rStoredData[3]_i_67_n_0\,
      O => \rStoredData_reg[3]_i_34_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_68_n_0\,
      I1 => \rStoredData[3]_i_69_n_0\,
      O => \rStoredData_reg[3]_i_35_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_70_n_0\,
      I1 => \rStoredData[3]_i_71_n_0\,
      O => \rStoredData_reg[3]_i_39_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_72_n_0\,
      I1 => \rStoredData[3]_i_73_n_0\,
      O => \rStoredData_reg[3]_i_40_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_43\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_74_n_0\,
      I1 => \rStoredData[3]_i_75_n_0\,
      O => \rStoredData_reg[3]_i_43_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_44\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_76_n_0\,
      I1 => \rStoredData[3]_i_77_n_0\,
      O => \rStoredData_reg[3]_i_44_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_51\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_78_n_0\,
      I1 => \rStoredData[3]_i_79_n_0\,
      O => \rStoredData_reg[3]_i_51_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_52\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_80_n_0\,
      I1 => \rStoredData[3]_i_81_n_0\,
      O => \rStoredData_reg[3]_i_52_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_53\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_82_n_0\,
      I1 => \rStoredData[3]_i_83_n_0\,
      O => \rStoredData_reg[3]_i_53_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_54\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_84_n_0\,
      I1 => \rStoredData[3]_i_85_n_0\,
      O => \rStoredData_reg[3]_i_54_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_58\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_86_n_0\,
      I1 => \rStoredData[3]_i_87_n_0\,
      O => \rStoredData_reg[3]_i_58_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_59\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_88_n_0\,
      I1 => \rStoredData[3]_i_89_n_0\,
      O => \rStoredData_reg[3]_i_59_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_28_n_0\,
      I1 => \rStoredData[3]_i_29_n_0\,
      O => \rStoredData_reg[3]_i_9_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => p_0_in(4),
      Q => m_axis_video_tdata(4),
      R => '0'
    );
\rStoredData_reg[4]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_23_n_0\,
      I1 => \rStoredData[4]_i_24_n_0\,
      O => \rStoredData_reg[4]_i_10_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_28_n_0\,
      I1 => \rStoredData[4]_i_29_n_0\,
      O => \rStoredData_reg[4]_i_13_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[4]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_30_n_0\,
      I1 => \rStoredData[4]_i_31_n_0\,
      O => \rStoredData_reg[4]_i_14_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[4]_i_6_n_0\,
      I1 => \rStoredData_reg[4]_i_7_n_0\,
      O => p_0_out(4),
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[4]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_60_n_0\,
      I1 => \rStoredData[4]_i_61_n_0\,
      O => \rStoredData_reg[4]_i_33_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[4]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[4]_i_13_n_0\,
      I1 => \rStoredData_reg[4]_i_14_n_0\,
      O => \rStoredData_reg[4]_i_5_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_15_n_0\,
      I1 => \rStoredData[4]_i_16_n_0\,
      O => \rStoredData_reg[4]_i_6_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_17_n_0\,
      I1 => \rStoredData[4]_i_18_n_0\,
      O => \rStoredData_reg[4]_i_7_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_19_n_0\,
      I1 => \rStoredData[4]_i_20_n_0\,
      O => \rStoredData_reg[4]_i_8_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_21_n_0\,
      I1 => \rStoredData[4]_i_22_n_0\,
      O => \rStoredData_reg[4]_i_9_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => p_0_in(5),
      Q => m_axis_video_tdata(5),
      R => '0'
    );
\rStoredData_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[5]_i_7_n_0\,
      I1 => \rStoredData[5]_i_8_n_0\,
      O => p_0_out(5),
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[5]_i_22_n_0\,
      I1 => \rStoredData[5]_i_23_n_0\,
      O => \rStoredData_reg[5]_i_9_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => p_0_in(6),
      Q => m_axis_video_tdata(6),
      R => '0'
    );
\rStoredData_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_1_in(6),
      I1 => p_0_out(6),
      O => p_0_in(6),
      S => sGammaReg(2)
    );
\rStoredData_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[6]_i_14_n_0\,
      I1 => \rStoredData[6]_i_15_n_0\,
      O => \rStoredData_reg[6]_i_6_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => p_0_in(7),
      Q => m_axis_video_tdata(7),
      R => '0'
    );
\rStoredData_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_1_in(7),
      I1 => p_0_out(7),
      O => p_0_in(7),
      S => sGammaReg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_0 is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sGammaReg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sGammaReg_reg[1]\ : in STD_LOGIC;
    \sGammaReg_reg[0]\ : in STD_LOGIC;
    \sGammaReg_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    StreamClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_0 : entity is "StoredGammaCoefs";
end design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_0;

architecture STRUCTURE of design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_0 is
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rStoredData[0]_i_100__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_101__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_102__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_103__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_104__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_105__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_106__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_107__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_108__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_109__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_110__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_111__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_112__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_113__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_114__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_115__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_116__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_117__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_118__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_55__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_56__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_57__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_58__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_59__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_60__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_61__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_62__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_63__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_64__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_65__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_66__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_67__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_68__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_69__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_70__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_71__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_72__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_73__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_74__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_75__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_76__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_77__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_78__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_79__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_80__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_81__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_82__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_83__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_84__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_85__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_86__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_87__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_88__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_89__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_90__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_91__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_92__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_93__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_94__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_95__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_96__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_97__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_98__0_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_99__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_100__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_101__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_102__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_103__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_104__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_105__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_106__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_107__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_108__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_109__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_110__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_111__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_112__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_113__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_114__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_115__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_116__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_117_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_118_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_55_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_56__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_57__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_58__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_59__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_60__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_61__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_62__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_63__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_64__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_65__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_66__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_67__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_68__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_69__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_70__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_71__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_72__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_73__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_74__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_75__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_76__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_77__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_78__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_79__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_80__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_81__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_82__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_83__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_84__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_85__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_86__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_87__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_88__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_89__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_90__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_91__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_92__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_93__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_94__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_95__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_96__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_97__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_98__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_99__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_100__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_101__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_102__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_103__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_104__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_105__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_106__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_107__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_108__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_109_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_110_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_111_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_15__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_16__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_21__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_22__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_23_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_42__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_54_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_55__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_56__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_57__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_58__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_59__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_60__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_61__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_62__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_63__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_64__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_65__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_66__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_67__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_68__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_69__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_70__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_71__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_72__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_73__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_74__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_75__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_76__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_77__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_78__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_79__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_80__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_81__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_82__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_83__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_84__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_85__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_86__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_87__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_88__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_89__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_90__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_91__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_92__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_93__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_94__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_95__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_96__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_97__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_98__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_99__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_17__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_18__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_21__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_23_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_24_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_25__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_26__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_27__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_28__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_29__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_30_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_33_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_34__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_41__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_42__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_45__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_46__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_47__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_48__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_49__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_50__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_55__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_56__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_57__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_60__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_61__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_62__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_63__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_64__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_65__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_66__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_67__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_68__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_69__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_70__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_71__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_72__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_73__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_74__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_75__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_76__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_77__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_78__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_79__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_80__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_81__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_82__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_83__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_84__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_85__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_86__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_87__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_88__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_89__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_90_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_91_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_92_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_93_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_94_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_14_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_15__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_16__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_17__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_18__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_19__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_20__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_21__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_22__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_23__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_24__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_25__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_26__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_27__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_28__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_29__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_30__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_31__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_32__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_33_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_34_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_35_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_36__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_37_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_38__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_40__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_41__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_42_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_43_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_44__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_45__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_46__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_47__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_48__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_49__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_50__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_51__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_52__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_53__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_54__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_55__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_56_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_57__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_58_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_59_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_5_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_10__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_11__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_13__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_14__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_15__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_16__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_17__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_18__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_19_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_20__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_21_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_22__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_23__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_24__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_25__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_26_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_27__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_28__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_29__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_30__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_31__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_32_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_33__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_34__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_35__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_36__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_37_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_38_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_39_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_40__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_41_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_42_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_6__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_7__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_8__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_10__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_11__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_12__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_13__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_14__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_15__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_16__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_17_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_18_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_19_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_7__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_8__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_9_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_10__0_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_8_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_9__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_12__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_13__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_14__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_15__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_16__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_17__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_18__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_19__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_20__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_21__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_22__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_23__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_24__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_25__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_26__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_27__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_28__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_29__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_30__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_31__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_32__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_33__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_34__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_35__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_36__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_37__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_38__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_39__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_40__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_41__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_42__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_43__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_44__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_45__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_46__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_47__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_48__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_49__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_50__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_51__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_52__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_53__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_54__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_10__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_11__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_12__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_13__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_14__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_15__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_16__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_17__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_18__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_19__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_20__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_21__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_22__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_23_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_24_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_25_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_26_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_27__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_28__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_29__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_30__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_31__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_32__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_33__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_34__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_35__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_36__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_37__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_38__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_39__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_40__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_41__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_42__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_43__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_44__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_45__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_46__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_47__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_48__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_49__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_50__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_51__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_52__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_53__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_54__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_8__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_9__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_10__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_11__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_12__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_14__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_17__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_18__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_19__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_20__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_24__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_25__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_26__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_27__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_28__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_29__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_30__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_31__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_32__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_33_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_34_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_35_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_36__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_37__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_38__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_39__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_40__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_41__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_43__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_44__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_45__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_46__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_47__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_48__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_49__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_50__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_51__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_52__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_53__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_8__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_9__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_12__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_14__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_15__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_16__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_19__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_20__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_22__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_31__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_32_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_35__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_36_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_37_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_38_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_39__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_40__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_43__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_44__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_51__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_52__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_53__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_54__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_58__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_59__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_39_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[5]_i_9__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[6]_i_6__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rStoredData[3]_i_23\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_24\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_25__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_34__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_45__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_49__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_57__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_60__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_61__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_62__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_63__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_27__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_29__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_31__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_32__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_33\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_36__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_38__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_40__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_41__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_43\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_45__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_47__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_48__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_49__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_53__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_55__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_20__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_23__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_24__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_25__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_29__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_30__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_31__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_32\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_33__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_34__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_35__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_36__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_37\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_38\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_40__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_41\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_15__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_16__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_17\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_18\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_19\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_9\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_10__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_9__0\ : label is "soft_lutpair36";
begin
\rStoredData[0]_i_100__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11A1DE14EB4E11B9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_100__0_n_0\
    );
\rStoredData[0]_i_101__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B200FFFFDDFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_101__0_n_0\
    );
\rStoredData[0]_i_102__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5598AA6675598AA6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_102__0_n_0\
    );
\rStoredData[0]_i_103__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36B693CB9293C949"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_103__0_n_0\
    );
\rStoredData[0]_i_104__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"969293DBC949696C"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_104__0_n_0\
    );
\rStoredData[0]_i_105__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65E6A686969E9A19"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_105__0_n_0\
    );
\rStoredData[0]_i_106__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"899966E817769999"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_106__0_n_0\
    );
\rStoredData[0]_i_107__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"665D2666999A5999"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_107__0_n_0\
    );
\rStoredData[0]_i_108__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"296B626646D6949D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_108__0_n_0\
    );
\rStoredData[0]_i_109__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3CC323333D9CC33"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_109__0_n_0\
    );
\rStoredData[0]_i_110__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C3C33333C33C3C3"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_110__0_n_0\
    );
\rStoredData[0]_i_111__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF40000000FD"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_111__0_n_0\
    );
\rStoredData[0]_i_112__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00FFFF30FF0000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_112__0_n_0\
    );
\rStoredData[0]_i_113__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CD204CFF33DFFB"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_113__0_n_0\
    );
\rStoredData[0]_i_114__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE377F33038080C8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_114__0_n_0\
    );
\rStoredData[0]_i_115__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52E5BD3F1F06A4E8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_115__0_n_0\
    );
\rStoredData[0]_i_116__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A37DC222DE821DD7"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_116__0_n_0\
    );
\rStoredData[0]_i_117__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1446B998676B9404"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_117__0_n_0\
    );
\rStoredData[0]_i_118__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECC40011337BEEE"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_118__0_n_0\
    );
\rStoredData[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[0]_i_4__0_n_0\,
      I1 => s_axis_video_tdata(2),
      I2 => \rStoredData[0]_i_5__0_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[0]_i_6__0_n_0\,
      O => \p_1_in__0\(0)
    );
\rStoredData[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_7__0_n_0\,
      I1 => \rStoredData_reg[0]_i_8__0_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[0]_i_9__0_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[0]_i_10__0_n_0\,
      O => \rStoredData[0]_i_3__0_n_0\
    );
\rStoredData[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_11__0_n_0\,
      I1 => \rStoredData_reg[0]_i_12__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[0]_i_13__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[0]_i_14__0_n_0\,
      O => \rStoredData[0]_i_4__0_n_0\
    );
\rStoredData[0]_i_55__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F70F00F1AF0F0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_55__0_n_0\
    );
\rStoredData[0]_i_56__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F87F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_56__0_n_0\
    );
\rStoredData[0]_i_57__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0AF5FDFFFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_57__0_n_0\
    );
\rStoredData[0]_i_58__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FF551000008A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_58__0_n_0\
    );
\rStoredData[0]_i_59__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7655579581A888AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_59__0_n_0\
    );
\rStoredData[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_15__0_n_0\,
      I1 => \rStoredData_reg[0]_i_16__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[0]_i_17__0_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[0]_i_18__0_n_0\,
      O => \rStoredData[0]_i_5__0_n_0\
    );
\rStoredData[0]_i_60__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4DC9DBD392B2362"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_60__0_n_0\
    );
\rStoredData[0]_i_61__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3CBCC4C3C3C3C33"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_61__0_n_0\
    );
\rStoredData[0]_i_62__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AF00F52AD4AB52F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_62__0_n_0\
    );
\rStoredData[0]_i_63__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5969496D65A4A4B6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_63__0_n_0\
    );
\rStoredData[0]_i_64__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5961E5A779E5A586"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_64__0_n_0\
    );
\rStoredData[0]_i_65__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAA8575F0111EEEA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_65__0_n_0\
    );
\rStoredData[0]_i_66__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AF078F0F0E1F1A5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_66__0_n_0\
    );
\rStoredData[0]_i_67__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34CF4A9D9125E10E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_67__0_n_0\
    );
\rStoredData[0]_i_68__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD8819FD297F6222"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_68__0_n_0\
    );
\rStoredData[0]_i_69__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC53ABC43338DCD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_69__0_n_0\
    );
\rStoredData[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_19__0_n_0\,
      I1 => \rStoredData_reg[0]_i_20__0_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[0]_i_21__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[0]_i_22__0_n_0\,
      O => \rStoredData[0]_i_6__0_n_0\
    );
\rStoredData[0]_i_70__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FFFFFEEA000111"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_70__0_n_0\
    );
\rStoredData[0]_i_71__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080F0000F7F0FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_71__0_n_0\
    );
\rStoredData[0]_i_72__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"46B9D4A9952B9D62"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_72__0_n_0\
    );
\rStoredData[0]_i_73__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAE5151F7F70808"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_73__0_n_0\
    );
\rStoredData[0]_i_74__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BB2D99B6464A626"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_74__0_n_0\
    );
\rStoredData[0]_i_75__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B995666A5556ABB9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_75__0_n_0\
    );
\rStoredData[0]_i_76__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA6E7657559599A9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_76__0_n_0\
    );
\rStoredData[0]_i_77__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11EA55A87F80FE11"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_77__0_n_0\
    );
\rStoredData[0]_i_78__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A665AA6659995559"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_78__0_n_0\
    );
\rStoredData[0]_i_79__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A87700FF00FF01EE"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_79__0_n_0\
    );
\rStoredData[0]_i_80__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2665AA66599B55D9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_80__0_n_0\
    );
\rStoredData[0]_i_81__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F8000FF00FF00FF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_81__0_n_0\
    );
\rStoredData[0]_i_82__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"665D266499BA5D99"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_82__0_n_0\
    );
\rStoredData[0]_i_83__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"860E71B3F09F69E0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_83__0_n_0\
    );
\rStoredData[0]_i_84__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1051EEAE8A8875F7"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_84__0_n_0\
    );
\rStoredData[0]_i_85__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C43C63CCC3BC33C3"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_85__0_n_0\
    );
\rStoredData[0]_i_86__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"769155A8578815EA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_86__0_n_0\
    );
\rStoredData[0]_i_87__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9D462B9D"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_87__0_n_0\
    );
\rStoredData[0]_i_88__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB999D546662AAB9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_88__0_n_0\
    );
\rStoredData[0]_i_89__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5577FEEAA8811155"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_89__0_n_0\
    );
\rStoredData[0]_i_90__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA880011557FFEEA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_90__0_n_0\
    );
\rStoredData[0]_i_91__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"533A32ECCCD3D932"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_91__0_n_0\
    );
\rStoredData[0]_i_92__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5756EEEAA8811515"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_92__0_n_0\
    );
\rStoredData[0]_i_93__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9DB99D392B626246"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_93__0_n_0\
    );
\rStoredData[0]_i_94__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC32CC4CD3CC33DB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_94__0_n_0\
    );
\rStoredData[0]_i_95__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC339C4333CCC4"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_95__0_n_0\
    );
\rStoredData[0]_i_96__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4623DCC43BB94623"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_96__0_n_0\
    );
\rStoredData[0]_i_97__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9956669155AAA9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_97__0_n_0\
    );
\rStoredData[0]_i_98__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"89116EEA5577A899"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_98__0_n_0\
    );
\rStoredData[0]_i_99__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FC43DC17A9249E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_99__0_n_0\
    );
\rStoredData[1]_i_100__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2232EC22CD6CD9DD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_100__0_n_0\
    );
\rStoredData[1]_i_101__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00000020FFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_101__0_n_0\
    );
\rStoredData[1]_i_102__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AAF00AAFD54FFD5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_102__0_n_0\
    );
\rStoredData[1]_i_103__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088C88CCEEF7EF77"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_103__0_n_0\
    );
\rStoredData[1]_i_104__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F4F0F050520A0B0"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_104__0_n_0\
    );
\rStoredData[1]_i_105__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E361717961617978"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_105__0_n_0\
    );
\rStoredData[1]_i_106__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9888E6E68EEE7777"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_106__0_n_0\
    );
\rStoredData[1]_i_107__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5075EFAFF5F78A0A"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_107__0_n_0\
    );
\rStoredData[1]_i_108__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2B4B024B024B42D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_108__0_n_0\
    );
\rStoredData[1]_i_109__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080000F0F0F3FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_109__0_n_0\
    );
\rStoredData[1]_i_110__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9DCCDC44"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_110__0_n_0\
    );
\rStoredData[1]_i_111__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0F0FF4"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_111__0_n_0\
    );
\rStoredData[1]_i_112__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004F0000FFB0FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_112__0_n_0\
    );
\rStoredData[1]_i_113__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA67551955558AAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_113__0_n_0\
    );
\rStoredData[1]_i_114__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555D55D9BAAAAAA2"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_114__0_n_0\
    );
\rStoredData[1]_i_115__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232C4C817C799B8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_115__0_n_0\
    );
\rStoredData[1]_i_116__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8ACAD2D7F7F53520"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_116__0_n_0\
    );
\rStoredData[1]_i_117\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FDAF500AD0AF00"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_117_n_0\
    );
\rStoredData[1]_i_118\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A496D5A5BE5A5"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_118_n_0\
    );
\rStoredData[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[1]_i_4__0_n_0\,
      I1 => s_axis_video_tdata(3),
      I2 => \rStoredData[1]_i_5__0_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[1]_i_6__0_n_0\,
      O => \p_1_in__0\(1)
    );
\rStoredData[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_7_n_0\,
      I1 => \rStoredData_reg[1]_i_8__0_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[1]_i_9__0_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[1]_i_10__0_n_0\,
      O => \rStoredData[1]_i_3__0_n_0\
    );
\rStoredData[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_11__0_n_0\,
      I1 => \rStoredData_reg[1]_i_12__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[1]_i_13__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[1]_i_14__0_n_0\,
      O => \rStoredData[1]_i_4__0_n_0\
    );
\rStoredData[1]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"334C32CCCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_55_n_0\
    );
\rStoredData[1]_i_56__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3C3C3CCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_56__0_n_0\
    );
\rStoredData[1]_i_57__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23DDFF00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_57__0_n_0\
    );
\rStoredData[1]_i_58__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFF00010000"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[1]_i_58__0_n_0\
    );
\rStoredData[1]_i_59__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77F7551008008A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_59__0_n_0\
    );
\rStoredData[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_15__0_n_0\,
      I1 => \rStoredData_reg[1]_i_16__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[1]_i_17__0_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[1]_i_18__0_n_0\,
      O => \rStoredData[1]_i_5__0_n_0\
    );
\rStoredData[1]_i_60__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98E6AA758A77AE55"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_60__0_n_0\
    );
\rStoredData[1]_i_61__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA696A692A696A5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_61__0_n_0\
    );
\rStoredData[1]_i_62__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF5AAA580A501A75"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_62__0_n_0\
    );
\rStoredData[1]_i_63__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66444CCDDDD9999B"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_63__0_n_0\
    );
\rStoredData[1]_i_64__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0807FFF0515A8A8"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_64__0_n_0\
    );
\rStoredData[1]_i_65__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCDCDCD9393B333"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_65__0_n_0\
    );
\rStoredData[1]_i_66__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C4CCCCCCCCDCDC9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_66__0_n_0\
    );
\rStoredData[1]_i_67__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2387F973E813DC6C"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_67__0_n_0\
    );
\rStoredData[1]_i_68__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2F5D5B52D2A280A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_68__0_n_0\
    );
\rStoredData[1]_i_69__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A4A6969E1A1B5B"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_69__0_n_0\
    );
\rStoredData[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_19__0_n_0\,
      I1 => \rStoredData_reg[1]_i_20__0_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[1]_i_21__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[1]_i_22__0_n_0\,
      O => \rStoredData[1]_i_6__0_n_0\
    );
\rStoredData[1]_i_70__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FA0FF00FF00FE11"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_70__0_n_0\
    );
\rStoredData[1]_i_71__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2300FCFFFFFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_71__0_n_0\
    );
\rStoredData[1]_i_72__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7117708558851AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_72__0_n_0\
    );
\rStoredData[1]_i_73__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF51FF00FF00F708"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_73__0_n_0\
    );
\rStoredData[1]_i_74__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFF4CCC3330FB33"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_74__0_n_0\
    );
\rStoredData[1]_i_75__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE15AA57887F01EE"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_75__0_n_0\
    );
\rStoredData[1]_i_76__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5F1E1F0F0787058"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_76__0_n_0\
    );
\rStoredData[1]_i_77__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E5A70F0F0F0F0E1"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_77__0_n_0\
    );
\rStoredData[1]_i_78__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5110AEAE0888FFF7"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_78__0_n_0\
    );
\rStoredData[1]_i_79__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0E78F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_79__0_n_0\
    );
\rStoredData[1]_i_80__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEF5511F7750088"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_80__0_n_0\
    );
\rStoredData[1]_i_81__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F8FF0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_81__0_n_0\
    );
\rStoredData[1]_i_82__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0520BAFAA0AADF5F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_82__0_n_0\
    );
\rStoredData[1]_i_83__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C333CA23D8235C2"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_83__0_n_0\
    );
\rStoredData[1]_i_84__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF005DA005BA00FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_84__0_n_0\
    );
\rStoredData[1]_i_85__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A6559E579A569A6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_85__0_n_0\
    );
\rStoredData[1]_i_86__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080A080EEFF7F7F5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_86__0_n_0\
    );
\rStoredData[1]_i_87__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D99BB226"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_87__0_n_0\
    );
\rStoredData[1]_i_88__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"324426CC224466DD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_88__0_n_0\
    );
\rStoredData[1]_i_89__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9933BB3333223266"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_89__0_n_0\
    );
\rStoredData[1]_i_90__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F3C38F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_90__0_n_0\
    );
\rStoredData[1]_i_91__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"347CCCCBC333303C"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_91__0_n_0\
    );
\rStoredData[1]_i_92__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800001557FFFEEA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_92__0_n_0\
    );
\rStoredData[1]_i_93__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540F555AAAB00AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_93__0_n_0\
    );
\rStoredData[1]_i_94__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3B333343C3C4"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_94__0_n_0\
    );
\rStoredData[1]_i_95__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666665555D599999"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_95__0_n_0\
    );
\rStoredData[1]_i_96__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"644599995DDD9BBA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_96__0_n_0\
    );
\rStoredData[1]_i_97__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDD9BBBDD993332"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_97__0_n_0\
    );
\rStoredData[1]_i_98__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"324C66CC22CC44DD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_98__0_n_0\
    );
\rStoredData[1]_i_99__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55ED0043BA36E8"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_99__0_n_0\
    );
\rStoredData[2]_i_100__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F333B3333C0C0C4C"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_100__0_n_0\
    );
\rStoredData[2]_i_101__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666666662222B"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_101__0_n_0\
    );
\rStoredData[2]_i_102__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99955466"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_102__0_n_0\
    );
\rStoredData[2]_i_103__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555556AAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_103__0_n_0\
    );
\rStoredData[2]_i_104__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95555"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_104__0_n_0\
    );
\rStoredData[2]_i_105__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECFF03000000FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_105__0_n_0\
    );
\rStoredData[2]_i_106__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6233633333B93B99"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_106__0_n_0\
    );
\rStoredData[2]_i_107__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FF0000FF00FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_107__0_n_0\
    );
\rStoredData[2]_i_108__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF509F055F2558A0"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_108__0_n_0\
    );
\rStoredData[2]_i_109\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FCFD2D2CBDAD2D2"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_109_n_0\
    );
\rStoredData[2]_i_110\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C70C3C3C"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_110_n_0\
    );
\rStoredData[2]_i_111\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999399B333263266"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_111_n_0\
    );
\rStoredData[2]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_38__0_n_0\,
      I1 => \rStoredData_reg[2]_i_39__0_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_40__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_41__0_n_0\,
      O => \rStoredData[2]_i_15__0_n_0\
    );
\rStoredData[2]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[2]_i_42__0_n_0\,
      I1 => \rStoredData_reg[2]_i_43__0_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_44__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_45__0_n_0\,
      O => \rStoredData[2]_i_16__0_n_0\
    );
\rStoredData[2]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66AAEAAAAAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_21__0_n_0\
    );
\rStoredData[2]_i_22__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666EAAAAAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_22__1_n_0\
    );
\rStoredData[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF070F0F0F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_23_n_0\
    );
\rStoredData[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[2]_i_4__0_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => \rStoredData_reg[2]_i_5__0_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[2]_i_6__0_n_0\,
      O => \p_1_in__0\(2)
    );
\rStoredData[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[2]_i_7_n_0\,
      I1 => \rStoredData_reg[2]_i_8__0_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[2]_i_9__0_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[2]_i_10__0_n_0\,
      O => \rStoredData[2]_i_3__0_n_0\
    );
\rStoredData[2]_i_42__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCDD99BB333"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_42__0_n_0\
    );
\rStoredData[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_11__0_n_0\,
      I1 => \rStoredData_reg[2]_i_12__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[2]_i_13_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_14__0_n_0\,
      O => \rStoredData[2]_i_4__0_n_0\
    );
\rStoredData[2]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFF00010000"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_54_n_0\
    );
\rStoredData[2]_i_55__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50525A4A0A0F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_55__0_n_0\
    );
\rStoredData[2]_i_56__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB99BB9999DDDDDC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_56__0_n_0\
    );
\rStoredData[2]_i_57__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A4A0A0A0A2F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_57__0_n_0\
    );
\rStoredData[2]_i_58__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5DD5544444442"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_58__0_n_0\
    );
\rStoredData[2]_i_59__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBABBBD5555555"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_59__0_n_0\
    );
\rStoredData[2]_i_60__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB9B99DDD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_60__0_n_0\
    );
\rStoredData[2]_i_61__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2AAAAAAAAAABBB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_61__0_n_0\
    );
\rStoredData[2]_i_62__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7CB4A5A1A2B3D2DE"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_62__0_n_0\
    );
\rStoredData[2]_i_63__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6178585A7078585A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[2]_i_63__0_n_0\
    );
\rStoredData[2]_i_64__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC99DD33CDBBD922"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_64__0_n_0\
    );
\rStoredData[2]_i_65__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38F0F0F0F0F0F0F5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_65__0_n_0\
    );
\rStoredData[2]_i_66__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30EFFF00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_66__0_n_0\
    );
\rStoredData[2]_i_67__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00022222BFFFFFDD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_67__0_n_0\
    );
\rStoredData[2]_i_68__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD40000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_68__0_n_0\
    );
\rStoredData[2]_i_69__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF8F0FFFFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_69__0_n_0\
    );
\rStoredData[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_17__0_n_0\,
      I1 => \rStoredData_reg[2]_i_18__0_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_19__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_20__0_n_0\,
      O => \rStoredData[2]_i_6__0_n_0\
    );
\rStoredData[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[6]_i_7__0_n_0\,
      I1 => \rStoredData[2]_i_21__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[2]_i_22__1_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[2]_i_23_n_0\,
      O => \rStoredData[2]_i_7_n_0\
    );
\rStoredData[2]_i_70__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCDDB9393B3"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_70__0_n_0\
    );
\rStoredData[2]_i_71__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002BFFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_71__0_n_0\
    );
\rStoredData[2]_i_72__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C4C6CCCCCCCCCCD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_72__0_n_0\
    );
\rStoredData[2]_i_73__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF4CFFCF33FF00"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_73__0_n_0\
    );
\rStoredData[2]_i_74__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF7F00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_74__0_n_0\
    );
\rStoredData[2]_i_75__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CDCDCCCCCCCC4C4"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_75__0_n_0\
    );
\rStoredData[2]_i_76__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3C3C3CCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_76__0_n_0\
    );
\rStoredData[2]_i_77__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00550A40AA00FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_77__0_n_0\
    );
\rStoredData[2]_i_78__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"659955885DAAD9AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_78__0_n_0\
    );
\rStoredData[2]_i_79__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F04A500F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_79__0_n_0\
    );
\rStoredData[2]_i_80__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B93B3B336262624"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_80__0_n_0\
    );
\rStoredData[2]_i_81__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C6C4C223333333"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_81__0_n_0\
    );
\rStoredData[2]_i_82__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333304C00CC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_82__0_n_0\
    );
\rStoredData[2]_i_83__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3F3B333C3F33330"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_83__0_n_0\
    );
\rStoredData[2]_i_84__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02022222BBBFBFBF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_84__0_n_0\
    );
\rStoredData[2]_i_85__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5D5F5555002400A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_85__0_n_0\
    );
\rStoredData[2]_i_86__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0B00F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_86__0_n_0\
    );
\rStoredData[2]_i_87__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D40A00FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_87__0_n_0\
    );
\rStoredData[2]_i_88__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE45BB55B86200BA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_88__0_n_0\
    );
\rStoredData[2]_i_89__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55999888AAAAE677"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_89__0_n_0\
    );
\rStoredData[2]_i_90__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABFD55"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_90__0_n_0\
    );
\rStoredData[2]_i_91__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A0A4AAA5A0A0AAF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_91__0_n_0\
    );
\rStoredData[2]_i_92__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0BFFF5FFF5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_92__0_n_0\
    );
\rStoredData[2]_i_93__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEF0F0F000010"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_93__0_n_0\
    );
\rStoredData[2]_i_94__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C78F0C3C0F0C3C30"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_94__0_n_0\
    );
\rStoredData[2]_i_95__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0E5A70F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_95__0_n_0\
    );
\rStoredData[2]_i_96__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9115115577667666"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_96__0_n_0\
    );
\rStoredData[2]_i_97__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55775776AAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_97__0_n_0\
    );
\rStoredData[2]_i_98__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F7FFFF0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_98__0_n_0\
    );
\rStoredData[2]_i_99__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAEA80AA00AA55"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_99__0_n_0\
    );
\rStoredData[3]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAE5E5EFEA4040"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[3]_i_33_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[4]_i_40__0_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[3]_i_34__0_n_0\,
      O => \rStoredData[3]_i_11__0_n_0\
    );
\rStoredData[3]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_45__0_n_0\,
      I1 => \rStoredData[3]_i_46__0_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData[5]_i_42_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[3]_i_47__0_n_0\,
      O => \rStoredData[3]_i_17__0_n_0\
    );
\rStoredData[3]_i_18__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[3]_i_48__0_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[3]_i_49__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_50__0_n_0\,
      O => \rStoredData[3]_i_18__0_n_0\
    );
\rStoredData[3]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_55__0_n_0\,
      I1 => \rStoredData[3]_i_56__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[3]_i_57__0_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[4]_i_32__1_n_0\,
      O => \rStoredData[3]_i_21__0_n_0\
    );
\rStoredData[3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_23_n_0\
    );
\rStoredData[3]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_24_n_0\
    );
\rStoredData[3]_i_25__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_25__1_n_0\
    );
\rStoredData[3]_i_26__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAF0FC000C0"
    )
        port map (
      I0 => \rStoredData[6]_i_16__0_n_0\,
      I1 => \rStoredData[3]_i_60__0_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[5]_i_35__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_26__0_n_0\
    );
\rStoredData[3]_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333333FFC7CFC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_27__0_n_0\
    );
\rStoredData[3]_i_28__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_28__0_n_0\
    );
\rStoredData[3]_i_29__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCFCCF3F3B3B3"
    )
        port map (
      I0 => \rStoredData[3]_i_61__0_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[3]_i_62__1_n_0\,
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_29__0_n_0\
    );
\rStoredData[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[3]_i_4__0_n_0\,
      I1 => s_axis_video_tdata(5),
      I2 => \rStoredData[3]_i_5__0_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[3]_i_6__0_n_0\,
      O => \p_1_in__0\(3)
    );
\rStoredData[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0F0A0F0F0CFF0C0"
    )
        port map (
      I0 => \rStoredData[4]_i_48__1_n_0\,
      I1 => \rStoredData[3]_i_63__1_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[4]_i_33_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_30_n_0\
    );
\rStoredData[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55577777EAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_33_n_0\
    );
\rStoredData[3]_i_34__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_34__0_n_0\
    );
\rStoredData[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_7__0_n_0\,
      I1 => \rStoredData[3]_i_8__0_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[3]_i_9__0_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[3]_i_10__0_n_0\,
      O => \rStoredData[3]_i_3__0_n_0\
    );
\rStoredData[3]_i_41__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5DDD544444442"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_41__0_n_0\
    );
\rStoredData[3]_i_42__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB9B9B99D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_42__0_n_0\
    );
\rStoredData[3]_i_45__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_45__0_n_0\
    );
\rStoredData[3]_i_46__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001555FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_46__0_n_0\
    );
\rStoredData[3]_i_47__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8888811151515"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_47__0_n_0\
    );
\rStoredData[3]_i_48__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333393CBCBC"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_48__0_n_0\
    );
\rStoredData[3]_i_49__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B9DBB9C"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_49__0_n_0\
    );
\rStoredData[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_11__0_n_0\,
      I1 => \rStoredData_reg[3]_i_12__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[3]_i_13_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[3]_i_14__0_n_0\,
      O => \rStoredData[3]_i_4__0_n_0\
    );
\rStoredData[3]_i_50__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33222222677755CC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_50__0_n_0\
    );
\rStoredData[3]_i_55__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557F0000FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_55__0_n_0\
    );
\rStoredData[3]_i_56__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFDDD44004000"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_56__0_n_0\
    );
\rStoredData[3]_i_57__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001000FF"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_57__0_n_0\
    );
\rStoredData[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[3]_i_15__0_n_0\,
      I1 => \rStoredData_reg[3]_i_16__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[3]_i_17__0_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[3]_i_18__0_n_0\,
      O => \rStoredData[3]_i_5__0_n_0\
    );
\rStoredData[3]_i_60__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_60__0_n_0\
    );
\rStoredData[3]_i_61__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_61__0_n_0\
    );
\rStoredData[3]_i_62__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      O => \rStoredData[3]_i_62__1_n_0\
    );
\rStoredData[3]_i_63__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_63__1_n_0\
    );
\rStoredData[3]_i_64__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A724273526752678"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_64__0_n_0\
    );
\rStoredData[3]_i_65__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02220222BFFDFFFD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_65__0_n_0\
    );
\rStoredData[3]_i_66__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555544226222"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_66__0_n_0\
    );
\rStoredData[3]_i_67__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555550"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_67__0_n_0\
    );
\rStoredData[3]_i_68__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABBB9999D"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_68__0_n_0\
    );
\rStoredData[3]_i_69__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA81555"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_69__0_n_0\
    );
\rStoredData[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[3]_i_19__0_n_0\,
      I1 => \rStoredData_reg[3]_i_20__0_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[3]_i_21__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[3]_i_22__0_n_0\,
      O => \rStoredData[3]_i_6__0_n_0\
    );
\rStoredData[3]_i_70__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A2A2AAAAAAAAAAB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_70__0_n_0\
    );
\rStoredData[3]_i_71__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C083C30333333333"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_71__0_n_0\
    );
\rStoredData[3]_i_72__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF070F0F0F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_72__0_n_0\
    );
\rStoredData[3]_i_73__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_73__0_n_0\
    );
\rStoredData[3]_i_74__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333F7C"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_74__0_n_0\
    );
\rStoredData[3]_i_75__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDD55540002222"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_75__0_n_0\
    );
\rStoredData[3]_i_76__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA89"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_76__0_n_0\
    );
\rStoredData[3]_i_77__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCFB333"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_77__0_n_0\
    );
\rStoredData[3]_i_78__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA89999911"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_78__0_n_0\
    );
\rStoredData[3]_i_79__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030304CCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_79__0_n_0\
    );
\rStoredData[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCBBFC88FF88FF88"
    )
        port map (
      I0 => \rStoredData[3]_i_23_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[3]_i_24_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_25__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_7__0_n_0\
    );
\rStoredData[3]_i_80__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333334C30CC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_80__0_n_0\
    );
\rStoredData[3]_i_81__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF55FEAAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_81__0_n_0\
    );
\rStoredData[3]_i_82__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_82__0_n_0\
    );
\rStoredData[3]_i_83__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444400022222222"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_83__0_n_0\
    );
\rStoredData[3]_i_84__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA080FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_84__0_n_0\
    );
\rStoredData[3]_i_85__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_85__0_n_0\
    );
\rStoredData[3]_i_86__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_86__0_n_0\
    );
\rStoredData[3]_i_87__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001555500000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_87__0_n_0\
    );
\rStoredData[3]_i_88__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD55555554"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_88__0_n_0\
    );
\rStoredData[3]_i_89__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFFFDD"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_89__0_n_0\
    );
\rStoredData[3]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[3]_i_26__0_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[3]_i_27__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_28__0_n_0\,
      O => \rStoredData[3]_i_8__0_n_0\
    );
\rStoredData[3]_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555500000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_90_n_0\
    );
\rStoredData[3]_i_91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F4F0F0F0F0A2AAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_91_n_0\
    );
\rStoredData[3]_i_92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EABBABBB99999999"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_92_n_0\
    );
\rStoredData[3]_i_93\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF08000"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_93_n_0\
    );
\rStoredData[3]_i_94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011177777FFF"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_94_n_0\
    );
\rStoredData[4]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3077304430FF30FF"
    )
        port map (
      I0 => \rStoredData[4]_i_27__1_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[4]_i_28__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[4]_i_29__0_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_11__0_n_0\
    );
\rStoredData[4]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAA88888"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => \rStoredData[4]_i_30__0_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_12__0_n_0\
    );
\rStoredData[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCFF3F3F3B3"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_13_n_0\
    );
\rStoredData[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC000C000C0"
    )
        port map (
      I0 => \rStoredData[4]_i_31__1_n_0\,
      I1 => \rStoredData[5]_i_32_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[4]_i_32__1_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_14_n_0\
    );
\rStoredData[4]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFC0FFFFBFC00000"
    )
        port map (
      I0 => \rStoredData[4]_i_33_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData[4]_i_34_n_0\,
      O => \rStoredData[4]_i_15__0_n_0\
    );
\rStoredData[4]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FF33BBB8CC00"
    )
        port map (
      I0 => \rStoredData[4]_i_35_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_36__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[4]_i_37_n_0\,
      O => \rStoredData[4]_i_16__0_n_0\
    );
\rStoredData[4]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \rStoredData[5]_i_18__0_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[4]_i_38__0_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData_reg[4]_i_39_n_0\,
      O => \rStoredData[4]_i_17__0_n_0\
    );
\rStoredData[4]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF00AF00FCFFFC00"
    )
        port map (
      I0 => \rStoredData[4]_i_40__0_n_0\,
      I1 => \rStoredData[4]_i_41__1_n_0\,
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(7),
      I4 => \rStoredData[3]_i_28__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_18__0_n_0\
    );
\rStoredData[4]_i_19__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8BB8888"
    )
        port map (
      I0 => \rStoredData[4]_i_42_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_36__0_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[6]_i_7__0_n_0\,
      O => \rStoredData[4]_i_19__0_n_0\
    );
\rStoredData[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBB8BBB8"
    )
        port map (
      I0 => \rStoredData_reg[4]_i_2__0_n_0\,
      I1 => sGammaReg(2),
      I2 => \rStoredData[4]_i_3__0_n_0\,
      I3 => \rStoredData[4]_i_4__0_n_0\,
      I4 => \rStoredData[4]_i_5_n_0\,
      I5 => \sGammaReg_reg[1]\,
      O => \rStoredData[4]_i_1__0_n_0\
    );
\rStoredData[4]_i_20__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[4]_i_20__0_n_0\
    );
\rStoredData[4]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[4]_i_43_n_0\,
      I1 => \rStoredData[4]_i_44__0_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => \rStoredData[4]_i_45__0_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[4]_i_46__0_n_0\,
      O => \rStoredData[4]_i_21__0_n_0\
    );
\rStoredData[4]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5A5E0A5A5A5A5A5"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[4]_i_47__0_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[4]_i_48__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_22__0_n_0\
    );
\rStoredData[4]_i_23__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \rStoredData[4]_i_49__1_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[5]_i_40__0_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[4]_i_50__0_n_0\,
      O => \rStoredData[4]_i_23__0_n_0\
    );
\rStoredData[4]_i_24__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B8BBB8BB"
    )
        port map (
      I0 => \rStoredData[4]_i_51__0_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[4]_i_52__0_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[4]_i_53__0_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_24__0_n_0\
    );
\rStoredData[4]_i_25__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[4]_i_54__0_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[4]_i_55__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[4]_i_56_n_0\,
      O => \rStoredData[4]_i_25__0_n_0\
    );
\rStoredData[4]_i_26__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DFDF0F00D0D0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[4]_i_49__1_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData[5]_i_42_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[4]_i_57__0_n_0\,
      O => \rStoredData[4]_i_26__0_n_0\
    );
\rStoredData[4]_i_27__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_27__1_n_0\
    );
\rStoredData[4]_i_28__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_28__0_n_0\
    );
\rStoredData[4]_i_29__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_29__0_n_0\
    );
\rStoredData[4]_i_30__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      O => \rStoredData[4]_i_30__0_n_0\
    );
\rStoredData[4]_i_31__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_31__1_n_0\
    );
\rStoredData[4]_i_32__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_32__1_n_0\
    );
\rStoredData[4]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_33_n_0\
    );
\rStoredData[4]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001FFFFFFFF00000"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_34_n_0\
    );
\rStoredData[4]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555544422222AAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_35_n_0\
    );
\rStoredData[4]_i_36__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005F7F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_36__0_n_0\
    );
\rStoredData[4]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFF00000000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_37_n_0\
    );
\rStoredData[4]_i_38__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_38__0_n_0\
    );
\rStoredData[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020E0E0E020202"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => sGammaReg(0),
      I2 => sGammaReg(1),
      I3 => \rStoredData_reg[4]_i_8__0_n_0\,
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData_reg[4]_i_9__0_n_0\,
      O => \rStoredData[4]_i_3__0_n_0\
    );
\rStoredData[4]_i_40__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_40__0_n_0\
    );
\rStoredData[4]_i_41__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA80"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_41__1_n_0\
    );
\rStoredData[4]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_42_n_0\
    );
\rStoredData[4]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000557F"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_43_n_0\
    );
\rStoredData[4]_i_44__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880000000000001"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_44__0_n_0\
    );
\rStoredData[4]_i_45__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_45__0_n_0\
    );
\rStoredData[4]_i_46__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_46__0_n_0\
    );
\rStoredData[4]_i_47__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_47__0_n_0\
    );
\rStoredData[4]_i_48__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_48__1_n_0\
    );
\rStoredData[4]_i_49__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001555"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_49__1_n_0\
    );
\rStoredData[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rStoredData_reg[4]_i_10__0_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_11__0_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[4]_i_12__0_n_0\,
      I5 => \sGammaReg_reg[0]\,
      O => \rStoredData[4]_i_4__0_n_0\
    );
\rStoredData[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[4]_i_13_n_0\,
      I1 => \rStoredData[4]_i_14_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[4]_i_15__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData[4]_i_16__0_n_0\,
      O => \rStoredData[4]_i_5_n_0\
    );
\rStoredData[4]_i_50__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCCCCCCCC8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_50__0_n_0\
    );
\rStoredData[4]_i_51__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30040C0CCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_51__0_n_0\
    );
\rStoredData[4]_i_52__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_52__0_n_0\
    );
\rStoredData[4]_i_53__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557FFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_53__0_n_0\
    );
\rStoredData[4]_i_54__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8899955555555"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_54__0_n_0\
    );
\rStoredData[4]_i_55__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80033333"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_55__0_n_0\
    );
\rStoredData[4]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999DCC4CCC4"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_56_n_0\
    );
\rStoredData[4]_i_57__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAAEAAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_57__0_n_0\
    );
\rStoredData[4]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636363636332723A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[4]_i_58_n_0\
    );
\rStoredData[4]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57775777EAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_59_n_0\
    );
\rStoredData[5]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55040504FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[5]_i_23__0_n_0\,
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_24__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_10__0_n_0\
    );
\rStoredData[5]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55155555"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => \rStoredData[5]_i_25__1_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_11__0_n_0\
    );
\rStoredData[5]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80FF8000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(8),
      I4 => \rStoredData[5]_i_28__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_13__0_n_0\
    );
\rStoredData[5]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFB333333300000"
    )
        port map (
      I0 => \rStoredData[5]_i_29__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[5]_i_20__1_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_14__0_n_0\
    );
\rStoredData[5]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8383330333333333"
    )
        port map (
      I0 => \rStoredData[5]_i_29__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(6),
      I3 => \rStoredData[5]_i_30__1_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_15__0_n_0\
    );
\rStoredData[5]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0F0AF8FAF8F"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[5]_i_31__1_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[5]_i_32_n_0\,
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[5]_i_16__0_n_0\
    );
\rStoredData[5]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000003033303"
    )
        port map (
      I0 => \rStoredData[5]_i_33__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[5]_i_34__1_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_17__0_n_0\
    );
\rStoredData[5]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_18__0_n_0\
    );
\rStoredData[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B833B83333333300"
    )
        port map (
      I0 => \rStoredData[5]_i_35__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[5]_i_34__1_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[5]_i_29__1_n_0\,
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_19_n_0\
    );
\rStoredData[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => \rStoredData_reg[5]_i_2__0_n_0\,
      I1 => sGammaReg(2),
      I2 => \rStoredData[5]_i_3__0_n_0\,
      I3 => \rStoredData[5]_i_4__0_n_0\,
      I4 => \rStoredData[5]_i_5__0_n_0\,
      I5 => \rStoredData[5]_i_6__0_n_0\,
      O => \rStoredData[5]_i_1__0_n_0\
    );
\rStoredData[5]_i_20__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C800"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_20__1_n_0\
    );
\rStoredData[5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFAEA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[5]_i_36__0_n_0\,
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_37_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_21_n_0\
    );
\rStoredData[5]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080FCCCCCCC"
    )
        port map (
      I0 => \rStoredData[5]_i_38_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[5]_i_29__1_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_22__0_n_0\
    );
\rStoredData[5]_i_23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_23__0_n_0\
    );
\rStoredData[5]_i_24__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_24__0_n_0\
    );
\rStoredData[5]_i_25__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      O => \rStoredData[5]_i_25__1_n_0\
    );
\rStoredData[5]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB88BBB8BBB888"
    )
        port map (
      I0 => \rStoredData[5]_i_39_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[5]_i_40__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[4]_i_27__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_26_n_0\
    );
\rStoredData[5]_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00A8FFA8FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[5]_i_41_n_0\,
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(8),
      I4 => \rStoredData[5]_i_42_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_27__0_n_0\
    );
\rStoredData[5]_i_28__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_28__0_n_0\
    );
\rStoredData[5]_i_29__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_29__1_n_0\
    );
\rStoredData[5]_i_30__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_30__1_n_0\
    );
\rStoredData[5]_i_31__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_31__1_n_0\
    );
\rStoredData[5]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000057FF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_32_n_0\
    );
\rStoredData[5]_i_33__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_33__1_n_0\
    );
\rStoredData[5]_i_34__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_34__1_n_0\
    );
\rStoredData[5]_i_35__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_35__1_n_0\
    );
\rStoredData[5]_i_36__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_36__0_n_0\
    );
\rStoredData[5]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_37_n_0\
    );
\rStoredData[5]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_38_n_0\
    );
\rStoredData[5]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555777"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_39_n_0\
    );
\rStoredData[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rStoredData_reg[5]_i_9__0_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[5]_i_10__0_n_0\,
      I3 => s_axis_video_tdata(8),
      I4 => \rStoredData[5]_i_11__0_n_0\,
      I5 => \sGammaReg_reg[0]_0\,
      O => \rStoredData[5]_i_3__0_n_0\
    );
\rStoredData[5]_i_40__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_40__0_n_0\
    );
\rStoredData[5]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_41_n_0\
    );
\rStoredData[5]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000015FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_42_n_0\
    );
\rStoredData[5]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => sGammaReg(1),
      I2 => sGammaReg(0),
      O => \rStoredData[5]_i_4__0_n_0\
    );
\rStoredData[5]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rStoredData_reg[5]_i_12_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[5]_i_13__0_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => s_axis_video_tdata(8),
      I5 => \sGammaReg_reg[0]\,
      O => \rStoredData[5]_i_5__0_n_0\
    );
\rStoredData[5]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \rStoredData[5]_i_14__0_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[5]_i_15__0_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_16__0_n_0\,
      I5 => \sGammaReg_reg[1]\,
      O => \rStoredData[5]_i_6__0_n_0\
    );
\rStoredData[5]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8BB8888"
    )
        port map (
      I0 => \rStoredData[5]_i_17__0_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[5]_i_18__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData[5]_i_19_n_0\,
      O => \rStoredData[5]_i_7__0_n_0\
    );
\rStoredData[5]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(5),
      I2 => \rStoredData[5]_i_20__1_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_8__0_n_0\
    );
\rStoredData[6]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF3F3B3B0"
    )
        port map (
      I0 => \rStoredData[6]_i_17_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[6]_i_18_n_0\,
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_10__0_n_0\
    );
\rStoredData[6]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_11__0_n_0\
    );
\rStoredData[6]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030300C0C8C8C"
    )
        port map (
      I0 => \rStoredData[6]_i_19_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[4]_i_30__0_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[6]_i_12__0_n_0\
    );
\rStoredData[6]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF75FF0000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => \rStoredData[5]_i_30__1_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(8),
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[6]_i_13__0_n_0\
    );
\rStoredData[6]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA888"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_10__0_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[6]_i_14__0_n_0\
    );
\rStoredData[6]_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[6]_i_15__0_n_0\
    );
\rStoredData[6]_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[6]_i_16__0_n_0\
    );
\rStoredData[6]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      O => \rStoredData[6]_i_17_n_0\
    );
\rStoredData[6]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      O => \rStoredData[6]_i_18_n_0\
    );
\rStoredData[6]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[6]_i_19_n_0\
    );
\rStoredData[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[6]_i_4__0_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[6]_i_5__0_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData_reg[6]_i_6__0_n_0\,
      O => \p_1_in__0\(6)
    );
\rStoredData[6]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE5555FFFE0000"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[6]_i_7__0_n_0\,
      I3 => s_axis_video_tdata(7),
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[6]_i_8__0_n_0\,
      O => \rStoredData[6]_i_3__0_n_0\
    );
\rStoredData[6]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCEEFFFFF0000000"
    )
        port map (
      I0 => \rStoredData[6]_i_9_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[6]_i_10__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[6]_i_4__0_n_0\
    );
\rStoredData[6]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEA55FFFFEA00AA"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[6]_i_11__0_n_0\,
      I3 => s_axis_video_tdata(8),
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[6]_i_12__0_n_0\,
      O => \rStoredData[6]_i_5__0_n_0\
    );
\rStoredData[6]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_7__0_n_0\
    );
\rStoredData[6]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBF0FBFFFF0F0F0"
    )
        port map (
      I0 => \rStoredData[6]_i_15__0_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(7),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[6]_i_16__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[6]_i_8__0_n_0\
    );
\rStoredData[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_9_n_0\
    );
\rStoredData[7]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[7]_i_10__0_n_0\
    );
\rStoredData[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CAFFCA00"
    )
        port map (
      I0 => \rStoredData[7]_i_4__0_n_0\,
      I1 => \rStoredData[7]_i_5__0_n_0\,
      I2 => sGammaReg(1),
      I3 => sGammaReg(0),
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[7]_i_6__0_n_0\,
      O => \p_1_in__0\(7)
    );
\rStoredData[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(9),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_7_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(7),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[7]_i_3__0_n_0\
    );
\rStoredData[7]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFE000"
    )
        port map (
      I0 => \rStoredData[7]_i_8_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(8),
      I3 => s_axis_video_tdata(7),
      I4 => s_axis_video_tdata(9),
      O => \rStoredData[7]_i_4__0_n_0\
    );
\rStoredData[7]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCCC888"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(8),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[7]_i_9__0_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[7]_i_5__0_n_0\
    );
\rStoredData[7]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAAA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_10__0_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[7]_i_6__0_n_0\
    );
\rStoredData[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[7]_i_7_n_0\
    );
\rStoredData[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[7]_i_8_n_0\
    );
\rStoredData[7]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[7]_i_9__0_n_0\
    );
\rStoredData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => \rStoredData_reg[0]_i_1__0_n_0\,
      Q => m_axis_video_tdata(0),
      R => '0'
    );
\rStoredData_reg[0]_i_10__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_29__0_n_0\,
      I1 => \rStoredData_reg[0]_i_30__0_n_0\,
      O => \rStoredData_reg[0]_i_10__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_11__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_31__0_n_0\,
      I1 => \rStoredData_reg[0]_i_32__0_n_0\,
      O => \rStoredData_reg[0]_i_11__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_12__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_33__0_n_0\,
      I1 => \rStoredData_reg[0]_i_34__0_n_0\,
      O => \rStoredData_reg[0]_i_12__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_13__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_35__0_n_0\,
      I1 => \rStoredData_reg[0]_i_36__0_n_0\,
      O => \rStoredData_reg[0]_i_13__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_14__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_37__0_n_0\,
      I1 => \rStoredData_reg[0]_i_38__0_n_0\,
      O => \rStoredData_reg[0]_i_14__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_15__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_39__0_n_0\,
      I1 => \rStoredData_reg[0]_i_40__0_n_0\,
      O => \rStoredData_reg[0]_i_15__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_16__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_41__0_n_0\,
      I1 => \rStoredData_reg[0]_i_42__0_n_0\,
      O => \rStoredData_reg[0]_i_16__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_17__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_43__0_n_0\,
      I1 => \rStoredData_reg[0]_i_44__0_n_0\,
      O => \rStoredData_reg[0]_i_17__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_18__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_45__0_n_0\,
      I1 => \rStoredData_reg[0]_i_46__0_n_0\,
      O => \rStoredData_reg[0]_i_18__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_19__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_47__0_n_0\,
      I1 => \rStoredData_reg[0]_i_48__0_n_0\,
      O => \rStoredData_reg[0]_i_19__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__0\(0),
      I1 => \rStoredData[0]_i_3__0_n_0\,
      O => \rStoredData_reg[0]_i_1__0_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[0]_i_20__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_49__0_n_0\,
      I1 => \rStoredData_reg[0]_i_50__0_n_0\,
      O => \rStoredData_reg[0]_i_20__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_21__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_51__0_n_0\,
      I1 => \rStoredData_reg[0]_i_52__0_n_0\,
      O => \rStoredData_reg[0]_i_21__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_22__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_53__0_n_0\,
      I1 => \rStoredData_reg[0]_i_54__0_n_0\,
      O => \rStoredData_reg[0]_i_22__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_23__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_55__0_n_0\,
      I1 => \rStoredData[0]_i_56__0_n_0\,
      O => \rStoredData_reg[0]_i_23__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_24__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_57__0_n_0\,
      I1 => \rStoredData[0]_i_58__0_n_0\,
      O => \rStoredData_reg[0]_i_24__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_25__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_59__0_n_0\,
      I1 => \rStoredData[0]_i_60__0_n_0\,
      O => \rStoredData_reg[0]_i_25__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_26__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_61__0_n_0\,
      I1 => \rStoredData[0]_i_62__0_n_0\,
      O => \rStoredData_reg[0]_i_26__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_27__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_63__0_n_0\,
      I1 => \rStoredData[0]_i_64__0_n_0\,
      O => \rStoredData_reg[0]_i_27__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_28__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_65__0_n_0\,
      I1 => \rStoredData[0]_i_66__0_n_0\,
      O => \rStoredData_reg[0]_i_28__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_29__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_67__0_n_0\,
      I1 => \rStoredData[0]_i_68__0_n_0\,
      O => \rStoredData_reg[0]_i_29__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_30__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_69__0_n_0\,
      I1 => \rStoredData[0]_i_70__0_n_0\,
      O => \rStoredData_reg[0]_i_30__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_31__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_71__0_n_0\,
      I1 => \rStoredData[0]_i_72__0_n_0\,
      O => \rStoredData_reg[0]_i_31__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_32__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_73__0_n_0\,
      I1 => \rStoredData[0]_i_74__0_n_0\,
      O => \rStoredData_reg[0]_i_32__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_33__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_75__0_n_0\,
      I1 => \rStoredData[0]_i_76__0_n_0\,
      O => \rStoredData_reg[0]_i_33__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_34__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_77__0_n_0\,
      I1 => \rStoredData[0]_i_78__0_n_0\,
      O => \rStoredData_reg[0]_i_34__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_35__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_79__0_n_0\,
      I1 => \rStoredData[0]_i_80__0_n_0\,
      O => \rStoredData_reg[0]_i_35__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_36__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_81__0_n_0\,
      I1 => \rStoredData[0]_i_82__0_n_0\,
      O => \rStoredData_reg[0]_i_36__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_37__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_83__0_n_0\,
      I1 => \rStoredData[0]_i_84__0_n_0\,
      O => \rStoredData_reg[0]_i_37__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_38__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_85__0_n_0\,
      I1 => \rStoredData[0]_i_86__0_n_0\,
      O => \rStoredData_reg[0]_i_38__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_39__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_87__0_n_0\,
      I1 => \rStoredData[0]_i_88__0_n_0\,
      O => \rStoredData_reg[0]_i_39__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_40__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_89__0_n_0\,
      I1 => \rStoredData[0]_i_90__0_n_0\,
      O => \rStoredData_reg[0]_i_40__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_41__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_91__0_n_0\,
      I1 => \rStoredData[0]_i_92__0_n_0\,
      O => \rStoredData_reg[0]_i_41__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_42__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_93__0_n_0\,
      I1 => \rStoredData[0]_i_94__0_n_0\,
      O => \rStoredData_reg[0]_i_42__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_43__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_95__0_n_0\,
      I1 => \rStoredData[0]_i_96__0_n_0\,
      O => \rStoredData_reg[0]_i_43__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_44__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_97__0_n_0\,
      I1 => \rStoredData[0]_i_98__0_n_0\,
      O => \rStoredData_reg[0]_i_44__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_45__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_99__0_n_0\,
      I1 => \rStoredData[0]_i_100__0_n_0\,
      O => \rStoredData_reg[0]_i_45__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_46__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_101__0_n_0\,
      I1 => \rStoredData[0]_i_102__0_n_0\,
      O => \rStoredData_reg[0]_i_46__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_47__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_103__0_n_0\,
      I1 => \rStoredData[0]_i_104__0_n_0\,
      O => \rStoredData_reg[0]_i_47__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_48__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_105__0_n_0\,
      I1 => \rStoredData[0]_i_106__0_n_0\,
      O => \rStoredData_reg[0]_i_48__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_49__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_107__0_n_0\,
      I1 => \rStoredData[0]_i_108__0_n_0\,
      O => \rStoredData_reg[0]_i_49__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_50__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_109__0_n_0\,
      I1 => \rStoredData[0]_i_110__0_n_0\,
      O => \rStoredData_reg[0]_i_50__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_51__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_111__0_n_0\,
      I1 => \rStoredData[0]_i_112__0_n_0\,
      O => \rStoredData_reg[0]_i_51__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_52__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_113__0_n_0\,
      I1 => \rStoredData[0]_i_114__0_n_0\,
      O => \rStoredData_reg[0]_i_52__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_53__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_115__0_n_0\,
      I1 => \rStoredData[0]_i_116__0_n_0\,
      O => \rStoredData_reg[0]_i_53__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_54__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_117__0_n_0\,
      I1 => \rStoredData[0]_i_118__0_n_0\,
      O => \rStoredData_reg[0]_i_54__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_7__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_23__0_n_0\,
      I1 => \rStoredData_reg[0]_i_24__0_n_0\,
      O => \rStoredData_reg[0]_i_7__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_8__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_25__0_n_0\,
      I1 => \rStoredData_reg[0]_i_26__0_n_0\,
      O => \rStoredData_reg[0]_i_8__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_9__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_27__0_n_0\,
      I1 => \rStoredData_reg[0]_i_28__0_n_0\,
      O => \rStoredData_reg[0]_i_9__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => \rStoredData_reg[1]_i_1__0_n_0\,
      Q => m_axis_video_tdata(1),
      R => '0'
    );
\rStoredData_reg[1]_i_10__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_29__0_n_0\,
      I1 => \rStoredData_reg[1]_i_30__0_n_0\,
      O => \rStoredData_reg[1]_i_10__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_11__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_31__0_n_0\,
      I1 => \rStoredData_reg[1]_i_32__0_n_0\,
      O => \rStoredData_reg[1]_i_11__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_12__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_33__0_n_0\,
      I1 => \rStoredData_reg[1]_i_34__0_n_0\,
      O => \rStoredData_reg[1]_i_12__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_13__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_35__0_n_0\,
      I1 => \rStoredData_reg[1]_i_36__0_n_0\,
      O => \rStoredData_reg[1]_i_13__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_14__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_37__0_n_0\,
      I1 => \rStoredData_reg[1]_i_38__0_n_0\,
      O => \rStoredData_reg[1]_i_14__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_15__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_39__0_n_0\,
      I1 => \rStoredData_reg[1]_i_40__0_n_0\,
      O => \rStoredData_reg[1]_i_15__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_16__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_41__0_n_0\,
      I1 => \rStoredData_reg[1]_i_42__0_n_0\,
      O => \rStoredData_reg[1]_i_16__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_17__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_43__0_n_0\,
      I1 => \rStoredData_reg[1]_i_44__0_n_0\,
      O => \rStoredData_reg[1]_i_17__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_18__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_45__0_n_0\,
      I1 => \rStoredData_reg[1]_i_46__0_n_0\,
      O => \rStoredData_reg[1]_i_18__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_19__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_47__0_n_0\,
      I1 => \rStoredData_reg[1]_i_48__0_n_0\,
      O => \rStoredData_reg[1]_i_19__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__0\(1),
      I1 => \rStoredData[1]_i_3__0_n_0\,
      O => \rStoredData_reg[1]_i_1__0_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[1]_i_20__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_49__0_n_0\,
      I1 => \rStoredData_reg[1]_i_50__0_n_0\,
      O => \rStoredData_reg[1]_i_20__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_21__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_51__0_n_0\,
      I1 => \rStoredData_reg[1]_i_52__0_n_0\,
      O => \rStoredData_reg[1]_i_21__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_22__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_53__0_n_0\,
      I1 => \rStoredData_reg[1]_i_54__0_n_0\,
      O => \rStoredData_reg[1]_i_22__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_55_n_0\,
      I1 => \rStoredData[1]_i_56__0_n_0\,
      O => \rStoredData_reg[1]_i_23_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_57__0_n_0\,
      I1 => \rStoredData[1]_i_58__0_n_0\,
      O => \rStoredData_reg[1]_i_24_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_59__0_n_0\,
      I1 => \rStoredData[1]_i_60__0_n_0\,
      O => \rStoredData_reg[1]_i_25_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_61__0_n_0\,
      I1 => \rStoredData[1]_i_62__0_n_0\,
      O => \rStoredData_reg[1]_i_26_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_27__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_63__0_n_0\,
      I1 => \rStoredData[1]_i_64__0_n_0\,
      O => \rStoredData_reg[1]_i_27__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_28__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_65__0_n_0\,
      I1 => \rStoredData[1]_i_66__0_n_0\,
      O => \rStoredData_reg[1]_i_28__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_29__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_67__0_n_0\,
      I1 => \rStoredData[1]_i_68__0_n_0\,
      O => \rStoredData_reg[1]_i_29__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_30__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_69__0_n_0\,
      I1 => \rStoredData[1]_i_70__0_n_0\,
      O => \rStoredData_reg[1]_i_30__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_31__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_71__0_n_0\,
      I1 => \rStoredData[1]_i_72__0_n_0\,
      O => \rStoredData_reg[1]_i_31__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_32__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_73__0_n_0\,
      I1 => \rStoredData[1]_i_74__0_n_0\,
      O => \rStoredData_reg[1]_i_32__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_33__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_75__0_n_0\,
      I1 => \rStoredData[1]_i_76__0_n_0\,
      O => \rStoredData_reg[1]_i_33__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_34__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_77__0_n_0\,
      I1 => \rStoredData[1]_i_78__0_n_0\,
      O => \rStoredData_reg[1]_i_34__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_35__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_79__0_n_0\,
      I1 => \rStoredData[1]_i_80__0_n_0\,
      O => \rStoredData_reg[1]_i_35__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_36__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_81__0_n_0\,
      I1 => \rStoredData[1]_i_82__0_n_0\,
      O => \rStoredData_reg[1]_i_36__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_37__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_83__0_n_0\,
      I1 => \rStoredData[1]_i_84__0_n_0\,
      O => \rStoredData_reg[1]_i_37__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_38__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_85__0_n_0\,
      I1 => \rStoredData[1]_i_86__0_n_0\,
      O => \rStoredData_reg[1]_i_38__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_39__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_87__0_n_0\,
      I1 => \rStoredData[1]_i_88__0_n_0\,
      O => \rStoredData_reg[1]_i_39__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_40__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_89__0_n_0\,
      I1 => \rStoredData[1]_i_90__0_n_0\,
      O => \rStoredData_reg[1]_i_40__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_41__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_91__0_n_0\,
      I1 => \rStoredData[1]_i_92__0_n_0\,
      O => \rStoredData_reg[1]_i_41__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_42__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_93__0_n_0\,
      I1 => \rStoredData[1]_i_94__0_n_0\,
      O => \rStoredData_reg[1]_i_42__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_43__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_95__0_n_0\,
      I1 => \rStoredData[1]_i_96__0_n_0\,
      O => \rStoredData_reg[1]_i_43__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_44__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_97__0_n_0\,
      I1 => \rStoredData[1]_i_98__0_n_0\,
      O => \rStoredData_reg[1]_i_44__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_45__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_99__0_n_0\,
      I1 => \rStoredData[1]_i_100__0_n_0\,
      O => \rStoredData_reg[1]_i_45__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_46__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_101__0_n_0\,
      I1 => \rStoredData[1]_i_102__0_n_0\,
      O => \rStoredData_reg[1]_i_46__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_47__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_103__0_n_0\,
      I1 => \rStoredData[1]_i_104__0_n_0\,
      O => \rStoredData_reg[1]_i_47__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_48__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_105__0_n_0\,
      I1 => \rStoredData[1]_i_106__0_n_0\,
      O => \rStoredData_reg[1]_i_48__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_49__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_107__0_n_0\,
      I1 => \rStoredData[1]_i_108__0_n_0\,
      O => \rStoredData_reg[1]_i_49__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_50__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_109__0_n_0\,
      I1 => \rStoredData[1]_i_110__0_n_0\,
      O => \rStoredData_reg[1]_i_50__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_51__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_111__0_n_0\,
      I1 => \rStoredData[1]_i_112__0_n_0\,
      O => \rStoredData_reg[1]_i_51__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_52__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_113__0_n_0\,
      I1 => \rStoredData[1]_i_114__0_n_0\,
      O => \rStoredData_reg[1]_i_52__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_53__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_115__0_n_0\,
      I1 => \rStoredData[1]_i_116__0_n_0\,
      O => \rStoredData_reg[1]_i_53__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_54__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_117_n_0\,
      I1 => \rStoredData[1]_i_118_n_0\,
      O => \rStoredData_reg[1]_i_54__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_23_n_0\,
      I1 => \rStoredData_reg[1]_i_24_n_0\,
      O => \rStoredData_reg[1]_i_7_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_8__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_25_n_0\,
      I1 => \rStoredData_reg[1]_i_26_n_0\,
      O => \rStoredData_reg[1]_i_8__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_9__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_27__0_n_0\,
      I1 => \rStoredData_reg[1]_i_28__0_n_0\,
      O => \rStoredData_reg[1]_i_9__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => \rStoredData_reg[2]_i_1__0_n_0\,
      Q => m_axis_video_tdata(2),
      R => '0'
    );
\rStoredData_reg[2]_i_10__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_28__0_n_0\,
      I1 => \rStoredData_reg[2]_i_29__0_n_0\,
      O => \rStoredData_reg[2]_i_10__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_11__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_30__0_n_0\,
      I1 => \rStoredData_reg[2]_i_31__0_n_0\,
      O => \rStoredData_reg[2]_i_11__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_12__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_32__0_n_0\,
      I1 => \rStoredData_reg[2]_i_33_n_0\,
      O => \rStoredData_reg[2]_i_12__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_34_n_0\,
      I1 => \rStoredData_reg[2]_i_35_n_0\,
      O => \rStoredData_reg[2]_i_13_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_14__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_36__0_n_0\,
      I1 => \rStoredData_reg[2]_i_37__0_n_0\,
      O => \rStoredData_reg[2]_i_14__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_17__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_46__0_n_0\,
      I1 => \rStoredData_reg[2]_i_47__0_n_0\,
      O => \rStoredData_reg[2]_i_17__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_18__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_48__0_n_0\,
      I1 => \rStoredData_reg[2]_i_49__0_n_0\,
      O => \rStoredData_reg[2]_i_18__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_19__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_50__0_n_0\,
      I1 => \rStoredData_reg[2]_i_51__0_n_0\,
      O => \rStoredData_reg[2]_i_19__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__0\(2),
      I1 => \rStoredData[2]_i_3__0_n_0\,
      O => \rStoredData_reg[2]_i_1__0_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[2]_i_20__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_52__0_n_0\,
      I1 => \rStoredData_reg[2]_i_53__0_n_0\,
      O => \rStoredData_reg[2]_i_20__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_24__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_54_n_0\,
      I1 => \rStoredData[2]_i_55__0_n_0\,
      O => \rStoredData_reg[2]_i_24__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_25__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_56__0_n_0\,
      I1 => \rStoredData[2]_i_57__0_n_0\,
      O => \rStoredData_reg[2]_i_25__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_26__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_58__0_n_0\,
      I1 => \rStoredData[2]_i_59__0_n_0\,
      O => \rStoredData_reg[2]_i_26__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_27__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_60__0_n_0\,
      I1 => \rStoredData[2]_i_61__0_n_0\,
      O => \rStoredData_reg[2]_i_27__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_28__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_62__0_n_0\,
      I1 => \rStoredData[2]_i_63__0_n_0\,
      O => \rStoredData_reg[2]_i_28__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_29__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_64__0_n_0\,
      I1 => \rStoredData[2]_i_65__0_n_0\,
      O => \rStoredData_reg[2]_i_29__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_30__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_66__0_n_0\,
      I1 => \rStoredData[2]_i_67__0_n_0\,
      O => \rStoredData_reg[2]_i_30__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_31__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_68__0_n_0\,
      I1 => \rStoredData[2]_i_69__0_n_0\,
      O => \rStoredData_reg[2]_i_31__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_32__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_70__0_n_0\,
      I1 => \rStoredData[2]_i_71__0_n_0\,
      O => \rStoredData_reg[2]_i_32__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_72__0_n_0\,
      I1 => \rStoredData[2]_i_73__0_n_0\,
      O => \rStoredData_reg[2]_i_33_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_74__0_n_0\,
      I1 => \rStoredData[2]_i_75__0_n_0\,
      O => \rStoredData_reg[2]_i_34_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_76__0_n_0\,
      I1 => \rStoredData[2]_i_77__0_n_0\,
      O => \rStoredData_reg[2]_i_35_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_36__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_78__0_n_0\,
      I1 => \rStoredData[2]_i_79__0_n_0\,
      O => \rStoredData_reg[2]_i_36__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_37__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_80__0_n_0\,
      I1 => \rStoredData[2]_i_81__0_n_0\,
      O => \rStoredData_reg[2]_i_37__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_38__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_82__0_n_0\,
      I1 => \rStoredData[2]_i_83__0_n_0\,
      O => \rStoredData_reg[2]_i_38__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_39__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_84__0_n_0\,
      I1 => \rStoredData[2]_i_85__0_n_0\,
      O => \rStoredData_reg[2]_i_39__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_40__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_86__0_n_0\,
      I1 => \rStoredData[2]_i_87__0_n_0\,
      O => \rStoredData_reg[2]_i_40__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_41__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_88__0_n_0\,
      I1 => \rStoredData[2]_i_89__0_n_0\,
      O => \rStoredData_reg[2]_i_41__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_43__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_90__0_n_0\,
      I1 => \rStoredData[2]_i_91__0_n_0\,
      O => \rStoredData_reg[2]_i_43__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_44__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_92__0_n_0\,
      I1 => \rStoredData[2]_i_93__0_n_0\,
      O => \rStoredData_reg[2]_i_44__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_45__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_94__0_n_0\,
      I1 => \rStoredData[2]_i_95__0_n_0\,
      O => \rStoredData_reg[2]_i_45__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_46__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_96__0_n_0\,
      I1 => \rStoredData[2]_i_97__0_n_0\,
      O => \rStoredData_reg[2]_i_46__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_47__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_98__0_n_0\,
      I1 => \rStoredData[2]_i_99__0_n_0\,
      O => \rStoredData_reg[2]_i_47__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_48__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_100__0_n_0\,
      I1 => \rStoredData[2]_i_101__0_n_0\,
      O => \rStoredData_reg[2]_i_48__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_49__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_102__0_n_0\,
      I1 => \rStoredData[2]_i_103__0_n_0\,
      O => \rStoredData_reg[2]_i_49__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_50__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_104__0_n_0\,
      I1 => \rStoredData[2]_i_105__0_n_0\,
      O => \rStoredData_reg[2]_i_50__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_51__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_106__0_n_0\,
      I1 => \rStoredData[2]_i_107__0_n_0\,
      O => \rStoredData_reg[2]_i_51__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_52__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_108__0_n_0\,
      I1 => \rStoredData[2]_i_109_n_0\,
      O => \rStoredData_reg[2]_i_52__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_53__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_110_n_0\,
      I1 => \rStoredData[2]_i_111_n_0\,
      O => \rStoredData_reg[2]_i_53__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_5__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_15__0_n_0\,
      I1 => \rStoredData[2]_i_16__0_n_0\,
      O => \rStoredData_reg[2]_i_5__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_8__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_24__0_n_0\,
      I1 => \rStoredData_reg[2]_i_25__0_n_0\,
      O => \rStoredData_reg[2]_i_8__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_9__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_26__0_n_0\,
      I1 => \rStoredData_reg[2]_i_27__0_n_0\,
      O => \rStoredData_reg[2]_i_9__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => \rStoredData_reg[3]_i_1__0_n_0\,
      Q => m_axis_video_tdata(3),
      R => '0'
    );
\rStoredData_reg[3]_i_10__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_31__0_n_0\,
      I1 => \rStoredData_reg[3]_i_32_n_0\,
      O => \rStoredData_reg[3]_i_10__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_12__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_35__0_n_0\,
      I1 => \rStoredData_reg[3]_i_36_n_0\,
      O => \rStoredData_reg[3]_i_12__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_37_n_0\,
      I1 => \rStoredData_reg[3]_i_38_n_0\,
      O => \rStoredData_reg[3]_i_13_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_14__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_39__0_n_0\,
      I1 => \rStoredData_reg[3]_i_40__0_n_0\,
      O => \rStoredData_reg[3]_i_14__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_15__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_41__0_n_0\,
      I1 => \rStoredData[3]_i_42__0_n_0\,
      O => \rStoredData_reg[3]_i_15__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[3]_i_16__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_43__0_n_0\,
      I1 => \rStoredData_reg[3]_i_44__0_n_0\,
      O => \rStoredData_reg[3]_i_16__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[3]_i_19__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_51__0_n_0\,
      I1 => \rStoredData_reg[3]_i_52__0_n_0\,
      O => \rStoredData_reg[3]_i_19__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__0\(3),
      I1 => \rStoredData[3]_i_3__0_n_0\,
      O => \rStoredData_reg[3]_i_1__0_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[3]_i_20__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_53__0_n_0\,
      I1 => \rStoredData_reg[3]_i_54__0_n_0\,
      O => \rStoredData_reg[3]_i_20__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_22__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_58__0_n_0\,
      I1 => \rStoredData_reg[3]_i_59__0_n_0\,
      O => \rStoredData_reg[3]_i_22__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_31__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_64__0_n_0\,
      I1 => \rStoredData[3]_i_65__0_n_0\,
      O => \rStoredData_reg[3]_i_31__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_66__0_n_0\,
      I1 => \rStoredData[3]_i_67__0_n_0\,
      O => \rStoredData_reg[3]_i_32_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_35__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_68__0_n_0\,
      I1 => \rStoredData[3]_i_69__0_n_0\,
      O => \rStoredData_reg[3]_i_35__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_70__0_n_0\,
      I1 => \rStoredData[3]_i_71__0_n_0\,
      O => \rStoredData_reg[3]_i_36_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_72__0_n_0\,
      I1 => \rStoredData[3]_i_73__0_n_0\,
      O => \rStoredData_reg[3]_i_37_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_22__1_n_0\,
      I1 => \rStoredData[3]_i_74__0_n_0\,
      O => \rStoredData_reg[3]_i_38_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_39__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_75__0_n_0\,
      I1 => \rStoredData[3]_i_76__0_n_0\,
      O => \rStoredData_reg[3]_i_39__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_40__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_77__0_n_0\,
      I1 => \rStoredData[3]_i_78__0_n_0\,
      O => \rStoredData_reg[3]_i_40__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_43__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_79__0_n_0\,
      I1 => \rStoredData[3]_i_80__0_n_0\,
      O => \rStoredData_reg[3]_i_43__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_44__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_81__0_n_0\,
      I1 => \rStoredData[3]_i_82__0_n_0\,
      O => \rStoredData_reg[3]_i_44__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_51__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_83__0_n_0\,
      I1 => \rStoredData[3]_i_84__0_n_0\,
      O => \rStoredData_reg[3]_i_51__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_52__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_85__0_n_0\,
      I1 => \rStoredData[3]_i_86__0_n_0\,
      O => \rStoredData_reg[3]_i_52__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_53__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_87__0_n_0\,
      I1 => \rStoredData[3]_i_88__0_n_0\,
      O => \rStoredData_reg[3]_i_53__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_54__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_89__0_n_0\,
      I1 => \rStoredData[3]_i_90_n_0\,
      O => \rStoredData_reg[3]_i_54__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_58__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_91_n_0\,
      I1 => \rStoredData[3]_i_92_n_0\,
      O => \rStoredData_reg[3]_i_58__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_59__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_93_n_0\,
      I1 => \rStoredData[3]_i_94_n_0\,
      O => \rStoredData_reg[3]_i_59__0_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_9__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_29__0_n_0\,
      I1 => \rStoredData[3]_i_30_n_0\,
      O => \rStoredData_reg[3]_i_9__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => \rStoredData[4]_i_1__0_n_0\,
      Q => m_axis_video_tdata(4),
      R => '0'
    );
\rStoredData_reg[4]_i_10__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_25__0_n_0\,
      I1 => \rStoredData[4]_i_26__0_n_0\,
      O => \rStoredData_reg[4]_i_10__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_2__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[4]_i_6__0_n_0\,
      I1 => \rStoredData_reg[4]_i_7__0_n_0\,
      O => \rStoredData_reg[4]_i_2__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[4]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_58_n_0\,
      I1 => \rStoredData[4]_i_59_n_0\,
      O => \rStoredData_reg[4]_i_39_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[4]_i_6__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_17__0_n_0\,
      I1 => \rStoredData[4]_i_18__0_n_0\,
      O => \rStoredData_reg[4]_i_6__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_7__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_19__0_n_0\,
      I1 => \rStoredData[4]_i_20__0_n_0\,
      O => \rStoredData_reg[4]_i_7__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_8__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_21__0_n_0\,
      I1 => \rStoredData[4]_i_22__0_n_0\,
      O => \rStoredData_reg[4]_i_8__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[4]_i_9__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_23__0_n_0\,
      I1 => \rStoredData[4]_i_24__0_n_0\,
      O => \rStoredData_reg[4]_i_9__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => \rStoredData[5]_i_1__0_n_0\,
      Q => m_axis_video_tdata(5),
      R => '0'
    );
\rStoredData_reg[5]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[5]_i_26_n_0\,
      I1 => \rStoredData[5]_i_27__0_n_0\,
      O => \rStoredData_reg[5]_i_12_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[5]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[5]_i_7__0_n_0\,
      I1 => \rStoredData[5]_i_8__0_n_0\,
      O => \rStoredData_reg[5]_i_2__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[5]_i_9__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[5]_i_21_n_0\,
      I1 => \rStoredData[5]_i_22__0_n_0\,
      O => \rStoredData_reg[5]_i_9__0_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => \rStoredData_reg[6]_i_1__0_n_0\,
      Q => m_axis_video_tdata(6),
      R => '0'
    );
\rStoredData_reg[6]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__0\(6),
      I1 => \rStoredData[6]_i_3__0_n_0\,
      O => \rStoredData_reg[6]_i_1__0_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[6]_i_6__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[6]_i_13__0_n_0\,
      I1 => \rStoredData[6]_i_14__0_n_0\,
      O => \rStoredData_reg[6]_i_6__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => E(0),
      D => \rStoredData_reg[7]_i_1__0_n_0\,
      Q => m_axis_video_tdata(7),
      R => '0'
    );
\rStoredData_reg[7]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__0\(7),
      I1 => \rStoredData[7]_i_3__0_n_0\,
      O => \rStoredData_reg[7]_i_1__0_n_0\,
      S => sGammaReg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_1 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rStoredData_reg[4]_0\ : out STD_LOGIC;
    \rStoredData_reg[4]_1\ : out STD_LOGIC;
    \rStoredData_reg[5]_0\ : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    sGammaReg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    StreamClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_1 : entity is "StoredGammaCoefs";
end design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_1;

architecture STRUCTURE of design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_1 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_1_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rStoredData[0]_i_100__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_101__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_102__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_103__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_104__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_105__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_106__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_107__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_108__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_109__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_110__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_111__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_112__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_113__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_114__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_115__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_116__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_117__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_118__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_55__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_56__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_57__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_58__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_59__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_60__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_61__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_62__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_63__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_64__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_65__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_66__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_67__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_68__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_69__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_70__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_71__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_72__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_73__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_74__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_75__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_76__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_77__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_78__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_79__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_80__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_81__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_82__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_83__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_84__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_85__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_86__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_87__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_88__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_89__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_90__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_91__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_92__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_93__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_94__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_95__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_96__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_97__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_98__1_n_0\ : STD_LOGIC;
  signal \rStoredData[0]_i_99__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_100__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_101__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_102__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_103__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_104__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_105__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_106__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_107__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_108__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_109__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_110__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_111__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_112__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_113__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_114__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_115__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_116__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_117__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_118__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_55__0_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_56_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_57__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_58__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_59__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_60__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_61__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_62__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_63__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_64__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_65__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_66__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_67__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_68__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_69__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_6__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_70__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_71__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_72__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_73__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_74__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_75__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_76__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_77__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_78__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_79__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_80__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_81__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_82__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_83__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_84__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_85__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_86__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_87__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_88__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_89__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_90__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_91__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_92__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_93__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_94__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_95__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_96__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_97__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_98__1_n_0\ : STD_LOGIC;
  signal \rStoredData[1]_i_99__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_100__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_101__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_102__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_103__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_104__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_105__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_106__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_107__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_108__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_109__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_110__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_111__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_15__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_16__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_21__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_22__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_23__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_42__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_54__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_55__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_56__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_57__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_58__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_59__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_60__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_61__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_62__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_63__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_64__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_65__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_66__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_67__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_68__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_69__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_6__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_70__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_71__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_72__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_73__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_74__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_75__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_76__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_77__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_78__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_79__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_80__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_81__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_82__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_83__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_84__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_85__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_86__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_87__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_88__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_89__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_90__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_91__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_92__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_93__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_94__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_95__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_96__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_97__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_98__1_n_0\ : STD_LOGIC;
  signal \rStoredData[2]_i_99__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_11__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_17__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_18__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_21__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_23__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_24__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_25__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_26__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_27__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_28__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_29__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_30__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_33__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_34_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_41__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_42__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_45__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_46__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_47__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_48__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_49__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_50__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_55__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_56__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_57__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_60_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_61_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_62__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_63__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_64__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_65__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_66__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_67__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_68__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_69__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_70__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_71__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_72__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_73__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_74__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_75__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_76__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_77__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_78__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_79__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_80__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_81__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_82__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_83__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_84__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_85__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_86__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_87__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_88__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_89__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_8__1_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_90__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_91__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_92__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_93__0_n_0\ : STD_LOGIC;
  signal \rStoredData[3]_i_94__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_12__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_15__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_16__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_17__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_18__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_19__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_20__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_21__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_22__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_23__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_24__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_25__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_26__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_27__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_28__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_29__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_30__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_31__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_32__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_33__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_34__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_35__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_36_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_37__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_38__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_39__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_41__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_42__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_43__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_44__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_45__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_46__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_47__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_48_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_49__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_50__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_51__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_52__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_53__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_54__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_55__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_56__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_57__1_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_58__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_59__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \rStoredData[4]_i_60__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_10__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_11__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_14__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_16__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_17__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_18__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_19__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_20__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_21__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_22__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_23__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_24_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_25_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_26__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_27__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_28__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_29__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_30__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_31__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_32__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_33__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_34__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_35__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_36_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_37__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_38__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_39__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_3__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_40_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_41__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_42__0_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_43_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_44_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_4__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_5__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_6__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_7__1_n_0\ : STD_LOGIC;
  signal \rStoredData[5]_i_8__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_10__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_11__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_12__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_13__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_14__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_15__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_16_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_17__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_18__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_19__0_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_3__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_4__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_5__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_7__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_8__1_n_0\ : STD_LOGIC;
  signal \rStoredData[6]_i_9__0_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_10_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_4__1_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_5__1_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_6__1_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_7__0_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_8__0_n_0\ : STD_LOGIC;
  signal \rStoredData[7]_i_9__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_10__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_11__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_12__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_13__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_14__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_15__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_16__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_17__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_18__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_19__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_20__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_21__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_22__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_23__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_24__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_25__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_26__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_27__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_28__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_29__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_30__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_31__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_32__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_33__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_34__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_35__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_36__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_37__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_38__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_39__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_40__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_41__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_42__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_43__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_44__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_45__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_46__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_47__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_48__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_49__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_50__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_51__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_52__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_53__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_54__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_8__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[0]_i_9__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_10__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_11__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_12__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_13__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_14__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_15__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_16__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_17__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_18__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_19__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_20__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_21__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_22__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_23__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_24__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_25__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_26__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_27__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_28__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_29__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_30__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_31__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_32__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_33__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_34__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_35__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_36__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_37__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_38__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_39__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_40__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_41__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_42__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_43__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_44__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_45__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_46__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_47__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_48__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_49__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_50__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_51__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_52__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_53__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_54__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_8__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[1]_i_9__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_10__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_11__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_12__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_13__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_14__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_17__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_18__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_19__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_20__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_24__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_25__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_26__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_27__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_28__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_29__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_30__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_31__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_32__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_33__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_34__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_35__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_36__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_37__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_38__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_39__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_40__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_41__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_43__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_44__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_45__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_46__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_47__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_48__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_49__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_50__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_51__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_52__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_53__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_8__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[2]_i_9__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_10__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_12__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_13__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_14__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_15__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_16__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_19__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_20__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_22__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_31__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_32__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_35__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_36__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_37__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_38__0_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_39__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_40__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_43__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_44__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_51__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_52__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_53__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_54__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_58__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_59__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[3]_i_9__1_n_0\ : STD_LOGIC;
  signal \^rstoreddata_reg[4]_0\ : STD_LOGIC;
  signal \^rstoreddata_reg[4]_1\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_10__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_40_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \^rstoreddata_reg[5]_0\ : STD_LOGIC;
  signal \rStoredData_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[5]_i_9__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[6]_i_6__1_n_0\ : STD_LOGIC;
  signal \rStoredData_reg[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rStoredData[3]_i_23__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_24__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_25__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_34\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_45__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_49__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_57__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_60\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_61\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_62__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \rStoredData[3]_i_63__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_28__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_30__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_31__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_32__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_33__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_34__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_37__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_39__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_41__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_42__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_44__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_46__1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_48\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_49__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_50__1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_54__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_56__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rStoredData[4]_i_6\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_12__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_15__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_22__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_25\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_26__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_27__1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_31__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_32__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_33__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_34__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_35__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_36\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_37__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_38__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_39__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_40\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_42__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_43\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rStoredData[5]_i_4__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_15__1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_16\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_18__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_19__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \rStoredData[6]_i_9__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_10\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_11\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \rStoredData[7]_i_8__0\ : label is "soft_lutpair54";
begin
  E(0) <= \^e\(0);
  \rStoredData_reg[4]_0\ <= \^rstoreddata_reg[4]_0\;
  \rStoredData_reg[4]_1\ <= \^rstoreddata_reg[4]_1\;
  \rStoredData_reg[5]_0\ <= \^rstoreddata_reg[5]_0\;
\rStoredData[0]_i_100__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11A1DE14EB4E11B9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_100__1_n_0\
    );
\rStoredData[0]_i_101__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B200FFFFDDFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_101__1_n_0\
    );
\rStoredData[0]_i_102__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5598AA6675598AA6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_102__1_n_0\
    );
\rStoredData[0]_i_103__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36B693CB9293C949"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_103__1_n_0\
    );
\rStoredData[0]_i_104__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"969293DBC949696C"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_104__1_n_0\
    );
\rStoredData[0]_i_105__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65E6A686969E9A19"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_105__1_n_0\
    );
\rStoredData[0]_i_106__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"899966E817769999"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_106__1_n_0\
    );
\rStoredData[0]_i_107__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"665D2666999A5999"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_107__1_n_0\
    );
\rStoredData[0]_i_108__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"296B626646D6949D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_108__1_n_0\
    );
\rStoredData[0]_i_109__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3CC323333D9CC33"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_109__1_n_0\
    );
\rStoredData[0]_i_110__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C3C33333C33C3C3"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_110__1_n_0\
    );
\rStoredData[0]_i_111__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF40000000FD"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_111__1_n_0\
    );
\rStoredData[0]_i_112__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00FFFF30FF0000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_112__1_n_0\
    );
\rStoredData[0]_i_113__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CD204CFF33DFFB"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_113__1_n_0\
    );
\rStoredData[0]_i_114__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE377F33038080C8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_114__1_n_0\
    );
\rStoredData[0]_i_115__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52E5BD3F1F06A4E8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_115__1_n_0\
    );
\rStoredData[0]_i_116__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A37DC222DE821DD7"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_116__1_n_0\
    );
\rStoredData[0]_i_117__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1446B998676B9404"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_117__1_n_0\
    );
\rStoredData[0]_i_118__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECC40011337BEEE"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_118__1_n_0\
    );
\rStoredData[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[0]_i_4__1_n_0\,
      I1 => s_axis_video_tdata(2),
      I2 => \rStoredData[0]_i_5__1_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[0]_i_6__1_n_0\,
      O => \p_1_in__1\(0)
    );
\rStoredData[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_7__1_n_0\,
      I1 => \rStoredData_reg[0]_i_8__1_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[0]_i_9__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[0]_i_10__1_n_0\,
      O => \rStoredData[0]_i_3__1_n_0\
    );
\rStoredData[0]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_11__1_n_0\,
      I1 => \rStoredData_reg[0]_i_12__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[0]_i_13__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[0]_i_14__1_n_0\,
      O => \rStoredData[0]_i_4__1_n_0\
    );
\rStoredData[0]_i_55__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F70F00F1AF0F0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_55__1_n_0\
    );
\rStoredData[0]_i_56__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F87F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_56__1_n_0\
    );
\rStoredData[0]_i_57__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0AF5FDFFFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_57__1_n_0\
    );
\rStoredData[0]_i_58__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FF551000008A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_58__1_n_0\
    );
\rStoredData[0]_i_59__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7655579581A888AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_59__1_n_0\
    );
\rStoredData[0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_15__1_n_0\,
      I1 => \rStoredData_reg[0]_i_16__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[0]_i_17__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[0]_i_18__1_n_0\,
      O => \rStoredData[0]_i_5__1_n_0\
    );
\rStoredData[0]_i_60__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4DC9DBD392B2362"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_60__1_n_0\
    );
\rStoredData[0]_i_61__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3CBCC4C3C3C3C33"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_61__1_n_0\
    );
\rStoredData[0]_i_62__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AF00F52AD4AB52F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_62__1_n_0\
    );
\rStoredData[0]_i_63__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5969496D65A4A4B6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_63__1_n_0\
    );
\rStoredData[0]_i_64__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5961E5A779E5A586"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_64__1_n_0\
    );
\rStoredData[0]_i_65__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAA8575F0111EEEA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_65__1_n_0\
    );
\rStoredData[0]_i_66__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AF078F0F0E1F1A5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_66__1_n_0\
    );
\rStoredData[0]_i_67__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34CF4A9D9125E10E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_67__1_n_0\
    );
\rStoredData[0]_i_68__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD8819FD297F6222"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_68__1_n_0\
    );
\rStoredData[0]_i_69__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC53ABC43338DCD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_69__1_n_0\
    );
\rStoredData[0]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[0]_i_19__1_n_0\,
      I1 => \rStoredData_reg[0]_i_20__1_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[0]_i_21__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[0]_i_22__1_n_0\,
      O => \rStoredData[0]_i_6__1_n_0\
    );
\rStoredData[0]_i_70__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FFFFFEEA000111"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_70__1_n_0\
    );
\rStoredData[0]_i_71__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080F0000F7F0FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_71__1_n_0\
    );
\rStoredData[0]_i_72__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"46B9D4A9952B9D62"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_72__1_n_0\
    );
\rStoredData[0]_i_73__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAE5151F7F70808"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_73__1_n_0\
    );
\rStoredData[0]_i_74__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BB2D99B6464A626"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_74__1_n_0\
    );
\rStoredData[0]_i_75__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B995666A5556ABB9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_75__1_n_0\
    );
\rStoredData[0]_i_76__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA6E7657559599A9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_76__1_n_0\
    );
\rStoredData[0]_i_77__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11EA55A87F80FE11"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_77__1_n_0\
    );
\rStoredData[0]_i_78__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A665AA6659995559"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_78__1_n_0\
    );
\rStoredData[0]_i_79__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A87700FF00FF01EE"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_79__1_n_0\
    );
\rStoredData[0]_i_80__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2665AA66599B55D9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_80__1_n_0\
    );
\rStoredData[0]_i_81__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F8000FF00FF00FF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_81__1_n_0\
    );
\rStoredData[0]_i_82__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"665D266499BA5D99"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_82__1_n_0\
    );
\rStoredData[0]_i_83__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"860E71B3F09F69E0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_83__1_n_0\
    );
\rStoredData[0]_i_84__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1051EEAE8A8875F7"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[0]_i_84__1_n_0\
    );
\rStoredData[0]_i_85__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C43C63CCC3BC33C3"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_85__1_n_0\
    );
\rStoredData[0]_i_86__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"769155A8578815EA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[0]_i_86__1_n_0\
    );
\rStoredData[0]_i_87__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9D462B9D"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_87__1_n_0\
    );
\rStoredData[0]_i_88__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB999D546662AAB9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_88__1_n_0\
    );
\rStoredData[0]_i_89__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5577FEEAA8811155"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_89__1_n_0\
    );
\rStoredData[0]_i_90__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA880011557FFEEA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[0]_i_90__1_n_0\
    );
\rStoredData[0]_i_91__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"533A32ECCCD3D932"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_91__1_n_0\
    );
\rStoredData[0]_i_92__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5756EEEAA8811515"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_92__1_n_0\
    );
\rStoredData[0]_i_93__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9DB99D392B626246"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_93__1_n_0\
    );
\rStoredData[0]_i_94__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC32CC4CD3CC33DB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_94__1_n_0\
    );
\rStoredData[0]_i_95__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC339C4333CCC4"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_95__1_n_0\
    );
\rStoredData[0]_i_96__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4623DCC43BB94623"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_96__1_n_0\
    );
\rStoredData[0]_i_97__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9956669155AAA9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_97__1_n_0\
    );
\rStoredData[0]_i_98__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"89116EEA5577A899"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_98__1_n_0\
    );
\rStoredData[0]_i_99__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FC43DC17A9249E"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[0]_i_99__1_n_0\
    );
\rStoredData[1]_i_100__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2232EC22CD6CD9DD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_100__1_n_0\
    );
\rStoredData[1]_i_101__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00000020FFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_101__1_n_0\
    );
\rStoredData[1]_i_102__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AAF00AAFD54FFD5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_102__1_n_0\
    );
\rStoredData[1]_i_103__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088C88CCEEF7EF77"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_103__1_n_0\
    );
\rStoredData[1]_i_104__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F4F0F050520A0B0"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_104__1_n_0\
    );
\rStoredData[1]_i_105__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E361717961617978"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_105__1_n_0\
    );
\rStoredData[1]_i_106__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9888E6E68EEE7777"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_106__1_n_0\
    );
\rStoredData[1]_i_107__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5075EFAFF5F78A0A"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_107__1_n_0\
    );
\rStoredData[1]_i_108__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2B4B024B024B42D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_108__1_n_0\
    );
\rStoredData[1]_i_109__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080000F0F0F3FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_109__1_n_0\
    );
\rStoredData[1]_i_110__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9DCCDC44"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_110__1_n_0\
    );
\rStoredData[1]_i_111__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0F0FF4"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_111__1_n_0\
    );
\rStoredData[1]_i_112__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004F0000FFB0FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_112__1_n_0\
    );
\rStoredData[1]_i_113__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA67551955558AAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_113__1_n_0\
    );
\rStoredData[1]_i_114__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555D55D9BAAAAAA2"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_114__1_n_0\
    );
\rStoredData[1]_i_115__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232C4C817C799B8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_115__1_n_0\
    );
\rStoredData[1]_i_116__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8ACAD2D7F7F53520"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_116__1_n_0\
    );
\rStoredData[1]_i_117__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FDAF500AD0AF00"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_117__0_n_0\
    );
\rStoredData[1]_i_118__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A496D5A5BE5A5"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_118__0_n_0\
    );
\rStoredData[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[1]_i_4__1_n_0\,
      I1 => s_axis_video_tdata(3),
      I2 => \rStoredData[1]_i_5__1_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[1]_i_6__1_n_0\,
      O => \p_1_in__1\(1)
    );
\rStoredData[1]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_7__0_n_0\,
      I1 => \rStoredData_reg[1]_i_8__1_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[1]_i_9__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[1]_i_10__1_n_0\,
      O => \rStoredData[1]_i_3__1_n_0\
    );
\rStoredData[1]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_11__1_n_0\,
      I1 => \rStoredData_reg[1]_i_12__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[1]_i_13__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[1]_i_14__1_n_0\,
      O => \rStoredData[1]_i_4__1_n_0\
    );
\rStoredData[1]_i_55__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"334C32CCCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_55__0_n_0\
    );
\rStoredData[1]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3C3C3CCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_56_n_0\
    );
\rStoredData[1]_i_57__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23DDFF00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_57__1_n_0\
    );
\rStoredData[1]_i_58__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFF00010000"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[1]_i_58__1_n_0\
    );
\rStoredData[1]_i_59__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77F7551008008A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_59__1_n_0\
    );
\rStoredData[1]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_15__1_n_0\,
      I1 => \rStoredData_reg[1]_i_16__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[1]_i_17__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[1]_i_18__1_n_0\,
      O => \rStoredData[1]_i_5__1_n_0\
    );
\rStoredData[1]_i_60__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98E6AA758A77AE55"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_60__1_n_0\
    );
\rStoredData[1]_i_61__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA696A692A696A5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_61__1_n_0\
    );
\rStoredData[1]_i_62__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF5AAA580A501A75"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_62__1_n_0\
    );
\rStoredData[1]_i_63__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66444CCDDDD9999B"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_63__1_n_0\
    );
\rStoredData[1]_i_64__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0807FFF0515A8A8"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_64__1_n_0\
    );
\rStoredData[1]_i_65__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCDCDCD9393B333"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_65__1_n_0\
    );
\rStoredData[1]_i_66__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C4CCCCCCCCDCDC9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_66__1_n_0\
    );
\rStoredData[1]_i_67__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2387F973E813DC6C"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[1]_i_67__1_n_0\
    );
\rStoredData[1]_i_68__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2F5D5B52D2A280A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_68__1_n_0\
    );
\rStoredData[1]_i_69__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A4A6969E1A1B5B"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_69__1_n_0\
    );
\rStoredData[1]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[1]_i_19__1_n_0\,
      I1 => \rStoredData_reg[1]_i_20__1_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[1]_i_21__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[1]_i_22__1_n_0\,
      O => \rStoredData[1]_i_6__1_n_0\
    );
\rStoredData[1]_i_70__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FA0FF00FF00FE11"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_70__1_n_0\
    );
\rStoredData[1]_i_71__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2300FCFFFFFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_71__1_n_0\
    );
\rStoredData[1]_i_72__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7117708558851AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_72__1_n_0\
    );
\rStoredData[1]_i_73__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF51FF00FF00F708"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_73__1_n_0\
    );
\rStoredData[1]_i_74__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFF4CCC3330FB33"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_74__1_n_0\
    );
\rStoredData[1]_i_75__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE15AA57887F01EE"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_75__1_n_0\
    );
\rStoredData[1]_i_76__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5F1E1F0F0787058"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_76__1_n_0\
    );
\rStoredData[1]_i_77__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E5A70F0F0F0F0E1"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_77__1_n_0\
    );
\rStoredData[1]_i_78__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5110AEAE0888FFF7"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_78__1_n_0\
    );
\rStoredData[1]_i_79__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0E78F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_79__1_n_0\
    );
\rStoredData[1]_i_80__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEF5511F7750088"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_80__1_n_0\
    );
\rStoredData[1]_i_81__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F8FF0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_81__1_n_0\
    );
\rStoredData[1]_i_82__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0520BAFAA0AADF5F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_82__1_n_0\
    );
\rStoredData[1]_i_83__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C333CA23D8235C2"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_83__1_n_0\
    );
\rStoredData[1]_i_84__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF005DA005BA00FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_84__1_n_0\
    );
\rStoredData[1]_i_85__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A6559E579A569A6"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_85__1_n_0\
    );
\rStoredData[1]_i_86__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080A080EEFF7F7F5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_86__1_n_0\
    );
\rStoredData[1]_i_87__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D99BB226"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_87__1_n_0\
    );
\rStoredData[1]_i_88__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"324426CC224466DD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_88__1_n_0\
    );
\rStoredData[1]_i_89__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9933BB3333223266"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_89__1_n_0\
    );
\rStoredData[1]_i_90__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F3C38F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_90__1_n_0\
    );
\rStoredData[1]_i_91__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"347CCCCBC333303C"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_91__1_n_0\
    );
\rStoredData[1]_i_92__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800001557FFFEEA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_92__1_n_0\
    );
\rStoredData[1]_i_93__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540F555AAAB00AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_93__1_n_0\
    );
\rStoredData[1]_i_94__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3B333343C3C4"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_94__1_n_0\
    );
\rStoredData[1]_i_95__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666665555D599999"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[1]_i_95__1_n_0\
    );
\rStoredData[1]_i_96__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"644599995DDD9BBA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_96__1_n_0\
    );
\rStoredData[1]_i_97__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDD9BBBDD993332"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_97__1_n_0\
    );
\rStoredData[1]_i_98__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"324C66CC22CC44DD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[1]_i_98__1_n_0\
    );
\rStoredData[1]_i_99__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55ED0043BA36E8"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[1]_i_99__1_n_0\
    );
\rStoredData[2]_i_100__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F333B3333C0C0C4C"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_100__1_n_0\
    );
\rStoredData[2]_i_101__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666666662222B"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_101__1_n_0\
    );
\rStoredData[2]_i_102__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99955466"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_102__1_n_0\
    );
\rStoredData[2]_i_103__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555556AAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_103__1_n_0\
    );
\rStoredData[2]_i_104__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95555"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_104__1_n_0\
    );
\rStoredData[2]_i_105__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECFF03000000FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_105__1_n_0\
    );
\rStoredData[2]_i_106__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6233633333B93B99"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_106__1_n_0\
    );
\rStoredData[2]_i_107__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FF0000FF00FFFF"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_107__1_n_0\
    );
\rStoredData[2]_i_108__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF509F055F2558A0"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_108__1_n_0\
    );
\rStoredData[2]_i_109__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FCFD2D2CBDAD2D2"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_109__0_n_0\
    );
\rStoredData[2]_i_110__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C70C3C3C"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_110__0_n_0\
    );
\rStoredData[2]_i_111__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999399B333263266"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_111__0_n_0\
    );
\rStoredData[2]_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_38__1_n_0\,
      I1 => \rStoredData_reg[2]_i_39__1_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_40__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_41__1_n_0\,
      O => \rStoredData[2]_i_15__1_n_0\
    );
\rStoredData[2]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[2]_i_42__1_n_0\,
      I1 => \rStoredData_reg[2]_i_43__1_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_44__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_45__1_n_0\,
      O => \rStoredData[2]_i_16__1_n_0\
    );
\rStoredData[2]_i_21__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66AAEAAAAAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_21__1_n_0\
    );
\rStoredData[2]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666EAAAAAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_22__0_n_0\
    );
\rStoredData[2]_i_23__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF070F0F0F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_23__0_n_0\
    );
\rStoredData[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[2]_i_4__1_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => \rStoredData_reg[2]_i_5__1_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[2]_i_6__1_n_0\,
      O => \p_1_in__1\(2)
    );
\rStoredData[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[2]_i_7__0_n_0\,
      I1 => \rStoredData_reg[2]_i_8__1_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[2]_i_9__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[2]_i_10__1_n_0\,
      O => \rStoredData[2]_i_3__1_n_0\
    );
\rStoredData[2]_i_42__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCDD99BB333"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_42__1_n_0\
    );
\rStoredData[2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_11__1_n_0\,
      I1 => \rStoredData_reg[2]_i_12__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[2]_i_13__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_14__1_n_0\,
      O => \rStoredData[2]_i_4__1_n_0\
    );
\rStoredData[2]_i_54__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFF00010000"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_54__0_n_0\
    );
\rStoredData[2]_i_55__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50525A4A0A0F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_55__1_n_0\
    );
\rStoredData[2]_i_56__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB99BB9999DDDDDC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_56__1_n_0\
    );
\rStoredData[2]_i_57__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A4A0A0A0A2F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_57__1_n_0\
    );
\rStoredData[2]_i_58__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5DD5544444442"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_58__1_n_0\
    );
\rStoredData[2]_i_59__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBABBBD5555555"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_59__1_n_0\
    );
\rStoredData[2]_i_60__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB9B99DDD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_60__1_n_0\
    );
\rStoredData[2]_i_61__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2AAAAAAAAAABBB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_61__1_n_0\
    );
\rStoredData[2]_i_62__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7CB4A5A1A2B3D2DE"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_62__1_n_0\
    );
\rStoredData[2]_i_63__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6178585A7078585A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(0),
      O => \rStoredData[2]_i_63__1_n_0\
    );
\rStoredData[2]_i_64__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC99DD33CDBBD922"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_64__1_n_0\
    );
\rStoredData[2]_i_65__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38F0F0F0F0F0F0F5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_65__1_n_0\
    );
\rStoredData[2]_i_66__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30EFFF00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_66__1_n_0\
    );
\rStoredData[2]_i_67__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00022222BFFFFFDD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_67__1_n_0\
    );
\rStoredData[2]_i_68__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD40000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_68__1_n_0\
    );
\rStoredData[2]_i_69__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF8F0FFFFF0000"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_69__1_n_0\
    );
\rStoredData[2]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[2]_i_17__1_n_0\,
      I1 => \rStoredData_reg[2]_i_18__1_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData_reg[2]_i_19__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[2]_i_20__1_n_0\,
      O => \rStoredData[2]_i_6__1_n_0\
    );
\rStoredData[2]_i_70__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCDDB9393B3"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_70__1_n_0\
    );
\rStoredData[2]_i_71__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0002BFFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_71__1_n_0\
    );
\rStoredData[2]_i_72__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C4C6CCCCCCCCCCD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_72__1_n_0\
    );
\rStoredData[2]_i_73__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF4CFFCF33FF00"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_73__1_n_0\
    );
\rStoredData[2]_i_74__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF7F00FF00FF00"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_74__1_n_0\
    );
\rStoredData[2]_i_75__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CDCDCCCCCCCC4C4"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_75__1_n_0\
    );
\rStoredData[2]_i_76__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3C3C3CCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_76__1_n_0\
    );
\rStoredData[2]_i_77__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00550A40AA00FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_77__1_n_0\
    );
\rStoredData[2]_i_78__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"659955885DAAD9AA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_78__1_n_0\
    );
\rStoredData[2]_i_79__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F04A500F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_79__1_n_0\
    );
\rStoredData[2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[6]_i_7__1_n_0\,
      I1 => \rStoredData[2]_i_21__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[2]_i_22__0_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[2]_i_23__0_n_0\,
      O => \rStoredData[2]_i_7__0_n_0\
    );
\rStoredData[2]_i_80__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B93B3B336262624"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_80__1_n_0\
    );
\rStoredData[2]_i_81__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C6C4C223333333"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_81__1_n_0\
    );
\rStoredData[2]_i_82__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333304C00CC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_82__1_n_0\
    );
\rStoredData[2]_i_83__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3F3B333C3F33330"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_83__1_n_0\
    );
\rStoredData[2]_i_84__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02022222BBBFBFBF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_84__1_n_0\
    );
\rStoredData[2]_i_85__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5D5F5555002400A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_85__1_n_0\
    );
\rStoredData[2]_i_86__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0B00F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_86__1_n_0\
    );
\rStoredData[2]_i_87__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D40A00FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_87__1_n_0\
    );
\rStoredData[2]_i_88__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE45BB55B86200BA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_88__1_n_0\
    );
\rStoredData[2]_i_89__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55999888AAAAE677"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_89__1_n_0\
    );
\rStoredData[2]_i_90__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABFD55"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_90__1_n_0\
    );
\rStoredData[2]_i_91__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A0A4AAA5A0A0AAF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[2]_i_91__1_n_0\
    );
\rStoredData[2]_i_92__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0BFFF5FFF5"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_92__1_n_0\
    );
\rStoredData[2]_i_93__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEF0F0F000010"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_93__1_n_0\
    );
\rStoredData[2]_i_94__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C78F0C3C0F0C3C30"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[2]_i_94__1_n_0\
    );
\rStoredData[2]_i_95__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0E5A70F0F0F"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_95__1_n_0\
    );
\rStoredData[2]_i_96__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9115115577667666"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_96__1_n_0\
    );
\rStoredData[2]_i_97__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55775776AAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_97__1_n_0\
    );
\rStoredData[2]_i_98__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F7FFFF0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[2]_i_98__1_n_0\
    );
\rStoredData[2]_i_99__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAEA80AA00AA55"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[2]_i_99__1_n_0\
    );
\rStoredData[3]_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAE5E5EFEA4040"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[3]_i_33__0_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[4]_i_41__0_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[3]_i_34_n_0\,
      O => \rStoredData[3]_i_11__1_n_0\
    );
\rStoredData[3]_i_17__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_45__1_n_0\,
      I1 => \rStoredData[3]_i_46__1_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData[5]_i_44_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[3]_i_47__1_n_0\,
      O => \rStoredData[3]_i_17__1_n_0\
    );
\rStoredData[3]_i_18__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[3]_i_48__1_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[3]_i_49__1_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_50__1_n_0\,
      O => \rStoredData[3]_i_18__1_n_0\
    );
\rStoredData[3]_i_21__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_55__1_n_0\,
      I1 => \rStoredData[3]_i_56__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[3]_i_57__1_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[4]_i_33__0_n_0\,
      O => \rStoredData[3]_i_21__1_n_0\
    );
\rStoredData[3]_i_23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_23__0_n_0\
    );
\rStoredData[3]_i_24__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_24__0_n_0\
    );
\rStoredData[3]_i_25__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA800000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_25__0_n_0\
    );
\rStoredData[3]_i_26__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAF0FC000C0"
    )
        port map (
      I0 => \rStoredData[6]_i_16_n_0\,
      I1 => \rStoredData[3]_i_60_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[5]_i_37__0_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_26__1_n_0\
    );
\rStoredData[3]_i_27__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333333FFC7CFC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_27__1_n_0\
    );
\rStoredData[3]_i_28__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_28__1_n_0\
    );
\rStoredData[3]_i_29__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCFCCF3F3B3B3"
    )
        port map (
      I0 => \rStoredData[3]_i_61_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[3]_i_62__0_n_0\,
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_29__1_n_0\
    );
\rStoredData[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[3]_i_4__1_n_0\,
      I1 => s_axis_video_tdata(5),
      I2 => \rStoredData[3]_i_5__1_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData[3]_i_6__1_n_0\,
      O => \p_1_in__1\(3)
    );
\rStoredData[3]_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0F0A0F0F0CFF0C0"
    )
        port map (
      I0 => \rStoredData[4]_i_49__0_n_0\,
      I1 => \rStoredData[3]_i_63__0_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[4]_i_34__0_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_30__0_n_0\
    );
\rStoredData[3]_i_33__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55577777EAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_33__0_n_0\
    );
\rStoredData[3]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_34_n_0\
    );
\rStoredData[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_7__1_n_0\,
      I1 => \rStoredData[3]_i_8__1_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData_reg[3]_i_9__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData_reg[3]_i_10__1_n_0\,
      O => \rStoredData[3]_i_3__1_n_0\
    );
\rStoredData[3]_i_41__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD5DDD544444442"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_41__1_n_0\
    );
\rStoredData[3]_i_42__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAB9B9B99D"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_42__1_n_0\
    );
\rStoredData[3]_i_45__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_45__1_n_0\
    );
\rStoredData[3]_i_46__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001555FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_46__1_n_0\
    );
\rStoredData[3]_i_47__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8888811151515"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_47__1_n_0\
    );
\rStoredData[3]_i_48__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333393CBCBC"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_48__1_n_0\
    );
\rStoredData[3]_i_49__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B9DBB9C"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_49__1_n_0\
    );
\rStoredData[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[3]_i_11__1_n_0\,
      I1 => \rStoredData_reg[3]_i_12__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData_reg[3]_i_13__0_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[3]_i_14__1_n_0\,
      O => \rStoredData[3]_i_4__1_n_0\
    );
\rStoredData[3]_i_50__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33222222677755CC"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_50__1_n_0\
    );
\rStoredData[3]_i_55__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557F0000FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_55__1_n_0\
    );
\rStoredData[3]_i_56__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFDDD44004000"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_56__1_n_0\
    );
\rStoredData[3]_i_57__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001000FF"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_57__1_n_0\
    );
\rStoredData[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[3]_i_15__1_n_0\,
      I1 => \rStoredData_reg[3]_i_16__1_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => \rStoredData[3]_i_17__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[3]_i_18__1_n_0\,
      O => \rStoredData[3]_i_5__1_n_0\
    );
\rStoredData[3]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_60_n_0\
    );
\rStoredData[3]_i_61\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_61_n_0\
    );
\rStoredData[3]_i_62__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      O => \rStoredData[3]_i_62__0_n_0\
    );
\rStoredData[3]_i_63__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_63__0_n_0\
    );
\rStoredData[3]_i_64__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A724273526752678"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(1),
      O => \rStoredData[3]_i_64__1_n_0\
    );
\rStoredData[3]_i_65__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02220222BFFDFFFD"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_65__1_n_0\
    );
\rStoredData[3]_i_66__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555544226222"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_66__1_n_0\
    );
\rStoredData[3]_i_67__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555550"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_67__1_n_0\
    );
\rStoredData[3]_i_68__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABBB9999D"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_68__1_n_0\
    );
\rStoredData[3]_i_69__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA81555"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_69__1_n_0\
    );
\rStoredData[3]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData_reg[3]_i_19__1_n_0\,
      I1 => \rStoredData_reg[3]_i_20__1_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[3]_i_21__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData_reg[3]_i_22__1_n_0\,
      O => \rStoredData[3]_i_6__1_n_0\
    );
\rStoredData[3]_i_70__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A2A2AAAAAAAAAAB"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_70__1_n_0\
    );
\rStoredData[3]_i_71__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C083C30333333333"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_71__1_n_0\
    );
\rStoredData[3]_i_72__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF070F0F0F0F0F0"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_72__1_n_0\
    );
\rStoredData[3]_i_73__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_73__1_n_0\
    );
\rStoredData[3]_i_74__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333F7C"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_74__1_n_0\
    );
\rStoredData[3]_i_75__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDD55540002222"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_75__1_n_0\
    );
\rStoredData[3]_i_76__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA89"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_76__1_n_0\
    );
\rStoredData[3]_i_77__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCFB333"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_77__1_n_0\
    );
\rStoredData[3]_i_78__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA89999911"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_78__1_n_0\
    );
\rStoredData[3]_i_79__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030304CCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_79__1_n_0\
    );
\rStoredData[3]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCBBFC88FF88FF88"
    )
        port map (
      I0 => \rStoredData[3]_i_23__0_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[3]_i_24__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_25__0_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_7__1_n_0\
    );
\rStoredData[3]_i_80__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333334C30CC"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_80__1_n_0\
    );
\rStoredData[3]_i_81__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF55FEAAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(1),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_81__1_n_0\
    );
\rStoredData[3]_i_82__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[3]_i_82__1_n_0\
    );
\rStoredData[3]_i_83__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444400022222222"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_83__1_n_0\
    );
\rStoredData[3]_i_84__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA080FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_84__1_n_0\
    );
\rStoredData[3]_i_85__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_85__1_n_0\
    );
\rStoredData[3]_i_86__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_86__1_n_0\
    );
\rStoredData[3]_i_87__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001555500000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_87__1_n_0\
    );
\rStoredData[3]_i_88__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD55555554"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_88__1_n_0\
    );
\rStoredData[3]_i_89__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFFFDD"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_89__1_n_0\
    );
\rStoredData[3]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[3]_i_26__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[3]_i_27__1_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[3]_i_28__1_n_0\,
      O => \rStoredData[3]_i_8__1_n_0\
    );
\rStoredData[3]_i_90__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555500000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[3]_i_90__0_n_0\
    );
\rStoredData[3]_i_91__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F4F0F0F0F0A2AAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_91__0_n_0\
    );
\rStoredData[3]_i_92__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EABBABBB99999999"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[3]_i_92__0_n_0\
    );
\rStoredData[3]_i_93__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF08000"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(6),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_93__0_n_0\
    );
\rStoredData[3]_i_94__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011177777FFF"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[3]_i_94__0_n_0\
    );
\rStoredData[4]_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3077304430FF30FF"
    )
        port map (
      I0 => \rStoredData[4]_i_28__1_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[4]_i_29__1_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[4]_i_30__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_12__1_n_0\
    );
\rStoredData[4]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAA88888"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(1),
      I3 => \rStoredData[4]_i_31__0_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_13__0_n_0\
    );
\rStoredData[4]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCFF3F3F3B3"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_14__0_n_0\
    );
\rStoredData[4]_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFAFC000C000C0"
    )
        port map (
      I0 => \rStoredData[4]_i_32__0_n_0\,
      I1 => \rStoredData[5]_i_34__0_n_0\,
      I2 => s_axis_video_tdata(7),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[4]_i_33__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_15__1_n_0\
    );
\rStoredData[4]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFC0FFFFBFC00000"
    )
        port map (
      I0 => \rStoredData[4]_i_34__0_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData[4]_i_35__0_n_0\,
      O => \rStoredData[4]_i_16__1_n_0\
    );
\rStoredData[4]_i_17__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FF33BBB8CC00"
    )
        port map (
      I0 => \rStoredData[4]_i_36_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_37__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(5),
      I5 => \rStoredData[4]_i_38__1_n_0\,
      O => \rStoredData[4]_i_17__1_n_0\
    );
\rStoredData[4]_i_18__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \rStoredData[5]_i_20__0_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[4]_i_39__0_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData_reg[4]_i_40_n_0\,
      O => \rStoredData[4]_i_18__1_n_0\
    );
\rStoredData[4]_i_19__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF00AF00FCFFFC00"
    )
        port map (
      I0 => \rStoredData[4]_i_41__0_n_0\,
      I1 => \rStoredData[4]_i_42__0_n_0\,
      I2 => s_axis_video_tdata(5),
      I3 => s_axis_video_tdata(7),
      I4 => \rStoredData[3]_i_28__1_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_19__1_n_0\
    );
\rStoredData[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBB8BBB8"
    )
        port map (
      I0 => \rStoredData_reg[4]_i_2__1_n_0\,
      I1 => sGammaReg(2),
      I2 => \rStoredData[4]_i_3__1_n_0\,
      I3 => \rStoredData[4]_i_4__1_n_0\,
      I4 => \rStoredData[4]_i_5__0_n_0\,
      I5 => \^rstoreddata_reg[4]_0\,
      O => \rStoredData[4]_i_1__1_n_0\
    );
\rStoredData[4]_i_20__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8BB8888"
    )
        port map (
      I0 => \rStoredData[4]_i_43__0_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_37__0_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[6]_i_7__1_n_0\,
      O => \rStoredData[4]_i_20__1_n_0\
    );
\rStoredData[4]_i_21__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[4]_i_21__1_n_0\
    );
\rStoredData[4]_i_22__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[4]_i_44__1_n_0\,
      I1 => \rStoredData[4]_i_45__1_n_0\,
      I2 => s_axis_video_tdata(6),
      I3 => \rStoredData[4]_i_46__1_n_0\,
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[4]_i_47__1_n_0\,
      O => \rStoredData[4]_i_22__1_n_0\
    );
\rStoredData[4]_i_23__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5A5E0A5A5A5A5A5"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[4]_i_48_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => s_axis_video_tdata(4),
      I4 => \rStoredData[4]_i_49__0_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_23__1_n_0\
    );
\rStoredData[4]_i_24__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \rStoredData[4]_i_50__1_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[5]_i_42__0_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[4]_i_51__1_n_0\,
      O => \rStoredData[4]_i_24__1_n_0\
    );
\rStoredData[4]_i_25__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B8BBB8BB"
    )
        port map (
      I0 => \rStoredData[4]_i_52__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[4]_i_53__1_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[4]_i_54__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_25__1_n_0\
    );
\rStoredData[4]_i_26__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rStoredData[4]_i_55__1_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[4]_i_56__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[4]_i_57__1_n_0\,
      O => \rStoredData[4]_i_26__1_n_0\
    );
\rStoredData[4]_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DFDF0F00D0D0"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[4]_i_50__1_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => \rStoredData[5]_i_44_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => \rStoredData[4]_i_58__0_n_0\,
      O => \rStoredData[4]_i_27__0_n_0\
    );
\rStoredData[4]_i_28__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_28__1_n_0\
    );
\rStoredData[4]_i_29__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_29__1_n_0\
    );
\rStoredData[4]_i_30__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_30__1_n_0\
    );
\rStoredData[4]_i_31__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      O => \rStoredData[4]_i_31__0_n_0\
    );
\rStoredData[4]_i_32__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_32__0_n_0\
    );
\rStoredData[4]_i_33__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_33__0_n_0\
    );
\rStoredData[4]_i_34__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_34__0_n_0\
    );
\rStoredData[4]_i_35__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001FFFFFFFF00000"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_35__0_n_0\
    );
\rStoredData[4]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555544422222AAA"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_36_n_0\
    );
\rStoredData[4]_i_37__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005F7F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_37__0_n_0\
    );
\rStoredData[4]_i_38__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFF00000000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_38__1_n_0\
    );
\rStoredData[4]_i_39__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_39__0_n_0\
    );
\rStoredData[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020E0E0E020202"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => sGammaReg(0),
      I2 => sGammaReg(1),
      I3 => \rStoredData_reg[4]_i_9__1_n_0\,
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData_reg[4]_i_10__1_n_0\,
      O => \rStoredData[4]_i_3__1_n_0\
    );
\rStoredData[4]_i_41__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_41__0_n_0\
    );
\rStoredData[4]_i_42__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA80"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_42__0_n_0\
    );
\rStoredData[4]_i_43__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[4]_i_43__0_n_0\
    );
\rStoredData[4]_i_44__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000557F"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_44__1_n_0\
    );
\rStoredData[4]_i_45__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880000000000001"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_45__1_n_0\
    );
\rStoredData[4]_i_46__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_46__1_n_0\
    );
\rStoredData[4]_i_47__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_47__1_n_0\
    );
\rStoredData[4]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_48_n_0\
    );
\rStoredData[4]_i_49__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_49__0_n_0\
    );
\rStoredData[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rStoredData_reg[4]_i_11_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[4]_i_12__1_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[4]_i_13__0_n_0\,
      I5 => \^rstoreddata_reg[4]_1\,
      O => \rStoredData[4]_i_4__1_n_0\
    );
\rStoredData[4]_i_50__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001555"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_50__1_n_0\
    );
\rStoredData[4]_i_51__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCCCCCCCC8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_51__1_n_0\
    );
\rStoredData[4]_i_52__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30040C0CCCCCCCCC"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_52__1_n_0\
    );
\rStoredData[4]_i_53__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_53__1_n_0\
    );
\rStoredData[4]_i_54__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557FFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_54__1_n_0\
    );
\rStoredData[4]_i_55__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8899955555555"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_55__1_n_0\
    );
\rStoredData[4]_i_56__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80033333"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_56__0_n_0\
    );
\rStoredData[4]_i_57__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999DCC4CCC4"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(3),
      O => \rStoredData[4]_i_57__1_n_0\
    );
\rStoredData[4]_i_58__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAAEAAA"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[4]_i_58__0_n_0\
    );
\rStoredData[4]_i_59__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636363636332723A"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(2),
      O => \rStoredData[4]_i_59__0_n_0\
    );
\rStoredData[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rStoredData[4]_i_14__0_n_0\,
      I1 => \rStoredData[4]_i_15__1_n_0\,
      I2 => s_axis_video_tdata(9),
      I3 => \rStoredData[4]_i_16__1_n_0\,
      I4 => s_axis_video_tdata(8),
      I5 => \rStoredData[4]_i_17__1_n_0\,
      O => \rStoredData[4]_i_5__0_n_0\
    );
\rStoredData[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sGammaReg(1),
      I1 => sGammaReg(0),
      O => \^rstoreddata_reg[4]_0\
    );
\rStoredData[4]_i_60__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57775777EAAAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[4]_i_60__0_n_0\
    );
\rStoredData[5]_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55040504FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[5]_i_25_n_0\,
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_26__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_10__1_n_0\
    );
\rStoredData[5]_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55155555"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(5),
      I2 => s_axis_video_tdata(3),
      I3 => \rStoredData[5]_i_27__1_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_11__1_n_0\
    );
\rStoredData[5]_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sGammaReg(0),
      I1 => sGammaReg(1),
      O => \^rstoreddata_reg[5]_0\
    );
\rStoredData[5]_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80FF8000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(8),
      I4 => \rStoredData[5]_i_30__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_14__1_n_0\
    );
\rStoredData[5]_i_15__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sGammaReg(0),
      I1 => sGammaReg(1),
      O => \^rstoreddata_reg[4]_1\
    );
\rStoredData[5]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFB333333300000"
    )
        port map (
      I0 => \rStoredData[5]_i_31__0_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[5]_i_22__1_n_0\,
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_16__1_n_0\
    );
\rStoredData[5]_i_17__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8383330333333333"
    )
        port map (
      I0 => \rStoredData[5]_i_31__0_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(6),
      I3 => \rStoredData[5]_i_32__0_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_17__1_n_0\
    );
\rStoredData[5]_i_18__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0F0AF8FAF8F"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \rStoredData[5]_i_33__0_n_0\,
      I2 => s_axis_video_tdata(8),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[5]_i_34__0_n_0\,
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[5]_i_18__1_n_0\
    );
\rStoredData[5]_i_19__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000003033303"
    )
        port map (
      I0 => \rStoredData[5]_i_35__0_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[5]_i_36_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_19__0_n_0\
    );
\rStoredData[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => \rStoredData_reg[5]_i_2__1_n_0\,
      I1 => sGammaReg(2),
      I2 => \rStoredData[5]_i_3__1_n_0\,
      I3 => \rStoredData[5]_i_4__1_n_0\,
      I4 => \rStoredData[5]_i_5__1_n_0\,
      I5 => \rStoredData[5]_i_6__1_n_0\,
      O => \rStoredData[5]_i_1__1_n_0\
    );
\rStoredData[5]_i_20__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_20__0_n_0\
    );
\rStoredData[5]_i_21__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B833B83333333300"
    )
        port map (
      I0 => \rStoredData[5]_i_37__0_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[5]_i_36_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[5]_i_31__0_n_0\,
      I5 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_21__0_n_0\
    );
\rStoredData[5]_i_22__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C800"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_22__1_n_0\
    );
\rStoredData[5]_i_23__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFAEA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[5]_i_38__0_n_0\,
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_39__0_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_23__1_n_0\
    );
\rStoredData[5]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080FCCCCCCC"
    )
        port map (
      I0 => \rStoredData[5]_i_40_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[5]_i_31__0_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_24_n_0\
    );
\rStoredData[5]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_25_n_0\
    );
\rStoredData[5]_i_26__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_26__0_n_0\
    );
\rStoredData[5]_i_27__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      O => \rStoredData[5]_i_27__1_n_0\
    );
\rStoredData[5]_i_28__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB88BBB8BBB888"
    )
        port map (
      I0 => \rStoredData[5]_i_41__0_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[5]_i_42__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => \rStoredData[4]_i_28__1_n_0\,
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_28__1_n_0\
    );
\rStoredData[5]_i_29__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00A8FFA8FF"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \rStoredData[5]_i_43_n_0\,
      I2 => s_axis_video_tdata(4),
      I3 => s_axis_video_tdata(8),
      I4 => \rStoredData[5]_i_44_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_29__0_n_0\
    );
\rStoredData[5]_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(0),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_30__0_n_0\
    );
\rStoredData[5]_i_31__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_31__0_n_0\
    );
\rStoredData[5]_i_32__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_32__0_n_0\
    );
\rStoredData[5]_i_33__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_33__0_n_0\
    );
\rStoredData[5]_i_34__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000057FF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_34__0_n_0\
    );
\rStoredData[5]_i_35__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_35__0_n_0\
    );
\rStoredData[5]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_36_n_0\
    );
\rStoredData[5]_i_37__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_37__0_n_0\
    );
\rStoredData[5]_i_38__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_38__0_n_0\
    );
\rStoredData[5]_i_39__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_39__0_n_0\
    );
\rStoredData[5]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rStoredData_reg[5]_i_9__1_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[5]_i_10__1_n_0\,
      I3 => s_axis_video_tdata(8),
      I4 => \rStoredData[5]_i_11__1_n_0\,
      I5 => \^rstoreddata_reg[5]_0\,
      O => \rStoredData[5]_i_3__1_n_0\
    );
\rStoredData[5]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_40_n_0\
    );
\rStoredData[5]_i_41__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555777"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[5]_i_41__0_n_0\
    );
\rStoredData[5]_i_42__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(4),
      O => \rStoredData[5]_i_42__0_n_0\
    );
\rStoredData[5]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[5]_i_43_n_0\
    );
\rStoredData[5]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000015FFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[5]_i_44_n_0\
    );
\rStoredData[5]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => sGammaReg(1),
      I2 => sGammaReg(0),
      O => \rStoredData[5]_i_4__1_n_0\
    );
\rStoredData[5]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \rStoredData_reg[5]_i_13_n_0\,
      I1 => s_axis_video_tdata(7),
      I2 => \rStoredData[5]_i_14__1_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => s_axis_video_tdata(8),
      I5 => \^rstoreddata_reg[4]_1\,
      O => \rStoredData[5]_i_5__1_n_0\
    );
\rStoredData[5]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \rStoredData[5]_i_16__1_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[5]_i_17__1_n_0\,
      I3 => s_axis_video_tdata(9),
      I4 => \rStoredData[5]_i_18__1_n_0\,
      I5 => \^rstoreddata_reg[4]_0\,
      O => \rStoredData[5]_i_6__1_n_0\
    );
\rStoredData[5]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8BB8888"
    )
        port map (
      I0 => \rStoredData[5]_i_19__0_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[5]_i_20__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => \rStoredData[5]_i_21__0_n_0\,
      O => \rStoredData[5]_i_7__1_n_0\
    );
\rStoredData[5]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(5),
      I2 => \rStoredData[5]_i_22__1_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[5]_i_8__1_n_0\
    );
\rStoredData[6]_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF3F3B3B0"
    )
        port map (
      I0 => \rStoredData[6]_i_17__0_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => s_axis_video_tdata(4),
      I3 => \rStoredData[6]_i_18__0_n_0\,
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_10__1_n_0\
    );
\rStoredData[6]_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(0),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(2),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_11__1_n_0\
    );
\rStoredData[6]_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030300C0C8C8C"
    )
        port map (
      I0 => \rStoredData[6]_i_19__0_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[4]_i_31__0_n_0\,
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[6]_i_12__1_n_0\
    );
\rStoredData[6]_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF75FF0000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(4),
      I2 => \rStoredData[5]_i_32__0_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(8),
      I5 => s_axis_video_tdata(7),
      O => \rStoredData[6]_i_13__1_n_0\
    );
\rStoredData[6]_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA888"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_11_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[6]_i_14__1_n_0\
    );
\rStoredData[6]_i_15__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(3),
      O => \rStoredData[6]_i_15__1_n_0\
    );
\rStoredData[6]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[6]_i_16_n_0\
    );
\rStoredData[6]_i_17__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      O => \rStoredData[6]_i_17__0_n_0\
    );
\rStoredData[6]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      O => \rStoredData[6]_i_18__0_n_0\
    );
\rStoredData[6]_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[6]_i_19__0_n_0\
    );
\rStoredData[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \rStoredData[6]_i_4__1_n_0\,
      I1 => s_axis_video_tdata(8),
      I2 => \rStoredData[6]_i_5__1_n_0\,
      I3 => sGammaReg(1),
      I4 => sGammaReg(0),
      I5 => \rStoredData_reg[6]_i_6__1_n_0\,
      O => \p_1_in__1\(6)
    );
\rStoredData[6]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE5555FFFE0000"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[6]_i_7__1_n_0\,
      I3 => s_axis_video_tdata(7),
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[6]_i_8__1_n_0\,
      O => \rStoredData[6]_i_3__1_n_0\
    );
\rStoredData[6]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCEEFFFFF0000000"
    )
        port map (
      I0 => \rStoredData[6]_i_9__0_n_0\,
      I1 => s_axis_video_tdata(9),
      I2 => \rStoredData[6]_i_10__1_n_0\,
      I3 => s_axis_video_tdata(6),
      I4 => s_axis_video_tdata(7),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[6]_i_4__1_n_0\
    );
\rStoredData[6]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEA55FFFFEA00AA"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[6]_i_11__1_n_0\,
      I3 => s_axis_video_tdata(8),
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[6]_i_12__1_n_0\,
      O => \rStoredData[6]_i_5__1_n_0\
    );
\rStoredData[6]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(0),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(1),
      I4 => s_axis_video_tdata(3),
      I5 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_7__1_n_0\
    );
\rStoredData[6]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBF0FBFFFF0F0F0"
    )
        port map (
      I0 => \rStoredData[6]_i_15__1_n_0\,
      I1 => s_axis_video_tdata(4),
      I2 => s_axis_video_tdata(7),
      I3 => s_axis_video_tdata(5),
      I4 => \rStoredData[6]_i_16_n_0\,
      I5 => s_axis_video_tdata(6),
      O => \rStoredData[6]_i_8__1_n_0\
    );
\rStoredData[6]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(3),
      I4 => s_axis_video_tdata(5),
      O => \rStoredData[6]_i_9__0_n_0\
    );
\rStoredData[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => m_axis_video_tready,
      O => \^e\(0)
    );
\rStoredData[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(4),
      O => \rStoredData[7]_i_10_n_0\
    );
\rStoredData[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      O => \rStoredData[7]_i_11_n_0\
    );
\rStoredData[7]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CAFFCA00"
    )
        port map (
      I0 => \rStoredData[7]_i_5__1_n_0\,
      I1 => \rStoredData[7]_i_6__1_n_0\,
      I2 => sGammaReg(1),
      I3 => sGammaReg(0),
      I4 => s_axis_video_tdata(9),
      I5 => \rStoredData[7]_i_7__0_n_0\,
      O => \p_1_in__1\(7)
    );
\rStoredData[7]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => s_axis_video_tdata(9),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_8__0_n_0\,
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(7),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[7]_i_4__1_n_0\
    );
\rStoredData[7]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFE000"
    )
        port map (
      I0 => \rStoredData[7]_i_9__1_n_0\,
      I1 => s_axis_video_tdata(6),
      I2 => s_axis_video_tdata(8),
      I3 => s_axis_video_tdata(7),
      I4 => s_axis_video_tdata(9),
      O => \rStoredData[7]_i_5__1_n_0\
    );
\rStoredData[7]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCCC888"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(8),
      I2 => s_axis_video_tdata(5),
      I3 => \rStoredData[7]_i_10_n_0\,
      I4 => s_axis_video_tdata(6),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[7]_i_6__1_n_0\
    );
\rStoredData[7]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAAA00000000"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => s_axis_video_tdata(6),
      I2 => \rStoredData[7]_i_11_n_0\,
      I3 => s_axis_video_tdata(4),
      I4 => s_axis_video_tdata(5),
      I5 => s_axis_video_tdata(8),
      O => \rStoredData[7]_i_7__0_n_0\
    );
\rStoredData[7]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(1),
      I2 => s_axis_video_tdata(2),
      I3 => s_axis_video_tdata(0),
      I4 => s_axis_video_tdata(4),
      O => \rStoredData[7]_i_8__0_n_0\
    );
\rStoredData[7]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(3),
      I2 => s_axis_video_tdata(1),
      I3 => s_axis_video_tdata(2),
      I4 => s_axis_video_tdata(4),
      I5 => s_axis_video_tdata(9),
      O => \rStoredData[7]_i_9__1_n_0\
    );
\rStoredData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => \^e\(0),
      D => \rStoredData_reg[0]_i_1__1_n_0\,
      Q => m_axis_video_tdata(0),
      R => '0'
    );
\rStoredData_reg[0]_i_10__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_29__1_n_0\,
      I1 => \rStoredData_reg[0]_i_30__1_n_0\,
      O => \rStoredData_reg[0]_i_10__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_11__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_31__1_n_0\,
      I1 => \rStoredData_reg[0]_i_32__1_n_0\,
      O => \rStoredData_reg[0]_i_11__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_12__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_33__1_n_0\,
      I1 => \rStoredData_reg[0]_i_34__1_n_0\,
      O => \rStoredData_reg[0]_i_12__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_13__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_35__1_n_0\,
      I1 => \rStoredData_reg[0]_i_36__1_n_0\,
      O => \rStoredData_reg[0]_i_13__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_14__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_37__1_n_0\,
      I1 => \rStoredData_reg[0]_i_38__1_n_0\,
      O => \rStoredData_reg[0]_i_14__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_15__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_39__1_n_0\,
      I1 => \rStoredData_reg[0]_i_40__1_n_0\,
      O => \rStoredData_reg[0]_i_15__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_16__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_41__1_n_0\,
      I1 => \rStoredData_reg[0]_i_42__1_n_0\,
      O => \rStoredData_reg[0]_i_16__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_17__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_43__1_n_0\,
      I1 => \rStoredData_reg[0]_i_44__1_n_0\,
      O => \rStoredData_reg[0]_i_17__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_18__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_45__1_n_0\,
      I1 => \rStoredData_reg[0]_i_46__1_n_0\,
      O => \rStoredData_reg[0]_i_18__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[0]_i_19__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_47__1_n_0\,
      I1 => \rStoredData_reg[0]_i_48__1_n_0\,
      O => \rStoredData_reg[0]_i_19__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__1\(0),
      I1 => \rStoredData[0]_i_3__1_n_0\,
      O => \rStoredData_reg[0]_i_1__1_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[0]_i_20__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_49__1_n_0\,
      I1 => \rStoredData_reg[0]_i_50__1_n_0\,
      O => \rStoredData_reg[0]_i_20__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_21__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_51__1_n_0\,
      I1 => \rStoredData_reg[0]_i_52__1_n_0\,
      O => \rStoredData_reg[0]_i_21__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_22__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_53__1_n_0\,
      I1 => \rStoredData_reg[0]_i_54__1_n_0\,
      O => \rStoredData_reg[0]_i_22__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_23__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_55__1_n_0\,
      I1 => \rStoredData[0]_i_56__1_n_0\,
      O => \rStoredData_reg[0]_i_23__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_24__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_57__1_n_0\,
      I1 => \rStoredData[0]_i_58__1_n_0\,
      O => \rStoredData_reg[0]_i_24__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_25__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_59__1_n_0\,
      I1 => \rStoredData[0]_i_60__1_n_0\,
      O => \rStoredData_reg[0]_i_25__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_26__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_61__1_n_0\,
      I1 => \rStoredData[0]_i_62__1_n_0\,
      O => \rStoredData_reg[0]_i_26__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_27__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_63__1_n_0\,
      I1 => \rStoredData[0]_i_64__1_n_0\,
      O => \rStoredData_reg[0]_i_27__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_28__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_65__1_n_0\,
      I1 => \rStoredData[0]_i_66__1_n_0\,
      O => \rStoredData_reg[0]_i_28__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_29__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_67__1_n_0\,
      I1 => \rStoredData[0]_i_68__1_n_0\,
      O => \rStoredData_reg[0]_i_29__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_30__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_69__1_n_0\,
      I1 => \rStoredData[0]_i_70__1_n_0\,
      O => \rStoredData_reg[0]_i_30__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_31__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_71__1_n_0\,
      I1 => \rStoredData[0]_i_72__1_n_0\,
      O => \rStoredData_reg[0]_i_31__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_32__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_73__1_n_0\,
      I1 => \rStoredData[0]_i_74__1_n_0\,
      O => \rStoredData_reg[0]_i_32__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_33__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_75__1_n_0\,
      I1 => \rStoredData[0]_i_76__1_n_0\,
      O => \rStoredData_reg[0]_i_33__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_34__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_77__1_n_0\,
      I1 => \rStoredData[0]_i_78__1_n_0\,
      O => \rStoredData_reg[0]_i_34__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_35__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_79__1_n_0\,
      I1 => \rStoredData[0]_i_80__1_n_0\,
      O => \rStoredData_reg[0]_i_35__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_36__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_81__1_n_0\,
      I1 => \rStoredData[0]_i_82__1_n_0\,
      O => \rStoredData_reg[0]_i_36__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_37__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_83__1_n_0\,
      I1 => \rStoredData[0]_i_84__1_n_0\,
      O => \rStoredData_reg[0]_i_37__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_38__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_85__1_n_0\,
      I1 => \rStoredData[0]_i_86__1_n_0\,
      O => \rStoredData_reg[0]_i_38__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[0]_i_39__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_87__1_n_0\,
      I1 => \rStoredData[0]_i_88__1_n_0\,
      O => \rStoredData_reg[0]_i_39__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_40__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_89__1_n_0\,
      I1 => \rStoredData[0]_i_90__1_n_0\,
      O => \rStoredData_reg[0]_i_40__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_41__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_91__1_n_0\,
      I1 => \rStoredData[0]_i_92__1_n_0\,
      O => \rStoredData_reg[0]_i_41__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_42__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_93__1_n_0\,
      I1 => \rStoredData[0]_i_94__1_n_0\,
      O => \rStoredData_reg[0]_i_42__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_43__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_95__1_n_0\,
      I1 => \rStoredData[0]_i_96__1_n_0\,
      O => \rStoredData_reg[0]_i_43__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_44__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_97__1_n_0\,
      I1 => \rStoredData[0]_i_98__1_n_0\,
      O => \rStoredData_reg[0]_i_44__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_45__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_99__1_n_0\,
      I1 => \rStoredData[0]_i_100__1_n_0\,
      O => \rStoredData_reg[0]_i_45__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_46__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_101__1_n_0\,
      I1 => \rStoredData[0]_i_102__1_n_0\,
      O => \rStoredData_reg[0]_i_46__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[0]_i_47__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_103__1_n_0\,
      I1 => \rStoredData[0]_i_104__1_n_0\,
      O => \rStoredData_reg[0]_i_47__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_48__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_105__1_n_0\,
      I1 => \rStoredData[0]_i_106__1_n_0\,
      O => \rStoredData_reg[0]_i_48__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_49__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_107__1_n_0\,
      I1 => \rStoredData[0]_i_108__1_n_0\,
      O => \rStoredData_reg[0]_i_49__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_50__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_109__1_n_0\,
      I1 => \rStoredData[0]_i_110__1_n_0\,
      O => \rStoredData_reg[0]_i_50__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_51__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_111__1_n_0\,
      I1 => \rStoredData[0]_i_112__1_n_0\,
      O => \rStoredData_reg[0]_i_51__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_52__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_113__1_n_0\,
      I1 => \rStoredData[0]_i_114__1_n_0\,
      O => \rStoredData_reg[0]_i_52__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_53__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_115__1_n_0\,
      I1 => \rStoredData[0]_i_116__1_n_0\,
      O => \rStoredData_reg[0]_i_53__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_54__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[0]_i_117__1_n_0\,
      I1 => \rStoredData[0]_i_118__1_n_0\,
      O => \rStoredData_reg[0]_i_54__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[0]_i_7__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_23__1_n_0\,
      I1 => \rStoredData_reg[0]_i_24__1_n_0\,
      O => \rStoredData_reg[0]_i_7__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_8__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_25__1_n_0\,
      I1 => \rStoredData_reg[0]_i_26__1_n_0\,
      O => \rStoredData_reg[0]_i_8__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[0]_i_9__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[0]_i_27__1_n_0\,
      I1 => \rStoredData_reg[0]_i_28__1_n_0\,
      O => \rStoredData_reg[0]_i_9__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => \^e\(0),
      D => \rStoredData_reg[1]_i_1__1_n_0\,
      Q => m_axis_video_tdata(1),
      R => '0'
    );
\rStoredData_reg[1]_i_10__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_29__1_n_0\,
      I1 => \rStoredData_reg[1]_i_30__1_n_0\,
      O => \rStoredData_reg[1]_i_10__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_11__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_31__1_n_0\,
      I1 => \rStoredData_reg[1]_i_32__1_n_0\,
      O => \rStoredData_reg[1]_i_11__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_12__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_33__1_n_0\,
      I1 => \rStoredData_reg[1]_i_34__1_n_0\,
      O => \rStoredData_reg[1]_i_12__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_13__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_35__1_n_0\,
      I1 => \rStoredData_reg[1]_i_36__1_n_0\,
      O => \rStoredData_reg[1]_i_13__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_14__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_37__1_n_0\,
      I1 => \rStoredData_reg[1]_i_38__1_n_0\,
      O => \rStoredData_reg[1]_i_14__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_15__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_39__1_n_0\,
      I1 => \rStoredData_reg[1]_i_40__1_n_0\,
      O => \rStoredData_reg[1]_i_15__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_16__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_41__1_n_0\,
      I1 => \rStoredData_reg[1]_i_42__1_n_0\,
      O => \rStoredData_reg[1]_i_16__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_17__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_43__1_n_0\,
      I1 => \rStoredData_reg[1]_i_44__1_n_0\,
      O => \rStoredData_reg[1]_i_17__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_18__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_45__1_n_0\,
      I1 => \rStoredData_reg[1]_i_46__1_n_0\,
      O => \rStoredData_reg[1]_i_18__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[1]_i_19__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_47__1_n_0\,
      I1 => \rStoredData_reg[1]_i_48__1_n_0\,
      O => \rStoredData_reg[1]_i_19__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__1\(1),
      I1 => \rStoredData[1]_i_3__1_n_0\,
      O => \rStoredData_reg[1]_i_1__1_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[1]_i_20__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_49__1_n_0\,
      I1 => \rStoredData_reg[1]_i_50__1_n_0\,
      O => \rStoredData_reg[1]_i_20__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_21__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_51__1_n_0\,
      I1 => \rStoredData_reg[1]_i_52__1_n_0\,
      O => \rStoredData_reg[1]_i_21__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_22__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_53__1_n_0\,
      I1 => \rStoredData_reg[1]_i_54__1_n_0\,
      O => \rStoredData_reg[1]_i_22__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_23__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_55__0_n_0\,
      I1 => \rStoredData[1]_i_56_n_0\,
      O => \rStoredData_reg[1]_i_23__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_24__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_57__1_n_0\,
      I1 => \rStoredData[1]_i_58__1_n_0\,
      O => \rStoredData_reg[1]_i_24__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_25__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_59__1_n_0\,
      I1 => \rStoredData[1]_i_60__1_n_0\,
      O => \rStoredData_reg[1]_i_25__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_26__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_61__1_n_0\,
      I1 => \rStoredData[1]_i_62__1_n_0\,
      O => \rStoredData_reg[1]_i_26__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_27__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_63__1_n_0\,
      I1 => \rStoredData[1]_i_64__1_n_0\,
      O => \rStoredData_reg[1]_i_27__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_28__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_65__1_n_0\,
      I1 => \rStoredData[1]_i_66__1_n_0\,
      O => \rStoredData_reg[1]_i_28__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_29__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_67__1_n_0\,
      I1 => \rStoredData[1]_i_68__1_n_0\,
      O => \rStoredData_reg[1]_i_29__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_30__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_69__1_n_0\,
      I1 => \rStoredData[1]_i_70__1_n_0\,
      O => \rStoredData_reg[1]_i_30__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_31__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_71__1_n_0\,
      I1 => \rStoredData[1]_i_72__1_n_0\,
      O => \rStoredData_reg[1]_i_31__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_32__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_73__1_n_0\,
      I1 => \rStoredData[1]_i_74__1_n_0\,
      O => \rStoredData_reg[1]_i_32__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_33__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_75__1_n_0\,
      I1 => \rStoredData[1]_i_76__1_n_0\,
      O => \rStoredData_reg[1]_i_33__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_34__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_77__1_n_0\,
      I1 => \rStoredData[1]_i_78__1_n_0\,
      O => \rStoredData_reg[1]_i_34__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_35__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_79__1_n_0\,
      I1 => \rStoredData[1]_i_80__1_n_0\,
      O => \rStoredData_reg[1]_i_35__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_36__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_81__1_n_0\,
      I1 => \rStoredData[1]_i_82__1_n_0\,
      O => \rStoredData_reg[1]_i_36__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_37__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_83__1_n_0\,
      I1 => \rStoredData[1]_i_84__1_n_0\,
      O => \rStoredData_reg[1]_i_37__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_38__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_85__1_n_0\,
      I1 => \rStoredData[1]_i_86__1_n_0\,
      O => \rStoredData_reg[1]_i_38__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[1]_i_39__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_87__1_n_0\,
      I1 => \rStoredData[1]_i_88__1_n_0\,
      O => \rStoredData_reg[1]_i_39__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_40__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_89__1_n_0\,
      I1 => \rStoredData[1]_i_90__1_n_0\,
      O => \rStoredData_reg[1]_i_40__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_41__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_91__1_n_0\,
      I1 => \rStoredData[1]_i_92__1_n_0\,
      O => \rStoredData_reg[1]_i_41__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_42__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_93__1_n_0\,
      I1 => \rStoredData[1]_i_94__1_n_0\,
      O => \rStoredData_reg[1]_i_42__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_43__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_95__1_n_0\,
      I1 => \rStoredData[1]_i_96__1_n_0\,
      O => \rStoredData_reg[1]_i_43__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_44__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_97__1_n_0\,
      I1 => \rStoredData[1]_i_98__1_n_0\,
      O => \rStoredData_reg[1]_i_44__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_45__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_99__1_n_0\,
      I1 => \rStoredData[1]_i_100__1_n_0\,
      O => \rStoredData_reg[1]_i_45__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_46__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_101__1_n_0\,
      I1 => \rStoredData[1]_i_102__1_n_0\,
      O => \rStoredData_reg[1]_i_46__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[1]_i_47__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_103__1_n_0\,
      I1 => \rStoredData[1]_i_104__1_n_0\,
      O => \rStoredData_reg[1]_i_47__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_48__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_105__1_n_0\,
      I1 => \rStoredData[1]_i_106__1_n_0\,
      O => \rStoredData_reg[1]_i_48__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_49__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_107__1_n_0\,
      I1 => \rStoredData[1]_i_108__1_n_0\,
      O => \rStoredData_reg[1]_i_49__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_50__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_109__1_n_0\,
      I1 => \rStoredData[1]_i_110__1_n_0\,
      O => \rStoredData_reg[1]_i_50__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_51__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_111__1_n_0\,
      I1 => \rStoredData[1]_i_112__1_n_0\,
      O => \rStoredData_reg[1]_i_51__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_52__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_113__1_n_0\,
      I1 => \rStoredData[1]_i_114__1_n_0\,
      O => \rStoredData_reg[1]_i_52__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_53__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_115__1_n_0\,
      I1 => \rStoredData[1]_i_116__1_n_0\,
      O => \rStoredData_reg[1]_i_53__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_54__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[1]_i_117__0_n_0\,
      I1 => \rStoredData[1]_i_118__0_n_0\,
      O => \rStoredData_reg[1]_i_54__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[1]_i_7__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_23__0_n_0\,
      I1 => \rStoredData_reg[1]_i_24__0_n_0\,
      O => \rStoredData_reg[1]_i_7__0_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_8__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_25__0_n_0\,
      I1 => \rStoredData_reg[1]_i_26__0_n_0\,
      O => \rStoredData_reg[1]_i_8__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[1]_i_9__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[1]_i_27__1_n_0\,
      I1 => \rStoredData_reg[1]_i_28__1_n_0\,
      O => \rStoredData_reg[1]_i_9__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => \^e\(0),
      D => \rStoredData_reg[2]_i_1__1_n_0\,
      Q => m_axis_video_tdata(2),
      R => '0'
    );
\rStoredData_reg[2]_i_10__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_28__1_n_0\,
      I1 => \rStoredData_reg[2]_i_29__1_n_0\,
      O => \rStoredData_reg[2]_i_10__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_11__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_30__1_n_0\,
      I1 => \rStoredData_reg[2]_i_31__1_n_0\,
      O => \rStoredData_reg[2]_i_11__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_12__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_32__1_n_0\,
      I1 => \rStoredData_reg[2]_i_33__0_n_0\,
      O => \rStoredData_reg[2]_i_12__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_13__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_34__0_n_0\,
      I1 => \rStoredData_reg[2]_i_35__0_n_0\,
      O => \rStoredData_reg[2]_i_13__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_14__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_36__1_n_0\,
      I1 => \rStoredData_reg[2]_i_37__1_n_0\,
      O => \rStoredData_reg[2]_i_14__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_17__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_46__1_n_0\,
      I1 => \rStoredData_reg[2]_i_47__1_n_0\,
      O => \rStoredData_reg[2]_i_17__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_18__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_48__1_n_0\,
      I1 => \rStoredData_reg[2]_i_49__1_n_0\,
      O => \rStoredData_reg[2]_i_18__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_19__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_50__1_n_0\,
      I1 => \rStoredData_reg[2]_i_51__1_n_0\,
      O => \rStoredData_reg[2]_i_19__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__1\(2),
      I1 => \rStoredData[2]_i_3__1_n_0\,
      O => \rStoredData_reg[2]_i_1__1_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[2]_i_20__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_52__1_n_0\,
      I1 => \rStoredData_reg[2]_i_53__1_n_0\,
      O => \rStoredData_reg[2]_i_20__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_24__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_54__0_n_0\,
      I1 => \rStoredData[2]_i_55__1_n_0\,
      O => \rStoredData_reg[2]_i_24__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_25__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_56__1_n_0\,
      I1 => \rStoredData[2]_i_57__1_n_0\,
      O => \rStoredData_reg[2]_i_25__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_26__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_58__1_n_0\,
      I1 => \rStoredData[2]_i_59__1_n_0\,
      O => \rStoredData_reg[2]_i_26__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_27__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_60__1_n_0\,
      I1 => \rStoredData[2]_i_61__1_n_0\,
      O => \rStoredData_reg[2]_i_27__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_28__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_62__1_n_0\,
      I1 => \rStoredData[2]_i_63__1_n_0\,
      O => \rStoredData_reg[2]_i_28__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_29__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_64__1_n_0\,
      I1 => \rStoredData[2]_i_65__1_n_0\,
      O => \rStoredData_reg[2]_i_29__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_30__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_66__1_n_0\,
      I1 => \rStoredData[2]_i_67__1_n_0\,
      O => \rStoredData_reg[2]_i_30__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_31__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_68__1_n_0\,
      I1 => \rStoredData[2]_i_69__1_n_0\,
      O => \rStoredData_reg[2]_i_31__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_32__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_70__1_n_0\,
      I1 => \rStoredData[2]_i_71__1_n_0\,
      O => \rStoredData_reg[2]_i_32__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_33__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_72__1_n_0\,
      I1 => \rStoredData[2]_i_73__1_n_0\,
      O => \rStoredData_reg[2]_i_33__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_34__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_74__1_n_0\,
      I1 => \rStoredData[2]_i_75__1_n_0\,
      O => \rStoredData_reg[2]_i_34__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_35__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_76__1_n_0\,
      I1 => \rStoredData[2]_i_77__1_n_0\,
      O => \rStoredData_reg[2]_i_35__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_36__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_78__1_n_0\,
      I1 => \rStoredData[2]_i_79__1_n_0\,
      O => \rStoredData_reg[2]_i_36__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_37__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_80__1_n_0\,
      I1 => \rStoredData[2]_i_81__1_n_0\,
      O => \rStoredData_reg[2]_i_37__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[2]_i_38__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_82__1_n_0\,
      I1 => \rStoredData[2]_i_83__1_n_0\,
      O => \rStoredData_reg[2]_i_38__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_39__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_84__1_n_0\,
      I1 => \rStoredData[2]_i_85__1_n_0\,
      O => \rStoredData_reg[2]_i_39__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_40__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_86__1_n_0\,
      I1 => \rStoredData[2]_i_87__1_n_0\,
      O => \rStoredData_reg[2]_i_40__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_41__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_88__1_n_0\,
      I1 => \rStoredData[2]_i_89__1_n_0\,
      O => \rStoredData_reg[2]_i_41__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_43__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_90__1_n_0\,
      I1 => \rStoredData[2]_i_91__1_n_0\,
      O => \rStoredData_reg[2]_i_43__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_44__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_92__1_n_0\,
      I1 => \rStoredData[2]_i_93__1_n_0\,
      O => \rStoredData_reg[2]_i_44__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_45__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_94__1_n_0\,
      I1 => \rStoredData[2]_i_95__1_n_0\,
      O => \rStoredData_reg[2]_i_45__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[2]_i_46__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_96__1_n_0\,
      I1 => \rStoredData[2]_i_97__1_n_0\,
      O => \rStoredData_reg[2]_i_46__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_47__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_98__1_n_0\,
      I1 => \rStoredData[2]_i_99__1_n_0\,
      O => \rStoredData_reg[2]_i_47__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_48__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_100__1_n_0\,
      I1 => \rStoredData[2]_i_101__1_n_0\,
      O => \rStoredData_reg[2]_i_48__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_49__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_102__1_n_0\,
      I1 => \rStoredData[2]_i_103__1_n_0\,
      O => \rStoredData_reg[2]_i_49__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_50__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_104__1_n_0\,
      I1 => \rStoredData[2]_i_105__1_n_0\,
      O => \rStoredData_reg[2]_i_50__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_51__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_106__1_n_0\,
      I1 => \rStoredData[2]_i_107__1_n_0\,
      O => \rStoredData_reg[2]_i_51__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_52__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_108__1_n_0\,
      I1 => \rStoredData[2]_i_109__0_n_0\,
      O => \rStoredData_reg[2]_i_52__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_53__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_110__0_n_0\,
      I1 => \rStoredData[2]_i_111__0_n_0\,
      O => \rStoredData_reg[2]_i_53__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[2]_i_5__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_15__1_n_0\,
      I1 => \rStoredData[2]_i_16__1_n_0\,
      O => \rStoredData_reg[2]_i_5__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_8__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_24__1_n_0\,
      I1 => \rStoredData_reg[2]_i_25__1_n_0\,
      O => \rStoredData_reg[2]_i_8__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[2]_i_9__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[2]_i_26__1_n_0\,
      I1 => \rStoredData_reg[2]_i_27__1_n_0\,
      O => \rStoredData_reg[2]_i_9__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => \^e\(0),
      D => \rStoredData_reg[3]_i_1__1_n_0\,
      Q => m_axis_video_tdata(3),
      R => '0'
    );
\rStoredData_reg[3]_i_10__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_31__1_n_0\,
      I1 => \rStoredData_reg[3]_i_32__0_n_0\,
      O => \rStoredData_reg[3]_i_10__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_12__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_35__1_n_0\,
      I1 => \rStoredData_reg[3]_i_36__0_n_0\,
      O => \rStoredData_reg[3]_i_12__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_13__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_37__0_n_0\,
      I1 => \rStoredData_reg[3]_i_38__0_n_0\,
      O => \rStoredData_reg[3]_i_13__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_14__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_39__1_n_0\,
      I1 => \rStoredData_reg[3]_i_40__1_n_0\,
      O => \rStoredData_reg[3]_i_14__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_15__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_41__1_n_0\,
      I1 => \rStoredData[3]_i_42__1_n_0\,
      O => \rStoredData_reg[3]_i_15__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[3]_i_16__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_43__1_n_0\,
      I1 => \rStoredData_reg[3]_i_44__1_n_0\,
      O => \rStoredData_reg[3]_i_16__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[3]_i_19__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_51__1_n_0\,
      I1 => \rStoredData_reg[3]_i_52__1_n_0\,
      O => \rStoredData_reg[3]_i_19__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__1\(3),
      I1 => \rStoredData[3]_i_3__1_n_0\,
      O => \rStoredData_reg[3]_i_1__1_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[3]_i_20__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_53__1_n_0\,
      I1 => \rStoredData_reg[3]_i_54__1_n_0\,
      O => \rStoredData_reg[3]_i_20__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_22__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[3]_i_58__1_n_0\,
      I1 => \rStoredData_reg[3]_i_59__1_n_0\,
      O => \rStoredData_reg[3]_i_22__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[3]_i_31__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_64__1_n_0\,
      I1 => \rStoredData[3]_i_65__1_n_0\,
      O => \rStoredData_reg[3]_i_31__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_32__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_66__1_n_0\,
      I1 => \rStoredData[3]_i_67__1_n_0\,
      O => \rStoredData_reg[3]_i_32__0_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_35__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_68__1_n_0\,
      I1 => \rStoredData[3]_i_69__1_n_0\,
      O => \rStoredData_reg[3]_i_35__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_36__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_70__1_n_0\,
      I1 => \rStoredData[3]_i_71__1_n_0\,
      O => \rStoredData_reg[3]_i_36__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_37__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_72__1_n_0\,
      I1 => \rStoredData[3]_i_73__1_n_0\,
      O => \rStoredData_reg[3]_i_37__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_38__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[2]_i_22__0_n_0\,
      I1 => \rStoredData[3]_i_74__1_n_0\,
      O => \rStoredData_reg[3]_i_38__0_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_39__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_75__1_n_0\,
      I1 => \rStoredData[3]_i_76__1_n_0\,
      O => \rStoredData_reg[3]_i_39__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_40__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_77__1_n_0\,
      I1 => \rStoredData[3]_i_78__1_n_0\,
      O => \rStoredData_reg[3]_i_40__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[3]_i_43__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_79__1_n_0\,
      I1 => \rStoredData[3]_i_80__1_n_0\,
      O => \rStoredData_reg[3]_i_43__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_44__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_81__1_n_0\,
      I1 => \rStoredData[3]_i_82__1_n_0\,
      O => \rStoredData_reg[3]_i_44__1_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[3]_i_51__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_83__1_n_0\,
      I1 => \rStoredData[3]_i_84__1_n_0\,
      O => \rStoredData_reg[3]_i_51__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_52__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_85__1_n_0\,
      I1 => \rStoredData[3]_i_86__1_n_0\,
      O => \rStoredData_reg[3]_i_52__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_53__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_87__1_n_0\,
      I1 => \rStoredData[3]_i_88__1_n_0\,
      O => \rStoredData_reg[3]_i_53__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_54__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_89__1_n_0\,
      I1 => \rStoredData[3]_i_90__0_n_0\,
      O => \rStoredData_reg[3]_i_54__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_58__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_91__0_n_0\,
      I1 => \rStoredData[3]_i_92__0_n_0\,
      O => \rStoredData_reg[3]_i_58__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_59__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_93__0_n_0\,
      I1 => \rStoredData[3]_i_94__0_n_0\,
      O => \rStoredData_reg[3]_i_59__1_n_0\,
      S => s_axis_video_tdata(5)
    );
\rStoredData_reg[3]_i_9__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[3]_i_29__1_n_0\,
      I1 => \rStoredData[3]_i_30__0_n_0\,
      O => \rStoredData_reg[3]_i_9__1_n_0\,
      S => s_axis_video_tdata(7)
    );
\rStoredData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => \^e\(0),
      D => \rStoredData[4]_i_1__1_n_0\,
      Q => m_axis_video_tdata(4),
      R => '0'
    );
\rStoredData_reg[4]_i_10__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_24__1_n_0\,
      I1 => \rStoredData[4]_i_25__1_n_0\,
      O => \rStoredData_reg[4]_i_10__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[4]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_26__1_n_0\,
      I1 => \rStoredData[4]_i_27__0_n_0\,
      O => \rStoredData_reg[4]_i_11_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_2__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \rStoredData_reg[4]_i_7__1_n_0\,
      I1 => \rStoredData_reg[4]_i_8__1_n_0\,
      O => \rStoredData_reg[4]_i_2__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[4]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_59__0_n_0\,
      I1 => \rStoredData[4]_i_60__0_n_0\,
      O => \rStoredData_reg[4]_i_40_n_0\,
      S => s_axis_video_tdata(6)
    );
\rStoredData_reg[4]_i_7__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_18__1_n_0\,
      I1 => \rStoredData[4]_i_19__1_n_0\,
      O => \rStoredData_reg[4]_i_7__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_8__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_20__1_n_0\,
      I1 => \rStoredData[4]_i_21__1_n_0\,
      O => \rStoredData_reg[4]_i_8__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[4]_i_9__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[4]_i_22__1_n_0\,
      I1 => \rStoredData[4]_i_23__1_n_0\,
      O => \rStoredData_reg[4]_i_9__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => \^e\(0),
      D => \rStoredData[5]_i_1__1_n_0\,
      Q => m_axis_video_tdata(5),
      R => '0'
    );
\rStoredData_reg[5]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[5]_i_28__1_n_0\,
      I1 => \rStoredData[5]_i_29__0_n_0\,
      O => \rStoredData_reg[5]_i_13_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[5]_i_2__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[5]_i_7__1_n_0\,
      I1 => \rStoredData[5]_i_8__1_n_0\,
      O => \rStoredData_reg[5]_i_2__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[5]_i_9__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[5]_i_23__1_n_0\,
      I1 => \rStoredData[5]_i_24_n_0\,
      O => \rStoredData_reg[5]_i_9__1_n_0\,
      S => s_axis_video_tdata(8)
    );
\rStoredData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => \^e\(0),
      D => \rStoredData_reg[6]_i_1__1_n_0\,
      Q => m_axis_video_tdata(6),
      R => '0'
    );
\rStoredData_reg[6]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__1\(6),
      I1 => \rStoredData[6]_i_3__1_n_0\,
      O => \rStoredData_reg[6]_i_1__1_n_0\,
      S => sGammaReg(2)
    );
\rStoredData_reg[6]_i_6__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rStoredData[6]_i_13__1_n_0\,
      I1 => \rStoredData[6]_i_14__1_n_0\,
      O => \rStoredData_reg[6]_i_6__1_n_0\,
      S => s_axis_video_tdata(9)
    );
\rStoredData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => \^e\(0),
      D => \rStoredData_reg[7]_i_2_n_0\,
      Q => m_axis_video_tdata(7),
      R => '0'
    );
\rStoredData_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_1_in__1\(7),
      I1 => \rStoredData[7]_i_4__1_n_0\,
      O => \rStoredData_reg[7]_i_2_n_0\,
      S => sGammaReg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection is
  port (
    StreamClk : in STD_LOGIC;
    sStreamReset_n : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    AxiLiteClk : in STD_LOGIC;
    aAxiLiteReset_n : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection : entity is 3;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection : entity is "AXI_GammaCorrection";
  attribute kAXI_InputDataWidth : integer;
  attribute kAXI_InputDataWidth of design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection : entity is 32;
  attribute kAXI_OutputDataWidth : integer;
  attribute kAXI_OutputDataWidth of design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection : entity is 24;
  attribute kInputColorWidth : integer;
  attribute kInputColorWidth of design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection : entity is 10;
end design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection;

architecture STRUCTURE of design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection is
  signal \<const0>\ : STD_LOGIC;
  signal \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_0\ : STD_LOGIC;
  signal \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_1\ : STD_LOGIC;
  signal \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_2\ : STD_LOGIC;
  signal \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_3\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_video_tlast\ : STD_LOGIC;
  signal m_axis_video_tlast_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_video_tready\ : STD_LOGIC;
  signal \^m_axis_video_tuser\ : STD_LOGIC;
  signal m_axis_video_tuser_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_video_tvalid\ : STD_LOGIC;
  signal sAXI_OutputValid_i_1_n_0 : STD_LOGIC;
  signal sGammaReg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sGammaReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sGammaReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sGammaReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sGammaReg[2]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sGammaReg[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sGammaReg[2]_i_1\ : label is "soft_lutpair82";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  \^m_axis_video_tready\ <= m_axis_video_tready;
  m_axis_video_tlast <= \^m_axis_video_tlast\;
  m_axis_video_tuser <= \^m_axis_video_tuser\;
  m_axis_video_tvalid <= \^m_axis_video_tvalid\;
  s_axis_video_tready <= \^m_axis_video_tready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\GammaStorageCoefsGeneration[0].StoredGammaCoefsInst\: entity work.design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs
     port map (
      E(0) => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_0\,
      StreamClk => StreamClk,
      m_axis_video_tdata(7 downto 0) => m_axis_video_tdata(7 downto 0),
      sGammaReg(2 downto 0) => sGammaReg(2 downto 0),
      \sGammaReg_reg[0]\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_2\,
      \sGammaReg_reg[0]_0\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_3\,
      \sGammaReg_reg[1]\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_1\,
      s_axis_video_tdata(9 downto 0) => s_axis_video_tdata(9 downto 0)
    );
\GammaStorageCoefsGeneration[1].StoredGammaCoefsInst\: entity work.design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_0
     port map (
      E(0) => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_0\,
      StreamClk => StreamClk,
      m_axis_video_tdata(7 downto 0) => m_axis_video_tdata(15 downto 8),
      sGammaReg(2 downto 0) => sGammaReg(2 downto 0),
      \sGammaReg_reg[0]\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_2\,
      \sGammaReg_reg[0]_0\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_3\,
      \sGammaReg_reg[1]\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_1\,
      s_axis_video_tdata(9 downto 0) => s_axis_video_tdata(19 downto 10)
    );
\GammaStorageCoefsGeneration[2].StoredGammaCoefsInst\: entity work.design_1_AXI_GammaCorrection_0_0_StoredGammaCoefs_1
     port map (
      E(0) => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_0\,
      StreamClk => StreamClk,
      m_axis_video_tdata(7 downto 0) => m_axis_video_tdata(23 downto 16),
      m_axis_video_tready => \^m_axis_video_tready\,
      \rStoredData_reg[4]_0\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_1\,
      \rStoredData_reg[4]_1\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_2\,
      \rStoredData_reg[5]_0\ => \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_3\,
      sGammaReg(2 downto 0) => sGammaReg(2 downto 0),
      s_axis_video_tdata(9 downto 0) => s_axis_video_tdata(29 downto 20),
      s_axis_video_tvalid => s_axis_video_tvalid
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => \^s_axi_awready\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aAxiLiteReset_n,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
m_axis_video_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA2A0000"
    )
        port map (
      I0 => \^m_axis_video_tlast\,
      I1 => \^m_axis_video_tready\,
      I2 => s_axis_video_tvalid,
      I3 => s_axis_video_tlast,
      I4 => sStreamReset_n,
      O => m_axis_video_tlast_i_1_n_0
    );
m_axis_video_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => m_axis_video_tlast_i_1_n_0,
      Q => \^m_axis_video_tlast\,
      R => '0'
    );
m_axis_video_tuser_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA2A0000"
    )
        port map (
      I0 => \^m_axis_video_tuser\,
      I1 => \^m_axis_video_tready\,
      I2 => s_axis_video_tvalid,
      I3 => s_axis_video_tuser,
      I4 => sStreamReset_n,
      O => m_axis_video_tuser_i_1_n_0
    );
m_axis_video_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => m_axis_video_tuser_i_1_n_0,
      Q => \^m_axis_video_tuser\,
      R => '0'
    );
sAXI_OutputValid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^m_axis_video_tvalid\,
      I1 => \^m_axis_video_tready\,
      I2 => s_axis_video_tvalid,
      I3 => sStreamReset_n,
      O => sAXI_OutputValid_i_1_n_0
    );
sAXI_OutputValid_reg: unisim.vcomponents.FDRE
     port map (
      C => StreamClk,
      CE => '1',
      D => sAXI_OutputValid_i_1_n_0,
      Q => \^m_axis_video_tvalid\,
      R => '0'
    );
\sGammaReg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => \sGammaReg[2]_i_2_n_0\,
      I2 => sGammaReg(0),
      O => \sGammaReg[0]_i_1_n_0\
    );
\sGammaReg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => \sGammaReg[2]_i_2_n_0\,
      I2 => sGammaReg(1),
      O => \sGammaReg[1]_i_1_n_0\
    );
\sGammaReg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(2),
      I1 => \sGammaReg[2]_i_2_n_0\,
      I2 => sGammaReg(2),
      O => \sGammaReg[2]_i_1_n_0\
    );
\sGammaReg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WSTRB(0),
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => S_AXI_WVALID,
      I5 => S_AXI_AWVALID,
      O => \sGammaReg[2]_i_2_n_0\
    );
\sGammaReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => \sGammaReg[0]_i_1_n_0\,
      Q => sGammaReg(0),
      R => axi_awready_i_1_n_0
    );
\sGammaReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => \sGammaReg[1]_i_1_n_0\,
      Q => sGammaReg(1),
      R => axi_awready_i_1_n_0
    );
\sGammaReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => AxiLiteClk,
      CE => '1',
      D => \sGammaReg[2]_i_1_n_0\,
      Q => sGammaReg(2),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_GammaCorrection_0_0 is
  port (
    StreamClk : in STD_LOGIC;
    sStreamReset_n : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    AxiLiteClk : in STD_LOGIC;
    aAxiLiteReset_n : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_AXI_GammaCorrection_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_AXI_GammaCorrection_0_0 : entity is "design_1_AXI_GammaCorrection_0_0,AXI_GammaCorrection,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_AXI_GammaCorrection_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_AXI_GammaCorrection_0_0 : entity is "AXI_GammaCorrection,Vivado 2017.4";
end design_1_AXI_GammaCorrection_0_0;

architecture STRUCTURE of design_1_AXI_GammaCorrection_0_0 is
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 3;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute kAXI_InputDataWidth : integer;
  attribute kAXI_InputDataWidth of U0 : label is 32;
  attribute kAXI_OutputDataWidth : integer;
  attribute kAXI_OutputDataWidth of U0 : label is 24;
  attribute kInputColorWidth : integer;
  attribute kInputColorWidth of U0 : label is 10;
  attribute x_interface_info : string;
  attribute x_interface_info of AxiLiteClk : signal is "xilinx.com:signal:clock:1.0 AxiLiteClk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of AxiLiteClk : signal is "XIL_INTERFACENAME AxiLiteClk, ASSOCIATED_BUSIF AXI_Lite_Reg_Intf, ASSOCIATED_RESET aAxiLiteReset_n, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WVALID";
  attribute x_interface_info of StreamClk : signal is "xilinx.com:signal:clock:1.0 AXI_Stream_Clk CLK";
  attribute x_interface_parameter of StreamClk : signal is "XIL_INTERFACENAME AXI_Stream_Clk, ASSOCIATED_BUSIF AXI_Stream_Master:AXI_Slave_Interface, ASSOCIATED_RESET sStreamReset_n, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of aAxiLiteReset_n : signal is "xilinx.com:signal:reset:1.0 AxiLiteReset_n RST";
  attribute x_interface_parameter of aAxiLiteReset_n : signal is "XIL_INTERFACENAME AxiLiteReset_n, POLARITY ACTIVE_LOW";
  attribute x_interface_info of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TLAST";
  attribute x_interface_info of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TREADY";
  attribute x_interface_parameter of m_axis_video_tready : signal is "XIL_INTERFACENAME AXI_Stream_Master, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute x_interface_info of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TUSER";
  attribute x_interface_info of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TVALID";
  attribute x_interface_info of sStreamReset_n : signal is "xilinx.com:signal:reset:1.0 AXI_Stream_Reset_n RST";
  attribute x_interface_parameter of sStreamReset_n : signal is "XIL_INTERFACENAME AXI_Stream_Reset_n, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TLAST";
  attribute x_interface_info of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TREADY";
  attribute x_interface_parameter of s_axis_video_tready : signal is "XIL_INTERFACENAME AXI_Slave_Interface, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute x_interface_info of s_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TUSER";
  attribute x_interface_info of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARADDR";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARPROT";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWADDR";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME AXI_Lite_Reg_Intf, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWPROT";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WSTRB";
  attribute x_interface_info of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_Stream_Master TDATA";
  attribute x_interface_info of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TDATA";
begin
U0: entity work.design_1_AXI_GammaCorrection_0_0_AXI_GammaCorrection
     port map (
      AxiLiteClk => AxiLiteClk,
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(2 downto 0),
      S_AXI_ARPROT(2 downto 0) => S_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(2 downto 0),
      S_AXI_AWPROT(2 downto 0) => S_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => S_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => S_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      StreamClk => StreamClk,
      aAxiLiteReset_n => aAxiLiteReset_n,
      m_axis_video_tdata(23 downto 0) => m_axis_video_tdata(23 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tvalid => m_axis_video_tvalid,
      sStreamReset_n => sStreamReset_n,
      s_axis_video_tdata(31 downto 0) => s_axis_video_tdata(31 downto 0),
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
