// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug  1 10:26:03 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PmodMTDS_0_0_sim_netlist.v
// Design      : design_1_PmodMTDS_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core
   (reg1,
    reg3,
    GPIO_xferAck_i,
    GPIO_intr,
    GPIO2_intr,
    reg2,
    reg4,
    \ip2bus_data_i_D1_reg[31] ,
    gpio2_io_o,
    SPI_SS_T,
    \Dual.gpio2_OE_reg[1]_0 ,
    \Dual.gpio2_OE_reg[2]_0 ,
    gpio_io_o,
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ,
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ,
    s_axi_aclk,
    bus2ip_reset,
    p_19_in,
    Bus_RNW_reg,
    p_20_in,
    p_18_in,
    p_17_in,
    Q,
    gpio_reg_en,
    bus2ip_cs,
    bus2ip_rnw,
    gpio_io_i,
    gpio2_io_i,
    p_0_out,
    p_0_in18_in,
    p_0_in16_in,
    s_axi_wdata,
    bus2ip_rnw_i_reg,
    bus2ip_rnw_i_reg_0);
  output [1:0]reg1;
  output [2:0]reg3;
  output GPIO_xferAck_i;
  output GPIO_intr;
  output GPIO2_intr;
  output [1:0]reg2;
  output [2:0]reg4;
  output \ip2bus_data_i_D1_reg[31] ;
  output [2:0]gpio2_io_o;
  output SPI_SS_T;
  output \Dual.gpio2_OE_reg[1]_0 ;
  output \Dual.gpio2_OE_reg[2]_0 ;
  output [1:0]gpio_io_o;
  output \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ;
  output \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ;
  input s_axi_aclk;
  input bus2ip_reset;
  input p_19_in;
  input Bus_RNW_reg;
  input p_20_in;
  input p_18_in;
  input p_17_in;
  input [1:0]Q;
  input gpio_reg_en;
  input [0:0]bus2ip_cs;
  input bus2ip_rnw;
  input [1:0]gpio_io_i;
  input [2:0]gpio2_io_i;
  input [1:0]p_0_out;
  input p_0_in18_in;
  input p_0_in16_in;
  input [2:0]s_axi_wdata;
  input bus2ip_rnw_i_reg;
  input bus2ip_rnw_i_reg_0;

  wire Bus_RNW_reg;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_2_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[31]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[29]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[29]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[31]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[31]_i_1_n_0 ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[2] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[1] ;
  wire \Dual.gpio2_Data_Out[0]_i_1_n_0 ;
  wire \Dual.gpio2_Data_Out[1]_i_1_n_0 ;
  wire \Dual.gpio2_Data_Out[2]_i_1_n_0 ;
  wire \Dual.gpio2_OE[0]_i_1_n_0 ;
  wire \Dual.gpio2_OE[1]_i_1_n_0 ;
  wire \Dual.gpio2_OE[2]_i_1_n_0 ;
  wire \Dual.gpio2_OE_reg[1]_0 ;
  wire \Dual.gpio2_OE_reg[2]_0 ;
  wire \Dual.gpio_Data_Out[0]_i_1_n_0 ;
  wire \Dual.gpio_Data_Out[1]_i_1_n_0 ;
  wire \Dual.gpio_OE[0]_i_1_n_0 ;
  wire \Dual.gpio_OE[1]_i_1_n_0 ;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire [1:0]Q;
  wire Read_Reg_Rst;
  wire SPI_SS_T;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire [0:2]gpio2_Data_In;
  wire [0:2]gpio2_data_in_xor;
  wire [2:0]gpio2_io_i;
  wire [0:2]gpio2_io_i_d2;
  wire [2:0]gpio2_io_o;
  wire [0:1]gpio_Data_In;
  wire [0:1]gpio_data_in_xor;
  wire [1:0]gpio_io_i;
  wire [0:1]gpio_io_i_d2;
  wire [1:0]gpio_io_o;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire or_ints;
  wire or_ints2;
  wire p_0_in;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire [1:0]p_0_out;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_20_in;
  wire [1:0]reg1;
  wire [1:0]reg2;
  wire [2:0]reg3;
  wire [2:0]reg4;
  wire s_axi_aclk;
  wire [2:0]s_axi_wdata;

  LUT6 #(
    .INIT(64'h2222C2E22222C222)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1 
       (.I0(gpio_io_o[1]),
        .I1(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ),
        .I2(gpio_reg_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(gpio_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1_n_0 ),
        .Q(reg1[1]),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'h2222C2E22222C222)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[30]_i_1 
       (.I0(reg2[1]),
        .I1(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ),
        .I2(gpio_reg_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(gpio_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[30]_i_1_n_0 ),
        .Q(reg2[1]),
        .R(Read_Reg_Rst));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_1 
       (.I0(GPIO_xferAck_i),
        .I1(gpio_xferAck_Reg),
        .I2(bus2ip_cs),
        .I3(bus2ip_rnw),
        .O(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'h2222C2E22222C222)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_2 
       (.I0(gpio_io_o[0]),
        .I1(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ),
        .I2(gpio_reg_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(gpio_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_2_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_2_n_0 ),
        .Q(reg1[0]),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'h2222C2E22222C222)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[31]_i_1 
       (.I0(reg2[0]),
        .I1(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ),
        .I2(gpio_reg_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(gpio_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[31]_i_1_n_0 ),
        .Q(reg2[0]),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[29]_i_1 
       (.I0(gpio2_io_o[2]),
        .I1(SPI_SS_T),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[29]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[29]_i_1_n_0 ),
        .Q(reg3[2]),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[29]_i_1 
       (.I0(reg4[2]),
        .I1(SPI_SS_T),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[29]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[29]_i_1_n_0 ),
        .Q(reg4[2]),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[30]_i_1 
       (.I0(gpio2_io_o[1]),
        .I1(\Dual.gpio2_OE_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[30]_i_1_n_0 ),
        .Q(reg3[1]),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[30]_i_1 
       (.I0(reg4[1]),
        .I1(\Dual.gpio2_OE_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[30]_i_1_n_0 ),
        .Q(reg4[1]),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[31]_i_1 
       (.I0(gpio2_io_o[0]),
        .I1(\Dual.gpio2_OE_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[2]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[31]_i_1_n_0 ),
        .Q(reg3[0]),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[31]_i_1 
       (.I0(reg4[0]),
        .I1(\Dual.gpio2_OE_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[2]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[31]_i_1_n_0 ),
        .Q(reg4[0]),
        .R(Read_Reg_Rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync \Dual.INPUT_DOUBLE_REGS4 
       (.D({gpio_data_in_xor[0],gpio_data_in_xor[1]}),
        .Q({gpio_Data_In[0],gpio_Data_In[1]}),
        .gpio_io_i(gpio_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio_io_i_d2[0],gpio_io_i_d2[1]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0 \Dual.INPUT_DOUBLE_REGS5 
       (.D({gpio2_data_in_xor[0],gpio2_data_in_xor[1],gpio2_data_in_xor[2]}),
        .Q({gpio2_Data_In[0],gpio2_Data_In[1],gpio2_Data_In[2]}),
        .gpio2_io_i(gpio2_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio2_io_i_d2[0],gpio2_io_i_d2[1],gpio2_io_i_d2[2]}));
  FDRE \Dual.gen_interrupt_dual.GPIO2_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_ints2),
        .Q(GPIO2_intr),
        .R(bus2ip_reset));
  LUT2 #(
    .INIT(4'hE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_1 
       (.I0(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .I1(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[1] ),
        .O(or_ints));
  FDRE \Dual.gen_interrupt_dual.GPIO_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_ints),
        .Q(GPIO_intr),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[0]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[1]),
        .Q(p_0_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_data_in_xor[2]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[2] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[0]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[1]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[1] ),
        .R(bus2ip_reset));
  FDRE \Dual.gpio2_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[0]),
        .Q(gpio2_Data_In[0]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[1]),
        .Q(gpio2_Data_In[1]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[2]),
        .Q(gpio2_Data_In[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Dual.gpio2_Data_Out[0]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(bus2ip_cs),
        .I2(Q[1]),
        .I3(s_axi_wdata[2]),
        .I4(bus2ip_rnw_i_reg),
        .I5(gpio2_io_o[2]),
        .O(\Dual.gpio2_Data_Out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Dual.gpio2_Data_Out[1]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(bus2ip_cs),
        .I2(Q[1]),
        .I3(s_axi_wdata[1]),
        .I4(bus2ip_rnw_i_reg),
        .I5(gpio2_io_o[1]),
        .O(\Dual.gpio2_Data_Out[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8AFF8A00)) 
    \Dual.gpio2_Data_Out[2]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(Q[1]),
        .I2(bus2ip_cs),
        .I3(bus2ip_rnw_i_reg),
        .I4(gpio2_io_o[0]),
        .O(\Dual.gpio2_Data_Out[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out[0]_i_1_n_0 ),
        .Q(gpio2_io_o[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out[1]_i_1_n_0 ),
        .Q(gpio2_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out[2]_i_1_n_0 ),
        .Q(gpio2_io_o[0]),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Dual.gpio2_OE[0]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(bus2ip_cs),
        .I2(Q[1]),
        .I3(s_axi_wdata[2]),
        .I4(bus2ip_rnw_i_reg_0),
        .I5(SPI_SS_T),
        .O(\Dual.gpio2_OE[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Dual.gpio2_OE[1]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(bus2ip_cs),
        .I2(Q[1]),
        .I3(s_axi_wdata[1]),
        .I4(bus2ip_rnw_i_reg_0),
        .I5(\Dual.gpio2_OE_reg[1]_0 ),
        .O(\Dual.gpio2_OE[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8AFF8A00)) 
    \Dual.gpio2_OE[2]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(Q[1]),
        .I2(bus2ip_cs),
        .I3(bus2ip_rnw_i_reg_0),
        .I4(\Dual.gpio2_OE_reg[2]_0 ),
        .O(\Dual.gpio2_OE[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_OE[0]_i_1_n_0 ),
        .Q(SPI_SS_T),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_OE[1]_i_1_n_0 ),
        .Q(\Dual.gpio2_OE_reg[1]_0 ),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_OE[2]_i_1_n_0 ),
        .Q(\Dual.gpio2_OE_reg[2]_0 ),
        .S(bus2ip_reset));
  FDRE \Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(gpio_Data_In[0]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(gpio_Data_In[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio_Data_Out[0]_i_1 
       (.I0(p_0_out[1]),
        .I1(bus2ip_rnw),
        .I2(p_0_in18_in),
        .I3(gpio_io_o[1]),
        .O(\Dual.gpio_Data_Out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio_Data_Out[1]_i_1 
       (.I0(p_0_out[0]),
        .I1(bus2ip_rnw),
        .I2(p_0_in18_in),
        .I3(gpio_io_o[0]),
        .O(\Dual.gpio_Data_Out[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio_Data_Out[0]_i_1_n_0 ),
        .Q(gpio_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio_Data_Out[1]_i_1_n_0 ),
        .Q(gpio_io_o[0]),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio_OE[0]_i_1 
       (.I0(p_0_out[1]),
        .I1(bus2ip_rnw),
        .I2(p_0_in16_in),
        .I3(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ),
        .O(\Dual.gpio_OE[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio_OE[1]_i_1 
       (.I0(p_0_out[0]),
        .I1(bus2ip_rnw),
        .I2(p_0_in16_in),
        .I3(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ),
        .O(\Dual.gpio_OE[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio_OE[0]_i_1_n_0 ),
        .Q(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio_OE[1]_i_1_n_0 ),
        .Q(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ),
        .S(bus2ip_reset));
  LUT5 #(
    .INIT(32'h00040448)) 
    GPIO_DBus
       (.I0(p_19_in),
        .I1(Bus_RNW_reg),
        .I2(p_20_in),
        .I3(p_18_in),
        .I4(p_17_in),
        .O(\ip2bus_data_i_D1_reg[31] ));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h04)) 
    iGPIO_xferAck_i_1
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'hFE)) 
    \or_reduce_inferred__0/i_ 
       (.I0(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[2] ),
        .O(or_ints2));
endmodule

(* Interface = "SPI" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMTDS
   (AXI_LITE_GPIO_araddr,
    AXI_LITE_GPIO_arready,
    AXI_LITE_GPIO_arvalid,
    AXI_LITE_GPIO_awaddr,
    AXI_LITE_GPIO_awready,
    AXI_LITE_GPIO_awvalid,
    AXI_LITE_GPIO_bready,
    AXI_LITE_GPIO_bresp,
    AXI_LITE_GPIO_bvalid,
    AXI_LITE_GPIO_rdata,
    AXI_LITE_GPIO_rready,
    AXI_LITE_GPIO_rresp,
    AXI_LITE_GPIO_rvalid,
    AXI_LITE_GPIO_wdata,
    AXI_LITE_GPIO_wready,
    AXI_LITE_GPIO_wstrb,
    AXI_LITE_GPIO_wvalid,
    AXI_LITE_SPI_araddr,
    AXI_LITE_SPI_arready,
    AXI_LITE_SPI_arvalid,
    AXI_LITE_SPI_awaddr,
    AXI_LITE_SPI_awready,
    AXI_LITE_SPI_awvalid,
    AXI_LITE_SPI_bready,
    AXI_LITE_SPI_bresp,
    AXI_LITE_SPI_bvalid,
    AXI_LITE_SPI_rdata,
    AXI_LITE_SPI_rready,
    AXI_LITE_SPI_rresp,
    AXI_LITE_SPI_rvalid,
    AXI_LITE_SPI_wdata,
    AXI_LITE_SPI_wready,
    AXI_LITE_SPI_wstrb,
    AXI_LITE_SPI_wvalid,
    AXI_LITE_TIMER_araddr,
    AXI_LITE_TIMER_arready,
    AXI_LITE_TIMER_arvalid,
    AXI_LITE_TIMER_awaddr,
    AXI_LITE_TIMER_awready,
    AXI_LITE_TIMER_awvalid,
    AXI_LITE_TIMER_bready,
    AXI_LITE_TIMER_bresp,
    AXI_LITE_TIMER_bvalid,
    AXI_LITE_TIMER_rdata,
    AXI_LITE_TIMER_rready,
    AXI_LITE_TIMER_rresp,
    AXI_LITE_TIMER_rvalid,
    AXI_LITE_TIMER_wdata,
    AXI_LITE_TIMER_wready,
    AXI_LITE_TIMER_wstrb,
    AXI_LITE_TIMER_wvalid,
    Pmod_out_pin10_i,
    Pmod_out_pin10_o,
    Pmod_out_pin10_t,
    Pmod_out_pin1_i,
    Pmod_out_pin1_o,
    Pmod_out_pin1_t,
    Pmod_out_pin2_i,
    Pmod_out_pin2_o,
    Pmod_out_pin2_t,
    Pmod_out_pin3_i,
    Pmod_out_pin3_o,
    Pmod_out_pin3_t,
    Pmod_out_pin4_i,
    Pmod_out_pin4_o,
    Pmod_out_pin4_t,
    Pmod_out_pin7_i,
    Pmod_out_pin7_o,
    Pmod_out_pin7_t,
    Pmod_out_pin8_i,
    Pmod_out_pin8_o,
    Pmod_out_pin8_t,
    Pmod_out_pin9_i,
    Pmod_out_pin9_o,
    Pmod_out_pin9_t,
    SPI_SS_I,
    SPI_SS_O,
    SPI_SS_T,
    SPI_IO0_I,
    SPI_IO0_O,
    SPI_IO0_T,
    SPI_IO1_I,
    SPI_IO1_O,
    SPI_IO1_T,
    SPI_CLK_I,
    SPI_CLK_O,
    SPI_CLK_T,
    SPI_Interrupt,
    GPIO_Interrupt,
    s_axi_aclk,
    s_axi_aresetn);
  input [8:0]AXI_LITE_GPIO_araddr;
  output AXI_LITE_GPIO_arready;
  input AXI_LITE_GPIO_arvalid;
  input [8:0]AXI_LITE_GPIO_awaddr;
  output AXI_LITE_GPIO_awready;
  input AXI_LITE_GPIO_awvalid;
  input AXI_LITE_GPIO_bready;
  output [1:0]AXI_LITE_GPIO_bresp;
  output AXI_LITE_GPIO_bvalid;
  output [31:0]AXI_LITE_GPIO_rdata;
  input AXI_LITE_GPIO_rready;
  output [1:0]AXI_LITE_GPIO_rresp;
  output AXI_LITE_GPIO_rvalid;
  input [31:0]AXI_LITE_GPIO_wdata;
  output AXI_LITE_GPIO_wready;
  input [3:0]AXI_LITE_GPIO_wstrb;
  input AXI_LITE_GPIO_wvalid;
  input [6:0]AXI_LITE_SPI_araddr;
  output AXI_LITE_SPI_arready;
  input AXI_LITE_SPI_arvalid;
  input [6:0]AXI_LITE_SPI_awaddr;
  output AXI_LITE_SPI_awready;
  input AXI_LITE_SPI_awvalid;
  input AXI_LITE_SPI_bready;
  output [1:0]AXI_LITE_SPI_bresp;
  output AXI_LITE_SPI_bvalid;
  output [31:0]AXI_LITE_SPI_rdata;
  input AXI_LITE_SPI_rready;
  output [1:0]AXI_LITE_SPI_rresp;
  output AXI_LITE_SPI_rvalid;
  input [31:0]AXI_LITE_SPI_wdata;
  output AXI_LITE_SPI_wready;
  input [3:0]AXI_LITE_SPI_wstrb;
  input AXI_LITE_SPI_wvalid;
  input [4:0]AXI_LITE_TIMER_araddr;
  output AXI_LITE_TIMER_arready;
  input AXI_LITE_TIMER_arvalid;
  input [4:0]AXI_LITE_TIMER_awaddr;
  output AXI_LITE_TIMER_awready;
  input AXI_LITE_TIMER_awvalid;
  input AXI_LITE_TIMER_bready;
  output [1:0]AXI_LITE_TIMER_bresp;
  output AXI_LITE_TIMER_bvalid;
  output [31:0]AXI_LITE_TIMER_rdata;
  input AXI_LITE_TIMER_rready;
  output [1:0]AXI_LITE_TIMER_rresp;
  output AXI_LITE_TIMER_rvalid;
  input [31:0]AXI_LITE_TIMER_wdata;
  output AXI_LITE_TIMER_wready;
  input [3:0]AXI_LITE_TIMER_wstrb;
  input AXI_LITE_TIMER_wvalid;
  input Pmod_out_pin10_i;
  output Pmod_out_pin10_o;
  output Pmod_out_pin10_t;
  input Pmod_out_pin1_i;
  output Pmod_out_pin1_o;
  output Pmod_out_pin1_t;
  input Pmod_out_pin2_i;
  output Pmod_out_pin2_o;
  output Pmod_out_pin2_t;
  input Pmod_out_pin3_i;
  output Pmod_out_pin3_o;
  output Pmod_out_pin3_t;
  input Pmod_out_pin4_i;
  output Pmod_out_pin4_o;
  output Pmod_out_pin4_t;
  input Pmod_out_pin7_i;
  output Pmod_out_pin7_o;
  output Pmod_out_pin7_t;
  input Pmod_out_pin8_i;
  output Pmod_out_pin8_o;
  output Pmod_out_pin8_t;
  input Pmod_out_pin9_i;
  output Pmod_out_pin9_o;
  output Pmod_out_pin9_t;
  input SPI_SS_I;
  output SPI_SS_O;
  output SPI_SS_T;
  input SPI_IO0_I;
  output SPI_IO0_O;
  output SPI_IO0_T;
  input SPI_IO1_I;
  output SPI_IO1_O;
  output SPI_IO1_T;
  input SPI_CLK_I;
  output SPI_CLK_O;
  output SPI_CLK_T;
  output SPI_Interrupt;
  output GPIO_Interrupt;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire \<const0> ;
  wire [8:0]AXI_LITE_GPIO_araddr;
  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_arvalid;
  wire [8:0]AXI_LITE_GPIO_awaddr;
  wire AXI_LITE_GPIO_awready;
  wire AXI_LITE_GPIO_awvalid;
  wire AXI_LITE_GPIO_bready;
  wire [1:0]AXI_LITE_GPIO_bresp;
  wire AXI_LITE_GPIO_bvalid;
  wire [31:0]AXI_LITE_GPIO_rdata;
  wire AXI_LITE_GPIO_rready;
  wire [1:0]AXI_LITE_GPIO_rresp;
  wire AXI_LITE_GPIO_rvalid;
  wire [31:0]AXI_LITE_GPIO_wdata;
  wire AXI_LITE_GPIO_wready;
  wire [3:0]AXI_LITE_GPIO_wstrb;
  wire AXI_LITE_GPIO_wvalid;
  wire [6:0]AXI_LITE_SPI_araddr;
  wire AXI_LITE_SPI_arready;
  wire AXI_LITE_SPI_arvalid;
  wire [6:0]AXI_LITE_SPI_awaddr;
  wire AXI_LITE_SPI_awready;
  wire AXI_LITE_SPI_awvalid;
  wire AXI_LITE_SPI_bready;
  wire [1:0]AXI_LITE_SPI_bresp;
  wire AXI_LITE_SPI_bvalid;
  wire [31:0]AXI_LITE_SPI_rdata;
  wire AXI_LITE_SPI_rready;
  wire [1:0]AXI_LITE_SPI_rresp;
  wire AXI_LITE_SPI_rvalid;
  wire [31:0]AXI_LITE_SPI_wdata;
  wire AXI_LITE_SPI_wready;
  wire [3:0]AXI_LITE_SPI_wstrb;
  wire AXI_LITE_SPI_wvalid;
  wire [4:0]AXI_LITE_TIMER_araddr;
  wire AXI_LITE_TIMER_arready;
  wire AXI_LITE_TIMER_arvalid;
  wire [4:0]AXI_LITE_TIMER_awaddr;
  wire AXI_LITE_TIMER_awready;
  wire AXI_LITE_TIMER_awvalid;
  wire AXI_LITE_TIMER_bready;
  wire [1:0]AXI_LITE_TIMER_bresp;
  wire AXI_LITE_TIMER_bvalid;
  wire [31:0]AXI_LITE_TIMER_rdata;
  wire AXI_LITE_TIMER_rready;
  wire [1:0]AXI_LITE_TIMER_rresp;
  wire AXI_LITE_TIMER_rvalid;
  wire [31:0]AXI_LITE_TIMER_wdata;
  wire AXI_LITE_TIMER_wready;
  wire [3:0]AXI_LITE_TIMER_wstrb;
  wire AXI_LITE_TIMER_wvalid;
  wire GPIO_Interrupt;
  wire SPI_CLK_I;
  wire SPI_CLK_O;
  wire SPI_CLK_T;
  wire SPI_IO0_I;
  wire SPI_IO0_O;
  wire SPI_IO0_T;
  wire SPI_IO1_I;
  wire SPI_IO1_O;
  wire SPI_IO1_T;
  wire SPI_Interrupt;
  wire SPI_SS_I;
  wire SPI_SS_O;
  wire SPI_SS_T;
  wire [3:0]axi_gpio_0_GPIO_TRI_I;
  wire [3:0]axi_gpio_0_GPIO_TRI_O;
  wire [3:0]axi_gpio_0_GPIO_TRI_T;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire NLW_axi_quad_spi_0_ss_t_UNCONNECTED;
  wire [0:0]NLW_axi_quad_spi_0_ss_o_UNCONNECTED;
  wire NLW_axi_timer_0_generateout0_UNCONNECTED;
  wire NLW_axi_timer_0_generateout1_UNCONNECTED;
  wire NLW_axi_timer_0_interrupt_UNCONNECTED;
  wire NLW_axi_timer_0_pwm0_UNCONNECTED;
  wire \NLW_genblk1_0.pmod_bridge_0_in0_I_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_in1_I_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_in2_I_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_in3_I_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out0_O_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out0_T_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out1_O_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out1_T_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out2_O_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out2_T_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out3_O_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out3_T_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out4_O_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out4_T_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out5_O_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out5_T_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out6_O_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out6_T_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out7_O_UNCONNECTED ;
  wire \NLW_genblk1_0.pmod_bridge_0_out7_T_UNCONNECTED ;

  assign Pmod_out_pin10_o = \<const0> ;
  assign Pmod_out_pin10_t = \<const0> ;
  assign Pmod_out_pin1_o = \<const0> ;
  assign Pmod_out_pin1_t = \<const0> ;
  assign Pmod_out_pin2_o = \<const0> ;
  assign Pmod_out_pin2_t = \<const0> ;
  assign Pmod_out_pin3_o = \<const0> ;
  assign Pmod_out_pin3_t = \<const0> ;
  assign Pmod_out_pin4_o = \<const0> ;
  assign Pmod_out_pin4_t = \<const0> ;
  assign Pmod_out_pin7_o = \<const0> ;
  assign Pmod_out_pin7_t = \<const0> ;
  assign Pmod_out_pin8_o = \<const0> ;
  assign Pmod_out_pin8_t = \<const0> ;
  assign Pmod_out_pin9_o = \<const0> ;
  assign Pmod_out_pin9_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "PmodMTDS_axi_gpio_0_0,axi_gpio,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axi_gpio,Vivado 2018.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMTDS_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i({SPI_SS_I,axi_gpio_0_GPIO_TRI_I[3:2]}),
        .gpio2_io_o({SPI_SS_O,axi_gpio_0_GPIO_TRI_O[3:2]}),
        .gpio2_io_t({SPI_SS_T,axi_gpio_0_GPIO_TRI_T[3:2]}),
        .gpio_io_i(axi_gpio_0_GPIO_TRI_I[1:0]),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O[1:0]),
        .gpio_io_t(axi_gpio_0_GPIO_TRI_T[1:0]),
        .ip2intc_irpt(GPIO_Interrupt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(AXI_LITE_GPIO_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(AXI_LITE_GPIO_arready),
        .s_axi_arvalid(AXI_LITE_GPIO_arvalid),
        .s_axi_awaddr(AXI_LITE_GPIO_awaddr),
        .s_axi_awready(AXI_LITE_GPIO_awready),
        .s_axi_awvalid(AXI_LITE_GPIO_awvalid),
        .s_axi_bready(AXI_LITE_GPIO_bready),
        .s_axi_bresp(AXI_LITE_GPIO_bresp),
        .s_axi_bvalid(AXI_LITE_GPIO_bvalid),
        .s_axi_rdata(AXI_LITE_GPIO_rdata),
        .s_axi_rready(AXI_LITE_GPIO_rready),
        .s_axi_rresp(AXI_LITE_GPIO_rresp),
        .s_axi_rvalid(AXI_LITE_GPIO_rvalid),
        .s_axi_wdata(AXI_LITE_GPIO_wdata),
        .s_axi_wready(AXI_LITE_GPIO_wready),
        .s_axi_wstrb(AXI_LITE_GPIO_wstrb),
        .s_axi_wvalid(AXI_LITE_GPIO_wvalid));
  (* CHECK_LICENSE_TYPE = "PmodMTDS_axi_quad_spi_0_0,axi_quad_spi,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axi_quad_spi,Vivado 2018.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMTDS_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(s_axi_aclk),
        .io0_i(SPI_IO0_I),
        .io0_o(SPI_IO0_O),
        .io0_t(SPI_IO0_T),
        .io1_i(SPI_IO1_I),
        .io1_o(SPI_IO1_O),
        .io1_t(SPI_IO1_T),
        .ip2intc_irpt(SPI_Interrupt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(AXI_LITE_SPI_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(AXI_LITE_SPI_arready),
        .s_axi_arvalid(AXI_LITE_SPI_arvalid),
        .s_axi_awaddr(AXI_LITE_SPI_awaddr),
        .s_axi_awready(AXI_LITE_SPI_awready),
        .s_axi_awvalid(AXI_LITE_SPI_awvalid),
        .s_axi_bready(AXI_LITE_SPI_bready),
        .s_axi_bresp(AXI_LITE_SPI_bresp),
        .s_axi_bvalid(AXI_LITE_SPI_bvalid),
        .s_axi_rdata(AXI_LITE_SPI_rdata),
        .s_axi_rready(AXI_LITE_SPI_rready),
        .s_axi_rresp(AXI_LITE_SPI_rresp),
        .s_axi_rvalid(AXI_LITE_SPI_rvalid),
        .s_axi_wdata(AXI_LITE_SPI_wdata),
        .s_axi_wready(AXI_LITE_SPI_wready),
        .s_axi_wstrb(AXI_LITE_SPI_wstrb),
        .s_axi_wvalid(AXI_LITE_SPI_wvalid),
        .sck_i(SPI_CLK_I),
        .sck_o(SPI_CLK_O),
        .sck_t(SPI_CLK_T),
        .ss_i(1'b1),
        .ss_o(NLW_axi_quad_spi_0_ss_o_UNCONNECTED[0]),
        .ss_t(NLW_axi_quad_spi_0_ss_t_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "axi_timer_0,axi_timer,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axi_timer,Vivado 2018.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_timer_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .generateout0(NLW_axi_timer_0_generateout0_UNCONNECTED),
        .generateout1(NLW_axi_timer_0_generateout1_UNCONNECTED),
        .interrupt(NLW_axi_timer_0_interrupt_UNCONNECTED),
        .pwm0(NLW_axi_timer_0_pwm0_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(AXI_LITE_TIMER_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(AXI_LITE_TIMER_arready),
        .s_axi_arvalid(AXI_LITE_TIMER_arvalid),
        .s_axi_awaddr(AXI_LITE_TIMER_awaddr),
        .s_axi_awready(AXI_LITE_TIMER_awready),
        .s_axi_awvalid(AXI_LITE_TIMER_awvalid),
        .s_axi_bready(AXI_LITE_TIMER_bready),
        .s_axi_bresp(AXI_LITE_TIMER_bresp),
        .s_axi_bvalid(AXI_LITE_TIMER_bvalid),
        .s_axi_rdata(AXI_LITE_TIMER_rdata),
        .s_axi_rready(AXI_LITE_TIMER_rready),
        .s_axi_rresp(AXI_LITE_TIMER_rresp),
        .s_axi_rvalid(AXI_LITE_TIMER_rvalid),
        .s_axi_wdata(AXI_LITE_TIMER_wdata),
        .s_axi_wready(AXI_LITE_TIMER_wready),
        .s_axi_wstrb(AXI_LITE_TIMER_wstrb),
        .s_axi_wvalid(AXI_LITE_TIMER_wvalid));
  (* CHECK_LICENSE_TYPE = "PmodMTDS_pmod_bridge_0_0,pmod_concat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pmod_concat,Vivado 2018.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMTDS_pmod_bridge_0_0 \genblk1_0.pmod_bridge_0 
       (.in0_I(\NLW_genblk1_0.pmod_bridge_0_in0_I_UNCONNECTED ),
        .in0_O(1'b0),
        .in0_T(1'b0),
        .in1_I(\NLW_genblk1_0.pmod_bridge_0_in1_I_UNCONNECTED ),
        .in1_O(1'b0),
        .in1_T(1'b0),
        .in2_I(\NLW_genblk1_0.pmod_bridge_0_in2_I_UNCONNECTED ),
        .in2_O(1'b0),
        .in2_T(1'b0),
        .in3_I(\NLW_genblk1_0.pmod_bridge_0_in3_I_UNCONNECTED ),
        .in3_O(1'b0),
        .in3_T(1'b0),
        .in_bottom_bus_I(axi_gpio_0_GPIO_TRI_I),
        .in_bottom_bus_O(axi_gpio_0_GPIO_TRI_O),
        .in_bottom_bus_T(axi_gpio_0_GPIO_TRI_T),
        .out0_I(1'b0),
        .out0_O(\NLW_genblk1_0.pmod_bridge_0_out0_O_UNCONNECTED ),
        .out0_T(\NLW_genblk1_0.pmod_bridge_0_out0_T_UNCONNECTED ),
        .out1_I(1'b0),
        .out1_O(\NLW_genblk1_0.pmod_bridge_0_out1_O_UNCONNECTED ),
        .out1_T(\NLW_genblk1_0.pmod_bridge_0_out1_T_UNCONNECTED ),
        .out2_I(1'b0),
        .out2_O(\NLW_genblk1_0.pmod_bridge_0_out2_O_UNCONNECTED ),
        .out2_T(\NLW_genblk1_0.pmod_bridge_0_out2_T_UNCONNECTED ),
        .out3_I(1'b0),
        .out3_O(\NLW_genblk1_0.pmod_bridge_0_out3_O_UNCONNECTED ),
        .out3_T(\NLW_genblk1_0.pmod_bridge_0_out3_T_UNCONNECTED ),
        .out4_I(1'b0),
        .out4_O(\NLW_genblk1_0.pmod_bridge_0_out4_O_UNCONNECTED ),
        .out4_T(\NLW_genblk1_0.pmod_bridge_0_out4_T_UNCONNECTED ),
        .out5_I(1'b0),
        .out5_O(\NLW_genblk1_0.pmod_bridge_0_out5_O_UNCONNECTED ),
        .out5_T(\NLW_genblk1_0.pmod_bridge_0_out5_T_UNCONNECTED ),
        .out6_I(1'b0),
        .out6_O(\NLW_genblk1_0.pmod_bridge_0_out6_O_UNCONNECTED ),
        .out6_T(\NLW_genblk1_0.pmod_bridge_0_out6_T_UNCONNECTED ),
        .out7_I(1'b0),
        .out7_O(\NLW_genblk1_0.pmod_bridge_0_out7_O_UNCONNECTED ),
        .out7_T(\NLW_genblk1_0.pmod_bridge_0_out7_T_UNCONNECTED ));
endmodule

(* CHECK_LICENSE_TYPE = "PmodMTDS_axi_gpio_0_0,axi_gpio,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_gpio,Vivado 2018.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMTDS_axi_gpio_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [8:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IP2INTC_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IP2INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ip2intc_irpt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [1:0]gpio_io_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) output [1:0]gpio_io_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_T" *) output [1:0]gpio_io_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) input [2:0]gpio2_io_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *) output [2:0]gpio2_io_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_T" *) output [2:0]gpio2_io_t;

  wire [2:0]gpio2_io_i;
  wire [2:0]gpio2_io_o;
  wire [2:0]gpio2_io_t;
  wire [1:0]gpio_io_i;
  wire [1:0]gpio_io_o;
  wire [1:0]gpio_io_t;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* C_ALL_INPUTS = "0" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "0" *) 
  (* C_DOUT_DEFAULT = "0" *) 
  (* C_DOUT_DEFAULT_2 = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPIO2_WIDTH = "3" *) 
  (* C_GPIO_WIDTH = "2" *) 
  (* C_INTERRUPT_PRESENT = "1" *) 
  (* C_IS_DUAL = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "-1" *) 
  (* C_TRI_DEFAULT_2 = "-1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio U0
       (.gpio2_io_i(gpio2_io_i),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(gpio_io_t),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "PmodMTDS_axi_quad_spi_0_0,axi_quad_spi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_quad_spi,Vivado 2018.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMTDS_axi_quad_spi_0_0
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    sck_i,
    sck_o,
    sck_t,
    ss_i,
    ss_o,
    ss_t,
    ip2intc_irpt);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 100000000, PHASE 0.000" *) input ext_spi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 lite_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lite_clk, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 lite_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lite_reset, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [6:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR" *) input [6:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 IO0_I" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPI_0, BOARD.ASSOCIATED_PARAM QSPI_BOARD_INTERFACE" *) input io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 IO0_O" *) output io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 IO0_T" *) output io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 IO1_I" *) input io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 IO1_O" *) output io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 IO1_T" *) output io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 SCK_I" *) input sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 SCK_O" *) output sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 SCK_T" *) output sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 SS_I" *) input [0:0]ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 SS_O" *) output [0:0]ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0 SS_T" *) output ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *) output ip2intc_irpt;

  wire ext_spi_clk;
  wire io0_i;
  wire io0_o;
  wire io0_t;
  wire io1_i;
  wire io1_o;
  wire io1_t;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire [0:0]ss_i;
  wire [0:0]ss_o;
  wire ss_t;
  wire NLW_U0_cfgclk_UNCONNECTED;
  wire NLW_U0_cfgmclk_UNCONNECTED;
  wire NLW_U0_eos_UNCONNECTED;
  wire NLW_U0_io0_1_o_UNCONNECTED;
  wire NLW_U0_io0_1_t_UNCONNECTED;
  wire NLW_U0_io1_1_o_UNCONNECTED;
  wire NLW_U0_io1_1_t_UNCONNECTED;
  wire NLW_U0_io2_1_o_UNCONNECTED;
  wire NLW_U0_io2_1_t_UNCONNECTED;
  wire NLW_U0_io2_o_UNCONNECTED;
  wire NLW_U0_io2_t_UNCONNECTED;
  wire NLW_U0_io3_1_o_UNCONNECTED;
  wire NLW_U0_io3_1_t_UNCONNECTED;
  wire NLW_U0_io3_o_UNCONNECTED;
  wire NLW_U0_io3_t_UNCONNECTED;
  wire NLW_U0_preq_UNCONNECTED;
  wire NLW_U0_s_axi4_arready_UNCONNECTED;
  wire NLW_U0_s_axi4_awready_UNCONNECTED;
  wire NLW_U0_s_axi4_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi4_rlast_UNCONNECTED;
  wire NLW_U0_s_axi4_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi4_wready_UNCONNECTED;
  wire NLW_U0_ss_1_o_UNCONNECTED;
  wire NLW_U0_ss_1_t_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi4_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_rresp_UNCONNECTED;

  (* Async_Clk = "1" *) 
  (* C_DUAL_QUAD_MODE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FIFO_DEPTH = "0" *) 
  (* C_INSTANCE = "axi_quad_spi_inst" *) 
  (* C_LSB_STUP = "0" *) 
  (* C_NUM_SS_BITS = "1" *) 
  (* C_NUM_TRANSFER_BITS = "8" *) 
  (* C_SCK_RATIO = "16" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SHARED_STARTUP = "0" *) 
  (* C_SPI_MEMORY = "1" *) 
  (* C_SPI_MEM_ADDR_BITS = "24" *) 
  (* C_SPI_MODE = "0" *) 
  (* C_SUB_FAMILY = "zynq" *) 
  (* C_S_AXI4_ADDR_WIDTH = "24" *) 
  (* C_S_AXI4_BASEADDR = "-1" *) 
  (* C_S_AXI4_DATA_WIDTH = "32" *) 
  (* C_S_AXI4_HIGHADDR = "0" *) 
  (* C_S_AXI4_ID_WIDTH = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TYPE_OF_AXI4_INTERFACE = "0" *) 
  (* C_UC_FAMILY = "0" *) 
  (* C_USE_STARTUP = "0" *) 
  (* C_USE_STARTUP_EXT = "0" *) 
  (* C_XIP_MODE = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi U0
       (.cfgclk(NLW_U0_cfgclk_UNCONNECTED),
        .cfgmclk(NLW_U0_cfgmclk_UNCONNECTED),
        .clk(1'b0),
        .eos(NLW_U0_eos_UNCONNECTED),
        .ext_spi_clk(ext_spi_clk),
        .gsr(1'b0),
        .gts(1'b0),
        .io0_1_i(1'b0),
        .io0_1_o(NLW_U0_io0_1_o_UNCONNECTED),
        .io0_1_t(NLW_U0_io0_1_t_UNCONNECTED),
        .io0_i(io0_i),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1_1_i(1'b0),
        .io1_1_o(NLW_U0_io1_1_o_UNCONNECTED),
        .io1_1_t(NLW_U0_io1_1_t_UNCONNECTED),
        .io1_i(io1_i),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .io2_1_i(1'b0),
        .io2_1_o(NLW_U0_io2_1_o_UNCONNECTED),
        .io2_1_t(NLW_U0_io2_1_t_UNCONNECTED),
        .io2_i(1'b0),
        .io2_o(NLW_U0_io2_o_UNCONNECTED),
        .io2_t(NLW_U0_io2_t_UNCONNECTED),
        .io3_1_i(1'b0),
        .io3_1_o(NLW_U0_io3_1_o_UNCONNECTED),
        .io3_1_t(NLW_U0_io3_1_t_UNCONNECTED),
        .io3_i(1'b0),
        .io3_o(NLW_U0_io3_o_UNCONNECTED),
        .io3_t(NLW_U0_io3_t_UNCONNECTED),
        .ip2intc_irpt(ip2intc_irpt),
        .keyclearb(1'b0),
        .pack(1'b0),
        .preq(NLW_U0_preq_UNCONNECTED),
        .s_axi4_aclk(1'b0),
        .s_axi4_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_arburst({1'b0,1'b0}),
        .s_axi4_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_aresetn(1'b0),
        .s_axi4_arid(1'b0),
        .s_axi4_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_arlock(1'b0),
        .s_axi4_arprot({1'b0,1'b0,1'b0}),
        .s_axi4_arready(NLW_U0_s_axi4_arready_UNCONNECTED),
        .s_axi4_arsize({1'b0,1'b0,1'b0}),
        .s_axi4_arvalid(1'b0),
        .s_axi4_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awburst({1'b0,1'b0}),
        .s_axi4_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awid(1'b0),
        .s_axi4_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awlock(1'b0),
        .s_axi4_awprot({1'b0,1'b0,1'b0}),
        .s_axi4_awready(NLW_U0_s_axi4_awready_UNCONNECTED),
        .s_axi4_awsize({1'b0,1'b0,1'b0}),
        .s_axi4_awvalid(1'b0),
        .s_axi4_bid(NLW_U0_s_axi4_bid_UNCONNECTED[0]),
        .s_axi4_bready(1'b0),
        .s_axi4_bresp(NLW_U0_s_axi4_bresp_UNCONNECTED[1:0]),
        .s_axi4_bvalid(NLW_U0_s_axi4_bvalid_UNCONNECTED),
        .s_axi4_rdata(NLW_U0_s_axi4_rdata_UNCONNECTED[31:0]),
        .s_axi4_rid(NLW_U0_s_axi4_rid_UNCONNECTED[0]),
        .s_axi4_rlast(NLW_U0_s_axi4_rlast_UNCONNECTED),
        .s_axi4_rready(1'b0),
        .s_axi4_rresp(NLW_U0_s_axi4_rresp_UNCONNECTED[1:0]),
        .s_axi4_rvalid(NLW_U0_s_axi4_rvalid_UNCONNECTED),
        .s_axi4_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wlast(1'b0),
        .s_axi4_wready(NLW_U0_s_axi4_wready_UNCONNECTED),
        .s_axi4_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wvalid(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .spisel(1'b1),
        .ss_1_i(1'b0),
        .ss_1_o(NLW_U0_ss_1_o_UNCONNECTED),
        .ss_1_t(NLW_U0_ss_1_t_UNCONNECTED),
        .ss_i(ss_i),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .usrcclkts(1'b0),
        .usrdoneo(1'b1),
        .usrdonets(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "PmodMTDS_pmod_bridge_0_0,pmod_concat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pmod_concat,Vivado 2018.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMTDS_pmod_bridge_0_0
   (in_bottom_bus_I,
    in_bottom_bus_O,
    in_bottom_bus_T,
    in0_I,
    in1_I,
    in2_I,
    in3_I,
    in0_O,
    in1_O,
    in2_O,
    in3_O,
    in0_T,
    in1_T,
    in2_T,
    in3_T,
    out0_I,
    out1_I,
    out2_I,
    out3_I,
    out4_I,
    out5_I,
    out6_I,
    out7_I,
    out0_O,
    out1_O,
    out2_O,
    out3_O,
    out4_O,
    out5_O,
    out6_O,
    out7_O,
    out0_T,
    out1_T,
    out2_T,
    out3_T,
    out4_T,
    out5_T,
    out6_T,
    out7_T);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_Bottom_Row TRI_I" *) output [3:0]in_bottom_bus_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_Bottom_Row TRI_O" *) input [3:0]in_bottom_bus_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_Bottom_Row TRI_T" *) input [3:0]in_bottom_bus_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SS_I" *) output in0_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO0_I" *) output in1_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO1_I" *) output in2_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SCK_I" *) output in3_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SS_O" *) input in0_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO0_O" *) input in1_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO1_O" *) input in2_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SCK_O" *) input in3_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SS_T" *) input in0_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO0_T" *) input in1_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO1_T" *) input in2_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SCK_T" *) input in3_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I" *) input out0_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I" *) input out1_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I" *) input out2_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I" *) input out3_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I" *) input out4_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I" *) input out5_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I" *) input out6_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I" *) input out7_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O" *) output out0_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O" *) output out1_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O" *) output out2_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O" *) output out3_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O" *) output out4_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O" *) output out5_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O" *) output out6_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O" *) output out7_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T" *) output out0_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T" *) output out1_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T" *) output out2_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T" *) output out3_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T" *) output out4_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T" *) output out5_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T" *) output out6_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Pmod_out, BOARD.ASSOCIATED_PARAM PMOD" *) output out7_T;

  wire in0_I;
  wire in0_O;
  wire in0_T;
  wire in1_I;
  wire in1_O;
  wire in1_T;
  wire in2_I;
  wire in2_O;
  wire in2_T;
  wire in3_I;
  wire in3_O;
  wire in3_T;
  wire [3:0]in_bottom_bus_I;
  wire [3:0]in_bottom_bus_O;
  wire [3:0]in_bottom_bus_T;
  wire out0_I;
  wire out0_O;
  wire out0_T;
  wire out1_I;
  wire out1_O;
  wire out1_T;
  wire out2_I;
  wire out2_O;
  wire out2_T;
  wire out3_I;
  wire out3_O;
  wire out3_T;
  wire out4_I;
  wire out4_O;
  wire out4_T;
  wire out5_I;
  wire out5_O;
  wire out5_T;
  wire out6_I;
  wire out6_O;
  wire out6_T;
  wire out7_I;
  wire out7_O;
  wire out7_T;
  wire NLW_inst_in4_I_UNCONNECTED;
  wire NLW_inst_in5_I_UNCONNECTED;
  wire NLW_inst_in6_I_UNCONNECTED;
  wire NLW_inst_in7_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED;
  wire [3:0]NLW_inst_in_top_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED;

  (* Bottom_Row_Interface = "GPIO" *) 
  (* Top_Row_Interface = "SPI" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat inst
       (.in0_I(in0_I),
        .in0_O(in0_O),
        .in0_T(in0_T),
        .in1_I(in1_I),
        .in1_O(in1_O),
        .in1_T(in1_T),
        .in2_I(in2_I),
        .in2_O(in2_O),
        .in2_T(in2_T),
        .in3_I(in3_I),
        .in3_O(in3_O),
        .in3_T(in3_T),
        .in4_I(NLW_inst_in4_I_UNCONNECTED),
        .in4_O(1'b1),
        .in4_T(1'b1),
        .in5_I(NLW_inst_in5_I_UNCONNECTED),
        .in5_O(1'b1),
        .in5_T(1'b1),
        .in6_I(NLW_inst_in6_I_UNCONNECTED),
        .in6_O(1'b1),
        .in6_T(1'b1),
        .in7_I(NLW_inst_in7_I_UNCONNECTED),
        .in7_O(1'b1),
        .in7_T(1'b1),
        .in_bottom_bus_I(in_bottom_bus_I),
        .in_bottom_bus_O(in_bottom_bus_O),
        .in_bottom_bus_T(in_bottom_bus_T),
        .in_bottom_i2c_gpio_bus_I(NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_I(NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_uart_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_T({1'b0,1'b1}),
        .in_top_bus_I(NLW_inst_in_top_bus_I_UNCONNECTED[3:0]),
        .in_top_bus_O({1'b0,1'b0,1'b0,1'b0}),
        .in_top_bus_T({1'b0,1'b0,1'b0,1'b0}),
        .in_top_i2c_gpio_bus_I(NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_top_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_top_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_top_uart_gpio_bus_I(NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED[1:0]),
        .in_top_uart_gpio_bus_O({1'b0,1'b1}),
        .in_top_uart_gpio_bus_T({1'b0,1'b1}),
        .out0_I(out0_I),
        .out0_O(out0_O),
        .out0_T(out0_T),
        .out1_I(out1_I),
        .out1_O(out1_O),
        .out1_T(out1_T),
        .out2_I(out2_I),
        .out2_O(out2_O),
        .out2_T(out2_T),
        .out3_I(out3_I),
        .out3_O(out3_O),
        .out3_T(out3_T),
        .out4_I(out4_I),
        .out4_O(out4_O),
        .out4_T(out4_T),
        .out5_I(out5_I),
        .out5_O(out5_O),
        .out5_T(out5_T),
        .out6_I(out6_I),
        .out6_O(out6_O),
        .out6_T(out6_T),
        .out7_I(out7_I),
        .out7_O(out7_O),
        .out7_T(out7_T));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (intr2bus_wrack_reg,
    \ip2bus_data_i_D1_reg[29] ,
    \ip2bus_data_i_D1_reg[29]_0 ,
    p_19_in,
    p_20_in,
    \Dual.gpio2_Data_Out_reg[0] ,
    ipif_glbl_irpt_enable_reg_reg,
    \Dual.gpio2_OE_reg[0] ,
    \Dual.gpio2_Data_Out_reg[0]_0 ,
    p_0_in16_in,
    p_0_in18_in,
    gpio_reg_en,
    interrupt_wrce_strb,
    irpt_wrack,
    intr2bus_rdack0,
    irpt_rdack,
    D,
    p_3_out,
    intr_rd_ce_or_reduce,
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ,
    intr_wr_ce_or_reduce,
    p_0_out,
    p_4_out__0,
    AXI_LITE_GPIO_wready,
    AXI_LITE_GPIO_arready,
    ipif_glbl_irpt_enable_reg_reg_0,
    Q,
    s_axi_aclk,
    bus2ip_rnw_i_reg,
    \bus2ip_addr_i_reg[8] ,
    bus2ip_reset,
    irpt_wrack_d1,
    irpt_rdack_d1,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[0] ,
    p_1_in,
    \ip_irpt_enable_reg_reg[1] ,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    reg3,
    reg4,
    reg1,
    reg2,
    s_axi_wdata,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    is_read_reg,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ,
    ip2bus_wrack_i_D1,
    is_write_reg,
    ipif_glbl_irpt_enable_reg);
  output intr2bus_wrack_reg;
  output \ip2bus_data_i_D1_reg[29] ;
  output \ip2bus_data_i_D1_reg[29]_0 ;
  output p_19_in;
  output p_20_in;
  output \Dual.gpio2_Data_Out_reg[0] ;
  output ipif_glbl_irpt_enable_reg_reg;
  output \Dual.gpio2_OE_reg[0] ;
  output \Dual.gpio2_Data_Out_reg[0]_0 ;
  output p_0_in16_in;
  output p_0_in18_in;
  output gpio_reg_en;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output intr2bus_rdack0;
  output irpt_rdack;
  output [3:0]D;
  output p_3_out;
  output intr_rd_ce_or_reduce;
  output \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  output intr_wr_ce_or_reduce;
  output [1:0]p_0_out;
  output p_4_out__0;
  output AXI_LITE_GPIO_wready;
  output AXI_LITE_GPIO_arready;
  output ipif_glbl_irpt_enable_reg_reg_0;
  input Q;
  input s_axi_aclk;
  input bus2ip_rnw_i_reg;
  input [6:0]\bus2ip_addr_i_reg[8] ;
  input bus2ip_reset;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \ip_irpt_enable_reg_reg[0] ;
  input p_1_in;
  input \ip_irpt_enable_reg_reg[1] ;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input [2:0]reg3;
  input [2:0]reg4;
  input [1:0]reg1;
  input [1:0]reg2;
  input [3:0]s_axi_wdata;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input is_read_reg;
  input [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  input ip2bus_wrack_i_D1;
  input is_write_reg;
  input ipif_glbl_irpt_enable_reg;

  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_wready;
  wire Bus_RNW_reg_i_1_n_0;
  wire [3:0]D;
  wire \Dual.gpio2_Data_Out_reg[0] ;
  wire \Dual.gpio2_Data_Out_reg[0]_0 ;
  wire \Dual.gpio2_OE_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  wire Q;
  wire [6:0]\bus2ip_addr_i_reg[8] ;
  wire bus2ip_reset;
  wire bus2ip_rnw_i_reg;
  wire cs_ce_clr;
  wire gpio_reg_en;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr2bus_wrack_reg;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1[30]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[30]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[30]_i_4_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_4_n_0 ;
  wire \ip2bus_data_i_D1_reg[29] ;
  wire \ip2bus_data_i_D1_reg[29]_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i_D1;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire \ip_irpt_enable_reg_reg[1] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_reg;
  wire is_write_reg;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire [1:0]p_0_out;
  wire p_10_in;
  wire p_10_out;
  wire p_11_in;
  wire p_11_out;
  wire p_12_in;
  wire p_12_out;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_15_out;
  wire p_16_in;
  wire p_19_in;
  wire p_19_out;
  wire p_1_in;
  wire p_1_out;
  wire p_20_in;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_3_out_0;
  wire p_4_in;
  wire p_4_out;
  wire p_4_out__0;
  wire p_5_in;
  wire p_5_out;
  wire p_6_out;
  wire p_7_in;
  wire p_7_out;
  wire p_8_in;
  wire p_8_out;
  wire p_9_in;
  wire p_9_out;
  wire pselect_hit_i_1;
  wire [1:0]reg1;
  wire [1:0]reg2;
  wire [2:0]reg3;
  wire [2:0]reg4;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [3:0]s_axi_wdata;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(Q),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(ipif_glbl_irpt_enable_reg_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_3 
       (.I0(\Dual.gpio2_Data_Out_reg[0] ),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .O(gpio_reg_en));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \Dual.gpio2_Data_Out[0]_i_2 
       (.I0(bus2ip_rnw_i_reg),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [6]),
        .I4(\Dual.gpio2_Data_Out_reg[0] ),
        .I5(bus2ip_reset),
        .O(\Dual.gpio2_Data_Out_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \Dual.gpio2_OE[0]_i_2 
       (.I0(bus2ip_rnw_i_reg),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\Dual.gpio2_Data_Out_reg[0] ),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .I5(bus2ip_reset),
        .O(\Dual.gpio2_OE_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Dual.gpio_Data_Out[0]_i_2 
       (.I0(s_axi_wdata[1]),
        .I1(\Dual.gpio2_Data_Out_reg[0] ),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(s_axi_wdata[2]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \Dual.gpio_Data_Out[0]_i_3 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\Dual.gpio2_Data_Out_reg[0] ),
        .O(p_0_in18_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \Dual.gpio_Data_Out[1]_i_2 
       (.I0(s_axi_wdata[0]),
        .I1(\Dual.gpio2_Data_Out_reg[0] ),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(s_axi_wdata[1]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \Dual.gpio_OE[0]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\Dual.gpio2_Data_Out_reg[0] ),
        .O(p_0_in16_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(pselect_hit_i_1),
        .O(p_3_out_0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out_0),
        .Q(p_20_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(p_9_out));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_9_out),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [6]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [3]),
        .O(p_8_out));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_8_out),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(p_7_out));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_7_out),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(p_6_out));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_6_out),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(p_5_out));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_5_out),
        .Q(intr2bus_wrack_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(p_4_out));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_4_out),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(AXI_LITE_GPIO_wready),
        .I1(AXI_LITE_GPIO_arready),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [6]),
        .I4(\bus2ip_addr_i_reg[8] [2]),
        .O(p_15_out));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_15_out),
        .Q(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(pselect_hit_i_1),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(pselect_hit_i_1),
        .O(p_1_out));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(\ip2bus_data_i_D1_reg[29]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .O(p_19_out));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_19_out),
        .Q(\ip2bus_data_i_D1_reg[29] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(p_14_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_14_out),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .I4(\bus2ip_addr_i_reg[8] [1]),
        .O(p_13_out));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_13_out),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .I4(\bus2ip_addr_i_reg[8] [0]),
        .O(p_12_out));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_12_out),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(p_11_out));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_11_out),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .O(p_10_out));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_10_out),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(p_8_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(p_4_out__0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(intr_rd_ce_or_reduce));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I3(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I4(ip2Bus_RdAck_intr_reg_hole_d1),
        .O(p_3_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(intr_wr_ce_or_reduce));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2 
       (.I0(p_7_in),
        .I1(p_11_in),
        .I2(p_10_in),
        .I3(p_4_in),
        .I4(p_5_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3 
       (.I0(p_2_in),
        .I1(p_3_in),
        .I2(p_16_in),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4 
       (.I0(p_14_in),
        .I1(p_15_in),
        .I2(p_12_in),
        .I3(p_13_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00005554)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I3(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I4(ip2Bus_WrAck_intr_reg_hole_d1),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [4]),
        .I1(\bus2ip_addr_i_reg[8] [5]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .I4(\bus2ip_addr_i_reg[8] [6]),
        .I5(Q),
        .O(pselect_hit_i_1));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_1),
        .Q(\Dual.gpio2_Data_Out_reg[0] ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h0000CCC8)) 
    intr2bus_rdack_i_1
       (.I0(p_9_in),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(p_8_in),
        .I3(intr2bus_wrack_reg),
        .I4(irpt_rdack_d1),
        .O(intr2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00003332)) 
    intr2bus_wrack_i_1
       (.I0(p_8_in),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(intr2bus_wrack_reg),
        .I3(p_9_in),
        .I4(irpt_wrack_d1),
        .O(interrupt_wrce_strb));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(p_9_in),
        .I2(intr2bus_wrack_reg),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(p_8_in),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF800000088000000)) 
    \ip2bus_data_i_D1[29]_i_1 
       (.I0(\ip2bus_data_i_D1_reg[29]_0 ),
        .I1(reg3[2]),
        .I2(\ip2bus_data_i_D1_reg[29] ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I5(reg4[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(\ip2bus_data_i_D1[30]_i_2_n_0 ),
        .I1(\ip2bus_data_i_D1[30]_i_3_n_0 ),
        .I2(\ip2bus_data_i_D1[30]_i_4_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \ip2bus_data_i_D1[30]_i_2 
       (.I0(p_1_in),
        .I1(p_8_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(intr2bus_wrack_reg),
        .I4(\ip_irpt_enable_reg_reg[1] ),
        .O(\ip2bus_data_i_D1[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \ip2bus_data_i_D1[30]_i_3 
       (.I0(reg1[1]),
        .I1(p_20_in),
        .I2(reg2[1]),
        .I3(p_19_in),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .O(\ip2bus_data_i_D1[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \ip2bus_data_i_D1[30]_i_4 
       (.I0(reg3[1]),
        .I1(\ip2bus_data_i_D1_reg[29]_0 ),
        .I2(reg4[1]),
        .I3(\ip2bus_data_i_D1_reg[29] ),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .O(\ip2bus_data_i_D1[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(\ip2bus_data_i_D1[31]_i_2_n_0 ),
        .I1(\ip2bus_data_i_D1[31]_i_3_n_0 ),
        .I2(\ip2bus_data_i_D1[31]_i_4_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \ip2bus_data_i_D1[31]_i_2 
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .I1(p_8_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(intr2bus_wrack_reg),
        .I4(\ip_irpt_enable_reg_reg[0] ),
        .O(\ip2bus_data_i_D1[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \ip2bus_data_i_D1[31]_i_3 
       (.I0(reg1[0]),
        .I1(p_20_in),
        .I2(reg2[0]),
        .I3(p_19_in),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .O(\ip2bus_data_i_D1[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \ip2bus_data_i_D1[31]_i_4 
       (.I0(reg3[0]),
        .I1(\ip2bus_data_i_D1_reg[29]_0 ),
        .I2(reg4[0]),
        .I3(\ip2bus_data_i_D1_reg[29] ),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .O(\ip2bus_data_i_D1[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[3]),
        .I1(p_9_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    irpt_rdack_d1_i_1
       (.I0(intr2bus_wrack_reg),
        .I1(p_8_in),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(p_9_in),
        .O(irpt_rdack));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    irpt_wrack_d1_i_1
       (.I0(p_9_in),
        .I1(intr2bus_wrack_reg),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(p_8_in),
        .O(irpt_wrack));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(is_read_reg),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [3]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [0]),
        .O(AXI_LITE_GPIO_arready));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(is_write_reg),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [3]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [0]),
        .O(AXI_LITE_GPIO_wready));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder__parameterized0
   (\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ,
    Transmit_ip2bus_error_reg,
    \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ,
    ipif_glbl_irpt_enable_reg_reg,
    Transmit_ip2bus_error_reg_0,
    ip2Bus_WrAck_intr_reg_hole_d1_reg,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ,
    bus2ip_wrce_int,
    SPICR_data_int_reg0,
    IP2Bus_Error_1,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    reset_trig0,
    sw_rst_cond,
    interrupt_wrce_strb,
    irpt_wrack,
    E,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    modf_reg,
    Receive_ip2bus_error0,
    sr_5_Tx_Empty_i1,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_controller_rd_ce_or_reduce,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ,
    rd_ce_or_reduce_core_cmb,
    ipif_glbl_irpt_enable_reg_reg_0,
    AXI_LITE_SPI_wready,
    AXI_LITE_SPI_arready,
    Q,
    s_axi_aclk,
    sr_5_Tx_Empty_int,
    \bus2ip_addr_i_reg[6] ,
    ip2Bus_WrAck_core_reg_1,
    bus2ip_rnw_i_reg,
    p_24_out,
    p_20_out,
    sw_rst_cond_d1,
    bus2ip_rnw_i_reg_0,
    irpt_wrack_d1,
    bus2ip_rnw_i_reg_1,
    s_axi_wstrb,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[7] ,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in17_in,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    rx_fifo_empty_i,
    prmry_in,
    \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ,
    prmry_vect_in,
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ,
    p_1_in5_in,
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ,
    p_2_in7_in,
    scndry_out,
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ,
    p_3_in,
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ,
    p_4_in,
    modf_reg_0,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    p_5_in,
    spicr_6_rxfifo_rst_frm_axi_clk,
    p_6_in,
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ,
    \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ,
    \SPICR_data_int_reg[0] ,
    s_axi_wdata,
    s_axi_aresetn,
    p_15_out,
    is_read_reg,
    p_16_out,
    is_write_reg,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] );
  output \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ;
  output Transmit_ip2bus_error_reg;
  output \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ;
  output ipif_glbl_irpt_enable_reg_reg;
  output Transmit_ip2bus_error_reg_0;
  output ip2Bus_WrAck_intr_reg_hole_d1_reg;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  output [0:0]bus2ip_wrce_int;
  output SPICR_data_int_reg0;
  output IP2Bus_Error_1;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output reset_trig0;
  output sw_rst_cond;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [0:0]E;
  output [10:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output modf_reg;
  output Receive_ip2bus_error0;
  output sr_5_Tx_Empty_i1;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_controller_rd_ce_or_reduce;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  output rd_ce_or_reduce_core_cmb;
  output ipif_glbl_irpt_enable_reg_reg_0;
  output AXI_LITE_SPI_wready;
  output AXI_LITE_SPI_arready;
  input Q;
  input s_axi_aclk;
  input sr_5_Tx_Empty_int;
  input [4:0]\bus2ip_addr_i_reg[6] ;
  input ip2Bus_WrAck_core_reg_1;
  input bus2ip_rnw_i_reg;
  input p_24_out;
  input p_20_out;
  input sw_rst_cond_d1;
  input bus2ip_rnw_i_reg_0;
  input irpt_wrack_d1;
  input bus2ip_rnw_i_reg_1;
  input [0:0]s_axi_wstrb;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [6:0]\ip_irpt_enable_reg_reg[7] ;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in17_in;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input rx_fifo_empty_i;
  input prmry_in;
  input \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ;
  input [0:0]prmry_vect_in;
  input \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  input p_1_in5_in;
  input \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  input p_2_in7_in;
  input scndry_out;
  input \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  input p_3_in;
  input \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  input p_4_in;
  input modf_reg_0;
  input \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input p_5_in;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input p_6_in;
  input \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  input \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_core_reg_d1;
  input \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  input \SPICR_data_int_reg[0] ;
  input [0:0]s_axi_wdata;
  input s_axi_aresetn;
  input p_15_out;
  input is_read_reg;
  input p_16_out;
  input is_write_reg;
  input [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ;

  wire AXI_LITE_SPI_arready;
  wire AXI_LITE_SPI_wready;
  wire Bus_RNW_reg_i_1_n_0;
  wire \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  wire \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  wire \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  wire \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  wire \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  wire \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  wire [10:0]D;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ;
  wire IP2Bus_Error_1;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_n_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_5_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  wire \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire \MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire \MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ;
  wire Q;
  wire \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  wire \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ;
  wire Receive_ip2bus_error0;
  wire \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ;
  wire SPICR_data_int_reg0;
  wire \SPICR_data_int_reg[0] ;
  wire Transmit_ip2bus_error_reg;
  wire Transmit_ip2bus_error_reg_0;
  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire bus2ip_rnw_i_reg_1;
  wire [0:0]bus2ip_wrce_int;
  wire cs_ce_clr;
  wire eqOp__4;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0;
  wire ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0;
  wire ip2Bus_WrAck_intr_reg_hole_d1_reg;
  wire [6:0]\ip_irpt_enable_reg_reg[7] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_reg;
  wire is_write_reg;
  wire modf_reg;
  wire modf_reg_0;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_15_out_0;
  wire p_16_out;
  wire p_1_in17_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in5_in;
  wire p_1_out;
  wire p_20_out;
  wire p_24_out;
  wire p_2_in7_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_4_in;
  wire p_4_out;
  wire p_5_in;
  wire p_5_out;
  wire p_6_in;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;
  wire prmry_in;
  wire [0:0]prmry_vect_in;
  wire rd_ce_or_reduce_core_cmb;
  wire reset_trig0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire scndry_out;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire sr_5_Tx_Empty_i1;
  wire sr_5_Tx_Empty_int;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg_1),
        .I1(Q),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(ipif_glbl_irpt_enable_reg_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1 
       (.I0(ip2Bus_WrAck_core_reg_1),
        .I1(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(SPICR_data_int_reg0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_5_out),
        .Q(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_4_out),
        .Q(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out),
        .Q(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_14_out),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h20000000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(p_15_out_0));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_15_out_0),
        .Q(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0 ),
        .Q(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(Transmit_ip2bus_error_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0 ),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_13_out),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 
       (.I0(AXI_LITE_SPI_wready),
        .I1(AXI_LITE_SPI_arready),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2 
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [3]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_12_out),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_11_out),
        .Q(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_10_out),
        .Q(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_9_out),
        .Q(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_8_out),
        .Q(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_7_out),
        .Q(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_6_out),
        .Q(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFABFFFF)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(bus2ip_rnw_i_reg_1),
        .I2(s_axi_wstrb),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(ipif_glbl_irpt_enable_reg),
        .I2(bus2ip_rnw_i_reg_0),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[22]_i_1 
       (.I0(\SPICR_data_int_reg[0] ),
        .I1(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[23]_i_1 
       (.I0(\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ),
        .I1(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .I1(p_1_in17_in),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ),
        .I4(\ip_irpt_enable_reg_reg[7] [6]),
        .I5(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2 
       (.I0(bus2ip_rnw_i_reg_1),
        .I1(s_axi_wstrb),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3 
       (.I0(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .I1(\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .I4(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(bus2ip_rnw_i_reg_1),
        .I2(s_axi_wstrb),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[25]_i_1 
       (.I0(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .I1(spicr_6_rxfifo_rst_frm_axi_clk),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .I4(p_6_in),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAEAAAEAFFFFAAEA)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[7] [5]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(p_1_in23_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I3(modf_reg),
        .I4(p_5_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAFFFFAAEA)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[7] [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(p_1_in26_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ),
        .I2(p_4_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .I4(modf_reg_0),
        .I5(modf_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAFFFFAAEA)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0 ),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[7] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(p_1_in29_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h44F444F444F4FFFF)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ),
        .I2(p_3_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .I4(sr_5_Tx_Empty_int),
        .I5(modf_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAFFFFAAEA)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[7] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(p_1_in32_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .I2(p_2_in7_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .I4(scndry_out),
        .I5(modf_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAFFFFAAEA)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0 ),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[7] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I4(p_1_in35_in),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h44F444F444F4FFFF)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_3_n_0 ),
        .I1(\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ),
        .I2(p_1_in5_in),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[26]_i_4_n_0 ),
        .I4(rx_fifo_empty_i),
        .I5(modf_reg),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_1 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_2_n_0 ),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0 ),
        .I3(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[24]_i_4_n_0 ),
        .I4(\ip_irpt_enable_reg_reg[7] [0]),
        .I5(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2 
       (.I0(rx_fifo_empty_i),
        .I1(\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(prmry_in),
        .I4(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .I5(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_n_0 ),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3 
       (.I0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .I1(\RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .I4(prmry_vect_in),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_1 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .I2(bus2ip_rnw_i_reg),
        .I3(p_24_out),
        .I4(p_20_out),
        .O(IP2Bus_Error_1));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_2 
       (.I0(bus2ip_rnw_i_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ),
        .I2(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_5_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg ),
        .I2(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .I3(\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg ),
        .I1(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .I2(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg ),
        .I1(Transmit_ip2bus_error_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_1 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(ip2Bus_WrAck_core_reg_d1),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_i_1 
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .I2(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0 ),
        .O(rd_ce_or_reduce_core_cmb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5 \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized15 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_5_out(p_5_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized16 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_4_out(p_4_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized17 \MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_3_out(p_3_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized18 \MEM_DECODE_GEN[0].PER_CE_GEN[13].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_2_out(p_2_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19 \MEM_DECODE_GEN[0].PER_CE_GEN[14].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_1_out(p_1_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6 \MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_14_out(p_14_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_13_out(p_13_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8 \MEM_DECODE_GEN[0].PER_CE_GEN[3].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_12_out(p_12_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_11_out(p_11_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_10_out(p_10_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_9_out(p_9_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_8_out(p_8_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_7_out(p_7_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ),
        .p_6_out(p_6_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized25_22 \MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] (\MEM_DECODE_GEN[1].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized29_23 \MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] (\MEM_DECODE_GEN[1].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized25_24 \MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] (\MEM_DECODE_GEN[2].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized29_25 \MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] (\MEM_DECODE_GEN[2].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I_n_0 ),
        .\bus2ip_addr_i_reg[6] (\bus2ip_addr_i_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    Receive_ip2bus_error_i_1
       (.I0(rx_fifo_empty_i),
        .I1(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(Receive_ip2bus_error0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1 
       (.I0(\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .O(bus2ip_wrce_int));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TRANSMIT_REG_GENERATE[7].Transmit_Reg_Data_Out[7]_i_2 
       (.I0(ip2Bus_WrAck_core_reg_1),
        .I1(Transmit_ip2bus_error_reg),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(sr_5_Tx_Empty_i1));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h04)) 
    Transmit_ip2bus_error_i_1
       (.I0(sr_5_Tx_Empty_int),
        .I1(Transmit_ip2bus_error_reg),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(Transmit_ip2bus_error_reg_0));
  LUT6 #(
    .INIT(64'h0000000088888880)) 
    intr2bus_rdack_i_1
       (.I0(bus2ip_rnw_i_reg_0),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I5(irpt_rdack_d1),
        .O(intr2bus_rdack0));
  LUT6 #(
    .INIT(64'h0000000030303020)) 
    intr2bus_wrack_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(bus2ip_rnw_i_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I5(irpt_wrack_d1),
        .O(interrupt_wrce_strb));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2Bus_RdAck_intr_reg_hole_d1_i_1
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .O(intr_controller_rd_ce_or_reduce));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ip2Bus_RdAck_intr_reg_hole_i_1
       (.I0(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(ip2Bus_RdAck_intr_reg_hole_d1),
        .O(ip2Bus_RdAck_intr_reg_hole0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_1
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_reg));
  LUT5 #(
    .INIT(32'h00000002)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_2
       (.I0(ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0),
        .I1(ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0),
        .I2(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg ),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ip2Bus_WrAck_intr_reg_hole_d1_i_4
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg ),
        .O(ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ip2Bus_WrAck_intr_reg_hole_i_1
       (.I0(ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0),
        .I1(ipif_glbl_irpt_enable_reg_reg),
        .I2(ip2Bus_WrAck_intr_reg_hole_d1),
        .O(ip2Bus_WrAck_intr_reg_hole0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \ip_irpt_enable_reg[7]_i_1 
       (.I0(s_axi_wstrb),
        .I1(bus2ip_rnw_i_reg_1),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFABFF0000A800)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata),
        .I1(s_axi_wstrb),
        .I2(bus2ip_rnw_i_reg_1),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .I5(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg_0));
  LUT6 #(
    .INIT(64'hFE00FE00FE000000)) 
    irpt_rdack_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I3(ipif_glbl_irpt_enable_reg_reg),
        .I4(s_axi_wstrb),
        .I5(bus2ip_rnw_i_reg_1),
        .O(irpt_rdack));
  LUT6 #(
    .INIT(64'h0000FFF00000EEE0)) 
    irpt_wrack_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(bus2ip_rnw_i_reg_1),
        .I3(s_axi_wstrb),
        .I4(ipif_glbl_irpt_enable_reg_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .O(irpt_wrack));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    modf_i_2
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg ),
        .O(modf_reg));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    reset_trig_i_1
       (.I0(ipif_glbl_irpt_enable_reg_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .I2(bus2ip_rnw_i_reg),
        .I3(sw_rst_cond_d1),
        .O(reset_trig0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_arready_INST_0
       (.I0(p_15_out),
        .I1(is_read_reg),
        .I2(eqOp__4),
        .O(AXI_LITE_SPI_arready));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_wready_INST_0
       (.I0(p_16_out),
        .I1(is_write_reg),
        .I2(eqOp__4),
        .O(AXI_LITE_SPI_wready));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    s_axi_wready_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [5]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [3]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [0]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [2]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [4]),
        .O(eqOp__4));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sw_rst_cond_d1_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .I2(ipif_glbl_irpt_enable_reg_reg),
        .O(sw_rst_cond));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder__parameterized1
   (\TCSR1_GENERATE[24].TCSR1_FF_I ,
    READ_DONE0_I,
    \TCSR1_GENERATE[24].TCSR1_FF_I_0 ,
    \TCSR1_GENERATE[24].TCSR1_FF_I_1 ,
    AXI_LITE_TIMER_wready,
    AXI_LITE_TIMER_arready,
    D,
    \FSM_onehot_state_reg[3] ,
    pair0_Select,
    \LOAD_REG_GEN[7].LOAD_REG_I ,
    bus2ip_wrce,
    \LOAD_REG_GEN[31].LOAD_REG_I ,
    \LOAD_REG_GEN[30].LOAD_REG_I ,
    \LOAD_REG_GEN[29].LOAD_REG_I ,
    \LOAD_REG_GEN[28].LOAD_REG_I ,
    \LOAD_REG_GEN[27].LOAD_REG_I ,
    \LOAD_REG_GEN[26].LOAD_REG_I ,
    \LOAD_REG_GEN[25].LOAD_REG_I ,
    \LOAD_REG_GEN[24].LOAD_REG_I ,
    \LOAD_REG_GEN[23].LOAD_REG_I ,
    \LOAD_REG_GEN[22].LOAD_REG_I ,
    \LOAD_REG_GEN[21].LOAD_REG_I ,
    \LOAD_REG_GEN[20].LOAD_REG_I ,
    \LOAD_REG_GEN[19].LOAD_REG_I ,
    \LOAD_REG_GEN[18].LOAD_REG_I ,
    \LOAD_REG_GEN[17].LOAD_REG_I ,
    \LOAD_REG_GEN[16].LOAD_REG_I ,
    \LOAD_REG_GEN[15].LOAD_REG_I ,
    \LOAD_REG_GEN[14].LOAD_REG_I ,
    \LOAD_REG_GEN[13].LOAD_REG_I ,
    \LOAD_REG_GEN[12].LOAD_REG_I ,
    \LOAD_REG_GEN[11].LOAD_REG_I ,
    \LOAD_REG_GEN[10].LOAD_REG_I ,
    \LOAD_REG_GEN[9].LOAD_REG_I ,
    \LOAD_REG_GEN[8].LOAD_REG_I ,
    \LOAD_REG_GEN[7].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[6].LOAD_REG_I ,
    \LOAD_REG_GEN[5].LOAD_REG_I ,
    \LOAD_REG_GEN[4].LOAD_REG_I ,
    \LOAD_REG_GEN[3].LOAD_REG_I ,
    \LOAD_REG_GEN[2].LOAD_REG_I ,
    \LOAD_REG_GEN[1].LOAD_REG_I ,
    D_0,
    \LOAD_REG_GEN[31].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[30].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[29].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[28].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[27].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[26].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[25].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[24].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[23].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[22].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[21].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[20].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[19].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[18].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[17].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[16].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[15].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[14].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[13].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[12].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[11].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[10].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[9].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[8].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[7].LOAD_REG_I_1 ,
    \LOAD_REG_GEN[6].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[5].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[4].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[3].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[2].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[1].LOAD_REG_I_0 ,
    D_1,
    s_axi_rvalid_i_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_rvalid_i_reg_1,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[31] ,
    \s_axi_rdata_i_reg[30] ,
    \s_axi_rdata_i_reg[29] ,
    \s_axi_rdata_i_reg[28] ,
    \s_axi_rdata_i_reg[27] ,
    \s_axi_rdata_i_reg[26] ,
    \s_axi_rdata_i_reg[25] ,
    \s_axi_rdata_i_reg[24] ,
    \s_axi_rdata_i_reg[23] ,
    \s_axi_rdata_i_reg[22] ,
    \s_axi_rdata_i_reg[21] ,
    \s_axi_rdata_i_reg[20] ,
    \s_axi_rdata_i_reg[19] ,
    \s_axi_rdata_i_reg[18] ,
    \s_axi_rdata_i_reg[17] ,
    \s_axi_rdata_i_reg[16] ,
    \s_axi_rdata_i_reg[15] ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[0]_1 ,
    s_axi_rvalid_i_reg_2,
    s_axi_bvalid_i_reg,
    READ_DONE0_I_0,
    READ_DONE1_I,
    \TCSR0_GENERATE[23].TCSR0_FF_I ,
    \TCSR1_GENERATE[23].TCSR1_FF_I ,
    Q,
    s_axi_aclk,
    s_axi_aresetn,
    \state_reg[1] ,
    s_axi_arvalid,
    s_axi_rvalid_i_reg_3,
    out,
    s_axi_wvalid,
    s_axi_awvalid,
    is_write_reg,
    s_axi_wdata,
    read_Mux_In,
    AXI_LITE_TIMER_awvalid,
    is_read_reg,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ,
    s_axi_rready,
    s_axi_rvalid_i_reg_4,
    s_axi_bready,
    s_axi_bvalid_i_reg_0,
    D_2,
    read_done1,
    bus2ip_rnw_i,
    \bus2ip_addr_i_reg[4] );
  output \TCSR1_GENERATE[24].TCSR1_FF_I ;
  output READ_DONE0_I;
  output \TCSR1_GENERATE[24].TCSR1_FF_I_0 ;
  output \TCSR1_GENERATE[24].TCSR1_FF_I_1 ;
  output AXI_LITE_TIMER_wready;
  output AXI_LITE_TIMER_arready;
  output [1:0]D;
  output [2:0]\FSM_onehot_state_reg[3] ;
  output pair0_Select;
  output \LOAD_REG_GEN[7].LOAD_REG_I ;
  output [1:0]bus2ip_wrce;
  output \LOAD_REG_GEN[31].LOAD_REG_I ;
  output \LOAD_REG_GEN[30].LOAD_REG_I ;
  output \LOAD_REG_GEN[29].LOAD_REG_I ;
  output \LOAD_REG_GEN[28].LOAD_REG_I ;
  output \LOAD_REG_GEN[27].LOAD_REG_I ;
  output \LOAD_REG_GEN[26].LOAD_REG_I ;
  output \LOAD_REG_GEN[25].LOAD_REG_I ;
  output \LOAD_REG_GEN[24].LOAD_REG_I ;
  output \LOAD_REG_GEN[23].LOAD_REG_I ;
  output \LOAD_REG_GEN[22].LOAD_REG_I ;
  output \LOAD_REG_GEN[21].LOAD_REG_I ;
  output \LOAD_REG_GEN[20].LOAD_REG_I ;
  output \LOAD_REG_GEN[19].LOAD_REG_I ;
  output \LOAD_REG_GEN[18].LOAD_REG_I ;
  output \LOAD_REG_GEN[17].LOAD_REG_I ;
  output \LOAD_REG_GEN[16].LOAD_REG_I ;
  output \LOAD_REG_GEN[15].LOAD_REG_I ;
  output \LOAD_REG_GEN[14].LOAD_REG_I ;
  output \LOAD_REG_GEN[13].LOAD_REG_I ;
  output \LOAD_REG_GEN[12].LOAD_REG_I ;
  output \LOAD_REG_GEN[11].LOAD_REG_I ;
  output \LOAD_REG_GEN[10].LOAD_REG_I ;
  output \LOAD_REG_GEN[9].LOAD_REG_I ;
  output \LOAD_REG_GEN[8].LOAD_REG_I ;
  output \LOAD_REG_GEN[7].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[6].LOAD_REG_I ;
  output \LOAD_REG_GEN[5].LOAD_REG_I ;
  output \LOAD_REG_GEN[4].LOAD_REG_I ;
  output \LOAD_REG_GEN[3].LOAD_REG_I ;
  output \LOAD_REG_GEN[2].LOAD_REG_I ;
  output \LOAD_REG_GEN[1].LOAD_REG_I ;
  output D_0;
  output \LOAD_REG_GEN[31].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[30].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[29].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[28].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[27].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[26].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[25].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[24].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[23].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[22].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[21].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[20].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[19].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[18].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[17].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[16].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[15].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[14].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[13].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[12].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[11].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[10].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[9].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[8].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[7].LOAD_REG_I_1 ;
  output \LOAD_REG_GEN[6].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[5].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[4].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[3].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[2].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[1].LOAD_REG_I_0 ;
  output D_1;
  output s_axi_rvalid_i_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_rvalid_i_reg_1;
  output \s_axi_rdata_i_reg[0] ;
  output \s_axi_rdata_i_reg[31] ;
  output \s_axi_rdata_i_reg[30] ;
  output \s_axi_rdata_i_reg[29] ;
  output \s_axi_rdata_i_reg[28] ;
  output \s_axi_rdata_i_reg[27] ;
  output \s_axi_rdata_i_reg[26] ;
  output \s_axi_rdata_i_reg[25] ;
  output \s_axi_rdata_i_reg[24] ;
  output \s_axi_rdata_i_reg[23] ;
  output \s_axi_rdata_i_reg[22] ;
  output \s_axi_rdata_i_reg[21] ;
  output \s_axi_rdata_i_reg[20] ;
  output \s_axi_rdata_i_reg[19] ;
  output \s_axi_rdata_i_reg[18] ;
  output \s_axi_rdata_i_reg[17] ;
  output \s_axi_rdata_i_reg[16] ;
  output \s_axi_rdata_i_reg[15] ;
  output \s_axi_rdata_i_reg[14] ;
  output \s_axi_rdata_i_reg[13] ;
  output \s_axi_rdata_i_reg[12] ;
  output \s_axi_rdata_i_reg[11] ;
  output \s_axi_rdata_i_reg[0]_0 ;
  output \s_axi_rdata_i_reg[0]_1 ;
  output s_axi_rvalid_i_reg_2;
  output s_axi_bvalid_i_reg;
  output READ_DONE0_I_0;
  output READ_DONE1_I;
  output \TCSR0_GENERATE[23].TCSR0_FF_I ;
  output \TCSR1_GENERATE[23].TCSR1_FF_I ;
  input Q;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [1:0]\state_reg[1] ;
  input s_axi_arvalid;
  input s_axi_rvalid_i_reg_3;
  input [3:0]out;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input is_write_reg;
  input [31:0]s_axi_wdata;
  input [85:0]read_Mux_In;
  input AXI_LITE_TIMER_awvalid;
  input is_read_reg;
  input [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ;
  input s_axi_rready;
  input s_axi_rvalid_i_reg_4;
  input s_axi_bready;
  input s_axi_bvalid_i_reg_0;
  input D_2;
  input read_done1;
  input bus2ip_rnw_i;
  input [2:0]\bus2ip_addr_i_reg[4] ;

  wire AXI_LITE_TIMER_arready;
  wire AXI_LITE_TIMER_awvalid;
  wire AXI_LITE_TIMER_wready;
  wire Bus_RNW_reg_i_1_n_0;
  wire [1:0]D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire [2:0]\FSM_onehot_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg_n_0_[7] ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] ;
  wire \LOAD_REG_GEN[10].LOAD_REG_I ;
  wire \LOAD_REG_GEN[10].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[11].LOAD_REG_I ;
  wire \LOAD_REG_GEN[11].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[12].LOAD_REG_I ;
  wire \LOAD_REG_GEN[12].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[13].LOAD_REG_I ;
  wire \LOAD_REG_GEN[13].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[14].LOAD_REG_I ;
  wire \LOAD_REG_GEN[14].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[15].LOAD_REG_I ;
  wire \LOAD_REG_GEN[15].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[16].LOAD_REG_I ;
  wire \LOAD_REG_GEN[16].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[17].LOAD_REG_I ;
  wire \LOAD_REG_GEN[17].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[18].LOAD_REG_I ;
  wire \LOAD_REG_GEN[18].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[19].LOAD_REG_I ;
  wire \LOAD_REG_GEN[19].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[1].LOAD_REG_I ;
  wire \LOAD_REG_GEN[1].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[21].LOAD_REG_I ;
  wire \LOAD_REG_GEN[21].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[22].LOAD_REG_I ;
  wire \LOAD_REG_GEN[22].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[23].LOAD_REG_I ;
  wire \LOAD_REG_GEN[23].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[24].LOAD_REG_I ;
  wire \LOAD_REG_GEN[24].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[25].LOAD_REG_I ;
  wire \LOAD_REG_GEN[25].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[26].LOAD_REG_I ;
  wire \LOAD_REG_GEN[26].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[27].LOAD_REG_I ;
  wire \LOAD_REG_GEN[27].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[28].LOAD_REG_I ;
  wire \LOAD_REG_GEN[28].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[29].LOAD_REG_I ;
  wire \LOAD_REG_GEN[29].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[2].LOAD_REG_I ;
  wire \LOAD_REG_GEN[2].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[30].LOAD_REG_I ;
  wire \LOAD_REG_GEN[30].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[31].LOAD_REG_I ;
  wire \LOAD_REG_GEN[31].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[3].LOAD_REG_I ;
  wire \LOAD_REG_GEN[3].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[4].LOAD_REG_I ;
  wire \LOAD_REG_GEN[4].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[5].LOAD_REG_I ;
  wire \LOAD_REG_GEN[5].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[6].LOAD_REG_I ;
  wire \LOAD_REG_GEN[6].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I_1 ;
  wire \LOAD_REG_GEN[8].LOAD_REG_I ;
  wire \LOAD_REG_GEN[8].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[9].LOAD_REG_I ;
  wire \LOAD_REG_GEN[9].LOAD_REG_I_0 ;
  wire Q;
  wire READ_DONE0_I;
  wire READ_DONE0_I_0;
  wire READ_DONE1_I;
  wire \TCSR0_GENERATE[23].TCSR0_FF_I ;
  wire \TCSR1_GENERATE[23].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[24].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[24].TCSR1_FF_I_0 ;
  wire \TCSR1_GENERATE[24].TCSR1_FF_I_1 ;
  wire [2:0]\bus2ip_addr_i_reg[4] ;
  wire bus2ip_rnw_i;
  wire [1:0]bus2ip_wrce;
  wire cs_ce_clr;
  wire is_read_reg;
  wire is_write_reg;
  wire [3:0]out;
  wire p_1_out;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_5_out;
  wire p_6_in;
  wire p_6_out;
  wire p_7_out;
  wire pair0_Select;
  wire [85:0]read_Mux_In;
  wire read_done1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready_INST_0_i_1_n_0;
  wire s_axi_arvalid;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire s_axi_bvalid_i_reg_0;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[0]_1 ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[14] ;
  wire \s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[16] ;
  wire \s_axi_rdata_i_reg[17] ;
  wire \s_axi_rdata_i_reg[18] ;
  wire \s_axi_rdata_i_reg[19] ;
  wire \s_axi_rdata_i_reg[20] ;
  wire \s_axi_rdata_i_reg[21] ;
  wire \s_axi_rdata_i_reg[22] ;
  wire \s_axi_rdata_i_reg[23] ;
  wire \s_axi_rdata_i_reg[24] ;
  wire \s_axi_rdata_i_reg[25] ;
  wire \s_axi_rdata_i_reg[26] ;
  wire \s_axi_rdata_i_reg[27] ;
  wire \s_axi_rdata_i_reg[28] ;
  wire \s_axi_rdata_i_reg[29] ;
  wire \s_axi_rdata_i_reg[30] ;
  wire \s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire s_axi_rvalid_i_reg_1;
  wire s_axi_rvalid_i_reg_2;
  wire s_axi_rvalid_i_reg_3;
  wire s_axi_rvalid_i_reg_4;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire s_axi_wready_INST_0_i_4_n_0;
  wire s_axi_wready_INST_0_i_5_n_0;
  wire s_axi_wvalid;
  wire [1:0]\state_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(Q),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(out[0]),
        .I1(s_axi_arvalid),
        .I2(AXI_LITE_TIMER_arready),
        .I3(out[1]),
        .O(\FSM_onehot_state_reg[3] [0]));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_arvalid),
        .I1(out[0]),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(AXI_LITE_TIMER_wready),
        .I5(out[2]),
        .O(\FSM_onehot_state_reg[3] [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(AXI_LITE_TIMER_wready),
        .I1(out[2]),
        .I2(out[3]),
        .I3(s_axi_rvalid_i_reg_3),
        .I4(out[1]),
        .I5(AXI_LITE_TIMER_arready),
        .O(\FSM_onehot_state_reg[3] [2]));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[84]),
        .O(\s_axi_rdata_i_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I1(p_6_in),
        .O(\s_axi_rdata_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_3 
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I1(p_2_in),
        .O(\s_axi_rdata_i_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[74]),
        .O(\s_axi_rdata_i_reg[21] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[73]),
        .O(\s_axi_rdata_i_reg[20] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[72]),
        .O(\s_axi_rdata_i_reg[19] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[71]),
        .O(\s_axi_rdata_i_reg[18] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[70]),
        .O(\s_axi_rdata_i_reg[17] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[69]),
        .O(\s_axi_rdata_i_reg[16] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[68]),
        .O(\s_axi_rdata_i_reg[15] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[67]),
        .O(\s_axi_rdata_i_reg[14] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[66]),
        .O(\s_axi_rdata_i_reg[13] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[65]),
        .O(\s_axi_rdata_i_reg[12] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[83]),
        .O(\s_axi_rdata_i_reg[30] ));
  LUT5 #(
    .INIT(32'h0F7F7F7F)) 
    \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[64]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(\TCSR1_GENERATE[24].TCSR1_FF_I_0 ),
        .I4(read_Mux_In[85]),
        .O(\s_axi_rdata_i_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I1(READ_DONE0_I),
        .O(\s_axi_rdata_i_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[82]),
        .O(\s_axi_rdata_i_reg[29] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[81]),
        .O(\s_axi_rdata_i_reg[28] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[80]),
        .O(\s_axi_rdata_i_reg[27] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[79]),
        .O(\s_axi_rdata_i_reg[26] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[78]),
        .O(\s_axi_rdata_i_reg[25] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[77]),
        .O(\s_axi_rdata_i_reg[24] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[76]),
        .O(\s_axi_rdata_i_reg[23] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(read_Mux_In[75]),
        .O(\s_axi_rdata_i_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\bus2ip_addr_i_reg[4] [0]),
        .I1(\bus2ip_addr_i_reg[4] [2]),
        .I2(\bus2ip_addr_i_reg[4] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(\TCSR1_GENERATE[24].TCSR1_FF_I_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\bus2ip_addr_i_reg[4] [1]),
        .I1(\bus2ip_addr_i_reg[4] [2]),
        .I2(\bus2ip_addr_i_reg[4] [0]),
        .O(p_6_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_6_out),
        .Q(READ_DONE0_I),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_5_out),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\bus2ip_addr_i_reg[4] [0]),
        .I1(\bus2ip_addr_i_reg[4] [1]),
        .I2(\bus2ip_addr_i_reg[4] [2]),
        .O(p_3_out));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out),
        .Q(\TCSR1_GENERATE[24].TCSR1_FF_I ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\bus2ip_addr_i_reg[4] [2]),
        .I1(\bus2ip_addr_i_reg[4] [1]),
        .I2(\bus2ip_addr_i_reg[4] [0]),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(p_3_in),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hFB)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(AXI_LITE_TIMER_wready),
        .I1(s_axi_aresetn),
        .I2(AXI_LITE_TIMER_arready),
        .O(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_7_out),
        .Q(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg_n_0_[7] ),
        .R(cs_ce_clr));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_2 
       (.I0(s_axi_wdata[31]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[63]),
        .O(D_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_2__0 
       (.I0(s_axi_wdata[31]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[31]),
        .O(D_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[10].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[53]),
        .O(\LOAD_REG_GEN[10].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[10].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[21]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[21]),
        .O(\LOAD_REG_GEN[10].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[11].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[52]),
        .O(\LOAD_REG_GEN[11].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[11].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[20]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[20]),
        .O(\LOAD_REG_GEN[11].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[12].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[51]),
        .O(\LOAD_REG_GEN[12].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[12].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[19]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[19]),
        .O(\LOAD_REG_GEN[12].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[13].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[50]),
        .O(\LOAD_REG_GEN[13].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[13].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[18]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[18]),
        .O(\LOAD_REG_GEN[13].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[14].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[49]),
        .O(\LOAD_REG_GEN[14].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[14].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[17]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[17]),
        .O(\LOAD_REG_GEN[14].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[15].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[48]),
        .O(\LOAD_REG_GEN[15].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[15].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[16]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[16]),
        .O(\LOAD_REG_GEN[15].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[16].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[15]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[47]),
        .O(\LOAD_REG_GEN[16].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[16].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[15]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[15]),
        .O(\LOAD_REG_GEN[16].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[17].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[46]),
        .O(\LOAD_REG_GEN[17].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[17].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[14]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[14]),
        .O(\LOAD_REG_GEN[17].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[18].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[45]),
        .O(\LOAD_REG_GEN[18].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[18].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[13]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[13]),
        .O(\LOAD_REG_GEN[18].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[19].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[44]),
        .O(\LOAD_REG_GEN[19].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[19].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[12]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[12]),
        .O(\LOAD_REG_GEN[19].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[1].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[62]),
        .O(\LOAD_REG_GEN[1].LOAD_REG_I ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[1].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[30]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[30]),
        .O(\LOAD_REG_GEN[1].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[20].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[43]),
        .O(\LOAD_REG_GEN[20].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[20].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[11]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[11]),
        .O(\LOAD_REG_GEN[20].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[21].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[42]),
        .O(\LOAD_REG_GEN[21].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[21].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[10]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[10]),
        .O(\LOAD_REG_GEN[21].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[22].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[41]),
        .O(\LOAD_REG_GEN[22].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[22].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[9]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[9]),
        .O(\LOAD_REG_GEN[22].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[23].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[40]),
        .O(\LOAD_REG_GEN[23].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[23].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[8]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[8]),
        .O(\LOAD_REG_GEN[23].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[24].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[39]),
        .O(\LOAD_REG_GEN[24].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[24].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[7]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[7]),
        .O(\LOAD_REG_GEN[24].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[25].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[38]),
        .O(\LOAD_REG_GEN[25].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[25].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[6]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[6]),
        .O(\LOAD_REG_GEN[25].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[26].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[37]),
        .O(\LOAD_REG_GEN[26].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[26].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[5]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[5]),
        .O(\LOAD_REG_GEN[26].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[27].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[36]),
        .O(\LOAD_REG_GEN[27].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[27].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[4]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[4]),
        .O(\LOAD_REG_GEN[27].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[28].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[35]),
        .O(\LOAD_REG_GEN[28].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[28].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[3]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[3]),
        .O(\LOAD_REG_GEN[28].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[29].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[34]),
        .O(\LOAD_REG_GEN[29].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[29].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[2]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[2]),
        .O(\LOAD_REG_GEN[29].LOAD_REG_I_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[2].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[61]),
        .O(\LOAD_REG_GEN[2].LOAD_REG_I ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[2].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[29]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[29]),
        .O(\LOAD_REG_GEN[2].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[30].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[33]),
        .O(\LOAD_REG_GEN[30].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[30].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[1]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[1]),
        .O(\LOAD_REG_GEN[30].LOAD_REG_I_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[31].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[32]),
        .O(\LOAD_REG_GEN[31].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[31].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[0]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[0]),
        .O(\LOAD_REG_GEN[31].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[3].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[60]),
        .O(\LOAD_REG_GEN[3].LOAD_REG_I ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[3].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[28]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[28]),
        .O(\LOAD_REG_GEN[3].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[4].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[59]),
        .O(\LOAD_REG_GEN[4].LOAD_REG_I ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[4].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[27]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[27]),
        .O(\LOAD_REG_GEN[4].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[5].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[58]),
        .O(\LOAD_REG_GEN[5].LOAD_REG_I ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[5].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[26]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[26]),
        .O(\LOAD_REG_GEN[5].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[6].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[57]),
        .O(\LOAD_REG_GEN[6].LOAD_REG_I ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[6].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[25]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[25]),
        .O(\LOAD_REG_GEN[6].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[7].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[56]),
        .O(\LOAD_REG_GEN[7].LOAD_REG_I_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[7].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[24]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[24]),
        .O(\LOAD_REG_GEN[7].LOAD_REG_I_1 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[8].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[23]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[55]),
        .O(\LOAD_REG_GEN[8].LOAD_REG_I ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[8].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[23]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[23]),
        .O(\LOAD_REG_GEN[8].LOAD_REG_I_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[9].LOAD_REG_I_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(READ_DONE0_I),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[54]),
        .O(\LOAD_REG_GEN[9].LOAD_REG_I ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \LOAD_REG_GEN[9].LOAD_REG_I_i_1__0 
       (.I0(s_axi_wdata[22]),
        .I1(p_3_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(read_Mux_In[22]),
        .O(\LOAD_REG_GEN[9].LOAD_REG_I_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized25 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[4] (\bus2ip_addr_i_reg[4] ),
        .p_5_out(p_5_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized29 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[4] (\bus2ip_addr_i_reg[4] ),
        .p_1_out(p_1_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized30 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\bus2ip_addr_i_reg[4] (\bus2ip_addr_i_reg[4] ),
        .p_7_out(p_7_out));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hE)) 
    READ_DONE0_I_i_2
       (.I0(READ_DONE0_I),
        .I1(D_2),
        .O(READ_DONE0_I_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'hE)) 
    READ_DONE1_I_i_2
       (.I0(p_3_in),
        .I1(read_done1),
        .O(READ_DONE1_I));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TCSR0_GENERATE[20].TCSR0_FF_I_i_1 
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_0 ),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .O(bus2ip_wrce[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \TCSR0_GENERATE[23].TCSR0_FF_I_i_1 
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_0 ),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(s_axi_wdata[8]),
        .I3(s_axi_aresetn),
        .O(\TCSR0_GENERATE[23].TCSR0_FF_I ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TCSR1_GENERATE[22].TCSR1_FF_I_i_1 
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I ),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .O(bus2ip_wrce[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \TCSR1_GENERATE[23].TCSR1_FF_I_i_1 
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I ),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(s_axi_wdata[8]),
        .I3(s_axi_aresetn),
        .O(\TCSR1_GENERATE[23].TCSR1_FF_I ));
  LUT6 #(
    .INIT(64'hF4FFFFFFFFFFFFFF)) 
    s_axi_arready_INST_0
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(is_read_reg),
        .I2(s_axi_arready_INST_0_i_1_n_0),
        .I3(s_axi_rvalid_i_reg),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(s_axi_rvalid_i_reg_1),
        .O(AXI_LITE_TIMER_arready));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    s_axi_arready_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I3(p_6_in),
        .I4(READ_DONE0_I),
        .O(s_axi_arready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_axi_arready_INST_0_i_2
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I1(p_3_in),
        .O(s_axi_rvalid_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_axi_arready_INST_0_i_3
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I ),
        .O(s_axi_rvalid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_axi_arready_INST_0_i_4
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_0 ),
        .O(s_axi_rvalid_i_reg_1));
  LUT5 #(
    .INIT(32'h75553000)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(\state_reg[1] [0]),
        .I2(\state_reg[1] [1]),
        .I3(AXI_LITE_TIMER_wready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_reg));
  LUT5 #(
    .INIT(32'h75553000)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rready),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1] [0]),
        .I3(AXI_LITE_TIMER_arready),
        .I4(s_axi_rvalid_i_reg_4),
        .O(s_axi_rvalid_i_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    s_axi_wready_INST_0
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(is_write_reg),
        .I2(pair0_Select),
        .I3(\LOAD_REG_GEN[7].LOAD_REG_I ),
        .I4(s_axi_wready_INST_0_i_4_n_0),
        .I5(s_axi_wready_INST_0_i_5_n_0),
        .O(AXI_LITE_TIMER_wready));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    s_axi_wready_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [5]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [3]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] [4]),
        .O(s_axi_wready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h32)) 
    s_axi_wready_INST_0_i_2
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_0 ),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I2(\TCSR1_GENERATE[24].TCSR1_FF_I ),
        .O(pair0_Select));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0_i_3
       (.I0(p_3_in),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .O(\LOAD_REG_GEN[7].LOAD_REG_I ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0_i_4
       (.I0(READ_DONE0_I),
        .I1(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .O(s_axi_wready_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    s_axi_wready_INST_0_i_5
       (.I0(\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .I1(p_6_in),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg_n_0_[7] ),
        .I3(p_2_in),
        .O(s_axi_wready_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFBF83B38)) 
    \state[0]_i_1 
       (.I0(AXI_LITE_TIMER_wready),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1] [0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_rvalid_i_reg_3),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEECFEECC22CF22CC)) 
    \state[1]_i_1 
       (.I0(AXI_LITE_TIMER_arready),
        .I1(\state_reg[1] [1]),
        .I2(s_axi_arvalid),
        .I3(\state_reg[1] [0]),
        .I4(AXI_LITE_TIMER_awvalid),
        .I5(s_axi_rvalid_i_reg_3),
        .O(D[1]));
endmodule

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "3" *) (* C_GPIO_WIDTH = "2" *) 
(* C_INTERRUPT_PRESENT = "1" *) (* C_IS_DUAL = "1" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* max_fanout = "10000" *) (* sigis = "Clk" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [1:0]gpio_io_i;
  output [1:0]gpio_io_o;
  output [1:0]gpio_io_t;
  input [2:0]gpio2_io_i;
  output [2:0]gpio2_io_o;
  output [2:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_10;
  wire AXI_LITE_IPIF_I_n_13;
  wire AXI_LITE_IPIF_I_n_21;
  wire AXI_LITE_IPIF_I_n_27;
  wire AXI_LITE_IPIF_I_n_34;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_6 ;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_7 ;
  wire IP2INTC_Irpt_i;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_19_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_20_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ;
  wire [5:6]bus2ip_addr;
  wire [1:1]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_reset_i_1_n_0;
  wire bus2ip_rnw;
  wire [2:0]gpio2_io_i;
  wire [2:0]gpio2_io_o;
  wire [2:0]gpio2_io_t;
  wire gpio_core_1_n_13;
  wire [1:0]gpio_io_i;
  wire [1:0]gpio_io_o;
  wire [1:0]gpio_io_t;
  wire gpio_reg_en;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [29:29]ip2bus_data;
  wire [30:31]ip2bus_data_i;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire [1:0]p_0_out;
  wire p_1_in;
  wire p_3_out;
  wire p_4_out__0;
  wire [30:31]reg1;
  wire [30:31]reg2;
  wire [29:31]reg3;
  wire [29:31]reg4;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Rst" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2:0] = \^s_axi_rdata [2:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif AXI_LITE_IPIF_I
       (.AXI_LITE_GPIO_arready(s_axi_arready),
        .AXI_LITE_GPIO_bvalid(s_axi_bvalid),
        .AXI_LITE_GPIO_rvalid(s_axi_rvalid),
        .AXI_LITE_GPIO_wready(s_axi_wready),
        .Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({AXI_LITE_IPIF_I_n_21,ip2bus_data,ip2bus_data_i[30],ip2bus_data_i[31]}),
        .\Dual.gpio2_Data_Out_reg[0] (AXI_LITE_IPIF_I_n_13),
        .\Dual.gpio2_OE_reg[0] (AXI_LITE_IPIF_I_n_10),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (gpio_core_1_n_13),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ),
        .\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg (AXI_LITE_IPIF_I_n_27),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio_reg_en(gpio_reg_en),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[0] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[29],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .\ip_irpt_enable_reg_reg[0] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_7 ),
        .\ip_irpt_enable_reg_reg[1] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_6 ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(AXI_LITE_IPIF_I_n_34),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in16_in(p_0_in16_in),
        .p_0_in18_in(p_0_in18_in),
        .p_0_out(p_0_out),
        .p_17_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ),
        .p_18_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .p_19_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_19_in ),
        .p_1_in(p_1_in),
        .p_20_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_20_in ),
        .p_3_out(p_3_out),
        .p_4_out__0(p_4_out__0),
        .p_6_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ),
        .reg1({reg1[30],reg1[31]}),
        .reg2({reg2[30],reg2[31]}),
        .reg3({reg3[29],reg3[30],reg3[31]}),
        .reg4({reg4[29],reg4[30],reg4[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [2:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[2:0]}),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] (AXI_LITE_IPIF_I_n_34),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ),
        .GPIO2_intr(GPIO2_intr),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .IP2INTC_Irpt_i(IP2INTC_Irpt_i),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .\ip_irpt_enable_reg_reg[0]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_7 ),
        .\ip_irpt_enable_reg_reg[1]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_6 ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in(p_1_in),
        .p_4_out__0(p_4_out__0),
        .p_6_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_6_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[1:0]));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_rd_ce_or_reduce),
        .Q(ip2Bus_RdAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(ip2Bus_RdAck_intr_reg_hole),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_wr_ce_or_reduce),
        .Q(ip2Bus_WrAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_LITE_IPIF_I_n_27),
        .Q(ip2Bus_WrAck_intr_reg_hole),
        .R(bus2ip_reset));
  (* sigis = "INTR_LEVEL_HIGH" *) 
  FDRE \INTR_CTRLR_GEN.ip2intc_irpt_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2INTC_Irpt_i),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_reset_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_reset_i_1_n_0));
  FDRE bus2ip_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset_i_1_n_0),
        .Q(bus2ip_reset),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core gpio_core_1
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 (gpio_io_t[1]),
        .\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 (gpio_io_t[0]),
        .\Dual.gpio2_OE_reg[1]_0 (gpio2_io_t[1]),
        .\Dual.gpio2_OE_reg[2]_0 (gpio2_io_t[0]),
        .GPIO2_intr(GPIO2_intr),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .SPI_SS_T(gpio2_io_t[2]),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_13),
        .bus2ip_rnw_i_reg_0(AXI_LITE_IPIF_I_n_10),
        .gpio2_io_i(gpio2_io_i),
        .gpio2_io_o(gpio2_io_o),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_reg_en(gpio_reg_en),
        .\ip2bus_data_i_D1_reg[31] (gpio_core_1_n_13),
        .p_0_in16_in(p_0_in16_in),
        .p_0_in18_in(p_0_in18_in),
        .p_0_out(p_0_out),
        .p_17_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ),
        .p_18_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .p_19_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_19_in ),
        .p_20_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_20_in ),
        .reg1({reg1[30],reg1[31]}),
        .reg2({reg2[30],reg2[31]}),
        .reg3({reg3[29],reg3[30],reg3[31]}),
        .reg4({reg4[29],reg4[30],reg4[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[2:0]));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_LITE_IPIF_I_n_21),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data),
        .Q(ip2bus_data_i_D1[29]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (p_6_in,
    p_17_in,
    p_18_in,
    p_19_in,
    p_20_in,
    bus2ip_rnw,
    bus2ip_cs,
    Bus_RNW_reg,
    AXI_LITE_GPIO_rvalid,
    AXI_LITE_GPIO_bvalid,
    \Dual.gpio2_OE_reg[0] ,
    Q,
    \Dual.gpio2_Data_Out_reg[0] ,
    p_0_in16_in,
    p_0_in18_in,
    gpio_reg_en,
    interrupt_wrce_strb,
    irpt_wrack,
    intr2bus_rdack0,
    irpt_rdack,
    D,
    p_3_out,
    intr_rd_ce_or_reduce,
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ,
    intr_wr_ce_or_reduce,
    p_0_out,
    p_4_out__0,
    AXI_LITE_GPIO_wready,
    AXI_LITE_GPIO_arready,
    ipif_glbl_irpt_enable_reg_reg,
    s_axi_rdata,
    s_axi_aclk,
    bus2ip_reset,
    s_axi_arvalid,
    irpt_wrack_d1,
    irpt_rdack_d1,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[0] ,
    p_1_in,
    \ip_irpt_enable_reg_reg[1] ,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    reg3,
    reg4,
    reg1,
    reg2,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr,
    ipif_glbl_irpt_enable_reg,
    \ip2bus_data_i_D1_reg[0] );
  output p_6_in;
  output p_17_in;
  output p_18_in;
  output p_19_in;
  output p_20_in;
  output bus2ip_rnw;
  output [0:0]bus2ip_cs;
  output Bus_RNW_reg;
  output AXI_LITE_GPIO_rvalid;
  output AXI_LITE_GPIO_bvalid;
  output \Dual.gpio2_OE_reg[0] ;
  output [1:0]Q;
  output \Dual.gpio2_Data_Out_reg[0] ;
  output p_0_in16_in;
  output p_0_in18_in;
  output gpio_reg_en;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output intr2bus_rdack0;
  output irpt_rdack;
  output [3:0]D;
  output p_3_out;
  output intr_rd_ce_or_reduce;
  output \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  output intr_wr_ce_or_reduce;
  output [1:0]p_0_out;
  output p_4_out__0;
  output AXI_LITE_GPIO_wready;
  output AXI_LITE_GPIO_arready;
  output ipif_glbl_irpt_enable_reg_reg;
  output [3:0]s_axi_rdata;
  input s_axi_aclk;
  input bus2ip_reset;
  input s_axi_arvalid;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \ip_irpt_enable_reg_reg[0] ;
  input p_1_in;
  input \ip_irpt_enable_reg_reg[1] ;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input [2:0]reg3;
  input [2:0]reg4;
  input [1:0]reg1;
  input [1:0]reg2;
  input [3:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input ipif_glbl_irpt_enable_reg;
  input [3:0]\ip2bus_data_i_D1_reg[0] ;

  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_bvalid;
  wire AXI_LITE_GPIO_rvalid;
  wire AXI_LITE_GPIO_wready;
  wire Bus_RNW_reg;
  wire [3:0]D;
  wire \Dual.gpio2_Data_Out_reg[0] ;
  wire \Dual.gpio2_OE_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  wire [1:0]Q;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire gpio_reg_en;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [3:0]\ip2bus_data_i_D1_reg[0] ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i_D1;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire \ip_irpt_enable_reg_reg[1] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire [1:0]p_0_out;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in;
  wire p_20_in;
  wire p_3_out;
  wire p_4_out__0;
  wire p_6_in;
  wire [1:0]reg1;
  wire [1:0]reg2;
  wire [2:0]reg3;
  wire [2:0]reg4;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [3:0]s_axi_rdata;
  wire s_axi_rready;
  wire [3:0]s_axi_wdata;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.AXI_LITE_GPIO_arready(AXI_LITE_GPIO_arready),
        .AXI_LITE_GPIO_bvalid(AXI_LITE_GPIO_bvalid),
        .AXI_LITE_GPIO_rvalid(AXI_LITE_GPIO_rvalid),
        .AXI_LITE_GPIO_wready(AXI_LITE_GPIO_wready),
        .Bus_RNW_reg_reg(bus2ip_rnw),
        .D(D),
        .\Dual.gpio2_Data_Out_reg[0] (bus2ip_cs),
        .\Dual.gpio2_Data_Out_reg[0]_0 (\Dual.gpio2_Data_Out_reg[0] ),
        .\Dual.gpio2_OE_reg[0] (\Dual.gpio2_OE_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg (\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ),
        .Q(Q),
        .bus2ip_reset(bus2ip_reset),
        .gpio_reg_en(gpio_reg_en),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack_reg(p_6_in),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[0] (\ip2bus_data_i_D1_reg[0] ),
        .\ip2bus_data_i_D1_reg[29] (p_17_in),
        .\ip2bus_data_i_D1_reg[29]_0 (p_18_in),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .\ip_irpt_enable_reg_reg[0] (\ip_irpt_enable_reg_reg[0] ),
        .\ip_irpt_enable_reg_reg[1] (\ip_irpt_enable_reg_reg[1] ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(Bus_RNW_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in16_in(p_0_in16_in),
        .p_0_in18_in(p_0_in18_in),
        .p_0_out(p_0_out),
        .p_19_in(p_19_in),
        .p_1_in(p_1_in),
        .p_20_in(p_20_in),
        .p_3_out(p_3_out),
        .p_4_out__0(p_4_out__0),
        .reg1(reg1),
        .reg2(reg2),
        .reg3(reg3),
        .reg4(reg4),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif__parameterized0
   (bus2ip_reset_ipif_inverted,
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ,
    s_axi_rresp,
    Bus_RNW_reg,
    AXI_LITE_SPI_rvalid,
    AXI_LITE_SPI_bvalid,
    s_axi_bresp,
    Transmit_ip2bus_error_reg,
    ip2Bus_WrAck_intr_reg_hole_d1_reg,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ,
    bus2ip_wrce_int,
    SPICR_data_int_reg0,
    IP2Bus_Error_1,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    reset_trig0,
    sw_rst_cond,
    interrupt_wrce_strb,
    irpt_wrack,
    E,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    modf_reg,
    Receive_ip2bus_error0,
    sr_5_Tx_Empty_i1,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_controller_rd_ce_or_reduce,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ,
    rd_ce_or_reduce_core_cmb,
    AXI_LITE_SPI_arready,
    AXI_LITE_SPI_wready,
    ipif_glbl_irpt_enable_reg_reg,
    s_axi_rdata,
    s_axi_aclk,
    p_1_in,
    s_axi_arvalid,
    sr_5_Tx_Empty_int,
    ip2Bus_WrAck_core_reg_1,
    p_24_out,
    p_20_out,
    sw_rst_cond_d1,
    s_axi_wstrb,
    s_axi_wdata,
    irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    Q,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in17_in,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    rx_fifo_empty_i,
    prmry_in,
    \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ,
    prmry_vect_in,
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ,
    p_1_in5_in,
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ,
    p_2_in7_in,
    scndry_out,
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ,
    p_3_in,
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ,
    p_4_in,
    modf_reg_0,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    p_5_in,
    spicr_6_rxfifo_rst_frm_axi_clk,
    p_6_in,
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ,
    \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ,
    \SPICR_data_int_reg[0] ,
    s_axi_rready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ,
    s_axi_aresetn,
    p_15_out,
    p_16_out,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset_ipif_inverted;
  output \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output AXI_LITE_SPI_rvalid;
  output AXI_LITE_SPI_bvalid;
  output [0:0]s_axi_bresp;
  output Transmit_ip2bus_error_reg;
  output ip2Bus_WrAck_intr_reg_hole_d1_reg;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  output [0:0]bus2ip_wrce_int;
  output SPICR_data_int_reg0;
  output IP2Bus_Error_1;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output reset_trig0;
  output sw_rst_cond;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [0:0]E;
  output [10:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output modf_reg;
  output Receive_ip2bus_error0;
  output sr_5_Tx_Empty_i1;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_controller_rd_ce_or_reduce;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  output rd_ce_or_reduce_core_cmb;
  output AXI_LITE_SPI_arready;
  output AXI_LITE_SPI_wready;
  output ipif_glbl_irpt_enable_reg_reg;
  output [10:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]p_1_in;
  input s_axi_arvalid;
  input sr_5_Tx_Empty_int;
  input ip2Bus_WrAck_core_reg_1;
  input p_24_out;
  input p_20_out;
  input sw_rst_cond_d1;
  input [1:0]s_axi_wstrb;
  input [4:0]s_axi_wdata;
  input irpt_wrack_d1;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [6:0]Q;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in17_in;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input rx_fifo_empty_i;
  input prmry_in;
  input \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ;
  input [0:0]prmry_vect_in;
  input \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  input p_1_in5_in;
  input \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  input p_2_in7_in;
  input scndry_out;
  input \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  input p_3_in;
  input \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  input p_4_in;
  input modf_reg_0;
  input \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input p_5_in;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input p_6_in;
  input \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  input \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_core_reg_d1;
  input \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  input \SPICR_data_int_reg[0] ;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [10:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ;
  input s_axi_aresetn;
  input p_15_out;
  input p_16_out;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;

  wire AXI_LITE_SPI_arready;
  wire AXI_LITE_SPI_bvalid;
  wire AXI_LITE_SPI_rvalid;
  wire AXI_LITE_SPI_wready;
  wire Bus_RNW_reg;
  wire \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  wire \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  wire \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  wire \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  wire \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  wire \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  wire [10:0]D;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire IP2Bus_Error_1;
  wire [10:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  wire [6:0]Q;
  wire \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  wire \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ;
  wire Receive_ip2bus_error0;
  wire SPICR_data_int_reg0;
  wire \SPICR_data_int_reg[0] ;
  wire Transmit_ip2bus_error_reg;
  wire bus2ip_reset_ipif_inverted;
  wire [0:0]bus2ip_wrce_int;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire modf_reg;
  wire modf_reg_0;
  wire p_15_out;
  wire p_16_out;
  wire [0:0]p_1_in;
  wire p_1_in17_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in5_in;
  wire p_20_out;
  wire p_24_out;
  wire p_2_in7_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire prmry_in;
  wire [0:0]prmry_vect_in;
  wire rd_ce_or_reduce_core_cmb;
  wire reset_trig0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire [4:0]s_axi_wdata;
  wire [1:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire scndry_out;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire sr_5_Tx_Empty_i1;
  wire sr_5_Tx_Empty_int;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment__parameterized0 I_SLAVE_ATTACHMENT
       (.AXI_LITE_SPI_arready(AXI_LITE_SPI_arready),
        .AXI_LITE_SPI_bvalid(AXI_LITE_SPI_bvalid),
        .AXI_LITE_SPI_rvalid(AXI_LITE_SPI_rvalid),
        .AXI_LITE_SPI_wready(AXI_LITE_SPI_wready),
        .\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] (\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ),
        .\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] (\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ),
        .\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] (\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] (\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ),
        .\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] (\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ),
        .\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] (\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] (\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ),
        .D(D),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] (\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ),
        .Q(Q),
        .\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] (\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ),
        .\RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] (\RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ),
        .Receive_ip2bus_error0(Receive_ip2bus_error0),
        .\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .\SPICR_data_int_reg[0] (\SPICR_data_int_reg[0] ),
        .SR(bus2ip_reset_ipif_inverted),
        .Transmit_ip2bus_error_reg(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ),
        .Transmit_ip2bus_error_reg_0(Transmit_ip2bus_error_reg),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1_reg(ip2Bus_WrAck_intr_reg_hole_d1_reg),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(Bus_RNW_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .modf_reg(modf_reg),
        .modf_reg_0(modf_reg_0),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_1_in(p_1_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in5_in(p_1_in5_in),
        .p_20_out(p_20_out),
        .p_24_out(p_24_out),
        .p_2_in7_in(p_2_in7_in),
        .p_3_in(p_3_in),
        .p_4_in(p_4_in),
        .p_5_in(p_5_in),
        .p_6_in(p_6_in),
        .prmry_in(prmry_in),
        .prmry_vect_in(prmry_vect_in),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(reset_trig0),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .scndry_out(scndry_out),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .sr_5_Tx_Empty_i1(sr_5_Tx_Empty_i1),
        .sr_5_Tx_Empty_int(sr_5_Tx_Empty_int),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif__parameterized1
   (p_4_in,
    p_7_in,
    p_8_in,
    Bus_RNW_reg,
    AXI_LITE_TIMER_rvalid,
    AXI_LITE_TIMER_bvalid,
    AXI_LITE_TIMER_wready,
    AXI_LITE_TIMER_arready,
    pair0_Select,
    \LOAD_REG_GEN[7].LOAD_REG_I ,
    bus2ip_wrce,
    \LOAD_REG_GEN[31].LOAD_REG_I ,
    \LOAD_REG_GEN[30].LOAD_REG_I ,
    \LOAD_REG_GEN[29].LOAD_REG_I ,
    \LOAD_REG_GEN[28].LOAD_REG_I ,
    \LOAD_REG_GEN[27].LOAD_REG_I ,
    \LOAD_REG_GEN[26].LOAD_REG_I ,
    \LOAD_REG_GEN[25].LOAD_REG_I ,
    \LOAD_REG_GEN[24].LOAD_REG_I ,
    \LOAD_REG_GEN[23].LOAD_REG_I ,
    \LOAD_REG_GEN[22].LOAD_REG_I ,
    \LOAD_REG_GEN[21].LOAD_REG_I ,
    \LOAD_REG_GEN[20].LOAD_REG_I ,
    \LOAD_REG_GEN[19].LOAD_REG_I ,
    \LOAD_REG_GEN[18].LOAD_REG_I ,
    \LOAD_REG_GEN[17].LOAD_REG_I ,
    \LOAD_REG_GEN[16].LOAD_REG_I ,
    \LOAD_REG_GEN[15].LOAD_REG_I ,
    \LOAD_REG_GEN[14].LOAD_REG_I ,
    \LOAD_REG_GEN[13].LOAD_REG_I ,
    \LOAD_REG_GEN[12].LOAD_REG_I ,
    \LOAD_REG_GEN[11].LOAD_REG_I ,
    \LOAD_REG_GEN[10].LOAD_REG_I ,
    \LOAD_REG_GEN[9].LOAD_REG_I ,
    \LOAD_REG_GEN[8].LOAD_REG_I ,
    \LOAD_REG_GEN[7].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[6].LOAD_REG_I ,
    \LOAD_REG_GEN[5].LOAD_REG_I ,
    \LOAD_REG_GEN[4].LOAD_REG_I ,
    \LOAD_REG_GEN[3].LOAD_REG_I ,
    \LOAD_REG_GEN[2].LOAD_REG_I ,
    \LOAD_REG_GEN[1].LOAD_REG_I ,
    D_0,
    \LOAD_REG_GEN[31].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[30].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[29].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[28].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[27].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[26].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[25].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[24].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[23].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[22].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[21].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[20].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[19].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[18].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[17].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[16].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[15].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[14].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[13].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[12].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[11].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[10].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[9].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[8].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[7].LOAD_REG_I_1 ,
    \LOAD_REG_GEN[6].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[5].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[4].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[3].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[2].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[1].LOAD_REG_I_0 ,
    D_1,
    s_axi_rvalid_i_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_rvalid_i_reg_1,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[31] ,
    \s_axi_rdata_i_reg[30] ,
    \s_axi_rdata_i_reg[29] ,
    \s_axi_rdata_i_reg[28] ,
    \s_axi_rdata_i_reg[27] ,
    \s_axi_rdata_i_reg[26] ,
    \s_axi_rdata_i_reg[25] ,
    \s_axi_rdata_i_reg[24] ,
    \s_axi_rdata_i_reg[23] ,
    \s_axi_rdata_i_reg[22] ,
    \s_axi_rdata_i_reg[21] ,
    \s_axi_rdata_i_reg[20] ,
    \s_axi_rdata_i_reg[19] ,
    \s_axi_rdata_i_reg[18] ,
    \s_axi_rdata_i_reg[17] ,
    \s_axi_rdata_i_reg[16] ,
    \s_axi_rdata_i_reg[15] ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[0]_1 ,
    READ_DONE0_I,
    READ_DONE1_I,
    \TCSR0_GENERATE[23].TCSR0_FF_I ,
    \TCSR1_GENERATE[23].TCSR1_FF_I ,
    s_axi_rdata,
    bus2ip_reset,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    read_Mux_In,
    s_axi_rready,
    s_axi_bready,
    s_axi_araddr,
    s_axi_awaddr,
    D_2,
    read_done1,
    D);
  output p_4_in;
  output p_7_in;
  output p_8_in;
  output Bus_RNW_reg;
  output AXI_LITE_TIMER_rvalid;
  output AXI_LITE_TIMER_bvalid;
  output AXI_LITE_TIMER_wready;
  output AXI_LITE_TIMER_arready;
  output pair0_Select;
  output \LOAD_REG_GEN[7].LOAD_REG_I ;
  output [1:0]bus2ip_wrce;
  output \LOAD_REG_GEN[31].LOAD_REG_I ;
  output \LOAD_REG_GEN[30].LOAD_REG_I ;
  output \LOAD_REG_GEN[29].LOAD_REG_I ;
  output \LOAD_REG_GEN[28].LOAD_REG_I ;
  output \LOAD_REG_GEN[27].LOAD_REG_I ;
  output \LOAD_REG_GEN[26].LOAD_REG_I ;
  output \LOAD_REG_GEN[25].LOAD_REG_I ;
  output \LOAD_REG_GEN[24].LOAD_REG_I ;
  output \LOAD_REG_GEN[23].LOAD_REG_I ;
  output \LOAD_REG_GEN[22].LOAD_REG_I ;
  output \LOAD_REG_GEN[21].LOAD_REG_I ;
  output \LOAD_REG_GEN[20].LOAD_REG_I ;
  output \LOAD_REG_GEN[19].LOAD_REG_I ;
  output \LOAD_REG_GEN[18].LOAD_REG_I ;
  output \LOAD_REG_GEN[17].LOAD_REG_I ;
  output \LOAD_REG_GEN[16].LOAD_REG_I ;
  output \LOAD_REG_GEN[15].LOAD_REG_I ;
  output \LOAD_REG_GEN[14].LOAD_REG_I ;
  output \LOAD_REG_GEN[13].LOAD_REG_I ;
  output \LOAD_REG_GEN[12].LOAD_REG_I ;
  output \LOAD_REG_GEN[11].LOAD_REG_I ;
  output \LOAD_REG_GEN[10].LOAD_REG_I ;
  output \LOAD_REG_GEN[9].LOAD_REG_I ;
  output \LOAD_REG_GEN[8].LOAD_REG_I ;
  output \LOAD_REG_GEN[7].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[6].LOAD_REG_I ;
  output \LOAD_REG_GEN[5].LOAD_REG_I ;
  output \LOAD_REG_GEN[4].LOAD_REG_I ;
  output \LOAD_REG_GEN[3].LOAD_REG_I ;
  output \LOAD_REG_GEN[2].LOAD_REG_I ;
  output \LOAD_REG_GEN[1].LOAD_REG_I ;
  output D_0;
  output \LOAD_REG_GEN[31].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[30].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[29].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[28].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[27].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[26].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[25].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[24].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[23].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[22].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[21].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[20].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[19].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[18].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[17].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[16].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[15].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[14].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[13].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[12].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[11].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[10].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[9].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[8].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[7].LOAD_REG_I_1 ;
  output \LOAD_REG_GEN[6].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[5].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[4].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[3].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[2].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[1].LOAD_REG_I_0 ;
  output D_1;
  output s_axi_rvalid_i_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_rvalid_i_reg_1;
  output \s_axi_rdata_i_reg[0] ;
  output \s_axi_rdata_i_reg[31] ;
  output \s_axi_rdata_i_reg[30] ;
  output \s_axi_rdata_i_reg[29] ;
  output \s_axi_rdata_i_reg[28] ;
  output \s_axi_rdata_i_reg[27] ;
  output \s_axi_rdata_i_reg[26] ;
  output \s_axi_rdata_i_reg[25] ;
  output \s_axi_rdata_i_reg[24] ;
  output \s_axi_rdata_i_reg[23] ;
  output \s_axi_rdata_i_reg[22] ;
  output \s_axi_rdata_i_reg[21] ;
  output \s_axi_rdata_i_reg[20] ;
  output \s_axi_rdata_i_reg[19] ;
  output \s_axi_rdata_i_reg[18] ;
  output \s_axi_rdata_i_reg[17] ;
  output \s_axi_rdata_i_reg[16] ;
  output \s_axi_rdata_i_reg[15] ;
  output \s_axi_rdata_i_reg[14] ;
  output \s_axi_rdata_i_reg[13] ;
  output \s_axi_rdata_i_reg[12] ;
  output \s_axi_rdata_i_reg[11] ;
  output \s_axi_rdata_i_reg[0]_0 ;
  output \s_axi_rdata_i_reg[0]_1 ;
  output READ_DONE0_I;
  output READ_DONE1_I;
  output \TCSR0_GENERATE[23].TCSR0_FF_I ;
  output \TCSR1_GENERATE[23].TCSR1_FF_I ;
  output [31:0]s_axi_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [85:0]read_Mux_In;
  input s_axi_rready;
  input s_axi_bready;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input D_2;
  input read_done1;
  input [31:0]D;

  wire AXI_LITE_TIMER_arready;
  wire AXI_LITE_TIMER_bvalid;
  wire AXI_LITE_TIMER_rvalid;
  wire AXI_LITE_TIMER_wready;
  wire Bus_RNW_reg;
  wire [31:0]D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire \LOAD_REG_GEN[10].LOAD_REG_I ;
  wire \LOAD_REG_GEN[10].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[11].LOAD_REG_I ;
  wire \LOAD_REG_GEN[11].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[12].LOAD_REG_I ;
  wire \LOAD_REG_GEN[12].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[13].LOAD_REG_I ;
  wire \LOAD_REG_GEN[13].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[14].LOAD_REG_I ;
  wire \LOAD_REG_GEN[14].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[15].LOAD_REG_I ;
  wire \LOAD_REG_GEN[15].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[16].LOAD_REG_I ;
  wire \LOAD_REG_GEN[16].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[17].LOAD_REG_I ;
  wire \LOAD_REG_GEN[17].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[18].LOAD_REG_I ;
  wire \LOAD_REG_GEN[18].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[19].LOAD_REG_I ;
  wire \LOAD_REG_GEN[19].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[1].LOAD_REG_I ;
  wire \LOAD_REG_GEN[1].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[21].LOAD_REG_I ;
  wire \LOAD_REG_GEN[21].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[22].LOAD_REG_I ;
  wire \LOAD_REG_GEN[22].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[23].LOAD_REG_I ;
  wire \LOAD_REG_GEN[23].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[24].LOAD_REG_I ;
  wire \LOAD_REG_GEN[24].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[25].LOAD_REG_I ;
  wire \LOAD_REG_GEN[25].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[26].LOAD_REG_I ;
  wire \LOAD_REG_GEN[26].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[27].LOAD_REG_I ;
  wire \LOAD_REG_GEN[27].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[28].LOAD_REG_I ;
  wire \LOAD_REG_GEN[28].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[29].LOAD_REG_I ;
  wire \LOAD_REG_GEN[29].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[2].LOAD_REG_I ;
  wire \LOAD_REG_GEN[2].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[30].LOAD_REG_I ;
  wire \LOAD_REG_GEN[30].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[31].LOAD_REG_I ;
  wire \LOAD_REG_GEN[31].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[3].LOAD_REG_I ;
  wire \LOAD_REG_GEN[3].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[4].LOAD_REG_I ;
  wire \LOAD_REG_GEN[4].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[5].LOAD_REG_I ;
  wire \LOAD_REG_GEN[5].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[6].LOAD_REG_I ;
  wire \LOAD_REG_GEN[6].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I_1 ;
  wire \LOAD_REG_GEN[8].LOAD_REG_I ;
  wire \LOAD_REG_GEN[8].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[9].LOAD_REG_I ;
  wire \LOAD_REG_GEN[9].LOAD_REG_I_0 ;
  wire READ_DONE0_I;
  wire READ_DONE1_I;
  wire \TCSR0_GENERATE[23].TCSR0_FF_I ;
  wire \TCSR1_GENERATE[23].TCSR1_FF_I ;
  wire bus2ip_reset;
  wire [1:0]bus2ip_wrce;
  wire p_4_in;
  wire p_7_in;
  wire p_8_in;
  wire pair0_Select;
  wire [85:0]read_Mux_In;
  wire read_done1;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[0]_1 ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[14] ;
  wire \s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[16] ;
  wire \s_axi_rdata_i_reg[17] ;
  wire \s_axi_rdata_i_reg[18] ;
  wire \s_axi_rdata_i_reg[19] ;
  wire \s_axi_rdata_i_reg[20] ;
  wire \s_axi_rdata_i_reg[21] ;
  wire \s_axi_rdata_i_reg[22] ;
  wire \s_axi_rdata_i_reg[23] ;
  wire \s_axi_rdata_i_reg[24] ;
  wire \s_axi_rdata_i_reg[25] ;
  wire \s_axi_rdata_i_reg[26] ;
  wire \s_axi_rdata_i_reg[27] ;
  wire \s_axi_rdata_i_reg[28] ;
  wire \s_axi_rdata_i_reg[29] ;
  wire \s_axi_rdata_i_reg[30] ;
  wire \s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire s_axi_rvalid_i_reg_1;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment__parameterized1 I_SLAVE_ATTACHMENT
       (.AXI_LITE_TIMER_arready(AXI_LITE_TIMER_arready),
        .AXI_LITE_TIMER_bvalid(AXI_LITE_TIMER_bvalid),
        .AXI_LITE_TIMER_rvalid(AXI_LITE_TIMER_rvalid),
        .AXI_LITE_TIMER_wready(AXI_LITE_TIMER_wready),
        .D(D),
        .D_0(D_0),
        .D_1(D_1),
        .D_2(D_2),
        .\LOAD_REG_GEN[10].LOAD_REG_I (\LOAD_REG_GEN[10].LOAD_REG_I ),
        .\LOAD_REG_GEN[10].LOAD_REG_I_0 (\LOAD_REG_GEN[10].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[11].LOAD_REG_I (\LOAD_REG_GEN[11].LOAD_REG_I ),
        .\LOAD_REG_GEN[11].LOAD_REG_I_0 (\LOAD_REG_GEN[11].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[12].LOAD_REG_I (\LOAD_REG_GEN[12].LOAD_REG_I ),
        .\LOAD_REG_GEN[12].LOAD_REG_I_0 (\LOAD_REG_GEN[12].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[13].LOAD_REG_I (\LOAD_REG_GEN[13].LOAD_REG_I ),
        .\LOAD_REG_GEN[13].LOAD_REG_I_0 (\LOAD_REG_GEN[13].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[14].LOAD_REG_I (\LOAD_REG_GEN[14].LOAD_REG_I ),
        .\LOAD_REG_GEN[14].LOAD_REG_I_0 (\LOAD_REG_GEN[14].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[15].LOAD_REG_I (\LOAD_REG_GEN[15].LOAD_REG_I ),
        .\LOAD_REG_GEN[15].LOAD_REG_I_0 (\LOAD_REG_GEN[15].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[16].LOAD_REG_I (\LOAD_REG_GEN[16].LOAD_REG_I ),
        .\LOAD_REG_GEN[16].LOAD_REG_I_0 (\LOAD_REG_GEN[16].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[17].LOAD_REG_I (\LOAD_REG_GEN[17].LOAD_REG_I ),
        .\LOAD_REG_GEN[17].LOAD_REG_I_0 (\LOAD_REG_GEN[17].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[18].LOAD_REG_I (\LOAD_REG_GEN[18].LOAD_REG_I ),
        .\LOAD_REG_GEN[18].LOAD_REG_I_0 (\LOAD_REG_GEN[18].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[19].LOAD_REG_I (\LOAD_REG_GEN[19].LOAD_REG_I ),
        .\LOAD_REG_GEN[19].LOAD_REG_I_0 (\LOAD_REG_GEN[19].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[1].LOAD_REG_I (\LOAD_REG_GEN[1].LOAD_REG_I ),
        .\LOAD_REG_GEN[1].LOAD_REG_I_0 (\LOAD_REG_GEN[1].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[20].LOAD_REG_I (\LOAD_REG_GEN[20].LOAD_REG_I ),
        .\LOAD_REG_GEN[20].LOAD_REG_I_0 (\LOAD_REG_GEN[20].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[21].LOAD_REG_I (\LOAD_REG_GEN[21].LOAD_REG_I ),
        .\LOAD_REG_GEN[21].LOAD_REG_I_0 (\LOAD_REG_GEN[21].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[22].LOAD_REG_I (\LOAD_REG_GEN[22].LOAD_REG_I ),
        .\LOAD_REG_GEN[22].LOAD_REG_I_0 (\LOAD_REG_GEN[22].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[23].LOAD_REG_I (\LOAD_REG_GEN[23].LOAD_REG_I ),
        .\LOAD_REG_GEN[23].LOAD_REG_I_0 (\LOAD_REG_GEN[23].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[24].LOAD_REG_I (\LOAD_REG_GEN[24].LOAD_REG_I ),
        .\LOAD_REG_GEN[24].LOAD_REG_I_0 (\LOAD_REG_GEN[24].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[25].LOAD_REG_I (\LOAD_REG_GEN[25].LOAD_REG_I ),
        .\LOAD_REG_GEN[25].LOAD_REG_I_0 (\LOAD_REG_GEN[25].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[26].LOAD_REG_I (\LOAD_REG_GEN[26].LOAD_REG_I ),
        .\LOAD_REG_GEN[26].LOAD_REG_I_0 (\LOAD_REG_GEN[26].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[27].LOAD_REG_I (\LOAD_REG_GEN[27].LOAD_REG_I ),
        .\LOAD_REG_GEN[27].LOAD_REG_I_0 (\LOAD_REG_GEN[27].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[28].LOAD_REG_I (\LOAD_REG_GEN[28].LOAD_REG_I ),
        .\LOAD_REG_GEN[28].LOAD_REG_I_0 (\LOAD_REG_GEN[28].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[29].LOAD_REG_I (\LOAD_REG_GEN[29].LOAD_REG_I ),
        .\LOAD_REG_GEN[29].LOAD_REG_I_0 (\LOAD_REG_GEN[29].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[2].LOAD_REG_I (\LOAD_REG_GEN[2].LOAD_REG_I ),
        .\LOAD_REG_GEN[2].LOAD_REG_I_0 (\LOAD_REG_GEN[2].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[30].LOAD_REG_I (\LOAD_REG_GEN[30].LOAD_REG_I ),
        .\LOAD_REG_GEN[30].LOAD_REG_I_0 (\LOAD_REG_GEN[30].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[31].LOAD_REG_I (\LOAD_REG_GEN[31].LOAD_REG_I ),
        .\LOAD_REG_GEN[31].LOAD_REG_I_0 (\LOAD_REG_GEN[31].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[3].LOAD_REG_I (\LOAD_REG_GEN[3].LOAD_REG_I ),
        .\LOAD_REG_GEN[3].LOAD_REG_I_0 (\LOAD_REG_GEN[3].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[4].LOAD_REG_I (\LOAD_REG_GEN[4].LOAD_REG_I ),
        .\LOAD_REG_GEN[4].LOAD_REG_I_0 (\LOAD_REG_GEN[4].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[5].LOAD_REG_I (\LOAD_REG_GEN[5].LOAD_REG_I ),
        .\LOAD_REG_GEN[5].LOAD_REG_I_0 (\LOAD_REG_GEN[5].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[6].LOAD_REG_I (\LOAD_REG_GEN[6].LOAD_REG_I ),
        .\LOAD_REG_GEN[6].LOAD_REG_I_0 (\LOAD_REG_GEN[6].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[7].LOAD_REG_I (\LOAD_REG_GEN[7].LOAD_REG_I ),
        .\LOAD_REG_GEN[7].LOAD_REG_I_0 (\LOAD_REG_GEN[7].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[7].LOAD_REG_I_1 (\LOAD_REG_GEN[7].LOAD_REG_I_1 ),
        .\LOAD_REG_GEN[8].LOAD_REG_I (\LOAD_REG_GEN[8].LOAD_REG_I ),
        .\LOAD_REG_GEN[8].LOAD_REG_I_0 (\LOAD_REG_GEN[8].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[9].LOAD_REG_I (\LOAD_REG_GEN[9].LOAD_REG_I ),
        .\LOAD_REG_GEN[9].LOAD_REG_I_0 (\LOAD_REG_GEN[9].LOAD_REG_I_0 ),
        .READ_DONE0_I(p_7_in),
        .READ_DONE0_I_0(READ_DONE0_I),
        .READ_DONE1_I(READ_DONE1_I),
        .\TCSR0_GENERATE[23].TCSR0_FF_I (\TCSR0_GENERATE[23].TCSR0_FF_I ),
        .\TCSR1_GENERATE[23].TCSR1_FF_I (\TCSR1_GENERATE[23].TCSR1_FF_I ),
        .\TCSR1_GENERATE[24].TCSR1_FF_I (p_4_in),
        .\TCSR1_GENERATE[24].TCSR1_FF_I_0 (p_8_in),
        .\TCSR1_GENERATE[24].TCSR1_FF_I_1 (Bus_RNW_reg),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrce(bus2ip_wrce),
        .pair0_Select(pair0_Select),
        .read_Mux_In(read_Mux_In),
        .read_done1(read_done1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i_reg[0] ),
        .\s_axi_rdata_i_reg[0]_1 (\s_axi_rdata_i_reg[0]_0 ),
        .\s_axi_rdata_i_reg[0]_2 (\s_axi_rdata_i_reg[0]_1 ),
        .\s_axi_rdata_i_reg[11]_0 (\s_axi_rdata_i_reg[11] ),
        .\s_axi_rdata_i_reg[12]_0 (\s_axi_rdata_i_reg[12] ),
        .\s_axi_rdata_i_reg[13]_0 (\s_axi_rdata_i_reg[13] ),
        .\s_axi_rdata_i_reg[14]_0 (\s_axi_rdata_i_reg[14] ),
        .\s_axi_rdata_i_reg[15]_0 (\s_axi_rdata_i_reg[15] ),
        .\s_axi_rdata_i_reg[16]_0 (\s_axi_rdata_i_reg[16] ),
        .\s_axi_rdata_i_reg[17]_0 (\s_axi_rdata_i_reg[17] ),
        .\s_axi_rdata_i_reg[18]_0 (\s_axi_rdata_i_reg[18] ),
        .\s_axi_rdata_i_reg[19]_0 (\s_axi_rdata_i_reg[19] ),
        .\s_axi_rdata_i_reg[20]_0 (\s_axi_rdata_i_reg[20] ),
        .\s_axi_rdata_i_reg[21]_0 (\s_axi_rdata_i_reg[21] ),
        .\s_axi_rdata_i_reg[22]_0 (\s_axi_rdata_i_reg[22] ),
        .\s_axi_rdata_i_reg[23]_0 (\s_axi_rdata_i_reg[23] ),
        .\s_axi_rdata_i_reg[24]_0 (\s_axi_rdata_i_reg[24] ),
        .\s_axi_rdata_i_reg[25]_0 (\s_axi_rdata_i_reg[25] ),
        .\s_axi_rdata_i_reg[26]_0 (\s_axi_rdata_i_reg[26] ),
        .\s_axi_rdata_i_reg[27]_0 (\s_axi_rdata_i_reg[27] ),
        .\s_axi_rdata_i_reg[28]_0 (\s_axi_rdata_i_reg[28] ),
        .\s_axi_rdata_i_reg[29]_0 (\s_axi_rdata_i_reg[29] ),
        .\s_axi_rdata_i_reg[30]_0 (\s_axi_rdata_i_reg[30] ),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_rvalid_i_reg_1(s_axi_rvalid_i_reg_0),
        .s_axi_rvalid_i_reg_2(s_axi_rvalid_i_reg_1),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized10
   (p_10_out,
    \bus2ip_addr_i_reg[6] );
  output p_10_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_10_out;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [1]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(p_10_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized11
   (p_9_out,
    \bus2ip_addr_i_reg[6] );
  output p_9_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_9_out;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [2]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(p_9_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized12
   (p_8_out,
    \bus2ip_addr_i_reg[6] );
  output p_8_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_8_out;

  LUT5 #(
    .INIT(32'h00400000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(p_8_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized13
   (p_7_out,
    \bus2ip_addr_i_reg[6] );
  output p_7_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_7_out;

  LUT5 #(
    .INIT(32'h00000010)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [3]),
        .I3(\bus2ip_addr_i_reg[6] [1]),
        .I4(\bus2ip_addr_i_reg[6] [0]),
        .O(p_7_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized14
   (p_6_out,
    \bus2ip_addr_i_reg[6] );
  output p_6_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_6_out;

  LUT5 #(
    .INIT(32'h00100000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [1]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(p_6_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized15
   (p_5_out,
    \bus2ip_addr_i_reg[6] );
  output p_5_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_5_out;

  LUT5 #(
    .INIT(32'h00040000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(p_5_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized16
   (p_4_out,
    \bus2ip_addr_i_reg[6] );
  output p_4_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_4_out;

  LUT5 #(
    .INIT(32'h00004000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(p_4_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized17
   (p_3_out,
    \bus2ip_addr_i_reg[6] );
  output p_3_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_3_out;

  LUT5 #(
    .INIT(32'h00040000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [0]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(p_3_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized18
   (p_2_out,
    \bus2ip_addr_i_reg[6] );
  output p_2_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_2_out;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [4]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(p_2_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized19
   (p_1_out,
    \bus2ip_addr_i_reg[6] );
  output p_1_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_1_out;

  LUT5 #(
    .INIT(32'h04000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [2]),
        .O(p_1_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized25
   (p_5_out,
    \bus2ip_addr_i_reg[4] );
  output p_5_out;
  input [2:0]\bus2ip_addr_i_reg[4] ;

  wire [2:0]\bus2ip_addr_i_reg[4] ;
  wire p_5_out;

  LUT3 #(
    .INIT(8'h10)) 
    CS
       (.I0(\bus2ip_addr_i_reg[4] [0]),
        .I1(\bus2ip_addr_i_reg[4] [2]),
        .I2(\bus2ip_addr_i_reg[4] [1]),
        .O(p_5_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized25_22
   (\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h00001000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized25_24
   (\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\bus2ip_addr_i_reg[6] [4]),
        .I4(\bus2ip_addr_i_reg[6] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized29
   (p_1_out,
    \bus2ip_addr_i_reg[4] );
  output p_1_out;
  input [2:0]\bus2ip_addr_i_reg[4] ;

  wire [2:0]\bus2ip_addr_i_reg[4] ;
  wire p_1_out;

  LUT3 #(
    .INIT(8'h20)) 
    CS
       (.I0(\bus2ip_addr_i_reg[4] [2]),
        .I1(\bus2ip_addr_i_reg[4] [0]),
        .I2(\bus2ip_addr_i_reg[4] [1]),
        .O(p_1_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized29_23
   (\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h00200000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [0]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized29_25
   (\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h20000000)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [0]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized30
   (p_7_out,
    \bus2ip_addr_i_reg[4] );
  output p_7_out;
  input [2:0]\bus2ip_addr_i_reg[4] ;

  wire [2:0]\bus2ip_addr_i_reg[4] ;
  wire p_7_out;

  LUT3 #(
    .INIT(8'h80)) 
    CS
       (.I0(\bus2ip_addr_i_reg[4] [2]),
        .I1(\bus2ip_addr_i_reg[4] [0]),
        .I2(\bus2ip_addr_i_reg[4] [1]),
        .O(p_7_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized5
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \bus2ip_addr_i_reg[6] );
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [4:0]\bus2ip_addr_i_reg[6] ;

  LUT5 #(
    .INIT(32'h00000001)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [4]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [1]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized6
   (p_14_out,
    \bus2ip_addr_i_reg[6] );
  output p_14_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_14_out;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [0]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(p_14_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized7
   (p_13_out,
    \bus2ip_addr_i_reg[6] );
  output p_13_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_13_out;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [1]),
        .I1(\bus2ip_addr_i_reg[6] [2]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [0]),
        .O(p_13_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized8
   (p_12_out,
    \bus2ip_addr_i_reg[6] );
  output p_12_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_12_out;

  LUT5 #(
    .INIT(32'h00000040)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [3]),
        .I1(\bus2ip_addr_i_reg[6] [1]),
        .I2(\bus2ip_addr_i_reg[6] [0]),
        .I3(\bus2ip_addr_i_reg[6] [2]),
        .I4(\bus2ip_addr_i_reg[6] [4]),
        .O(p_12_out));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif_v3_0_4_pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_v3_0_4_pselect_f__parameterized9
   (p_11_out,
    \bus2ip_addr_i_reg[6] );
  output p_11_out;
  input [4:0]\bus2ip_addr_i_reg[6] ;

  wire [4:0]\bus2ip_addr_i_reg[6] ;
  wire p_11_out;

  LUT5 #(
    .INIT(32'h00000002)) 
    CS
       (.I0(\bus2ip_addr_i_reg[6] [2]),
        .I1(\bus2ip_addr_i_reg[6] [0]),
        .I2(\bus2ip_addr_i_reg[6] [4]),
        .I3(\bus2ip_addr_i_reg[6] [3]),
        .I4(\bus2ip_addr_i_reg[6] [1]),
        .O(p_11_out));
endmodule

(* Async_Clk = "1" *) (* C_DUAL_QUAD_MODE = "0" *) (* C_FAMILY = "zynq" *) 
(* C_FIFO_DEPTH = "0" *) (* C_INSTANCE = "axi_quad_spi_inst" *) (* C_LSB_STUP = "0" *) 
(* C_NUM_SS_BITS = "1" *) (* C_NUM_TRANSFER_BITS = "8" *) (* C_SCK_RATIO = "16" *) 
(* C_SELECT_XPM = "1" *) (* C_SHARED_STARTUP = "0" *) (* C_SPI_MEMORY = "1" *) 
(* C_SPI_MEM_ADDR_BITS = "24" *) (* C_SPI_MODE = "0" *) (* C_SUB_FAMILY = "zynq" *) 
(* C_S_AXI4_ADDR_WIDTH = "24" *) (* C_S_AXI4_BASEADDR = "-1" *) (* C_S_AXI4_DATA_WIDTH = "32" *) 
(* C_S_AXI4_HIGHADDR = "0" *) (* C_S_AXI4_ID_WIDTH = "1" *) (* C_S_AXI_ADDR_WIDTH = "7" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TYPE_OF_AXI4_INTERFACE = "0" *) (* C_UC_FAMILY = "0" *) 
(* C_USE_STARTUP = "0" *) (* C_USE_STARTUP_EXT = "0" *) (* C_XIP_MODE = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi4_aclk,
    s_axi4_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_awid,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bid,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    io2_i,
    io2_o,
    io2_t,
    io3_i,
    io3_o,
    io3_t,
    io0_1_i,
    io0_1_o,
    io0_1_t,
    io1_1_i,
    io1_1_o,
    io1_1_t,
    io2_1_i,
    io2_1_o,
    io2_1_t,
    io3_1_i,
    io3_1_o,
    io3_1_t,
    spisel,
    sck_i,
    sck_o,
    sck_t,
    ss_i,
    ss_o,
    ss_t,
    ss_1_i,
    ss_1_o,
    ss_1_t,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    clk,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    pack,
    ip2intc_irpt);
  (* max_fanout = "10000" *) input ext_spi_clk;
  (* max_fanout = "10000" *) input s_axi_aclk;
  (* max_fanout = "10000" *) input s_axi_aresetn;
  (* max_fanout = "10000" *) input s_axi4_aclk;
  (* max_fanout = "10000" *) input s_axi4_aresetn;
  input [6:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [0:0]s_axi4_awid;
  input [23:0]s_axi4_awaddr;
  input [7:0]s_axi4_awlen;
  input [2:0]s_axi4_awsize;
  input [1:0]s_axi4_awburst;
  input s_axi4_awlock;
  input [3:0]s_axi4_awcache;
  input [2:0]s_axi4_awprot;
  input s_axi4_awvalid;
  output s_axi4_awready;
  input [31:0]s_axi4_wdata;
  input [3:0]s_axi4_wstrb;
  input s_axi4_wlast;
  input s_axi4_wvalid;
  output s_axi4_wready;
  output [0:0]s_axi4_bid;
  output [1:0]s_axi4_bresp;
  output s_axi4_bvalid;
  input s_axi4_bready;
  input [0:0]s_axi4_arid;
  input [23:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input [2:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input s_axi4_arlock;
  input [3:0]s_axi4_arcache;
  input [2:0]s_axi4_arprot;
  input s_axi4_arvalid;
  output s_axi4_arready;
  output [0:0]s_axi4_rid;
  output [31:0]s_axi4_rdata;
  output [1:0]s_axi4_rresp;
  output s_axi4_rlast;
  output s_axi4_rvalid;
  input s_axi4_rready;
  input io0_i;
  output io0_o;
  output io0_t;
  input io1_i;
  output io1_o;
  output io1_t;
  input io2_i;
  output io2_o;
  output io2_t;
  input io3_i;
  output io3_o;
  output io3_t;
  input io0_1_i;
  output io0_1_o;
  output io0_1_t;
  input io1_1_i;
  output io1_1_o;
  output io1_1_t;
  input io2_1_i;
  output io2_1_o;
  output io2_1_t;
  input io3_1_i;
  output io3_1_o;
  output io3_1_t;
  (* initialval = "VCC" *) input spisel;
  input sck_i;
  output sck_o;
  output sck_t;
  input [0:0]ss_i;
  output [0:0]ss_o;
  output ss_t;
  input ss_1_i;
  output ss_1_o;
  output ss_1_t;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  input clk;
  input gsr;
  input gts;
  input keyclearb;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input pack;
  output ip2intc_irpt;

  wire \<const0> ;
  wire \<const1> ;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire ext_spi_clk;
  wire io0_i;
  wire io0_t;
  wire io1_i;
  wire io1_o;
  wire io1_t;
  wire ip2intc_irpt;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi4_aclk;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi4_aresetn;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire spisel;
  wire [0:0]ss_o;
  wire ss_t;

  assign cfgclk = \<const0> ;
  assign cfgmclk = \<const0> ;
  assign eos = \<const0> ;
  assign io0_1_o = \<const0> ;
  assign io0_1_t = \<const0> ;
  assign io0_o = io1_o;
  assign io1_1_o = \<const0> ;
  assign io1_1_t = \<const0> ;
  assign io2_1_o = \<const0> ;
  assign io2_1_t = \<const0> ;
  assign io2_o = \<const0> ;
  assign io2_t = \<const1> ;
  assign io3_1_o = \<const0> ;
  assign io3_1_t = \<const0> ;
  assign io3_o = \<const0> ;
  assign io3_t = \<const1> ;
  assign preq = \<const0> ;
  assign s_axi4_arready = \<const0> ;
  assign s_axi4_awready = \<const0> ;
  assign s_axi4_bid[0] = \<const0> ;
  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_bvalid = \<const0> ;
  assign s_axi4_rdata[31] = \<const0> ;
  assign s_axi4_rdata[30] = \<const0> ;
  assign s_axi4_rdata[29] = \<const0> ;
  assign s_axi4_rdata[28] = \<const0> ;
  assign s_axi4_rdata[27] = \<const0> ;
  assign s_axi4_rdata[26] = \<const0> ;
  assign s_axi4_rdata[25] = \<const0> ;
  assign s_axi4_rdata[24] = \<const0> ;
  assign s_axi4_rdata[23] = \<const0> ;
  assign s_axi4_rdata[22] = \<const0> ;
  assign s_axi4_rdata[21] = \<const0> ;
  assign s_axi4_rdata[20] = \<const0> ;
  assign s_axi4_rdata[19] = \<const0> ;
  assign s_axi4_rdata[18] = \<const0> ;
  assign s_axi4_rdata[17] = \<const0> ;
  assign s_axi4_rdata[16] = \<const0> ;
  assign s_axi4_rdata[15] = \<const0> ;
  assign s_axi4_rdata[14] = \<const0> ;
  assign s_axi4_rdata[13] = \<const0> ;
  assign s_axi4_rdata[12] = \<const0> ;
  assign s_axi4_rdata[11] = \<const0> ;
  assign s_axi4_rdata[10] = \<const0> ;
  assign s_axi4_rdata[9] = \<const0> ;
  assign s_axi4_rdata[8] = \<const0> ;
  assign s_axi4_rdata[7] = \<const0> ;
  assign s_axi4_rdata[6] = \<const0> ;
  assign s_axi4_rdata[5] = \<const0> ;
  assign s_axi4_rdata[4] = \<const0> ;
  assign s_axi4_rdata[3] = \<const0> ;
  assign s_axi4_rdata[2] = \<const0> ;
  assign s_axi4_rdata[1] = \<const0> ;
  assign s_axi4_rdata[0] = \<const0> ;
  assign s_axi4_rid[0] = \<const0> ;
  assign s_axi4_rlast = \<const0> ;
  assign s_axi4_rresp[1] = \<const0> ;
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi4_rvalid = \<const0> ;
  assign s_axi4_wready = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9:0] = \^s_axi_rdata [9:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign ss_1_o = \<const0> ;
  assign ss_1_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi_top \NO_DUAL_QUAD_MODE.QSPI_NORMAL 
       (.AXI_LITE_SPI_arready(s_axi_arready),
        .AXI_LITE_SPI_bvalid(s_axi_bvalid),
        .AXI_LITE_SPI_rvalid(s_axi_rvalid),
        .AXI_LITE_SPI_wready(s_axi_wready),
        .ext_spi_clk(ext_spi_clk),
        .io0_i(io0_i),
        .io0_t(io0_t),
        .io1_i(io1_i),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_aresetn(s_axi4_aresetn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[6:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[6:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [9:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[9:0]}),
        .s_axi_wstrb({s_axi_wstrb[3],s_axi_wstrb[0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .spisel(spisel),
        .ss_o(ss_o),
        .ss_t(ss_t));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_quad_spi_top
   (sck_t,
    io0_t,
    ss_t,
    io1_t,
    sck_o,
    s_axi_rdata,
    s_axi_rresp,
    AXI_LITE_SPI_wready,
    AXI_LITE_SPI_arready,
    AXI_LITE_SPI_bvalid,
    AXI_LITE_SPI_rvalid,
    ip2intc_irpt,
    io1_o,
    s_axi_bresp,
    ss_o,
    s_axi_aclk,
    ext_spi_clk,
    s_axi_wdata,
    spisel,
    sck_i,
    io0_i,
    io1_i,
    s_axi4_aclk,
    s_axi4_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wstrb);
  output sck_t;
  output io0_t;
  output ss_t;
  output io1_t;
  output sck_o;
  output [10:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output AXI_LITE_SPI_wready;
  output AXI_LITE_SPI_arready;
  output AXI_LITE_SPI_bvalid;
  output AXI_LITE_SPI_rvalid;
  output ip2intc_irpt;
  output io1_o;
  output [0:0]s_axi_bresp;
  output [0:0]ss_o;
  input s_axi_aclk;
  input ext_spi_clk;
  input [10:0]s_axi_wdata;
  input spisel;
  input sck_i;
  input io0_i;
  input io1_i;
  input s_axi4_aclk;
  input s_axi4_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;
  input [1:0]s_axi_wstrb;

  wire AXI_LITE_SPI_arready;
  wire AXI_LITE_SPI_bvalid;
  wire AXI_LITE_SPI_rvalid;
  wire AXI_LITE_SPI_wready;
  wire \CONTROL_REG_I/SPICR_data_int_reg0 ;
  wire \INTERRUPT_CONTROL_I/interrupt_wrce_strb ;
  wire \INTERRUPT_CONTROL_I/intr2bus_rdack0 ;
  wire \INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg ;
  wire \INTERRUPT_CONTROL_I/irpt_rdack ;
  wire \INTERRUPT_CONTROL_I/irpt_rdack_d1 ;
  wire \INTERRUPT_CONTROL_I/irpt_wrack ;
  wire \INTERRUPT_CONTROL_I/irpt_wrack_d1 ;
  wire \INTERRUPT_CONTROL_I/irpt_wrack_d11 ;
  wire \INTERRUPT_CONTROL_I/p_0_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in10_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in16_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in1_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in4_in ;
  wire \INTERRUPT_CONTROL_I/p_0_in7_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in17_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in23_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in26_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in29_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in32_in ;
  wire \INTERRUPT_CONTROL_I/p_1_in35_in ;
  wire [0:31]IP2Bus_Data;
  wire IP2Bus_Error_1;
  wire [0:1]IP2Bus_SPICR_Data_int;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG/Receive_ip2bus_error0 ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_1_in5_in ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_2_in7_in ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_3_in ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_4_in ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_5_in ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_6_in ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG/sr_5_Tx_Empty_i1 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_16 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_35 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_36 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_42 ;
  wire \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_16 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_25 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_32 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_40 ;
  wire \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 ;
  wire \SOFT_RESET_I/reset_trig0 ;
  wire \SOFT_RESET_I/sw_rst_cond ;
  wire \SOFT_RESET_I/sw_rst_cond_d1 ;
  wire SPISSR_frm_axi_clk;
  wire Tx_FIFO_Empty_SPISR_to_axi_clk;
  wire bus2ip_reset_ipif_inverted;
  wire [7:7]bus2ip_wrce_int;
  wire ext_spi_clk;
  wire intr_controller_rd_ce_or_reduce;
  wire [0:0]intr_ip2bus_data;
  wire io0_i;
  wire io0_i_sync;
  wire io0_t;
  wire io1_i;
  wire io1_i_sync;
  wire io1_o;
  wire io1_t;
  wire [24:31]ip2Bus_Data_1;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2intc_irpt;
  wire p_15_out;
  wire p_16_out;
  wire [1:1]p_1_in;
  wire p_20_out;
  wire p_24_out;
  wire rd_ce_or_reduce_core_cmb;
  wire rx_fifo_empty_i;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi4_aclk;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi4_aresetn;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire [10:0]s_axi_wdata;
  wire [1:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire spicr_0_loop_frm_axi_clk;
  wire spicr_1_spe_frm_axi_clk;
  wire spicr_2_mst_n_slv_frm_axi_clk;
  wire spicr_3_cpol_frm_axi_clk;
  wire spicr_4_cpha_frm_axi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_frm_axi_clk;
  wire spicr_8_tr_inhibit_frm_axi_clk;
  wire spicr_9_lsb_frm_axi_clk;
  wire spisel;
  wire spisel_d1_reg_to_axi_clk;
  wire sr_3_MODF_int;
  wire sr_5_Tx_Empty_int;
  wire [0:0]ss_o;
  wire ss_t;

  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO0_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io0_i),
        .Q(io0_i_sync),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO1_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io1_i),
        .Q(io1_i_sync),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif__parameterized0 \QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I 
       (.AXI_LITE_SPI_arready(AXI_LITE_SPI_arready),
        .AXI_LITE_SPI_bvalid(AXI_LITE_SPI_bvalid),
        .AXI_LITE_SPI_rvalid(AXI_LITE_SPI_rvalid),
        .AXI_LITE_SPI_wready(AXI_LITE_SPI_wready),
        .Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] (spicr_8_tr_inhibit_frm_axi_clk),
        .\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] (spicr_7_ss_frm_axi_clk),
        .\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_40 ),
        .\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] (spicr_4_cpha_frm_axi_clk),
        .\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] (spicr_3_cpol_frm_axi_clk),
        .\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] (spicr_2_mst_n_slv_frm_axi_clk),
        .\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] (spicr_1_spe_frm_axi_clk),
        .D({intr_ip2bus_data,IP2Bus_SPICR_Data_int[0],IP2Bus_SPICR_Data_int[1],ip2Bus_Data_1[24],ip2Bus_Data_1[25],ip2Bus_Data_1[26],ip2Bus_Data_1[27],ip2Bus_Data_1[28],ip2Bus_Data_1[29],ip2Bus_Data_1[30],ip2Bus_Data_1[31]}),
        .E(\INTERRUPT_CONTROL_I/irpt_wrack_d11 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (spisel_d1_reg_to_axi_clk),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_16 ),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_35 ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ({IP2Bus_Data[0],IP2Bus_Data[22],IP2Bus_Data[23],IP2Bus_Data[24],IP2Bus_Data[25],IP2Bus_Data[26],IP2Bus_Data[27],IP2Bus_Data[28],IP2Bus_Data[29],IP2Bus_Data[30],IP2Bus_Data[31]}),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_16 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_42 ),
        .Q({\INTERRUPT_CONTROL_I/p_0_in16_in ,\INTERRUPT_CONTROL_I/p_0_in10_in ,\INTERRUPT_CONTROL_I/p_0_in7_in ,\INTERRUPT_CONTROL_I/p_0_in4_in ,\INTERRUPT_CONTROL_I/p_0_in1_in ,\INTERRUPT_CONTROL_I/p_0_in ,\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 }),
        .\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_32 ),
        .\RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_25 ),
        .Receive_ip2bus_error0(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/Receive_ip2bus_error0 ),
        .SPICR_data_int_reg0(\CONTROL_REG_I/SPICR_data_int_reg0 ),
        .\SPICR_data_int_reg[0] (spicr_9_lsb_frm_axi_clk),
        .Transmit_ip2bus_error_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10 ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .interrupt_wrce_strb(\INTERRUPT_CONTROL_I/interrupt_wrce_strb ),
        .intr2bus_rdack0(\INTERRUPT_CONTROL_I/intr2bus_rdack0 ),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ),
        .ipif_glbl_irpt_enable_reg(\INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg ),
        .ipif_glbl_irpt_enable_reg_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46 ),
        .irpt_rdack(\INTERRUPT_CONTROL_I/irpt_rdack ),
        .irpt_rdack_d1(\INTERRUPT_CONTROL_I/irpt_rdack_d1 ),
        .irpt_wrack(\INTERRUPT_CONTROL_I/irpt_wrack ),
        .irpt_wrack_d1(\INTERRUPT_CONTROL_I/irpt_wrack_d1 ),
        .modf_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_36 ),
        .modf_reg_0(sr_3_MODF_int),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_1_in(p_1_in),
        .p_1_in17_in(\INTERRUPT_CONTROL_I/p_1_in17_in ),
        .p_1_in23_in(\INTERRUPT_CONTROL_I/p_1_in23_in ),
        .p_1_in26_in(\INTERRUPT_CONTROL_I/p_1_in26_in ),
        .p_1_in29_in(\INTERRUPT_CONTROL_I/p_1_in29_in ),
        .p_1_in32_in(\INTERRUPT_CONTROL_I/p_1_in32_in ),
        .p_1_in35_in(\INTERRUPT_CONTROL_I/p_1_in35_in ),
        .p_1_in5_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_1_in5_in ),
        .p_20_out(p_20_out),
        .p_24_out(p_24_out),
        .p_2_in7_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_2_in7_in ),
        .p_3_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_3_in ),
        .p_4_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_4_in ),
        .p_5_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_5_in ),
        .p_6_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_6_in ),
        .prmry_in(spicr_0_loop_frm_axi_clk),
        .prmry_vect_in(SPISSR_frm_axi_clk),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(\SOFT_RESET_I/reset_trig0 ),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_wdata({s_axi_wdata[10],s_axi_wdata[3:0]}),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .scndry_out(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .sr_5_Tx_Empty_i1(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/sr_5_Tx_Empty_i1 ),
        .sr_5_Tx_Empty_int(sr_5_Tx_Empty_int),
        .sw_rst_cond(\SOFT_RESET_I/sw_rst_cond ),
        .sw_rst_cond_d1(\SOFT_RESET_I/sw_rst_cond_d1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_core_interface \QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_11 ),
        .Bus_RNW_reg_reg_0(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_12 ),
        .Bus_RNW_reg_reg_1(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_42 ),
        .Bus_RNW_reg_reg_2(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_36 ),
        .\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_40 ),
        .D({intr_ip2bus_data,IP2Bus_SPICR_Data_int[0],IP2Bus_SPICR_Data_int[1],ip2Bus_Data_1[24],ip2Bus_Data_1[25],ip2Bus_Data_1[26],ip2Bus_Data_1[27],ip2Bus_Data_1[28],ip2Bus_Data_1[29],ip2Bus_Data_1[30],ip2Bus_Data_1[31]}),
        .E(\INTERRUPT_CONTROL_I/irpt_wrack_d11 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (spicr_1_spe_frm_axi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (spicr_2_mst_n_slv_frm_axi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 (spicr_3_cpol_frm_axi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 (spicr_4_cpha_frm_axi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 (spicr_7_ss_frm_axi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 (spicr_8_tr_inhibit_frm_axi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 (spicr_9_lsb_frm_axi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 (rx_fifo_empty_i),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_7 (sr_3_MODF_int),
        .\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] (\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_16 ),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_16 ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_32 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 (spisel_d1_reg_to_axi_clk),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 (\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_25 ),
        .Q({\INTERRUPT_CONTROL_I/p_0_in16_in ,\INTERRUPT_CONTROL_I/p_0_in10_in ,\INTERRUPT_CONTROL_I/p_0_in7_in ,\INTERRUPT_CONTROL_I/p_0_in4_in ,\INTERRUPT_CONTROL_I/p_0_in1_in ,\INTERRUPT_CONTROL_I/p_0_in ,\QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_n_56 }),
        .Receive_ip2bus_error0(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/Receive_ip2bus_error0 ),
        .SPICR_data_int_reg0(\CONTROL_REG_I/SPICR_data_int_reg0 ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .bus2ip_rnw_i_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_46 ),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .ext_spi_clk(ext_spi_clk),
        .interrupt_wrce_strb(\INTERRUPT_CONTROL_I/interrupt_wrce_strb ),
        .intr2bus_rdack0(\INTERRUPT_CONTROL_I/intr2bus_rdack0 ),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .io0_i_sync(io0_i_sync),
        .io0_t(io0_t),
        .io1_i_sync(io1_i_sync),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg(\INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg ),
        .irpt_rdack(\INTERRUPT_CONTROL_I/irpt_rdack ),
        .irpt_rdack_d1(\INTERRUPT_CONTROL_I/irpt_rdack_d1 ),
        .irpt_wrack(\INTERRUPT_CONTROL_I/irpt_wrack ),
        .irpt_wrack_d1(\INTERRUPT_CONTROL_I/irpt_wrack_d1 ),
        .irpt_wrack_d1_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_35 ),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_1_in(p_1_in),
        .p_1_in17_in(\INTERRUPT_CONTROL_I/p_1_in17_in ),
        .p_1_in23_in(\INTERRUPT_CONTROL_I/p_1_in23_in ),
        .p_1_in26_in(\INTERRUPT_CONTROL_I/p_1_in26_in ),
        .p_1_in29_in(\INTERRUPT_CONTROL_I/p_1_in29_in ),
        .p_1_in32_in(\INTERRUPT_CONTROL_I/p_1_in32_in ),
        .p_1_in35_in(\INTERRUPT_CONTROL_I/p_1_in35_in ),
        .p_1_in5_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_1_in5_in ),
        .p_20_out(p_20_out),
        .p_24_out(p_24_out),
        .p_2_in7_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_2_in7_in ),
        .p_3_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_3_in ),
        .p_4_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_4_in ),
        .p_5_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_5_in ),
        .p_6_in(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/p_6_in ),
        .prmry_in(spicr_0_loop_frm_axi_clk),
        .prmry_vect_in(SPISSR_frm_axi_clk),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(\SOFT_RESET_I/reset_trig0 ),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[31] ({IP2Bus_Data[0],IP2Bus_Data[22],IP2Bus_Data[23],IP2Bus_Data[24],IP2Bus_Data[25],IP2Bus_Data[26],IP2Bus_Data[27],IP2Bus_Data[28],IP2Bus_Data[29],IP2Bus_Data[30],IP2Bus_Data[31]}),
        .s_axi_wdata(s_axi_wdata[9:0]),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .scndry_out(Tx_FIFO_Empty_SPISR_to_axi_clk),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spisel(spisel),
        .sr_5_Tx_Empty_i1(\NO_FIFO_EXISTS.QSPI_RX_TX_REG/sr_5_Tx_Empty_i1 ),
        .sr_5_Tx_Empty_i_reg(\QSPI_LEGACY_MD_GEN.AXI_LITE_IPIF_I_n_10 ),
        .sr_5_Tx_Empty_int(sr_5_Tx_Empty_int),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .sw_rst_cond(\SOFT_RESET_I/sw_rst_cond ),
        .sw_rst_cond_d1(\SOFT_RESET_I/sw_rst_cond_d1 ));
endmodule

(* C_COUNT_WIDTH = "32" *) (* C_FAMILY = "zynq" *) (* C_GEN0_ASSERT = "1'b1" *) 
(* C_GEN1_ASSERT = "1'b1" *) (* C_ONE_TIMER_ONLY = "0" *) (* C_S_AXI_ADDR_WIDTH = "5" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRIG0_ASSERT = "1'b1" *) (* C_TRIG1_ASSERT = "1'b1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_timer
   (capturetrig0,
    capturetrig1,
    generateout0,
    generateout1,
    pwm0,
    interrupt,
    freeze,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  input capturetrig0;
  input capturetrig1;
  output generateout0;
  output generateout1;
  output pwm0;
  output interrupt;
  input freeze;
  (* max_fanout = "10000" *) input s_axi_aclk;
  (* max_fanout = "10000" *) input s_axi_aresetn;
  input [4:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [4:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire AXI4_LITE_I_n_100;
  wire AXI4_LITE_I_n_101;
  wire AXI4_LITE_I_n_102;
  wire AXI4_LITE_I_n_103;
  wire AXI4_LITE_I_n_104;
  wire AXI4_LITE_I_n_105;
  wire AXI4_LITE_I_n_106;
  wire AXI4_LITE_I_n_12;
  wire AXI4_LITE_I_n_13;
  wire AXI4_LITE_I_n_14;
  wire AXI4_LITE_I_n_15;
  wire AXI4_LITE_I_n_16;
  wire AXI4_LITE_I_n_17;
  wire AXI4_LITE_I_n_18;
  wire AXI4_LITE_I_n_19;
  wire AXI4_LITE_I_n_20;
  wire AXI4_LITE_I_n_21;
  wire AXI4_LITE_I_n_22;
  wire AXI4_LITE_I_n_23;
  wire AXI4_LITE_I_n_24;
  wire AXI4_LITE_I_n_25;
  wire AXI4_LITE_I_n_26;
  wire AXI4_LITE_I_n_27;
  wire AXI4_LITE_I_n_28;
  wire AXI4_LITE_I_n_29;
  wire AXI4_LITE_I_n_30;
  wire AXI4_LITE_I_n_31;
  wire AXI4_LITE_I_n_32;
  wire AXI4_LITE_I_n_33;
  wire AXI4_LITE_I_n_34;
  wire AXI4_LITE_I_n_35;
  wire AXI4_LITE_I_n_36;
  wire AXI4_LITE_I_n_37;
  wire AXI4_LITE_I_n_38;
  wire AXI4_LITE_I_n_39;
  wire AXI4_LITE_I_n_40;
  wire AXI4_LITE_I_n_41;
  wire AXI4_LITE_I_n_42;
  wire AXI4_LITE_I_n_44;
  wire AXI4_LITE_I_n_45;
  wire AXI4_LITE_I_n_46;
  wire AXI4_LITE_I_n_47;
  wire AXI4_LITE_I_n_48;
  wire AXI4_LITE_I_n_49;
  wire AXI4_LITE_I_n_50;
  wire AXI4_LITE_I_n_51;
  wire AXI4_LITE_I_n_52;
  wire AXI4_LITE_I_n_53;
  wire AXI4_LITE_I_n_54;
  wire AXI4_LITE_I_n_55;
  wire AXI4_LITE_I_n_56;
  wire AXI4_LITE_I_n_57;
  wire AXI4_LITE_I_n_58;
  wire AXI4_LITE_I_n_59;
  wire AXI4_LITE_I_n_60;
  wire AXI4_LITE_I_n_61;
  wire AXI4_LITE_I_n_62;
  wire AXI4_LITE_I_n_63;
  wire AXI4_LITE_I_n_64;
  wire AXI4_LITE_I_n_65;
  wire AXI4_LITE_I_n_66;
  wire AXI4_LITE_I_n_67;
  wire AXI4_LITE_I_n_68;
  wire AXI4_LITE_I_n_69;
  wire AXI4_LITE_I_n_70;
  wire AXI4_LITE_I_n_71;
  wire AXI4_LITE_I_n_72;
  wire AXI4_LITE_I_n_73;
  wire AXI4_LITE_I_n_74;
  wire AXI4_LITE_I_n_76;
  wire AXI4_LITE_I_n_77;
  wire AXI4_LITE_I_n_78;
  wire AXI4_LITE_I_n_79;
  wire AXI4_LITE_I_n_80;
  wire AXI4_LITE_I_n_81;
  wire AXI4_LITE_I_n_82;
  wire AXI4_LITE_I_n_83;
  wire AXI4_LITE_I_n_84;
  wire AXI4_LITE_I_n_85;
  wire AXI4_LITE_I_n_86;
  wire AXI4_LITE_I_n_87;
  wire AXI4_LITE_I_n_88;
  wire AXI4_LITE_I_n_89;
  wire AXI4_LITE_I_n_9;
  wire AXI4_LITE_I_n_90;
  wire AXI4_LITE_I_n_91;
  wire AXI4_LITE_I_n_92;
  wire AXI4_LITE_I_n_93;
  wire AXI4_LITE_I_n_94;
  wire AXI4_LITE_I_n_95;
  wire AXI4_LITE_I_n_96;
  wire AXI4_LITE_I_n_97;
  wire AXI4_LITE_I_n_98;
  wire AXI4_LITE_I_n_99;
  wire \COUNTER_0_I/D ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I/D ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ;
  wire \TIMER_CONTROL_I/D ;
  wire \TIMER_CONTROL_I/pair0_Select ;
  wire \TIMER_CONTROL_I/read_done1 ;
  wire bus2ip_reset;
  wire [0:4]bus2ip_wrce;
  wire capturetrig0;
  wire capturetrig1;
  wire freeze;
  wire generateout0;
  wire generateout1;
  wire interrupt;
  wire [0:31]ip2bus_data;
  wire pwm0;
  wire [20:191]read_Mux_In;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif__parameterized1 AXI4_LITE_I
       (.AXI_LITE_TIMER_arready(s_axi_arready),
        .AXI_LITE_TIMER_bvalid(s_axi_bvalid),
        .AXI_LITE_TIMER_rvalid(s_axi_rvalid),
        .AXI_LITE_TIMER_wready(s_axi_wready),
        .Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({ip2bus_data[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data[31]}),
        .D_0(\COUNTER_0_I/D ),
        .D_1(\GEN_SECOND_TIMER.COUNTER_1_I/D ),
        .D_2(\TIMER_CONTROL_I/D ),
        .\LOAD_REG_GEN[10].LOAD_REG_I (AXI4_LITE_I_n_33),
        .\LOAD_REG_GEN[10].LOAD_REG_I_0 (AXI4_LITE_I_n_65),
        .\LOAD_REG_GEN[11].LOAD_REG_I (AXI4_LITE_I_n_32),
        .\LOAD_REG_GEN[11].LOAD_REG_I_0 (AXI4_LITE_I_n_64),
        .\LOAD_REG_GEN[12].LOAD_REG_I (AXI4_LITE_I_n_31),
        .\LOAD_REG_GEN[12].LOAD_REG_I_0 (AXI4_LITE_I_n_63),
        .\LOAD_REG_GEN[13].LOAD_REG_I (AXI4_LITE_I_n_30),
        .\LOAD_REG_GEN[13].LOAD_REG_I_0 (AXI4_LITE_I_n_62),
        .\LOAD_REG_GEN[14].LOAD_REG_I (AXI4_LITE_I_n_29),
        .\LOAD_REG_GEN[14].LOAD_REG_I_0 (AXI4_LITE_I_n_61),
        .\LOAD_REG_GEN[15].LOAD_REG_I (AXI4_LITE_I_n_28),
        .\LOAD_REG_GEN[15].LOAD_REG_I_0 (AXI4_LITE_I_n_60),
        .\LOAD_REG_GEN[16].LOAD_REG_I (AXI4_LITE_I_n_27),
        .\LOAD_REG_GEN[16].LOAD_REG_I_0 (AXI4_LITE_I_n_59),
        .\LOAD_REG_GEN[17].LOAD_REG_I (AXI4_LITE_I_n_26),
        .\LOAD_REG_GEN[17].LOAD_REG_I_0 (AXI4_LITE_I_n_58),
        .\LOAD_REG_GEN[18].LOAD_REG_I (AXI4_LITE_I_n_25),
        .\LOAD_REG_GEN[18].LOAD_REG_I_0 (AXI4_LITE_I_n_57),
        .\LOAD_REG_GEN[19].LOAD_REG_I (AXI4_LITE_I_n_24),
        .\LOAD_REG_GEN[19].LOAD_REG_I_0 (AXI4_LITE_I_n_56),
        .\LOAD_REG_GEN[1].LOAD_REG_I (AXI4_LITE_I_n_42),
        .\LOAD_REG_GEN[1].LOAD_REG_I_0 (AXI4_LITE_I_n_74),
        .\LOAD_REG_GEN[20].LOAD_REG_I (AXI4_LITE_I_n_23),
        .\LOAD_REG_GEN[20].LOAD_REG_I_0 (AXI4_LITE_I_n_55),
        .\LOAD_REG_GEN[21].LOAD_REG_I (AXI4_LITE_I_n_22),
        .\LOAD_REG_GEN[21].LOAD_REG_I_0 (AXI4_LITE_I_n_54),
        .\LOAD_REG_GEN[22].LOAD_REG_I (AXI4_LITE_I_n_21),
        .\LOAD_REG_GEN[22].LOAD_REG_I_0 (AXI4_LITE_I_n_53),
        .\LOAD_REG_GEN[23].LOAD_REG_I (AXI4_LITE_I_n_20),
        .\LOAD_REG_GEN[23].LOAD_REG_I_0 (AXI4_LITE_I_n_52),
        .\LOAD_REG_GEN[24].LOAD_REG_I (AXI4_LITE_I_n_19),
        .\LOAD_REG_GEN[24].LOAD_REG_I_0 (AXI4_LITE_I_n_51),
        .\LOAD_REG_GEN[25].LOAD_REG_I (AXI4_LITE_I_n_18),
        .\LOAD_REG_GEN[25].LOAD_REG_I_0 (AXI4_LITE_I_n_50),
        .\LOAD_REG_GEN[26].LOAD_REG_I (AXI4_LITE_I_n_17),
        .\LOAD_REG_GEN[26].LOAD_REG_I_0 (AXI4_LITE_I_n_49),
        .\LOAD_REG_GEN[27].LOAD_REG_I (AXI4_LITE_I_n_16),
        .\LOAD_REG_GEN[27].LOAD_REG_I_0 (AXI4_LITE_I_n_48),
        .\LOAD_REG_GEN[28].LOAD_REG_I (AXI4_LITE_I_n_15),
        .\LOAD_REG_GEN[28].LOAD_REG_I_0 (AXI4_LITE_I_n_47),
        .\LOAD_REG_GEN[29].LOAD_REG_I (AXI4_LITE_I_n_14),
        .\LOAD_REG_GEN[29].LOAD_REG_I_0 (AXI4_LITE_I_n_46),
        .\LOAD_REG_GEN[2].LOAD_REG_I (AXI4_LITE_I_n_41),
        .\LOAD_REG_GEN[2].LOAD_REG_I_0 (AXI4_LITE_I_n_73),
        .\LOAD_REG_GEN[30].LOAD_REG_I (AXI4_LITE_I_n_13),
        .\LOAD_REG_GEN[30].LOAD_REG_I_0 (AXI4_LITE_I_n_45),
        .\LOAD_REG_GEN[31].LOAD_REG_I (AXI4_LITE_I_n_12),
        .\LOAD_REG_GEN[31].LOAD_REG_I_0 (AXI4_LITE_I_n_44),
        .\LOAD_REG_GEN[3].LOAD_REG_I (AXI4_LITE_I_n_40),
        .\LOAD_REG_GEN[3].LOAD_REG_I_0 (AXI4_LITE_I_n_72),
        .\LOAD_REG_GEN[4].LOAD_REG_I (AXI4_LITE_I_n_39),
        .\LOAD_REG_GEN[4].LOAD_REG_I_0 (AXI4_LITE_I_n_71),
        .\LOAD_REG_GEN[5].LOAD_REG_I (AXI4_LITE_I_n_38),
        .\LOAD_REG_GEN[5].LOAD_REG_I_0 (AXI4_LITE_I_n_70),
        .\LOAD_REG_GEN[6].LOAD_REG_I (AXI4_LITE_I_n_37),
        .\LOAD_REG_GEN[6].LOAD_REG_I_0 (AXI4_LITE_I_n_69),
        .\LOAD_REG_GEN[7].LOAD_REG_I (AXI4_LITE_I_n_9),
        .\LOAD_REG_GEN[7].LOAD_REG_I_0 (AXI4_LITE_I_n_36),
        .\LOAD_REG_GEN[7].LOAD_REG_I_1 (AXI4_LITE_I_n_68),
        .\LOAD_REG_GEN[8].LOAD_REG_I (AXI4_LITE_I_n_35),
        .\LOAD_REG_GEN[8].LOAD_REG_I_0 (AXI4_LITE_I_n_67),
        .\LOAD_REG_GEN[9].LOAD_REG_I (AXI4_LITE_I_n_34),
        .\LOAD_REG_GEN[9].LOAD_REG_I_0 (AXI4_LITE_I_n_66),
        .READ_DONE0_I(AXI4_LITE_I_n_103),
        .READ_DONE1_I(AXI4_LITE_I_n_104),
        .\TCSR0_GENERATE[23].TCSR0_FF_I (AXI4_LITE_I_n_105),
        .\TCSR1_GENERATE[23].TCSR1_FF_I (AXI4_LITE_I_n_106),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrce({bus2ip_wrce[0],bus2ip_wrce[4]}),
        .p_4_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ),
        .p_7_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ),
        .p_8_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ),
        .pair0_Select(\TIMER_CONTROL_I/pair0_Select ),
        .read_Mux_In({read_Mux_In[20],read_Mux_In[64],read_Mux_In[65],read_Mux_In[66],read_Mux_In[67],read_Mux_In[68],read_Mux_In[69],read_Mux_In[70],read_Mux_In[71],read_Mux_In[72],read_Mux_In[73],read_Mux_In[74],read_Mux_In[75],read_Mux_In[76],read_Mux_In[77],read_Mux_In[78],read_Mux_In[79],read_Mux_In[80],read_Mux_In[81],read_Mux_In[82],read_Mux_In[83],read_Mux_In[84],read_Mux_In[128],read_Mux_In[129],read_Mux_In[130],read_Mux_In[131],read_Mux_In[132],read_Mux_In[133],read_Mux_In[134],read_Mux_In[135],read_Mux_In[136],read_Mux_In[137],read_Mux_In[138],read_Mux_In[139],read_Mux_In[140],read_Mux_In[141],read_Mux_In[142],read_Mux_In[143],read_Mux_In[144],read_Mux_In[145],read_Mux_In[146],read_Mux_In[147],read_Mux_In[148],read_Mux_In[149],read_Mux_In[150],read_Mux_In[151],read_Mux_In[152],read_Mux_In[153],read_Mux_In[154],read_Mux_In[155],read_Mux_In[156],read_Mux_In[157],read_Mux_In[158],read_Mux_In[159],read_Mux_In[160],read_Mux_In[161],read_Mux_In[162],read_Mux_In[163],read_Mux_In[164],read_Mux_In[165],read_Mux_In[166],read_Mux_In[167],read_Mux_In[168],read_Mux_In[169],read_Mux_In[170],read_Mux_In[171],read_Mux_In[172],read_Mux_In[173],read_Mux_In[174],read_Mux_In[175],read_Mux_In[176],read_Mux_In[177],read_Mux_In[178],read_Mux_In[179],read_Mux_In[180],read_Mux_In[181],read_Mux_In[182],read_Mux_In[183],read_Mux_In[184],read_Mux_In[185],read_Mux_In[186],read_Mux_In[187],read_Mux_In[188],read_Mux_In[189],read_Mux_In[190],read_Mux_In[191]}),
        .read_done1(\TIMER_CONTROL_I/read_done1 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[0] (AXI4_LITE_I_n_79),
        .\s_axi_rdata_i_reg[0]_0 (AXI4_LITE_I_n_101),
        .\s_axi_rdata_i_reg[0]_1 (AXI4_LITE_I_n_102),
        .\s_axi_rdata_i_reg[11] (AXI4_LITE_I_n_100),
        .\s_axi_rdata_i_reg[12] (AXI4_LITE_I_n_99),
        .\s_axi_rdata_i_reg[13] (AXI4_LITE_I_n_98),
        .\s_axi_rdata_i_reg[14] (AXI4_LITE_I_n_97),
        .\s_axi_rdata_i_reg[15] (AXI4_LITE_I_n_96),
        .\s_axi_rdata_i_reg[16] (AXI4_LITE_I_n_95),
        .\s_axi_rdata_i_reg[17] (AXI4_LITE_I_n_94),
        .\s_axi_rdata_i_reg[18] (AXI4_LITE_I_n_93),
        .\s_axi_rdata_i_reg[19] (AXI4_LITE_I_n_92),
        .\s_axi_rdata_i_reg[20] (AXI4_LITE_I_n_91),
        .\s_axi_rdata_i_reg[21] (AXI4_LITE_I_n_90),
        .\s_axi_rdata_i_reg[22] (AXI4_LITE_I_n_89),
        .\s_axi_rdata_i_reg[23] (AXI4_LITE_I_n_88),
        .\s_axi_rdata_i_reg[24] (AXI4_LITE_I_n_87),
        .\s_axi_rdata_i_reg[25] (AXI4_LITE_I_n_86),
        .\s_axi_rdata_i_reg[26] (AXI4_LITE_I_n_85),
        .\s_axi_rdata_i_reg[27] (AXI4_LITE_I_n_84),
        .\s_axi_rdata_i_reg[28] (AXI4_LITE_I_n_83),
        .\s_axi_rdata_i_reg[29] (AXI4_LITE_I_n_82),
        .\s_axi_rdata_i_reg[30] (AXI4_LITE_I_n_81),
        .\s_axi_rdata_i_reg[31] (AXI4_LITE_I_n_80),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(AXI4_LITE_I_n_76),
        .s_axi_rvalid_i_reg_0(AXI4_LITE_I_n_77),
        .s_axi_rvalid_i_reg_1(AXI4_LITE_I_n_78),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tc_core TC_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI4_LITE_I_n_79),
        .Bus_RNW_reg_reg_0(AXI4_LITE_I_n_76),
        .Bus_RNW_reg_reg_1(AXI4_LITE_I_n_102),
        .Bus_RNW_reg_reg_2(AXI4_LITE_I_n_77),
        .Bus_RNW_reg_reg_3(AXI4_LITE_I_n_101),
        .Bus_RNW_reg_reg_4(AXI4_LITE_I_n_78),
        .D({ip2bus_data[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data[31]}),
        .D_0(\TIMER_CONTROL_I/D ),
        .D_1(\COUNTER_0_I/D ),
        .D_2(\GEN_SECOND_TIMER.COUNTER_1_I/D ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (AXI4_LITE_I_n_105),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (AXI4_LITE_I_n_80),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (AXI4_LITE_I_n_81),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 (AXI4_LITE_I_n_82),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 (AXI4_LITE_I_n_91),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 (AXI4_LITE_I_n_92),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 (AXI4_LITE_I_n_93),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 (AXI4_LITE_I_n_94),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 (AXI4_LITE_I_n_95),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 (AXI4_LITE_I_n_96),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 (AXI4_LITE_I_n_97),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 (AXI4_LITE_I_n_98),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 (AXI4_LITE_I_n_99),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 (AXI4_LITE_I_n_42),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 (AXI4_LITE_I_n_83),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 (AXI4_LITE_I_n_41),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 (AXI4_LITE_I_n_40),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 (AXI4_LITE_I_n_39),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 (AXI4_LITE_I_n_38),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 (AXI4_LITE_I_n_37),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 (AXI4_LITE_I_n_36),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 (AXI4_LITE_I_n_35),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 (AXI4_LITE_I_n_34),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 (AXI4_LITE_I_n_33),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 (AXI4_LITE_I_n_32),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 (AXI4_LITE_I_n_84),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_30 (AXI4_LITE_I_n_31),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_31 (AXI4_LITE_I_n_30),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_32 (AXI4_LITE_I_n_29),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_33 (AXI4_LITE_I_n_28),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_34 (AXI4_LITE_I_n_27),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_35 (AXI4_LITE_I_n_26),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_36 (AXI4_LITE_I_n_25),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_37 (AXI4_LITE_I_n_24),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_38 (AXI4_LITE_I_n_23),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_39 (AXI4_LITE_I_n_22),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 (AXI4_LITE_I_n_85),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_40 (AXI4_LITE_I_n_21),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_41 (AXI4_LITE_I_n_20),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_42 (AXI4_LITE_I_n_19),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_43 (AXI4_LITE_I_n_18),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_44 (AXI4_LITE_I_n_17),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_45 (AXI4_LITE_I_n_16),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_46 (AXI4_LITE_I_n_15),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_47 (AXI4_LITE_I_n_14),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_48 (AXI4_LITE_I_n_13),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_49 (AXI4_LITE_I_n_12),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 (AXI4_LITE_I_n_86),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_50 (AXI4_LITE_I_n_103),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 (AXI4_LITE_I_n_87),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 (AXI4_LITE_I_n_88),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 (AXI4_LITE_I_n_89),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 (AXI4_LITE_I_n_90),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (AXI4_LITE_I_n_106),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (AXI4_LITE_I_n_74),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 (AXI4_LITE_I_n_73),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 (AXI4_LITE_I_n_72),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 (AXI4_LITE_I_n_63),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 (AXI4_LITE_I_n_62),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 (AXI4_LITE_I_n_61),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 (AXI4_LITE_I_n_60),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 (AXI4_LITE_I_n_59),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 (AXI4_LITE_I_n_58),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 (AXI4_LITE_I_n_57),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 (AXI4_LITE_I_n_56),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 (AXI4_LITE_I_n_55),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 (AXI4_LITE_I_n_54),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 (AXI4_LITE_I_n_71),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 (AXI4_LITE_I_n_53),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 (AXI4_LITE_I_n_52),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 (AXI4_LITE_I_n_51),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 (AXI4_LITE_I_n_50),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 (AXI4_LITE_I_n_49),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 (AXI4_LITE_I_n_48),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 (AXI4_LITE_I_n_47),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 (AXI4_LITE_I_n_46),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 (AXI4_LITE_I_n_45),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 (AXI4_LITE_I_n_44),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 (AXI4_LITE_I_n_70),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_30 (AXI4_LITE_I_n_104),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_31 (AXI4_LITE_I_n_9),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 (AXI4_LITE_I_n_69),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 (AXI4_LITE_I_n_68),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 (AXI4_LITE_I_n_67),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 (AXI4_LITE_I_n_66),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 (AXI4_LITE_I_n_65),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 (AXI4_LITE_I_n_64),
        .\INFERRED_GEN.icount_out_reg[0] ({read_Mux_In[20],read_Mux_In[64],read_Mux_In[65],read_Mux_In[66],read_Mux_In[67],read_Mux_In[68],read_Mux_In[69],read_Mux_In[70],read_Mux_In[71],read_Mux_In[72],read_Mux_In[73],read_Mux_In[74],read_Mux_In[75],read_Mux_In[76],read_Mux_In[77],read_Mux_In[78],read_Mux_In[79],read_Mux_In[80],read_Mux_In[81],read_Mux_In[82],read_Mux_In[83],read_Mux_In[84],read_Mux_In[128],read_Mux_In[129],read_Mux_In[130],read_Mux_In[131],read_Mux_In[132],read_Mux_In[133],read_Mux_In[134],read_Mux_In[135],read_Mux_In[136],read_Mux_In[137],read_Mux_In[138],read_Mux_In[139],read_Mux_In[140],read_Mux_In[141],read_Mux_In[142],read_Mux_In[143],read_Mux_In[144],read_Mux_In[145],read_Mux_In[146],read_Mux_In[147],read_Mux_In[148],read_Mux_In[149],read_Mux_In[150],read_Mux_In[151],read_Mux_In[152],read_Mux_In[153],read_Mux_In[154],read_Mux_In[155],read_Mux_In[156],read_Mux_In[157],read_Mux_In[158],read_Mux_In[159],read_Mux_In[160],read_Mux_In[161],read_Mux_In[162],read_Mux_In[163],read_Mux_In[164],read_Mux_In[165],read_Mux_In[166],read_Mux_In[167],read_Mux_In[168],read_Mux_In[169],read_Mux_In[170],read_Mux_In[171],read_Mux_In[172],read_Mux_In[173],read_Mux_In[174],read_Mux_In[175],read_Mux_In[176],read_Mux_In[177],read_Mux_In[178],read_Mux_In[179],read_Mux_In[180],read_Mux_In[181],read_Mux_In[182],read_Mux_In[183],read_Mux_In[184],read_Mux_In[185],read_Mux_In[186],read_Mux_In[187],read_Mux_In[188],read_Mux_In[189],read_Mux_In[190],read_Mux_In[191]}),
        .\LOAD_REG_GEN[20].LOAD_REG_I (AXI4_LITE_I_n_100),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_wrce({bus2ip_wrce[0],bus2ip_wrce[4]}),
        .capturetrig0(capturetrig0),
        .capturetrig1(capturetrig1),
        .freeze(freeze),
        .generateout0(generateout0),
        .generateout1(generateout1),
        .interrupt(interrupt),
        .p_4_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_4_in ),
        .p_7_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_7_in ),
        .p_8_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_8_in ),
        .pair0_Select(\TIMER_CONTROL_I/pair0_Select ),
        .pwm0(pwm0),
        .read_done1(\TIMER_CONTROL_I/read_done1 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata({s_axi_wdata[11:9],s_axi_wdata[7:0]}));
endmodule

(* CHECK_LICENSE_TYPE = "axi_timer_0,axi_timer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_timer,Vivado 2018.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_timer_0
   (capturetrig0,
    capturetrig1,
    generateout0,
    generateout1,
    pwm0,
    interrupt,
    freeze,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  input capturetrig0;
  input capturetrig1;
  output generateout0;
  output generateout1;
  output pwm0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  input freeze;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [4:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;

  wire capturetrig0;
  wire capturetrig1;
  wire freeze;
  wire generateout0;
  wire generateout1;
  wire interrupt;
  wire pwm0;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* C_COUNT_WIDTH = "32" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GEN0_ASSERT = "1'b1" *) 
  (* C_GEN1_ASSERT = "1'b1" *) 
  (* C_ONE_TIMER_ONLY = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRIG0_ASSERT = "1'b1" *) 
  (* C_TRIG1_ASSERT = "1'b1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_timer U0
       (.capturetrig0(capturetrig0),
        .capturetrig1(capturetrig1),
        .freeze(freeze),
        .generateout0(generateout0),
        .generateout1(generateout1),
        .interrupt(interrupt),
        .pwm0(pwm0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_timer_v2_0_19_counter_f
   (\LOAD_REG_GEN[0].LOAD_REG_I ,
    \INFERRED_GEN.icount_out_reg[31]_0 ,
    \LOAD_REG_GEN[1].LOAD_REG_I ,
    \LOAD_REG_GEN[2].LOAD_REG_I ,
    \LOAD_REG_GEN[3].LOAD_REG_I ,
    \LOAD_REG_GEN[4].LOAD_REG_I ,
    \LOAD_REG_GEN[5].LOAD_REG_I ,
    \LOAD_REG_GEN[6].LOAD_REG_I ,
    \LOAD_REG_GEN[7].LOAD_REG_I ,
    \LOAD_REG_GEN[8].LOAD_REG_I ,
    \LOAD_REG_GEN[9].LOAD_REG_I ,
    \LOAD_REG_GEN[10].LOAD_REG_I ,
    \LOAD_REG_GEN[11].LOAD_REG_I ,
    \LOAD_REG_GEN[12].LOAD_REG_I ,
    \LOAD_REG_GEN[13].LOAD_REG_I ,
    \LOAD_REG_GEN[14].LOAD_REG_I ,
    \LOAD_REG_GEN[15].LOAD_REG_I ,
    \LOAD_REG_GEN[16].LOAD_REG_I ,
    \LOAD_REG_GEN[17].LOAD_REG_I ,
    \LOAD_REG_GEN[18].LOAD_REG_I ,
    \LOAD_REG_GEN[19].LOAD_REG_I ,
    \LOAD_REG_GEN[20].LOAD_REG_I ,
    \LOAD_REG_GEN[21].LOAD_REG_I ,
    \LOAD_REG_GEN[22].LOAD_REG_I ,
    \LOAD_REG_GEN[23].LOAD_REG_I ,
    \LOAD_REG_GEN[24].LOAD_REG_I ,
    \LOAD_REG_GEN[25].LOAD_REG_I ,
    \LOAD_REG_GEN[26].LOAD_REG_I ,
    \LOAD_REG_GEN[27].LOAD_REG_I ,
    \LOAD_REG_GEN[28].LOAD_REG_I ,
    \LOAD_REG_GEN[29].LOAD_REG_I ,
    \LOAD_REG_GEN[30].LOAD_REG_I ,
    \INFERRED_GEN.icount_out_reg[0]_0 ,
    counter_TC,
    generateOutPre10,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[31] ,
    \s_axi_rdata_i_reg[30] ,
    \s_axi_rdata_i_reg[29] ,
    \s_axi_rdata_i_reg[28] ,
    \s_axi_rdata_i_reg[27] ,
    \s_axi_rdata_i_reg[24] ,
    \s_axi_rdata_i_reg[19] ,
    \s_axi_rdata_i_reg[18] ,
    \s_axi_rdata_i_reg[17] ,
    \s_axi_rdata_i_reg[16] ,
    \s_axi_rdata_i_reg[15] ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[26] ,
    \s_axi_rdata_i_reg[25] ,
    \s_axi_rdata_i_reg[23] ,
    \s_axi_rdata_i_reg[22] ,
    \s_axi_rdata_i_reg[21] ,
    \s_axi_rdata_i_reg[20] ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[10] ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[3] ,
    generateOutPre0_reg,
    s_axi_aclk,
    S,
    s_axi_aresetn,
    \TCSR0_GENERATE[31].TCSR0_FF_I ,
    Q,
    \INFERRED_GEN.icount_out_reg[31]_1 ,
    Bus_RNW_reg_reg,
    read_Mux_In,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1);
  output \LOAD_REG_GEN[0].LOAD_REG_I ;
  output \INFERRED_GEN.icount_out_reg[31]_0 ;
  output \LOAD_REG_GEN[1].LOAD_REG_I ;
  output \LOAD_REG_GEN[2].LOAD_REG_I ;
  output \LOAD_REG_GEN[3].LOAD_REG_I ;
  output \LOAD_REG_GEN[4].LOAD_REG_I ;
  output \LOAD_REG_GEN[5].LOAD_REG_I ;
  output \LOAD_REG_GEN[6].LOAD_REG_I ;
  output \LOAD_REG_GEN[7].LOAD_REG_I ;
  output \LOAD_REG_GEN[8].LOAD_REG_I ;
  output \LOAD_REG_GEN[9].LOAD_REG_I ;
  output \LOAD_REG_GEN[10].LOAD_REG_I ;
  output \LOAD_REG_GEN[11].LOAD_REG_I ;
  output \LOAD_REG_GEN[12].LOAD_REG_I ;
  output \LOAD_REG_GEN[13].LOAD_REG_I ;
  output \LOAD_REG_GEN[14].LOAD_REG_I ;
  output \LOAD_REG_GEN[15].LOAD_REG_I ;
  output \LOAD_REG_GEN[16].LOAD_REG_I ;
  output \LOAD_REG_GEN[17].LOAD_REG_I ;
  output \LOAD_REG_GEN[18].LOAD_REG_I ;
  output \LOAD_REG_GEN[19].LOAD_REG_I ;
  output \LOAD_REG_GEN[20].LOAD_REG_I ;
  output \LOAD_REG_GEN[21].LOAD_REG_I ;
  output \LOAD_REG_GEN[22].LOAD_REG_I ;
  output \LOAD_REG_GEN[23].LOAD_REG_I ;
  output \LOAD_REG_GEN[24].LOAD_REG_I ;
  output \LOAD_REG_GEN[25].LOAD_REG_I ;
  output \LOAD_REG_GEN[26].LOAD_REG_I ;
  output \LOAD_REG_GEN[27].LOAD_REG_I ;
  output \LOAD_REG_GEN[28].LOAD_REG_I ;
  output \LOAD_REG_GEN[29].LOAD_REG_I ;
  output \LOAD_REG_GEN[30].LOAD_REG_I ;
  output \INFERRED_GEN.icount_out_reg[0]_0 ;
  output [0:0]counter_TC;
  output generateOutPre10;
  output \s_axi_rdata_i_reg[0] ;
  output \s_axi_rdata_i_reg[31] ;
  output \s_axi_rdata_i_reg[30] ;
  output \s_axi_rdata_i_reg[29] ;
  output \s_axi_rdata_i_reg[28] ;
  output \s_axi_rdata_i_reg[27] ;
  output \s_axi_rdata_i_reg[24] ;
  output \s_axi_rdata_i_reg[19] ;
  output \s_axi_rdata_i_reg[18] ;
  output \s_axi_rdata_i_reg[17] ;
  output \s_axi_rdata_i_reg[16] ;
  output \s_axi_rdata_i_reg[15] ;
  output \s_axi_rdata_i_reg[14] ;
  output \s_axi_rdata_i_reg[12] ;
  output \s_axi_rdata_i_reg[11] ;
  output \s_axi_rdata_i_reg[8] ;
  output \s_axi_rdata_i_reg[7] ;
  output \s_axi_rdata_i_reg[6] ;
  output \s_axi_rdata_i_reg[2] ;
  output \s_axi_rdata_i_reg[1] ;
  output \s_axi_rdata_i_reg[26] ;
  output \s_axi_rdata_i_reg[25] ;
  output \s_axi_rdata_i_reg[23] ;
  output \s_axi_rdata_i_reg[22] ;
  output \s_axi_rdata_i_reg[21] ;
  output \s_axi_rdata_i_reg[20] ;
  output \s_axi_rdata_i_reg[13] ;
  output \s_axi_rdata_i_reg[10] ;
  output \s_axi_rdata_i_reg[9] ;
  output \s_axi_rdata_i_reg[5] ;
  output \s_axi_rdata_i_reg[4] ;
  output \s_axi_rdata_i_reg[3] ;
  input generateOutPre0_reg;
  input s_axi_aclk;
  input [0:0]S;
  input s_axi_aresetn;
  input \TCSR0_GENERATE[31].TCSR0_FF_I ;
  input [0:0]Q;
  input [31:0]\INFERRED_GEN.icount_out_reg[31]_1 ;
  input Bus_RNW_reg_reg;
  input [31:0]read_Mux_In;
  input Bus_RNW_reg_reg_0;
  input Bus_RNW_reg_reg_1;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire \INFERRED_GEN.icount_out[0]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[10]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[11]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[12]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[13]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[14]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[15]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[16]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[17]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[18]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[19]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[1]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[20]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[21]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[22]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[23]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[24]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[25]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[26]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[27]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[28]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[29]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[2]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[30]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_2_n_0 ;
  wire \INFERRED_GEN.icount_out[32]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[3]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[4]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[5]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[6]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[7]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[8]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out[9]_i_1_n_0 ;
  wire \INFERRED_GEN.icount_out_reg[0]_0 ;
  wire \INFERRED_GEN.icount_out_reg[31]_0 ;
  wire [31:0]\INFERRED_GEN.icount_out_reg[31]_1 ;
  wire \LOAD_REG_GEN[0].LOAD_REG_I ;
  wire \LOAD_REG_GEN[10].LOAD_REG_I ;
  wire \LOAD_REG_GEN[11].LOAD_REG_I ;
  wire \LOAD_REG_GEN[12].LOAD_REG_I ;
  wire \LOAD_REG_GEN[13].LOAD_REG_I ;
  wire \LOAD_REG_GEN[14].LOAD_REG_I ;
  wire \LOAD_REG_GEN[15].LOAD_REG_I ;
  wire \LOAD_REG_GEN[16].LOAD_REG_I ;
  wire \LOAD_REG_GEN[17].LOAD_REG_I ;
  wire \LOAD_REG_GEN[18].LOAD_REG_I ;
  wire \LOAD_REG_GEN[19].LOAD_REG_I ;
  wire \LOAD_REG_GEN[1].LOAD_REG_I ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I ;
  wire \LOAD_REG_GEN[21].LOAD_REG_I ;
  wire \LOAD_REG_GEN[22].LOAD_REG_I ;
  wire \LOAD_REG_GEN[23].LOAD_REG_I ;
  wire \LOAD_REG_GEN[24].LOAD_REG_I ;
  wire \LOAD_REG_GEN[25].LOAD_REG_I ;
  wire \LOAD_REG_GEN[26].LOAD_REG_I ;
  wire \LOAD_REG_GEN[27].LOAD_REG_I ;
  wire \LOAD_REG_GEN[28].LOAD_REG_I ;
  wire \LOAD_REG_GEN[29].LOAD_REG_I ;
  wire \LOAD_REG_GEN[2].LOAD_REG_I ;
  wire \LOAD_REG_GEN[30].LOAD_REG_I ;
  wire \LOAD_REG_GEN[3].LOAD_REG_I ;
  wire \LOAD_REG_GEN[4].LOAD_REG_I ;
  wire \LOAD_REG_GEN[5].LOAD_REG_I ;
  wire \LOAD_REG_GEN[6].LOAD_REG_I ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I ;
  wire \LOAD_REG_GEN[8].LOAD_REG_I ;
  wire \LOAD_REG_GEN[9].LOAD_REG_I ;
  wire [0:0]Q;
  wire [0:0]S;
  wire \TCSR0_GENERATE[31].TCSR0_FF_I ;
  wire [0:0]counter_TC;
  wire generateOutPre0_reg;
  wire generateOutPre10;
  wire icount_out0_carry__0_i_1_n_0;
  wire icount_out0_carry__0_i_2_n_0;
  wire icount_out0_carry__0_i_3_n_0;
  wire icount_out0_carry__0_i_4_n_0;
  wire icount_out0_carry__0_n_0;
  wire icount_out0_carry__0_n_1;
  wire icount_out0_carry__0_n_2;
  wire icount_out0_carry__0_n_3;
  wire icount_out0_carry__0_n_4;
  wire icount_out0_carry__0_n_5;
  wire icount_out0_carry__0_n_6;
  wire icount_out0_carry__0_n_7;
  wire icount_out0_carry__1_i_1_n_0;
  wire icount_out0_carry__1_i_2_n_0;
  wire icount_out0_carry__1_i_3_n_0;
  wire icount_out0_carry__1_i_4_n_0;
  wire icount_out0_carry__1_n_0;
  wire icount_out0_carry__1_n_1;
  wire icount_out0_carry__1_n_2;
  wire icount_out0_carry__1_n_3;
  wire icount_out0_carry__1_n_4;
  wire icount_out0_carry__1_n_5;
  wire icount_out0_carry__1_n_6;
  wire icount_out0_carry__1_n_7;
  wire icount_out0_carry__2_i_1_n_0;
  wire icount_out0_carry__2_i_2_n_0;
  wire icount_out0_carry__2_i_3_n_0;
  wire icount_out0_carry__2_i_4_n_0;
  wire icount_out0_carry__2_n_0;
  wire icount_out0_carry__2_n_1;
  wire icount_out0_carry__2_n_2;
  wire icount_out0_carry__2_n_3;
  wire icount_out0_carry__2_n_4;
  wire icount_out0_carry__2_n_5;
  wire icount_out0_carry__2_n_6;
  wire icount_out0_carry__2_n_7;
  wire icount_out0_carry__3_i_1_n_0;
  wire icount_out0_carry__3_i_2_n_0;
  wire icount_out0_carry__3_i_3_n_0;
  wire icount_out0_carry__3_i_4_n_0;
  wire icount_out0_carry__3_n_0;
  wire icount_out0_carry__3_n_1;
  wire icount_out0_carry__3_n_2;
  wire icount_out0_carry__3_n_3;
  wire icount_out0_carry__3_n_4;
  wire icount_out0_carry__3_n_5;
  wire icount_out0_carry__3_n_6;
  wire icount_out0_carry__3_n_7;
  wire icount_out0_carry__4_i_1_n_0;
  wire icount_out0_carry__4_i_2_n_0;
  wire icount_out0_carry__4_i_3_n_0;
  wire icount_out0_carry__4_i_4_n_0;
  wire icount_out0_carry__4_n_0;
  wire icount_out0_carry__4_n_1;
  wire icount_out0_carry__4_n_2;
  wire icount_out0_carry__4_n_3;
  wire icount_out0_carry__4_n_4;
  wire icount_out0_carry__4_n_5;
  wire icount_out0_carry__4_n_6;
  wire icount_out0_carry__4_n_7;
  wire icount_out0_carry__5_i_1_n_0;
  wire icount_out0_carry__5_i_2_n_0;
  wire icount_out0_carry__5_i_3_n_0;
  wire icount_out0_carry__5_i_4_n_0;
  wire icount_out0_carry__5_n_0;
  wire icount_out0_carry__5_n_1;
  wire icount_out0_carry__5_n_2;
  wire icount_out0_carry__5_n_3;
  wire icount_out0_carry__5_n_4;
  wire icount_out0_carry__5_n_5;
  wire icount_out0_carry__5_n_6;
  wire icount_out0_carry__5_n_7;
  wire icount_out0_carry__6_i_1_n_0;
  wire icount_out0_carry__6_i_2_n_0;
  wire icount_out0_carry__6_i_3_n_0;
  wire icount_out0_carry__6_i_4_n_0;
  wire icount_out0_carry__6_n_1;
  wire icount_out0_carry__6_n_2;
  wire icount_out0_carry__6_n_3;
  wire icount_out0_carry__6_n_4;
  wire icount_out0_carry__6_n_5;
  wire icount_out0_carry__6_n_6;
  wire icount_out0_carry__6_n_7;
  wire icount_out0_carry_i_1_n_0;
  wire icount_out0_carry_i_2_n_0;
  wire icount_out0_carry_i_3_n_0;
  wire icount_out0_carry_i_4_n_0;
  wire icount_out0_carry_n_0;
  wire icount_out0_carry_n_1;
  wire icount_out0_carry_n_2;
  wire icount_out0_carry_n_3;
  wire icount_out0_carry_n_4;
  wire icount_out0_carry_n_5;
  wire icount_out0_carry_n_6;
  wire icount_out0_carry_n_7;
  wire [31:0]read_Mux_In;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[10] ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[14] ;
  wire \s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[16] ;
  wire \s_axi_rdata_i_reg[17] ;
  wire \s_axi_rdata_i_reg[18] ;
  wire \s_axi_rdata_i_reg[19] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[20] ;
  wire \s_axi_rdata_i_reg[21] ;
  wire \s_axi_rdata_i_reg[22] ;
  wire \s_axi_rdata_i_reg[23] ;
  wire \s_axi_rdata_i_reg[24] ;
  wire \s_axi_rdata_i_reg[25] ;
  wire \s_axi_rdata_i_reg[26] ;
  wire \s_axi_rdata_i_reg[27] ;
  wire \s_axi_rdata_i_reg[28] ;
  wire \s_axi_rdata_i_reg[29] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[30] ;
  wire \s_axi_rdata_i_reg[31] ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[8] ;
  wire \s_axi_rdata_i_reg[9] ;
  wire [3:3]NLW_icount_out0_carry__6_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [31]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[31]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[0].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[31] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\LOAD_REG_GEN[10].LOAD_REG_I ),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [21]),
        .I3(Bus_RNW_reg_reg),
        .I4(read_Mux_In[21]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[21] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\LOAD_REG_GEN[11].LOAD_REG_I ),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [20]),
        .I3(Bus_RNW_reg_reg),
        .I4(read_Mux_In[20]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[20] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [19]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[19]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[12].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[19] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [18]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[18]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[13].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[18] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [17]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[17]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[14].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[17] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [16]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[15].LOAD_REG_I ),
        .I3(Bus_RNW_reg_reg_1),
        .I4(read_Mux_In[16]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[16] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [15]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[15]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[16].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[15] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [14]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[17].LOAD_REG_I ),
        .I3(Bus_RNW_reg_reg_1),
        .I4(read_Mux_In[14]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[14] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\LOAD_REG_GEN[18].LOAD_REG_I ),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [13]),
        .I3(Bus_RNW_reg_reg),
        .I4(read_Mux_In[13]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[13] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [12]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[12]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[19].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[12] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [30]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[1].LOAD_REG_I ),
        .I3(Bus_RNW_reg_reg_1),
        .I4(read_Mux_In[30]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[30] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [11]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[11]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[20].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[11] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[10]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [10]),
        .I3(Bus_RNW_reg_reg),
        .I4(\LOAD_REG_GEN[21].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[10] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\LOAD_REG_GEN[22].LOAD_REG_I ),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [9]),
        .I3(Bus_RNW_reg_reg),
        .I4(read_Mux_In[9]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[9] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [8]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[8]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[23].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[8] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [7]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[7]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[24].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[7] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [6]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[6]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[25].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[6] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[5]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\LOAD_REG_GEN[26].LOAD_REG_I ),
        .I3(Bus_RNW_reg_reg_1),
        .I4(\INFERRED_GEN.icount_out_reg[31]_1 [5]),
        .I5(Bus_RNW_reg_reg),
        .O(\s_axi_rdata_i_reg[5] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[4]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\LOAD_REG_GEN[27].LOAD_REG_I ),
        .I3(Bus_RNW_reg_reg_1),
        .I4(\INFERRED_GEN.icount_out_reg[31]_1 [4]),
        .I5(Bus_RNW_reg_reg),
        .O(\s_axi_rdata_i_reg[4] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[3]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [3]),
        .I3(Bus_RNW_reg_reg),
        .I4(\LOAD_REG_GEN[28].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[3] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [2]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[2]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[29].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[2] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [29]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[2].LOAD_REG_I ),
        .I3(Bus_RNW_reg_reg_1),
        .I4(read_Mux_In[29]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[29] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [1]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[1]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[30].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[1] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [0]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[0]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\INFERRED_GEN.icount_out_reg[0]_0 ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[0] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [28]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[28]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[3].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[28] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [27]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[27]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[4].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[27] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\LOAD_REG_GEN[5].LOAD_REG_I ),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [26]),
        .I3(Bus_RNW_reg_reg),
        .I4(read_Mux_In[26]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[26] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\LOAD_REG_GEN[6].LOAD_REG_I ),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [25]),
        .I3(Bus_RNW_reg_reg),
        .I4(read_Mux_In[25]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[25] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[31]_1 [24]),
        .I1(Bus_RNW_reg_reg),
        .I2(read_Mux_In[24]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\LOAD_REG_GEN[7].LOAD_REG_I ),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[24] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\LOAD_REG_GEN[8].LOAD_REG_I ),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [23]),
        .I3(Bus_RNW_reg_reg),
        .I4(read_Mux_In[23]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[23] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\LOAD_REG_GEN[9].LOAD_REG_I ),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\INFERRED_GEN.icount_out_reg[31]_1 [22]),
        .I3(Bus_RNW_reg_reg),
        .I4(read_Mux_In[22]),
        .I5(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i_reg[22] ));
  LUT1 #(
    .INIT(2'h1)) 
    GenerateOut0_i_1
       (.I0(s_axi_aresetn),
        .O(\INFERRED_GEN.icount_out_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \INFERRED_GEN.icount_out[0]_i_1 
       (.I0(read_Mux_In[0]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(\INFERRED_GEN.icount_out_reg[0]_0 ),
        .O(\INFERRED_GEN.icount_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[10]_i_1 
       (.I0(read_Mux_In[10]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__1_n_6),
        .O(\INFERRED_GEN.icount_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[11]_i_1 
       (.I0(read_Mux_In[11]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__1_n_5),
        .O(\INFERRED_GEN.icount_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[12]_i_1 
       (.I0(read_Mux_In[12]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__1_n_4),
        .O(\INFERRED_GEN.icount_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[13]_i_1 
       (.I0(read_Mux_In[13]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__2_n_7),
        .O(\INFERRED_GEN.icount_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[14]_i_1 
       (.I0(read_Mux_In[14]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__2_n_6),
        .O(\INFERRED_GEN.icount_out[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[15]_i_1 
       (.I0(read_Mux_In[15]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__2_n_5),
        .O(\INFERRED_GEN.icount_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[16]_i_1 
       (.I0(read_Mux_In[16]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__2_n_4),
        .O(\INFERRED_GEN.icount_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[17]_i_1 
       (.I0(read_Mux_In[17]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__3_n_7),
        .O(\INFERRED_GEN.icount_out[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[18]_i_1 
       (.I0(read_Mux_In[18]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__3_n_6),
        .O(\INFERRED_GEN.icount_out[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[19]_i_1 
       (.I0(read_Mux_In[19]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__3_n_5),
        .O(\INFERRED_GEN.icount_out[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[1]_i_1 
       (.I0(read_Mux_In[1]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry_n_7),
        .O(\INFERRED_GEN.icount_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[20]_i_1 
       (.I0(read_Mux_In[20]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__3_n_4),
        .O(\INFERRED_GEN.icount_out[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[21]_i_1 
       (.I0(read_Mux_In[21]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__4_n_7),
        .O(\INFERRED_GEN.icount_out[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[22]_i_1 
       (.I0(read_Mux_In[22]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__4_n_6),
        .O(\INFERRED_GEN.icount_out[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[23]_i_1 
       (.I0(read_Mux_In[23]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__4_n_5),
        .O(\INFERRED_GEN.icount_out[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[24]_i_1 
       (.I0(read_Mux_In[24]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__4_n_4),
        .O(\INFERRED_GEN.icount_out[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[25]_i_1 
       (.I0(read_Mux_In[25]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__5_n_7),
        .O(\INFERRED_GEN.icount_out[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[26]_i_1 
       (.I0(read_Mux_In[26]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__5_n_6),
        .O(\INFERRED_GEN.icount_out[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[27]_i_1 
       (.I0(read_Mux_In[27]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__5_n_5),
        .O(\INFERRED_GEN.icount_out[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[28]_i_1 
       (.I0(read_Mux_In[28]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__5_n_4),
        .O(\INFERRED_GEN.icount_out[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[29]_i_1 
       (.I0(read_Mux_In[29]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__6_n_7),
        .O(\INFERRED_GEN.icount_out[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[2]_i_1 
       (.I0(read_Mux_In[2]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry_n_6),
        .O(\INFERRED_GEN.icount_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[30]_i_1 
       (.I0(read_Mux_In[30]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__6_n_6),
        .O(\INFERRED_GEN.icount_out[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[31]_i_2 
       (.I0(read_Mux_In[31]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__6_n_5),
        .O(\INFERRED_GEN.icount_out[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \INFERRED_GEN.icount_out[32]_i_1 
       (.I0(icount_out0_carry__6_n_4),
        .I1(generateOutPre0_reg),
        .I2(counter_TC),
        .I3(s_axi_aresetn),
        .I4(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .O(\INFERRED_GEN.icount_out[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[3]_i_1 
       (.I0(read_Mux_In[3]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry_n_5),
        .O(\INFERRED_GEN.icount_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[4]_i_1 
       (.I0(read_Mux_In[4]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry_n_4),
        .O(\INFERRED_GEN.icount_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[5]_i_1 
       (.I0(read_Mux_In[5]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__0_n_7),
        .O(\INFERRED_GEN.icount_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[6]_i_1 
       (.I0(read_Mux_In[6]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__0_n_6),
        .O(\INFERRED_GEN.icount_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[7]_i_1 
       (.I0(read_Mux_In[7]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__0_n_5),
        .O(\INFERRED_GEN.icount_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[8]_i_1 
       (.I0(read_Mux_In[8]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__0_n_4),
        .O(\INFERRED_GEN.icount_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[9]_i_1 
       (.I0(read_Mux_In[9]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__1_n_7),
        .O(\INFERRED_GEN.icount_out[9]_i_1_n_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[0]_i_1_n_0 ),
        .Q(\INFERRED_GEN.icount_out_reg[0]_0 ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[10] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[10]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[21].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[11] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[11]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[20].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[12] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[12]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[19].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[13] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[13]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[18].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[14] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[14]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[17].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[15] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[15]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[16].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[16] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[16]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[15].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[17] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[17]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[14].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[18] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[18]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[13].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[19] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[19]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[12].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[1]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[30].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[20] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[20]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[11].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[21] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[21]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[10].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[22] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[22]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[9].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[23] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[23]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[8].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[24] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[24]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[7].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[25] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[25]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[6].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[26] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[26]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[5].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[27] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[27]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[4].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[28] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[28]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[3].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[29] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[29]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[2].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[2]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[29].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[30] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[30]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[1].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[31] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[31]_i_2_n_0 ),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[32] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.icount_out[32]_i_1_n_0 ),
        .Q(counter_TC),
        .R(1'b0));
  FDRE \INFERRED_GEN.icount_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[3]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[28].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[4]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[27].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[5]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[26].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[6]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[25].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[7]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[24].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[8]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[23].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  FDRE \INFERRED_GEN.icount_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(generateOutPre0_reg),
        .D(\INFERRED_GEN.icount_out[9]_i_1_n_0 ),
        .Q(\LOAD_REG_GEN[22].LOAD_REG_I ),
        .R(\INFERRED_GEN.icount_out_reg[31]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    generateOutPre1_i_1
       (.I0(counter_TC),
        .I1(Q),
        .O(generateOutPre10));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry
       (.CI(1'b0),
        .CO({icount_out0_carry_n_0,icount_out0_carry_n_1,icount_out0_carry_n_2,icount_out0_carry_n_3}),
        .CYINIT(\INFERRED_GEN.icount_out_reg[0]_0 ),
        .DI({\LOAD_REG_GEN[28].LOAD_REG_I ,\LOAD_REG_GEN[29].LOAD_REG_I ,\LOAD_REG_GEN[30].LOAD_REG_I ,icount_out0_carry_i_1_n_0}),
        .O({icount_out0_carry_n_4,icount_out0_carry_n_5,icount_out0_carry_n_6,icount_out0_carry_n_7}),
        .S({icount_out0_carry_i_2_n_0,icount_out0_carry_i_3_n_0,icount_out0_carry_i_4_n_0,S}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__0
       (.CI(icount_out0_carry_n_0),
        .CO({icount_out0_carry__0_n_0,icount_out0_carry__0_n_1,icount_out0_carry__0_n_2,icount_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\LOAD_REG_GEN[24].LOAD_REG_I ,\LOAD_REG_GEN[25].LOAD_REG_I ,\LOAD_REG_GEN[26].LOAD_REG_I ,\LOAD_REG_GEN[27].LOAD_REG_I }),
        .O({icount_out0_carry__0_n_4,icount_out0_carry__0_n_5,icount_out0_carry__0_n_6,icount_out0_carry__0_n_7}),
        .S({icount_out0_carry__0_i_1_n_0,icount_out0_carry__0_i_2_n_0,icount_out0_carry__0_i_3_n_0,icount_out0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__0_i_1
       (.I0(\LOAD_REG_GEN[24].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[23].LOAD_REG_I ),
        .O(icount_out0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__0_i_2
       (.I0(\LOAD_REG_GEN[25].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[24].LOAD_REG_I ),
        .O(icount_out0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__0_i_3
       (.I0(\LOAD_REG_GEN[26].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[25].LOAD_REG_I ),
        .O(icount_out0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__0_i_4
       (.I0(\LOAD_REG_GEN[27].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[26].LOAD_REG_I ),
        .O(icount_out0_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__1
       (.CI(icount_out0_carry__0_n_0),
        .CO({icount_out0_carry__1_n_0,icount_out0_carry__1_n_1,icount_out0_carry__1_n_2,icount_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\LOAD_REG_GEN[20].LOAD_REG_I ,\LOAD_REG_GEN[21].LOAD_REG_I ,\LOAD_REG_GEN[22].LOAD_REG_I ,\LOAD_REG_GEN[23].LOAD_REG_I }),
        .O({icount_out0_carry__1_n_4,icount_out0_carry__1_n_5,icount_out0_carry__1_n_6,icount_out0_carry__1_n_7}),
        .S({icount_out0_carry__1_i_1_n_0,icount_out0_carry__1_i_2_n_0,icount_out0_carry__1_i_3_n_0,icount_out0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__1_i_1
       (.I0(\LOAD_REG_GEN[20].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[19].LOAD_REG_I ),
        .O(icount_out0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__1_i_2
       (.I0(\LOAD_REG_GEN[21].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[20].LOAD_REG_I ),
        .O(icount_out0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__1_i_3
       (.I0(\LOAD_REG_GEN[22].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[21].LOAD_REG_I ),
        .O(icount_out0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__1_i_4
       (.I0(\LOAD_REG_GEN[23].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[22].LOAD_REG_I ),
        .O(icount_out0_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__2
       (.CI(icount_out0_carry__1_n_0),
        .CO({icount_out0_carry__2_n_0,icount_out0_carry__2_n_1,icount_out0_carry__2_n_2,icount_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\LOAD_REG_GEN[16].LOAD_REG_I ,\LOAD_REG_GEN[17].LOAD_REG_I ,\LOAD_REG_GEN[18].LOAD_REG_I ,\LOAD_REG_GEN[19].LOAD_REG_I }),
        .O({icount_out0_carry__2_n_4,icount_out0_carry__2_n_5,icount_out0_carry__2_n_6,icount_out0_carry__2_n_7}),
        .S({icount_out0_carry__2_i_1_n_0,icount_out0_carry__2_i_2_n_0,icount_out0_carry__2_i_3_n_0,icount_out0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__2_i_1
       (.I0(\LOAD_REG_GEN[16].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[15].LOAD_REG_I ),
        .O(icount_out0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__2_i_2
       (.I0(\LOAD_REG_GEN[17].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[16].LOAD_REG_I ),
        .O(icount_out0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__2_i_3
       (.I0(\LOAD_REG_GEN[18].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[17].LOAD_REG_I ),
        .O(icount_out0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__2_i_4
       (.I0(\LOAD_REG_GEN[19].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[18].LOAD_REG_I ),
        .O(icount_out0_carry__2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__3
       (.CI(icount_out0_carry__2_n_0),
        .CO({icount_out0_carry__3_n_0,icount_out0_carry__3_n_1,icount_out0_carry__3_n_2,icount_out0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\LOAD_REG_GEN[12].LOAD_REG_I ,\LOAD_REG_GEN[13].LOAD_REG_I ,\LOAD_REG_GEN[14].LOAD_REG_I ,\LOAD_REG_GEN[15].LOAD_REG_I }),
        .O({icount_out0_carry__3_n_4,icount_out0_carry__3_n_5,icount_out0_carry__3_n_6,icount_out0_carry__3_n_7}),
        .S({icount_out0_carry__3_i_1_n_0,icount_out0_carry__3_i_2_n_0,icount_out0_carry__3_i_3_n_0,icount_out0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__3_i_1
       (.I0(\LOAD_REG_GEN[12].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[11].LOAD_REG_I ),
        .O(icount_out0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__3_i_2
       (.I0(\LOAD_REG_GEN[13].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[12].LOAD_REG_I ),
        .O(icount_out0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__3_i_3
       (.I0(\LOAD_REG_GEN[14].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[13].LOAD_REG_I ),
        .O(icount_out0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__3_i_4
       (.I0(\LOAD_REG_GEN[15].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[14].LOAD_REG_I ),
        .O(icount_out0_carry__3_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__4
       (.CI(icount_out0_carry__3_n_0),
        .CO({icount_out0_carry__4_n_0,icount_out0_carry__4_n_1,icount_out0_carry__4_n_2,icount_out0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\LOAD_REG_GEN[8].LOAD_REG_I ,\LOAD_REG_GEN[9].LOAD_REG_I ,\LOAD_REG_GEN[10].LOAD_REG_I ,\LOAD_REG_GEN[11].LOAD_REG_I }),
        .O({icount_out0_carry__4_n_4,icount_out0_carry__4_n_5,icount_out0_carry__4_n_6,icount_out0_carry__4_n_7}),
        .S({icount_out0_carry__4_i_1_n_0,icount_out0_carry__4_i_2_n_0,icount_out0_carry__4_i_3_n_0,icount_out0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__4_i_1
       (.I0(\LOAD_REG_GEN[8].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[7].LOAD_REG_I ),
        .O(icount_out0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__4_i_2
       (.I0(\LOAD_REG_GEN[9].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[8].LOAD_REG_I ),
        .O(icount_out0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__4_i_3
       (.I0(\LOAD_REG_GEN[10].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[9].LOAD_REG_I ),
        .O(icount_out0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__4_i_4
       (.I0(\LOAD_REG_GEN[11].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[10].LOAD_REG_I ),
        .O(icount_out0_carry__4_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__5
       (.CI(icount_out0_carry__4_n_0),
        .CO({icount_out0_carry__5_n_0,icount_out0_carry__5_n_1,icount_out0_carry__5_n_2,icount_out0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\LOAD_REG_GEN[4].LOAD_REG_I ,\LOAD_REG_GEN[5].LOAD_REG_I ,\LOAD_REG_GEN[6].LOAD_REG_I ,\LOAD_REG_GEN[7].LOAD_REG_I }),
        .O({icount_out0_carry__5_n_4,icount_out0_carry__5_n_5,icount_out0_carry__5_n_6,icount_out0_carry__5_n_7}),
        .S({icount_out0_carry__5_i_1_n_0,icount_out0_carry__5_i_2_n_0,icount_out0_carry__5_i_3_n_0,icount_out0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__5_i_1
       (.I0(\LOAD_REG_GEN[4].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[3].LOAD_REG_I ),
        .O(icount_out0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__5_i_2
       (.I0(\LOAD_REG_GEN[5].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[4].LOAD_REG_I ),
        .O(icount_out0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__5_i_3
       (.I0(\LOAD_REG_GEN[6].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[5].LOAD_REG_I ),
        .O(icount_out0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__5_i_4
       (.I0(\LOAD_REG_GEN[7].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[6].LOAD_REG_I ),
        .O(icount_out0_carry__5_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__6
       (.CI(icount_out0_carry__5_n_0),
        .CO({NLW_icount_out0_carry__6_CO_UNCONNECTED[3],icount_out0_carry__6_n_1,icount_out0_carry__6_n_2,icount_out0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\LOAD_REG_GEN[1].LOAD_REG_I ,\LOAD_REG_GEN[2].LOAD_REG_I ,\LOAD_REG_GEN[3].LOAD_REG_I }),
        .O({icount_out0_carry__6_n_4,icount_out0_carry__6_n_5,icount_out0_carry__6_n_6,icount_out0_carry__6_n_7}),
        .S({icount_out0_carry__6_i_1_n_0,icount_out0_carry__6_i_2_n_0,icount_out0_carry__6_i_3_n_0,icount_out0_carry__6_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    icount_out0_carry__6_i_1
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I ),
        .O(icount_out0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__6_i_2
       (.I0(\LOAD_REG_GEN[1].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I ),
        .O(icount_out0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__6_i_3
       (.I0(\LOAD_REG_GEN[2].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[1].LOAD_REG_I ),
        .O(icount_out0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__6_i_4
       (.I0(\LOAD_REG_GEN[3].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[2].LOAD_REG_I ),
        .O(icount_out0_carry__6_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    icount_out0_carry_i_1
       (.I0(\LOAD_REG_GEN[30].LOAD_REG_I ),
        .O(icount_out0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry_i_2
       (.I0(\LOAD_REG_GEN[28].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[27].LOAD_REG_I ),
        .O(icount_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry_i_3
       (.I0(\LOAD_REG_GEN[29].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[28].LOAD_REG_I ),
        .O(icount_out0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry_i_4
       (.I0(\LOAD_REG_GEN[30].LOAD_REG_I ),
        .I1(\LOAD_REG_GEN[29].LOAD_REG_I ),
        .O(icount_out0_carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "axi_timer_v2_0_19_counter_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_timer_v2_0_19_counter_f_3
   (\LOAD_REG_GEN[0].LOAD_REG_I ,
    counter_TC,
    generateOutPre00,
    s_axi_aresetn_0,
    \TCSR0_GENERATE[20].TCSR0_FF_I ,
    s_axi_aclk,
    S,
    s_axi_aresetn,
    \TCSR0_GENERATE[31].TCSR0_FF_I ,
    Q,
    read_Mux_In,
    \LOAD_REG_GEN[0].LOAD_REG_I_0 );
  output [31:0]\LOAD_REG_GEN[0].LOAD_REG_I ;
  output [0:0]counter_TC;
  output generateOutPre00;
  input s_axi_aresetn_0;
  input \TCSR0_GENERATE[20].TCSR0_FF_I ;
  input s_axi_aclk;
  input [0:0]S;
  input s_axi_aresetn;
  input \TCSR0_GENERATE[31].TCSR0_FF_I ;
  input [0:0]Q;
  input [10:0]read_Mux_In;
  input [20:0]\LOAD_REG_GEN[0].LOAD_REG_I_0 ;

  wire \INFERRED_GEN.icount_out[32]_i_1__0_n_0 ;
  wire [31:0]\LOAD_REG_GEN[0].LOAD_REG_I ;
  wire [20:0]\LOAD_REG_GEN[0].LOAD_REG_I_0 ;
  wire [0:0]Q;
  wire [0:0]S;
  wire \TCSR0_GENERATE[20].TCSR0_FF_I ;
  wire \TCSR0_GENERATE[31].TCSR0_FF_I ;
  wire [0:0]counter_TC;
  wire generateOutPre00;
  wire icount_out0_carry__0_i_1__0_n_0;
  wire icount_out0_carry__0_i_2__0_n_0;
  wire icount_out0_carry__0_i_3__0_n_0;
  wire icount_out0_carry__0_i_4__0_n_0;
  wire icount_out0_carry__0_n_0;
  wire icount_out0_carry__0_n_1;
  wire icount_out0_carry__0_n_2;
  wire icount_out0_carry__0_n_3;
  wire icount_out0_carry__0_n_4;
  wire icount_out0_carry__0_n_5;
  wire icount_out0_carry__0_n_6;
  wire icount_out0_carry__0_n_7;
  wire icount_out0_carry__1_i_1__0_n_0;
  wire icount_out0_carry__1_i_2__0_n_0;
  wire icount_out0_carry__1_i_3__0_n_0;
  wire icount_out0_carry__1_i_4__0_n_0;
  wire icount_out0_carry__1_n_0;
  wire icount_out0_carry__1_n_1;
  wire icount_out0_carry__1_n_2;
  wire icount_out0_carry__1_n_3;
  wire icount_out0_carry__1_n_4;
  wire icount_out0_carry__1_n_5;
  wire icount_out0_carry__1_n_6;
  wire icount_out0_carry__1_n_7;
  wire icount_out0_carry__2_i_1__0_n_0;
  wire icount_out0_carry__2_i_2__0_n_0;
  wire icount_out0_carry__2_i_3__0_n_0;
  wire icount_out0_carry__2_i_4__0_n_0;
  wire icount_out0_carry__2_n_0;
  wire icount_out0_carry__2_n_1;
  wire icount_out0_carry__2_n_2;
  wire icount_out0_carry__2_n_3;
  wire icount_out0_carry__2_n_4;
  wire icount_out0_carry__2_n_5;
  wire icount_out0_carry__2_n_6;
  wire icount_out0_carry__2_n_7;
  wire icount_out0_carry__3_i_1__0_n_0;
  wire icount_out0_carry__3_i_2__0_n_0;
  wire icount_out0_carry__3_i_3__0_n_0;
  wire icount_out0_carry__3_i_4__0_n_0;
  wire icount_out0_carry__3_n_0;
  wire icount_out0_carry__3_n_1;
  wire icount_out0_carry__3_n_2;
  wire icount_out0_carry__3_n_3;
  wire icount_out0_carry__3_n_4;
  wire icount_out0_carry__3_n_5;
  wire icount_out0_carry__3_n_6;
  wire icount_out0_carry__3_n_7;
  wire icount_out0_carry__4_i_1__0_n_0;
  wire icount_out0_carry__4_i_2__0_n_0;
  wire icount_out0_carry__4_i_3__0_n_0;
  wire icount_out0_carry__4_i_4__0_n_0;
  wire icount_out0_carry__4_n_0;
  wire icount_out0_carry__4_n_1;
  wire icount_out0_carry__4_n_2;
  wire icount_out0_carry__4_n_3;
  wire icount_out0_carry__4_n_4;
  wire icount_out0_carry__4_n_5;
  wire icount_out0_carry__4_n_6;
  wire icount_out0_carry__4_n_7;
  wire icount_out0_carry__5_i_1__0_n_0;
  wire icount_out0_carry__5_i_2__0_n_0;
  wire icount_out0_carry__5_i_3__0_n_0;
  wire icount_out0_carry__5_i_4__0_n_0;
  wire icount_out0_carry__5_n_0;
  wire icount_out0_carry__5_n_1;
  wire icount_out0_carry__5_n_2;
  wire icount_out0_carry__5_n_3;
  wire icount_out0_carry__5_n_4;
  wire icount_out0_carry__5_n_5;
  wire icount_out0_carry__5_n_6;
  wire icount_out0_carry__5_n_7;
  wire icount_out0_carry__6_i_1__0_n_0;
  wire icount_out0_carry__6_i_2__0_n_0;
  wire icount_out0_carry__6_i_3__0_n_0;
  wire icount_out0_carry__6_i_4__0_n_0;
  wire icount_out0_carry__6_n_1;
  wire icount_out0_carry__6_n_2;
  wire icount_out0_carry__6_n_3;
  wire icount_out0_carry__6_n_4;
  wire icount_out0_carry__6_n_5;
  wire icount_out0_carry__6_n_6;
  wire icount_out0_carry__6_n_7;
  wire icount_out0_carry_i_1__0_n_0;
  wire icount_out0_carry_i_2__0_n_0;
  wire icount_out0_carry_i_3__0_n_0;
  wire icount_out0_carry_i_4__0_n_0;
  wire icount_out0_carry_n_0;
  wire icount_out0_carry_n_1;
  wire icount_out0_carry_n_2;
  wire icount_out0_carry_n_3;
  wire icount_out0_carry_n_4;
  wire icount_out0_carry_n_5;
  wire icount_out0_carry_n_6;
  wire icount_out0_carry_n_7;
  wire [31:0]p_1_in;
  wire [10:0]read_Mux_In;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [3:3]NLW_icount_out0_carry__6_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \INFERRED_GEN.icount_out[0]_i_1__0 
       (.I0(read_Mux_In[0]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(\LOAD_REG_GEN[0].LOAD_REG_I [0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[10]_i_1__0 
       (.I0(read_Mux_In[10]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__1_n_6),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[11]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [0]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__1_n_5),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[12]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [1]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__1_n_4),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[13]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [2]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__2_n_7),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[14]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [3]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__2_n_6),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[15]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [4]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__2_n_5),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[16]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [5]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__2_n_4),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[17]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [6]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__3_n_7),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[18]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [7]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__3_n_6),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[19]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [8]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__3_n_5),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[1]_i_1__0 
       (.I0(read_Mux_In[1]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry_n_7),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[20]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [9]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__3_n_4),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[21]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [10]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__4_n_7),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[22]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [11]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__4_n_6),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[23]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [12]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__4_n_5),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[24]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [13]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__4_n_4),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[25]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [14]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__5_n_7),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[26]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [15]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__5_n_6),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[27]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [16]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__5_n_5),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[28]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [17]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__5_n_4),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[29]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [18]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__6_n_7),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[2]_i_1__0 
       (.I0(read_Mux_In[2]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry_n_6),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[30]_i_1__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [19]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__6_n_6),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[31]_i_2__0 
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_0 [20]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__6_n_5),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \INFERRED_GEN.icount_out[32]_i_1__0 
       (.I0(icount_out0_carry__6_n_4),
        .I1(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .I2(counter_TC),
        .I3(s_axi_aresetn),
        .I4(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .O(\INFERRED_GEN.icount_out[32]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[3]_i_1__0 
       (.I0(read_Mux_In[3]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry_n_5),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[4]_i_1__0 
       (.I0(read_Mux_In[4]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry_n_4),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[5]_i_1__0 
       (.I0(read_Mux_In[5]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__0_n_7),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[6]_i_1__0 
       (.I0(read_Mux_In[6]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__0_n_6),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[7]_i_1__0 
       (.I0(read_Mux_In[7]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__0_n_5),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[8]_i_1__0 
       (.I0(read_Mux_In[8]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__0_n_4),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.icount_out[9]_i_1__0 
       (.I0(read_Mux_In[9]),
        .I1(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I2(icount_out0_carry__1_n_7),
        .O(p_1_in[9]));
  FDRE \INFERRED_GEN.icount_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[0]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [0]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[10] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[10]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [10]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[11] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[11]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [11]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[12] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[12]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [12]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[13] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[13]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [13]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[14] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[14]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [14]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[15] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[15]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [15]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[16] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[16]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [16]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[17] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[17]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [17]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[18] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[18]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [18]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[19] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[19]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [19]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[1]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [1]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[20] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[20]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [20]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[21] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[21]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [21]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[22] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[22]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [22]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[23] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[23]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [23]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[24] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[24]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [24]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[25] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[25]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [25]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[26] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[26]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [26]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[27] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[27]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [27]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[28] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[28]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [28]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[29] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[29]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [29]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[2]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [2]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[30] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[30]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [30]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[31] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[31]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [31]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[32] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.icount_out[32]_i_1__0_n_0 ),
        .Q(counter_TC),
        .R(1'b0));
  FDRE \INFERRED_GEN.icount_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[3]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [3]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[4]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [4]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[5]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [5]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[6]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [6]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[7]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [7]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[8]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [8]),
        .R(s_axi_aresetn_0));
  FDRE \INFERRED_GEN.icount_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .D(p_1_in[9]),
        .Q(\LOAD_REG_GEN[0].LOAD_REG_I [9]),
        .R(s_axi_aresetn_0));
  LUT2 #(
    .INIT(4'h2)) 
    generateOutPre0_i_1
       (.I0(counter_TC),
        .I1(Q),
        .O(generateOutPre00));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry
       (.CI(1'b0),
        .CO({icount_out0_carry_n_0,icount_out0_carry_n_1,icount_out0_carry_n_2,icount_out0_carry_n_3}),
        .CYINIT(\LOAD_REG_GEN[0].LOAD_REG_I [0]),
        .DI({\LOAD_REG_GEN[0].LOAD_REG_I [3:1],icount_out0_carry_i_1__0_n_0}),
        .O({icount_out0_carry_n_4,icount_out0_carry_n_5,icount_out0_carry_n_6,icount_out0_carry_n_7}),
        .S({icount_out0_carry_i_2__0_n_0,icount_out0_carry_i_3__0_n_0,icount_out0_carry_i_4__0_n_0,S}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__0
       (.CI(icount_out0_carry_n_0),
        .CO({icount_out0_carry__0_n_0,icount_out0_carry__0_n_1,icount_out0_carry__0_n_2,icount_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\LOAD_REG_GEN[0].LOAD_REG_I [7:4]),
        .O({icount_out0_carry__0_n_4,icount_out0_carry__0_n_5,icount_out0_carry__0_n_6,icount_out0_carry__0_n_7}),
        .S({icount_out0_carry__0_i_1__0_n_0,icount_out0_carry__0_i_2__0_n_0,icount_out0_carry__0_i_3__0_n_0,icount_out0_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__0_i_1__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [7]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [8]),
        .O(icount_out0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__0_i_2__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [6]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [7]),
        .O(icount_out0_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__0_i_3__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [5]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [6]),
        .O(icount_out0_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__0_i_4__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [4]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [5]),
        .O(icount_out0_carry__0_i_4__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__1
       (.CI(icount_out0_carry__0_n_0),
        .CO({icount_out0_carry__1_n_0,icount_out0_carry__1_n_1,icount_out0_carry__1_n_2,icount_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\LOAD_REG_GEN[0].LOAD_REG_I [11:8]),
        .O({icount_out0_carry__1_n_4,icount_out0_carry__1_n_5,icount_out0_carry__1_n_6,icount_out0_carry__1_n_7}),
        .S({icount_out0_carry__1_i_1__0_n_0,icount_out0_carry__1_i_2__0_n_0,icount_out0_carry__1_i_3__0_n_0,icount_out0_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__1_i_1__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [11]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [12]),
        .O(icount_out0_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__1_i_2__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [10]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [11]),
        .O(icount_out0_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__1_i_3__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [9]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [10]),
        .O(icount_out0_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__1_i_4__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [8]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [9]),
        .O(icount_out0_carry__1_i_4__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__2
       (.CI(icount_out0_carry__1_n_0),
        .CO({icount_out0_carry__2_n_0,icount_out0_carry__2_n_1,icount_out0_carry__2_n_2,icount_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\LOAD_REG_GEN[0].LOAD_REG_I [15:12]),
        .O({icount_out0_carry__2_n_4,icount_out0_carry__2_n_5,icount_out0_carry__2_n_6,icount_out0_carry__2_n_7}),
        .S({icount_out0_carry__2_i_1__0_n_0,icount_out0_carry__2_i_2__0_n_0,icount_out0_carry__2_i_3__0_n_0,icount_out0_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__2_i_1__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [15]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [16]),
        .O(icount_out0_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__2_i_2__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [14]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [15]),
        .O(icount_out0_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__2_i_3__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [13]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [14]),
        .O(icount_out0_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__2_i_4__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [12]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [13]),
        .O(icount_out0_carry__2_i_4__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__3
       (.CI(icount_out0_carry__2_n_0),
        .CO({icount_out0_carry__3_n_0,icount_out0_carry__3_n_1,icount_out0_carry__3_n_2,icount_out0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\LOAD_REG_GEN[0].LOAD_REG_I [19:16]),
        .O({icount_out0_carry__3_n_4,icount_out0_carry__3_n_5,icount_out0_carry__3_n_6,icount_out0_carry__3_n_7}),
        .S({icount_out0_carry__3_i_1__0_n_0,icount_out0_carry__3_i_2__0_n_0,icount_out0_carry__3_i_3__0_n_0,icount_out0_carry__3_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__3_i_1__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [19]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [20]),
        .O(icount_out0_carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__3_i_2__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [18]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [19]),
        .O(icount_out0_carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__3_i_3__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [17]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [18]),
        .O(icount_out0_carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__3_i_4__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [16]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [17]),
        .O(icount_out0_carry__3_i_4__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__4
       (.CI(icount_out0_carry__3_n_0),
        .CO({icount_out0_carry__4_n_0,icount_out0_carry__4_n_1,icount_out0_carry__4_n_2,icount_out0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\LOAD_REG_GEN[0].LOAD_REG_I [23:20]),
        .O({icount_out0_carry__4_n_4,icount_out0_carry__4_n_5,icount_out0_carry__4_n_6,icount_out0_carry__4_n_7}),
        .S({icount_out0_carry__4_i_1__0_n_0,icount_out0_carry__4_i_2__0_n_0,icount_out0_carry__4_i_3__0_n_0,icount_out0_carry__4_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__4_i_1__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [23]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [24]),
        .O(icount_out0_carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__4_i_2__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [22]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [23]),
        .O(icount_out0_carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__4_i_3__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [21]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [22]),
        .O(icount_out0_carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__4_i_4__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [20]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [21]),
        .O(icount_out0_carry__4_i_4__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__5
       (.CI(icount_out0_carry__4_n_0),
        .CO({icount_out0_carry__5_n_0,icount_out0_carry__5_n_1,icount_out0_carry__5_n_2,icount_out0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(\LOAD_REG_GEN[0].LOAD_REG_I [27:24]),
        .O({icount_out0_carry__5_n_4,icount_out0_carry__5_n_5,icount_out0_carry__5_n_6,icount_out0_carry__5_n_7}),
        .S({icount_out0_carry__5_i_1__0_n_0,icount_out0_carry__5_i_2__0_n_0,icount_out0_carry__5_i_3__0_n_0,icount_out0_carry__5_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__5_i_1__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [27]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [28]),
        .O(icount_out0_carry__5_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__5_i_2__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [26]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [27]),
        .O(icount_out0_carry__5_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__5_i_3__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [25]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [26]),
        .O(icount_out0_carry__5_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__5_i_4__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [24]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [25]),
        .O(icount_out0_carry__5_i_4__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 icount_out0_carry__6
       (.CI(icount_out0_carry__5_n_0),
        .CO({NLW_icount_out0_carry__6_CO_UNCONNECTED[3],icount_out0_carry__6_n_1,icount_out0_carry__6_n_2,icount_out0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\LOAD_REG_GEN[0].LOAD_REG_I [30:28]}),
        .O({icount_out0_carry__6_n_4,icount_out0_carry__6_n_5,icount_out0_carry__6_n_6,icount_out0_carry__6_n_7}),
        .S({icount_out0_carry__6_i_1__0_n_0,icount_out0_carry__6_i_2__0_n_0,icount_out0_carry__6_i_3__0_n_0,icount_out0_carry__6_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    icount_out0_carry__6_i_1__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [31]),
        .O(icount_out0_carry__6_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__6_i_2__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [30]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [31]),
        .O(icount_out0_carry__6_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__6_i_3__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [29]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [30]),
        .O(icount_out0_carry__6_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry__6_i_4__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [28]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [29]),
        .O(icount_out0_carry__6_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    icount_out0_carry_i_1__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [1]),
        .O(icount_out0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry_i_2__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [3]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [4]),
        .O(icount_out0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry_i_3__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [2]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [3]),
        .O(icount_out0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    icount_out0_carry_i_4__0
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I [1]),
        .I1(\LOAD_REG_GEN[0].LOAD_REG_I [2]),
        .O(icount_out0_carry_i_4__0_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (D,
    scndry_vect_out,
    Q,
    gpio_io_i,
    s_axi_aclk);
  output [1:0]D;
  output [1:0]scndry_vect_out;
  input [1:0]Q;
  input [1:0]gpio_io_i;
  input s_axi_aclk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [1:0]gpio_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire [1:0]scndry_vect_out;

  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[0]_i_1 
       (.I0(scndry_vect_out[1]),
        .I1(Q[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[1]_i_1 
       (.I0(scndry_vect_out[0]),
        .I1(Q[0]),
        .O(D[0]));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0
   (D,
    scndry_vect_out,
    Q,
    gpio2_io_i,
    s_axi_aclk);
  output [2:0]D;
  output [2:0]scndry_vect_out;
  input [2:0]Q;
  input [2:0]gpio2_io_i;
  input s_axi_aclk;

  wire [2:0]D;
  wire [2:0]Q;
  wire [2:0]gpio2_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_2;
  wire [2:0]scndry_vect_out;

  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[0]_i_1 
       (.I0(scndry_vect_out[2]),
        .I1(Q[2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[1]_i_1 
       (.I0(scndry_vect_out[1]),
        .I1(Q[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[2]_i_1 
       (.I0(scndry_vect_out[0]),
        .I1(Q[0]),
        .O(D[0]));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1
   (dtr_underrun_d1_reg,
    \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg ,
    s_axi_aclk);
  output dtr_underrun_d1_reg;
  input \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg ;
  input s_axi_aclk;

  wire \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg ;
  wire dtr_underrun_d1_reg;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(dtr_underrun_d1_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_15
   (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ,
    spisel_d2_reg,
    s_axi_aclk);
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ;
  input spisel_d2_reg;
  input s_axi_aclk;

  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire spisel_d2_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_d2_reg),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_16
   (\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    scndry_out,
    irpt_wrack_d1_reg,
    spisel_pulse_cdc_from_spi_d3,
    s_axi_wdata,
    p_1_in17_in,
    prmry_in,
    s_axi_aclk);
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output scndry_out;
  input irpt_wrack_d1_reg;
  input spisel_pulse_cdc_from_spi_d3;
  input [0:0]s_axi_wdata;
  input p_1_in17_in;
  input prmry_in;
  input s_axi_aclk;

  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire irpt_wrack_d1_reg;
  wire p_1_in17_in;
  wire prmry_in;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire spisel_pulse_cdc_from_spi_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(spisel_pulse_cdc_from_spi_d3),
        .I2(scndry_out),
        .I3(s_axi_wdata),
        .I4(p_1_in17_in),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_18
   (tx_Reg_Soft_Reset_op,
    scndry_out,
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    spiXfer_done_to_axi_clk,
    sr_7_Rx_Empty_reg_reg,
    sr_5_Tx_Empty_i_reg,
    bus2ip_reset_ipif_inverted,
    \RESET_FLOPS[15].RST_FLOPS ,
    spiXfer_done_d3,
    irpt_wrack_d1_reg,
    s_axi_wdata,
    p_1_in26_in,
    p_1_in32_in,
    ip2Bus_RdAck_core_reg,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ,
    sr_7_Rx_Empty_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    sr_5_Tx_Empty_i_reg_0,
    prmry_in,
    s_axi_aclk);
  output tx_Reg_Soft_Reset_op;
  output scndry_out;
  output \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output spiXfer_done_to_axi_clk;
  output sr_7_Rx_Empty_reg_reg;
  output sr_5_Tx_Empty_i_reg;
  input bus2ip_reset_ipif_inverted;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input spiXfer_done_d3;
  input irpt_wrack_d1_reg;
  input [1:0]s_axi_wdata;
  input p_1_in26_in;
  input p_1_in32_in;
  input ip2Bus_RdAck_core_reg;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  input sr_7_Rx_Empty_reg_reg_0;
  input \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input sr_5_Tx_Empty_i_reg_0;
  input prmry_in;
  input s_axi_aclk;

  wire Bus_RNW_reg;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire bus2ip_reset_ipif_inverted;
  wire ip2Bus_RdAck_core_reg;
  wire irpt_wrack_d1_reg;
  wire p_1_in26_in;
  wire p_1_in32_in;
  wire prmry_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire spiXfer_done_d3;
  wire spiXfer_done_to_axi_clk;
  wire sr_5_Tx_Empty_i_reg;
  wire sr_5_Tx_Empty_i_reg_0;
  wire sr_7_Rx_Empty_reg_reg;
  wire sr_7_Rx_Empty_reg_reg_0;
  wire tx_Reg_Soft_Reset_op;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(spiXfer_done_d3),
        .I2(scndry_out),
        .I3(s_axi_wdata[0]),
        .I4(p_1_in32_in),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ));
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(spiXfer_done_d3),
        .I2(scndry_out),
        .I3(s_axi_wdata[1]),
        .I4(p_1_in26_in),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    SPIXfer_done_delay_i_1
       (.I0(scndry_out),
        .I1(spiXfer_done_d3),
        .O(spiXfer_done_to_axi_clk));
  LUT4 #(
    .INIT(16'hEFFE)) 
    \TRANSMIT_REG_GENERATE[7].Transmit_Reg_Data_Out[7]_i_1 
       (.I0(bus2ip_reset_ipif_inverted),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(spiXfer_done_d3),
        .I3(scndry_out),
        .O(tx_Reg_Soft_Reset_op));
  LUT6 #(
    .INIT(64'hF0FFFFFF60666666)) 
    sr_5_Tx_Empty_i_i_1
       (.I0(spiXfer_done_d3),
        .I1(scndry_out),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ),
        .I4(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .I5(sr_5_Tx_Empty_i_reg_0),
        .O(sr_5_Tx_Empty_i_reg));
  LUT6 #(
    .INIT(64'h9999999990000000)) 
    sr_7_Rx_Empty_reg_i_1
       (.I0(spiXfer_done_d3),
        .I1(scndry_out),
        .I2(ip2Bus_RdAck_core_reg),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ),
        .I5(sr_7_Rx_Empty_reg_reg_0),
        .O(sr_7_Rx_Empty_reg_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_19
   (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    sr_5_Tx_Empty_i_reg,
    s_axi_aclk);
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  input sr_5_Tx_Empty_i_reg;
  input s_axi_aclk;

  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire sr_5_Tx_Empty_i_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sr_5_Tx_Empty_i_reg),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_4
   (modf_reg,
    scndry_out,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    ip2Bus_RdAck_core_reg,
    Bus_RNW_reg_reg,
    modf_strobe_cdc_from_spi_d3,
    modf_reg_0,
    reset2ip_reset_int,
    irpt_wrack_d1_reg,
    s_axi_wdata,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg ,
    s_axi_aclk);
  output modf_reg;
  output scndry_out;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input ip2Bus_RdAck_core_reg;
  input Bus_RNW_reg_reg;
  input modf_strobe_cdc_from_spi_d3;
  input modf_reg_0;
  input reset2ip_reset_int;
  input irpt_wrack_d1_reg;
  input [0:0]s_axi_wdata;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg ;
  input s_axi_aclk;

  wire Bus_RNW_reg_reg;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg ;
  wire ip2Bus_RdAck_core_reg;
  wire irpt_wrack_d1_reg;
  wire modf_reg;
  wire modf_reg_0;
  wire modf_strobe_cdc_from_spi_d3;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(modf_strobe_cdc_from_spi_d3),
        .I2(scndry_out),
        .I3(s_axi_wdata),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000DDDD0DD0)) 
    modf_i_1
       (.I0(ip2Bus_RdAck_core_reg),
        .I1(Bus_RNW_reg_reg),
        .I2(modf_strobe_cdc_from_spi_d3),
        .I3(scndry_out),
        .I4(modf_reg_0),
        .I5(reset2ip_reset_int),
        .O(modf_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_5
   (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    scndry_out,
    irpt_wrack_d1_reg,
    Slave_MODF_strobe_cdc_from_spi_d3,
    s_axi_wdata,
    p_1_in35_in,
    prmry_in,
    s_axi_aclk);
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output scndry_out;
  input irpt_wrack_d1_reg;
  input Slave_MODF_strobe_cdc_from_spi_d3;
  input [0:0]s_axi_wdata;
  input p_1_in35_in;
  input prmry_in;
  input s_axi_aclk;

  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire Slave_MODF_strobe_cdc_from_spi_d3;
  wire irpt_wrack_d1_reg;
  wire p_1_in35_in;
  wire prmry_in;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(Slave_MODF_strobe_cdc_from_spi_d3),
        .I2(scndry_out),
        .I3(s_axi_wdata),
        .I4(p_1_in35_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2
   (\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ,
    scndry_out,
    serial_dout_int,
    io1_i_sync,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    io0_i_sync,
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ,
    ext_spi_clk);
  output [0:0]\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ;
  output scndry_out;
  input serial_dout_int;
  input io1_i_sync;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input io0_i_sync;
  input \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  input ext_spi_clk;

  wire \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire [0:0]\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ;
  wire ext_spi_clk;
  wire io0_i_sync;
  wire io1_i_sync;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire serial_dout_int;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s[7]_i_1 
       (.I0(serial_dout_int),
        .I1(scndry_out),
        .I2(io1_i_sync),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(io0_i_sync),
        .O(\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_10
   (\SS_O_reg[0] ,
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ,
    ext_spi_clk);
  output \SS_O_reg[0] ;
  input \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  input ext_spi_clk;

  wire \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  wire \SS_O_reg[0] ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(\SS_O_reg[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_11
   (scndry_out,
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ,
    ext_spi_clk);
  output scndry_out;
  input \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  input ext_spi_clk;

  wire \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_12
   (scndry_out,
    \SPICR_data_int_reg[0] ,
    ext_spi_clk);
  output scndry_out;
  input \SPICR_data_int_reg[0] ;
  input ext_spi_clk;

  wire \SPICR_data_int_reg[0] ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\SPICR_data_int_reg[0] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_13
   (D_1,
    SPI_TRISTATE_CONTROL_V,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    modf_strobe_int,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    SPISEL_sync,
    spicr_bits_7_8_frm_axi_clk,
    ext_spi_clk);
  output D_1;
  output SPI_TRISTATE_CONTROL_V;
  input scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input modf_strobe_int;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input SPISEL_sync;
  input [0:0]spicr_bits_7_8_frm_axi_clk;
  input ext_spi_clk;

  wire D_1;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire SPISEL_sync;
  wire SPI_TRISTATE_CONTROL_V;
  wire ext_spi_clk;
  wire modf_strobe_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [0:0]spicr_bits_7_8_frm_axi_clk;
  wire [1:1]spicr_bits_7_8_to_spi_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_bits_7_8_frm_axi_clk),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(spicr_bits_7_8_to_spi_clk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    SPI_TRISTATE_CONTROL_III_i_1
       (.I0(spicr_bits_7_8_to_spi_clk),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I2(modf_strobe_int),
        .I3(scndry_out),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .O(D_1));
  LUT4 #(
    .INIT(16'hFFFD)) 
    SPI_TRISTATE_CONTROL_V_i_1
       (.I0(spicr_bits_7_8_to_spi_clk),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I2(scndry_out),
        .I3(SPISEL_sync),
        .O(SPI_TRISTATE_CONTROL_V));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_14
   (scndry_out,
    spicr_bits_7_8_frm_axi_clk,
    ext_spi_clk);
  output scndry_out;
  input [0:0]spicr_bits_7_8_frm_axi_clk;
  input ext_spi_clk;

  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire [0:0]spicr_bits_7_8_frm_axi_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spicr_bits_7_8_frm_axi_clk),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_17
   (scndry_out,
    modf_reg,
    ext_spi_clk);
  output scndry_out;
  input modf_reg;
  input ext_spi_clk;

  wire ext_spi_clk;
  wire modf_reg;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(modf_reg),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_20
   (tx_empty_signal_handshake_req_i_reg,
    scndry_out,
    s_axi_aclk);
  output tx_empty_signal_handshake_req_i_reg;
  input scndry_out;
  input s_axi_aclk;

  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire tx_empty_signal_handshake_req_i_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(tx_empty_signal_handshake_req_i_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_21
   (transfer_start_reg,
    scndry_out,
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    tx_empty_signal_handshake_req_i_reg,
    ext_spi_clk);
  output transfer_start_reg;
  output scndry_out;
  input \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input tx_empty_signal_handshake_req_i_reg;
  input ext_spi_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire transfer_start_reg;
  wire tx_empty_signal_handshake_req_i_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(tx_empty_signal_handshake_req_i_reg),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    transfer_start_i_2
       (.I0(scndry_out),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .O(transfer_start_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_6
   (Slave_MODF_strobe0,
    scndry_out,
    Allow_Slave_MODF_Strobe,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ,
    ext_spi_clk);
  output Slave_MODF_strobe0;
  output scndry_out;
  input Allow_Slave_MODF_Strobe;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  input ext_spi_clk;

  wire Allow_Slave_MODF_Strobe;
  wire \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire Slave_MODF_strobe0;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    Slave_MODF_strobe_i_2
       (.I0(Allow_Slave_MODF_Strobe),
        .I1(scndry_out),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .O(Slave_MODF_strobe0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_7
   (Allow_Slave_MODF_Strobe_reg,
    scndry_out,
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ,
    R,
    MODF_strobe0,
    transfer_start_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    Allow_Slave_MODF_Strobe,
    SR_5_Tx_Empty_d1,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ,
    Allow_MODF_Strobe,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ,
    Rst_to_spi,
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ,
    ext_spi_clk);
  output Allow_Slave_MODF_Strobe_reg;
  output scndry_out;
  output \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ;
  output R;
  output MODF_strobe0;
  output transfer_start_reg;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input Allow_Slave_MODF_Strobe;
  input SR_5_Tx_Empty_d1;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ;
  input Allow_MODF_Strobe;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  input Rst_to_spi;
  input \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  input ext_spi_clk;

  wire Allow_MODF_Strobe;
  wire Allow_Slave_MODF_Strobe;
  wire Allow_Slave_MODF_Strobe_reg;
  wire \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  wire MODF_strobe0;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ;
  wire R;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ;
  wire Rst_to_spi;
  wire SR_5_Tx_Empty_d1;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire scndry_out;
  wire transfer_start_reg;

  LUT3 #(
    .INIT(8'hE0)) 
    Allow_Slave_MODF_Strobe_i_1
       (.I0(scndry_out),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I2(Allow_Slave_MODF_Strobe),
        .O(Allow_Slave_MODF_Strobe_reg));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    MODF_strobe_i_1
       (.I0(scndry_out),
        .I1(Allow_MODF_Strobe),
        .O(MODF_strobe0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5 
       (.I0(scndry_out),
        .I1(SR_5_Tx_Empty_d1),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .I3(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ));
  LUT1 #(
    .INIT(2'h1)) 
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_1 
       (.I0(scndry_out),
        .O(R));
  LUT5 #(
    .INIT(32'h00005D00)) 
    transfer_start_i_1
       (.I0(scndry_out),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .I4(Rst_to_spi),
        .O(transfer_start_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_8
   (\OTHER_RATIO_GENERATE.sck_o_int_reg ,
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ,
    ext_spi_clk);
  output \OTHER_RATIO_GENERATE.sck_o_int_reg ;
  output \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  input ext_spi_clk;

  wire \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_reg ;
  wire \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \OTHER_RATIO_GENERATE.sck_o_int_i_3 
       (.I0(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .O(\OTHER_RATIO_GENERATE.sck_o_int_reg ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_9
   (\OTHER_RATIO_GENERATE.sck_o_int_reg ,
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ,
    ext_spi_clk);
  output \OTHER_RATIO_GENERATE.sck_o_int_reg ;
  input \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  input ext_spi_clk;

  wire \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_reg ;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(\OTHER_RATIO_GENERATE.sck_o_int_reg ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized3
   (\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ,
    prmry_vect_in,
    s_axi_aclk);
  output [7:0]\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  input [7:0]prmry_vect_in;
  input s_axi_aclk;

  wire [7:0]\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  wire [7:0]prmry_vect_in;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire s_level_out_bus_d3_2;
  wire s_level_out_bus_d3_3;
  wire s_level_out_bus_d3_4;
  wire s_level_out_bus_d3_5;
  wire s_level_out_bus_d3_6;
  wire s_level_out_bus_d3_7;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(s_level_out_bus_d3_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(s_level_out_bus_d3_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(s_level_out_bus_d3_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(s_level_out_bus_d3_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(s_level_out_bus_d3_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(s_level_out_bus_d3_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_2),
        .Q(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_3),
        .Q(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_4),
        .Q(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_5),
        .Q(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_6),
        .Q(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_7),
        .Q(\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_vect_in[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_vect_in[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_vect_in[2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_vect_in[3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_vect_in[4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_vect_in[5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_vect_in[6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_vect_in[7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized4
   (\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] ,
    \OTHER_RATIO_GENERATE.Serial_Dout_reg ,
    \OTHER_RATIO_GENERATE.serial_dout_int_reg ,
    SPIXfer_done_int_d1_reg,
    scndry_out,
    Q,
    \TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] ,
    ext_spi_clk);
  output [7:0]\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] ;
  output \OTHER_RATIO_GENERATE.Serial_Dout_reg ;
  input [0:0]\OTHER_RATIO_GENERATE.serial_dout_int_reg ;
  input SPIXfer_done_int_d1_reg;
  input scndry_out;
  input [6:0]Q;
  input [7:0]\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] ;
  input ext_spi_clk;

  wire \OTHER_RATIO_GENERATE.Serial_Dout_reg ;
  wire [7:0]\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] ;
  wire [0:0]\OTHER_RATIO_GENERATE.serial_dout_int_reg ;
  wire [6:0]Q;
  wire SPIXfer_done_int_d1_reg;
  wire [7:0]\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] ;
  wire [0:7]data_from_txfifo;
  wire ext_spi_clk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_3;
  wire s_level_out_bus_d1_cdc_to_4;
  wire s_level_out_bus_d1_cdc_to_5;
  wire s_level_out_bus_d1_cdc_to_6;
  wire s_level_out_bus_d1_cdc_to_7;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d2_2;
  wire s_level_out_bus_d2_3;
  wire s_level_out_bus_d2_4;
  wire s_level_out_bus_d2_5;
  wire s_level_out_bus_d2_6;
  wire s_level_out_bus_d2_7;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_2),
        .Q(s_level_out_bus_d2_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_3),
        .Q(s_level_out_bus_d2_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_4),
        .Q(s_level_out_bus_d2_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_5),
        .Q(s_level_out_bus_d2_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_6),
        .Q(s_level_out_bus_d2_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_7),
        .Q(s_level_out_bus_d2_7),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(data_from_txfifo[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(data_from_txfifo[6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_2),
        .Q(data_from_txfifo[5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_3),
        .Q(data_from_txfifo[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_4),
        .Q(data_from_txfifo[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_5),
        .Q(data_from_txfifo[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_6),
        .Q(data_from_txfifo[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_7),
        .Q(data_from_txfifo[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] [0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] [1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] [2]),
        .Q(s_level_out_bus_d1_cdc_to_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] [3]),
        .Q(s_level_out_bus_d1_cdc_to_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] [4]),
        .Q(s_level_out_bus_d1_cdc_to_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] [5]),
        .Q(s_level_out_bus_d1_cdc_to_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] [6]),
        .Q(s_level_out_bus_d1_cdc_to_6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] [7]),
        .Q(s_level_out_bus_d1_cdc_to_7),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OTHER_RATIO_GENERATE.Serial_Dout_i_3 
       (.I0(data_from_txfifo[7]),
        .I1(scndry_out),
        .I2(data_from_txfifo[0]),
        .O(\OTHER_RATIO_GENERATE.Serial_Dout_reg ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2 
       (.I0(Q[6]),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(data_from_txfifo[7]),
        .I3(scndry_out),
        .I4(data_from_txfifo[0]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1 
       (.I0(Q[5]),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(data_from_txfifo[6]),
        .I3(scndry_out),
        .I4(data_from_txfifo[1]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1 
       (.I0(Q[4]),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(data_from_txfifo[5]),
        .I3(scndry_out),
        .I4(data_from_txfifo[2]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1 
       (.I0(Q[3]),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(data_from_txfifo[4]),
        .I3(scndry_out),
        .I4(data_from_txfifo[3]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1 
       (.I0(Q[2]),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(data_from_txfifo[3]),
        .I3(scndry_out),
        .I4(data_from_txfifo[4]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1 
       (.I0(Q[1]),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(data_from_txfifo[2]),
        .I3(scndry_out),
        .I4(data_from_txfifo[5]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1 
       (.I0(Q[0]),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(data_from_txfifo[1]),
        .I3(scndry_out),
        .I4(data_from_txfifo[6]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[7]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.serial_dout_int_reg ),
        .I1(SPIXfer_done_int_d1_reg),
        .I2(data_from_txfifo[0]),
        .I3(scndry_out),
        .I4(data_from_txfifo[7]),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] [0]));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized5
   (D,
    scndry_vect_out,
    scndry_out,
    out,
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ,
    ext_spi_clk);
  output [0:0]D;
  output [0:0]scndry_vect_out;
  input scndry_out;
  input [1:0]out;
  input [0:0]\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ;
  input ext_spi_clk;

  wire [0:0]D;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ;
  wire Q;
  wire [0:0]\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ;
  wire ext_spi_clk;
  wire [1:0]out;
  wire scndry_out;
  wire [0:0]scndry_vect_out;

  LUT4 #(
    .INIT(16'h0440)) 
    \FSM_sequential_LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.spi_cntrl_ps[1]_i_1 
       (.I0(scndry_vect_out),
        .I1(scndry_out),
        .I2(out[0]),
        .I3(out[1]),
        .O(D));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2_n_0 ),
        .Q(scndry_vect_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ),
        .Q(Q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized6
   (\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.Rx_FIFO_Full_reg_reg ,
    drr_Overrun_int,
    SPIXfer_done_int_d1,
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ,
    Rx_FIFO_Full_reg,
    Rst_to_spi,
    sr_7_Rx_Empty_reg_reg,
    ext_spi_clk);
  output \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.Rx_FIFO_Full_reg_reg ;
  input drr_Overrun_int;
  input SPIXfer_done_int_d1;
  input \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ;
  input Rx_FIFO_Full_reg;
  input Rst_to_spi;
  input sr_7_Rx_Empty_reg_reg;
  input ext_spi_clk;

  wire \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.Rx_FIFO_Full_reg_reg ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ;
  wire Rst_to_spi;
  wire Rx_FIFO_Empty_i_no_fifo_sync;
  wire Rx_FIFO_Full_reg;
  wire SPIXfer_done_int_d1;
  wire drr_Overrun_int;
  wire ext_spi_clk;
  wire s_level_out_d1_cdc_to;
  wire sr_7_Rx_Empty_reg_reg;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sr_7_Rx_Empty_reg_reg),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(Rx_FIFO_Empty_i_no_fifo_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000055550010)) 
    \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.Rx_FIFO_Full_reg_i_1 
       (.I0(drr_Overrun_int),
        .I1(SPIXfer_done_int_d1),
        .I2(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ),
        .I3(Rx_FIFO_Empty_i_no_fifo_sync),
        .I4(Rx_FIFO_Full_reg),
        .I5(Rst_to_spi),
        .O(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.Rx_FIFO_Full_reg_reg ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized7
   (captureTrig0_d0,
    read_Mux_In,
    capturetrig0,
    s_axi_aclk);
  output captureTrig0_d0;
  input [0:0]read_Mux_In;
  input capturetrig0;
  input s_axi_aclk;

  wire CaptureTrig0_int;
  wire captureTrig0_d0;
  wire capturetrig0;
  wire [0:0]read_Mux_In;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(capturetrig0),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(CaptureTrig0_int),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    captureTrig0_d_i_1
       (.I0(CaptureTrig0_int),
        .I1(read_Mux_In),
        .O(captureTrig0_d0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized7_1
   (captureTrig1_d0,
    read_Mux_In,
    capturetrig1,
    s_axi_aclk);
  output captureTrig1_d0;
  input [0:0]read_Mux_In;
  input capturetrig1;
  input s_axi_aclk;

  wire CaptureTrig1_int;
  wire captureTrig1_d0;
  wire capturetrig1;
  wire [0:0]read_Mux_In;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(capturetrig1),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(CaptureTrig1_int),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    captureTrig1_d_i_1
       (.I0(CaptureTrig1_int),
        .I1(read_Mux_In),
        .O(captureTrig1_d0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized7_2
   (\INFERRED_GEN.icount_out_reg[0] ,
    \INFERRED_GEN.icount_out_reg[0]_0 ,
    S,
    \INFERRED_GEN.icount_out_reg[4] ,
    \INFERRED_GEN.icount_out_reg[32] ,
    generateOutPre0,
    \TCSR1_GENERATE[26].TCSR1_FF_I ,
    \TCSR0_GENERATE[20].TCSR0_FF_I ,
    read_Mux_In,
    \TCSR0_GENERATE[20].TCSR0_FF_I_0 ,
    \TCSR0_GENERATE[31].TCSR0_FF_I ,
    \TCSR0_GENERATE[22].TCSR0_FF_I ,
    \TCSR0_GENERATE[26].TCSR0_FF_I ,
    \INFERRED_GEN.icount_out_reg[32]_0 ,
    counter_TC,
    \INFERRED_GEN.icount_out_reg[1] ,
    freeze,
    s_axi_aclk);
  output \INFERRED_GEN.icount_out_reg[0] ;
  output \INFERRED_GEN.icount_out_reg[0]_0 ;
  output [0:0]S;
  output [0:0]\INFERRED_GEN.icount_out_reg[4] ;
  input \INFERRED_GEN.icount_out_reg[32] ;
  input generateOutPre0;
  input \TCSR1_GENERATE[26].TCSR1_FF_I ;
  input \TCSR0_GENERATE[20].TCSR0_FF_I ;
  input [5:0]read_Mux_In;
  input \TCSR0_GENERATE[20].TCSR0_FF_I_0 ;
  input \TCSR0_GENERATE[31].TCSR0_FF_I ;
  input \TCSR0_GENERATE[22].TCSR0_FF_I ;
  input \TCSR0_GENERATE[26].TCSR0_FF_I ;
  input \INFERRED_GEN.icount_out_reg[32]_0 ;
  input [0:0]counter_TC;
  input [1:0]\INFERRED_GEN.icount_out_reg[1] ;
  input freeze;
  input s_axi_aclk;

  wire Freeze_int;
  wire \INFERRED_GEN.icount_out[31]_i_3__0_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_4_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_5_n_0 ;
  wire \INFERRED_GEN.icount_out_reg[0] ;
  wire \INFERRED_GEN.icount_out_reg[0]_0 ;
  wire [1:0]\INFERRED_GEN.icount_out_reg[1] ;
  wire \INFERRED_GEN.icount_out_reg[32] ;
  wire \INFERRED_GEN.icount_out_reg[32]_0 ;
  wire [0:0]\INFERRED_GEN.icount_out_reg[4] ;
  wire [0:0]S;
  wire \TCSR0_GENERATE[20].TCSR0_FF_I ;
  wire \TCSR0_GENERATE[20].TCSR0_FF_I_0 ;
  wire \TCSR0_GENERATE[22].TCSR0_FF_I ;
  wire \TCSR0_GENERATE[26].TCSR0_FF_I ;
  wire \TCSR0_GENERATE[31].TCSR0_FF_I ;
  wire \TCSR1_GENERATE[26].TCSR1_FF_I ;
  wire [0:0]counter_TC;
  wire freeze;
  wire generateOutPre0;
  wire icount_out0_carry_i_6__0_n_0;
  wire icount_out0_carry_i_6_n_0;
  wire [5:0]read_Mux_In;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(freeze),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(Freeze_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF22F2)) 
    \INFERRED_GEN.icount_out[31]_i_1 
       (.I0(\INFERRED_GEN.icount_out_reg[32] ),
        .I1(\INFERRED_GEN.icount_out[31]_i_4_n_0 ),
        .I2(generateOutPre0),
        .I3(\INFERRED_GEN.icount_out[31]_i_5_n_0 ),
        .I4(\TCSR1_GENERATE[26].TCSR1_FF_I ),
        .I5(\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .O(\INFERRED_GEN.icount_out_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5755575F)) 
    \INFERRED_GEN.icount_out[31]_i_1__0 
       (.I0(\INFERRED_GEN.icount_out[31]_i_5_n_0 ),
        .I1(\INFERRED_GEN.icount_out[31]_i_3__0_n_0 ),
        .I2(\TCSR0_GENERATE[20].TCSR0_FF_I_0 ),
        .I3(\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .I4(\TCSR0_GENERATE[22].TCSR0_FF_I ),
        .I5(\TCSR0_GENERATE[26].TCSR0_FF_I ),
        .O(\INFERRED_GEN.icount_out_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.icount_out[31]_i_3__0 
       (.I0(Freeze_int),
        .I1(read_Mux_In[5]),
        .O(\INFERRED_GEN.icount_out[31]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \INFERRED_GEN.icount_out[31]_i_4 
       (.I0(Freeze_int),
        .I1(read_Mux_In[1]),
        .I2(\TCSR0_GENERATE[20].TCSR0_FF_I_0 ),
        .O(\INFERRED_GEN.icount_out[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF04FFFFFFFFFF)) 
    \INFERRED_GEN.icount_out[31]_i_5 
       (.I0(read_Mux_In[2]),
        .I1(counter_TC),
        .I2(read_Mux_In[4]),
        .I3(\TCSR0_GENERATE[20].TCSR0_FF_I_0 ),
        .I4(Freeze_int),
        .I5(read_Mux_In[5]),
        .O(\INFERRED_GEN.icount_out[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h656AAAAA)) 
    icount_out0_carry_i_5
       (.I0(\INFERRED_GEN.icount_out_reg[1] [0]),
        .I1(read_Mux_In[3]),
        .I2(\TCSR0_GENERATE[20].TCSR0_FF_I_0 ),
        .I3(read_Mux_In[0]),
        .I4(icount_out0_carry_i_6_n_0),
        .O(S));
  LUT3 #(
    .INIT(8'h6A)) 
    icount_out0_carry_i_5__0
       (.I0(\INFERRED_GEN.icount_out_reg[1] [1]),
        .I1(icount_out0_carry_i_6__0_n_0),
        .I2(read_Mux_In[3]),
        .O(\INFERRED_GEN.icount_out_reg[4] ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    icount_out0_carry_i_6
       (.I0(\INFERRED_GEN.icount_out[31]_i_5_n_0 ),
        .I1(generateOutPre0),
        .I2(Freeze_int),
        .I3(read_Mux_In[1]),
        .I4(\TCSR0_GENERATE[20].TCSR0_FF_I_0 ),
        .I5(\INFERRED_GEN.icount_out_reg[32] ),
        .O(icount_out0_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h0400FFFF)) 
    icount_out0_carry_i_6__0
       (.I0(\TCSR0_GENERATE[20].TCSR0_FF_I_0 ),
        .I1(read_Mux_In[5]),
        .I2(Freeze_int),
        .I3(\INFERRED_GEN.icount_out_reg[32]_0 ),
        .I4(\INFERRED_GEN.icount_out[31]_i_5_n_0 ),
        .O(icount_out0_carry_i_6__0_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_module
   (\INFERRED_GEN.icount_out_reg[31] ,
    read_Mux_In,
    counter_TC,
    generateOutPre00,
    s_axi_aresetn_0,
    CE,
    D_1,
    s_axi_aclk,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 ,
    \TCSR0_GENERATE[20].TCSR0_FF_I ,
    S,
    s_axi_aresetn,
    \TCSR0_GENERATE[31].TCSR0_FF_I ,
    Q);
  output [52:0]\INFERRED_GEN.icount_out_reg[31] ;
  output [10:0]read_Mux_In;
  output [0:0]counter_TC;
  output generateOutPre00;
  input s_axi_aresetn_0;
  input CE;
  input D_1;
  input s_axi_aclk;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 ;
  input \TCSR0_GENERATE[20].TCSR0_FF_I ;
  input [0:0]S;
  input s_axi_aresetn;
  input \TCSR0_GENERATE[31].TCSR0_FF_I ;
  input [0:0]Q;

  wire CE;
  wire D_1;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ;
  wire [52:0]\INFERRED_GEN.icount_out_reg[31] ;
  wire [0:0]Q;
  wire [0:0]S;
  wire \TCSR0_GENERATE[20].TCSR0_FF_I ;
  wire \TCSR0_GENERATE[31].TCSR0_FF_I ;
  wire [0:0]counter_TC;
  wire generateOutPre00;
  wire [10:0]read_Mux_In;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_timer_v2_0_19_counter_f_3 COUNTER_I
       (.\LOAD_REG_GEN[0].LOAD_REG_I (\INFERRED_GEN.icount_out_reg[31] [31:0]),
        .\LOAD_REG_GEN[0].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[31] [52:32]),
        .Q(Q),
        .S(S),
        .\TCSR0_GENERATE[20].TCSR0_FF_I (\TCSR0_GENERATE[20].TCSR0_FF_I ),
        .\TCSR0_GENERATE[31].TCSR0_FF_I (\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .counter_TC(counter_TC),
        .generateOutPre00(generateOutPre00),
        .read_Mux_In(read_Mux_In),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[0].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(D_1),
        .Q(\INFERRED_GEN.icount_out_reg[31] [52]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[10].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [42]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[11].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [41]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[12].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [40]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[13].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [39]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[14].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [38]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[15].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [37]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[16].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [36]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[17].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [35]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[18].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [34]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[19].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [33]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[1].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [51]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[20].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [32]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[21].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 ),
        .Q(read_Mux_In[10]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[22].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 ),
        .Q(read_Mux_In[9]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[23].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 ),
        .Q(read_Mux_In[8]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[24].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 ),
        .Q(read_Mux_In[7]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[25].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 ),
        .Q(read_Mux_In[6]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[26].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 ),
        .Q(read_Mux_In[5]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[27].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 ),
        .Q(read_Mux_In[4]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[28].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 ),
        .Q(read_Mux_In[3]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[29].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 ),
        .Q(read_Mux_In[2]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[2].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [50]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[30].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 ),
        .Q(read_Mux_In[1]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[31].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 ),
        .Q(read_Mux_In[0]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[3].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [49]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[4].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [48]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[5].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [47]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[6].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [46]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[7].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [45]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[8].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [44]),
        .R(s_axi_aresetn_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[9].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ),
        .Q(\INFERRED_GEN.icount_out_reg[31] [43]),
        .R(s_axi_aresetn_0));
endmodule

(* ORIG_REF_NAME = "count_module" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_module_0
   (\INFERRED_GEN.icount_out_reg[31] ,
    \LOAD_REG_GEN[0].LOAD_REG_I_0 ,
    DI,
    \LOAD_REG_GEN[4].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[8].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[12].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[16].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[20].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[24].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[28].LOAD_REG_I_0 ,
    \INFERRED_GEN.icount_out_reg[0] ,
    counter_TC,
    generateOutPre10,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[31] ,
    \s_axi_rdata_i_reg[30] ,
    \s_axi_rdata_i_reg[29] ,
    \s_axi_rdata_i_reg[28] ,
    \s_axi_rdata_i_reg[27] ,
    \s_axi_rdata_i_reg[24] ,
    \s_axi_rdata_i_reg[19] ,
    \s_axi_rdata_i_reg[18] ,
    \s_axi_rdata_i_reg[17] ,
    \s_axi_rdata_i_reg[16] ,
    \s_axi_rdata_i_reg[15] ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[26] ,
    \s_axi_rdata_i_reg[25] ,
    \s_axi_rdata_i_reg[23] ,
    \s_axi_rdata_i_reg[22] ,
    \s_axi_rdata_i_reg[21] ,
    \s_axi_rdata_i_reg[20] ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[10] ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[3] ,
    CE,
    D_2,
    s_axi_aclk,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 ,
    generateOutPre0_reg,
    S,
    s_axi_aresetn,
    \TCSR0_GENERATE[31].TCSR0_FF_I ,
    Q,
    \INFERRED_GEN.icount_out_reg[31]_0 ,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1);
  output \INFERRED_GEN.icount_out_reg[31] ;
  output \LOAD_REG_GEN[0].LOAD_REG_I_0 ;
  output [2:0]DI;
  output [3:0]\LOAD_REG_GEN[4].LOAD_REG_I_0 ;
  output [3:0]\LOAD_REG_GEN[8].LOAD_REG_I_0 ;
  output [3:0]\LOAD_REG_GEN[12].LOAD_REG_I_0 ;
  output [3:0]\LOAD_REG_GEN[16].LOAD_REG_I_0 ;
  output [3:0]\LOAD_REG_GEN[20].LOAD_REG_I_0 ;
  output [3:0]\LOAD_REG_GEN[24].LOAD_REG_I_0 ;
  output [2:0]\LOAD_REG_GEN[28].LOAD_REG_I_0 ;
  output \INFERRED_GEN.icount_out_reg[0] ;
  output [0:0]counter_TC;
  output generateOutPre10;
  output \s_axi_rdata_i_reg[0] ;
  output \s_axi_rdata_i_reg[31] ;
  output \s_axi_rdata_i_reg[30] ;
  output \s_axi_rdata_i_reg[29] ;
  output \s_axi_rdata_i_reg[28] ;
  output \s_axi_rdata_i_reg[27] ;
  output \s_axi_rdata_i_reg[24] ;
  output \s_axi_rdata_i_reg[19] ;
  output \s_axi_rdata_i_reg[18] ;
  output \s_axi_rdata_i_reg[17] ;
  output \s_axi_rdata_i_reg[16] ;
  output \s_axi_rdata_i_reg[15] ;
  output \s_axi_rdata_i_reg[14] ;
  output \s_axi_rdata_i_reg[12] ;
  output \s_axi_rdata_i_reg[11] ;
  output \s_axi_rdata_i_reg[8] ;
  output \s_axi_rdata_i_reg[7] ;
  output \s_axi_rdata_i_reg[6] ;
  output \s_axi_rdata_i_reg[2] ;
  output \s_axi_rdata_i_reg[1] ;
  output \s_axi_rdata_i_reg[26] ;
  output \s_axi_rdata_i_reg[25] ;
  output \s_axi_rdata_i_reg[23] ;
  output \s_axi_rdata_i_reg[22] ;
  output \s_axi_rdata_i_reg[21] ;
  output \s_axi_rdata_i_reg[20] ;
  output \s_axi_rdata_i_reg[13] ;
  output \s_axi_rdata_i_reg[10] ;
  output \s_axi_rdata_i_reg[9] ;
  output \s_axi_rdata_i_reg[5] ;
  output \s_axi_rdata_i_reg[4] ;
  output \s_axi_rdata_i_reg[3] ;
  input CE;
  input D_2;
  input s_axi_aclk;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 ;
  input generateOutPre0_reg;
  input [0:0]S;
  input s_axi_aresetn;
  input \TCSR0_GENERATE[31].TCSR0_FF_I ;
  input [0:0]Q;
  input [31:0]\INFERRED_GEN.icount_out_reg[31]_0 ;
  input Bus_RNW_reg_reg;
  input Bus_RNW_reg_reg_0;
  input Bus_RNW_reg_reg_1;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire CE;
  wire [2:0]DI;
  wire D_2;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 ;
  wire \INFERRED_GEN.icount_out_reg[0] ;
  wire \INFERRED_GEN.icount_out_reg[31] ;
  wire [31:0]\INFERRED_GEN.icount_out_reg[31]_0 ;
  wire \LOAD_REG_GEN[0].LOAD_REG_I_0 ;
  wire [3:0]\LOAD_REG_GEN[12].LOAD_REG_I_0 ;
  wire [3:0]\LOAD_REG_GEN[16].LOAD_REG_I_0 ;
  wire [3:0]\LOAD_REG_GEN[20].LOAD_REG_I_0 ;
  wire [3:0]\LOAD_REG_GEN[24].LOAD_REG_I_0 ;
  wire [2:0]\LOAD_REG_GEN[28].LOAD_REG_I_0 ;
  wire [3:0]\LOAD_REG_GEN[4].LOAD_REG_I_0 ;
  wire [3:0]\LOAD_REG_GEN[8].LOAD_REG_I_0 ;
  wire [0:0]Q;
  wire [0:0]S;
  wire \TCSR0_GENERATE[31].TCSR0_FF_I ;
  wire [0:0]counter_TC;
  wire generateOutPre0_reg;
  wire generateOutPre10;
  wire [96:127]read_Mux_In;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[10] ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[14] ;
  wire \s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[16] ;
  wire \s_axi_rdata_i_reg[17] ;
  wire \s_axi_rdata_i_reg[18] ;
  wire \s_axi_rdata_i_reg[19] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[20] ;
  wire \s_axi_rdata_i_reg[21] ;
  wire \s_axi_rdata_i_reg[22] ;
  wire \s_axi_rdata_i_reg[23] ;
  wire \s_axi_rdata_i_reg[24] ;
  wire \s_axi_rdata_i_reg[25] ;
  wire \s_axi_rdata_i_reg[26] ;
  wire \s_axi_rdata_i_reg[27] ;
  wire \s_axi_rdata_i_reg[28] ;
  wire \s_axi_rdata_i_reg[29] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[30] ;
  wire \s_axi_rdata_i_reg[31] ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[8] ;
  wire \s_axi_rdata_i_reg[9] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_timer_v2_0_19_counter_f COUNTER_I
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_1),
        .\INFERRED_GEN.icount_out_reg[0]_0 (\INFERRED_GEN.icount_out_reg[0] ),
        .\INFERRED_GEN.icount_out_reg[31]_0 (\INFERRED_GEN.icount_out_reg[31] ),
        .\INFERRED_GEN.icount_out_reg[31]_1 (\INFERRED_GEN.icount_out_reg[31]_0 ),
        .\LOAD_REG_GEN[0].LOAD_REG_I (\LOAD_REG_GEN[0].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[10].LOAD_REG_I (\LOAD_REG_GEN[8].LOAD_REG_I_0 [1]),
        .\LOAD_REG_GEN[11].LOAD_REG_I (\LOAD_REG_GEN[8].LOAD_REG_I_0 [0]),
        .\LOAD_REG_GEN[12].LOAD_REG_I (\LOAD_REG_GEN[12].LOAD_REG_I_0 [3]),
        .\LOAD_REG_GEN[13].LOAD_REG_I (\LOAD_REG_GEN[12].LOAD_REG_I_0 [2]),
        .\LOAD_REG_GEN[14].LOAD_REG_I (\LOAD_REG_GEN[12].LOAD_REG_I_0 [1]),
        .\LOAD_REG_GEN[15].LOAD_REG_I (\LOAD_REG_GEN[12].LOAD_REG_I_0 [0]),
        .\LOAD_REG_GEN[16].LOAD_REG_I (\LOAD_REG_GEN[16].LOAD_REG_I_0 [3]),
        .\LOAD_REG_GEN[17].LOAD_REG_I (\LOAD_REG_GEN[16].LOAD_REG_I_0 [2]),
        .\LOAD_REG_GEN[18].LOAD_REG_I (\LOAD_REG_GEN[16].LOAD_REG_I_0 [1]),
        .\LOAD_REG_GEN[19].LOAD_REG_I (\LOAD_REG_GEN[16].LOAD_REG_I_0 [0]),
        .\LOAD_REG_GEN[1].LOAD_REG_I (DI[2]),
        .\LOAD_REG_GEN[20].LOAD_REG_I (\LOAD_REG_GEN[20].LOAD_REG_I_0 [3]),
        .\LOAD_REG_GEN[21].LOAD_REG_I (\LOAD_REG_GEN[20].LOAD_REG_I_0 [2]),
        .\LOAD_REG_GEN[22].LOAD_REG_I (\LOAD_REG_GEN[20].LOAD_REG_I_0 [1]),
        .\LOAD_REG_GEN[23].LOAD_REG_I (\LOAD_REG_GEN[20].LOAD_REG_I_0 [0]),
        .\LOAD_REG_GEN[24].LOAD_REG_I (\LOAD_REG_GEN[24].LOAD_REG_I_0 [3]),
        .\LOAD_REG_GEN[25].LOAD_REG_I (\LOAD_REG_GEN[24].LOAD_REG_I_0 [2]),
        .\LOAD_REG_GEN[26].LOAD_REG_I (\LOAD_REG_GEN[24].LOAD_REG_I_0 [1]),
        .\LOAD_REG_GEN[27].LOAD_REG_I (\LOAD_REG_GEN[24].LOAD_REG_I_0 [0]),
        .\LOAD_REG_GEN[28].LOAD_REG_I (\LOAD_REG_GEN[28].LOAD_REG_I_0 [2]),
        .\LOAD_REG_GEN[29].LOAD_REG_I (\LOAD_REG_GEN[28].LOAD_REG_I_0 [1]),
        .\LOAD_REG_GEN[2].LOAD_REG_I (DI[1]),
        .\LOAD_REG_GEN[30].LOAD_REG_I (\LOAD_REG_GEN[28].LOAD_REG_I_0 [0]),
        .\LOAD_REG_GEN[3].LOAD_REG_I (DI[0]),
        .\LOAD_REG_GEN[4].LOAD_REG_I (\LOAD_REG_GEN[4].LOAD_REG_I_0 [3]),
        .\LOAD_REG_GEN[5].LOAD_REG_I (\LOAD_REG_GEN[4].LOAD_REG_I_0 [2]),
        .\LOAD_REG_GEN[6].LOAD_REG_I (\LOAD_REG_GEN[4].LOAD_REG_I_0 [1]),
        .\LOAD_REG_GEN[7].LOAD_REG_I (\LOAD_REG_GEN[4].LOAD_REG_I_0 [0]),
        .\LOAD_REG_GEN[8].LOAD_REG_I (\LOAD_REG_GEN[8].LOAD_REG_I_0 [3]),
        .\LOAD_REG_GEN[9].LOAD_REG_I (\LOAD_REG_GEN[8].LOAD_REG_I_0 [2]),
        .Q(Q),
        .S(S),
        .\TCSR0_GENERATE[31].TCSR0_FF_I (\TCSR0_GENERATE[31].TCSR0_FF_I ),
        .counter_TC(counter_TC),
        .generateOutPre0_reg(generateOutPre0_reg),
        .generateOutPre10(generateOutPre10),
        .read_Mux_In({read_Mux_In[96],read_Mux_In[97],read_Mux_In[98],read_Mux_In[99],read_Mux_In[100],read_Mux_In[101],read_Mux_In[102],read_Mux_In[103],read_Mux_In[104],read_Mux_In[105],read_Mux_In[106],read_Mux_In[107],read_Mux_In[108],read_Mux_In[109],read_Mux_In[110],read_Mux_In[111],read_Mux_In[112],read_Mux_In[113],read_Mux_In[114],read_Mux_In[115],read_Mux_In[116],read_Mux_In[117],read_Mux_In[118],read_Mux_In[119],read_Mux_In[120],read_Mux_In[121],read_Mux_In[122],read_Mux_In[123],read_Mux_In[124],read_Mux_In[125],read_Mux_In[126],read_Mux_In[127]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\s_axi_rdata_i_reg[0] (\s_axi_rdata_i_reg[0] ),
        .\s_axi_rdata_i_reg[10] (\s_axi_rdata_i_reg[10] ),
        .\s_axi_rdata_i_reg[11] (\s_axi_rdata_i_reg[11] ),
        .\s_axi_rdata_i_reg[12] (\s_axi_rdata_i_reg[12] ),
        .\s_axi_rdata_i_reg[13] (\s_axi_rdata_i_reg[13] ),
        .\s_axi_rdata_i_reg[14] (\s_axi_rdata_i_reg[14] ),
        .\s_axi_rdata_i_reg[15] (\s_axi_rdata_i_reg[15] ),
        .\s_axi_rdata_i_reg[16] (\s_axi_rdata_i_reg[16] ),
        .\s_axi_rdata_i_reg[17] (\s_axi_rdata_i_reg[17] ),
        .\s_axi_rdata_i_reg[18] (\s_axi_rdata_i_reg[18] ),
        .\s_axi_rdata_i_reg[19] (\s_axi_rdata_i_reg[19] ),
        .\s_axi_rdata_i_reg[1] (\s_axi_rdata_i_reg[1] ),
        .\s_axi_rdata_i_reg[20] (\s_axi_rdata_i_reg[20] ),
        .\s_axi_rdata_i_reg[21] (\s_axi_rdata_i_reg[21] ),
        .\s_axi_rdata_i_reg[22] (\s_axi_rdata_i_reg[22] ),
        .\s_axi_rdata_i_reg[23] (\s_axi_rdata_i_reg[23] ),
        .\s_axi_rdata_i_reg[24] (\s_axi_rdata_i_reg[24] ),
        .\s_axi_rdata_i_reg[25] (\s_axi_rdata_i_reg[25] ),
        .\s_axi_rdata_i_reg[26] (\s_axi_rdata_i_reg[26] ),
        .\s_axi_rdata_i_reg[27] (\s_axi_rdata_i_reg[27] ),
        .\s_axi_rdata_i_reg[28] (\s_axi_rdata_i_reg[28] ),
        .\s_axi_rdata_i_reg[29] (\s_axi_rdata_i_reg[29] ),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i_reg[2] ),
        .\s_axi_rdata_i_reg[30] (\s_axi_rdata_i_reg[30] ),
        .\s_axi_rdata_i_reg[31] (\s_axi_rdata_i_reg[31] ),
        .\s_axi_rdata_i_reg[3] (\s_axi_rdata_i_reg[3] ),
        .\s_axi_rdata_i_reg[4] (\s_axi_rdata_i_reg[4] ),
        .\s_axi_rdata_i_reg[5] (\s_axi_rdata_i_reg[5] ),
        .\s_axi_rdata_i_reg[6] (\s_axi_rdata_i_reg[6] ),
        .\s_axi_rdata_i_reg[7] (\s_axi_rdata_i_reg[7] ),
        .\s_axi_rdata_i_reg[8] (\s_axi_rdata_i_reg[8] ),
        .\s_axi_rdata_i_reg[9] (\s_axi_rdata_i_reg[9] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[0].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(D_2),
        .Q(read_Mux_In[96]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[10].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 ),
        .Q(read_Mux_In[106]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[11].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 ),
        .Q(read_Mux_In[107]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[12].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 ),
        .Q(read_Mux_In[108]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[13].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 ),
        .Q(read_Mux_In[109]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[14].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 ),
        .Q(read_Mux_In[110]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[15].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 ),
        .Q(read_Mux_In[111]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[16].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 ),
        .Q(read_Mux_In[112]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[17].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 ),
        .Q(read_Mux_In[113]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[18].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 ),
        .Q(read_Mux_In[114]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[19].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 ),
        .Q(read_Mux_In[115]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[1].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ),
        .Q(read_Mux_In[97]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[20].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 ),
        .Q(read_Mux_In[116]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[21].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 ),
        .Q(read_Mux_In[117]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[22].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 ),
        .Q(read_Mux_In[118]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[23].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 ),
        .Q(read_Mux_In[119]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[24].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 ),
        .Q(read_Mux_In[120]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[25].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 ),
        .Q(read_Mux_In[121]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[26].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 ),
        .Q(read_Mux_In[122]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[27].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 ),
        .Q(read_Mux_In[123]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[28].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 ),
        .Q(read_Mux_In[124]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[29].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 ),
        .Q(read_Mux_In[125]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[2].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ),
        .Q(read_Mux_In[98]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[30].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 ),
        .Q(read_Mux_In[126]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[31].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 ),
        .Q(read_Mux_In[127]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[3].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 ),
        .Q(read_Mux_In[99]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[4].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 ),
        .Q(read_Mux_In[100]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[5].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 ),
        .Q(read_Mux_In[101]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[6].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 ),
        .Q(read_Mux_In[102]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[7].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 ),
        .Q(read_Mux_In[103]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[8].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 ),
        .Q(read_Mux_In[104]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \LOAD_REG_GEN[9].LOAD_REG_I 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 ),
        .Q(read_Mux_In[105]),
        .R(\INFERRED_GEN.icount_out_reg[31] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cross_clk_sync_fifo_0
   (D_0,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    Allow_Slave_MODF_Strobe_reg,
    scndry_out,
    Slave_MODF_strobe_reg,
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    tx_Reg_Soft_Reset_op,
    modf_reg,
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ,
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ,
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ,
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    spiXfer_done_to_axi_clk,
    sr_7_Rx_Empty_reg_reg,
    sr_5_Tx_Empty_i_reg,
    R,
    Slave_MODF_strobe0,
    MODF_strobe0,
    \OTHER_RATIO_GENERATE.sck_o_int_reg ,
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ,
    \OTHER_RATIO_GENERATE.sck_o_int_reg_0 ,
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[0] ,
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ,
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[0]_0 ,
    transfer_start_reg,
    D,
    scndry_vect_out,
    \OTHER_RATIO_GENERATE.Serial_Dout_reg ,
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0 ,
    D_1,
    SPI_TRISTATE_CONTROL_V,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ,
    tx_empty_signal_handshake_req_i_reg,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ,
    \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ,
    dtr_underrun_d1_reg,
    \SS_O_reg[0] ,
    reset2ip_reset_int,
    s_axi_aclk,
    Rst_to_spi,
    p_4_out,
    ext_spi_clk,
    p_2_out,
    p_0_out,
    Allow_Slave_MODF_Strobe,
    SR_5_Tx_Empty_d1,
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ,
    bus2ip_reset_ipif_inverted,
    \RESET_FLOPS[15].RST_FLOPS ,
    ip2Bus_RdAck_core_reg,
    Bus_RNW_reg_reg,
    modf_reg_0,
    irpt_wrack_d1_reg,
    s_axi_wdata,
    p_1_in17_in,
    p_1_in23_in,
    p_1_in26_in,
    p_1_in32_in,
    p_1_in35_in,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    spiXfer_done_int,
    slave_MODF_strobe_int,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ,
    sr_7_Rx_Empty_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    sr_5_Tx_Empty_i_reg_0,
    Allow_MODF_Strobe,
    SPIXfer_done_int_d1_reg,
    Q,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ,
    out,
    serial_dout_int,
    io1_i_sync,
    io0_i_sync,
    modf_strobe_int,
    SPISEL_sync,
    tx_empty_signal_handshake_req_i_reg_0,
    spisel_d2_reg,
    prmry_vect_in,
    \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg ,
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ,
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ,
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ,
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ,
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ,
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ,
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ,
    \SPICR_data_int_reg[0] ,
    \TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] ,
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ,
    spicr_bits_7_8_frm_axi_clk);
  output D_0;
  output prmry_in;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output Allow_Slave_MODF_Strobe_reg;
  output scndry_out;
  output Slave_MODF_strobe_reg;
  output \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  output tx_Reg_Soft_Reset_op;
  output modf_reg;
  output \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  output \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  output \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  output \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  output \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output spiXfer_done_to_axi_clk;
  output sr_7_Rx_Empty_reg_reg;
  output sr_5_Tx_Empty_i_reg;
  output R;
  output Slave_MODF_strobe0;
  output MODF_strobe0;
  output \OTHER_RATIO_GENERATE.sck_o_int_reg ;
  output \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ;
  output \OTHER_RATIO_GENERATE.sck_o_int_reg_0 ;
  output [7:0]\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] ;
  output [0:0]\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ;
  output \OTHER_RATIO_GENERATE.Shift_Reg_reg[0]_0 ;
  output transfer_start_reg;
  output [0:0]D;
  output [0:0]scndry_vect_out;
  output \OTHER_RATIO_GENERATE.Serial_Dout_reg ;
  output \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0 ;
  output D_1;
  output SPI_TRISTATE_CONTROL_V;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  output tx_empty_signal_handshake_req_i_reg;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ;
  output [7:0]\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  output dtr_underrun_d1_reg;
  output \SS_O_reg[0] ;
  input reset2ip_reset_int;
  input s_axi_aclk;
  input Rst_to_spi;
  input p_4_out;
  input ext_spi_clk;
  input p_2_out;
  input p_0_out;
  input Allow_Slave_MODF_Strobe;
  input SR_5_Tx_Empty_d1;
  input \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ;
  input bus2ip_reset_ipif_inverted;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input ip2Bus_RdAck_core_reg;
  input Bus_RNW_reg_reg;
  input modf_reg_0;
  input irpt_wrack_d1_reg;
  input [5:0]s_axi_wdata;
  input p_1_in17_in;
  input p_1_in23_in;
  input p_1_in26_in;
  input p_1_in32_in;
  input p_1_in35_in;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input spiXfer_done_int;
  input slave_MODF_strobe_int;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  input sr_7_Rx_Empty_reg_reg_0;
  input \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input sr_5_Tx_Empty_i_reg_0;
  input Allow_MODF_Strobe;
  input SPIXfer_done_int_d1_reg;
  input [6:0]Q;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  input [1:0]out;
  input serial_dout_int;
  input io1_i_sync;
  input io0_i_sync;
  input modf_strobe_int;
  input SPISEL_sync;
  input tx_empty_signal_handshake_req_i_reg_0;
  input spisel_d2_reg;
  input [7:0]prmry_vect_in;
  input \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg ;
  input \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  input \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  input \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  input \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  input \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  input \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  input \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  input \SPICR_data_int_reg[0] ;
  input [7:0]\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] ;
  input [0:0]\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ;
  input [1:0]spicr_bits_7_8_frm_axi_clk;

  wire Allow_MODF_Strobe;
  wire Allow_Slave_MODF_Strobe;
  wire Allow_Slave_MODF_Strobe_reg;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  wire \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  wire \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  wire \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  wire \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  wire \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  wire \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ;
  wire [0:0]D;
  wire \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg ;
  wire D_0;
  wire D_1;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire \LOGIC_GENERATION_CDC.TX_FIFO_EMPTY_HANDSHAKE_REQ_AXI_2_SPI_CDC_n_0 ;
  wire MODF_strobe0;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_reg ;
  wire [7:0]\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg[0]_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ;
  wire [0:0]\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ;
  wire \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0 ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_reg ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_reg_0 ;
  wire [6:0]Q;
  wire R;
  wire \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ;
  wire [7:0]\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ;
  wire Rst_to_spi;
  wire \SPICR_data_int_reg[0] ;
  wire SPISEL_sync;
  wire [0:0]\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ;
  wire SPIXfer_done_int_d1_reg;
  wire SPI_TRISTATE_CONTROL_V;
  wire SR_5_Tx_Empty_d1;
  wire \SS_O_reg[0] ;
  wire Slave_MODF_strobe0;
  wire Slave_MODF_strobe_cdc_from_spi_d2;
  wire Slave_MODF_strobe_cdc_from_spi_d3;
  wire Slave_MODF_strobe_cdc_from_spi_int_2;
  wire Slave_MODF_strobe_reg;
  wire [7:0]\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] ;
  wire bus2ip_reset_ipif_inverted;
  wire drr_Overrun_int_cdc_from_spi_d1;
  wire drr_Overrun_int_cdc_from_spi_d2;
  wire drr_Overrun_int_cdc_from_spi_d3;
  wire drr_Overrun_int_cdc_from_spi_d4;
  wire dtr_underrun_d1_reg;
  wire ext_spi_clk;
  wire io0_i_sync;
  wire io1_i_sync;
  wire ip2Bus_RdAck_core_reg;
  wire irpt_wrack_d1_reg;
  wire modf_reg;
  wire modf_reg_0;
  wire modf_strobe_cdc_from_spi_d2;
  wire modf_strobe_cdc_from_spi_d3;
  wire modf_strobe_int;
  wire [1:0]out;
  wire p_0_out;
  wire p_1_in17_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire prmry_in;
  wire [7:0]prmry_vect_in;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [5:0]s_axi_wdata;
  wire scndry_out;
  wire [0:0]scndry_vect_out;
  wire serial_dout_int;
  wire slave_MODF_strobe_int;
  wire spiXfer_done_cdc_from_spi_int_2;
  wire spiXfer_done_d2;
  wire spiXfer_done_d3;
  wire spiXfer_done_int;
  wire spiXfer_done_to_axi_clk;
  wire spicr_8_tr_inhibit_to_spi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;
  wire [0:0]spicr_bits_7_8_to_spi_clk;
  wire spisel_d2_reg;
  wire spisel_pulse_cdc_from_spi_d2;
  wire spisel_pulse_cdc_from_spi_d3;
  wire sr_3_modf_to_spi_clk;
  wire sr_5_Tx_Empty_i_reg;
  wire sr_5_Tx_Empty_i_reg_0;
  wire sr_7_Rx_Empty_reg_reg;
  wire sr_7_Rx_Empty_reg_reg_0;
  wire transfer_start_reg;
  wire tx_Reg_Soft_Reset_op;
  wire tx_empty_signal_handshake_req_i_reg;
  wire tx_empty_signal_handshake_req_i_reg_0;

  LUT5 #(
    .INIT(32'hBEFF7D3C)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(drr_Overrun_int_cdc_from_spi_d3),
        .I2(drr_Overrun_int_cdc_from_spi_d4),
        .I3(s_axi_wdata[4]),
        .I4(p_1_in23_in),
        .O(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_1 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(drr_Overrun_int_cdc_from_spi_d1),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drr_Overrun_int_cdc_from_spi_d1),
        .Q(drr_Overrun_int_cdc_from_spi_d2),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drr_Overrun_int_cdc_from_spi_d2),
        .Q(drr_Overrun_int_cdc_from_spi_d3),
        .R(reset2ip_reset_int));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(drr_Overrun_int_cdc_from_spi_d3),
        .Q(drr_Overrun_int_cdc_from_spi_d4),
        .R(reset2ip_reset_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1 \LOGIC_GENERATION_CDC.DTR_UNDERRUN_SYNC_SPI_2_AXI_1_CDC 
       (.\DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg (\DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg ),
        .dtr_underrun_d1_reg(dtr_underrun_d1_reg),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_4 \LOGIC_GENERATION_CDC.MODF_STROBE_SYNC_SPI_cdc_to_AXI_1_CDC 
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .modf_reg(modf_reg),
        .modf_reg_0(modf_reg_0),
        .modf_strobe_cdc_from_spi_d3(modf_strobe_cdc_from_spi_d3),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[0]),
        .scndry_out(modf_strobe_cdc_from_spi_d2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized3 \LOGIC_GENERATION_CDC.RECEIVE_DATA_SYNC_SPI_cdc_to_AXI_P_CDC 
       (.\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] (\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ),
        .prmry_vect_in(prmry_vect_in),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_5 \LOGIC_GENERATION_CDC.SLAVE_MODF_STROBE_SYNC_SPI_cdc_to_AXI_1_CDC 
       (.\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] ),
        .Slave_MODF_strobe_cdc_from_spi_d3(Slave_MODF_strobe_cdc_from_spi_d3),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_1_in35_in(p_1_in35_in),
        .prmry_in(Slave_MODF_strobe_cdc_from_spi_int_2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[1]),
        .scndry_out(Slave_MODF_strobe_cdc_from_spi_d2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2 \LOGIC_GENERATION_CDC.SPICR_0_LOOP_AX2S_1_CDC 
       (.\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] (\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (scndry_out),
        .\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] (\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ),
        .ext_spi_clk(ext_spi_clk),
        .io0_i_sync(io0_i_sync),
        .io1_i_sync(io1_i_sync),
        .scndry_out(\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0 ),
        .serial_dout_int(serial_dout_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_6 \LOGIC_GENERATION_CDC.SPICR_1_SPE_AX2S_1_CDC 
       (.Allow_Slave_MODF_Strobe(Allow_Slave_MODF_Strobe),
        .\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] (\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (scndry_out),
        .Slave_MODF_strobe0(Slave_MODF_strobe0),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(Slave_MODF_strobe_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_7 \LOGIC_GENERATION_CDC.SPICR_2_MST_N_SLV_AX2S_1_CDC 
       (.Allow_MODF_Strobe(Allow_MODF_Strobe),
        .Allow_Slave_MODF_Strobe(Allow_Slave_MODF_Strobe),
        .Allow_Slave_MODF_Strobe_reg(Allow_Slave_MODF_Strobe_reg),
        .\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] (\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (Slave_MODF_strobe_reg),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 (\LOGIC_GENERATION_CDC.TX_FIFO_EMPTY_HANDSHAKE_REQ_AXI_2_SPI_CDC_n_0 ),
        .MODF_strobe0(MODF_strobe0),
        .\OTHER_RATIO_GENERATE.Shift_Reg_reg[7] (\OTHER_RATIO_GENERATE.Shift_Reg_reg[7] ),
        .R(R),
        .\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg (\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ),
        .Rst_to_spi(Rst_to_spi),
        .SR_5_Tx_Empty_d1(SR_5_Tx_Empty_d1),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(scndry_out),
        .transfer_start_reg(transfer_start_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_8 \LOGIC_GENERATION_CDC.SPICR_3_CPOL_AX2S_1_CDC 
       (.\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] (\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\OTHER_RATIO_GENERATE.sck_o_int_reg_0 ),
        .\OTHER_RATIO_GENERATE.sck_o_int_reg (\OTHER_RATIO_GENERATE.sck_o_int_reg ),
        .\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST (\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST ),
        .ext_spi_clk(ext_spi_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_9 \LOGIC_GENERATION_CDC.SPICR_4_CPHA_AX2S_1_CDC 
       (.\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] (\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ),
        .\OTHER_RATIO_GENERATE.sck_o_int_reg (\OTHER_RATIO_GENERATE.sck_o_int_reg_0 ),
        .ext_spi_clk(ext_spi_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_10 \LOGIC_GENERATION_CDC.SPICR_7_SS_AX2S_1_CDC 
       (.\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] (\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ),
        .\SS_O_reg[0] (\SS_O_reg[0] ),
        .ext_spi_clk(ext_spi_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_11 \LOGIC_GENERATION_CDC.SPICR_8_TR_INHIBIT_AX2S_1_CDC 
       (.\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] (\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(spicr_8_tr_inhibit_to_spi_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_12 \LOGIC_GENERATION_CDC.SPICR_9_LSB_AX2S_1_CDC 
       (.\SPICR_data_int_reg[0] (\SPICR_data_int_reg[0] ),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0]_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_13 \LOGIC_GENERATION_CDC.SPICR_BITS_7_8_SYNC_GEN_CDC[0].SPICR_BITS_7_8_AX2S_1_CDC 
       (.D_1(D_1),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (sr_3_modf_to_spi_clk),
        .SPISEL_sync(SPISEL_sync),
        .SPI_TRISTATE_CONTROL_V(SPI_TRISTATE_CONTROL_V),
        .ext_spi_clk(ext_spi_clk),
        .modf_strobe_int(modf_strobe_int),
        .scndry_out(spicr_bits_7_8_to_spi_clk),
        .spicr_bits_7_8_frm_axi_clk(spicr_bits_7_8_frm_axi_clk[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_14 \LOGIC_GENERATION_CDC.SPICR_BITS_7_8_SYNC_GEN_CDC[1].SPICR_BITS_7_8_AX2S_1_CDC 
       (.ext_spi_clk(ext_spi_clk),
        .scndry_out(spicr_bits_7_8_to_spi_clk),
        .spicr_bits_7_8_frm_axi_clk(spicr_bits_7_8_frm_axi_clk[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_15 \LOGIC_GENERATION_CDC.SPISEL_D1_REG_SYNC_SPI_2_AXI_1_CDC 
       (.\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] ),
        .s_axi_aclk(s_axi_aclk),
        .spisel_d2_reg(spisel_d2_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_16 \LOGIC_GENERATION_CDC.SPISEL_PULSE_SPI_2_AXI_1_CDC 
       (.\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] ),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_1_in17_in(p_1_in17_in),
        .prmry_in(prmry_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[5]),
        .scndry_out(spisel_pulse_cdc_from_spi_d2),
        .spisel_pulse_cdc_from_spi_d3(spisel_pulse_cdc_from_spi_d3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized5 \LOGIC_GENERATION_CDC.SPISSR_SYNC_GEN_CDC 
       (.D(D),
        .\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] (\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ),
        .ext_spi_clk(ext_spi_clk),
        .out(out),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .scndry_vect_out(scndry_vect_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_17 \LOGIC_GENERATION_CDC.SR_3_MODF_AX2S_1_CDC 
       (.ext_spi_clk(ext_spi_clk),
        .modf_reg(modf_reg_0),
        .scndry_out(sr_3_modf_to_spi_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_18 \LOGIC_GENERATION_CDC.SYNC_SPIXFER_DONE_SYNC_SPI_2_AXI_1_CDC 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] ),
        .\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] (\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .\RESET_FLOPS[15].RST_FLOPS (\RESET_FLOPS[15].RST_FLOPS ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in32_in(p_1_in32_in),
        .prmry_in(spiXfer_done_cdc_from_spi_int_2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[3:2]),
        .scndry_out(spiXfer_done_d2),
        .spiXfer_done_d3(spiXfer_done_d3),
        .spiXfer_done_to_axi_clk(spiXfer_done_to_axi_clk),
        .sr_5_Tx_Empty_i_reg(sr_5_Tx_Empty_i_reg),
        .sr_5_Tx_Empty_i_reg_0(sr_5_Tx_Empty_i_reg_0),
        .sr_7_Rx_Empty_reg_reg(sr_7_Rx_Empty_reg_reg),
        .sr_7_Rx_Empty_reg_reg_0(sr_7_Rx_Empty_reg_reg_0),
        .tx_Reg_Soft_Reset_op(tx_Reg_Soft_Reset_op));
  FDRE \LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Slave_MODF_strobe_cdc_from_spi_d2),
        .Q(Slave_MODF_strobe_cdc_from_spi_d3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_int_2_i_1 
       (.I0(Slave_MODF_strobe_cdc_from_spi_int_2),
        .I1(slave_MODF_strobe_int),
        .O(p_1_out));
  FDRE \LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(Slave_MODF_strobe_cdc_from_spi_int_2),
        .R(Rst_to_spi));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized4 \LOGIC_GENERATION_CDC.TR_DATA_SYNC_AX2SP_GEN_CDC 
       (.\OTHER_RATIO_GENERATE.Serial_Dout_reg (\OTHER_RATIO_GENERATE.Serial_Dout_reg ),
        .\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] (\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] ),
        .\OTHER_RATIO_GENERATE.serial_dout_int_reg (\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] ),
        .Q(Q),
        .SPIXfer_done_int_d1_reg(SPIXfer_done_int_d1_reg),
        .\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] (\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] ),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(\OTHER_RATIO_GENERATE.Shift_Reg_reg[0]_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1_19 \LOGIC_GENERATION_CDC.TX_FIFO_EMPTY_FOR_SPISR_SYNC_SPI_2_AXI_CDC 
       (.\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] ),
        .s_axi_aclk(s_axi_aclk),
        .sr_5_Tx_Empty_i_reg(sr_5_Tx_Empty_i_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_20 \LOGIC_GENERATION_CDC.TX_FIFO_EMPTY_HANDSHAKE_GNT_SPI_2_AXI_CDC 
       (.s_axi_aclk(s_axi_aclk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .tx_empty_signal_handshake_req_i_reg(tx_empty_signal_handshake_req_i_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2_21 \LOGIC_GENERATION_CDC.TX_FIFO_EMPTY_HANDSHAKE_REQ_AXI_2_SPI_CDC 
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (spicr_8_tr_inhibit_to_spi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (sr_3_modf_to_spi_clk),
        .\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg (\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg ),
        .ext_spi_clk(ext_spi_clk),
        .scndry_out(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .transfer_start_reg(\LOGIC_GENERATION_CDC.TX_FIFO_EMPTY_HANDSHAKE_REQ_AXI_2_SPI_CDC_n_0 ),
        .tx_empty_signal_handshake_req_i_reg(tx_empty_signal_handshake_req_i_reg_0));
  FDRE \LOGIC_GENERATION_CDC.drr_Overrun_int_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(D_0),
        .R(Rst_to_spi));
  FDRE \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(modf_strobe_cdc_from_spi_d2),
        .Q(modf_strobe_cdc_from_spi_d3),
        .R(1'b0));
  FDRE \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_2_out),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_CDC.spiXfer_done_cdc_from_spi_int_2_i_1 
       (.I0(spiXfer_done_cdc_from_spi_int_2),
        .I1(spiXfer_done_int),
        .O(p_3_out));
  FDRE \LOGIC_GENERATION_CDC.spiXfer_done_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(spiXfer_done_cdc_from_spi_int_2),
        .R(Rst_to_spi));
  FDRE \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spiXfer_done_d2),
        .Q(spiXfer_done_d3),
        .R(1'b0));
  FDRE \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spisel_pulse_cdc_from_spi_d2),
        .Q(spisel_pulse_cdc_from_spi_d3),
        .R(1'b0));
  FDRE \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_4_out),
        .Q(prmry_in),
        .R(Rst_to_spi));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_PmodMTDS_0_0,PmodMTDS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PmodMTDS,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (AXI_LITE_GPIO_araddr,
    AXI_LITE_GPIO_arready,
    AXI_LITE_GPIO_arvalid,
    AXI_LITE_GPIO_awaddr,
    AXI_LITE_GPIO_awready,
    AXI_LITE_GPIO_awvalid,
    AXI_LITE_GPIO_bready,
    AXI_LITE_GPIO_bresp,
    AXI_LITE_GPIO_bvalid,
    AXI_LITE_GPIO_rdata,
    AXI_LITE_GPIO_rready,
    AXI_LITE_GPIO_rresp,
    AXI_LITE_GPIO_rvalid,
    AXI_LITE_GPIO_wdata,
    AXI_LITE_GPIO_wready,
    AXI_LITE_GPIO_wstrb,
    AXI_LITE_GPIO_wvalid,
    AXI_LITE_SPI_araddr,
    AXI_LITE_SPI_arready,
    AXI_LITE_SPI_arvalid,
    AXI_LITE_SPI_awaddr,
    AXI_LITE_SPI_awready,
    AXI_LITE_SPI_awvalid,
    AXI_LITE_SPI_bready,
    AXI_LITE_SPI_bresp,
    AXI_LITE_SPI_bvalid,
    AXI_LITE_SPI_rdata,
    AXI_LITE_SPI_rready,
    AXI_LITE_SPI_rresp,
    AXI_LITE_SPI_rvalid,
    AXI_LITE_SPI_wdata,
    AXI_LITE_SPI_wready,
    AXI_LITE_SPI_wstrb,
    AXI_LITE_SPI_wvalid,
    AXI_LITE_TIMER_araddr,
    AXI_LITE_TIMER_arready,
    AXI_LITE_TIMER_arvalid,
    AXI_LITE_TIMER_awaddr,
    AXI_LITE_TIMER_awready,
    AXI_LITE_TIMER_awvalid,
    AXI_LITE_TIMER_bready,
    AXI_LITE_TIMER_bresp,
    AXI_LITE_TIMER_bvalid,
    AXI_LITE_TIMER_rdata,
    AXI_LITE_TIMER_rready,
    AXI_LITE_TIMER_rresp,
    AXI_LITE_TIMER_rvalid,
    AXI_LITE_TIMER_wdata,
    AXI_LITE_TIMER_wready,
    AXI_LITE_TIMER_wstrb,
    AXI_LITE_TIMER_wvalid,
    SPI_SS_I,
    SPI_SS_O,
    SPI_SS_T,
    SPI_IO0_I,
    SPI_IO0_O,
    SPI_IO0_T,
    SPI_IO1_I,
    SPI_IO1_O,
    SPI_IO1_T,
    SPI_CLK_I,
    SPI_CLK_O,
    SPI_CLK_T,
    SPI_Interrupt,
    GPIO_Interrupt,
    s_axi_aclk,
    s_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARADDR" *) input [8:0]AXI_LITE_GPIO_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARREADY" *) output AXI_LITE_GPIO_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARVALID" *) input AXI_LITE_GPIO_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWADDR" *) input [8:0]AXI_LITE_GPIO_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWREADY" *) output AXI_LITE_GPIO_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWVALID" *) input AXI_LITE_GPIO_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BREADY" *) input AXI_LITE_GPIO_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BRESP" *) output [1:0]AXI_LITE_GPIO_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BVALID" *) output AXI_LITE_GPIO_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RDATA" *) output [31:0]AXI_LITE_GPIO_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RREADY" *) input AXI_LITE_GPIO_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RRESP" *) output [1:0]AXI_LITE_GPIO_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RVALID" *) output AXI_LITE_GPIO_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WDATA" *) input [31:0]AXI_LITE_GPIO_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WREADY" *) output AXI_LITE_GPIO_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WSTRB" *) input [3:0]AXI_LITE_GPIO_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_GPIO, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input AXI_LITE_GPIO_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI ARADDR" *) input [6:0]AXI_LITE_SPI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI ARREADY" *) output AXI_LITE_SPI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI ARVALID" *) input AXI_LITE_SPI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI AWADDR" *) input [6:0]AXI_LITE_SPI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI AWREADY" *) output AXI_LITE_SPI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI AWVALID" *) input AXI_LITE_SPI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI BREADY" *) input AXI_LITE_SPI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI BRESP" *) output [1:0]AXI_LITE_SPI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI BVALID" *) output AXI_LITE_SPI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI RDATA" *) output [31:0]AXI_LITE_SPI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI RREADY" *) input AXI_LITE_SPI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI RRESP" *) output [1:0]AXI_LITE_SPI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI RVALID" *) output AXI_LITE_SPI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI WDATA" *) input [31:0]AXI_LITE_SPI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI WREADY" *) output AXI_LITE_SPI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI WSTRB" *) input [3:0]AXI_LITE_SPI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SPI WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_SPI, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input AXI_LITE_SPI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER ARADDR" *) input [4:0]AXI_LITE_TIMER_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER ARREADY" *) output AXI_LITE_TIMER_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER ARVALID" *) input AXI_LITE_TIMER_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER AWADDR" *) input [4:0]AXI_LITE_TIMER_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER AWREADY" *) output AXI_LITE_TIMER_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER AWVALID" *) input AXI_LITE_TIMER_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER BREADY" *) input AXI_LITE_TIMER_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER BRESP" *) output [1:0]AXI_LITE_TIMER_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER BVALID" *) output AXI_LITE_TIMER_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER RDATA" *) output [31:0]AXI_LITE_TIMER_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER RREADY" *) input AXI_LITE_TIMER_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER RRESP" *) output [1:0]AXI_LITE_TIMER_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER RVALID" *) output AXI_LITE_TIMER_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER WDATA" *) input [31:0]AXI_LITE_TIMER_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER WREADY" *) output AXI_LITE_TIMER_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER WSTRB" *) input [3:0]AXI_LITE_TIMER_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_TIMER, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input AXI_LITE_TIMER_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out SS_I" *) input SPI_SS_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out SS_O" *) output SPI_SS_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out SS_T" *) output SPI_SS_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out IO0_I" *) input SPI_IO0_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out IO0_O" *) output SPI_IO0_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out IO0_T" *) output SPI_IO0_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out IO1_I" *) input SPI_IO1_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out IO1_O" *) output SPI_IO1_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out IO1_T" *) output SPI_IO1_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out SCK_I" *) input SPI_CLK_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out SCK_O" *) output SPI_CLK_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 MTDS_SPI_Out SCK_T" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MTDS_SPI_Out, BOARD.ASSOCIATED_PARAM SPI_INTERFACE, BUSIF.BOARD_INTERFACE Custom" *) output SPI_CLK_T;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 SPI_Interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPI_Interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output SPI_Interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 GPIO_Interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO_Interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output GPIO_Interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF AXI_LITE_SPI:AXI_LITE_GPIO:AXI_LITE_TIMER, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;

  wire [8:0]AXI_LITE_GPIO_araddr;
  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_arvalid;
  wire [8:0]AXI_LITE_GPIO_awaddr;
  wire AXI_LITE_GPIO_awready;
  wire AXI_LITE_GPIO_awvalid;
  wire AXI_LITE_GPIO_bready;
  wire [1:0]AXI_LITE_GPIO_bresp;
  wire AXI_LITE_GPIO_bvalid;
  wire [31:0]AXI_LITE_GPIO_rdata;
  wire AXI_LITE_GPIO_rready;
  wire [1:0]AXI_LITE_GPIO_rresp;
  wire AXI_LITE_GPIO_rvalid;
  wire [31:0]AXI_LITE_GPIO_wdata;
  wire AXI_LITE_GPIO_wready;
  wire [3:0]AXI_LITE_GPIO_wstrb;
  wire AXI_LITE_GPIO_wvalid;
  wire [6:0]AXI_LITE_SPI_araddr;
  wire AXI_LITE_SPI_arready;
  wire AXI_LITE_SPI_arvalid;
  wire [6:0]AXI_LITE_SPI_awaddr;
  wire AXI_LITE_SPI_awready;
  wire AXI_LITE_SPI_awvalid;
  wire AXI_LITE_SPI_bready;
  wire [1:0]AXI_LITE_SPI_bresp;
  wire AXI_LITE_SPI_bvalid;
  wire [31:0]AXI_LITE_SPI_rdata;
  wire AXI_LITE_SPI_rready;
  wire [1:0]AXI_LITE_SPI_rresp;
  wire AXI_LITE_SPI_rvalid;
  wire [31:0]AXI_LITE_SPI_wdata;
  wire AXI_LITE_SPI_wready;
  wire [3:0]AXI_LITE_SPI_wstrb;
  wire AXI_LITE_SPI_wvalid;
  wire [4:0]AXI_LITE_TIMER_araddr;
  wire AXI_LITE_TIMER_arready;
  wire AXI_LITE_TIMER_arvalid;
  wire [4:0]AXI_LITE_TIMER_awaddr;
  wire AXI_LITE_TIMER_awready;
  wire AXI_LITE_TIMER_awvalid;
  wire AXI_LITE_TIMER_bready;
  wire [1:0]AXI_LITE_TIMER_bresp;
  wire AXI_LITE_TIMER_bvalid;
  wire [31:0]AXI_LITE_TIMER_rdata;
  wire AXI_LITE_TIMER_rready;
  wire [1:0]AXI_LITE_TIMER_rresp;
  wire AXI_LITE_TIMER_rvalid;
  wire [31:0]AXI_LITE_TIMER_wdata;
  wire AXI_LITE_TIMER_wready;
  wire [3:0]AXI_LITE_TIMER_wstrb;
  wire AXI_LITE_TIMER_wvalid;
  wire GPIO_Interrupt;
  wire SPI_CLK_I;
  wire SPI_CLK_O;
  wire SPI_CLK_T;
  wire SPI_IO0_I;
  wire SPI_IO0_O;
  wire SPI_IO0_T;
  wire SPI_IO1_I;
  wire SPI_IO1_O;
  wire SPI_IO1_T;
  wire SPI_Interrupt;
  wire SPI_SS_I;
  wire SPI_SS_O;
  wire SPI_SS_T;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire NLW_inst_Pmod_out_pin10_o_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin10_t_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin1_o_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin1_t_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin2_o_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin2_t_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin3_o_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin3_t_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin4_o_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin4_t_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin7_o_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin7_t_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin8_o_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin8_t_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin9_o_UNCONNECTED;
  wire NLW_inst_Pmod_out_pin9_t_UNCONNECTED;

  (* Interface = "SPI" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMTDS inst
       (.AXI_LITE_GPIO_araddr(AXI_LITE_GPIO_araddr),
        .AXI_LITE_GPIO_arready(AXI_LITE_GPIO_arready),
        .AXI_LITE_GPIO_arvalid(AXI_LITE_GPIO_arvalid),
        .AXI_LITE_GPIO_awaddr(AXI_LITE_GPIO_awaddr),
        .AXI_LITE_GPIO_awready(AXI_LITE_GPIO_awready),
        .AXI_LITE_GPIO_awvalid(AXI_LITE_GPIO_awvalid),
        .AXI_LITE_GPIO_bready(AXI_LITE_GPIO_bready),
        .AXI_LITE_GPIO_bresp(AXI_LITE_GPIO_bresp),
        .AXI_LITE_GPIO_bvalid(AXI_LITE_GPIO_bvalid),
        .AXI_LITE_GPIO_rdata(AXI_LITE_GPIO_rdata),
        .AXI_LITE_GPIO_rready(AXI_LITE_GPIO_rready),
        .AXI_LITE_GPIO_rresp(AXI_LITE_GPIO_rresp),
        .AXI_LITE_GPIO_rvalid(AXI_LITE_GPIO_rvalid),
        .AXI_LITE_GPIO_wdata(AXI_LITE_GPIO_wdata),
        .AXI_LITE_GPIO_wready(AXI_LITE_GPIO_wready),
        .AXI_LITE_GPIO_wstrb(AXI_LITE_GPIO_wstrb),
        .AXI_LITE_GPIO_wvalid(AXI_LITE_GPIO_wvalid),
        .AXI_LITE_SPI_araddr(AXI_LITE_SPI_araddr),
        .AXI_LITE_SPI_arready(AXI_LITE_SPI_arready),
        .AXI_LITE_SPI_arvalid(AXI_LITE_SPI_arvalid),
        .AXI_LITE_SPI_awaddr(AXI_LITE_SPI_awaddr),
        .AXI_LITE_SPI_awready(AXI_LITE_SPI_awready),
        .AXI_LITE_SPI_awvalid(AXI_LITE_SPI_awvalid),
        .AXI_LITE_SPI_bready(AXI_LITE_SPI_bready),
        .AXI_LITE_SPI_bresp(AXI_LITE_SPI_bresp),
        .AXI_LITE_SPI_bvalid(AXI_LITE_SPI_bvalid),
        .AXI_LITE_SPI_rdata(AXI_LITE_SPI_rdata),
        .AXI_LITE_SPI_rready(AXI_LITE_SPI_rready),
        .AXI_LITE_SPI_rresp(AXI_LITE_SPI_rresp),
        .AXI_LITE_SPI_rvalid(AXI_LITE_SPI_rvalid),
        .AXI_LITE_SPI_wdata(AXI_LITE_SPI_wdata),
        .AXI_LITE_SPI_wready(AXI_LITE_SPI_wready),
        .AXI_LITE_SPI_wstrb(AXI_LITE_SPI_wstrb),
        .AXI_LITE_SPI_wvalid(AXI_LITE_SPI_wvalid),
        .AXI_LITE_TIMER_araddr(AXI_LITE_TIMER_araddr),
        .AXI_LITE_TIMER_arready(AXI_LITE_TIMER_arready),
        .AXI_LITE_TIMER_arvalid(AXI_LITE_TIMER_arvalid),
        .AXI_LITE_TIMER_awaddr(AXI_LITE_TIMER_awaddr),
        .AXI_LITE_TIMER_awready(AXI_LITE_TIMER_awready),
        .AXI_LITE_TIMER_awvalid(AXI_LITE_TIMER_awvalid),
        .AXI_LITE_TIMER_bready(AXI_LITE_TIMER_bready),
        .AXI_LITE_TIMER_bresp(AXI_LITE_TIMER_bresp),
        .AXI_LITE_TIMER_bvalid(AXI_LITE_TIMER_bvalid),
        .AXI_LITE_TIMER_rdata(AXI_LITE_TIMER_rdata),
        .AXI_LITE_TIMER_rready(AXI_LITE_TIMER_rready),
        .AXI_LITE_TIMER_rresp(AXI_LITE_TIMER_rresp),
        .AXI_LITE_TIMER_rvalid(AXI_LITE_TIMER_rvalid),
        .AXI_LITE_TIMER_wdata(AXI_LITE_TIMER_wdata),
        .AXI_LITE_TIMER_wready(AXI_LITE_TIMER_wready),
        .AXI_LITE_TIMER_wstrb(AXI_LITE_TIMER_wstrb),
        .AXI_LITE_TIMER_wvalid(AXI_LITE_TIMER_wvalid),
        .GPIO_Interrupt(GPIO_Interrupt),
        .Pmod_out_pin10_i(1'b0),
        .Pmod_out_pin10_o(NLW_inst_Pmod_out_pin10_o_UNCONNECTED),
        .Pmod_out_pin10_t(NLW_inst_Pmod_out_pin10_t_UNCONNECTED),
        .Pmod_out_pin1_i(1'b0),
        .Pmod_out_pin1_o(NLW_inst_Pmod_out_pin1_o_UNCONNECTED),
        .Pmod_out_pin1_t(NLW_inst_Pmod_out_pin1_t_UNCONNECTED),
        .Pmod_out_pin2_i(1'b0),
        .Pmod_out_pin2_o(NLW_inst_Pmod_out_pin2_o_UNCONNECTED),
        .Pmod_out_pin2_t(NLW_inst_Pmod_out_pin2_t_UNCONNECTED),
        .Pmod_out_pin3_i(1'b0),
        .Pmod_out_pin3_o(NLW_inst_Pmod_out_pin3_o_UNCONNECTED),
        .Pmod_out_pin3_t(NLW_inst_Pmod_out_pin3_t_UNCONNECTED),
        .Pmod_out_pin4_i(1'b0),
        .Pmod_out_pin4_o(NLW_inst_Pmod_out_pin4_o_UNCONNECTED),
        .Pmod_out_pin4_t(NLW_inst_Pmod_out_pin4_t_UNCONNECTED),
        .Pmod_out_pin7_i(1'b0),
        .Pmod_out_pin7_o(NLW_inst_Pmod_out_pin7_o_UNCONNECTED),
        .Pmod_out_pin7_t(NLW_inst_Pmod_out_pin7_t_UNCONNECTED),
        .Pmod_out_pin8_i(1'b0),
        .Pmod_out_pin8_o(NLW_inst_Pmod_out_pin8_o_UNCONNECTED),
        .Pmod_out_pin8_t(NLW_inst_Pmod_out_pin8_t_UNCONNECTED),
        .Pmod_out_pin9_i(1'b0),
        .Pmod_out_pin9_o(NLW_inst_Pmod_out_pin9_o_UNCONNECTED),
        .Pmod_out_pin9_t(NLW_inst_Pmod_out_pin9_t_UNCONNECTED),
        .SPI_CLK_I(SPI_CLK_I),
        .SPI_CLK_O(SPI_CLK_O),
        .SPI_CLK_T(SPI_CLK_T),
        .SPI_IO0_I(SPI_IO0_I),
        .SPI_IO0_O(SPI_IO0_O),
        .SPI_IO0_T(SPI_IO0_T),
        .SPI_IO1_I(SPI_IO1_I),
        .SPI_IO1_O(SPI_IO1_O),
        .SPI_IO1_T(SPI_IO1_T),
        .SPI_Interrupt(SPI_Interrupt),
        .SPI_SS_I(SPI_SS_I),
        .SPI_SS_O(SPI_SS_O),
        .SPI_SS_T(SPI_SS_T),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in,
    irpt_rdack_d1,
    ipif_glbl_irpt_enable_reg,
    IP2INTC_Irpt_i,
    \ip_irpt_enable_reg_reg[1]_0 ,
    \ip_irpt_enable_reg_reg[0]_0 ,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    bus2ip_reset,
    irpt_wrack,
    s_axi_aclk,
    GPIO_intr,
    GPIO2_intr,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ,
    p_4_out__0,
    s_axi_wdata,
    ip2Bus_WrAck_intr_reg_hole,
    bus2ip_rnw,
    GPIO_xferAck_i,
    ip2Bus_RdAck_intr_reg_hole,
    p_6_in,
    Bus_RNW_reg);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in;
  output irpt_rdack_d1;
  output ipif_glbl_irpt_enable_reg;
  output IP2INTC_Irpt_i;
  output \ip_irpt_enable_reg_reg[1]_0 ;
  output \ip_irpt_enable_reg_reg[0]_0 ;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  input bus2ip_reset;
  input irpt_wrack;
  input s_axi_aclk;
  input GPIO_intr;
  input GPIO2_intr;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  input p_4_out__0;
  input [1:0]s_axi_wdata;
  input ip2Bus_WrAck_intr_reg_hole;
  input bus2ip_rnw;
  input GPIO_xferAck_i;
  input ip2Bus_RdAck_intr_reg_hole;
  input p_6_in;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire IP2INTC_Irpt_i;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire \ip_irpt_enable_reg[0]_i_1_n_0 ;
  wire \ip_irpt_enable_reg[1]_i_1_n_0 ;
  wire \ip_irpt_enable_reg_reg[0]_0 ;
  wire \ip_irpt_enable_reg_reg[1]_0 ;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_dly1;
  wire irpt_dly2;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_1_in;
  wire p_4_out__0;
  wire p_6_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;

  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_intr),
        .Q(irpt_dly1),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_dly1),
        .Q(irpt_dly2),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO2_intr),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(bus2ip_reset));
  LUT5 #(
    .INIT(32'h75FFBA30)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(p_4_out__0),
        .I1(irpt_dly2),
        .I2(irpt_dly1),
        .I3(s_axi_wdata[0]),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h75FFBA30)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(p_4_out__0),
        .I1(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I2(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I3(s_axi_wdata[1]),
        .I4(p_1_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \INTR_CTRLR_GEN.ip2intc_irpt_i_1 
       (.I0(\ip_irpt_enable_reg_reg[1]_0 ),
        .I1(p_1_in),
        .I2(ipif_glbl_irpt_enable_reg),
        .I3(\ip_irpt_enable_reg_reg[0]_0 ),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(IP2INTC_Irpt_i));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(intr2bus_rdack),
        .R(bus2ip_reset));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr2bus_wrack),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hFEEE)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(ip2Bus_RdAck_intr_reg_hole),
        .I1(intr2bus_rdack),
        .I2(bus2ip_rnw),
        .I3(GPIO_xferAck_i),
        .O(ip2bus_rdack_i));
  LUT4 #(
    .INIT(16'hEFEE)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(ip2Bus_WrAck_intr_reg_hole),
        .I1(intr2bus_wrack),
        .I2(bus2ip_rnw),
        .I3(GPIO_xferAck_i),
        .O(ip2bus_wrack_i));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ip_irpt_enable_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_6_in),
        .I2(Bus_RNW_reg),
        .I3(\ip_irpt_enable_reg_reg[0]_0 ),
        .O(\ip_irpt_enable_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ip_irpt_enable_reg[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(p_6_in),
        .I2(Bus_RNW_reg),
        .I3(\ip_irpt_enable_reg_reg[1]_0 ),
        .O(\ip_irpt_enable_reg[1]_i_1_n_0 ));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ip_irpt_enable_reg[0]_i_1_n_0 ),
        .Q(\ip_irpt_enable_reg_reg[0]_0 ),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ip_irpt_enable_reg[1]_i_1_n_0 ),
        .Q(\ip_irpt_enable_reg_reg[1]_0 ),
        .R(bus2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(bus2ip_reset));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(bus2ip_reset));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "interrupt_control" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control__parameterized0
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in17_in,
    p_2_in,
    irpt_rdack_d1,
    ipif_glbl_irpt_enable_reg,
    ip2intc_irpt,
    Q,
    IP2Bus_RdAck_1,
    reset2ip_reset_int,
    irpt_wrack,
    s_axi_aclk,
    \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg ,
    \LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_d3_reg ,
    \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg ,
    dtr_underrun_d1_reg,
    \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 ,
    \LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_3 ,
    \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_d3_reg ,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    bus2ip_rnw_i_reg,
    ip2Bus_RdAck_intr_reg_hole,
    ip2Bus_RdAck_core_reg,
    E,
    s_axi_wdata);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in35_in;
  output p_1_in32_in;
  output p_1_in29_in;
  output p_1_in26_in;
  output p_1_in23_in;
  output p_1_in17_in;
  output p_2_in;
  output irpt_rdack_d1;
  output ipif_glbl_irpt_enable_reg;
  output ip2intc_irpt;
  output [6:0]Q;
  output IP2Bus_RdAck_1;
  input reset2ip_reset_int;
  input irpt_wrack;
  input s_axi_aclk;
  input \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg ;
  input \LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_d3_reg ;
  input \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg ;
  input dtr_underrun_d1_reg;
  input \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 ;
  input \LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_3 ;
  input \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_d3_reg ;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input bus2ip_rnw_i_reg;
  input ip2Bus_RdAck_intr_reg_hole;
  input ip2Bus_RdAck_core_reg;
  input [0:0]E;
  input [6:0]s_axi_wdata;

  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire IP2Bus_RdAck_1;
  wire \LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_3 ;
  wire \LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_d3_reg ;
  wire \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg ;
  wire \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg ;
  wire \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 ;
  wire \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_d3_reg ;
  wire [6:0]Q;
  wire bus2ip_rnw_i_reg;
  wire dtr_underrun_d1_reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2intc_irpt;
  wire ip2intc_irpt_INST_0_i_1_n_0;
  wire ip2intc_irpt_INST_0_i_2_n_0;
  wire ip2intc_irpt_INST_0_i_3_n_0;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire p_0_in;
  wire p_1_in17_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_2_in;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [6:0]s_axi_wdata;

  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_d3_reg ),
        .Q(p_1_in35_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg ),
        .Q(p_1_in32_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtr_underrun_d1_reg),
        .Q(p_1_in29_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 ),
        .Q(p_1_in26_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_3 ),
        .Q(p_1_in23_in),
        .R(reset2ip_reset_int));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_d3_reg ),
        .Q(p_1_in17_in),
        .R(reset2ip_reset_int));
  LUT3 #(
    .INIT(8'hFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_i_1 
       (.I0(p_0_in),
        .I1(ip2Bus_RdAck_intr_reg_hole),
        .I2(ip2Bus_RdAck_core_reg),
        .O(IP2Bus_RdAck_1));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(p_0_in),
        .R(reset2ip_reset_int));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(p_2_in),
        .R(reset2ip_reset_int));
  LUT4 #(
    .INIT(16'hA8AA)) 
    ip2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(ip2intc_irpt_INST_0_i_1_n_0),
        .I2(ip2intc_irpt_INST_0_i_2_n_0),
        .I3(ip2intc_irpt_INST_0_i_3_n_0),
        .O(ip2intc_irpt));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_1
       (.I0(Q[1]),
        .I1(p_1_in35_in),
        .I2(Q[3]),
        .I3(p_1_in29_in),
        .O(ip2intc_irpt_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_2
       (.I0(Q[4]),
        .I1(p_1_in26_in),
        .I2(Q[6]),
        .I3(p_1_in17_in),
        .O(ip2intc_irpt_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    ip2intc_irpt_INST_0_i_3
       (.I0(Q[5]),
        .I1(p_1_in23_in),
        .I2(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I3(Q[0]),
        .I4(p_1_in32_in),
        .I5(Q[2]),
        .O(ip2intc_irpt_INST_0_i_3_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(reset2ip_reset_int));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(reset2ip_reset_int));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_reg),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(reset2ip_reset_int));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(reset2ip_reset_int));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(reset2ip_reset_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_onehot_f
   (D,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \INFERRED_GEN.icount_out_reg[31] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    \INFERRED_GEN.icount_out_reg[30] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ,
    \INFERRED_GEN.icount_out_reg[29] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ,
    \INFERRED_GEN.icount_out_reg[28] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ,
    \INFERRED_GEN.icount_out_reg[27] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ,
    \INFERRED_GEN.icount_out_reg[26] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ,
    \INFERRED_GEN.icount_out_reg[25] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ,
    \INFERRED_GEN.icount_out_reg[24] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ,
    \INFERRED_GEN.icount_out_reg[23] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ,
    \INFERRED_GEN.icount_out_reg[22] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ,
    \INFERRED_GEN.icount_out_reg[21] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ,
    \INFERRED_GEN.icount_out_reg[20] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ,
    \INFERRED_GEN.icount_out_reg[19] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ,
    \INFERRED_GEN.icount_out_reg[18] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ,
    \INFERRED_GEN.icount_out_reg[17] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ,
    \INFERRED_GEN.icount_out_reg[16] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ,
    \INFERRED_GEN.icount_out_reg[15] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ,
    \INFERRED_GEN.icount_out_reg[14] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ,
    \INFERRED_GEN.icount_out_reg[13] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ,
    \INFERRED_GEN.icount_out_reg[12] ,
    \LOAD_REG_GEN[20].LOAD_REG_I ,
    \INFERRED_GEN.icount_out_reg[11] ,
    \TCSR1_GENERATE[21].TCSR1_FF_I ,
    \LOAD_REG_GEN[21].LOAD_REG_I ,
    \TCSR1_GENERATE[22].TCSR1_FF_I ,
    \INFERRED_GEN.icount_out_reg[9] ,
    \TCSR0_GENERATE[23].TCSR0_FF_I ,
    \INFERRED_GEN.icount_out_reg[8] ,
    \TCSR1_GENERATE[24].TCSR1_FF_I ,
    \INFERRED_GEN.icount_out_reg[7] ,
    \TCSR1_GENERATE[25].TCSR1_FF_I ,
    \INFERRED_GEN.icount_out_reg[6] ,
    \TCSR0_GENERATE[26].TCSR0_FF_I ,
    \LOAD_REG_GEN[26].LOAD_REG_I ,
    \TCSR0_GENERATE[27].TCSR0_FF_I ,
    \LOAD_REG_GEN[27].LOAD_REG_I ,
    \TCSR1_GENERATE[28].TCSR1_FF_I ,
    \LOAD_REG_GEN[28].LOAD_REG_I ,
    \TCSR1_GENERATE[29].TCSR1_FF_I ,
    \INFERRED_GEN.icount_out_reg[2] ,
    \TCSR1_GENERATE[30].TCSR1_FF_I ,
    \INFERRED_GEN.icount_out_reg[1] ,
    \TCSR1_GENERATE[31].TCSR1_FF_I ,
    \INFERRED_GEN.icount_out_reg[0] );
  output [31:0]D;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \INFERRED_GEN.icount_out_reg[31] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  input \INFERRED_GEN.icount_out_reg[30] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ;
  input \INFERRED_GEN.icount_out_reg[29] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ;
  input \INFERRED_GEN.icount_out_reg[28] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ;
  input \INFERRED_GEN.icount_out_reg[27] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ;
  input \INFERRED_GEN.icount_out_reg[26] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ;
  input \INFERRED_GEN.icount_out_reg[25] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ;
  input \INFERRED_GEN.icount_out_reg[24] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ;
  input \INFERRED_GEN.icount_out_reg[23] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ;
  input \INFERRED_GEN.icount_out_reg[22] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ;
  input \INFERRED_GEN.icount_out_reg[21] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ;
  input \INFERRED_GEN.icount_out_reg[20] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ;
  input \INFERRED_GEN.icount_out_reg[19] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ;
  input \INFERRED_GEN.icount_out_reg[18] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ;
  input \INFERRED_GEN.icount_out_reg[17] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ;
  input \INFERRED_GEN.icount_out_reg[16] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ;
  input \INFERRED_GEN.icount_out_reg[15] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ;
  input \INFERRED_GEN.icount_out_reg[14] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ;
  input \INFERRED_GEN.icount_out_reg[13] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ;
  input \INFERRED_GEN.icount_out_reg[12] ;
  input \LOAD_REG_GEN[20].LOAD_REG_I ;
  input \INFERRED_GEN.icount_out_reg[11] ;
  input \TCSR1_GENERATE[21].TCSR1_FF_I ;
  input \LOAD_REG_GEN[21].LOAD_REG_I ;
  input \TCSR1_GENERATE[22].TCSR1_FF_I ;
  input \INFERRED_GEN.icount_out_reg[9] ;
  input \TCSR0_GENERATE[23].TCSR0_FF_I ;
  input \INFERRED_GEN.icount_out_reg[8] ;
  input \TCSR1_GENERATE[24].TCSR1_FF_I ;
  input \INFERRED_GEN.icount_out_reg[7] ;
  input \TCSR1_GENERATE[25].TCSR1_FF_I ;
  input \INFERRED_GEN.icount_out_reg[6] ;
  input \TCSR0_GENERATE[26].TCSR0_FF_I ;
  input \LOAD_REG_GEN[26].LOAD_REG_I ;
  input \TCSR0_GENERATE[27].TCSR0_FF_I ;
  input \LOAD_REG_GEN[27].LOAD_REG_I ;
  input \TCSR1_GENERATE[28].TCSR1_FF_I ;
  input \LOAD_REG_GEN[28].LOAD_REG_I ;
  input \TCSR1_GENERATE[29].TCSR1_FF_I ;
  input \INFERRED_GEN.icount_out_reg[2] ;
  input \TCSR1_GENERATE[30].TCSR1_FF_I ;
  input \INFERRED_GEN.icount_out_reg[1] ;
  input \TCSR1_GENERATE[31].TCSR1_FF_I ;
  input \INFERRED_GEN.icount_out_reg[0] ;

  wire [31:0]D;
  wire \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ;
  wire \INFERRED_GEN.icount_out_reg[0] ;
  wire \INFERRED_GEN.icount_out_reg[11] ;
  wire \INFERRED_GEN.icount_out_reg[12] ;
  wire \INFERRED_GEN.icount_out_reg[13] ;
  wire \INFERRED_GEN.icount_out_reg[14] ;
  wire \INFERRED_GEN.icount_out_reg[15] ;
  wire \INFERRED_GEN.icount_out_reg[16] ;
  wire \INFERRED_GEN.icount_out_reg[17] ;
  wire \INFERRED_GEN.icount_out_reg[18] ;
  wire \INFERRED_GEN.icount_out_reg[19] ;
  wire \INFERRED_GEN.icount_out_reg[1] ;
  wire \INFERRED_GEN.icount_out_reg[20] ;
  wire \INFERRED_GEN.icount_out_reg[21] ;
  wire \INFERRED_GEN.icount_out_reg[22] ;
  wire \INFERRED_GEN.icount_out_reg[23] ;
  wire \INFERRED_GEN.icount_out_reg[24] ;
  wire \INFERRED_GEN.icount_out_reg[25] ;
  wire \INFERRED_GEN.icount_out_reg[26] ;
  wire \INFERRED_GEN.icount_out_reg[27] ;
  wire \INFERRED_GEN.icount_out_reg[28] ;
  wire \INFERRED_GEN.icount_out_reg[29] ;
  wire \INFERRED_GEN.icount_out_reg[2] ;
  wire \INFERRED_GEN.icount_out_reg[30] ;
  wire \INFERRED_GEN.icount_out_reg[31] ;
  wire \INFERRED_GEN.icount_out_reg[6] ;
  wire \INFERRED_GEN.icount_out_reg[7] ;
  wire \INFERRED_GEN.icount_out_reg[8] ;
  wire \INFERRED_GEN.icount_out_reg[9] ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I ;
  wire \LOAD_REG_GEN[21].LOAD_REG_I ;
  wire \LOAD_REG_GEN[26].LOAD_REG_I ;
  wire \LOAD_REG_GEN[27].LOAD_REG_I ;
  wire \LOAD_REG_GEN[28].LOAD_REG_I ;
  wire \TCSR0_GENERATE[23].TCSR0_FF_I ;
  wire \TCSR0_GENERATE[26].TCSR0_FF_I ;
  wire \TCSR0_GENERATE[27].TCSR0_FF_I ;
  wire \TCSR1_GENERATE[21].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[22].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[24].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[25].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[28].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[29].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[30].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[31].TCSR1_FF_I ;
  wire cyout_1;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[31],cyout_1}),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[31] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[21],\GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[21] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[20],\GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[20] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[19],\GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[19] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[18],\GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[18] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[17],\GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[17] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[16],\GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[16] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[15],\GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[15] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[14],\GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[14] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[13],\GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[13] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[12],\GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[12] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[30],\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[30] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[11],\GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[11] ,\LOAD_REG_GEN[20].LOAD_REG_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[10],\GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\LOAD_REG_GEN[21].LOAD_REG_I ,\TCSR1_GENERATE[21].TCSR1_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[9],\GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[9] ,\TCSR1_GENERATE[22].TCSR1_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[8],\GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[8] ,\TCSR0_GENERATE[23].TCSR0_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[7],\GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[7] ,\TCSR1_GENERATE[24].TCSR1_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[6],\GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[6] ,\TCSR1_GENERATE[25].TCSR1_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[5],\GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\LOAD_REG_GEN[26].LOAD_REG_I ,\TCSR0_GENERATE[26].TCSR0_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[4],\GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\LOAD_REG_GEN[27].LOAD_REG_I ,\TCSR0_GENERATE[27].TCSR0_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[3],\GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\LOAD_REG_GEN[28].LOAD_REG_I ,\TCSR1_GENERATE[28].TCSR1_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[2],\GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[2] ,\TCSR1_GENERATE[29].TCSR1_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[29],\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[29] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[1],\GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[1] ,\TCSR1_GENERATE[30].TCSR1_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[0],\GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[0] ,\TCSR1_GENERATE[31].TCSR1_FF_I }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[28],\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[28] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[27],\GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[27] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[26],\GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[26] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[25],\GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[25] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[24],\GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[24] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[23],\GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[23] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[22],\GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\INFERRED_GEN.icount_out_reg[22] ,\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 }));
endmodule

(* Bottom_Row_Interface = "GPIO" *) (* Top_Row_Interface = "SPI" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat
   (in_top_bus_I,
    in_top_bus_O,
    in_top_bus_T,
    in_top_uart_gpio_bus_I,
    in_top_uart_gpio_bus_O,
    in_top_uart_gpio_bus_T,
    in_top_i2c_gpio_bus_I,
    in_top_i2c_gpio_bus_O,
    in_top_i2c_gpio_bus_T,
    in_bottom_bus_I,
    in_bottom_bus_O,
    in_bottom_bus_T,
    in_bottom_uart_gpio_bus_I,
    in_bottom_uart_gpio_bus_O,
    in_bottom_uart_gpio_bus_T,
    in_bottom_i2c_gpio_bus_I,
    in_bottom_i2c_gpio_bus_O,
    in_bottom_i2c_gpio_bus_T,
    in0_I,
    in1_I,
    in2_I,
    in3_I,
    in4_I,
    in5_I,
    in6_I,
    in7_I,
    in0_O,
    in1_O,
    in2_O,
    in3_O,
    in4_O,
    in5_O,
    in6_O,
    in7_O,
    in0_T,
    in1_T,
    in2_T,
    in3_T,
    in4_T,
    in5_T,
    in6_T,
    in7_T,
    out0_I,
    out1_I,
    out2_I,
    out3_I,
    out4_I,
    out5_I,
    out6_I,
    out7_I,
    out0_O,
    out1_O,
    out2_O,
    out3_O,
    out4_O,
    out5_O,
    out6_O,
    out7_O,
    out0_T,
    out1_T,
    out2_T,
    out3_T,
    out4_T,
    out5_T,
    out6_T,
    out7_T);
  output [3:0]in_top_bus_I;
  input [3:0]in_top_bus_O;
  input [3:0]in_top_bus_T;
  output [1:0]in_top_uart_gpio_bus_I;
  input [1:0]in_top_uart_gpio_bus_O;
  input [1:0]in_top_uart_gpio_bus_T;
  output [1:0]in_top_i2c_gpio_bus_I;
  input [1:0]in_top_i2c_gpio_bus_O;
  input [1:0]in_top_i2c_gpio_bus_T;
  output [3:0]in_bottom_bus_I;
  input [3:0]in_bottom_bus_O;
  input [3:0]in_bottom_bus_T;
  output [1:0]in_bottom_uart_gpio_bus_I;
  input [1:0]in_bottom_uart_gpio_bus_O;
  input [1:0]in_bottom_uart_gpio_bus_T;
  output [1:0]in_bottom_i2c_gpio_bus_I;
  input [1:0]in_bottom_i2c_gpio_bus_O;
  input [1:0]in_bottom_i2c_gpio_bus_T;
  output in0_I;
  output in1_I;
  output in2_I;
  output in3_I;
  output in4_I;
  output in5_I;
  output in6_I;
  output in7_I;
  input in0_O;
  input in1_O;
  input in2_O;
  input in3_O;
  input in4_O;
  input in5_O;
  input in6_O;
  input in7_O;
  input in0_T;
  input in1_T;
  input in2_T;
  input in3_T;
  input in4_T;
  input in5_T;
  input in6_T;
  input in7_T;
  input out0_I;
  input out1_I;
  input out2_I;
  input out3_I;
  input out4_I;
  input out5_I;
  input out6_I;
  input out7_I;
  output out0_O;
  output out1_O;
  output out2_O;
  output out3_O;
  output out4_O;
  output out5_O;
  output out6_O;
  output out7_O;
  output out0_T;
  output out1_T;
  output out2_T;
  output out3_T;
  output out4_T;
  output out5_T;
  output out6_T;
  output out7_T;

  wire \<const0> ;
  wire in0_O;
  wire in0_T;
  wire in1_O;
  wire in1_T;
  wire in2_O;
  wire in2_T;
  wire in3_O;
  wire in3_T;
  wire [3:0]in_bottom_bus_O;
  wire [3:0]in_bottom_bus_T;
  wire out0_I;
  wire out1_I;
  wire out2_I;
  wire out3_I;
  wire out4_I;
  wire out5_I;
  wire out6_I;
  wire out7_I;

  assign in0_I = out0_I;
  assign in1_I = out1_I;
  assign in2_I = out2_I;
  assign in3_I = out3_I;
  assign in4_I = \<const0> ;
  assign in5_I = \<const0> ;
  assign in6_I = \<const0> ;
  assign in7_I = \<const0> ;
  assign in_bottom_bus_I[3] = out7_I;
  assign in_bottom_bus_I[2] = out6_I;
  assign in_bottom_bus_I[1] = out5_I;
  assign in_bottom_bus_I[0] = out4_I;
  assign in_bottom_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[0] = \<const0> ;
  assign in_top_bus_I[3] = \<const0> ;
  assign in_top_bus_I[2] = \<const0> ;
  assign in_top_bus_I[1] = \<const0> ;
  assign in_top_bus_I[0] = \<const0> ;
  assign in_top_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_top_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_top_uart_gpio_bus_I[1] = \<const0> ;
  assign in_top_uart_gpio_bus_I[0] = \<const0> ;
  assign out0_O = in0_O;
  assign out0_T = in0_T;
  assign out1_O = in1_O;
  assign out1_T = in1_T;
  assign out2_O = in2_O;
  assign out2_T = in2_T;
  assign out3_O = in3_O;
  assign out3_T = in3_T;
  assign out4_O = in_bottom_bus_O[0];
  assign out4_T = in_bottom_bus_T[0];
  assign out5_O = in_bottom_bus_O[1];
  assign out5_T = in_bottom_bus_T[1];
  assign out6_O = in_bottom_bus_O[2];
  assign out6_T = in_bottom_bus_T[2];
  assign out7_O = in_bottom_bus_O[3];
  assign out7_T = in_bottom_bus_T[3];
  GND GND
       (.G(\<const0> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_cntrl_reg
   (spicr_bits_7_8_frm_axi_clk,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ,
    spicr_6_rxfifo_rst_frm_axi_clk,
    reset2ip_reset_int,
    bus2ip_wrce_int,
    s_axi_wdata,
    s_axi_aclk,
    SPICR_data_int_reg0,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg );
  output [1:0]spicr_bits_7_8_frm_axi_clk;
  output prmry_in;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ;
  output \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ;
  output spicr_6_rxfifo_rst_frm_axi_clk;
  input reset2ip_reset_int;
  input [0:0]bus2ip_wrce_int;
  input [9:0]s_axi_wdata;
  input s_axi_aclk;
  input SPICR_data_int_reg0;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ;

  wire Bus_RNW_reg;
  wire \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0 ;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0 ;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire SPICR_data_int_reg0;
  wire [0:0]bus2ip_wrce_int;
  wire prmry_in;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [9:0]s_axi_wdata;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;

  FDSE \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[8]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ),
        .S(reset2ip_reset_int));
  FDSE \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[7]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ),
        .S(reset2ip_reset_int));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1 
       (.I0(spicr_6_rxfifo_rst_frm_axi_clk),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .I2(s_axi_wdata[6]),
        .I3(reset2ip_reset_int),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ),
        .O(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0 ));
  FDRE \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1_n_0 ),
        .Q(spicr_6_rxfifo_rst_frm_axi_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1 
       (.I0(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .I2(s_axi_wdata[5]),
        .I3(reset2ip_reset_int),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ),
        .O(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0 ));
  FDRE \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1_n_0 ),
        .Q(\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 ),
        .R(1'b0));
  FDRE \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[4]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ),
        .R(reset2ip_reset_int));
  FDRE \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ),
        .R(reset2ip_reset_int));
  FDRE \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[2]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .R(reset2ip_reset_int));
  FDRE \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .R(reset2ip_reset_int));
  FDRE \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[0]),
        .Q(prmry_in),
        .R(reset2ip_reset_int));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[2]),
        .Q(spicr_bits_7_8_frm_axi_clk[1]),
        .R(reset2ip_reset_int));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce_int),
        .D(s_axi_wdata[1]),
        .Q(spicr_bits_7_8_frm_axi_clk[0]),
        .R(reset2ip_reset_int));
  FDRE \SPICR_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(SPICR_data_int_reg0),
        .D(s_axi_wdata[9]),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ),
        .R(reset2ip_reset_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_core_interface
   (sck_t,
    io0_t,
    ss_t,
    io1_t,
    sck_o,
    p_1_in,
    prmry_in,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ,
    sw_rst_cond_d1,
    irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in17_in,
    irpt_rdack_d1,
    p_24_out,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ,
    p_1_in5_in,
    p_2_in7_in,
    p_3_in,
    p_4_in,
    p_5_in,
    p_6_in,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ,
    p_20_out,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    p_16_out,
    ip2Bus_RdAck_intr_reg_hole_d1,
    p_15_out,
    ip2Bus_WrAck_core_reg_1,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ,
    spicr_6_rxfifo_rst_frm_axi_clk,
    ipif_glbl_irpt_enable_reg,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 ,
    sr_5_Tx_Empty_int,
    io1_o,
    ss_o,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_7 ,
    prmry_vect_in,
    ip2intc_irpt,
    Q,
    scndry_out,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ,
    \s_axi_rdata_i_reg[31] ,
    s_axi_aclk,
    rd_ce_or_reduce_core_cmb,
    bus2ip_wrce_int,
    s_axi_wdata,
    ext_spi_clk,
    spisel,
    sck_i,
    IP2Bus_Error_1,
    SPICR_data_int_reg0,
    bus2ip_reset_ipif_inverted,
    sw_rst_cond,
    reset_trig0,
    irpt_wrack,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    Receive_ip2bus_error0,
    sr_5_Tx_Empty_i_reg,
    sr_5_Tx_Empty_i1,
    Bus_RNW_reg_reg,
    ip2Bus_WrAck_intr_reg_hole0,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    intr_controller_rd_ce_or_reduce,
    ip2Bus_RdAck_intr_reg_hole0,
    bus2ip_rnw_i_reg,
    Bus_RNW_reg_reg_2,
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ,
    irpt_wrack_d1_reg,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ,
    D,
    E,
    io1_i_sync,
    io0_i_sync);
  output sck_t;
  output io0_t;
  output ss_t;
  output io1_t;
  output sck_o;
  output [0:0]p_1_in;
  output prmry_in;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ;
  output sw_rst_cond_d1;
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  output p_1_in35_in;
  output p_1_in32_in;
  output p_1_in29_in;
  output p_1_in26_in;
  output p_1_in23_in;
  output p_1_in17_in;
  output irpt_rdack_d1;
  output p_24_out;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ;
  output p_1_in5_in;
  output p_2_in7_in;
  output p_3_in;
  output p_4_in;
  output p_5_in;
  output p_6_in;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ;
  output p_20_out;
  output ip2Bus_WrAck_intr_reg_hole_d1;
  output ip2Bus_WrAck_core_reg_d1;
  output p_16_out;
  output ip2Bus_RdAck_intr_reg_hole_d1;
  output p_15_out;
  output ip2Bus_WrAck_core_reg_1;
  output \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  output spicr_6_rxfifo_rst_frm_axi_clk;
  output ipif_glbl_irpt_enable_reg;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 ;
  output sr_5_Tx_Empty_int;
  output io1_o;
  output [0:0]ss_o;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_7 ;
  output [0:0]prmry_vect_in;
  output ip2intc_irpt;
  output [6:0]Q;
  output scndry_out;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ;
  output [10:0]\s_axi_rdata_i_reg[31] ;
  input s_axi_aclk;
  input rd_ce_or_reduce_core_cmb;
  input [0:0]bus2ip_wrce_int;
  input [9:0]s_axi_wdata;
  input ext_spi_clk;
  input spisel;
  input sck_i;
  input IP2Bus_Error_1;
  input SPICR_data_int_reg0;
  input bus2ip_reset_ipif_inverted;
  input sw_rst_cond;
  input reset_trig0;
  input irpt_wrack;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input Receive_ip2bus_error0;
  input sr_5_Tx_Empty_i_reg;
  input sr_5_Tx_Empty_i1;
  input Bus_RNW_reg_reg;
  input ip2Bus_WrAck_intr_reg_hole0;
  input Bus_RNW_reg_reg_0;
  input Bus_RNW_reg_reg_1;
  input intr_controller_rd_ce_or_reduce;
  input ip2Bus_RdAck_intr_reg_hole0;
  input bus2ip_rnw_i_reg;
  input Bus_RNW_reg_reg_2;
  input \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  input irpt_wrack_d1_reg;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ;
  input [10:0]D;
  input [0:0]E;
  input io1_i_sync;
  input io0_i_sync;

  wire Allow_MODF_Strobe;
  wire Allow_Slave_MODF_Strobe;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  wire [10:0]D;
  wire D_0;
  wire D_1;
  wire [0:0]E;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_7 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire IP2Bus_Error_1;
  wire IP2Bus_RdAck_1;
  wire IP2Bus_WrAck_1;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_11 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_22 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_25 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_27 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_28 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_29 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_30 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_31 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_32 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_6 ;
  wire \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_7 ;
  wire MODF_strobe0;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_10 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_11 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_12 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_13 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_14 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_15 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_17 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_18 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_22 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_25 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_26 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_27 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_28 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_29 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_3 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_30 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_31 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_32 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_35 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_38 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_41 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_6 ;
  wire \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_9 ;
  wire \NO_FIFO_EXISTS.QSPI_RX_TX_REG_n_21 ;
  wire [6:0]Q;
  wire R;
  wire RESET_SYNC_AXI_SPI_CLK_INST_n_0;
  wire Receive_ip2bus_error0;
  wire SOFT_RESET_I_n_1;
  wire SPICR_2_MST_N_SLV_to_spi_clk;
  wire SPICR_data_int_reg0;
  wire SPISEL_sync;
  wire SR_5_Tx_Empty_d1;
  wire Slave_MODF_strobe0;
  wire bus2ip_reset_ipif_inverted;
  wire bus2ip_rnw_i_reg;
  wire [0:0]bus2ip_wrce_int;
  wire data_in;
  wire [0:7]data_to_rx_fifo;
  wire dtr_underrun_int;
  wire dtr_underrun_to_axi_clk;
  wire ext_spi_clk;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire io0_i_sync;
  wire io0_t;
  wire io1_i_sync;
  wire io1_o;
  wire io1_t;
  wire ip2Bus_RdAck_core_reg;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire modf_strobe_cdc_from_spi_int_2;
  wire modf_strobe_int;
  wire p_0_out;
  wire p_15_out;
  wire p_16_out;
  wire [0:0]p_1_in;
  wire p_1_in17_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in5_in;
  wire p_20_out;
  wire p_24_out;
  wire p_2_in;
  wire p_2_in7_in;
  wire p_2_out;
  wire p_3_in;
  wire p_4_in;
  wire p_4_out;
  wire p_5_in;
  wire p_6_in;
  wire p_7_out;
  wire prmry_in;
  wire [0:0]prmry_vect_in;
  wire rd_ce_or_reduce_core_cmb;
  wire read_ack_delay_6;
  wire read_ack_delay_7;
  wire [0:7]receive_data_to_axi_clk;
  wire register_Data_slvsel_int;
  wire reset2ip_reset_int;
  wire reset_trig0;
  wire rst_to_spi_int;
  wire s_axi_aclk;
  wire [10:0]\s_axi_rdata_i_reg[31] ;
  wire [9:0]s_axi_wdata;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire scndry_out;
  wire serial_dout_int;
  wire slave_MODF_strobe_int;
  wire spiXfer_done_int;
  wire spiXfer_done_to_axi_clk;
  wire [1:1]spi_cntrl_ns;
  wire spicr_0_loop_to_spi_clk;
  wire spicr_1_spe_to_spi_clk;
  wire spicr_3_cpol_to_spi_clk;
  wire spicr_4_cpha_to_spi_clk;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire spicr_7_ss_to_spi_clk;
  wire spicr_9_lsb_to_spi_clk;
  wire [1:0]spicr_bits_7_8_frm_axi_clk;
  wire spisel;
  wire spisel_d1_reg;
  wire spisel_pulse_cdc_from_spi_int_2;
  wire sr_5_Tx_Empty_i1;
  wire sr_5_Tx_Empty_i_reg;
  wire sr_5_Tx_Empty_int;
  wire [0:0]ss_o;
  wire ss_t;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire [0:7]transmit_Data_frm_axi_clk;
  wire tx_Reg_Soft_Reset_op;
  wire tx_empty_signal_handshake_gnt;
  wire tx_empty_signal_handshake_req;
  wire tx_fifo_empty;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_cntrl_reg CONTROL_REG_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0 (\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (ip2Bus_WrAck_core_reg_1),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .prmry_in(prmry_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .spicr_bits_7_8_frm_axi_clk(spicr_bits_7_8_frm_axi_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control__parameterized0 INTERRUPT_CONTROL_I
       (.E(E),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .IP2Bus_RdAck_1(IP2Bus_RdAck_1),
        .\LOGIC_GENERATION_CDC.DRR_OVERRUN_SYNC_SPI_cdc_to_AXI_3 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_11 ),
        .\LOGIC_GENERATION_CDC.Slave_MODF_strobe_cdc_from_spi_d3_reg (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_14 ),
        .\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_d3_reg (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_15 ),
        .\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_13 ),
        .\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_12 ),
        .\LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_d3_reg (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_10 ),
        .Q(Q),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg),
        .dtr_underrun_d1_reg(\NO_FIFO_EXISTS.QSPI_RX_TX_REG_n_21 ),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_2_in(p_2_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata({s_axi_wdata[7],s_axi_wdata[5:0]}));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\s_axi_rdata_i_reg[31] [10]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\s_axi_rdata_i_reg[31] [9]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\s_axi_rdata_i_reg[31] [8]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\s_axi_rdata_i_reg[31] [7]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\s_axi_rdata_i_reg[31] [6]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\s_axi_rdata_i_reg[31] [5]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\s_axi_rdata_i_reg[31] [4]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\s_axi_rdata_i_reg[31] [3]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\s_axi_rdata_i_reg[31] [2]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\s_axi_rdata_i_reg[31] [1]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\s_axi_rdata_i_reg[31] [0]),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_Error_1),
        .Q(p_1_in),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_RdAck_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_RdAck_1),
        .Q(p_15_out),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_WrAck_1),
        .Q(p_16_out),
        .R(reset2ip_reset_int));
  LUT2 #(
    .INIT(4'h2)) 
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1 
       (.I0(read_ack_delay_6),
        .I1(read_ack_delay_7),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0 ));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0 ),
        .Q(ip2Bus_RdAck_core_reg),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_core_reg),
        .Q(ip2Bus_WrAck_core_reg_1),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_0),
        .Q(ip2Bus_WrAck_core_reg_d1),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_1),
        .Q(ip2Bus_WrAck_core_reg),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  (* srl_name = "inst/axi_quad_spi_0/U0/\NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r " *) 
  SRL16E \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_axi_aclk),
        .D(rd_ce_or_reduce_core_cmb),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_srl4___NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate 
       (.I0(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_NO_DUAL_QUAD_MODE.QSPI_NORMAL_QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I_LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg_r_n_0 ),
        .Q(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_r_n_0 ),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_6_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg_gate_n_0 ),
        .Q(read_ack_delay_6),
        .R(reset2ip_reset_int));
  FDRE \LEGACY_MD_WR_RD_ACK_GEN.read_ack_delay_7_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_ack_delay_6),
        .Q(read_ack_delay_7),
        .R(reset2ip_reset_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_mode_0_module \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I 
       (.Allow_MODF_Strobe(Allow_MODF_Strobe),
        .Allow_Slave_MODF_Strobe(Allow_Slave_MODF_Strobe),
        .D(spi_cntrl_ns),
        .D_0(D_0),
        .D_1(D_1),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_38 ),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ({data_to_rx_fifo[0],data_to_rx_fifo[1],data_to_rx_fifo[2],data_to_rx_fifo[3],data_to_rx_fifo[4],data_to_rx_fifo[5],data_to_rx_fifo[6],data_to_rx_fifo[7]}),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (dtr_underrun_int),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_41 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_3 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_35 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 (spicr_0_loop_to_spi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 (SPICR_2_MST_N_SLV_to_spi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_22 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 (spicr_1_spe_to_spi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_6 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 (spicr_3_cpol_to_spi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 (spicr_4_cpha_to_spi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 (spicr_9_lsb_to_spi_clk),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 (spicr_7_ss_to_spi_clk),
        .\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg (modf_strobe_cdc_from_spi_int_2),
        .\LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg (spisel_pulse_cdc_from_spi_int_2),
        .MODF_strobe0(MODF_strobe0),
        .\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_22 ),
        .\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 ({\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_25 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_26 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_27 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_28 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_29 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_30 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_31 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_32 }),
        .\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 (data_in),
        .Q({\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_27 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_28 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_29 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_30 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_31 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_32 }),
        .R(R),
        .RESET_SYNC_AX2S_2(RESET_SYNC_AXI_SPI_CLK_INST_n_0),
        .Rst_to_spi(rst_to_spi_int),
        .SPISEL_sync(SPISEL_sync),
        .SPIXfer_done_int_d1_reg_0(\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_11 ),
        .SR_5_Tx_Empty_d1(SR_5_Tx_Empty_d1),
        .\SS_O_reg[0]_0 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_25 ),
        .Slave_MODF_strobe0(Slave_MODF_strobe0),
        .ext_spi_clk(ext_spi_clk),
        .io0_t(io0_t),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .modf_strobe_int(modf_strobe_int),
        .out({\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_6 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_7 }),
        .p_0_out(p_0_out),
        .p_2_out(p_2_out),
        .p_4_out(p_4_out),
        .p_7_out(p_7_out),
        .prmry_in(spisel_d1_reg),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .scndry_out(tx_fifo_empty),
        .scndry_vect_out(register_Data_slvsel_int),
        .serial_dout_int(serial_dout_int),
        .slave_MODF_strobe_int(slave_MODF_strobe_int),
        .spiXfer_done_int(spiXfer_done_int),
        .spisel(spisel),
        .sr_7_Rx_Empty_reg_reg(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 ),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .transfer_start_d1_reg_0(\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cross_clk_sync_fifo_0 \NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST 
       (.Allow_MODF_Strobe(Allow_MODF_Strobe),
        .Allow_Slave_MODF_Strobe(Allow_Slave_MODF_Strobe),
        .Allow_Slave_MODF_Strobe_reg(\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_3 ),
        .Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg_2),
        .\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_4 ),
        .\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_3 ),
        .\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_2 ),
        .\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_1 ),
        .\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9] (prmry_in),
        .D(spi_cntrl_ns),
        .\DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg (dtr_underrun_int),
        .D_0(D_1),
        .D_1(D_0),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (modf_strobe_cdc_from_spi_int_2),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (tx_fifo_empty),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_25 ),
        .\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_15 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_14 ),
        .\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_13 ),
        .\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_12 ),
        .\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_11 ),
        .\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_10 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[26]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[29] (scndry_out),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (ip2Bus_WrAck_core_reg_1),
        .MODF_strobe0(MODF_strobe0),
        .\OTHER_RATIO_GENERATE.Serial_Dout_reg (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_38 ),
        .\OTHER_RATIO_GENERATE.Shift_Reg_reg[0] ({\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_25 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_26 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_27 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_28 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_29 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_30 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_31 ,\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_32 }),
        .\OTHER_RATIO_GENERATE.Shift_Reg_reg[0]_0 (spicr_9_lsb_to_spi_clk),
        .\OTHER_RATIO_GENERATE.Shift_Reg_reg[7] (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_6 ),
        .\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] (data_in),
        .\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]_0 (spicr_0_loop_to_spi_clk),
        .\OTHER_RATIO_GENERATE.sck_o_int_reg (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_22 ),
        .\OTHER_RATIO_GENERATE.sck_o_int_reg_0 (spicr_4_cpha_to_spi_clk),
        .Q({\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_27 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_28 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_29 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_30 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_31 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_32 }),
        .R(R),
        .\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST (spicr_3_cpol_to_spi_clk),
        .\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ({receive_data_to_axi_clk[0],receive_data_to_axi_clk[1],receive_data_to_axi_clk[2],receive_data_to_axi_clk[3],receive_data_to_axi_clk[4],receive_data_to_axi_clk[5],receive_data_to_axi_clk[6],receive_data_to_axi_clk[7]}),
        .\RESET_FLOPS[15].RST_FLOPS (SOFT_RESET_I_n_1),
        .\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg (\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_11 ),
        .Rst_to_spi(rst_to_spi_int),
        .\SPICR_data_int_reg[0] (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_5 ),
        .SPISEL_sync(SPISEL_sync),
        .\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] (prmry_vect_in),
        .SPIXfer_done_int_d1_reg(\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_22 ),
        .SPI_TRISTATE_CONTROL_V(\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_41 ),
        .SR_5_Tx_Empty_d1(SR_5_Tx_Empty_d1),
        .\SS_O_reg[0] (spicr_7_ss_to_spi_clk),
        .Slave_MODF_strobe0(Slave_MODF_strobe0),
        .Slave_MODF_strobe_reg(spicr_1_spe_to_spi_clk),
        .\TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] ({transmit_Data_frm_axi_clk[0],transmit_Data_frm_axi_clk[1],transmit_Data_frm_axi_clk[2],transmit_Data_frm_axi_clk[3],transmit_Data_frm_axi_clk[4],transmit_Data_frm_axi_clk[5],transmit_Data_frm_axi_clk[6],transmit_Data_frm_axi_clk[7]}),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .dtr_underrun_d1_reg(dtr_underrun_to_axi_clk),
        .ext_spi_clk(ext_spi_clk),
        .io0_i_sync(io0_i_sync),
        .io1_i_sync(io1_i_sync),
        .ip2Bus_RdAck_core_reg(ip2Bus_RdAck_core_reg),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .modf_reg(\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_9 ),
        .modf_reg_0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_7 ),
        .modf_strobe_int(modf_strobe_int),
        .out({\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_6 ,\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_7 }),
        .p_0_out(p_0_out),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_2_out(p_2_out),
        .p_4_out(p_4_out),
        .prmry_in(spisel_pulse_cdc_from_spi_int_2),
        .prmry_vect_in({data_to_rx_fifo[0],data_to_rx_fifo[1],data_to_rx_fifo[2],data_to_rx_fifo[3],data_to_rx_fifo[4],data_to_rx_fifo[5],data_to_rx_fifo[6],data_to_rx_fifo[7]}),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata({s_axi_wdata[7],s_axi_wdata[5:4],s_axi_wdata[2:0]}),
        .scndry_out(SPICR_2_MST_N_SLV_to_spi_clk),
        .scndry_vect_out(register_Data_slvsel_int),
        .serial_dout_int(serial_dout_int),
        .slave_MODF_strobe_int(slave_MODF_strobe_int),
        .spiXfer_done_int(spiXfer_done_int),
        .spiXfer_done_to_axi_clk(spiXfer_done_to_axi_clk),
        .spicr_bits_7_8_frm_axi_clk(spicr_bits_7_8_frm_axi_clk),
        .spisel_d2_reg(spisel_d1_reg),
        .sr_5_Tx_Empty_i_reg(\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_18 ),
        .sr_5_Tx_Empty_i_reg_0(sr_5_Tx_Empty_int),
        .sr_7_Rx_Empty_reg_reg(\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_17 ),
        .sr_7_Rx_Empty_reg_reg_0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 ),
        .transfer_start_reg(\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_35 ),
        .tx_Reg_Soft_Reset_op(tx_Reg_Soft_Reset_op),
        .tx_empty_signal_handshake_req_i_reg(tx_empty_signal_handshake_gnt),
        .tx_empty_signal_handshake_req_i_reg_0(tx_empty_signal_handshake_req));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_receive_transmit_reg \NO_FIFO_EXISTS.QSPI_RX_TX_REG 
       (.\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 ({receive_data_to_axi_clk[0],receive_data_to_axi_clk[1],receive_data_to_axi_clk[2],receive_data_to_axi_clk[3],receive_data_to_axi_clk[4],receive_data_to_axi_clk[5],receive_data_to_axi_clk[6],receive_data_to_axi_clk[7]}),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ({transmit_Data_frm_axi_clk[0],transmit_Data_frm_axi_clk[1],transmit_Data_frm_axi_clk[2],transmit_Data_frm_axi_clk[3],transmit_Data_frm_axi_clk[4],transmit_Data_frm_axi_clk[5],transmit_Data_frm_axi_clk[6],transmit_Data_frm_axi_clk[7]}),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_6 ),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (tx_empty_signal_handshake_req),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 (tx_empty_signal_handshake_gnt),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (dtr_underrun_to_axi_clk),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\NO_FIFO_EXISTS.QSPI_RX_TX_REG_n_21 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24]_0 ),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31]_0 ),
        .\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_17 ),
        .\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_18 ),
        .\RESET_FLOPS[15].RST_FLOPS (SOFT_RESET_I_n_1),
        .Receive_ip2bus_error0(Receive_ip2bus_error0),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in5_in(p_1_in5_in),
        .p_20_out(p_20_out),
        .p_24_out(p_24_out),
        .p_2_in7_in(p_2_in7_in),
        .p_3_in(p_3_in),
        .p_4_in(p_4_in),
        .p_5_in(p_5_in),
        .p_6_in(p_6_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .spiXfer_done_to_axi_clk(spiXfer_done_to_axi_clk),
        .sr_5_Tx_Empty_i1(sr_5_Tx_Empty_i1),
        .sr_5_Tx_Empty_i_reg_0(sr_5_Tx_Empty_i_reg),
        .sr_5_Tx_Empty_int(sr_5_Tx_Empty_int),
        .tx_Reg_Soft_Reset_op(tx_Reg_Soft_Reset_op));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_sync_module RESET_SYNC_AXI_SPI_CLK_INST
       (.Allow_MODF_Strobe_reg(RESET_SYNC_AXI_SPI_CLK_INST_n_0),
        .Rst_to_spi(rst_to_spi_int),
        .SPISEL_sync(SPISEL_sync),
        .ext_spi_clk(ext_spi_clk),
        .p_7_out(p_7_out),
        .reset2ip_reset_int(reset2ip_reset_int),
        .transfer_start_reg(\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset SOFT_RESET_I
       (.\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] (\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .IP2Bus_WrAck_1(IP2Bus_WrAck_1),
        .\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] (SOFT_RESET_I_n_1),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .ip2Bus_WrAck_core_reg(ip2Bus_WrAck_core_reg),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .p_2_in(p_2_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_status_slave_sel_reg \STATUS_REG_MODE_0_GEN.STATUS_SLAVE_SEL_REG_I 
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_7 ),
        .\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg (\NO_FIFO_EXISTS.CROSS_CLK_FIFO_0_INST_n_9 ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg (ip2Bus_WrAck_core_reg_1),
        .prmry_vect_in(prmry_vect_in),
        .reset2ip_reset_int(reset2ip_reset_int),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[0]));
  FDRE ip2Bus_RdAck_intr_reg_hole_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_controller_rd_ce_or_reduce),
        .Q(ip2Bus_RdAck_intr_reg_hole_d1),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_RdAck_intr_reg_hole_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_RdAck_intr_reg_hole0),
        .Q(ip2Bus_RdAck_intr_reg_hole),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_WrAck_intr_reg_hole_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg),
        .Q(ip2Bus_WrAck_intr_reg_hole_d1),
        .R(reset2ip_reset_int));
  FDRE ip2Bus_WrAck_intr_reg_hole_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_intr_reg_hole0),
        .Q(ip2Bus_WrAck_intr_reg_hole),
        .R(reset2ip_reset_int));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_mode_0_module
   (sck_t,
    io0_t,
    ss_t,
    io1_t,
    SPISEL_sync,
    sck_o,
    out,
    slave_MODF_strobe_int,
    modf_strobe_int,
    prmry_in,
    SPIXfer_done_int_d1_reg_0,
    transfer_start_d1_reg_0,
    spiXfer_done_int,
    SR_5_Tx_Empty_d1,
    Allow_Slave_MODF_Strobe,
    Allow_MODF_Strobe,
    io1_o,
    serial_dout_int,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    ss_o,
    p_4_out,
    \OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ,
    p_2_out,
    p_0_out,
    \SS_O_reg[0]_0 ,
    Q,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    D_0,
    ext_spi_clk,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ,
    spisel,
    sck_i,
    R,
    RESET_SYNC_AX2S_2,
    Slave_MODF_strobe0,
    MODF_strobe0,
    Rst_to_spi,
    scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ,
    \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ,
    \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg ,
    D_1,
    p_7_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 ,
    scndry_vect_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 ,
    sr_7_Rx_Empty_reg_reg,
    D,
    \OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 ,
    \OTHER_RATIO_GENERATE.serial_dout_int_reg_0 );
  output sck_t;
  output io0_t;
  output ss_t;
  output io1_t;
  output SPISEL_sync;
  output sck_o;
  output [1:0]out;
  output slave_MODF_strobe_int;
  output modf_strobe_int;
  output prmry_in;
  output SPIXfer_done_int_d1_reg_0;
  output transfer_start_d1_reg_0;
  output spiXfer_done_int;
  output SR_5_Tx_Empty_d1;
  output Allow_Slave_MODF_Strobe;
  output Allow_MODF_Strobe;
  output io1_o;
  output serial_dout_int;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output [0:0]ss_o;
  output p_4_out;
  output \OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ;
  output p_2_out;
  output p_0_out;
  output \SS_O_reg[0]_0 ;
  output [6:0]Q;
  output [7:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input D_0;
  input ext_spi_clk;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  input spisel;
  input sck_i;
  input R;
  input RESET_SYNC_AX2S_2;
  input Slave_MODF_strobe0;
  input MODF_strobe0;
  input Rst_to_spi;
  input scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  input \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  input \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ;
  input \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg ;
  input D_1;
  input p_7_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 ;
  input [0:0]scndry_vect_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 ;
  input sr_7_Rx_Empty_reg_reg;
  input [0:0]D;
  input [7:0]\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 ;
  input [0:0]\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ;

  wire Allow_MODF_Strobe;
  wire Allow_MODF_Strobe_i_1_n_0;
  wire Allow_Slave_MODF_Strobe;
  wire [4:0]Count;
  wire Count_trigger;
  wire Count_trigger_d1;
  wire [0:0]D;
  wire \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_i_1_n_0 ;
  wire D_0;
  wire D_1;
  wire \FSM_sequential_LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.spi_cntrl_ps[0]_i_1_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 ;
  wire [7:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 ;
  wire \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.DRR_Overrun_reg_int_i_1_n_0 ;
  wire \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.rx_empty_no_fifo_CDC_n_0 ;
  wire \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_1_n_0 ;
  wire \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_2_n_0 ;
  wire \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_3_n_0 ;
  wire \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg ;
  wire \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg ;
  wire MODF_strobe0;
  wire \OTHER_RATIO_GENERATE.Count[3]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count[4]_i_4_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ;
  wire \OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ;
  wire \OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ;
  wire \OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ;
  wire \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0 ;
  wire \OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0 ;
  wire \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0 ;
  wire [7:0]\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 ;
  wire \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0 ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_i_2_n_0 ;
  wire \OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0 ;
  wire \OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0 ;
  wire [0:0]\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ;
  wire [6:0]Q;
  wire R;
  wire \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0 ;
  wire RESET_SYNC_AX2S_2;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_4_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0 ;
  wire \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0 ;
  wire [0:2]Ratio_Count;
  wire Rst_to_spi;
  wire Rx_FIFO_Full_reg;
  wire SCK_I_sync;
  wire SPISEL_sync;
  wire SPIXfer_done_int_d1;
  wire SPIXfer_done_int_d1_reg_0;
  wire SPIXfer_done_int_pulse;
  wire SPIXfer_done_int_pulse_d1;
  wire SR_5_Tx_Empty_d1;
  wire SR_5_Tx_comeplete_Empty;
  wire SR_5_Tx_comeplete_Empty_i_1_n_0;
  wire \SS_O[0]_i_1_n_0 ;
  wire \SS_O_reg[0]_0 ;
  wire Slave_MODF_strobe0;
  wire drr_Overrun_int;
  wire ext_spi_clk;
  wire io0_t;
  wire io1_o;
  wire io1_t;
  wire modf_strobe_int;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire p_0_out;
  wire p_16_out;
  wire p_1_in10_in;
  wire p_2_out;
  wire p_3_in;
  wire p_4_out;
  wire p_7_out;
  wire prmry_in;
  wire [0:7]rx_shft_reg_mode_0011;
  wire [0:7]rx_shft_reg_mode_0110;
  wire [0:7]rx_shft_reg_s;
  wire sck_d1;
  wire sck_d2;
  wire sck_i;
  wire sck_i_d1;
  wire sck_o;
  wire sck_o_int;
  wire sck_t;
  wire scndry_out;
  wire [0:0]scndry_vect_out;
  wire serial_dout_int;
  wire slave_MODF_strobe_int;
  wire spiXfer_done_int;
  wire spisel;
  wire spisel_d1;
  wire sr_7_Rx_Empty_reg_reg;
  wire [0:0]ss_o;
  wire ss_t;
  wire transfer_start_d1;
  wire transfer_start_d1_reg_0;
  wire xfer_done_fifo_0;

  LUT2 #(
    .INIT(4'h2)) 
    Allow_MODF_Strobe_i_1
       (.I0(Allow_MODF_Strobe),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .O(Allow_MODF_Strobe_i_1_n_0));
  FDSE Allow_MODF_Strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Allow_MODF_Strobe_i_1_n_0),
        .Q(Allow_MODF_Strobe),
        .S(RESET_SYNC_AX2S_2));
  FDSE Allow_Slave_MODF_Strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_0 ),
        .Q(Allow_Slave_MODF_Strobe),
        .S(RESET_SYNC_AX2S_2));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_4 ),
        .I2(SR_5_Tx_comeplete_Empty),
        .I3(Rst_to_spi),
        .I4(SPISEL_sync),
        .I5(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .O(\DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_i_1_n_0 ));
  FDRE \DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\DTR_UNDERRUN_FIFO_0_GEN.DTR_underrun_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000555555551000)) 
    \FSM_sequential_LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.spi_cntrl_ps[0]_i_1 
       (.I0(scndry_out),
        .I1(transfer_start_d1),
        .I2(transfer_start_d1_reg_0),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(out[1]),
        .I5(out[0]),
        .O(\FSM_sequential_LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.spi_cntrl_ps[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "transfer_okay:01,temp_transfer_okay:10,idle:00" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.spi_cntrl_ps_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_sequential_LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.spi_cntrl_ps[0]_i_1_n_0 ),
        .Q(out[0]),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "transfer_okay:01,temp_transfer_okay:10,idle:00" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.spi_cntrl_ps_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D),
        .Q(out[1]),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.DRR_Overrun_reg_int_i_1 
       (.I0(drr_Overrun_int),
        .I1(SPIXfer_done_int_pulse_d1),
        .I2(Rx_FIFO_Full_reg),
        .O(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.DRR_Overrun_reg_int_i_1_n_0 ));
  FDRE \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.DRR_Overrun_reg_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.DRR_Overrun_reg_int_i_1_n_0 ),
        .Q(drr_Overrun_int),
        .R(Rst_to_spi));
  FDRE \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.Rx_FIFO_Full_reg_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.rx_empty_no_fifo_CDC_n_0 ),
        .Q(Rx_FIFO_Full_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized6 \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.rx_empty_no_fifo_CDC 
       (.\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.Rx_FIFO_Full_reg_reg (\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.rx_empty_no_fifo_CDC_n_0 ),
        .\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg (SPIXfer_done_int_d1_reg_0),
        .Rst_to_spi(Rst_to_spi),
        .Rx_FIFO_Full_reg(Rx_FIFO_Full_reg),
        .SPIXfer_done_int_d1(SPIXfer_done_int_d1),
        .drr_Overrun_int(drr_Overrun_int),
        .ext_spi_clk(ext_spi_clk),
        .sr_7_Rx_Empty_reg_reg(sr_7_Rx_Empty_reg_reg));
  LUT6 #(
    .INIT(64'h00000000FB00FBFB)) 
    \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(scndry_out),
        .I3(xfer_done_fifo_0),
        .I4(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_2_n_0 ),
        .I5(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_3_n_0 ),
        .O(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_2 
       (.I0(SPIXfer_done_int_d1),
        .I1(SPIXfer_done_int_d1_reg_0),
        .O(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_3 
       (.I0(Rst_to_spi),
        .I1(transfer_start_d1),
        .I2(transfer_start_d1_reg_0),
        .O(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_3_n_0 ));
  FDRE \LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOCAL_TX_EMPTY_RX_FULL_FIFO_0_GEN.xfer_done_fifo_0_i_1_n_0 ),
        .Q(xfer_done_fifo_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_CDC.drr_Overrun_int_cdc_from_spi_int_2_i_1 
       (.I0(drr_Overrun_int),
        .I1(D_1),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_i_1 
       (.I0(modf_strobe_int),
        .I1(\LOGIC_GENERATION_CDC.modf_strobe_cdc_from_spi_int_2_reg ),
        .O(p_2_out));
  LUT3 #(
    .INIT(8'h9A)) 
    \LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_CDC.spisel_pulse_cdc_from_spi_int_2_reg ),
        .I1(spisel_d1),
        .I2(prmry_in),
        .O(p_4_out));
  FDRE MODF_strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(MODF_strobe0),
        .Q(modf_strobe_int),
        .R(RESET_SYNC_AX2S_2));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \OTHER_RATIO_GENERATE.Count[0]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I1(p_1_in10_in),
        .O(Count[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \OTHER_RATIO_GENERATE.Count[1]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I2(p_1_in10_in),
        .O(Count[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \OTHER_RATIO_GENERATE.Count[2]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .I3(p_1_in10_in),
        .O(Count[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \OTHER_RATIO_GENERATE.Count[3]_i_1 
       (.I0(p_1_in10_in),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I4(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .O(\OTHER_RATIO_GENERATE.Count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE2FFFF)) 
    \OTHER_RATIO_GENERATE.Count[4]_i_1 
       (.I0(SPISEL_sync),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I2(xfer_done_fifo_0),
        .I3(Rst_to_spi),
        .I4(transfer_start_d1_reg_0),
        .I5(SPIXfer_done_int_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20202020202F2F20)) 
    \OTHER_RATIO_GENERATE.Count[4]_i_2 
       (.I0(\OTHER_RATIO_GENERATE.Count[4]_i_4_n_0 ),
        .I1(p_1_in10_in),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(SCK_I_sync),
        .I4(sck_i_d1),
        .I5(SPISEL_sync),
        .O(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \OTHER_RATIO_GENERATE.Count[4]_i_3 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .I4(p_1_in10_in),
        .O(Count[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \OTHER_RATIO_GENERATE.Count[4]_i_4 
       (.I0(Count_trigger_d1),
        .I1(Count_trigger),
        .O(\OTHER_RATIO_GENERATE.Count[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[0] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(Count[0]),
        .Q(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[1] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(Count[1]),
        .Q(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[2] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(Count[2]),
        .Q(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[3] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Count[3]_i_1_n_0 ),
        .Q(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.Count_reg[4] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Count[4]_i_2_n_0 ),
        .D(Count[4]),
        .Q(p_1_in10_in),
        .R(\OTHER_RATIO_GENERATE.Count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1 
       (.I0(Count_trigger),
        .I1(transfer_start_d1_reg_0),
        .I2(Rst_to_spi),
        .O(\OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.Count_trigger_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0 ),
        .Q(Count_trigger_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAA90000)) 
    \OTHER_RATIO_GENERATE.Count_trigger_i_1 
       (.I0(Count_trigger),
        .I1(Ratio_Count[1]),
        .I2(Ratio_Count[2]),
        .I3(Ratio_Count[0]),
        .I4(transfer_start_d1_reg_0),
        .I5(Rst_to_spi),
        .O(\OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.Count_trigger_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0 ),
        .Q(Count_trigger),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFE1FFFF)) 
    \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1 
       (.I0(Ratio_Count[1]),
        .I1(Ratio_Count[2]),
        .I2(Ratio_Count[0]),
        .I3(Rst_to_spi),
        .I4(transfer_start_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1 
       (.I0(Ratio_Count[1]),
        .I1(Ratio_Count[2]),
        .I2(Rst_to_spi),
        .I3(transfer_start_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1 
       (.I0(Ratio_Count[2]),
        .I1(Rst_to_spi),
        .I2(transfer_start_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.Ratio_Count_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0 ),
        .Q(Ratio_Count[0]),
        .R(1'b0));
  FDRE \OTHER_RATIO_GENERATE.Ratio_Count_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Ratio_Count[1]_i_1_n_0 ),
        .Q(Ratio_Count[1]),
        .R(1'b0));
  FDRE \OTHER_RATIO_GENERATE.Ratio_Count_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Ratio_Count[2]_i_1_n_0 ),
        .Q(Ratio_Count[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \OTHER_RATIO_GENERATE.Serial_Dout_i_1 
       (.I0(p_3_in),
        .I1(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 ),
        .I3(\OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0 ),
        .I4(io1_o),
        .O(\OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101F1010101F101F)) 
    \OTHER_RATIO_GENERATE.Serial_Dout_i_2 
       (.I0(\OTHER_RATIO_GENERATE.sck_o_int_i_2_n_0 ),
        .I1(SPIXfer_done_int_d1),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(scndry_out),
        .I5(SR_5_Tx_Empty_d1),
        .O(\OTHER_RATIO_GENERATE.Serial_Dout_reg_0 ));
  LUT6 #(
    .INIT(64'hF7FFF7FFF5FF0000)) 
    \OTHER_RATIO_GENERATE.Serial_Dout_i_4 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I1(transfer_start_d1),
        .I2(SPIXfer_done_int_d1),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ),
        .I5(transfer_start_d1_reg_0),
        .O(\OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0 ));
  FDSE \OTHER_RATIO_GENERATE.Serial_Dout_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0 ),
        .Q(io1_o),
        .S(Rst_to_spi));
  LUT5 #(
    .INIT(32'hF3F3A200)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0 ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I2(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0 ),
        .I3(transfer_start_d1_reg_0),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_5 ),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00060900)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I2(SPISEL_sync),
        .I3(SCK_I_sync),
        .I4(sck_i_d1),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2FFF2FFF2F2F2)) 
    \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4 
       (.I0(transfer_start_d1_reg_0),
        .I1(transfer_start_d1),
        .I2(SPIXfer_done_int_d1),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I4(Count_trigger_d1),
        .I5(Count_trigger),
        .O(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[0] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 [7]),
        .Q(p_3_in),
        .R(Rst_to_spi));
  FDSE \OTHER_RATIO_GENERATE.Shift_Reg_reg[1] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 [6]),
        .Q(Q[6]),
        .S(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[2] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 [5]),
        .Q(Q[5]),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[3] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 [4]),
        .Q(Q[4]),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[4] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 [3]),
        .Q(Q[3]),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[5] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 [2]),
        .Q(Q[2]),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[6] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 [1]),
        .Q(Q[1]),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.Shift_Reg_reg[7] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]_0 [0]),
        .Q(Q[0]),
        .R(Rst_to_spi));
  LUT3 #(
    .INIT(8'h08)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011[0]_i_1 
       (.I0(sck_d1),
        .I1(transfer_start_d1_reg_0),
        .I2(sck_d2),
        .O(p_16_out));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[0] 
       (.C(ext_spi_clk),
        .CE(p_16_out),
        .D(rx_shft_reg_mode_0011[1]),
        .Q(rx_shft_reg_mode_0011[0]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[1] 
       (.C(ext_spi_clk),
        .CE(p_16_out),
        .D(rx_shft_reg_mode_0011[2]),
        .Q(rx_shft_reg_mode_0011[1]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[2] 
       (.C(ext_spi_clk),
        .CE(p_16_out),
        .D(rx_shft_reg_mode_0011[3]),
        .Q(rx_shft_reg_mode_0011[2]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[3] 
       (.C(ext_spi_clk),
        .CE(p_16_out),
        .D(rx_shft_reg_mode_0011[4]),
        .Q(rx_shft_reg_mode_0011[3]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[4] 
       (.C(ext_spi_clk),
        .CE(p_16_out),
        .D(rx_shft_reg_mode_0011[5]),
        .Q(rx_shft_reg_mode_0011[4]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[5] 
       (.C(ext_spi_clk),
        .CE(p_16_out),
        .D(rx_shft_reg_mode_0011[6]),
        .Q(rx_shft_reg_mode_0011[5]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[6] 
       (.C(ext_spi_clk),
        .CE(p_16_out),
        .D(rx_shft_reg_mode_0011[7]),
        .Q(rx_shft_reg_mode_0011[6]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[7] 
       (.C(ext_spi_clk),
        .CE(p_16_out),
        .D(\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ),
        .Q(rx_shft_reg_mode_0011[7]),
        .R(Rst_to_spi));
  LUT3 #(
    .INIT(8'h08)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1 
       (.I0(sck_d2),
        .I1(transfer_start_d1_reg_0),
        .I2(sck_d1),
        .O(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[0] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ),
        .D(rx_shft_reg_mode_0110[1]),
        .Q(rx_shft_reg_mode_0110[0]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[1] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ),
        .D(rx_shft_reg_mode_0110[2]),
        .Q(rx_shft_reg_mode_0110[1]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[2] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ),
        .D(rx_shft_reg_mode_0110[3]),
        .Q(rx_shft_reg_mode_0110[2]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[3] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ),
        .D(rx_shft_reg_mode_0110[4]),
        .Q(rx_shft_reg_mode_0110[3]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[4] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ),
        .D(rx_shft_reg_mode_0110[5]),
        .Q(rx_shft_reg_mode_0110[4]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[5] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ),
        .D(rx_shft_reg_mode_0110[6]),
        .Q(rx_shft_reg_mode_0110[5]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[6] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ),
        .D(rx_shft_reg_mode_0110[7]),
        .Q(rx_shft_reg_mode_0110[6]),
        .R(Rst_to_spi));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[7] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ),
        .Q(rx_shft_reg_mode_0110[7]),
        .R(Rst_to_spi));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1 
       (.I0(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0 ),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I2(SR_5_Tx_Empty_d1),
        .I3(scndry_out),
        .I4(SPIXfer_done_int_d1_reg_0),
        .I5(p_7_out),
        .O(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[0] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[1]),
        .Q(rx_shft_reg_s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[1] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[2]),
        .Q(rx_shft_reg_s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[2] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[3]),
        .Q(rx_shft_reg_s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[3] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[4]),
        .Q(rx_shft_reg_s[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[4] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[5]),
        .Q(rx_shft_reg_s[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[5] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[6]),
        .Q(rx_shft_reg_s[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[6] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(rx_shft_reg_s[7]),
        .Q(rx_shft_reg_s[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7] 
       (.C(ext_spi_clk),
        .CE(\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0 ),
        .D(\OTHER_RATIO_GENERATE.serial_dout_int_reg_0 ),
        .Q(rx_shft_reg_s[7]),
        .R(1'b0));
  FDRE \OTHER_RATIO_GENERATE.sck_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_o_int),
        .Q(sck_d1),
        .R(Rst_to_spi));
  FDRE \OTHER_RATIO_GENERATE.sck_d2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_d1),
        .Q(sck_d2),
        .R(Rst_to_spi));
  LUT6 #(
    .INIT(64'h0000F10000000000)) 
    \OTHER_RATIO_GENERATE.sck_o_int_i_1 
       (.I0(SPIXfer_done_int_d1_reg_0),
        .I1(\OTHER_RATIO_GENERATE.sck_o_int_i_2_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I4(Rst_to_spi),
        .I5(\OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0 ),
        .O(\OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \OTHER_RATIO_GENERATE.sck_o_int_i_2 
       (.I0(transfer_start_d1_reg_0),
        .I1(transfer_start_d1),
        .O(\OTHER_RATIO_GENERATE.sck_o_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF55FFEFCCAA00)) 
    \OTHER_RATIO_GENERATE.sck_o_int_i_4 
       (.I0(\OTHER_RATIO_GENERATE.Count[4]_i_4_n_0 ),
        .I1(SPIXfer_done_int_d1_reg_0),
        .I2(transfer_start_d1),
        .I3(transfer_start_d1_reg_0),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_3 ),
        .I5(sck_o_int),
        .O(\OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.sck_o_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0 ),
        .Q(sck_o_int),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \OTHER_RATIO_GENERATE.serial_dout_int_i_1 
       (.I0(io1_o),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_10 ),
        .I2(Rst_to_spi),
        .O(\OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0 ));
  FDRE \OTHER_RATIO_GENERATE.serial_dout_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0 ),
        .Q(serial_dout_int),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0 ),
        .Q(sck_o),
        .R(R));
  LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
    \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I1(xfer_done_fifo_0),
        .I2(transfer_start_d1),
        .I3(p_1_in10_in),
        .I4(transfer_start_d1_reg_0),
        .I5(sck_o_int),
        .O(\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00004404)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_1 
       (.I0(SPIXfer_done_int_d1_reg_0),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_2_n_0 ),
        .I2(transfer_start_d1_reg_0),
        .I3(transfer_start_d1),
        .I4(Rst_to_spi),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_2 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .I3(\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0 ),
        .I4(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_3_n_0 ),
        .I5(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_4_n_0 ),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_3 
       (.I0(\OTHER_RATIO_GENERATE.Count_reg_n_0_[1] ),
        .I1(\OTHER_RATIO_GENERATE.Count_reg_n_0_[0] ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(\OTHER_RATIO_GENERATE.Count_reg_n_0_[3] ),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_4 
       (.I0(Count_trigger),
        .I1(p_1_in10_in),
        .I2(\OTHER_RATIO_GENERATE.Count_reg_n_0_[2] ),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_4_n_0 ));
  FDRE \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_ABSENT_GEN.SPIXfer_done_int_i_1_n_0 ),
        .Q(SPIXfer_done_int_d1_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(rx_shft_reg_s[7]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .I5(rx_shft_reg_s[0]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2 
       (.I0(rx_shft_reg_mode_0110[7]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I3(rx_shft_reg_mode_0011[7]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3 
       (.I0(rx_shft_reg_mode_0110[0]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I3(rx_shft_reg_mode_0011[0]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(rx_shft_reg_s[6]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .I5(rx_shft_reg_s[1]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2 
       (.I0(rx_shft_reg_mode_0110[6]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I3(rx_shft_reg_mode_0011[6]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3 
       (.I0(rx_shft_reg_mode_0110[1]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I3(rx_shft_reg_mode_0011[1]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(rx_shft_reg_s[5]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .I5(rx_shft_reg_s[2]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2 
       (.I0(rx_shft_reg_mode_0110[2]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I3(rx_shft_reg_mode_0011[2]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3 
       (.I0(rx_shft_reg_mode_0110[5]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I3(rx_shft_reg_mode_0011[5]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(rx_shft_reg_s[4]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .I5(rx_shft_reg_s[3]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2 
       (.I0(rx_shft_reg_mode_0110[4]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I3(rx_shft_reg_mode_0011[4]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h14D7)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3 
       (.I0(rx_shft_reg_mode_0110[3]),
        .I1(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_6 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_7 ),
        .I3(rx_shft_reg_mode_0011[3]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(rx_shft_reg_s[3]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .I5(rx_shft_reg_s[4]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(rx_shft_reg_s[2]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .I5(rx_shft_reg_s[5]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(rx_shft_reg_s[1]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .I5(rx_shft_reg_s[6]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1 
       (.I0(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0 ),
        .I1(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0 ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_2 ),
        .I3(rx_shft_reg_s[0]),
        .I4(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_8 ),
        .I5(rx_shft_reg_s[7]),
        .O(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[0] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[1] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[2] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[3] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[4] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[5] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[6] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[7] 
       (.C(ext_spi_clk),
        .CE(SPIXfer_done_int_pulse_d1),
        .D(\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [0]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    SCK_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_i),
        .Q(SCK_I_sync),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPISEL_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spisel),
        .Q(SPISEL_sync),
        .R(1'b0));
  FDRE SPIXfer_done_int_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_d1_reg_0),
        .Q(SPIXfer_done_int_d1),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h2)) 
    SPIXfer_done_int_pulse_d1_i_1
       (.I0(SPIXfer_done_int_d1_reg_0),
        .I1(SPIXfer_done_int_d1),
        .O(SPIXfer_done_int_pulse));
  FDRE SPIXfer_done_int_pulse_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse),
        .Q(SPIXfer_done_int_pulse_d1),
        .R(Rst_to_spi));
  FDRE SPIXfer_done_int_pulse_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse_d1),
        .Q(spiXfer_done_int),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPI_TRISTATE_CONTROL_II
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(sck_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPI_TRISTATE_CONTROL_III
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(io0_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPI_TRISTATE_CONTROL_IV
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(ss_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    SPI_TRISTATE_CONTROL_V
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .Q(io1_t),
        .R(1'b0));
  FDRE SR_5_Tx_Empty_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(SR_5_Tx_Empty_d1),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hBA00)) 
    SR_5_Tx_comeplete_Empty_i_1
       (.I0(SR_5_Tx_comeplete_Empty),
        .I1(SPIXfer_done_int_d1),
        .I2(SPIXfer_done_int_d1_reg_0),
        .I3(scndry_out),
        .O(SR_5_Tx_comeplete_Empty_i_1_n_0));
  FDRE SR_5_Tx_comeplete_Empty_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SR_5_Tx_comeplete_Empty_i_1_n_0),
        .Q(SR_5_Tx_comeplete_Empty),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4555)) 
    \SS_O[0]_i_1 
       (.I0(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_9 ),
        .I1(xfer_done_fifo_0),
        .I2(transfer_start_d1),
        .I3(\SS_O_reg[0]_0 ),
        .I4(scndry_vect_out),
        .I5(Rst_to_spi),
        .O(\SS_O[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7F755F5)) 
    \SS_O[0]_i_2 
       (.I0(scndry_out),
        .I1(scndry_vect_out),
        .I2(out[1]),
        .I3(xfer_done_fifo_0),
        .I4(out[0]),
        .O(\SS_O_reg[0]_0 ));
  FDRE \SS_O_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\SS_O[0]_i_1_n_0 ),
        .Q(ss_o),
        .R(1'b0));
  FDRE Slave_MODF_strobe_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Slave_MODF_strobe0),
        .Q(slave_MODF_strobe_int),
        .R(RESET_SYNC_AX2S_2));
  FDRE sck_i_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SCK_I_sync),
        .Q(sck_i_d1),
        .R(Rst_to_spi));
  FDSE spisel_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPISEL_sync),
        .Q(spisel_d1),
        .S(Rst_to_spi));
  FDSE spisel_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(spisel_d1),
        .Q(prmry_in),
        .S(Rst_to_spi));
  FDRE transfer_start_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start_d1_reg_0),
        .Q(transfer_start_d1),
        .R(Rst_to_spi));
  FDRE transfer_start_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_1 ),
        .Q(transfer_start_d1_reg_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_receive_transmit_reg
   (p_24_out,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ,
    p_1_in5_in,
    p_2_in7_in,
    p_3_in,
    p_4_in,
    p_5_in,
    p_6_in,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ,
    p_20_out,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    sr_5_Tx_Empty_int,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    Receive_ip2bus_error0,
    s_axi_aclk,
    reset2ip_reset_int,
    spiXfer_done_to_axi_clk,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 ,
    sr_5_Tx_Empty_i_reg_0,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    tx_Reg_Soft_Reset_op,
    sr_5_Tx_Empty_i1,
    s_axi_wdata,
    \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg ,
    \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 ,
    bus2ip_reset_ipif_inverted,
    \RESET_FLOPS[15].RST_FLOPS ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ,
    irpt_wrack_d1_reg,
    p_1_in29_in);
  output p_24_out;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  output p_1_in5_in;
  output p_2_in7_in;
  output p_3_in;
  output p_4_in;
  output p_5_in;
  output p_6_in;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ;
  output p_20_out;
  output [7:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output sr_5_Tx_Empty_int;
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  input Receive_ip2bus_error0;
  input s_axi_aclk;
  input reset2ip_reset_int;
  input spiXfer_done_to_axi_clk;
  input [7:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 ;
  input sr_5_Tx_Empty_i_reg_0;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input tx_Reg_Soft_Reset_op;
  input sr_5_Tx_Empty_i1;
  input [7:0]s_axi_wdata;
  input \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg ;
  input \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 ;
  input bus2ip_reset_ipif_inverted;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  input irpt_wrack_d1_reg;
  input p_1_in29_in;

  wire [7:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 ;
  wire [7:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ;
  wire \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg ;
  wire \LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire Receive_ip2bus_error0;
  wire SPIXfer_done_delay;
  wire bus2ip_reset_ipif_inverted;
  wire dtr_underrun_d1;
  wire irpt_wrack_d1_reg;
  wire p_1_in29_in;
  wire p_1_in5_in;
  wire p_20_out;
  wire p_24_out;
  wire p_2_in7_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire spiXfer_done_to_axi_clk;
  wire sr_5_Tx_Empty_i1;
  wire sr_5_Tx_Empty_i_reg_0;
  wire sr_5_Tx_Empty_int;
  wire tx_Reg_Soft_Reset_op;
  wire tx_empty_signal_handshake_req_i_i_1_n_0;

  LUT5 #(
    .INIT(32'hBAFF7530)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(irpt_wrack_d1_reg),
        .I1(dtr_underrun_d1),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .I3(s_axi_wdata[3]),
        .I4(p_1_in29_in),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ));
  FDRE \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(SPIXfer_done_delay),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 [7]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[24] ),
        .R(reset2ip_reset_int));
  FDRE \RECEIVE_REG_GENERATE[1].Received_register_Data_reg[1] 
       (.C(s_axi_aclk),
        .CE(SPIXfer_done_delay),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 [6]),
        .Q(p_6_in),
        .R(reset2ip_reset_int));
  FDRE \RECEIVE_REG_GENERATE[2].Received_register_Data_reg[2] 
       (.C(s_axi_aclk),
        .CE(SPIXfer_done_delay),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 [5]),
        .Q(p_5_in),
        .R(reset2ip_reset_int));
  FDRE \RECEIVE_REG_GENERATE[3].Received_register_Data_reg[3] 
       (.C(s_axi_aclk),
        .CE(SPIXfer_done_delay),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 [4]),
        .Q(p_4_in),
        .R(reset2ip_reset_int));
  FDRE \RECEIVE_REG_GENERATE[4].Received_register_Data_reg[4] 
       (.C(s_axi_aclk),
        .CE(SPIXfer_done_delay),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 [3]),
        .Q(p_3_in),
        .R(reset2ip_reset_int));
  FDRE \RECEIVE_REG_GENERATE[5].Received_register_Data_reg[5] 
       (.C(s_axi_aclk),
        .CE(SPIXfer_done_delay),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 [2]),
        .Q(p_2_in7_in),
        .R(reset2ip_reset_int));
  FDRE \RECEIVE_REG_GENERATE[6].Received_register_Data_reg[6] 
       (.C(s_axi_aclk),
        .CE(SPIXfer_done_delay),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 [1]),
        .Q(p_1_in5_in),
        .R(reset2ip_reset_int));
  FDRE \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] 
       (.C(s_axi_aclk),
        .CE(SPIXfer_done_delay),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 [0]),
        .Q(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[31] ),
        .R(reset2ip_reset_int));
  FDRE Receive_ip2bus_error_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Receive_ip2bus_error0),
        .Q(p_24_out),
        .R(1'b0));
  FDRE SPIXfer_done_delay_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(spiXfer_done_to_axi_clk),
        .Q(SPIXfer_done_delay),
        .R(reset2ip_reset_int));
  FDRE \TRANSMIT_REG_GENERATE[0].Transmit_Reg_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(sr_5_Tx_Empty_i1),
        .D(s_axi_wdata[7]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [7]),
        .R(tx_Reg_Soft_Reset_op));
  FDRE \TRANSMIT_REG_GENERATE[1].Transmit_Reg_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(sr_5_Tx_Empty_i1),
        .D(s_axi_wdata[6]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [6]),
        .R(tx_Reg_Soft_Reset_op));
  FDRE \TRANSMIT_REG_GENERATE[2].Transmit_Reg_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(sr_5_Tx_Empty_i1),
        .D(s_axi_wdata[5]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [5]),
        .R(tx_Reg_Soft_Reset_op));
  FDRE \TRANSMIT_REG_GENERATE[3].Transmit_Reg_Data_Out_reg[3] 
       (.C(s_axi_aclk),
        .CE(sr_5_Tx_Empty_i1),
        .D(s_axi_wdata[4]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [4]),
        .R(tx_Reg_Soft_Reset_op));
  FDRE \TRANSMIT_REG_GENERATE[4].Transmit_Reg_Data_Out_reg[4] 
       (.C(s_axi_aclk),
        .CE(sr_5_Tx_Empty_i1),
        .D(s_axi_wdata[3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [3]),
        .R(tx_Reg_Soft_Reset_op));
  FDRE \TRANSMIT_REG_GENERATE[5].Transmit_Reg_Data_Out_reg[5] 
       (.C(s_axi_aclk),
        .CE(sr_5_Tx_Empty_i1),
        .D(s_axi_wdata[2]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [2]),
        .R(tx_Reg_Soft_Reset_op));
  FDRE \TRANSMIT_REG_GENERATE[6].Transmit_Reg_Data_Out_reg[6] 
       (.C(s_axi_aclk),
        .CE(sr_5_Tx_Empty_i1),
        .D(s_axi_wdata[1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [1]),
        .R(tx_Reg_Soft_Reset_op));
  FDRE \TRANSMIT_REG_GENERATE[7].Transmit_Reg_Data_Out_reg[7] 
       (.C(s_axi_aclk),
        .CE(sr_5_Tx_Empty_i1),
        .D(s_axi_wdata[0]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [0]),
        .R(tx_Reg_Soft_Reset_op));
  FDRE Transmit_ip2bus_error_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sr_5_Tx_Empty_i_reg_0),
        .Q(p_20_out),
        .R(1'b0));
  FDRE dtr_underrun_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .Q(dtr_underrun_d1),
        .R(reset2ip_reset_int));
  FDSE sr_5_Tx_Empty_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg_0 ),
        .Q(sr_5_Tx_Empty_int),
        .S(reset2ip_reset_int));
  FDSE sr_7_Rx_Empty_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_CDC.spiXfer_done_d3_reg ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .S(reset2ip_reset_int));
  LUT5 #(
    .INIT(32'hFFFFEEFE)) 
    tx_empty_signal_handshake_req_i_i_1
       (.I0(bus2ip_reset_ipif_inverted),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .I3(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 ),
        .I4(sr_5_Tx_Empty_int),
        .O(tx_empty_signal_handshake_req_i_i_1_n_0));
  FDRE tx_empty_signal_handshake_req_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_empty_signal_handshake_req_i_i_1_n_0),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qspi_status_slave_sel_reg
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    prmry_vect_in,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ,
    s_axi_aclk,
    reset2ip_reset_int,
    s_axi_wdata,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ,
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ,
    Bus_RNW_reg);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  output [0:0]prmry_vect_in;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  input s_axi_aclk;
  input reset2ip_reset_int;
  input [0:0]s_axi_wdata;
  input \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  input \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  input Bus_RNW_reg;

  wire Bus_RNW_reg;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ;
  wire \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ;
  wire [0:0]prmry_vect_in;
  wire reset2ip_reset_int;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;

  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1 
       (.I0(s_axi_wdata),
        .I1(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_1_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(prmry_vect_in),
        .O(\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ));
  FDSE \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1_n_0 ),
        .Q(prmry_vect_in),
        .S(reset2ip_reset_int));
  FDRE modf_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_sync_module
   (Allow_MODF_Strobe_reg,
    Rst_to_spi,
    p_7_out,
    SPISEL_sync,
    transfer_start_reg,
    reset2ip_reset_int,
    ext_spi_clk);
  output Allow_MODF_Strobe_reg;
  output Rst_to_spi;
  output p_7_out;
  input SPISEL_sync;
  input transfer_start_reg;
  input reset2ip_reset_int;
  input ext_spi_clk;

  wire Allow_MODF_Strobe_reg;
  wire Rst_to_spi;
  wire SPISEL_sync;
  wire Soft_Reset_frm_axi_d1;
  wire ext_spi_clk;
  wire p_7_out;
  wire reset2ip_reset_int;
  wire transfer_start_reg;

  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2 
       (.I0(Rst_to_spi),
        .I1(transfer_start_reg),
        .O(p_7_out));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_1
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(reset2ip_reset_int),
        .Q(Soft_Reset_frm_axi_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_2
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Soft_Reset_frm_axi_d1),
        .Q(Rst_to_spi),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Slave_MODF_strobe_i_1
       (.I0(Rst_to_spi),
        .I1(SPISEL_sync),
        .O(Allow_MODF_Strobe_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (intr2bus_wrack_reg,
    \ip2bus_data_i_D1_reg[29] ,
    \ip2bus_data_i_D1_reg[29]_0 ,
    p_19_in,
    p_20_in,
    Bus_RNW_reg_reg,
    \Dual.gpio2_Data_Out_reg[0] ,
    ipif_glbl_irpt_enable_reg_reg,
    AXI_LITE_GPIO_rvalid,
    AXI_LITE_GPIO_bvalid,
    \Dual.gpio2_OE_reg[0] ,
    Q,
    \Dual.gpio2_Data_Out_reg[0]_0 ,
    p_0_in16_in,
    p_0_in18_in,
    gpio_reg_en,
    interrupt_wrce_strb,
    irpt_wrack,
    intr2bus_rdack0,
    irpt_rdack,
    D,
    p_3_out,
    intr_rd_ce_or_reduce,
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ,
    intr_wr_ce_or_reduce,
    p_0_out,
    p_4_out__0,
    AXI_LITE_GPIO_wready,
    AXI_LITE_GPIO_arready,
    ipif_glbl_irpt_enable_reg_reg_0,
    s_axi_rdata,
    s_axi_aclk,
    bus2ip_reset,
    s_axi_arvalid,
    irpt_wrack_d1,
    irpt_rdack_d1,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \ip_irpt_enable_reg_reg[0] ,
    p_1_in,
    \ip_irpt_enable_reg_reg[1] ,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    reg3,
    reg4,
    reg1,
    reg2,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr,
    ipif_glbl_irpt_enable_reg,
    \ip2bus_data_i_D1_reg[0] );
  output intr2bus_wrack_reg;
  output \ip2bus_data_i_D1_reg[29] ;
  output \ip2bus_data_i_D1_reg[29]_0 ;
  output p_19_in;
  output p_20_in;
  output Bus_RNW_reg_reg;
  output \Dual.gpio2_Data_Out_reg[0] ;
  output ipif_glbl_irpt_enable_reg_reg;
  output AXI_LITE_GPIO_rvalid;
  output AXI_LITE_GPIO_bvalid;
  output \Dual.gpio2_OE_reg[0] ;
  output [1:0]Q;
  output \Dual.gpio2_Data_Out_reg[0]_0 ;
  output p_0_in16_in;
  output p_0_in18_in;
  output gpio_reg_en;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output intr2bus_rdack0;
  output irpt_rdack;
  output [3:0]D;
  output p_3_out;
  output intr_rd_ce_or_reduce;
  output \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  output intr_wr_ce_or_reduce;
  output [1:0]p_0_out;
  output p_4_out__0;
  output AXI_LITE_GPIO_wready;
  output AXI_LITE_GPIO_arready;
  output ipif_glbl_irpt_enable_reg_reg_0;
  output [3:0]s_axi_rdata;
  input s_axi_aclk;
  input bus2ip_reset;
  input s_axi_arvalid;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input \ip_irpt_enable_reg_reg[0] ;
  input p_1_in;
  input \ip_irpt_enable_reg_reg[1] ;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input [2:0]reg3;
  input [2:0]reg4;
  input [1:0]reg1;
  input [1:0]reg2;
  input [3:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input ipif_glbl_irpt_enable_reg;
  input [3:0]\ip2bus_data_i_D1_reg[0] ;

  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_bvalid;
  wire AXI_LITE_GPIO_rvalid;
  wire AXI_LITE_GPIO_wready;
  wire Bus_RNW_reg_reg;
  wire [3:0]D;
  wire \Dual.gpio2_Data_Out_reg[0] ;
  wire \Dual.gpio2_Data_Out_reg[0]_0 ;
  wire \Dual.gpio2_OE_reg[0] ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ;
  wire [1:0]Q;
  wire [0:4]bus2ip_addr;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire bus2ip_reset;
  wire clear;
  wire gpio_reg_en;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr2bus_wrack_reg;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [3:0]\ip2bus_data_i_D1_reg[0] ;
  wire \ip2bus_data_i_D1_reg[29] ;
  wire \ip2bus_data_i_D1_reg[29]_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i_D1;
  wire \ip_irpt_enable_reg_reg[0] ;
  wire \ip_irpt_enable_reg_reg[1] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in16_in;
  wire p_0_in18_in;
  wire [1:0]p_0_out;
  wire p_19_in;
  wire p_1_in;
  wire [8:2]p_1_in__0;
  wire p_20_in;
  wire p_3_out;
  wire p_4_out__0;
  wire p_5_in;
  wire [3:0]plusOp;
  wire [1:0]reg1;
  wire [1:0]reg2;
  wire [2:0]reg3;
  wire [2:0]reg4;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  (* RTL_KEEP = "yes" *) wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [3:0]s_axi_rdata;
  wire s_axi_rready;
  (* RTL_KEEP = "yes" *) wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [3:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(AXI_LITE_GPIO_arready),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(AXI_LITE_GPIO_wready),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(AXI_LITE_GPIO_wready),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(AXI_LITE_GPIO_arready),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(AXI_LITE_GPIO_bvalid),
        .I2(s_axi_rready),
        .I3(AXI_LITE_GPIO_rvalid),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.AXI_LITE_GPIO_arready(AXI_LITE_GPIO_arready),
        .AXI_LITE_GPIO_wready(AXI_LITE_GPIO_wready),
        .D(D),
        .\Dual.gpio2_Data_Out_reg[0] (\Dual.gpio2_Data_Out_reg[0] ),
        .\Dual.gpio2_Data_Out_reg[0]_0 (\Dual.gpio2_Data_Out_reg[0]_0 ),
        .\Dual.gpio2_OE_reg[0] (\Dual.gpio2_OE_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg (\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg ),
        .Q(start2),
        .\bus2ip_addr_i_reg[8] ({bus2ip_addr[0],bus2ip_addr[1],bus2ip_addr[2],bus2ip_addr[3],bus2ip_addr[4],Q}),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw_i_reg(Bus_RNW_reg_reg),
        .gpio_reg_en(gpio_reg_en),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr2bus_wrack_reg(intr2bus_wrack_reg),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[29] (\ip2bus_data_i_D1_reg[29] ),
        .\ip2bus_data_i_D1_reg[29]_0 (\ip2bus_data_i_D1_reg[29]_0 ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .\ip_irpt_enable_reg_reg[0] (\ip_irpt_enable_reg_reg[0] ),
        .\ip_irpt_enable_reg_reg[1] (\ip_irpt_enable_reg_reg[1] ),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg_0),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .is_read_reg(is_read_reg_n_0),
        .is_write_reg(is_write_reg_n_0),
        .p_0_in16_in(p_0_in16_in),
        .p_0_in18_in(p_0_in18_in),
        .p_0_out(p_0_out),
        .p_19_in(p_19_in),
        .p_1_in(p_1_in),
        .p_20_in(p_20_in),
        .p_3_out(p_3_out),
        .p_4_out__0(p_4_out__0),
        .reg1(reg1),
        .reg2(reg2),
        .reg3(reg3),
        .reg4(reg4),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[8]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(Q[0]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(Q[1]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(bus2ip_addr[4]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(bus2ip_addr[3]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(bus2ip_addr[2]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(bus2ip_addr[1]),
        .R(bus2ip_reset));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(bus2ip_addr[0]),
        .R(bus2ip_reset));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(Bus_RNW_reg_reg),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(AXI_LITE_GPIO_bvalid),
        .I3(s_axi_rready),
        .I4(AXI_LITE_GPIO_rvalid),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(AXI_LITE_GPIO_wready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(AXI_LITE_GPIO_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(AXI_LITE_GPIO_bvalid),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0] [0]),
        .Q(s_axi_rdata[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0] [1]),
        .Q(s_axi_rdata[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0] [2]),
        .Q(s_axi_rdata[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\ip2bus_data_i_D1_reg[0] [3]),
        .Q(s_axi_rdata[3]),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(AXI_LITE_GPIO_arready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(AXI_LITE_GPIO_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(AXI_LITE_GPIO_rvalid),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(AXI_LITE_GPIO_wready),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(AXI_LITE_GPIO_arready),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(bus2ip_reset));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment__parameterized0
   (SR,
    \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ,
    Transmit_ip2bus_error_reg,
    \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ,
    s_axi_rresp,
    ipif_glbl_irpt_enable_reg_reg,
    AXI_LITE_SPI_rvalid,
    AXI_LITE_SPI_bvalid,
    s_axi_bresp,
    Transmit_ip2bus_error_reg_0,
    ip2Bus_WrAck_intr_reg_hole_d1_reg,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ,
    bus2ip_wrce_int,
    SPICR_data_int_reg0,
    IP2Bus_Error_1,
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ,
    reset_trig0,
    sw_rst_cond,
    interrupt_wrce_strb,
    irpt_wrack,
    E,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ,
    modf_reg,
    Receive_ip2bus_error0,
    sr_5_Tx_Empty_i1,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_controller_rd_ce_or_reduce,
    \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ,
    rd_ce_or_reduce_core_cmb,
    AXI_LITE_SPI_arready,
    AXI_LITE_SPI_wready,
    ipif_glbl_irpt_enable_reg_reg_0,
    s_axi_rdata,
    s_axi_aclk,
    p_1_in,
    s_axi_arvalid,
    sr_5_Tx_Empty_int,
    ip2Bus_WrAck_core_reg_1,
    p_24_out,
    p_20_out,
    sw_rst_cond_d1,
    s_axi_wstrb,
    s_axi_wdata,
    irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    Q,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in17_in,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    rx_fifo_empty_i,
    prmry_in,
    \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ,
    prmry_vect_in,
    \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ,
    p_1_in5_in,
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ,
    p_2_in7_in,
    scndry_out,
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ,
    p_3_in,
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ,
    p_4_in,
    modf_reg_0,
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ,
    p_5_in,
    spicr_6_rxfifo_rst_frm_axi_clk,
    p_6_in,
    \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ,
    \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_core_reg_d1,
    \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ,
    \SPICR_data_int_reg[0] ,
    s_axi_rready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ,
    s_axi_aresetn,
    p_15_out,
    p_16_out,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  output \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ;
  output Transmit_ip2bus_error_reg;
  output \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ;
  output [0:0]s_axi_rresp;
  output ipif_glbl_irpt_enable_reg_reg;
  output AXI_LITE_SPI_rvalid;
  output AXI_LITE_SPI_bvalid;
  output [0:0]s_axi_bresp;
  output Transmit_ip2bus_error_reg_0;
  output ip2Bus_WrAck_intr_reg_hole_d1_reg;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  output [0:0]bus2ip_wrce_int;
  output SPICR_data_int_reg0;
  output IP2Bus_Error_1;
  output \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  output reset_trig0;
  output sw_rst_cond;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [0:0]E;
  output [10:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  output modf_reg;
  output Receive_ip2bus_error0;
  output sr_5_Tx_Empty_i1;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_controller_rd_ce_or_reduce;
  output \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  output rd_ce_or_reduce_core_cmb;
  output AXI_LITE_SPI_arready;
  output AXI_LITE_SPI_wready;
  output ipif_glbl_irpt_enable_reg_reg_0;
  output [10:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]p_1_in;
  input s_axi_arvalid;
  input sr_5_Tx_Empty_int;
  input ip2Bus_WrAck_core_reg_1;
  input p_24_out;
  input p_20_out;
  input sw_rst_cond_d1;
  input [1:0]s_axi_wstrb;
  input [4:0]s_axi_wdata;
  input irpt_wrack_d1;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [6:0]Q;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in17_in;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input rx_fifo_empty_i;
  input prmry_in;
  input \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ;
  input [0:0]prmry_vect_in;
  input \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  input p_1_in5_in;
  input \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  input p_2_in7_in;
  input scndry_out;
  input \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  input p_3_in;
  input \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  input p_4_in;
  input modf_reg_0;
  input \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  input p_5_in;
  input spicr_6_rxfifo_rst_frm_axi_clk;
  input p_6_in;
  input \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  input \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_core_reg_d1;
  input \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  input \SPICR_data_int_reg[0] ;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [10:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ;
  input s_axi_aresetn;
  input p_15_out;
  input p_16_out;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;

  wire AXI_LITE_SPI_arready;
  wire AXI_LITE_SPI_bvalid;
  wire AXI_LITE_SPI_rvalid;
  wire AXI_LITE_SPI_wready;
  wire \CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ;
  wire \CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ;
  wire \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ;
  wire \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ;
  wire \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ;
  wire \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ;
  wire \CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ;
  wire [10:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ;
  wire \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire IP2Bus_Error_1;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0 ;
  wire [10:0]\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] ;
  wire \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0 ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ;
  wire \LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ;
  wire [6:0]Q;
  wire \RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ;
  wire \RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ;
  wire Receive_ip2bus_error0;
  wire \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ;
  wire SPICR_data_int_reg0;
  wire \SPICR_data_int_reg[0] ;
  wire [0:0]SR;
  wire Transmit_ip2bus_error_reg;
  wire Transmit_ip2bus_error_reg_0;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire \bus2ip_addr_i_reg_n_0_[6] ;
  wire bus2ip_rnw_i_reg_n_0;
  wire [0:0]bus2ip_wrce_int;
  wire clear;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_controller_rd_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_core_reg_1;
  wire ip2Bus_WrAck_core_reg_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole_d1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire modf_reg;
  wire modf_reg_0;
  wire p_0_in1_in;
  wire [1:0]p_0_out;
  wire p_15_out;
  wire p_16_out;
  wire [0:0]p_1_in;
  wire p_1_in17_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in5_in;
  wire p_20_out;
  wire p_24_out;
  wire p_2_in7_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_5_in_0;
  wire p_6_in;
  wire [5:0]plusOp;
  wire prmry_in;
  wire [0:0]prmry_vect_in;
  wire rd_ce_or_reduce_core_cmb;
  wire reset_trig0;
  wire rx_fifo_empty_i;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  (* RTL_KEEP = "yes" *) wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  (* RTL_KEEP = "yes" *) wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [4:0]s_axi_wdata;
  wire [1:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire scndry_out;
  wire spicr_6_rxfifo_rst_frm_axi_clk;
  wire sr_5_Tx_Empty_i1;
  wire sr_5_Tx_Empty_int;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(AXI_LITE_SPI_arready),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(AXI_LITE_SPI_wready),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(AXI_LITE_SPI_wready),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(AXI_LITE_SPI_arready),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(AXI_LITE_SPI_bvalid),
        .I2(s_axi_rready),
        .I3(AXI_LITE_SPI_rvalid),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .O(plusOp[5]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder__parameterized0 I_DECODER
       (.AXI_LITE_SPI_arready(AXI_LITE_SPI_arready),
        .AXI_LITE_SPI_wready(AXI_LITE_SPI_wready),
        .\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] (\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1] ),
        .\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] (\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2] ),
        .\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] (\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4] ),
        .\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] (\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5] ),
        .\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] (\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6] ),
        .\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] (\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7] ),
        .\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] (\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8] ),
        .D(D),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 ),
        .\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] (\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .IP2Bus_Error_1(IP2Bus_Error_1),
        .\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] (\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[25] ),
        .\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg (\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg ),
        .\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg (\LEGACY_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg ),
        .Q(start2),
        .\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] (\RECEIVE_REG_GENERATE[0].Received_register_Data_reg[0] ),
        .\RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] (\RECEIVE_REG_GENERATE[7].Received_register_Data_reg[7] ),
        .Receive_ip2bus_error0(Receive_ip2bus_error0),
        .\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I (\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I ),
        .SPICR_data_int_reg0(SPICR_data_int_reg0),
        .\SPICR_data_int_reg[0] (\SPICR_data_int_reg[0] ),
        .Transmit_ip2bus_error_reg(Transmit_ip2bus_error_reg),
        .Transmit_ip2bus_error_reg_0(Transmit_ip2bus_error_reg_0),
        .\bus2ip_addr_i_reg[6] ({\bus2ip_addr_i_reg_n_0_[6] ,\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .bus2ip_rnw_i_reg(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0 ),
        .bus2ip_rnw_i_reg_0(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0 ),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg_n_0),
        .bus2ip_wrce_int(bus2ip_wrce_int),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_controller_rd_ce_or_reduce(intr_controller_rd_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_core_reg_1(ip2Bus_WrAck_core_reg_1),
        .ip2Bus_WrAck_core_reg_d1(ip2Bus_WrAck_core_reg_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole_d1_reg(ip2Bus_WrAck_intr_reg_hole_d1_reg),
        .\ip_irpt_enable_reg_reg[7] (Q),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(ipif_glbl_irpt_enable_reg_reg_0),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .is_read_reg(is_read_reg_n_0),
        .is_write_reg(is_write_reg_n_0),
        .modf_reg(modf_reg),
        .modf_reg_0(modf_reg_0),
        .p_15_out(p_15_out),
        .p_16_out(p_16_out),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in5_in(p_1_in5_in),
        .p_20_out(p_20_out),
        .p_24_out(p_24_out),
        .p_2_in7_in(p_2_in7_in),
        .p_3_in(p_3_in),
        .p_4_in(p_4_in),
        .p_5_in(p_5_in),
        .p_6_in(p_6_in),
        .prmry_in(prmry_in),
        .prmry_vect_in(prmry_vect_in),
        .rd_ce_or_reduce_core_cmb(rd_ce_or_reduce_core_cmb),
        .reset_trig0(reset_trig0),
        .rx_fifo_empty_i(rx_fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[4]),
        .s_axi_wstrb(s_axi_wstrb[1]),
        .scndry_out(scndry_out),
        .spicr_6_rxfifo_rst_frm_axi_clk(spicr_6_rxfifo_rst_frm_axi_clk),
        .sr_5_Tx_Empty_i1(sr_5_Tx_Empty_i1),
        .sr_5_Tx_Empty_int(sr_5_Tx_Empty_int),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1));
  LUT2 #(
    .INIT(4'hE)) 
    \LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2 
       (.I0(bus2ip_rnw_i_reg_n_0),
        .I1(s_axi_wstrb[1]),
        .O(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFFFFFFF)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2 
       (.I0(bus2ip_rnw_i_reg_n_0),
        .I1(s_axi_wstrb[0]),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[1]),
        .I5(s_axi_wdata[3]),
        .O(\LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_Error_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_2 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[6]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[6] ),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(AXI_LITE_SPI_bvalid),
        .I3(s_axi_rready),
        .I4(AXI_LITE_SPI_rvalid),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in1_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(SR),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(s_axi_bresp),
        .I1(s_axi_bresp_i),
        .I2(p_1_in),
        .I3(SR),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(AXI_LITE_SPI_wready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(AXI_LITE_SPI_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(AXI_LITE_SPI_bvalid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\LEGACY_MD_IP2BUS_DATA_GEN.IP2Bus_Data_reg[0] [9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(p_1_in),
        .Q(s_axi_rresp),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(AXI_LITE_SPI_arready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(AXI_LITE_SPI_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(AXI_LITE_SPI_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(AXI_LITE_SPI_wready),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in_0),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(AXI_LITE_SPI_arready),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in_0));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment__parameterized1
   (\TCSR1_GENERATE[24].TCSR1_FF_I ,
    READ_DONE0_I,
    \TCSR1_GENERATE[24].TCSR1_FF_I_0 ,
    \TCSR1_GENERATE[24].TCSR1_FF_I_1 ,
    AXI_LITE_TIMER_rvalid,
    AXI_LITE_TIMER_bvalid,
    AXI_LITE_TIMER_wready,
    AXI_LITE_TIMER_arready,
    pair0_Select,
    \LOAD_REG_GEN[7].LOAD_REG_I ,
    bus2ip_wrce,
    \LOAD_REG_GEN[31].LOAD_REG_I ,
    \LOAD_REG_GEN[30].LOAD_REG_I ,
    \LOAD_REG_GEN[29].LOAD_REG_I ,
    \LOAD_REG_GEN[28].LOAD_REG_I ,
    \LOAD_REG_GEN[27].LOAD_REG_I ,
    \LOAD_REG_GEN[26].LOAD_REG_I ,
    \LOAD_REG_GEN[25].LOAD_REG_I ,
    \LOAD_REG_GEN[24].LOAD_REG_I ,
    \LOAD_REG_GEN[23].LOAD_REG_I ,
    \LOAD_REG_GEN[22].LOAD_REG_I ,
    \LOAD_REG_GEN[21].LOAD_REG_I ,
    \LOAD_REG_GEN[20].LOAD_REG_I ,
    \LOAD_REG_GEN[19].LOAD_REG_I ,
    \LOAD_REG_GEN[18].LOAD_REG_I ,
    \LOAD_REG_GEN[17].LOAD_REG_I ,
    \LOAD_REG_GEN[16].LOAD_REG_I ,
    \LOAD_REG_GEN[15].LOAD_REG_I ,
    \LOAD_REG_GEN[14].LOAD_REG_I ,
    \LOAD_REG_GEN[13].LOAD_REG_I ,
    \LOAD_REG_GEN[12].LOAD_REG_I ,
    \LOAD_REG_GEN[11].LOAD_REG_I ,
    \LOAD_REG_GEN[10].LOAD_REG_I ,
    \LOAD_REG_GEN[9].LOAD_REG_I ,
    \LOAD_REG_GEN[8].LOAD_REG_I ,
    \LOAD_REG_GEN[7].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[6].LOAD_REG_I ,
    \LOAD_REG_GEN[5].LOAD_REG_I ,
    \LOAD_REG_GEN[4].LOAD_REG_I ,
    \LOAD_REG_GEN[3].LOAD_REG_I ,
    \LOAD_REG_GEN[2].LOAD_REG_I ,
    \LOAD_REG_GEN[1].LOAD_REG_I ,
    D_0,
    \LOAD_REG_GEN[31].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[30].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[29].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[28].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[27].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[26].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[25].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[24].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[23].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[22].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[21].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[20].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[19].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[18].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[17].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[16].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[15].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[14].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[13].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[12].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[11].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[10].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[9].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[8].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[7].LOAD_REG_I_1 ,
    \LOAD_REG_GEN[6].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[5].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[4].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[3].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[2].LOAD_REG_I_0 ,
    \LOAD_REG_GEN[1].LOAD_REG_I_0 ,
    D_1,
    s_axi_rvalid_i_reg_0,
    s_axi_rvalid_i_reg_1,
    s_axi_rvalid_i_reg_2,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[31]_0 ,
    \s_axi_rdata_i_reg[30]_0 ,
    \s_axi_rdata_i_reg[29]_0 ,
    \s_axi_rdata_i_reg[28]_0 ,
    \s_axi_rdata_i_reg[27]_0 ,
    \s_axi_rdata_i_reg[26]_0 ,
    \s_axi_rdata_i_reg[25]_0 ,
    \s_axi_rdata_i_reg[24]_0 ,
    \s_axi_rdata_i_reg[23]_0 ,
    \s_axi_rdata_i_reg[22]_0 ,
    \s_axi_rdata_i_reg[21]_0 ,
    \s_axi_rdata_i_reg[20]_0 ,
    \s_axi_rdata_i_reg[19]_0 ,
    \s_axi_rdata_i_reg[18]_0 ,
    \s_axi_rdata_i_reg[17]_0 ,
    \s_axi_rdata_i_reg[16]_0 ,
    \s_axi_rdata_i_reg[15]_0 ,
    \s_axi_rdata_i_reg[14]_0 ,
    \s_axi_rdata_i_reg[13]_0 ,
    \s_axi_rdata_i_reg[12]_0 ,
    \s_axi_rdata_i_reg[11]_0 ,
    \s_axi_rdata_i_reg[0]_1 ,
    \s_axi_rdata_i_reg[0]_2 ,
    READ_DONE0_I_0,
    READ_DONE1_I,
    \TCSR0_GENERATE[23].TCSR0_FF_I ,
    \TCSR1_GENERATE[23].TCSR1_FF_I ,
    s_axi_rdata,
    bus2ip_reset,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    read_Mux_In,
    s_axi_rready,
    s_axi_bready,
    s_axi_araddr,
    s_axi_awaddr,
    D_2,
    read_done1,
    D);
  output \TCSR1_GENERATE[24].TCSR1_FF_I ;
  output READ_DONE0_I;
  output \TCSR1_GENERATE[24].TCSR1_FF_I_0 ;
  output \TCSR1_GENERATE[24].TCSR1_FF_I_1 ;
  output AXI_LITE_TIMER_rvalid;
  output AXI_LITE_TIMER_bvalid;
  output AXI_LITE_TIMER_wready;
  output AXI_LITE_TIMER_arready;
  output pair0_Select;
  output \LOAD_REG_GEN[7].LOAD_REG_I ;
  output [1:0]bus2ip_wrce;
  output \LOAD_REG_GEN[31].LOAD_REG_I ;
  output \LOAD_REG_GEN[30].LOAD_REG_I ;
  output \LOAD_REG_GEN[29].LOAD_REG_I ;
  output \LOAD_REG_GEN[28].LOAD_REG_I ;
  output \LOAD_REG_GEN[27].LOAD_REG_I ;
  output \LOAD_REG_GEN[26].LOAD_REG_I ;
  output \LOAD_REG_GEN[25].LOAD_REG_I ;
  output \LOAD_REG_GEN[24].LOAD_REG_I ;
  output \LOAD_REG_GEN[23].LOAD_REG_I ;
  output \LOAD_REG_GEN[22].LOAD_REG_I ;
  output \LOAD_REG_GEN[21].LOAD_REG_I ;
  output \LOAD_REG_GEN[20].LOAD_REG_I ;
  output \LOAD_REG_GEN[19].LOAD_REG_I ;
  output \LOAD_REG_GEN[18].LOAD_REG_I ;
  output \LOAD_REG_GEN[17].LOAD_REG_I ;
  output \LOAD_REG_GEN[16].LOAD_REG_I ;
  output \LOAD_REG_GEN[15].LOAD_REG_I ;
  output \LOAD_REG_GEN[14].LOAD_REG_I ;
  output \LOAD_REG_GEN[13].LOAD_REG_I ;
  output \LOAD_REG_GEN[12].LOAD_REG_I ;
  output \LOAD_REG_GEN[11].LOAD_REG_I ;
  output \LOAD_REG_GEN[10].LOAD_REG_I ;
  output \LOAD_REG_GEN[9].LOAD_REG_I ;
  output \LOAD_REG_GEN[8].LOAD_REG_I ;
  output \LOAD_REG_GEN[7].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[6].LOAD_REG_I ;
  output \LOAD_REG_GEN[5].LOAD_REG_I ;
  output \LOAD_REG_GEN[4].LOAD_REG_I ;
  output \LOAD_REG_GEN[3].LOAD_REG_I ;
  output \LOAD_REG_GEN[2].LOAD_REG_I ;
  output \LOAD_REG_GEN[1].LOAD_REG_I ;
  output D_0;
  output \LOAD_REG_GEN[31].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[30].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[29].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[28].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[27].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[26].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[25].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[24].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[23].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[22].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[21].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[20].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[19].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[18].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[17].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[16].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[15].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[14].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[13].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[12].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[11].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[10].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[9].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[8].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[7].LOAD_REG_I_1 ;
  output \LOAD_REG_GEN[6].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[5].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[4].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[3].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[2].LOAD_REG_I_0 ;
  output \LOAD_REG_GEN[1].LOAD_REG_I_0 ;
  output D_1;
  output s_axi_rvalid_i_reg_0;
  output s_axi_rvalid_i_reg_1;
  output s_axi_rvalid_i_reg_2;
  output \s_axi_rdata_i_reg[0]_0 ;
  output \s_axi_rdata_i_reg[31]_0 ;
  output \s_axi_rdata_i_reg[30]_0 ;
  output \s_axi_rdata_i_reg[29]_0 ;
  output \s_axi_rdata_i_reg[28]_0 ;
  output \s_axi_rdata_i_reg[27]_0 ;
  output \s_axi_rdata_i_reg[26]_0 ;
  output \s_axi_rdata_i_reg[25]_0 ;
  output \s_axi_rdata_i_reg[24]_0 ;
  output \s_axi_rdata_i_reg[23]_0 ;
  output \s_axi_rdata_i_reg[22]_0 ;
  output \s_axi_rdata_i_reg[21]_0 ;
  output \s_axi_rdata_i_reg[20]_0 ;
  output \s_axi_rdata_i_reg[19]_0 ;
  output \s_axi_rdata_i_reg[18]_0 ;
  output \s_axi_rdata_i_reg[17]_0 ;
  output \s_axi_rdata_i_reg[16]_0 ;
  output \s_axi_rdata_i_reg[15]_0 ;
  output \s_axi_rdata_i_reg[14]_0 ;
  output \s_axi_rdata_i_reg[13]_0 ;
  output \s_axi_rdata_i_reg[12]_0 ;
  output \s_axi_rdata_i_reg[11]_0 ;
  output \s_axi_rdata_i_reg[0]_1 ;
  output \s_axi_rdata_i_reg[0]_2 ;
  output READ_DONE0_I_0;
  output READ_DONE1_I;
  output \TCSR0_GENERATE[23].TCSR0_FF_I ;
  output \TCSR1_GENERATE[23].TCSR1_FF_I ;
  output [31:0]s_axi_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [85:0]read_Mux_In;
  input s_axi_rready;
  input s_axi_bready;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input D_2;
  input read_done1;
  input [31:0]D;

  wire AXI_LITE_TIMER_arready;
  wire AXI_LITE_TIMER_bvalid;
  wire AXI_LITE_TIMER_rvalid;
  wire AXI_LITE_TIMER_wready;
  wire [31:0]D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire I_DECODER_n_10;
  wire I_DECODER_n_106;
  wire I_DECODER_n_107;
  wire I_DECODER_n_6;
  wire I_DECODER_n_7;
  wire I_DECODER_n_8;
  wire I_DECODER_n_9;
  wire \LOAD_REG_GEN[10].LOAD_REG_I ;
  wire \LOAD_REG_GEN[10].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[11].LOAD_REG_I ;
  wire \LOAD_REG_GEN[11].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[12].LOAD_REG_I ;
  wire \LOAD_REG_GEN[12].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[13].LOAD_REG_I ;
  wire \LOAD_REG_GEN[13].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[14].LOAD_REG_I ;
  wire \LOAD_REG_GEN[14].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[15].LOAD_REG_I ;
  wire \LOAD_REG_GEN[15].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[16].LOAD_REG_I ;
  wire \LOAD_REG_GEN[16].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[17].LOAD_REG_I ;
  wire \LOAD_REG_GEN[17].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[18].LOAD_REG_I ;
  wire \LOAD_REG_GEN[18].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[19].LOAD_REG_I ;
  wire \LOAD_REG_GEN[19].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[1].LOAD_REG_I ;
  wire \LOAD_REG_GEN[1].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[21].LOAD_REG_I ;
  wire \LOAD_REG_GEN[21].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[22].LOAD_REG_I ;
  wire \LOAD_REG_GEN[22].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[23].LOAD_REG_I ;
  wire \LOAD_REG_GEN[23].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[24].LOAD_REG_I ;
  wire \LOAD_REG_GEN[24].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[25].LOAD_REG_I ;
  wire \LOAD_REG_GEN[25].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[26].LOAD_REG_I ;
  wire \LOAD_REG_GEN[26].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[27].LOAD_REG_I ;
  wire \LOAD_REG_GEN[27].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[28].LOAD_REG_I ;
  wire \LOAD_REG_GEN[28].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[29].LOAD_REG_I ;
  wire \LOAD_REG_GEN[29].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[2].LOAD_REG_I ;
  wire \LOAD_REG_GEN[2].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[30].LOAD_REG_I ;
  wire \LOAD_REG_GEN[30].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[31].LOAD_REG_I ;
  wire \LOAD_REG_GEN[31].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[3].LOAD_REG_I ;
  wire \LOAD_REG_GEN[3].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[4].LOAD_REG_I ;
  wire \LOAD_REG_GEN[4].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[5].LOAD_REG_I ;
  wire \LOAD_REG_GEN[5].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[6].LOAD_REG_I ;
  wire \LOAD_REG_GEN[6].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[7].LOAD_REG_I_1 ;
  wire \LOAD_REG_GEN[8].LOAD_REG_I ;
  wire \LOAD_REG_GEN[8].LOAD_REG_I_0 ;
  wire \LOAD_REG_GEN[9].LOAD_REG_I ;
  wire \LOAD_REG_GEN[9].LOAD_REG_I_0 ;
  wire READ_DONE0_I;
  wire READ_DONE0_I_0;
  wire READ_DONE1_I;
  wire \TCSR0_GENERATE[23].TCSR0_FF_I ;
  wire \TCSR1_GENERATE[23].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[24].TCSR1_FF_I ;
  wire \TCSR1_GENERATE[24].TCSR1_FF_I_0 ;
  wire \TCSR1_GENERATE[24].TCSR1_FF_I_1 ;
  wire [0:2]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_2_n_0 ;
  wire bus2ip_reset;
  wire bus2ip_rnw_i;
  wire [1:0]bus2ip_wrce;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire pair0_Select;
  wire [5:0]plusOp;
  wire [85:0]read_Mux_In;
  wire read_done1;
  wire rst;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  (* RTL_KEEP = "yes" *) wire s_axi_bresp_i;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[0]_1 ;
  wire \s_axi_rdata_i_reg[0]_2 ;
  wire \s_axi_rdata_i_reg[11]_0 ;
  wire \s_axi_rdata_i_reg[12]_0 ;
  wire \s_axi_rdata_i_reg[13]_0 ;
  wire \s_axi_rdata_i_reg[14]_0 ;
  wire \s_axi_rdata_i_reg[15]_0 ;
  wire \s_axi_rdata_i_reg[16]_0 ;
  wire \s_axi_rdata_i_reg[17]_0 ;
  wire \s_axi_rdata_i_reg[18]_0 ;
  wire \s_axi_rdata_i_reg[19]_0 ;
  wire \s_axi_rdata_i_reg[20]_0 ;
  wire \s_axi_rdata_i_reg[21]_0 ;
  wire \s_axi_rdata_i_reg[22]_0 ;
  wire \s_axi_rdata_i_reg[23]_0 ;
  wire \s_axi_rdata_i_reg[24]_0 ;
  wire \s_axi_rdata_i_reg[25]_0 ;
  wire \s_axi_rdata_i_reg[26]_0 ;
  wire \s_axi_rdata_i_reg[27]_0 ;
  wire \s_axi_rdata_i_reg[28]_0 ;
  wire \s_axi_rdata_i_reg[29]_0 ;
  wire \s_axi_rdata_i_reg[30]_0 ;
  wire \s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  (* RTL_KEEP = "yes" *) wire s_axi_rresp_i;
  wire s_axi_rvalid_i_reg_0;
  wire s_axi_rvalid_i_reg_1;
  wire s_axi_rvalid_i_reg_2;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[1]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'h44444F444F444F44)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(s_axi_wvalid),
        .I5(s_axi_awvalid),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(AXI_LITE_TIMER_rvalid),
        .I1(s_axi_rready),
        .I2(AXI_LITE_TIMER_bvalid),
        .I3(s_axi_bready),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_10),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_9),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_8),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .O(plusOp[5]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [4]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [5]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder__parameterized1 I_DECODER
       (.AXI_LITE_TIMER_arready(AXI_LITE_TIMER_arready),
        .AXI_LITE_TIMER_awvalid(\state[1]_i_2_n_0 ),
        .AXI_LITE_TIMER_wready(AXI_LITE_TIMER_wready),
        .D({I_DECODER_n_6,I_DECODER_n_7}),
        .D_0(D_0),
        .D_1(D_1),
        .D_2(D_2),
        .\FSM_onehot_state_reg[3] ({I_DECODER_n_8,I_DECODER_n_9,I_DECODER_n_10}),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .\LOAD_REG_GEN[10].LOAD_REG_I (\LOAD_REG_GEN[10].LOAD_REG_I ),
        .\LOAD_REG_GEN[10].LOAD_REG_I_0 (\LOAD_REG_GEN[10].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[11].LOAD_REG_I (\LOAD_REG_GEN[11].LOAD_REG_I ),
        .\LOAD_REG_GEN[11].LOAD_REG_I_0 (\LOAD_REG_GEN[11].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[12].LOAD_REG_I (\LOAD_REG_GEN[12].LOAD_REG_I ),
        .\LOAD_REG_GEN[12].LOAD_REG_I_0 (\LOAD_REG_GEN[12].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[13].LOAD_REG_I (\LOAD_REG_GEN[13].LOAD_REG_I ),
        .\LOAD_REG_GEN[13].LOAD_REG_I_0 (\LOAD_REG_GEN[13].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[14].LOAD_REG_I (\LOAD_REG_GEN[14].LOAD_REG_I ),
        .\LOAD_REG_GEN[14].LOAD_REG_I_0 (\LOAD_REG_GEN[14].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[15].LOAD_REG_I (\LOAD_REG_GEN[15].LOAD_REG_I ),
        .\LOAD_REG_GEN[15].LOAD_REG_I_0 (\LOAD_REG_GEN[15].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[16].LOAD_REG_I (\LOAD_REG_GEN[16].LOAD_REG_I ),
        .\LOAD_REG_GEN[16].LOAD_REG_I_0 (\LOAD_REG_GEN[16].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[17].LOAD_REG_I (\LOAD_REG_GEN[17].LOAD_REG_I ),
        .\LOAD_REG_GEN[17].LOAD_REG_I_0 (\LOAD_REG_GEN[17].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[18].LOAD_REG_I (\LOAD_REG_GEN[18].LOAD_REG_I ),
        .\LOAD_REG_GEN[18].LOAD_REG_I_0 (\LOAD_REG_GEN[18].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[19].LOAD_REG_I (\LOAD_REG_GEN[19].LOAD_REG_I ),
        .\LOAD_REG_GEN[19].LOAD_REG_I_0 (\LOAD_REG_GEN[19].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[1].LOAD_REG_I (\LOAD_REG_GEN[1].LOAD_REG_I ),
        .\LOAD_REG_GEN[1].LOAD_REG_I_0 (\LOAD_REG_GEN[1].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[20].LOAD_REG_I (\LOAD_REG_GEN[20].LOAD_REG_I ),
        .\LOAD_REG_GEN[20].LOAD_REG_I_0 (\LOAD_REG_GEN[20].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[21].LOAD_REG_I (\LOAD_REG_GEN[21].LOAD_REG_I ),
        .\LOAD_REG_GEN[21].LOAD_REG_I_0 (\LOAD_REG_GEN[21].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[22].LOAD_REG_I (\LOAD_REG_GEN[22].LOAD_REG_I ),
        .\LOAD_REG_GEN[22].LOAD_REG_I_0 (\LOAD_REG_GEN[22].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[23].LOAD_REG_I (\LOAD_REG_GEN[23].LOAD_REG_I ),
        .\LOAD_REG_GEN[23].LOAD_REG_I_0 (\LOAD_REG_GEN[23].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[24].LOAD_REG_I (\LOAD_REG_GEN[24].LOAD_REG_I ),
        .\LOAD_REG_GEN[24].LOAD_REG_I_0 (\LOAD_REG_GEN[24].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[25].LOAD_REG_I (\LOAD_REG_GEN[25].LOAD_REG_I ),
        .\LOAD_REG_GEN[25].LOAD_REG_I_0 (\LOAD_REG_GEN[25].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[26].LOAD_REG_I (\LOAD_REG_GEN[26].LOAD_REG_I ),
        .\LOAD_REG_GEN[26].LOAD_REG_I_0 (\LOAD_REG_GEN[26].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[27].LOAD_REG_I (\LOAD_REG_GEN[27].LOAD_REG_I ),
        .\LOAD_REG_GEN[27].LOAD_REG_I_0 (\LOAD_REG_GEN[27].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[28].LOAD_REG_I (\LOAD_REG_GEN[28].LOAD_REG_I ),
        .\LOAD_REG_GEN[28].LOAD_REG_I_0 (\LOAD_REG_GEN[28].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[29].LOAD_REG_I (\LOAD_REG_GEN[29].LOAD_REG_I ),
        .\LOAD_REG_GEN[29].LOAD_REG_I_0 (\LOAD_REG_GEN[29].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[2].LOAD_REG_I (\LOAD_REG_GEN[2].LOAD_REG_I ),
        .\LOAD_REG_GEN[2].LOAD_REG_I_0 (\LOAD_REG_GEN[2].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[30].LOAD_REG_I (\LOAD_REG_GEN[30].LOAD_REG_I ),
        .\LOAD_REG_GEN[30].LOAD_REG_I_0 (\LOAD_REG_GEN[30].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[31].LOAD_REG_I (\LOAD_REG_GEN[31].LOAD_REG_I ),
        .\LOAD_REG_GEN[31].LOAD_REG_I_0 (\LOAD_REG_GEN[31].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[3].LOAD_REG_I (\LOAD_REG_GEN[3].LOAD_REG_I ),
        .\LOAD_REG_GEN[3].LOAD_REG_I_0 (\LOAD_REG_GEN[3].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[4].LOAD_REG_I (\LOAD_REG_GEN[4].LOAD_REG_I ),
        .\LOAD_REG_GEN[4].LOAD_REG_I_0 (\LOAD_REG_GEN[4].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[5].LOAD_REG_I (\LOAD_REG_GEN[5].LOAD_REG_I ),
        .\LOAD_REG_GEN[5].LOAD_REG_I_0 (\LOAD_REG_GEN[5].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[6].LOAD_REG_I (\LOAD_REG_GEN[6].LOAD_REG_I ),
        .\LOAD_REG_GEN[6].LOAD_REG_I_0 (\LOAD_REG_GEN[6].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[7].LOAD_REG_I (\LOAD_REG_GEN[7].LOAD_REG_I ),
        .\LOAD_REG_GEN[7].LOAD_REG_I_0 (\LOAD_REG_GEN[7].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[7].LOAD_REG_I_1 (\LOAD_REG_GEN[7].LOAD_REG_I_1 ),
        .\LOAD_REG_GEN[8].LOAD_REG_I (\LOAD_REG_GEN[8].LOAD_REG_I ),
        .\LOAD_REG_GEN[8].LOAD_REG_I_0 (\LOAD_REG_GEN[8].LOAD_REG_I_0 ),
        .\LOAD_REG_GEN[9].LOAD_REG_I (\LOAD_REG_GEN[9].LOAD_REG_I ),
        .\LOAD_REG_GEN[9].LOAD_REG_I_0 (\LOAD_REG_GEN[9].LOAD_REG_I_0 ),
        .Q(start2),
        .READ_DONE0_I(READ_DONE0_I),
        .READ_DONE0_I_0(READ_DONE0_I_0),
        .READ_DONE1_I(READ_DONE1_I),
        .\TCSR0_GENERATE[23].TCSR0_FF_I (\TCSR0_GENERATE[23].TCSR0_FF_I ),
        .\TCSR1_GENERATE[23].TCSR1_FF_I (\TCSR1_GENERATE[23].TCSR1_FF_I ),
        .\TCSR1_GENERATE[24].TCSR1_FF_I (\TCSR1_GENERATE[24].TCSR1_FF_I ),
        .\TCSR1_GENERATE[24].TCSR1_FF_I_0 (\TCSR1_GENERATE[24].TCSR1_FF_I_0 ),
        .\TCSR1_GENERATE[24].TCSR1_FF_I_1 (\TCSR1_GENERATE[24].TCSR1_FF_I_1 ),
        .\bus2ip_addr_i_reg[4] ({bus2ip_addr[0],bus2ip_addr[1],bus2ip_addr[2]}),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .bus2ip_wrce(bus2ip_wrce),
        .is_read_reg(is_read_reg_n_0),
        .is_write_reg(is_write_reg_n_0),
        .out({\FSM_onehot_state_reg_n_0_[3] ,s_axi_bresp_i,s_axi_rresp_i,\FSM_onehot_state_reg_n_0_[0] }),
        .pair0_Select(pair0_Select),
        .read_Mux_In(read_Mux_In),
        .read_done1(read_done1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(I_DECODER_n_107),
        .s_axi_bvalid_i_reg_0(AXI_LITE_TIMER_bvalid),
        .\s_axi_rdata_i_reg[0] (\s_axi_rdata_i_reg[0]_0 ),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i_reg[0]_1 ),
        .\s_axi_rdata_i_reg[0]_1 (\s_axi_rdata_i_reg[0]_2 ),
        .\s_axi_rdata_i_reg[11] (\s_axi_rdata_i_reg[11]_0 ),
        .\s_axi_rdata_i_reg[12] (\s_axi_rdata_i_reg[12]_0 ),
        .\s_axi_rdata_i_reg[13] (\s_axi_rdata_i_reg[13]_0 ),
        .\s_axi_rdata_i_reg[14] (\s_axi_rdata_i_reg[14]_0 ),
        .\s_axi_rdata_i_reg[15] (\s_axi_rdata_i_reg[15]_0 ),
        .\s_axi_rdata_i_reg[16] (\s_axi_rdata_i_reg[16]_0 ),
        .\s_axi_rdata_i_reg[17] (\s_axi_rdata_i_reg[17]_0 ),
        .\s_axi_rdata_i_reg[18] (\s_axi_rdata_i_reg[18]_0 ),
        .\s_axi_rdata_i_reg[19] (\s_axi_rdata_i_reg[19]_0 ),
        .\s_axi_rdata_i_reg[20] (\s_axi_rdata_i_reg[20]_0 ),
        .\s_axi_rdata_i_reg[21] (\s_axi_rdata_i_reg[21]_0 ),
        .\s_axi_rdata_i_reg[22] (\s_axi_rdata_i_reg[22]_0 ),
        .\s_axi_rdata_i_reg[23] (\s_axi_rdata_i_reg[23]_0 ),
        .\s_axi_rdata_i_reg[24] (\s_axi_rdata_i_reg[24]_0 ),
        .\s_axi_rdata_i_reg[25] (\s_axi_rdata_i_reg[25]_0 ),
        .\s_axi_rdata_i_reg[26] (\s_axi_rdata_i_reg[26]_0 ),
        .\s_axi_rdata_i_reg[27] (\s_axi_rdata_i_reg[27]_0 ),
        .\s_axi_rdata_i_reg[28] (\s_axi_rdata_i_reg[28]_0 ),
        .\s_axi_rdata_i_reg[29] (\s_axi_rdata_i_reg[29]_0 ),
        .\s_axi_rdata_i_reg[30] (\s_axi_rdata_i_reg[30]_0 ),
        .\s_axi_rdata_i_reg[31] (\s_axi_rdata_i_reg[31]_0 ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid_i_reg_0),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg_1),
        .s_axi_rvalid_i_reg_1(s_axi_rvalid_i_reg_2),
        .s_axi_rvalid_i_reg_2(I_DECODER_n_106),
        .s_axi_rvalid_i_reg_3(\FSM_onehot_state[3]_i_2_n_0 ),
        .s_axi_rvalid_i_reg_4(AXI_LITE_TIMER_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .\state_reg[1] (state));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03020202)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_arvalid),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(bus2ip_addr[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(bus2ip_addr[1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_2_n_0 ),
        .Q(bus2ip_addr[0]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    is_write_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(s_axi_arvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(AXI_LITE_TIMER_rvalid),
        .I2(s_axi_rready),
        .I3(AXI_LITE_TIMER_bvalid),
        .I4(s_axi_bready),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_107),
        .Q(AXI_LITE_TIMER_bvalid),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[16]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[17]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[18]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[19]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[20]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[21]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[22]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[23]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[24]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[25]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[26]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[27]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[28]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[29]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[30]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[31]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(D[9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_106),
        .Q(AXI_LITE_TIMER_rvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h000F0008)) 
    start2_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_arvalid),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_7),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_6),
        .Q(state[1]),
        .R(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_soft_reset
   (sw_rst_cond_d1,
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ,
    reset2ip_reset_int,
    IP2Bus_WrAck_1,
    bus2ip_reset_ipif_inverted,
    sw_rst_cond,
    s_axi_aclk,
    reset_trig0,
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ,
    p_2_in,
    ip2Bus_WrAck_intr_reg_hole,
    ip2Bus_WrAck_core_reg);
  output sw_rst_cond_d1;
  output \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ;
  output reset2ip_reset_int;
  output IP2Bus_WrAck_1;
  input bus2ip_reset_ipif_inverted;
  input sw_rst_cond;
  input s_axi_aclk;
  input reset_trig0;
  input \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  input p_2_in;
  input ip2Bus_WrAck_intr_reg_hole;
  input ip2Bus_WrAck_core_reg;

  wire FF_WRACK_i_1_n_0;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  wire IP2Bus_WrAck_1;
  wire \RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ;
  wire S;
  wire \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ;
  wire bus2ip_reset_ipif_inverted;
  wire [1:15]flop_q_chain;
  wire ip2Bus_WrAck_core_reg;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire p_2_in;
  wire reset2ip_reset_int;
  wire reset_trig0;
  wire s_axi_aclk;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FF_WRACK
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FF_WRACK_i_1_n_0),
        .Q(wrack),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FF_WRACK_i_1
       (.I0(\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ),
        .I1(flop_q_chain[15]),
        .O(FF_WRACK_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LEGACY_MD_WR_RD_ACK_GEN.IP2Bus_WrAck_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I1(wrack),
        .I2(p_2_in),
        .I3(ip2Bus_WrAck_intr_reg_hole),
        .I4(ip2Bus_WrAck_core_reg),
        .O(IP2Bus_WrAck_1));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain[1]),
        .R(bus2ip_reset_ipif_inverted));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[10].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[11]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[10].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[10]),
        .O(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[11].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[12]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[11].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[11]),
        .O(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[12].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[13]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[12].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[12]),
        .O(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[13].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[14]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[13].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[13]),
        .O(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[14].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[15]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[14].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[14]),
        .O(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[15].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ),
        .Q(\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ),
        .R(bus2ip_reset_ipif_inverted));
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[15].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[15]),
        .O(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[2]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[1]),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[3]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[2]),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[4]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[3]),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[4].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[5]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[4].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[4]),
        .O(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[5].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[6]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[5].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[5]),
        .O(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[6].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[7]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[6].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[6]),
        .O(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[7].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[8]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[7].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[7]),
        .O(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[8].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[9]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[8].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[8]),
        .O(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[9].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[10]),
        .R(bus2ip_reset_ipif_inverted));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[9].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[9]),
        .O(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    RESET_SYNC_AX2S_1_i_1
       (.I0(\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0] ),
        .I1(bus2ip_reset_ipif_inverted),
        .O(reset2ip_reset_int));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(bus2ip_reset_ipif_inverted));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond),
        .Q(sw_rst_cond_d1),
        .R(bus2ip_reset_ipif_inverted));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tc_core
   (D,
    \INFERRED_GEN.icount_out_reg[0] ,
    bus2ip_reset,
    generateout0,
    generateout1,
    interrupt,
    D_0,
    read_done1,
    pwm0,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ,
    \LOAD_REG_GEN[20].LOAD_REG_I ,
    D_1,
    s_axi_aclk,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_30 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_31 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_32 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_33 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_34 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_35 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_36 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_37 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_38 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_39 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_40 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_41 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_42 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_43 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_44 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_45 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_46 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_47 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_48 ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_49 ,
    D_2,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 ,
    bus2ip_wrce,
    s_axi_wdata,
    pair0_Select,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_50 ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_30 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    s_axi_aresetn,
    Bus_RNW_reg,
    p_7_in,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_31 ,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    p_8_in,
    p_4_in,
    freeze,
    capturetrig0,
    capturetrig1);
  output [31:0]D;
  output [85:0]\INFERRED_GEN.icount_out_reg[0] ;
  output bus2ip_reset;
  output generateout0;
  output generateout1;
  output interrupt;
  output D_0;
  output read_done1;
  output pwm0;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ;
  input \LOAD_REG_GEN[20].LOAD_REG_I ;
  input D_1;
  input s_axi_aclk;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_30 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_31 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_32 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_33 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_34 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_35 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_36 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_37 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_38 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_39 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_40 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_41 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_42 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_43 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_44 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_45 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_46 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_47 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_48 ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_49 ;
  input D_2;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 ;
  input [1:0]bus2ip_wrce;
  input [10:0]s_axi_wdata;
  input pair0_Select;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_50 ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_30 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input s_axi_aresetn;
  input Bus_RNW_reg;
  input p_7_in;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_31 ;
  input Bus_RNW_reg_reg;
  input Bus_RNW_reg_reg_0;
  input Bus_RNW_reg_reg_1;
  input Bus_RNW_reg_reg_2;
  input Bus_RNW_reg_reg_3;
  input Bus_RNW_reg_reg_4;
  input p_8_in;
  input p_4_in;
  input freeze;
  input capturetrig0;
  input capturetrig1;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire CE;
  wire CE_0;
  wire [31:0]D;
  wire D_0;
  wire D_1;
  wire D_2;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_30 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_31 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_32 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_33 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_34 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_35 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_36 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_37 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_38 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_39 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_40 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_41 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_42 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_43 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_44 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_45 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_46 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_47 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_48 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_49 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_50 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_30 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_31 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_35 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_36 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_37 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_38 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_39 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_40 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_41 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_42 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_43 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_44 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_45 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_46 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_47 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_48 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_49 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_50 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_51 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_52 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_53 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_54 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_55 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_56 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_57 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_58 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_59 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_60 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_61 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_62 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_63 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_64 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_65 ;
  wire \GEN_SECOND_TIMER.COUNTER_1_I_n_66 ;
  wire [85:0]\INFERRED_GEN.icount_out_reg[0] ;
  wire \LOAD_REG_GEN[20].LOAD_REG_I ;
  wire R;
  wire TIMER_CONTROL_I_n_10;
  wire TIMER_CONTROL_I_n_11;
  wire TIMER_CONTROL_I_n_12;
  wire TIMER_CONTROL_I_n_13;
  wire TIMER_CONTROL_I_n_14;
  wire TIMER_CONTROL_I_n_15;
  wire TIMER_CONTROL_I_n_16;
  wire TIMER_CONTROL_I_n_17;
  wire TIMER_CONTROL_I_n_18;
  wire TIMER_CONTROL_I_n_19;
  wire TIMER_CONTROL_I_n_20;
  wire TIMER_CONTROL_I_n_21;
  wire TIMER_CONTROL_I_n_22;
  wire TIMER_CONTROL_I_n_23;
  wire TIMER_CONTROL_I_n_24;
  wire TIMER_CONTROL_I_n_26;
  wire TIMER_CONTROL_I_n_27;
  wire TIMER_CONTROL_I_n_28;
  wire TIMER_CONTROL_I_n_3;
  wire TIMER_CONTROL_I_n_4;
  wire bus2ip_reset;
  wire [1:0]bus2ip_wrce;
  wire capturetrig0;
  wire capturetrig1;
  wire [0:1]counter_TC;
  wire freeze;
  wire generateOutPre00;
  wire generateOutPre10;
  wire generateout0;
  wire generateout1;
  wire interrupt;
  wire p_4_in;
  wire p_7_in;
  wire p_8_in;
  wire pair0_Select;
  wire pwm0;
  wire [85:95]read_Mux_In;
  wire read_done1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [10:0]s_axi_wdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_module COUNTER_0_I
       (.CE(CE_0),
        .D_1(D_1),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_30 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_31 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_32 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_33 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_34 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_35 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_36 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_37 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_38 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_39 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_40 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_41 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_22 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_42 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_43 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_44 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_45 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_46 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_47 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_48 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_49 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_23 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_24 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_25 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_26 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_27 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_28 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_29 ),
        .\INFERRED_GEN.icount_out_reg[31] (\INFERRED_GEN.icount_out_reg[0] [84:32]),
        .Q(TIMER_CONTROL_I_n_3),
        .S(TIMER_CONTROL_I_n_28),
        .\TCSR0_GENERATE[20].TCSR0_FF_I (TIMER_CONTROL_I_n_23),
        .\TCSR0_GENERATE[31].TCSR0_FF_I (TIMER_CONTROL_I_n_24),
        .counter_TC(counter_TC[0]),
        .generateOutPre00(generateOutPre00),
        .read_Mux_In({read_Mux_In[85],read_Mux_In[86],read_Mux_In[87],read_Mux_In[88],read_Mux_In[89],read_Mux_In[90],read_Mux_In[91],read_Mux_In[92],read_Mux_In[93],read_Mux_In[94],read_Mux_In[95]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(bus2ip_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_module_0 \GEN_SECOND_TIMER.COUNTER_1_I 
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_1),
        .CE(CE),
        .DI(\INFERRED_GEN.icount_out_reg[0] [30:28]),
        .D_2(D_2),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_10 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_11 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_12 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_13 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_14 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_15 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_16 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_17 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_18 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_19 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_2 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_20 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_21 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_22 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_23 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_24 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_25 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_26 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_27 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_28 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_29 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_3 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_4 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_5 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_6 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_7 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_8 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_9 ),
        .\INFERRED_GEN.icount_out_reg[0] (\INFERRED_GEN.icount_out_reg[0] [0]),
        .\INFERRED_GEN.icount_out_reg[31] (bus2ip_reset),
        .\INFERRED_GEN.icount_out_reg[31]_0 (\INFERRED_GEN.icount_out_reg[0] [63:32]),
        .\LOAD_REG_GEN[0].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[0] [31]),
        .\LOAD_REG_GEN[12].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[0] [19:16]),
        .\LOAD_REG_GEN[16].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[0] [15:12]),
        .\LOAD_REG_GEN[20].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[0] [11:8]),
        .\LOAD_REG_GEN[24].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[0] [7:4]),
        .\LOAD_REG_GEN[28].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[0] [3:1]),
        .\LOAD_REG_GEN[4].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[0] [27:24]),
        .\LOAD_REG_GEN[8].LOAD_REG_I_0 (\INFERRED_GEN.icount_out_reg[0] [23:20]),
        .Q(TIMER_CONTROL_I_n_4),
        .S(TIMER_CONTROL_I_n_27),
        .\TCSR0_GENERATE[31].TCSR0_FF_I (TIMER_CONTROL_I_n_22),
        .counter_TC(counter_TC[1]),
        .generateOutPre0_reg(TIMER_CONTROL_I_n_21),
        .generateOutPre10(generateOutPre10),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\s_axi_rdata_i_reg[0] (\GEN_SECOND_TIMER.COUNTER_1_I_n_35 ),
        .\s_axi_rdata_i_reg[10] (\GEN_SECOND_TIMER.COUNTER_1_I_n_62 ),
        .\s_axi_rdata_i_reg[11] (\GEN_SECOND_TIMER.COUNTER_1_I_n_49 ),
        .\s_axi_rdata_i_reg[12] (\GEN_SECOND_TIMER.COUNTER_1_I_n_48 ),
        .\s_axi_rdata_i_reg[13] (\GEN_SECOND_TIMER.COUNTER_1_I_n_61 ),
        .\s_axi_rdata_i_reg[14] (\GEN_SECOND_TIMER.COUNTER_1_I_n_47 ),
        .\s_axi_rdata_i_reg[15] (\GEN_SECOND_TIMER.COUNTER_1_I_n_46 ),
        .\s_axi_rdata_i_reg[16] (\GEN_SECOND_TIMER.COUNTER_1_I_n_45 ),
        .\s_axi_rdata_i_reg[17] (\GEN_SECOND_TIMER.COUNTER_1_I_n_44 ),
        .\s_axi_rdata_i_reg[18] (\GEN_SECOND_TIMER.COUNTER_1_I_n_43 ),
        .\s_axi_rdata_i_reg[19] (\GEN_SECOND_TIMER.COUNTER_1_I_n_42 ),
        .\s_axi_rdata_i_reg[1] (\GEN_SECOND_TIMER.COUNTER_1_I_n_54 ),
        .\s_axi_rdata_i_reg[20] (\GEN_SECOND_TIMER.COUNTER_1_I_n_60 ),
        .\s_axi_rdata_i_reg[21] (\GEN_SECOND_TIMER.COUNTER_1_I_n_59 ),
        .\s_axi_rdata_i_reg[22] (\GEN_SECOND_TIMER.COUNTER_1_I_n_58 ),
        .\s_axi_rdata_i_reg[23] (\GEN_SECOND_TIMER.COUNTER_1_I_n_57 ),
        .\s_axi_rdata_i_reg[24] (\GEN_SECOND_TIMER.COUNTER_1_I_n_41 ),
        .\s_axi_rdata_i_reg[25] (\GEN_SECOND_TIMER.COUNTER_1_I_n_56 ),
        .\s_axi_rdata_i_reg[26] (\GEN_SECOND_TIMER.COUNTER_1_I_n_55 ),
        .\s_axi_rdata_i_reg[27] (\GEN_SECOND_TIMER.COUNTER_1_I_n_40 ),
        .\s_axi_rdata_i_reg[28] (\GEN_SECOND_TIMER.COUNTER_1_I_n_39 ),
        .\s_axi_rdata_i_reg[29] (\GEN_SECOND_TIMER.COUNTER_1_I_n_38 ),
        .\s_axi_rdata_i_reg[2] (\GEN_SECOND_TIMER.COUNTER_1_I_n_53 ),
        .\s_axi_rdata_i_reg[30] (\GEN_SECOND_TIMER.COUNTER_1_I_n_37 ),
        .\s_axi_rdata_i_reg[31] (\GEN_SECOND_TIMER.COUNTER_1_I_n_36 ),
        .\s_axi_rdata_i_reg[3] (\GEN_SECOND_TIMER.COUNTER_1_I_n_66 ),
        .\s_axi_rdata_i_reg[4] (\GEN_SECOND_TIMER.COUNTER_1_I_n_65 ),
        .\s_axi_rdata_i_reg[5] (\GEN_SECOND_TIMER.COUNTER_1_I_n_64 ),
        .\s_axi_rdata_i_reg[6] (\GEN_SECOND_TIMER.COUNTER_1_I_n_52 ),
        .\s_axi_rdata_i_reg[7] (\GEN_SECOND_TIMER.COUNTER_1_I_n_51 ),
        .\s_axi_rdata_i_reg[8] (\GEN_SECOND_TIMER.COUNTER_1_I_n_50 ),
        .\s_axi_rdata_i_reg[9] (\GEN_SECOND_TIMER.COUNTER_1_I_n_63 ));
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    PWM_FF_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TIMER_CONTROL_I_n_26),
        .Q(pwm0),
        .R(R));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_onehot_f READ_MUX_I
       (.D(D),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8 ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9 ),
        .\INFERRED_GEN.icount_out_reg[0] (\GEN_SECOND_TIMER.COUNTER_1_I_n_35 ),
        .\INFERRED_GEN.icount_out_reg[11] (\GEN_SECOND_TIMER.COUNTER_1_I_n_49 ),
        .\INFERRED_GEN.icount_out_reg[12] (\GEN_SECOND_TIMER.COUNTER_1_I_n_48 ),
        .\INFERRED_GEN.icount_out_reg[13] (\GEN_SECOND_TIMER.COUNTER_1_I_n_61 ),
        .\INFERRED_GEN.icount_out_reg[14] (\GEN_SECOND_TIMER.COUNTER_1_I_n_47 ),
        .\INFERRED_GEN.icount_out_reg[15] (\GEN_SECOND_TIMER.COUNTER_1_I_n_46 ),
        .\INFERRED_GEN.icount_out_reg[16] (\GEN_SECOND_TIMER.COUNTER_1_I_n_45 ),
        .\INFERRED_GEN.icount_out_reg[17] (\GEN_SECOND_TIMER.COUNTER_1_I_n_44 ),
        .\INFERRED_GEN.icount_out_reg[18] (\GEN_SECOND_TIMER.COUNTER_1_I_n_43 ),
        .\INFERRED_GEN.icount_out_reg[19] (\GEN_SECOND_TIMER.COUNTER_1_I_n_42 ),
        .\INFERRED_GEN.icount_out_reg[1] (\GEN_SECOND_TIMER.COUNTER_1_I_n_54 ),
        .\INFERRED_GEN.icount_out_reg[20] (\GEN_SECOND_TIMER.COUNTER_1_I_n_60 ),
        .\INFERRED_GEN.icount_out_reg[21] (\GEN_SECOND_TIMER.COUNTER_1_I_n_59 ),
        .\INFERRED_GEN.icount_out_reg[22] (\GEN_SECOND_TIMER.COUNTER_1_I_n_58 ),
        .\INFERRED_GEN.icount_out_reg[23] (\GEN_SECOND_TIMER.COUNTER_1_I_n_57 ),
        .\INFERRED_GEN.icount_out_reg[24] (\GEN_SECOND_TIMER.COUNTER_1_I_n_41 ),
        .\INFERRED_GEN.icount_out_reg[25] (\GEN_SECOND_TIMER.COUNTER_1_I_n_56 ),
        .\INFERRED_GEN.icount_out_reg[26] (\GEN_SECOND_TIMER.COUNTER_1_I_n_55 ),
        .\INFERRED_GEN.icount_out_reg[27] (\GEN_SECOND_TIMER.COUNTER_1_I_n_40 ),
        .\INFERRED_GEN.icount_out_reg[28] (\GEN_SECOND_TIMER.COUNTER_1_I_n_39 ),
        .\INFERRED_GEN.icount_out_reg[29] (\GEN_SECOND_TIMER.COUNTER_1_I_n_38 ),
        .\INFERRED_GEN.icount_out_reg[2] (\GEN_SECOND_TIMER.COUNTER_1_I_n_53 ),
        .\INFERRED_GEN.icount_out_reg[30] (\GEN_SECOND_TIMER.COUNTER_1_I_n_37 ),
        .\INFERRED_GEN.icount_out_reg[31] (\GEN_SECOND_TIMER.COUNTER_1_I_n_36 ),
        .\INFERRED_GEN.icount_out_reg[6] (\GEN_SECOND_TIMER.COUNTER_1_I_n_52 ),
        .\INFERRED_GEN.icount_out_reg[7] (\GEN_SECOND_TIMER.COUNTER_1_I_n_51 ),
        .\INFERRED_GEN.icount_out_reg[8] (\GEN_SECOND_TIMER.COUNTER_1_I_n_50 ),
        .\INFERRED_GEN.icount_out_reg[9] (\GEN_SECOND_TIMER.COUNTER_1_I_n_63 ),
        .\LOAD_REG_GEN[20].LOAD_REG_I (\LOAD_REG_GEN[20].LOAD_REG_I ),
        .\LOAD_REG_GEN[21].LOAD_REG_I (\GEN_SECOND_TIMER.COUNTER_1_I_n_62 ),
        .\LOAD_REG_GEN[26].LOAD_REG_I (\GEN_SECOND_TIMER.COUNTER_1_I_n_64 ),
        .\LOAD_REG_GEN[27].LOAD_REG_I (\GEN_SECOND_TIMER.COUNTER_1_I_n_65 ),
        .\LOAD_REG_GEN[28].LOAD_REG_I (\GEN_SECOND_TIMER.COUNTER_1_I_n_66 ),
        .\TCSR0_GENERATE[23].TCSR0_FF_I (TIMER_CONTROL_I_n_12),
        .\TCSR0_GENERATE[26].TCSR0_FF_I (TIMER_CONTROL_I_n_15),
        .\TCSR0_GENERATE[27].TCSR0_FF_I (TIMER_CONTROL_I_n_16),
        .\TCSR1_GENERATE[21].TCSR1_FF_I (TIMER_CONTROL_I_n_10),
        .\TCSR1_GENERATE[22].TCSR1_FF_I (TIMER_CONTROL_I_n_11),
        .\TCSR1_GENERATE[24].TCSR1_FF_I (TIMER_CONTROL_I_n_13),
        .\TCSR1_GENERATE[25].TCSR1_FF_I (TIMER_CONTROL_I_n_14),
        .\TCSR1_GENERATE[28].TCSR1_FF_I (TIMER_CONTROL_I_n_17),
        .\TCSR1_GENERATE[29].TCSR1_FF_I (TIMER_CONTROL_I_n_18),
        .\TCSR1_GENERATE[30].TCSR1_FF_I (TIMER_CONTROL_I_n_19),
        .\TCSR1_GENERATE[31].TCSR1_FF_I (TIMER_CONTROL_I_n_20));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer_control TIMER_CONTROL_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg_2),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg_3),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_4),
        .CE(CE_0),
        .CE_0(CE),
        .D_0(D_0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_50 ),
        .\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_30 ),
        .\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 (\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_31 ),
        .\INFERRED_GEN.icount_out_reg[0] (\INFERRED_GEN.icount_out_reg[0] [85]),
        .\INFERRED_GEN.icount_out_reg[0]_0 (TIMER_CONTROL_I_n_21),
        .\INFERRED_GEN.icount_out_reg[0]_1 (TIMER_CONTROL_I_n_23),
        .\INFERRED_GEN.icount_out_reg[1] ({\INFERRED_GEN.icount_out_reg[0] [33],\INFERRED_GEN.icount_out_reg[0] [1]}),
        .\INFERRED_GEN.icount_out_reg[31] (TIMER_CONTROL_I_n_22),
        .\INFERRED_GEN.icount_out_reg[31]_0 (TIMER_CONTROL_I_n_24),
        .\INFERRED_GEN.icount_out_reg[4] (TIMER_CONTROL_I_n_28),
        .\LOAD_REG_GEN[21].LOAD_REG_I ({read_Mux_In[85],read_Mux_In[86],read_Mux_In[87],read_Mux_In[88],read_Mux_In[89],read_Mux_In[90],read_Mux_In[91],read_Mux_In[92],read_Mux_In[93],read_Mux_In[94],read_Mux_In[95]}),
        .PWM_FF_I(TIMER_CONTROL_I_n_26),
        .Q({TIMER_CONTROL_I_n_3,TIMER_CONTROL_I_n_4}),
        .R(R),
        .S(TIMER_CONTROL_I_n_27),
        .SR(bus2ip_reset),
        .bus2ip_wrce(bus2ip_wrce),
        .capturetrig0(capturetrig0),
        .capturetrig1(capturetrig1),
        .counter_TC(counter_TC),
        .freeze(freeze),
        .generateOutPre00(generateOutPre00),
        .generateOutPre10(generateOutPre10),
        .generateout0(generateout0),
        .generateout1(generateout1),
        .interrupt(interrupt),
        .p_4_in(p_4_in),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .pair0_Select(pair0_Select),
        .pwm0(pwm0),
        .read_done1(read_done1),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[0] (TIMER_CONTROL_I_n_20),
        .\s_axi_rdata_i_reg[10] (TIMER_CONTROL_I_n_10),
        .\s_axi_rdata_i_reg[1] (TIMER_CONTROL_I_n_19),
        .\s_axi_rdata_i_reg[2] (TIMER_CONTROL_I_n_18),
        .\s_axi_rdata_i_reg[3] (TIMER_CONTROL_I_n_17),
        .\s_axi_rdata_i_reg[4] (TIMER_CONTROL_I_n_16),
        .\s_axi_rdata_i_reg[5] (TIMER_CONTROL_I_n_15),
        .\s_axi_rdata_i_reg[6] (TIMER_CONTROL_I_n_14),
        .\s_axi_rdata_i_reg[7] (TIMER_CONTROL_I_n_13),
        .\s_axi_rdata_i_reg[8] (TIMER_CONTROL_I_n_12),
        .\s_axi_rdata_i_reg[9] (TIMER_CONTROL_I_n_11),
        .s_axi_wdata(s_axi_wdata));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_timer_control
   (generateout0,
    generateout1,
    interrupt,
    Q,
    \INFERRED_GEN.icount_out_reg[0] ,
    D_0,
    read_done1,
    CE,
    CE_0,
    \s_axi_rdata_i_reg[10] ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[0] ,
    \INFERRED_GEN.icount_out_reg[0]_0 ,
    \INFERRED_GEN.icount_out_reg[31] ,
    \INFERRED_GEN.icount_out_reg[0]_1 ,
    \INFERRED_GEN.icount_out_reg[31]_0 ,
    R,
    PWM_FF_I,
    S,
    \INFERRED_GEN.icount_out_reg[4] ,
    SR,
    generateOutPre10,
    s_axi_aclk,
    generateOutPre00,
    bus2ip_wrce,
    s_axi_wdata,
    \LOAD_REG_GEN[21].LOAD_REG_I ,
    pair0_Select,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ,
    Bus_RNW_reg,
    p_7_in,
    counter_TC,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    p_8_in,
    p_4_in,
    pwm0,
    \INFERRED_GEN.icount_out_reg[1] ,
    freeze,
    capturetrig0,
    capturetrig1);
  output generateout0;
  output generateout1;
  output interrupt;
  output [1:0]Q;
  output \INFERRED_GEN.icount_out_reg[0] ;
  output D_0;
  output read_done1;
  output CE;
  output CE_0;
  output \s_axi_rdata_i_reg[10] ;
  output \s_axi_rdata_i_reg[9] ;
  output \s_axi_rdata_i_reg[8] ;
  output \s_axi_rdata_i_reg[7] ;
  output \s_axi_rdata_i_reg[6] ;
  output \s_axi_rdata_i_reg[5] ;
  output \s_axi_rdata_i_reg[4] ;
  output \s_axi_rdata_i_reg[3] ;
  output \s_axi_rdata_i_reg[2] ;
  output \s_axi_rdata_i_reg[1] ;
  output \s_axi_rdata_i_reg[0] ;
  output \INFERRED_GEN.icount_out_reg[0]_0 ;
  output \INFERRED_GEN.icount_out_reg[31] ;
  output \INFERRED_GEN.icount_out_reg[0]_1 ;
  output \INFERRED_GEN.icount_out_reg[31]_0 ;
  output R;
  output PWM_FF_I;
  output [0:0]S;
  output [0:0]\INFERRED_GEN.icount_out_reg[4] ;
  input [0:0]SR;
  input generateOutPre10;
  input s_axi_aclk;
  input generateOutPre00;
  input [1:0]bus2ip_wrce;
  input [10:0]s_axi_wdata;
  input [10:0]\LOAD_REG_GEN[21].LOAD_REG_I ;
  input pair0_Select;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  input Bus_RNW_reg;
  input p_7_in;
  input [0:1]counter_TC;
  input \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ;
  input Bus_RNW_reg_reg;
  input Bus_RNW_reg_reg_0;
  input Bus_RNW_reg_reg_1;
  input p_8_in;
  input p_4_in;
  input pwm0;
  input [1:0]\INFERRED_GEN.icount_out_reg[1] ;
  input freeze;
  input capturetrig0;
  input capturetrig1;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire CE;
  wire CE_0;
  wire D_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ;
  wire GenerateOut00;
  wire GenerateOut10;
  wire \INFERRED_GEN.icount_out[31]_i_3_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_4__0_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_5__0_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_6__0_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_6_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_7__0_n_0 ;
  wire \INFERRED_GEN.icount_out[31]_i_8__0_n_0 ;
  wire \INFERRED_GEN.icount_out_reg[0] ;
  wire \INFERRED_GEN.icount_out_reg[0]_0 ;
  wire \INFERRED_GEN.icount_out_reg[0]_1 ;
  wire [1:0]\INFERRED_GEN.icount_out_reg[1] ;
  wire \INFERRED_GEN.icount_out_reg[31] ;
  wire \INFERRED_GEN.icount_out_reg[31]_0 ;
  wire [0:0]\INFERRED_GEN.icount_out_reg[4] ;
  wire Interrupt0;
  wire \LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0 ;
  wire \LOAD_REG_GEN[0].LOAD_REG_I_i_3_n_0 ;
  wire \LOAD_REG_GEN[0].LOAD_REG_I_i_4__0_n_0 ;
  wire \LOAD_REG_GEN[0].LOAD_REG_I_i_4_n_0 ;
  wire \LOAD_REG_GEN[0].LOAD_REG_I_i_5_n_0 ;
  wire [10:0]\LOAD_REG_GEN[21].LOAD_REG_I ;
  wire PWM_FF_I;
  wire [1:0]Q;
  wire R;
  wire READ_DONE1_I_i_1_n_0;
  wire R_0;
  wire [0:0]S;
  wire [0:0]SR;
  wire \TCSR0_GENERATE[23].TCSR0_FF_I_i_2_n_0 ;
  wire \TCSR0_GENERATE[23].TCSR0_FF_I_i_3_n_0 ;
  wire \TCSR0_GENERATE[24].TCSR0_FF_I_i_1_n_0 ;
  wire \TCSR1_GENERATE[23].TCSR1_FF_I_i_2_n_0 ;
  wire \TCSR1_GENERATE[23].TCSR1_FF_I_i_3_n_0 ;
  wire \TCSR1_GENERATE[24].TCSR1_FF_I_i_1_n_0 ;
  wire [1:0]bus2ip_wrce;
  wire captureTrig0_d;
  wire captureTrig0_d0;
  wire captureTrig0_d2;
  wire captureTrig0_pulse_d1;
  wire captureTrig0_pulse_d2;
  wire captureTrig1_d;
  wire captureTrig1_d0;
  wire captureTrig1_d2;
  wire capturetrig0;
  wire capturetrig1;
  wire [0:1]counter_TC;
  wire counter_TC_Reg2;
  wire freeze;
  wire generateOutPre0;
  wire generateOutPre00;
  wire generateOutPre1;
  wire generateOutPre10;
  wire generateout0;
  wire generateout1;
  wire icount_out0_carry_i_7_n_0;
  wire interrupt;
  wire p_46_in;
  wire p_4_in;
  wire p_7_in;
  wire p_8_in;
  wire pair0_Select;
  wire pwm0;
  wire [21:63]read_Mux_In;
  wire read_done1;
  wire s_axi_aclk;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[10] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[8] ;
  wire \s_axi_rdata_i_reg[9] ;
  wire [10:0]s_axi_wdata;

  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[53]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [10]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[21]),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[10] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[54]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [9]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[22]),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[9] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[23]),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [8]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[55]),
        .I5(Bus_RNW_reg_reg),
        .O(\s_axi_rdata_i_reg[8] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[56]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [7]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[24]),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[7] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[57]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [6]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[25]),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[6] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[26]),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [5]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[58]),
        .I5(Bus_RNW_reg_reg),
        .O(\s_axi_rdata_i_reg[5] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[27]),
        .I1(Bus_RNW_reg_reg_1),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [4]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[59]),
        .I5(Bus_RNW_reg_reg),
        .O(\s_axi_rdata_i_reg[4] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[60]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [3]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[28]),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[3] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[61]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [2]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[29]),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[2] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[62]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [1]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[30]),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[1] ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(read_Mux_In[63]),
        .I1(Bus_RNW_reg_reg),
        .I2(\LOAD_REG_GEN[21].LOAD_REG_I [0]),
        .I3(Bus_RNW_reg_reg_0),
        .I4(read_Mux_In[31]),
        .I5(Bus_RNW_reg_reg_1),
        .O(\s_axi_rdata_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    GenerateOut0_i_2
       (.I0(read_Mux_In[29]),
        .I1(generateOutPre0),
        .I2(\INFERRED_GEN.icount_out_reg[0] ),
        .I3(generateOutPre1),
        .O(GenerateOut00));
  FDRE GenerateOut0_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GenerateOut00),
        .Q(generateout0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    GenerateOut1_i_1
       (.I0(read_Mux_In[29]),
        .I1(generateOutPre0),
        .I2(\INFERRED_GEN.icount_out_reg[0] ),
        .I3(read_Mux_In[61]),
        .I4(generateOutPre1),
        .O(GenerateOut10));
  FDRE GenerateOut1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GenerateOut10),
        .Q(generateout1),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \INFERRED_GEN.icount_out[31]_i_3 
       (.I0(counter_TC[1]),
        .I1(read_Mux_In[63]),
        .I2(read_Mux_In[54]),
        .I3(read_Mux_In[59]),
        .O(\INFERRED_GEN.icount_out[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.icount_out[31]_i_4__0 
       (.I0(read_Mux_In[31]),
        .I1(counter_TC[0]),
        .O(\INFERRED_GEN.icount_out[31]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \INFERRED_GEN.icount_out[31]_i_5__0 
       (.I0(read_Mux_In[22]),
        .I1(read_Mux_In[27]),
        .O(\INFERRED_GEN.icount_out[31]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \INFERRED_GEN.icount_out[31]_i_6 
       (.I0(read_Mux_In[58]),
        .I1(\INFERRED_GEN.icount_out_reg[0] ),
        .I2(read_Mux_In[27]),
        .I3(counter_TC[1]),
        .I4(read_Mux_In[31]),
        .O(\INFERRED_GEN.icount_out[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \INFERRED_GEN.icount_out[31]_i_6__0 
       (.I0(read_Mux_In[26]),
        .I1(\INFERRED_GEN.icount_out_reg[0] ),
        .I2(read_Mux_In[27]),
        .I3(counter_TC[1]),
        .I4(read_Mux_In[31]),
        .O(\INFERRED_GEN.icount_out[31]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000FFFFFFFF)) 
    \INFERRED_GEN.icount_out[31]_i_7 
       (.I0(read_Mux_In[31]),
        .I1(counter_TC[1]),
        .I2(read_Mux_In[27]),
        .I3(\INFERRED_GEN.icount_out_reg[0] ),
        .I4(read_Mux_In[26]),
        .I5(\INFERRED_GEN.icount_out[31]_i_8__0_n_0 ),
        .O(\INFERRED_GEN.icount_out_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h4040454040404040)) 
    \INFERRED_GEN.icount_out[31]_i_7__0 
       (.I0(\INFERRED_GEN.icount_out_reg[0] ),
        .I1(counter_TC[0]),
        .I2(read_Mux_In[54]),
        .I3(counter_TC[1]),
        .I4(read_Mux_In[63]),
        .I5(read_Mux_In[59]),
        .O(\INFERRED_GEN.icount_out[31]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAAAAAAA)) 
    \INFERRED_GEN.icount_out[31]_i_8 
       (.I0(\INFERRED_GEN.icount_out[31]_i_7__0_n_0 ),
        .I1(read_Mux_In[31]),
        .I2(counter_TC[1]),
        .I3(read_Mux_In[27]),
        .I4(\INFERRED_GEN.icount_out_reg[0] ),
        .I5(read_Mux_In[58]),
        .O(\INFERRED_GEN.icount_out_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'hEFEFEFFF)) 
    \INFERRED_GEN.icount_out[31]_i_8__0 
       (.I0(\INFERRED_GEN.icount_out_reg[0] ),
        .I1(read_Mux_In[31]),
        .I2(counter_TC[0]),
        .I3(read_Mux_In[22]),
        .I4(read_Mux_In[27]),
        .O(\INFERRED_GEN.icount_out[31]_i_8__0_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized7 INPUT_DOUBLE_REGS
       (.captureTrig0_d0(captureTrig0_d0),
        .capturetrig0(capturetrig0),
        .read_Mux_In(read_Mux_In[28]),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized7_1 INPUT_DOUBLE_REGS2
       (.captureTrig1_d0(captureTrig1_d0),
        .capturetrig1(capturetrig1),
        .read_Mux_In(read_Mux_In[60]),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized7_2 INPUT_DOUBLE_REGS3
       (.\INFERRED_GEN.icount_out_reg[0] (\INFERRED_GEN.icount_out_reg[0]_0 ),
        .\INFERRED_GEN.icount_out_reg[0]_0 (\INFERRED_GEN.icount_out_reg[0]_1 ),
        .\INFERRED_GEN.icount_out_reg[1] (\INFERRED_GEN.icount_out_reg[1] ),
        .\INFERRED_GEN.icount_out_reg[32] (\INFERRED_GEN.icount_out[31]_i_3_n_0 ),
        .\INFERRED_GEN.icount_out_reg[32]_0 (icount_out0_carry_i_7_n_0),
        .\INFERRED_GEN.icount_out_reg[4] (\INFERRED_GEN.icount_out_reg[4] ),
        .S(S),
        .\TCSR0_GENERATE[20].TCSR0_FF_I (\INFERRED_GEN.icount_out[31]_i_7__0_n_0 ),
        .\TCSR0_GENERATE[20].TCSR0_FF_I_0 (\INFERRED_GEN.icount_out_reg[0] ),
        .\TCSR0_GENERATE[22].TCSR0_FF_I (\INFERRED_GEN.icount_out[31]_i_5__0_n_0 ),
        .\TCSR0_GENERATE[26].TCSR0_FF_I (\INFERRED_GEN.icount_out[31]_i_6__0_n_0 ),
        .\TCSR0_GENERATE[31].TCSR0_FF_I (\INFERRED_GEN.icount_out[31]_i_4__0_n_0 ),
        .\TCSR1_GENERATE[26].TCSR1_FF_I (\INFERRED_GEN.icount_out[31]_i_6_n_0 ),
        .counter_TC(counter_TC[1]),
        .freeze(freeze),
        .generateOutPre0(generateOutPre0),
        .read_Mux_In({read_Mux_In[24],read_Mux_In[27],read_Mux_In[30],read_Mux_In[31],read_Mux_In[56],read_Mux_In[62]}),
        .s_axi_aclk(s_axi_aclk));
  LUT4 #(
    .INIT(16'hF888)) 
    Interrupt_i_1
       (.I0(read_Mux_In[55]),
        .I1(read_Mux_In[57]),
        .I2(read_Mux_In[23]),
        .I3(read_Mux_In[25]),
        .O(Interrupt0));
  FDRE Interrupt_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Interrupt0),
        .Q(interrupt),
        .R(SR));
  LUT6 #(
    .INIT(64'h4F444F444F444444)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_7_in),
        .I2(\LOAD_REG_GEN[0].LOAD_REG_I_i_3_n_0 ),
        .I3(read_Mux_In[31]),
        .I4(read_Mux_In[27]),
        .I5(D_0),
        .O(CE));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE000)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_1__0 
       (.I0(read_done1),
        .I1(read_Mux_In[27]),
        .I2(read_Mux_In[31]),
        .I3(\LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0 ),
        .I5(\LOAD_REG_GEN[0].LOAD_REG_I_i_4__0_n_0 ),
        .O(CE_0));
  LUT6 #(
    .INIT(64'h0000FFFDDDDDDDDD)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_3 
       (.I0(captureTrig0_d),
        .I1(captureTrig0_d2),
        .I2(counter_TC[0]),
        .I3(Q[1]),
        .I4(\LOAD_REG_GEN[0].LOAD_REG_I_i_4_n_0 ),
        .I5(\INFERRED_GEN.icount_out_reg[0] ),
        .O(\LOAD_REG_GEN[0].LOAD_REG_I_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h8880AAAA)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_3__0 
       (.I0(\INFERRED_GEN.icount_out_reg[0] ),
        .I1(counter_TC_Reg2),
        .I2(captureTrig0_pulse_d1),
        .I3(captureTrig0_pulse_d2),
        .I4(\LOAD_REG_GEN[0].LOAD_REG_I_i_5_n_0 ),
        .O(\LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_4 
       (.I0(counter_TC_Reg2),
        .I1(captureTrig0_pulse_d1),
        .I2(captureTrig0_pulse_d2),
        .O(\LOAD_REG_GEN[0].LOAD_REG_I_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E00000)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_4__0 
       (.I0(read_done1),
        .I1(read_Mux_In[59]),
        .I2(read_Mux_In[63]),
        .I3(\INFERRED_GEN.icount_out_reg[0] ),
        .I4(captureTrig1_d),
        .I5(captureTrig1_d2),
        .O(\LOAD_REG_GEN[0].LOAD_REG_I_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \LOAD_REG_GEN[0].LOAD_REG_I_i_5 
       (.I0(Q[1]),
        .I1(counter_TC[0]),
        .I2(captureTrig0_d2),
        .I3(captureTrig0_d),
        .O(\LOAD_REG_GEN[0].LOAD_REG_I_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    PWM_FF_I_i_1
       (.I0(generateout1),
        .I1(read_Mux_In[54]),
        .I2(read_Mux_In[22]),
        .O(R));
  LUT2 #(
    .INIT(4'hE)) 
    PWM_FF_I_i_2
       (.I0(generateout0),
        .I1(pwm0),
        .O(PWM_FF_I));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    READ_DONE0_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .Q(D_0),
        .R(R_0));
  LUT4 #(
    .INIT(16'hABAA)) 
    READ_DONE0_I_i_1
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0 ),
        .I1(\INFERRED_GEN.icount_out_reg[0] ),
        .I2(captureTrig0_d2),
        .I3(captureTrig0_d),
        .O(R_0));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    READ_DONE1_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ),
        .Q(read_done1),
        .R(READ_DONE1_I_i_1_n_0));
  LUT4 #(
    .INIT(16'hAABA)) 
    READ_DONE1_I_i_1
       (.I0(\LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0 ),
        .I1(captureTrig1_d2),
        .I2(captureTrig1_d),
        .I3(\INFERRED_GEN.icount_out_reg[0] ),
        .O(READ_DONE1_I_i_1_n_0));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[20].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[10]),
        .Q(\INFERRED_GEN.icount_out_reg[0] ),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[21].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(pair0_Select),
        .D(s_axi_wdata[9]),
        .Q(read_Mux_In[21]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[22].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[8]),
        .Q(read_Mux_In[22]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[23].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TCSR0_GENERATE[23].TCSR0_FF_I_i_2_n_0 ),
        .Q(read_Mux_In[23]),
        .R(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFF22E2)) 
    \TCSR0_GENERATE[23].TCSR0_FF_I_i_2 
       (.I0(\TCSR0_GENERATE[23].TCSR0_FF_I_i_3_n_0 ),
        .I1(read_Mux_In[31]),
        .I2(read_Mux_In[24]),
        .I3(\LOAD_REG_GEN[0].LOAD_REG_I_i_3_n_0 ),
        .I4(read_Mux_In[23]),
        .O(\TCSR0_GENERATE[23].TCSR0_FF_I_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TCSR0_GENERATE[23].TCSR0_FF_I_i_3 
       (.I0(generateOutPre1),
        .I1(\INFERRED_GEN.icount_out_reg[0] ),
        .I2(generateOutPre0),
        .O(\TCSR0_GENERATE[23].TCSR0_FF_I_i_3_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[24].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(pair0_Select),
        .D(\TCSR0_GENERATE[24].TCSR0_FF_I_i_1_n_0 ),
        .Q(read_Mux_In[24]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \TCSR0_GENERATE[24].TCSR0_FF_I_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(read_Mux_In[24]),
        .I2(p_8_in),
        .I3(s_axi_wdata[9]),
        .O(\TCSR0_GENERATE[24].TCSR0_FF_I_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[25].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[6]),
        .Q(read_Mux_In[25]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[26].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[5]),
        .Q(read_Mux_In[26]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[27].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[4]),
        .Q(read_Mux_In[27]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[28].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[3]),
        .Q(read_Mux_In[28]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[29].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[2]),
        .Q(read_Mux_In[29]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[30].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[1]),
        .Q(read_Mux_In[30]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR0_GENERATE[31].TCSR0_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[0]),
        .Q(read_Mux_In[31]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[21].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(pair0_Select),
        .D(s_axi_wdata[9]),
        .Q(read_Mux_In[53]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[22].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[8]),
        .Q(read_Mux_In[54]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[23].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TCSR1_GENERATE[23].TCSR1_FF_I_i_2_n_0 ),
        .Q(read_Mux_In[55]),
        .R(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \TCSR1_GENERATE[23].TCSR1_FF_I_i_2 
       (.I0(read_Mux_In[63]),
        .I1(generateOutPre1),
        .I2(\INFERRED_GEN.icount_out_reg[0] ),
        .I3(read_Mux_In[56]),
        .I4(\TCSR1_GENERATE[23].TCSR1_FF_I_i_3_n_0 ),
        .I5(read_Mux_In[55]),
        .O(\TCSR1_GENERATE[23].TCSR1_FF_I_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \TCSR1_GENERATE[23].TCSR1_FF_I_i_3 
       (.I0(captureTrig1_d2),
        .I1(captureTrig1_d),
        .I2(\INFERRED_GEN.icount_out_reg[0] ),
        .I3(read_Mux_In[63]),
        .O(\TCSR1_GENERATE[23].TCSR1_FF_I_i_3_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[24].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(pair0_Select),
        .D(\TCSR1_GENERATE[24].TCSR1_FF_I_i_1_n_0 ),
        .Q(read_Mux_In[56]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \TCSR1_GENERATE[24].TCSR1_FF_I_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(read_Mux_In[56]),
        .I2(p_4_in),
        .I3(s_axi_wdata[9]),
        .O(\TCSR1_GENERATE[24].TCSR1_FF_I_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[25].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[6]),
        .Q(read_Mux_In[57]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[26].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[5]),
        .Q(read_Mux_In[58]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[27].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[4]),
        .Q(read_Mux_In[59]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[28].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[3]),
        .Q(read_Mux_In[60]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[29].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[2]),
        .Q(read_Mux_In[61]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[30].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[1]),
        .Q(read_Mux_In[62]),
        .R(SR));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \TCSR1_GENERATE[31].TCSR1_FF_I 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[0]),
        .D(s_axi_wdata[0]),
        .Q(read_Mux_In[63]),
        .R(SR));
  FDRE captureTrig0_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(captureTrig0_d),
        .Q(captureTrig0_d2),
        .R(SR));
  FDRE captureTrig0_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(captureTrig0_d0),
        .Q(captureTrig0_d),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    captureTrig0_pulse_d1_i_1
       (.I0(captureTrig0_d),
        .I1(captureTrig0_d2),
        .O(p_46_in));
  FDRE captureTrig0_pulse_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_46_in),
        .Q(captureTrig0_pulse_d1),
        .R(SR));
  FDRE captureTrig0_pulse_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(captureTrig0_pulse_d1),
        .Q(captureTrig0_pulse_d2),
        .R(SR));
  FDRE captureTrig1_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(captureTrig1_d),
        .Q(captureTrig1_d2),
        .R(SR));
  FDRE captureTrig1_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(captureTrig1_d0),
        .Q(captureTrig1_d),
        .R(SR));
  FDRE counter_TC_Reg2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(counter_TC_Reg2),
        .R(SR));
  FDRE \counter_TC_Reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_TC[0]),
        .Q(Q[1]),
        .R(SR));
  FDRE \counter_TC_Reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_TC[1]),
        .Q(Q[0]),
        .R(SR));
  FDRE generateOutPre0_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(generateOutPre00),
        .Q(generateOutPre0),
        .R(SR));
  FDRE generateOutPre1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(generateOutPre10),
        .Q(generateOutPre1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    icount_out0_carry_i_7
       (.I0(counter_TC[0]),
        .I1(read_Mux_In[31]),
        .I2(read_Mux_In[27]),
        .I3(read_Mux_In[22]),
        .O(icount_out0_carry_i_7_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
