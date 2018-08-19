// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Aug 11 16:21:42 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PmodMAXSONAR_0_0_sim_netlist.v
// Design      : design_1_PmodMAXSONAR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Analyzer_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    pwm,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input pwm;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire pwm;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Analyzer_v1_0_S00_AXI PWM_Analyzer_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .pwm(pwm),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Analyzer_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    pwm,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input pwm;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:7]p_0_in;
  wire pwm;
  wire pwm_clean;
  wire pwm_delay;
  wire [31:0]reg_data_out;
  wire reset;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [30:0]slv_reg0;
  wire [30:0]slv_reg1;
  wire [31:0]slv_reg2;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(reset));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(reset));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(reset));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(slv_reg1[0]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(slv_reg1[10]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[10]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(slv_reg1[11]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[11]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(slv_reg1[12]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[12]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(slv_reg1[13]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[13]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(slv_reg1[14]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[14]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(slv_reg1[15]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[15]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(slv_reg1[16]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[16]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(slv_reg1[17]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[17]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(slv_reg1[18]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[18]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(slv_reg1[19]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[19]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(slv_reg1[1]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[1]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(slv_reg1[20]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[20]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(slv_reg1[21]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[21]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(slv_reg1[22]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[22]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(slv_reg1[23]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[23]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(slv_reg1[24]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[24]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(slv_reg1[25]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[25]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(slv_reg1[26]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[26]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(slv_reg1[27]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[27]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(slv_reg1[28]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[28]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(slv_reg1[29]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[29]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(slv_reg1[2]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(slv_reg1[30]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[30]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[30]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg2[31]),
        .I2(axi_araddr[2]),
        .I3(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(slv_reg1[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[3]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(slv_reg1[4]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[4]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(slv_reg1[5]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[5]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(slv_reg1[6]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[6]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(slv_reg1[7]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[7]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(slv_reg1[8]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[8]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(slv_reg1[9]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[9]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(reset));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(reset));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(reset));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(reset));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(reset));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(reset));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(reset));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(reset));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(reset));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(reset));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(reset));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(reset));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(reset));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(reset));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(reset));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(reset));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(reset));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(reset));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(reset));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(reset));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(reset));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(reset));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(reset));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(reset));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(reset));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(reset));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(reset));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(reset));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(reset));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(reset));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(reset));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(reset));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulseLength pulse_length
       (.Q(slv_reg0),
        .SR(reset),
        .\axi_rdata_reg[30] (slv_reg1),
        .pwm_clean(pwm_clean),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_reg2(slv_reg2));
  FDRE pwm_clean_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pwm_delay),
        .Q(pwm_clean),
        .R(1'b0));
  FDRE pwm_delay_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pwm),
        .Q(pwm_delay),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_0_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(reset));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(reset));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(reset));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(reset));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(reset));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(reset));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(reset));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(reset));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(reset));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(reset));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(reset));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(reset));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(reset));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(reset));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(reset));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(reset));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(reset));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(reset));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(reset));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(reset));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(reset));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(reset));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(reset));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(reset));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(reset));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(reset));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(reset));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(reset));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(reset));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(reset));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(reset));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* HW_HANDOFF = "PmodMAXSONAR.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR
   (AXI_LITE_GPIO_araddr,
    AXI_LITE_GPIO_arprot,
    AXI_LITE_GPIO_arready,
    AXI_LITE_GPIO_arvalid,
    AXI_LITE_GPIO_awaddr,
    AXI_LITE_GPIO_awprot,
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
    s00_axi_aclk,
    s00_axi_aresetn);
  input [3:0]AXI_LITE_GPIO_araddr;
  input [2:0]AXI_LITE_GPIO_arprot;
  output AXI_LITE_GPIO_arready;
  input AXI_LITE_GPIO_arvalid;
  input [3:0]AXI_LITE_GPIO_awaddr;
  input [2:0]AXI_LITE_GPIO_awprot;
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
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire [3:0]AXI_LITE_GPIO_araddr;
  wire [2:0]AXI_LITE_GPIO_arprot;
  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_arvalid;
  wire [3:0]AXI_LITE_GPIO_awaddr;
  wire [2:0]AXI_LITE_GPIO_awprot;
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
  wire Pmod_out_pin10_i;
  wire Pmod_out_pin10_o;
  wire Pmod_out_pin10_t;
  wire Pmod_out_pin1_i;
  wire Pmod_out_pin1_o;
  wire Pmod_out_pin1_t;
  wire Pmod_out_pin2_i;
  wire Pmod_out_pin2_o;
  wire Pmod_out_pin2_t;
  wire Pmod_out_pin3_i;
  wire Pmod_out_pin3_o;
  wire Pmod_out_pin3_t;
  wire Pmod_out_pin4_i;
  wire Pmod_out_pin4_o;
  wire Pmod_out_pin4_t;
  wire Pmod_out_pin7_i;
  wire Pmod_out_pin7_o;
  wire Pmod_out_pin7_t;
  wire Pmod_out_pin8_i;
  wire Pmod_out_pin8_o;
  wire Pmod_out_pin8_t;
  wire Pmod_out_pin9_i;
  wire Pmod_out_pin9_o;
  wire Pmod_out_pin9_t;
  wire [3:0]pmod_bridge_0_in_top_bus_I;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:0]xlconstant_0_dout;
  wire xlslice_0_Dout;

  (* CHECK_LICENSE_TYPE = "PmodMAXSONAR_PWM_Analyzer_0_1,PWM_Analyzer_v1_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "PWM_Analyzer_v1_0,Vivado 2018.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR_PWM_Analyzer_0_1 PWM_Analyzer_0
       (.pwm(xlslice_0_Dout),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(AXI_LITE_GPIO_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot(AXI_LITE_GPIO_arprot),
        .s00_axi_arready(AXI_LITE_GPIO_arready),
        .s00_axi_arvalid(AXI_LITE_GPIO_arvalid),
        .s00_axi_awaddr(AXI_LITE_GPIO_awaddr),
        .s00_axi_awprot(AXI_LITE_GPIO_awprot),
        .s00_axi_awready(AXI_LITE_GPIO_awready),
        .s00_axi_awvalid(AXI_LITE_GPIO_awvalid),
        .s00_axi_bready(AXI_LITE_GPIO_bready),
        .s00_axi_bresp(AXI_LITE_GPIO_bresp),
        .s00_axi_bvalid(AXI_LITE_GPIO_bvalid),
        .s00_axi_rdata(AXI_LITE_GPIO_rdata),
        .s00_axi_rready(AXI_LITE_GPIO_rready),
        .s00_axi_rresp(AXI_LITE_GPIO_rresp),
        .s00_axi_rvalid(AXI_LITE_GPIO_rvalid),
        .s00_axi_wdata(AXI_LITE_GPIO_wdata),
        .s00_axi_wready(AXI_LITE_GPIO_wready),
        .s00_axi_wstrb(AXI_LITE_GPIO_wstrb),
        .s00_axi_wvalid(AXI_LITE_GPIO_wvalid));
  (* CHECK_LICENSE_TYPE = "PmodMAXSONAR_pmod_bridge_0_0,pmod_concat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pmod_concat,Vivado 2018.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR_pmod_bridge_0_0 pmod_bridge_0
       (.in_top_bus_I(pmod_bridge_0_in_top_bus_I),
        .in_top_bus_O(xlconstant_0_dout),
        .in_top_bus_T(xlconstant_0_dout),
        .out0_I(Pmod_out_pin1_i),
        .out0_O(Pmod_out_pin1_o),
        .out0_T(Pmod_out_pin1_t),
        .out1_I(Pmod_out_pin2_i),
        .out1_O(Pmod_out_pin2_o),
        .out1_T(Pmod_out_pin2_t),
        .out2_I(Pmod_out_pin3_i),
        .out2_O(Pmod_out_pin3_o),
        .out2_T(Pmod_out_pin3_t),
        .out3_I(Pmod_out_pin4_i),
        .out3_O(Pmod_out_pin4_o),
        .out3_T(Pmod_out_pin4_t),
        .out4_I(Pmod_out_pin7_i),
        .out4_O(Pmod_out_pin7_o),
        .out4_T(Pmod_out_pin7_t),
        .out5_I(Pmod_out_pin8_i),
        .out5_O(Pmod_out_pin8_o),
        .out5_T(Pmod_out_pin8_t),
        .out6_I(Pmod_out_pin9_i),
        .out6_O(Pmod_out_pin9_o),
        .out6_T(Pmod_out_pin9_t),
        .out7_I(Pmod_out_pin10_i),
        .out7_O(Pmod_out_pin10_o),
        .out7_T(Pmod_out_pin10_t));
  (* CHECK_LICENSE_TYPE = "PmodMAXSONAR_xlconstant_0_0,xlconstant_v1_1_5_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  (* CHECK_LICENSE_TYPE = "PmodMAXSONAR_xlslice_0_0,xlslice_v1_0_1_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR_xlslice_0_0 xlslice_0
       (.Din(pmod_bridge_0_in_top_bus_I),
        .Dout(xlslice_0_Dout));
endmodule

(* CHECK_LICENSE_TYPE = "PmodMAXSONAR_PWM_Analyzer_0_1,PWM_Analyzer_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PWM_Analyzer_v1_0,Vivado 2018.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR_PWM_Analyzer_0_1
   (pwm,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input pwm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, ASSOCIATED_BUSIF S00_AXI, FREQ_HZ 100000000, PHASE 0.000" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire pwm;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_Analyzer_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .pwm(pwm),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "PmodMAXSONAR_pmod_bridge_0_0,pmod_concat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pmod_concat,Vivado 2018.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR_pmod_bridge_0_0
   (in_top_bus_I,
    in_top_bus_O,
    in_top_bus_T,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_I" *) output [3:0]in_top_bus_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_O" *) input [3:0]in_top_bus_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_T" *) input [3:0]in_top_bus_T;
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

  wire [3:0]in_top_bus_I;
  wire [3:0]in_top_bus_O;
  wire [3:0]in_top_bus_T;
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
  wire NLW_inst_in0_I_UNCONNECTED;
  wire NLW_inst_in1_I_UNCONNECTED;
  wire NLW_inst_in2_I_UNCONNECTED;
  wire NLW_inst_in3_I_UNCONNECTED;
  wire NLW_inst_in4_I_UNCONNECTED;
  wire NLW_inst_in5_I_UNCONNECTED;
  wire NLW_inst_in6_I_UNCONNECTED;
  wire NLW_inst_in7_I_UNCONNECTED;
  wire [3:0]NLW_inst_in_bottom_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED;

  (* Bottom_Row_Interface = "Disabled" *) 
  (* Top_Row_Interface = "GPIO" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat inst
       (.in0_I(NLW_inst_in0_I_UNCONNECTED),
        .in0_O(1'b1),
        .in0_T(1'b1),
        .in1_I(NLW_inst_in1_I_UNCONNECTED),
        .in1_O(1'b1),
        .in1_T(1'b1),
        .in2_I(NLW_inst_in2_I_UNCONNECTED),
        .in2_O(1'b1),
        .in2_T(1'b1),
        .in3_I(NLW_inst_in3_I_UNCONNECTED),
        .in3_O(1'b1),
        .in3_T(1'b1),
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
        .in_bottom_bus_I(NLW_inst_in_bottom_bus_I_UNCONNECTED[3:0]),
        .in_bottom_bus_O({1'b0,1'b0,1'b0,1'b1}),
        .in_bottom_bus_T({1'b0,1'b0,1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_I(NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_I(NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_uart_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_T({1'b0,1'b1}),
        .in_top_bus_I(in_top_bus_I),
        .in_top_bus_O(in_top_bus_O),
        .in_top_bus_T(in_top_bus_T),
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

(* CHECK_LICENSE_TYPE = "PmodMAXSONAR_xlconstant_0_0,xlconstant_v1_1_5_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconstant_v1_1_5_xlconstant,Vivado 2018.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR_xlconstant_0_0
   (dout);
  output [3:0]dout;

  wire \<const1> ;

  assign dout[3] = \<const1> ;
  assign dout[2] = \<const1> ;
  assign dout[1] = \<const1> ;
  assign dout[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "PmodMAXSONAR_xlslice_0_0,xlslice_v1_0_1_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR_xlslice_0_0
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[3];
endmodule

(* CHECK_LICENSE_TYPE = "design_1_PmodMAXSONAR_0_0,PmodMAXSONAR,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "IPI" *) 
(* X_CORE_INFO = "PmodMAXSONAR,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (AXI_LITE_GPIO_araddr,
    AXI_LITE_GPIO_arprot,
    AXI_LITE_GPIO_arready,
    AXI_LITE_GPIO_arvalid,
    AXI_LITE_GPIO_awaddr,
    AXI_LITE_GPIO_awprot,
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
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARADDR" *) input [3:0]AXI_LITE_GPIO_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARPROT" *) input [2:0]AXI_LITE_GPIO_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARREADY" *) output AXI_LITE_GPIO_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARVALID" *) input AXI_LITE_GPIO_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWADDR" *) input [3:0]AXI_LITE_GPIO_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWPROT" *) input [2:0]AXI_LITE_GPIO_awprot;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_GPIO, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input AXI_LITE_GPIO_wvalid;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I" *) input Pmod_out_pin10_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O" *) output Pmod_out_pin10_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T" *) output Pmod_out_pin10_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I" *) input Pmod_out_pin1_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O" *) output Pmod_out_pin1_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T" *) output Pmod_out_pin1_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I" *) input Pmod_out_pin2_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O" *) output Pmod_out_pin2_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T" *) output Pmod_out_pin2_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I" *) input Pmod_out_pin3_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O" *) output Pmod_out_pin3_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T" *) output Pmod_out_pin3_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I" *) input Pmod_out_pin4_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O" *) output Pmod_out_pin4_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T" *) output Pmod_out_pin4_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I" *) input Pmod_out_pin7_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O" *) output Pmod_out_pin7_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T" *) output Pmod_out_pin7_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I" *) input Pmod_out_pin8_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O" *) output Pmod_out_pin8_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T" *) output Pmod_out_pin8_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I" *) input Pmod_out_pin9_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O" *) output Pmod_out_pin9_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Pmod_out, BUSIF.BOARD_INTERFACE Custom, BOARD.ASSOCIATED_PARAM PMOD" *) output Pmod_out_pin9_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S00_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S00_AXI_ACLK, ASSOCIATED_BUSIF AXI_LITE_GPIO, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S00_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S00_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire [3:0]AXI_LITE_GPIO_araddr;
  wire [2:0]AXI_LITE_GPIO_arprot;
  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_arvalid;
  wire [3:0]AXI_LITE_GPIO_awaddr;
  wire [2:0]AXI_LITE_GPIO_awprot;
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
  wire Pmod_out_pin10_i;
  wire Pmod_out_pin10_o;
  wire Pmod_out_pin10_t;
  wire Pmod_out_pin1_i;
  wire Pmod_out_pin1_o;
  wire Pmod_out_pin1_t;
  wire Pmod_out_pin2_i;
  wire Pmod_out_pin2_o;
  wire Pmod_out_pin2_t;
  wire Pmod_out_pin3_i;
  wire Pmod_out_pin3_o;
  wire Pmod_out_pin3_t;
  wire Pmod_out_pin4_i;
  wire Pmod_out_pin4_o;
  wire Pmod_out_pin4_t;
  wire Pmod_out_pin7_i;
  wire Pmod_out_pin7_o;
  wire Pmod_out_pin7_t;
  wire Pmod_out_pin8_i;
  wire Pmod_out_pin8_o;
  wire Pmod_out_pin8_t;
  wire Pmod_out_pin9_i;
  wire Pmod_out_pin9_o;
  wire Pmod_out_pin9_t;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  (* HW_HANDOFF = "PmodMAXSONAR.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodMAXSONAR inst
       (.AXI_LITE_GPIO_araddr(AXI_LITE_GPIO_araddr),
        .AXI_LITE_GPIO_arprot(AXI_LITE_GPIO_arprot),
        .AXI_LITE_GPIO_arready(AXI_LITE_GPIO_arready),
        .AXI_LITE_GPIO_arvalid(AXI_LITE_GPIO_arvalid),
        .AXI_LITE_GPIO_awaddr(AXI_LITE_GPIO_awaddr),
        .AXI_LITE_GPIO_awprot(AXI_LITE_GPIO_awprot),
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
        .Pmod_out_pin10_i(Pmod_out_pin10_i),
        .Pmod_out_pin10_o(Pmod_out_pin10_o),
        .Pmod_out_pin10_t(Pmod_out_pin10_t),
        .Pmod_out_pin1_i(Pmod_out_pin1_i),
        .Pmod_out_pin1_o(Pmod_out_pin1_o),
        .Pmod_out_pin1_t(Pmod_out_pin1_t),
        .Pmod_out_pin2_i(Pmod_out_pin2_i),
        .Pmod_out_pin2_o(Pmod_out_pin2_o),
        .Pmod_out_pin2_t(Pmod_out_pin2_t),
        .Pmod_out_pin3_i(Pmod_out_pin3_i),
        .Pmod_out_pin3_o(Pmod_out_pin3_o),
        .Pmod_out_pin3_t(Pmod_out_pin3_t),
        .Pmod_out_pin4_i(Pmod_out_pin4_i),
        .Pmod_out_pin4_o(Pmod_out_pin4_o),
        .Pmod_out_pin4_t(Pmod_out_pin4_t),
        .Pmod_out_pin7_i(Pmod_out_pin7_i),
        .Pmod_out_pin7_o(Pmod_out_pin7_o),
        .Pmod_out_pin7_t(Pmod_out_pin7_t),
        .Pmod_out_pin8_i(Pmod_out_pin8_i),
        .Pmod_out_pin8_o(Pmod_out_pin8_o),
        .Pmod_out_pin8_t(Pmod_out_pin8_t),
        .Pmod_out_pin9_i(Pmod_out_pin9_i),
        .Pmod_out_pin9_o(Pmod_out_pin9_o),
        .Pmod_out_pin9_t(Pmod_out_pin9_t),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* Bottom_Row_Interface = "Disabled" *) (* Top_Row_Interface = "GPIO" *) 
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
  wire in4_O;
  wire in4_T;
  wire in5_O;
  wire in5_T;
  wire in6_O;
  wire in6_T;
  wire in7_O;
  wire in7_T;
  wire [3:0]in_top_bus_O;
  wire [3:0]in_top_bus_T;
  wire out0_I;
  wire out1_I;
  wire out2_I;
  wire out3_I;
  wire out4_I;
  wire out5_I;
  wire out6_I;
  wire out7_I;

  assign in0_I = \<const0> ;
  assign in1_I = \<const0> ;
  assign in2_I = \<const0> ;
  assign in3_I = \<const0> ;
  assign in4_I = out4_I;
  assign in5_I = out5_I;
  assign in6_I = out6_I;
  assign in7_I = out7_I;
  assign in_bottom_bus_I[3] = \<const0> ;
  assign in_bottom_bus_I[2] = \<const0> ;
  assign in_bottom_bus_I[1] = \<const0> ;
  assign in_bottom_bus_I[0] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[0] = \<const0> ;
  assign in_top_bus_I[3] = out3_I;
  assign in_top_bus_I[2] = out2_I;
  assign in_top_bus_I[1] = out1_I;
  assign in_top_bus_I[0] = out0_I;
  assign in_top_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_top_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_top_uart_gpio_bus_I[1] = \<const0> ;
  assign in_top_uart_gpio_bus_I[0] = \<const0> ;
  assign out0_O = in_top_bus_O[0];
  assign out0_T = in_top_bus_T[0];
  assign out1_O = in_top_bus_O[1];
  assign out1_T = in_top_bus_T[1];
  assign out2_O = in_top_bus_O[2];
  assign out2_T = in_top_bus_T[2];
  assign out3_O = in_top_bus_O[3];
  assign out3_T = in_top_bus_T[3];
  assign out4_O = in4_O;
  assign out4_T = in4_T;
  assign out5_O = in5_O;
  assign out5_T = in5_T;
  assign out6_O = in6_O;
  assign out6_T = in6_T;
  assign out7_O = in7_O;
  assign out7_T = in7_T;
  GND GND
       (.G(\<const0> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulseLength
   (slv_reg2,
    Q,
    SR,
    \axi_rdata_reg[30] ,
    pwm_clean,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [31:0]slv_reg2;
  output [30:0]Q;
  output [0:0]SR;
  output [30:0]\axi_rdata_reg[30] ;
  input pwm_clean;
  input s00_axi_aclk;
  input s00_axi_aresetn;

  wire [30:0]Q;
  wire [0:0]SR;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_1 ;
  wire \axi_rdata_reg[11]_i_2_n_2 ;
  wire \axi_rdata_reg[11]_i_2_n_3 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_1 ;
  wire \axi_rdata_reg[15]_i_2_n_2 ;
  wire \axi_rdata_reg[15]_i_2_n_3 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_1 ;
  wire \axi_rdata_reg[19]_i_2_n_2 ;
  wire \axi_rdata_reg[19]_i_2_n_3 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_1 ;
  wire \axi_rdata_reg[23]_i_2_n_2 ;
  wire \axi_rdata_reg[23]_i_2_n_3 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_1 ;
  wire \axi_rdata_reg[27]_i_2_n_2 ;
  wire \axi_rdata_reg[27]_i_2_n_3 ;
  wire [30:0]\axi_rdata_reg[30] ;
  wire \axi_rdata_reg[31]_i_2_n_2 ;
  wire \axi_rdata_reg[31]_i_2_n_3 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_1 ;
  wire \axi_rdata_reg[3]_i_2_n_2 ;
  wire \axi_rdata_reg[3]_i_2_n_3 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_1 ;
  wire \axi_rdata_reg[7]_i_2_n_2 ;
  wire \axi_rdata_reg[7]_i_2_n_3 ;
  wire [0:0]count_clk0;
  wire count_clk00_carry__0_n_0;
  wire count_clk00_carry__0_n_1;
  wire count_clk00_carry__0_n_2;
  wire count_clk00_carry__0_n_3;
  wire count_clk00_carry__1_n_0;
  wire count_clk00_carry__1_n_1;
  wire count_clk00_carry__1_n_2;
  wire count_clk00_carry__1_n_3;
  wire count_clk00_carry__2_n_0;
  wire count_clk00_carry__2_n_1;
  wire count_clk00_carry__2_n_2;
  wire count_clk00_carry__2_n_3;
  wire count_clk00_carry__3_n_0;
  wire count_clk00_carry__3_n_1;
  wire count_clk00_carry__3_n_2;
  wire count_clk00_carry__3_n_3;
  wire count_clk00_carry__4_n_0;
  wire count_clk00_carry__4_n_1;
  wire count_clk00_carry__4_n_2;
  wire count_clk00_carry__4_n_3;
  wire count_clk00_carry__5_n_0;
  wire count_clk00_carry__5_n_1;
  wire count_clk00_carry__5_n_2;
  wire count_clk00_carry__5_n_3;
  wire count_clk00_carry__6_n_3;
  wire count_clk00_carry_n_0;
  wire count_clk00_carry_n_1;
  wire count_clk00_carry_n_2;
  wire count_clk00_carry_n_3;
  wire \count_clk0[10]_i_1_n_0 ;
  wire \count_clk0[11]_i_1_n_0 ;
  wire \count_clk0[12]_i_1_n_0 ;
  wire \count_clk0[13]_i_1_n_0 ;
  wire \count_clk0[14]_i_1_n_0 ;
  wire \count_clk0[15]_i_1_n_0 ;
  wire \count_clk0[16]_i_1_n_0 ;
  wire \count_clk0[17]_i_1_n_0 ;
  wire \count_clk0[18]_i_1_n_0 ;
  wire \count_clk0[19]_i_1_n_0 ;
  wire \count_clk0[1]_i_1_n_0 ;
  wire \count_clk0[20]_i_1_n_0 ;
  wire \count_clk0[21]_i_1_n_0 ;
  wire \count_clk0[22]_i_1_n_0 ;
  wire \count_clk0[23]_i_1_n_0 ;
  wire \count_clk0[24]_i_1_n_0 ;
  wire \count_clk0[25]_i_1_n_0 ;
  wire \count_clk0[26]_i_1_n_0 ;
  wire \count_clk0[27]_i_1_n_0 ;
  wire \count_clk0[28]_i_1_n_0 ;
  wire \count_clk0[29]_i_1_n_0 ;
  wire \count_clk0[2]_i_1_n_0 ;
  wire \count_clk0[30]_i_10_n_0 ;
  wire \count_clk0[30]_i_1_n_0 ;
  wire \count_clk0[30]_i_2_n_0 ;
  wire \count_clk0[30]_i_3_n_0 ;
  wire \count_clk0[30]_i_4_n_0 ;
  wire \count_clk0[30]_i_5_n_0 ;
  wire \count_clk0[30]_i_6_n_0 ;
  wire \count_clk0[30]_i_7_n_0 ;
  wire \count_clk0[30]_i_8_n_0 ;
  wire \count_clk0[30]_i_9_n_0 ;
  wire \count_clk0[3]_i_1_n_0 ;
  wire \count_clk0[4]_i_1_n_0 ;
  wire \count_clk0[5]_i_1_n_0 ;
  wire \count_clk0[6]_i_1_n_0 ;
  wire \count_clk0[7]_i_1_n_0 ;
  wire \count_clk0[8]_i_1_n_0 ;
  wire \count_clk0[9]_i_1_n_0 ;
  wire \count_clk0_reg_n_0_[0] ;
  wire \count_clk0_reg_n_0_[10] ;
  wire \count_clk0_reg_n_0_[11] ;
  wire \count_clk0_reg_n_0_[12] ;
  wire \count_clk0_reg_n_0_[13] ;
  wire \count_clk0_reg_n_0_[14] ;
  wire \count_clk0_reg_n_0_[15] ;
  wire \count_clk0_reg_n_0_[16] ;
  wire \count_clk0_reg_n_0_[17] ;
  wire \count_clk0_reg_n_0_[18] ;
  wire \count_clk0_reg_n_0_[19] ;
  wire \count_clk0_reg_n_0_[1] ;
  wire \count_clk0_reg_n_0_[20] ;
  wire \count_clk0_reg_n_0_[21] ;
  wire \count_clk0_reg_n_0_[22] ;
  wire \count_clk0_reg_n_0_[23] ;
  wire \count_clk0_reg_n_0_[24] ;
  wire \count_clk0_reg_n_0_[25] ;
  wire \count_clk0_reg_n_0_[26] ;
  wire \count_clk0_reg_n_0_[27] ;
  wire \count_clk0_reg_n_0_[28] ;
  wire \count_clk0_reg_n_0_[29] ;
  wire \count_clk0_reg_n_0_[2] ;
  wire \count_clk0_reg_n_0_[30] ;
  wire \count_clk0_reg_n_0_[3] ;
  wire \count_clk0_reg_n_0_[4] ;
  wire \count_clk0_reg_n_0_[5] ;
  wire \count_clk0_reg_n_0_[6] ;
  wire \count_clk0_reg_n_0_[7] ;
  wire \count_clk0_reg_n_0_[8] ;
  wire \count_clk0_reg_n_0_[9] ;
  wire [0:0]count_clk1;
  wire count_clk10_carry__0_n_0;
  wire count_clk10_carry__0_n_1;
  wire count_clk10_carry__0_n_2;
  wire count_clk10_carry__0_n_3;
  wire count_clk10_carry__1_n_0;
  wire count_clk10_carry__1_n_1;
  wire count_clk10_carry__1_n_2;
  wire count_clk10_carry__1_n_3;
  wire count_clk10_carry__2_n_0;
  wire count_clk10_carry__2_n_1;
  wire count_clk10_carry__2_n_2;
  wire count_clk10_carry__2_n_3;
  wire count_clk10_carry__3_n_0;
  wire count_clk10_carry__3_n_1;
  wire count_clk10_carry__3_n_2;
  wire count_clk10_carry__3_n_3;
  wire count_clk10_carry__4_n_0;
  wire count_clk10_carry__4_n_1;
  wire count_clk10_carry__4_n_2;
  wire count_clk10_carry__4_n_3;
  wire count_clk10_carry__5_n_0;
  wire count_clk10_carry__5_n_1;
  wire count_clk10_carry__5_n_2;
  wire count_clk10_carry__5_n_3;
  wire count_clk10_carry__6_n_3;
  wire count_clk10_carry_n_0;
  wire count_clk10_carry_n_1;
  wire count_clk10_carry_n_2;
  wire count_clk10_carry_n_3;
  wire \count_clk1[10]_i_1_n_0 ;
  wire \count_clk1[11]_i_1_n_0 ;
  wire \count_clk1[12]_i_1_n_0 ;
  wire \count_clk1[13]_i_1_n_0 ;
  wire \count_clk1[14]_i_1_n_0 ;
  wire \count_clk1[15]_i_1_n_0 ;
  wire \count_clk1[16]_i_1_n_0 ;
  wire \count_clk1[17]_i_1_n_0 ;
  wire \count_clk1[18]_i_1_n_0 ;
  wire \count_clk1[19]_i_1_n_0 ;
  wire \count_clk1[1]_i_1_n_0 ;
  wire \count_clk1[20]_i_1_n_0 ;
  wire \count_clk1[21]_i_1_n_0 ;
  wire \count_clk1[22]_i_1_n_0 ;
  wire \count_clk1[23]_i_1_n_0 ;
  wire \count_clk1[24]_i_1_n_0 ;
  wire \count_clk1[25]_i_1_n_0 ;
  wire \count_clk1[26]_i_1_n_0 ;
  wire \count_clk1[27]_i_1_n_0 ;
  wire \count_clk1[28]_i_1_n_0 ;
  wire \count_clk1[29]_i_1_n_0 ;
  wire \count_clk1[2]_i_1_n_0 ;
  wire \count_clk1[30]_i_10_n_0 ;
  wire \count_clk1[30]_i_1_n_0 ;
  wire \count_clk1[30]_i_2_n_0 ;
  wire \count_clk1[30]_i_3_n_0 ;
  wire \count_clk1[30]_i_4_n_0 ;
  wire \count_clk1[30]_i_5_n_0 ;
  wire \count_clk1[30]_i_6_n_0 ;
  wire \count_clk1[30]_i_7_n_0 ;
  wire \count_clk1[30]_i_8_n_0 ;
  wire \count_clk1[30]_i_9_n_0 ;
  wire \count_clk1[3]_i_1_n_0 ;
  wire \count_clk1[4]_i_1_n_0 ;
  wire \count_clk1[5]_i_1_n_0 ;
  wire \count_clk1[6]_i_1_n_0 ;
  wire \count_clk1[7]_i_1_n_0 ;
  wire \count_clk1[8]_i_1_n_0 ;
  wire \count_clk1[9]_i_1_n_0 ;
  wire \count_clk1_reg_n_0_[0] ;
  wire \count_clk1_reg_n_0_[10] ;
  wire \count_clk1_reg_n_0_[11] ;
  wire \count_clk1_reg_n_0_[12] ;
  wire \count_clk1_reg_n_0_[13] ;
  wire \count_clk1_reg_n_0_[14] ;
  wire \count_clk1_reg_n_0_[15] ;
  wire \count_clk1_reg_n_0_[16] ;
  wire \count_clk1_reg_n_0_[17] ;
  wire \count_clk1_reg_n_0_[18] ;
  wire \count_clk1_reg_n_0_[19] ;
  wire \count_clk1_reg_n_0_[1] ;
  wire \count_clk1_reg_n_0_[20] ;
  wire \count_clk1_reg_n_0_[21] ;
  wire \count_clk1_reg_n_0_[22] ;
  wire \count_clk1_reg_n_0_[23] ;
  wire \count_clk1_reg_n_0_[24] ;
  wire \count_clk1_reg_n_0_[25] ;
  wire \count_clk1_reg_n_0_[26] ;
  wire \count_clk1_reg_n_0_[27] ;
  wire \count_clk1_reg_n_0_[28] ;
  wire \count_clk1_reg_n_0_[29] ;
  wire \count_clk1_reg_n_0_[2] ;
  wire \count_clk1_reg_n_0_[30] ;
  wire \count_clk1_reg_n_0_[3] ;
  wire \count_clk1_reg_n_0_[4] ;
  wire \count_clk1_reg_n_0_[5] ;
  wire \count_clk1_reg_n_0_[6] ;
  wire \count_clk1_reg_n_0_[7] ;
  wire \count_clk1_reg_n_0_[8] ;
  wire \count_clk1_reg_n_0_[9] ;
  wire [30:1]in10;
  wire [30:1]in8;
  wire [1:0]ns;
  (* RTL_KEEP = "yes" *) wire [1:0]ps;
  wire \pw_high[30]_i_1_n_0 ;
  wire \pw_low[30]_i_1_n_0 ;
  wire pwm_clean;
  wire pwm_prev;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [31:0]slv_reg2;
  wire [2:2]\NLW_axi_rdata_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_axi_rdata_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:1]NLW_count_clk00_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_count_clk00_carry__6_O_UNCONNECTED;
  wire [3:1]NLW_count_clk10_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_count_clk10_carry__6_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hE1F2)) 
    \FSM_sequential_ps[0]_i_1 
       (.I0(ps[0]),
        .I1(ps[1]),
        .I2(pwm_clean),
        .I3(pwm_prev),
        .O(ns[0]));
  LUT4 #(
    .INIT(16'hBEAA)) 
    \FSM_sequential_ps[1]_i_1 
       (.I0(ps[1]),
        .I1(pwm_clean),
        .I2(pwm_prev),
        .I3(ps[0]),
        .O(ns[1]));
  (* FSM_ENCODED_STATES = "init:00,first:01,high:11,low:10" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_ps_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ns[0]),
        .Q(ps[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "init:00,first:01,high:11,low:10" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_ps_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ns[1]),
        .Q(ps[1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[11]_i_3 
       (.I0(Q[11]),
        .I1(\axi_rdata_reg[30] [11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[11]_i_4 
       (.I0(Q[10]),
        .I1(\axi_rdata_reg[30] [10]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[11]_i_5 
       (.I0(Q[9]),
        .I1(\axi_rdata_reg[30] [9]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[11]_i_6 
       (.I0(Q[8]),
        .I1(\axi_rdata_reg[30] [8]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[15]_i_3 
       (.I0(Q[15]),
        .I1(\axi_rdata_reg[30] [15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[15]_i_4 
       (.I0(Q[14]),
        .I1(\axi_rdata_reg[30] [14]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[15]_i_5 
       (.I0(Q[13]),
        .I1(\axi_rdata_reg[30] [13]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[15]_i_6 
       (.I0(Q[12]),
        .I1(\axi_rdata_reg[30] [12]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[19]_i_3 
       (.I0(Q[19]),
        .I1(\axi_rdata_reg[30] [19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[19]_i_4 
       (.I0(Q[18]),
        .I1(\axi_rdata_reg[30] [18]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[19]_i_5 
       (.I0(Q[17]),
        .I1(\axi_rdata_reg[30] [17]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[19]_i_6 
       (.I0(Q[16]),
        .I1(\axi_rdata_reg[30] [16]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[23]_i_3 
       (.I0(Q[23]),
        .I1(\axi_rdata_reg[30] [23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[23]_i_4 
       (.I0(Q[22]),
        .I1(\axi_rdata_reg[30] [22]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[23]_i_5 
       (.I0(Q[21]),
        .I1(\axi_rdata_reg[30] [21]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[23]_i_6 
       (.I0(Q[20]),
        .I1(\axi_rdata_reg[30] [20]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[27]_i_3 
       (.I0(Q[27]),
        .I1(\axi_rdata_reg[30] [27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[27]_i_4 
       (.I0(Q[26]),
        .I1(\axi_rdata_reg[30] [26]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[27]_i_5 
       (.I0(Q[25]),
        .I1(\axi_rdata_reg[30] [25]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[27]_i_6 
       (.I0(Q[24]),
        .I1(\axi_rdata_reg[30] [24]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[31]_i_3 
       (.I0(Q[30]),
        .I1(\axi_rdata_reg[30] [30]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[31]_i_4 
       (.I0(Q[29]),
        .I1(\axi_rdata_reg[30] [29]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[31]_i_5 
       (.I0(Q[28]),
        .I1(\axi_rdata_reg[30] [28]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_3 
       (.I0(Q[3]),
        .I1(\axi_rdata_reg[30] [3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_4 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[30] [2]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_5 
       (.I0(Q[1]),
        .I1(\axi_rdata_reg[30] [1]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_6 
       (.I0(Q[0]),
        .I1(\axi_rdata_reg[30] [0]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[7]_i_3 
       (.I0(Q[7]),
        .I1(\axi_rdata_reg[30] [7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[7]_i_4 
       (.I0(Q[6]),
        .I1(\axi_rdata_reg[30] [6]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[7]_i_5 
       (.I0(Q[5]),
        .I1(\axi_rdata_reg[30] [5]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[7]_i_6 
       (.I0(Q[4]),
        .I1(\axi_rdata_reg[30] [4]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  CARRY4 \axi_rdata_reg[11]_i_2 
       (.CI(\axi_rdata_reg[7]_i_2_n_0 ),
        .CO({\axi_rdata_reg[11]_i_2_n_0 ,\axi_rdata_reg[11]_i_2_n_1 ,\axi_rdata_reg[11]_i_2_n_2 ,\axi_rdata_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(slv_reg2[11:8]),
        .S({\axi_rdata[11]_i_3_n_0 ,\axi_rdata[11]_i_4_n_0 ,\axi_rdata[11]_i_5_n_0 ,\axi_rdata[11]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[15]_i_2 
       (.CI(\axi_rdata_reg[11]_i_2_n_0 ),
        .CO({\axi_rdata_reg[15]_i_2_n_0 ,\axi_rdata_reg[15]_i_2_n_1 ,\axi_rdata_reg[15]_i_2_n_2 ,\axi_rdata_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(slv_reg2[15:12]),
        .S({\axi_rdata[15]_i_3_n_0 ,\axi_rdata[15]_i_4_n_0 ,\axi_rdata[15]_i_5_n_0 ,\axi_rdata[15]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[19]_i_2 
       (.CI(\axi_rdata_reg[15]_i_2_n_0 ),
        .CO({\axi_rdata_reg[19]_i_2_n_0 ,\axi_rdata_reg[19]_i_2_n_1 ,\axi_rdata_reg[19]_i_2_n_2 ,\axi_rdata_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(slv_reg2[19:16]),
        .S({\axi_rdata[19]_i_3_n_0 ,\axi_rdata[19]_i_4_n_0 ,\axi_rdata[19]_i_5_n_0 ,\axi_rdata[19]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[23]_i_2 
       (.CI(\axi_rdata_reg[19]_i_2_n_0 ),
        .CO({\axi_rdata_reg[23]_i_2_n_0 ,\axi_rdata_reg[23]_i_2_n_1 ,\axi_rdata_reg[23]_i_2_n_2 ,\axi_rdata_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(slv_reg2[23:20]),
        .S({\axi_rdata[23]_i_3_n_0 ,\axi_rdata[23]_i_4_n_0 ,\axi_rdata[23]_i_5_n_0 ,\axi_rdata[23]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[27]_i_2 
       (.CI(\axi_rdata_reg[23]_i_2_n_0 ),
        .CO({\axi_rdata_reg[27]_i_2_n_0 ,\axi_rdata_reg[27]_i_2_n_1 ,\axi_rdata_reg[27]_i_2_n_2 ,\axi_rdata_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(slv_reg2[27:24]),
        .S({\axi_rdata[27]_i_3_n_0 ,\axi_rdata[27]_i_4_n_0 ,\axi_rdata[27]_i_5_n_0 ,\axi_rdata[27]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[31]_i_2 
       (.CI(\axi_rdata_reg[27]_i_2_n_0 ),
        .CO({slv_reg2[31],\NLW_axi_rdata_reg[31]_i_2_CO_UNCONNECTED [2],\axi_rdata_reg[31]_i_2_n_2 ,\axi_rdata_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O({\NLW_axi_rdata_reg[31]_i_2_O_UNCONNECTED [3],slv_reg2[30:28]}),
        .S({1'b1,\axi_rdata[31]_i_3_n_0 ,\axi_rdata[31]_i_4_n_0 ,\axi_rdata[31]_i_5_n_0 }));
  CARRY4 \axi_rdata_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\axi_rdata_reg[3]_i_2_n_0 ,\axi_rdata_reg[3]_i_2_n_1 ,\axi_rdata_reg[3]_i_2_n_2 ,\axi_rdata_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(slv_reg2[3:0]),
        .S({\axi_rdata[3]_i_3_n_0 ,\axi_rdata[3]_i_4_n_0 ,\axi_rdata[3]_i_5_n_0 ,\axi_rdata[3]_i_6_n_0 }));
  CARRY4 \axi_rdata_reg[7]_i_2 
       (.CI(\axi_rdata_reg[3]_i_2_n_0 ),
        .CO({\axi_rdata_reg[7]_i_2_n_0 ,\axi_rdata_reg[7]_i_2_n_1 ,\axi_rdata_reg[7]_i_2_n_2 ,\axi_rdata_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(slv_reg2[7:4]),
        .S({\axi_rdata[7]_i_3_n_0 ,\axi_rdata[7]_i_4_n_0 ,\axi_rdata[7]_i_5_n_0 ,\axi_rdata[7]_i_6_n_0 }));
  CARRY4 count_clk00_carry
       (.CI(1'b0),
        .CO({count_clk00_carry_n_0,count_clk00_carry_n_1,count_clk00_carry_n_2,count_clk00_carry_n_3}),
        .CYINIT(\count_clk0_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[4:1]),
        .S({\count_clk0_reg_n_0_[4] ,\count_clk0_reg_n_0_[3] ,\count_clk0_reg_n_0_[2] ,\count_clk0_reg_n_0_[1] }));
  CARRY4 count_clk00_carry__0
       (.CI(count_clk00_carry_n_0),
        .CO({count_clk00_carry__0_n_0,count_clk00_carry__0_n_1,count_clk00_carry__0_n_2,count_clk00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S({\count_clk0_reg_n_0_[8] ,\count_clk0_reg_n_0_[7] ,\count_clk0_reg_n_0_[6] ,\count_clk0_reg_n_0_[5] }));
  CARRY4 count_clk00_carry__1
       (.CI(count_clk00_carry__0_n_0),
        .CO({count_clk00_carry__1_n_0,count_clk00_carry__1_n_1,count_clk00_carry__1_n_2,count_clk00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S({\count_clk0_reg_n_0_[12] ,\count_clk0_reg_n_0_[11] ,\count_clk0_reg_n_0_[10] ,\count_clk0_reg_n_0_[9] }));
  CARRY4 count_clk00_carry__2
       (.CI(count_clk00_carry__1_n_0),
        .CO({count_clk00_carry__2_n_0,count_clk00_carry__2_n_1,count_clk00_carry__2_n_2,count_clk00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S({\count_clk0_reg_n_0_[16] ,\count_clk0_reg_n_0_[15] ,\count_clk0_reg_n_0_[14] ,\count_clk0_reg_n_0_[13] }));
  CARRY4 count_clk00_carry__3
       (.CI(count_clk00_carry__2_n_0),
        .CO({count_clk00_carry__3_n_0,count_clk00_carry__3_n_1,count_clk00_carry__3_n_2,count_clk00_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S({\count_clk0_reg_n_0_[20] ,\count_clk0_reg_n_0_[19] ,\count_clk0_reg_n_0_[18] ,\count_clk0_reg_n_0_[17] }));
  CARRY4 count_clk00_carry__4
       (.CI(count_clk00_carry__3_n_0),
        .CO({count_clk00_carry__4_n_0,count_clk00_carry__4_n_1,count_clk00_carry__4_n_2,count_clk00_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:21]),
        .S({\count_clk0_reg_n_0_[24] ,\count_clk0_reg_n_0_[23] ,\count_clk0_reg_n_0_[22] ,\count_clk0_reg_n_0_[21] }));
  CARRY4 count_clk00_carry__5
       (.CI(count_clk00_carry__4_n_0),
        .CO({count_clk00_carry__5_n_0,count_clk00_carry__5_n_1,count_clk00_carry__5_n_2,count_clk00_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[28:25]),
        .S({\count_clk0_reg_n_0_[28] ,\count_clk0_reg_n_0_[27] ,\count_clk0_reg_n_0_[26] ,\count_clk0_reg_n_0_[25] }));
  CARRY4 count_clk00_carry__6
       (.CI(count_clk00_carry__5_n_0),
        .CO({NLW_count_clk00_carry__6_CO_UNCONNECTED[3:1],count_clk00_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count_clk00_carry__6_O_UNCONNECTED[3:2],in10[30:29]}),
        .S({1'b0,1'b0,\count_clk0_reg_n_0_[30] ,\count_clk0_reg_n_0_[29] }));
  LUT3 #(
    .INIT(8'h06)) 
    \count_clk0[0]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(\count_clk0_reg_n_0_[0] ),
        .O(count_clk0));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[10]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[10]),
        .O(\count_clk0[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[11]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[11]),
        .O(\count_clk0[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[12]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[12]),
        .O(\count_clk0[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[13]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[13]),
        .O(\count_clk0[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[14]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[14]),
        .O(\count_clk0[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[15]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[15]),
        .O(\count_clk0[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[16]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[16]),
        .O(\count_clk0[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[17]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[17]),
        .O(\count_clk0[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[18]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[18]),
        .O(\count_clk0[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[19]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[19]),
        .O(\count_clk0[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[1]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[1]),
        .O(\count_clk0[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[20]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[20]),
        .O(\count_clk0[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[21]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[21]),
        .O(\count_clk0[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[22]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[22]),
        .O(\count_clk0[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[23]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[23]),
        .O(\count_clk0[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[24]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[24]),
        .O(\count_clk0[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[25]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[25]),
        .O(\count_clk0[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[26]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[26]),
        .O(\count_clk0[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[27]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[27]),
        .O(\count_clk0[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[28]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[28]),
        .O(\count_clk0[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[29]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[29]),
        .O(\count_clk0[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[2]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[2]),
        .O(\count_clk0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD1FFFFFFFF)) 
    \count_clk0[30]_i_1 
       (.I0(pwm_clean),
        .I1(ps[1]),
        .I2(\count_clk0[30]_i_3_n_0 ),
        .I3(\count_clk0[30]_i_4_n_0 ),
        .I4(\count_clk0[30]_i_5_n_0 ),
        .I5(ps[0]),
        .O(\count_clk0[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_10 
       (.I0(\count_clk0_reg_n_0_[8] ),
        .I1(\count_clk0_reg_n_0_[7] ),
        .I2(\count_clk0_reg_n_0_[10] ),
        .I3(\count_clk0_reg_n_0_[9] ),
        .O(\count_clk0[30]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[30]_i_2 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[30]),
        .O(\count_clk0[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_clk0[30]_i_3 
       (.I0(\count_clk0_reg_n_0_[17] ),
        .I1(\count_clk0_reg_n_0_[18] ),
        .I2(\count_clk0_reg_n_0_[15] ),
        .I3(\count_clk0_reg_n_0_[16] ),
        .I4(\count_clk0[30]_i_6_n_0 ),
        .O(\count_clk0[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_clk0[30]_i_4 
       (.I0(\count_clk0_reg_n_0_[25] ),
        .I1(\count_clk0_reg_n_0_[26] ),
        .I2(\count_clk0_reg_n_0_[23] ),
        .I3(\count_clk0_reg_n_0_[24] ),
        .I4(\count_clk0[30]_i_7_n_0 ),
        .O(\count_clk0[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count_clk0[30]_i_5 
       (.I0(\count_clk0[30]_i_8_n_0 ),
        .I1(\count_clk0_reg_n_0_[0] ),
        .I2(\count_clk0_reg_n_0_[2] ),
        .I3(\count_clk0_reg_n_0_[1] ),
        .I4(\count_clk0[30]_i_9_n_0 ),
        .I5(\count_clk0[30]_i_10_n_0 ),
        .O(\count_clk0[30]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_6 
       (.I0(\count_clk0_reg_n_0_[20] ),
        .I1(\count_clk0_reg_n_0_[19] ),
        .I2(\count_clk0_reg_n_0_[22] ),
        .I3(\count_clk0_reg_n_0_[21] ),
        .O(\count_clk0[30]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_7 
       (.I0(\count_clk0_reg_n_0_[28] ),
        .I1(\count_clk0_reg_n_0_[27] ),
        .I2(\count_clk0_reg_n_0_[30] ),
        .I3(\count_clk0_reg_n_0_[29] ),
        .O(\count_clk0[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_8 
       (.I0(\count_clk0_reg_n_0_[4] ),
        .I1(\count_clk0_reg_n_0_[3] ),
        .I2(\count_clk0_reg_n_0_[6] ),
        .I3(\count_clk0_reg_n_0_[5] ),
        .O(\count_clk0[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk0[30]_i_9 
       (.I0(\count_clk0_reg_n_0_[12] ),
        .I1(\count_clk0_reg_n_0_[11] ),
        .I2(\count_clk0_reg_n_0_[14] ),
        .I3(\count_clk0_reg_n_0_[13] ),
        .O(\count_clk0[30]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[3]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[3]),
        .O(\count_clk0[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[4]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[4]),
        .O(\count_clk0[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[5]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[5]),
        .O(\count_clk0[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[6]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[6]),
        .O(\count_clk0[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[7]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[7]),
        .O(\count_clk0[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[8]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[8]),
        .O(\count_clk0[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \count_clk0[9]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(in10[9]),
        .O(\count_clk0[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(count_clk0),
        .Q(\count_clk0_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[10]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[11]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[12]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[13]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[14]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[15]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[16]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[17]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[18]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[19]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[1]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[20]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[21]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[22]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[23]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[24]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[25]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[26]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[27]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[28]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[29]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[2]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[30]_i_2_n_0 ),
        .Q(\count_clk0_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[3]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[4]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[5]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[6]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[7]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[8]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\count_clk0[30]_i_1_n_0 ),
        .D(\count_clk0[9]_i_1_n_0 ),
        .Q(\count_clk0_reg_n_0_[9] ),
        .R(SR));
  CARRY4 count_clk10_carry
       (.CI(1'b0),
        .CO({count_clk10_carry_n_0,count_clk10_carry_n_1,count_clk10_carry_n_2,count_clk10_carry_n_3}),
        .CYINIT(\count_clk1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[4:1]),
        .S({\count_clk1_reg_n_0_[4] ,\count_clk1_reg_n_0_[3] ,\count_clk1_reg_n_0_[2] ,\count_clk1_reg_n_0_[1] }));
  CARRY4 count_clk10_carry__0
       (.CI(count_clk10_carry_n_0),
        .CO({count_clk10_carry__0_n_0,count_clk10_carry__0_n_1,count_clk10_carry__0_n_2,count_clk10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S({\count_clk1_reg_n_0_[8] ,\count_clk1_reg_n_0_[7] ,\count_clk1_reg_n_0_[6] ,\count_clk1_reg_n_0_[5] }));
  CARRY4 count_clk10_carry__1
       (.CI(count_clk10_carry__0_n_0),
        .CO({count_clk10_carry__1_n_0,count_clk10_carry__1_n_1,count_clk10_carry__1_n_2,count_clk10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S({\count_clk1_reg_n_0_[12] ,\count_clk1_reg_n_0_[11] ,\count_clk1_reg_n_0_[10] ,\count_clk1_reg_n_0_[9] }));
  CARRY4 count_clk10_carry__2
       (.CI(count_clk10_carry__1_n_0),
        .CO({count_clk10_carry__2_n_0,count_clk10_carry__2_n_1,count_clk10_carry__2_n_2,count_clk10_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[16:13]),
        .S({\count_clk1_reg_n_0_[16] ,\count_clk1_reg_n_0_[15] ,\count_clk1_reg_n_0_[14] ,\count_clk1_reg_n_0_[13] }));
  CARRY4 count_clk10_carry__3
       (.CI(count_clk10_carry__2_n_0),
        .CO({count_clk10_carry__3_n_0,count_clk10_carry__3_n_1,count_clk10_carry__3_n_2,count_clk10_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[20:17]),
        .S({\count_clk1_reg_n_0_[20] ,\count_clk1_reg_n_0_[19] ,\count_clk1_reg_n_0_[18] ,\count_clk1_reg_n_0_[17] }));
  CARRY4 count_clk10_carry__4
       (.CI(count_clk10_carry__3_n_0),
        .CO({count_clk10_carry__4_n_0,count_clk10_carry__4_n_1,count_clk10_carry__4_n_2,count_clk10_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[24:21]),
        .S({\count_clk1_reg_n_0_[24] ,\count_clk1_reg_n_0_[23] ,\count_clk1_reg_n_0_[22] ,\count_clk1_reg_n_0_[21] }));
  CARRY4 count_clk10_carry__5
       (.CI(count_clk10_carry__4_n_0),
        .CO({count_clk10_carry__5_n_0,count_clk10_carry__5_n_1,count_clk10_carry__5_n_2,count_clk10_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[28:25]),
        .S({\count_clk1_reg_n_0_[28] ,\count_clk1_reg_n_0_[27] ,\count_clk1_reg_n_0_[26] ,\count_clk1_reg_n_0_[25] }));
  CARRY4 count_clk10_carry__6
       (.CI(count_clk10_carry__5_n_0),
        .CO({NLW_count_clk10_carry__6_CO_UNCONNECTED[3:1],count_clk10_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count_clk10_carry__6_O_UNCONNECTED[3:2],in8[30:29]}),
        .S({1'b0,1'b0,\count_clk1_reg_n_0_[30] ,\count_clk1_reg_n_0_[29] }));
  LUT2 #(
    .INIT(4'h2)) 
    \count_clk1[0]_i_1 
       (.I0(ps[0]),
        .I1(\count_clk1_reg_n_0_[0] ),
        .O(count_clk1));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[10]_i_1 
       (.I0(ps[0]),
        .I1(in8[10]),
        .O(\count_clk1[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[11]_i_1 
       (.I0(ps[0]),
        .I1(in8[11]),
        .O(\count_clk1[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[12]_i_1 
       (.I0(ps[0]),
        .I1(in8[12]),
        .O(\count_clk1[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[13]_i_1 
       (.I0(ps[0]),
        .I1(in8[13]),
        .O(\count_clk1[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[14]_i_1 
       (.I0(ps[0]),
        .I1(in8[14]),
        .O(\count_clk1[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[15]_i_1 
       (.I0(ps[0]),
        .I1(in8[15]),
        .O(\count_clk1[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[16]_i_1 
       (.I0(ps[0]),
        .I1(in8[16]),
        .O(\count_clk1[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[17]_i_1 
       (.I0(ps[0]),
        .I1(in8[17]),
        .O(\count_clk1[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[18]_i_1 
       (.I0(ps[0]),
        .I1(in8[18]),
        .O(\count_clk1[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[19]_i_1 
       (.I0(ps[0]),
        .I1(in8[19]),
        .O(\count_clk1[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[1]_i_1 
       (.I0(ps[0]),
        .I1(in8[1]),
        .O(\count_clk1[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[20]_i_1 
       (.I0(ps[0]),
        .I1(in8[20]),
        .O(\count_clk1[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[21]_i_1 
       (.I0(ps[0]),
        .I1(in8[21]),
        .O(\count_clk1[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[22]_i_1 
       (.I0(ps[0]),
        .I1(in8[22]),
        .O(\count_clk1[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[23]_i_1 
       (.I0(ps[0]),
        .I1(in8[23]),
        .O(\count_clk1[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[24]_i_1 
       (.I0(ps[0]),
        .I1(in8[24]),
        .O(\count_clk1[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[25]_i_1 
       (.I0(ps[0]),
        .I1(in8[25]),
        .O(\count_clk1[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[26]_i_1 
       (.I0(ps[0]),
        .I1(in8[26]),
        .O(\count_clk1[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[27]_i_1 
       (.I0(ps[0]),
        .I1(in8[27]),
        .O(\count_clk1[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[28]_i_1 
       (.I0(ps[0]),
        .I1(in8[28]),
        .O(\count_clk1[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[29]_i_1 
       (.I0(ps[0]),
        .I1(in8[29]),
        .O(\count_clk1[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[2]_i_1 
       (.I0(ps[0]),
        .I1(in8[2]),
        .O(\count_clk1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAFFFCFFFF)) 
    \count_clk1[30]_i_1 
       (.I0(pwm_clean),
        .I1(\count_clk1[30]_i_3_n_0 ),
        .I2(\count_clk1[30]_i_4_n_0 ),
        .I3(\count_clk1[30]_i_5_n_0 ),
        .I4(ps[1]),
        .I5(ps[0]),
        .O(\count_clk1[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_10 
       (.I0(\count_clk1_reg_n_0_[8] ),
        .I1(\count_clk1_reg_n_0_[7] ),
        .I2(\count_clk1_reg_n_0_[10] ),
        .I3(\count_clk1_reg_n_0_[9] ),
        .O(\count_clk1[30]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[30]_i_2 
       (.I0(ps[0]),
        .I1(in8[30]),
        .O(\count_clk1[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_clk1[30]_i_3 
       (.I0(\count_clk1_reg_n_0_[17] ),
        .I1(\count_clk1_reg_n_0_[18] ),
        .I2(\count_clk1_reg_n_0_[15] ),
        .I3(\count_clk1_reg_n_0_[16] ),
        .I4(\count_clk1[30]_i_6_n_0 ),
        .O(\count_clk1[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count_clk1[30]_i_4 
       (.I0(\count_clk1_reg_n_0_[25] ),
        .I1(\count_clk1_reg_n_0_[26] ),
        .I2(\count_clk1_reg_n_0_[23] ),
        .I3(\count_clk1_reg_n_0_[24] ),
        .I4(\count_clk1[30]_i_7_n_0 ),
        .O(\count_clk1[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count_clk1[30]_i_5 
       (.I0(\count_clk1[30]_i_8_n_0 ),
        .I1(\count_clk1_reg_n_0_[0] ),
        .I2(\count_clk1_reg_n_0_[2] ),
        .I3(\count_clk1_reg_n_0_[1] ),
        .I4(\count_clk1[30]_i_9_n_0 ),
        .I5(\count_clk1[30]_i_10_n_0 ),
        .O(\count_clk1[30]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_6 
       (.I0(\count_clk1_reg_n_0_[20] ),
        .I1(\count_clk1_reg_n_0_[19] ),
        .I2(\count_clk1_reg_n_0_[22] ),
        .I3(\count_clk1_reg_n_0_[21] ),
        .O(\count_clk1[30]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_7 
       (.I0(\count_clk1_reg_n_0_[28] ),
        .I1(\count_clk1_reg_n_0_[27] ),
        .I2(\count_clk1_reg_n_0_[30] ),
        .I3(\count_clk1_reg_n_0_[29] ),
        .O(\count_clk1[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_8 
       (.I0(\count_clk1_reg_n_0_[4] ),
        .I1(\count_clk1_reg_n_0_[3] ),
        .I2(\count_clk1_reg_n_0_[6] ),
        .I3(\count_clk1_reg_n_0_[5] ),
        .O(\count_clk1[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_clk1[30]_i_9 
       (.I0(\count_clk1_reg_n_0_[12] ),
        .I1(\count_clk1_reg_n_0_[11] ),
        .I2(\count_clk1_reg_n_0_[14] ),
        .I3(\count_clk1_reg_n_0_[13] ),
        .O(\count_clk1[30]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[3]_i_1 
       (.I0(ps[0]),
        .I1(in8[3]),
        .O(\count_clk1[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[4]_i_1 
       (.I0(ps[0]),
        .I1(in8[4]),
        .O(\count_clk1[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[5]_i_1 
       (.I0(ps[0]),
        .I1(in8[5]),
        .O(\count_clk1[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[6]_i_1 
       (.I0(ps[0]),
        .I1(in8[6]),
        .O(\count_clk1[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[7]_i_1 
       (.I0(ps[0]),
        .I1(in8[7]),
        .O(\count_clk1[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[8]_i_1 
       (.I0(ps[0]),
        .I1(in8[8]),
        .O(\count_clk1[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count_clk1[9]_i_1 
       (.I0(ps[0]),
        .I1(in8[9]),
        .O(\count_clk1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(count_clk1),
        .Q(\count_clk1_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[10]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[11]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[12]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[13]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[14]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[15]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[16]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[17]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[18]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[19]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[1]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[20]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[21]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[22]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[23]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[24]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[25]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[26]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[27]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[28]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[29]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[2]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[30]_i_2_n_0 ),
        .Q(\count_clk1_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[3]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[4]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[5]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[6]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[7]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[8]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\count_clk1[30]_i_1_n_0 ),
        .D(\count_clk1[9]_i_1_n_0 ),
        .Q(\count_clk1_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h00FE)) 
    \pw_high[30]_i_1 
       (.I0(\count_clk1[30]_i_3_n_0 ),
        .I1(\count_clk1[30]_i_4_n_0 ),
        .I2(\count_clk1[30]_i_5_n_0 ),
        .I3(ps[0]),
        .O(\pw_high[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[0] ),
        .Q(\axi_rdata_reg[30] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[10] ),
        .Q(\axi_rdata_reg[30] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[11] ),
        .Q(\axi_rdata_reg[30] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[12] ),
        .Q(\axi_rdata_reg[30] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[13] ),
        .Q(\axi_rdata_reg[30] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[14] ),
        .Q(\axi_rdata_reg[30] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[15] ),
        .Q(\axi_rdata_reg[30] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[16] ),
        .Q(\axi_rdata_reg[30] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[17] ),
        .Q(\axi_rdata_reg[30] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[18] ),
        .Q(\axi_rdata_reg[30] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[19] ),
        .Q(\axi_rdata_reg[30] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[1] ),
        .Q(\axi_rdata_reg[30] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[20] ),
        .Q(\axi_rdata_reg[30] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[21] ),
        .Q(\axi_rdata_reg[30] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[22] ),
        .Q(\axi_rdata_reg[30] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[23] ),
        .Q(\axi_rdata_reg[30] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[24] ),
        .Q(\axi_rdata_reg[30] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[25] ),
        .Q(\axi_rdata_reg[30] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[26] ),
        .Q(\axi_rdata_reg[30] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[27] ),
        .Q(\axi_rdata_reg[30] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[28] ),
        .Q(\axi_rdata_reg[30] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[29] ),
        .Q(\axi_rdata_reg[30] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[2] ),
        .Q(\axi_rdata_reg[30] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[30] ),
        .Q(\axi_rdata_reg[30] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[3] ),
        .Q(\axi_rdata_reg[30] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[4] ),
        .Q(\axi_rdata_reg[30] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[5] ),
        .Q(\axi_rdata_reg[30] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[6] ),
        .Q(\axi_rdata_reg[30] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[7] ),
        .Q(\axi_rdata_reg[30] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[8] ),
        .Q(\axi_rdata_reg[30] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_high_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\pw_high[30]_i_1_n_0 ),
        .D(\count_clk1_reg_n_0_[9] ),
        .Q(\axi_rdata_reg[30] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88888880)) 
    \pw_low[30]_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(\count_clk0[30]_i_5_n_0 ),
        .I3(\count_clk0[30]_i_4_n_0 ),
        .I4(\count_clk0[30]_i_3_n_0 ),
        .O(\pw_low[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[10] ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[11] ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[12] ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[13] ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[14] ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[15] ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[16] ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[17] ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[18] ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[19] ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[20] ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[21] ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[22] ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[23] ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[24] ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[25] ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[26] ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[27] ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[28] ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[29] ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[30] ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[8] ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pw_low_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\pw_low[30]_i_1_n_0 ),
        .D(\count_clk0_reg_n_0_[9] ),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    pwm_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pwm_clean),
        .Q(pwm_prev),
        .R(1'b0));
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
