// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  9 16:04:38 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mig_7series_0_0_stub.v
// Design      : design_1_mig_7series_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ddr3_dq, ddr3_dqs_n, ddr3_dqs_p, ddr3_addr, 
  ddr3_ba, ddr3_ras_n, ddr3_cas_n, ddr3_we_n, ddr3_reset_n, ddr3_ck_p, ddr3_ck_n, ddr3_cke, 
  ddr3_cs_n, ddr3_dm, ddr3_odt, sys_clk_i, clk_ref_i, ui_clk, ui_clk_sync_rst, ui_addn_clk_0, 
  ui_addn_clk_1, ui_addn_clk_2, ui_addn_clk_3, ui_addn_clk_4, mmcm_locked, aresetn, 
  app_sr_active, app_ref_ack, app_zq_ack, s_axi_awid, s_axi_awaddr, s_axi_awlen, s_axi_awsize, 
  s_axi_awburst, s_axi_awlock, s_axi_awcache, s_axi_awprot, s_axi_awqos, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, s_axi_wvalid, s_axi_wready, 
  s_axi_bready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_arid, s_axi_araddr, s_axi_arlen, 
  s_axi_arsize, s_axi_arburst, s_axi_arlock, s_axi_arcache, s_axi_arprot, s_axi_arqos, 
  s_axi_arvalid, s_axi_arready, s_axi_rready, s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, 
  s_axi_rvalid, init_calib_complete, device_temp, sys_rst)
/* synthesis syn_black_box black_box_pad_pin="ddr3_dq[15:0],ddr3_dqs_n[1:0],ddr3_dqs_p[1:0],ddr3_addr[13:0],ddr3_ba[2:0],ddr3_ras_n,ddr3_cas_n,ddr3_we_n,ddr3_reset_n,ddr3_ck_p[0:0],ddr3_ck_n[0:0],ddr3_cke[0:0],ddr3_cs_n[0:0],ddr3_dm[1:0],ddr3_odt[0:0],sys_clk_i,clk_ref_i,ui_clk,ui_clk_sync_rst,ui_addn_clk_0,ui_addn_clk_1,ui_addn_clk_2,ui_addn_clk_3,ui_addn_clk_4,mmcm_locked,aresetn,app_sr_active,app_ref_ack,app_zq_ack,s_axi_awid[3:0],s_axi_awaddr[27:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock[0:0],s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awqos[3:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[127:0],s_axi_wstrb[15:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bready,s_axi_bid[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_arid[3:0],s_axi_araddr[27:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock[0:0],s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arqos[3:0],s_axi_arvalid,s_axi_arready,s_axi_rready,s_axi_rid[3:0],s_axi_rdata[127:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,init_calib_complete,device_temp[11:0],sys_rst" */;
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_n;
  inout [1:0]ddr3_dqs_p;
  output [13:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_ras_n;
  output ddr3_cas_n;
  output ddr3_we_n;
  output ddr3_reset_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [1:0]ddr3_dm;
  output [0:0]ddr3_odt;
  input sys_clk_i;
  input clk_ref_i;
  output ui_clk;
  output ui_clk_sync_rst;
  output ui_addn_clk_0;
  output ui_addn_clk_1;
  output ui_addn_clk_2;
  output ui_addn_clk_3;
  output ui_addn_clk_4;
  output mmcm_locked;
  input aresetn;
  output app_sr_active;
  output app_ref_ack;
  output app_zq_ack;
  input [3:0]s_axi_awid;
  input [27:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  input s_axi_bready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input [3:0]s_axi_arid;
  input [27:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  input s_axi_rready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  output init_calib_complete;
  output [11:0]device_temp;
  input sys_rst;
endmodule
