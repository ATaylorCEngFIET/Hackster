-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Aug  1 11:40:26 2018
-- Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PmodMTDS_0_0_stub.vhdl
-- Design      : design_1_PmodMTDS_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    AXI_LITE_GPIO_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_GPIO_arready : out STD_LOGIC;
    AXI_LITE_GPIO_arvalid : in STD_LOGIC;
    AXI_LITE_GPIO_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_GPIO_awready : out STD_LOGIC;
    AXI_LITE_GPIO_awvalid : in STD_LOGIC;
    AXI_LITE_GPIO_bready : in STD_LOGIC;
    AXI_LITE_GPIO_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_GPIO_bvalid : out STD_LOGIC;
    AXI_LITE_GPIO_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_GPIO_rready : in STD_LOGIC;
    AXI_LITE_GPIO_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_GPIO_rvalid : out STD_LOGIC;
    AXI_LITE_GPIO_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_GPIO_wready : out STD_LOGIC;
    AXI_LITE_GPIO_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_GPIO_wvalid : in STD_LOGIC;
    AXI_LITE_SPI_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    AXI_LITE_SPI_arready : out STD_LOGIC;
    AXI_LITE_SPI_arvalid : in STD_LOGIC;
    AXI_LITE_SPI_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    AXI_LITE_SPI_awready : out STD_LOGIC;
    AXI_LITE_SPI_awvalid : in STD_LOGIC;
    AXI_LITE_SPI_bready : in STD_LOGIC;
    AXI_LITE_SPI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_SPI_bvalid : out STD_LOGIC;
    AXI_LITE_SPI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_SPI_rready : in STD_LOGIC;
    AXI_LITE_SPI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_SPI_rvalid : out STD_LOGIC;
    AXI_LITE_SPI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_SPI_wready : out STD_LOGIC;
    AXI_LITE_SPI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_SPI_wvalid : in STD_LOGIC;
    AXI_LITE_TIMER_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_LITE_TIMER_arready : out STD_LOGIC;
    AXI_LITE_TIMER_arvalid : in STD_LOGIC;
    AXI_LITE_TIMER_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_LITE_TIMER_awready : out STD_LOGIC;
    AXI_LITE_TIMER_awvalid : in STD_LOGIC;
    AXI_LITE_TIMER_bready : in STD_LOGIC;
    AXI_LITE_TIMER_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_TIMER_bvalid : out STD_LOGIC;
    AXI_LITE_TIMER_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_TIMER_rready : in STD_LOGIC;
    AXI_LITE_TIMER_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_TIMER_rvalid : out STD_LOGIC;
    AXI_LITE_TIMER_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_TIMER_wready : out STD_LOGIC;
    AXI_LITE_TIMER_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_TIMER_wvalid : in STD_LOGIC;
    SPI_SS_I : in STD_LOGIC;
    SPI_SS_O : out STD_LOGIC;
    SPI_SS_T : out STD_LOGIC;
    SPI_IO0_I : in STD_LOGIC;
    SPI_IO0_O : out STD_LOGIC;
    SPI_IO0_T : out STD_LOGIC;
    SPI_IO1_I : in STD_LOGIC;
    SPI_IO1_O : out STD_LOGIC;
    SPI_IO1_T : out STD_LOGIC;
    SPI_CLK_I : in STD_LOGIC;
    SPI_CLK_O : out STD_LOGIC;
    SPI_CLK_T : out STD_LOGIC;
    SPI_Interrupt : out STD_LOGIC;
    GPIO_Interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "AXI_LITE_GPIO_araddr[8:0],AXI_LITE_GPIO_arready,AXI_LITE_GPIO_arvalid,AXI_LITE_GPIO_awaddr[8:0],AXI_LITE_GPIO_awready,AXI_LITE_GPIO_awvalid,AXI_LITE_GPIO_bready,AXI_LITE_GPIO_bresp[1:0],AXI_LITE_GPIO_bvalid,AXI_LITE_GPIO_rdata[31:0],AXI_LITE_GPIO_rready,AXI_LITE_GPIO_rresp[1:0],AXI_LITE_GPIO_rvalid,AXI_LITE_GPIO_wdata[31:0],AXI_LITE_GPIO_wready,AXI_LITE_GPIO_wstrb[3:0],AXI_LITE_GPIO_wvalid,AXI_LITE_SPI_araddr[6:0],AXI_LITE_SPI_arready,AXI_LITE_SPI_arvalid,AXI_LITE_SPI_awaddr[6:0],AXI_LITE_SPI_awready,AXI_LITE_SPI_awvalid,AXI_LITE_SPI_bready,AXI_LITE_SPI_bresp[1:0],AXI_LITE_SPI_bvalid,AXI_LITE_SPI_rdata[31:0],AXI_LITE_SPI_rready,AXI_LITE_SPI_rresp[1:0],AXI_LITE_SPI_rvalid,AXI_LITE_SPI_wdata[31:0],AXI_LITE_SPI_wready,AXI_LITE_SPI_wstrb[3:0],AXI_LITE_SPI_wvalid,AXI_LITE_TIMER_araddr[4:0],AXI_LITE_TIMER_arready,AXI_LITE_TIMER_arvalid,AXI_LITE_TIMER_awaddr[4:0],AXI_LITE_TIMER_awready,AXI_LITE_TIMER_awvalid,AXI_LITE_TIMER_bready,AXI_LITE_TIMER_bresp[1:0],AXI_LITE_TIMER_bvalid,AXI_LITE_TIMER_rdata[31:0],AXI_LITE_TIMER_rready,AXI_LITE_TIMER_rresp[1:0],AXI_LITE_TIMER_rvalid,AXI_LITE_TIMER_wdata[31:0],AXI_LITE_TIMER_wready,AXI_LITE_TIMER_wstrb[3:0],AXI_LITE_TIMER_wvalid,SPI_SS_I,SPI_SS_O,SPI_SS_T,SPI_IO0_I,SPI_IO0_O,SPI_IO0_T,SPI_IO1_I,SPI_IO1_O,SPI_IO1_T,SPI_CLK_I,SPI_CLK_O,SPI_CLK_T,SPI_Interrupt,GPIO_Interrupt,s_axi_aclk,s_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PmodMTDS,Vivado 2018.2";
begin
end;
