// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  9 21:33:19 2018
// Host        : DESKTOP-HQKVQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/hdl_projects/s7_tdm114/s7_tdm114.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0_sim_netlist.v
// Design      : design_1_axis_data_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis_data_fifo_0_0,axis_data_fifo_v1_1_18_axis_data_fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_data_fifo_v1_1_18_axis_data_fifo,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_axis_data_fifo_0_0
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET s_axis_aresetn, ASSOCIATED_CLKEN s_axis_aclken" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [23:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *) input [2:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [2:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *) input [0:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDEST" *) input [0:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *) input [0:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [23:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [2:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [2:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [0:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDEST" *) output [0:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef" *) output [0:0]m_axis_tuser;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire [31:0]axis_data_count;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  (* C_ACLKEN_CONV_MODE = "0" *) 
  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000011111111" *) 
  (* C_AXIS_TDATA_WIDTH = "24" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FIFO_DEPTH = "16384" *) 
  (* C_FIFO_MODE = "1" *) 
  (* C_IS_ACLK_ASYNC = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_RD_PNTR_WIDTH_RACH = "4" *) 
  (* C_RD_PNTR_WIDTH_RDCH = "10" *) 
  (* C_RD_PNTR_WIDTH_WACH = "4" *) 
  (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
  (* C_RD_PNTR_WIDTH_WRCH = "4" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "14" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
  (* P_APPLICATION_TYPE_AXIS = "0" *) 
  (* P_AXIS_PAYLOAD_WIDTH = "34" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_FIFO_COUNT_WIDTH = "15" *) 
  (* P_FIFO_TYPE = "1" *) 
  (* P_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* P_MSGON_VAL = "1" *) 
  (* P_TDATA_EXISTS = "1" *) 
  (* P_TDEST_EXISTS = "1" *) 
  (* P_TID_EXISTS = "1" *) 
  (* P_TKEEP_EXISTS = "1" *) 
  (* P_TLAST_EXISTS = "1" *) 
  (* P_TREADY_EXISTS = "1" *) 
  (* P_TSTRB_EXISTS = "1" *) 
  (* P_TUSER_EXISTS = "1" *) 
  (* P_WR_PNTR_WIDTH = "14" *) 
  design_1_axis_data_fifo_0_0_axis_data_fifo_v1_1_18_axis_data_fifo inst
       (.axis_data_count(axis_data_count),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(1'b0),
        .m_axis_aclken(1'b1),
        .m_axis_aresetn(1'b0),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_ACLKEN_CONV_MODE = "0" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000011111111" *) (* C_AXIS_TDATA_WIDTH = "24" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_DATA_COUNT_WIDTH = "10" *) 
(* C_DIN_WIDTH = "18" *) (* C_DOUT_WIDTH = "18" *) (* C_FAMILY = "spartan7" *) 
(* C_FIFO_DEPTH = "16384" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "0" *) 
(* C_RD_DATA_COUNT_WIDTH = "10" *) (* C_RD_PNTR_WIDTH = "10" *) (* C_RD_PNTR_WIDTH_RACH = "4" *) 
(* C_RD_PNTR_WIDTH_RDCH = "10" *) (* C_RD_PNTR_WIDTH_WACH = "4" *) (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
(* C_RD_PNTR_WIDTH_WRCH = "4" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH = "10" *) (* C_WR_PNTR_WIDTH_AXIS = "14" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) 
(* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WRCH = "4" *) (* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) 
(* G_INDX_SS_TREADY = "0" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) 
(* G_MASK_SS_TDATA = "2" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) 
(* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) 
(* G_TASK_SEVERITY_INFO = "0" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
(* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* ORIG_REF_NAME = "axis_data_fifo_v1_1_18_axis_data_fifo" *) (* P_APPLICATION_TYPE_AXIS = "0" *) 
(* P_AXIS_PAYLOAD_WIDTH = "34" *) (* P_COMMON_CLOCK = "1" *) (* P_FIFO_COUNT_WIDTH = "15" *) 
(* P_FIFO_TYPE = "1" *) (* P_IMPLEMENTATION_TYPE_AXIS = "1" *) (* P_MSGON_VAL = "1" *) 
(* P_TDATA_EXISTS = "1" *) (* P_TDEST_EXISTS = "1" *) (* P_TID_EXISTS = "1" *) 
(* P_TKEEP_EXISTS = "1" *) (* P_TLAST_EXISTS = "1" *) (* P_TREADY_EXISTS = "1" *) 
(* P_TSTRB_EXISTS = "1" *) (* P_TUSER_EXISTS = "1" *) (* P_WR_PNTR_WIDTH = "14" *) 
module design_1_axis_data_fifo_0_0_axis_data_fifo_v1_1_18_axis_data_fifo
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [14:0]\^axis_rd_data_count ;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  (* RTL_KEEP = "true" *) wire s_and_m_aresetn_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED ;
  wire [14:0]\NLW_gen_fifo_generator.fifo_generator_inst_axis_rd_data_count_UNCONNECTED ;
  wire [14:0]\NLW_gen_fifo_generator.fifo_generator_inst_axis_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED ;
  wire [17:0]\NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED ;
  wire [31:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED ;
  wire [31:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED ;

  assign axis_data_count[31] = \<const0> ;
  assign axis_data_count[30] = \<const0> ;
  assign axis_data_count[29] = \<const0> ;
  assign axis_data_count[28] = \<const0> ;
  assign axis_data_count[27] = \<const0> ;
  assign axis_data_count[26] = \<const0> ;
  assign axis_data_count[25] = \<const0> ;
  assign axis_data_count[24] = \<const0> ;
  assign axis_data_count[23] = \<const0> ;
  assign axis_data_count[22] = \<const0> ;
  assign axis_data_count[21] = \<const0> ;
  assign axis_data_count[20] = \<const0> ;
  assign axis_data_count[19] = \<const0> ;
  assign axis_data_count[18] = \<const0> ;
  assign axis_data_count[17] = \<const0> ;
  assign axis_data_count[16] = \<const0> ;
  assign axis_data_count[15] = \<const0> ;
  assign axis_data_count[14:0] = \^axis_rd_data_count [14:0];
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14:0] = \^axis_rd_data_count [14:0];
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14:0] = \^axis_rd_data_count [14:0];
  assign s_and_m_aresetn_i = s_axis_aresetn;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "24" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "3" *) 
  (* C_AXIS_TSTRB_WIDTH = "3" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "34" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "1" *) 
  (* C_HAS_AXIS_TID = "1" *) 
  (* C_HAS_AXIS_TKEEP = "1" *) 
  (* C_HAS_AXIS_TLAST = "1" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "1" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "1" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "16382" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "16383" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "16384" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "14" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  design_1_axis_data_fifo_0_0_fifo_generator_v13_2_2 \gen_fifo_generator.fifo_generator_inst 
       (.almost_empty(\NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED ),
        .axi_ar_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED [4:0]),
        .axi_ar_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED ),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED ),
        .axi_ar_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED ),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED ),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED [4:0]),
        .axi_ar_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED ),
        .axi_ar_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED ),
        .axi_ar_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED [4:0]),
        .axi_aw_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED [4:0]),
        .axi_aw_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED ),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED ),
        .axi_aw_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED ),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED ),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED [4:0]),
        .axi_aw_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED ),
        .axi_aw_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED ),
        .axi_aw_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED [4:0]),
        .axi_b_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED [4:0]),
        .axi_b_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED ),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED ),
        .axi_b_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED ),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED ),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED [4:0]),
        .axi_b_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED ),
        .axi_b_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED ),
        .axi_b_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED [4:0]),
        .axi_r_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED [10:0]),
        .axi_r_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED ),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED ),
        .axi_r_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED ),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED ),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED [10:0]),
        .axi_r_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED ),
        .axi_r_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED ),
        .axi_r_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED [10:0]),
        .axi_w_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED [10:0]),
        .axi_w_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED ),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED ),
        .axi_w_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED ),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED ),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED [10:0]),
        .axi_w_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED ),
        .axi_w_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED ),
        .axi_w_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED [10:0]),
        .axis_data_count(\^axis_rd_data_count ),
        .axis_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED ),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED ),
        .axis_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED ),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED ),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axis_rd_data_count_UNCONNECTED [14:0]),
        .axis_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED ),
        .axis_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED ),
        .axis_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axis_wr_data_count_UNCONNECTED [14:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(\NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED [9:0]),
        .dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED ),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(\NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED [17:0]),
        .empty(\NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED ),
        .full(\NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED [31:0]),
        .m_axi_arburst(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED [1:0]),
        .m_axi_arcache(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED [3:0]),
        .m_axi_arid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED [3:0]),
        .m_axi_arlen(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED [7:0]),
        .m_axi_arlock(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED [1:0]),
        .m_axi_arprot(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED [2:0]),
        .m_axi_arqos(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED [3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED [3:0]),
        .m_axi_arsize(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED [2:0]),
        .m_axi_aruser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED [0]),
        .m_axi_arvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED ),
        .m_axi_awaddr(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED [31:0]),
        .m_axi_awburst(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED [1:0]),
        .m_axi_awcache(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED [3:0]),
        .m_axi_awid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED [3:0]),
        .m_axi_awlen(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED [7:0]),
        .m_axi_awlock(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED [1:0]),
        .m_axi_awprot(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED [2:0]),
        .m_axi_awqos(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED [3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED [3:0]),
        .m_axi_awsize(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED [2:0]),
        .m_axi_awuser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED [0]),
        .m_axi_awvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED ),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED ),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED ),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED [63:0]),
        .m_axi_wid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED [3:0]),
        .m_axi_wlast(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED ),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED [7:0]),
        .m_axi_wuser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED [0]),
        .m_axi_wvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(\NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED ),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED ),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED [9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(\NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED ),
        .rst(1'b0),
        .s_aclk(s_axis_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(s_and_m_aresetn_i),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED ),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED ),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED [3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED [1:0]),
        .s_axi_buser(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED [0]),
        .s_axi_bvalid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED ),
        .s_axi_rdata(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED [63:0]),
        .s_axi_rid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED [3:0]),
        .s_axi_rlast(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED ),
        .s_axi_rready(1'b0),
        .s_axi_rresp(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED [1:0]),
        .s_axi_ruser(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED [0]),
        .s_axi_rvalid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED ),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED ),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(\NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED ),
        .valid(\NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED ),
        .wr_ack(\NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED ),
        .wr_clk(1'b0),
        .wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED [9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(\NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED ));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_axis_data_fifo_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_generic_cstr
   (D,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tlast,
    ram_full_fb_i_reg,
    DIADI,
    s_axis_tkeep,
    s_axis_tid,
    ENA_I,
    ENB_I_0,
    s_axis_tdata,
    s_axis_tstrb,
    ram_full_fb_i_reg_0,
    ENA_I_1,
    ENB_I_2,
    ENA_I_3,
    ENB_I_4,
    ENA_I_5,
    ENB_I_6,
    WEA,
    ram_full_fb_i_reg_1,
    out,
    s_axis_tvalid,
    ram_empty_fb_i_reg,
    p_8_out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] );
  output [33:0]D;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input s_axis_tlast;
  input [1:0]ram_full_fb_i_reg;
  input [1:0]DIADI;
  input [2:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input ENA_I;
  input ENB_I_0;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [0:0]ram_full_fb_i_reg_0;
  input ENA_I_1;
  input ENB_I_2;
  input ENA_I_3;
  input ENB_I_4;
  input ENA_I_5;
  input ENB_I_6;
  input [1:0]WEA;
  input [1:0]ram_full_fb_i_reg_1;
  input out;
  input s_axis_tvalid;
  input ram_empty_fb_i_reg;
  input p_8_out;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;

  wire [33:0]D;
  wire [1:0]DIADI;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_I_1;
  wire ENA_I_3;
  wire ENA_I_5;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_2;
  wire ENB_I_4;
  wire ENB_I_6;
  wire POR_A;
  wire [13:0]Q;
  wire [1:0]WEA;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire out;
  wire p_8_out;
  wire ram_empty_fb_i_reg;
  wire [1:0]ram_full_fb_i_reg;
  wire [0:0]ram_full_fb_i_reg_0;
  wire [1:0]ram_full_fb_i_reg_1;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire s_aclk;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [2:0]s_axis_tstrb;
  wire s_axis_tvalid;

  design_1_axis_data_fifo_0_0_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.D(D[33:7]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\ramloop[15].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 (\ramloop[13].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 (\ramloop[6].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 (\ramloop[7].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 (\ramloop[4].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 (\ramloop[5].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 (\ramloop[10].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 (\ramloop[11].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 (\ramloop[8].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 (\ramloop[9].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .DOBDO({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .DOPBDOP(\ramloop[14].ram.r_n_8 ),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] [13:12]),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ),
        .p_8_out(p_8_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .s_aclk(s_aclk));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.D(D[0]),
        .ENA_I(ENA_I_0),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg[1]),
        .s_aclk(s_aclk),
        .s_axis_tlast(s_axis_tlast));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.ENA_I_3(ENA_I_3),
        .ENB_I_4(ENB_I_4),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[23] ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[24] (\ramloop[10].ram.r_n_8 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg_1[1]),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[14:6]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.ENA_I_5(ENA_I_5),
        .ENB_I_6(ENB_I_6),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .WEA(WEA),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[23] ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[24] (\ramloop[11].ram.r_n_8 ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[14:6]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.ENA_I(ENA_I),
        .ENA_I_0(ENA_I_0),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_0(ENB_I_0),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[32] ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[33] (\ramloop[12].ram.r_n_8 ),
        .out(out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg_1[1]),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[23:15]),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.ENA_I_1(ENA_I_1),
        .ENB_I_2(ENB_I_2),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .WEA(WEA[0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[32] ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[33] (\ramloop[13].ram.r_n_8 ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[23:15]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.DOBDO({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .DOPBDOP(\ramloop[14].ram.r_n_8 ),
        .ENA_I_3(ENA_I_3),
        .ENB_I_4(ENB_I_4),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .ram_full_fb_i_reg(ram_full_fb_i_reg_1),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[23:15]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.ENA_I_5(ENA_I_5),
        .ENB_I_6(ENB_I_6),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .WEA(WEA[0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[32] ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[33] (\ramloop[15].ram.r_n_8 ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[23:15]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.D(D[2:1]),
        .DIADI(DIADI),
        .ENA_I(ENA_I_0),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.D(D[4:3]),
        .DIADI({s_axis_tkeep[0],s_axis_tid}),
        .ENA_I(ENA_I_0),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg[1]),
        .s_aclk(s_aclk));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.D(D[6:5]),
        .ENA_I(ENA_I_0),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg[0]),
        .s_aclk(s_aclk),
        .s_axis_tkeep(s_axis_tkeep[2:1]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.DIADI({s_axis_tdata[4:0],s_axis_tstrb}),
        .ENA_I(ENA_I),
        .ENB_I_0(ENB_I_0),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[14] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[15] (\ramloop[4].ram.r_n_8 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg[1]),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[5]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.DIADI({s_axis_tdata[4:0],s_axis_tstrb}),
        .ENA_I_1(ENA_I_1),
        .ENB_I_2(ENB_I_2),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[14] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[15] (\ramloop[5].ram.r_n_8 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg[0]),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[5]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DIADI({s_axis_tdata[4:0],s_axis_tstrb}),
        .ENA_I_3(ENA_I_3),
        .ENB_I_4(ENB_I_4),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[14] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[15] (\ramloop[6].ram.r_n_8 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg_0),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[5]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.DIADI({s_axis_tdata[4:0],s_axis_tstrb}),
        .ENA_I_5(ENA_I_5),
        .ENB_I_6(ENB_I_6),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .WEA(WEA[1]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[14] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[15] (\ramloop[7].ram.r_n_8 ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[5]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.ENA_I(ENA_I),
        .ENB_I_0(ENB_I_0),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[23] ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[24] (\ramloop[8].ram.r_n_8 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg_0),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[14:6]));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.ENA_I_1(ENA_I_1),
        .ENB_I_2(ENB_I_2),
        .POR_A(POR_A),
        .Q(Q[11:0]),
        .WEA(WEA[1]),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[13] [11:0]),
        .\goreg_bm.dout_i_reg[23] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\goreg_bm.dout_i_reg[24] (\ramloop[9].ram.r_n_8 ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata[14:6]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_mux__parameterized0
   (D,
    \gc0.count_d1_reg[13] ,
    ram_empty_fb_i_reg,
    p_8_out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ,
    s_aclk,
    DOPBDOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 );
  output [26:0]D;
  input [1:0]\gc0.count_d1_reg[13] ;
  input ram_empty_fb_i_reg;
  input p_8_out;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  input s_aclk;
  input [0:0]DOPBDOP;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]DOBDO;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ;

  wire [26:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ;
  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire [1:0]\gc0.count_d1_reg[13] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ;
  wire p_8_out;
  wire ram_empty_fb_i_reg;
  wire s_aclk;
  wire [1:0]sel_pipe;

  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[10]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [3]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[11]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [4]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[12]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [5]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[13]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [6]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[14]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [7]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[15]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[16]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [0]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[17]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [1]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [1]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[18]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [2]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [2]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[19]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [3]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [3]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[20]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [4]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [4]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[21]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [5]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [5]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[22]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [6]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [6]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[23]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [7]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [7]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[24]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[25]_i_1 
       (.I0(DOBDO[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [0]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[26]_i_1 
       (.I0(DOBDO[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [1]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [1]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[27]_i_1 
       (.I0(DOBDO[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [2]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [2]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[28]_i_1 
       (.I0(DOBDO[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [3]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [3]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[29]_i_1 
       (.I0(DOBDO[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [4]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [4]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[30]_i_1 
       (.I0(DOBDO[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [5]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [5]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[31]_i_1 
       (.I0(DOBDO[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [6]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [6]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[32]_i_1 
       (.I0(DOBDO[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [7]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [7]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[33]_i_2 
       (.I0(DOPBDOP),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[7]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[8]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [1]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \goreg_bm.dout_i[9]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [2]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(\gc0.count_d1_reg[13] [0]),
        .I1(ram_empty_fb_i_reg),
        .I2(p_8_out),
        .I3(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] [1]),
        .I4(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] [0]),
        .I5(sel_pipe[0]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(\gc0.count_d1_reg[13] [1]),
        .I1(ram_empty_fb_i_reg),
        .I2(p_8_out),
        .I3(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] [1]),
        .I4(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] [0]),
        .I5(sel_pipe[1]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ),
        .Q(sel_pipe[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tlast,
    ram_full_fb_i_reg);
  output [0:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input s_axis_tlast;
  input [0:0]ram_full_fb_i_reg;

  wire [0:0]D;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [13:0]Q;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire s_axis_tlast;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.D(D),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tlast(s_axis_tlast));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized0
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    Q,
    \gc0.count_d1_reg[13] ,
    DIADI,
    ram_full_fb_i_reg);
  output [1:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input [1:0]DIADI;
  input [1:0]ram_full_fb_i_reg;

  wire [1:0]D;
  wire [1:0]DIADI;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [13:0]Q;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [1:0]ram_full_fb_i_reg;
  wire s_aclk;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.D(D),
        .DIADI(DIADI),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized1
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    Q,
    \gc0.count_d1_reg[13] ,
    DIADI,
    ram_full_fb_i_reg);
  output [1:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input [1:0]DIADI;
  input [0:0]ram_full_fb_i_reg;

  wire [1:0]D;
  wire [1:0]DIADI;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [13:0]Q;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized1 \prim_noinit.ram 
       (.D(D),
        .DIADI(DIADI),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized10
   (\goreg_bm.dout_i_reg[23] ,
    \goreg_bm.dout_i_reg[24] ,
    s_aclk,
    ENA_I_5,
    ENB_I_6,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[23] ;
  output [0:0]\goreg_bm.dout_i_reg[24] ;
  input s_aclk;
  input ENA_I_5;
  input ENB_I_6;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [1:0]WEA;

  wire ENA_I_5;
  wire ENB_I_6;
  wire POR_A;
  wire [11:0]Q;
  wire [1:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[23] ;
  wire [0:0]\goreg_bm.dout_i_reg[24] ;
  wire s_aclk;
  wire [8:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized10 \prim_noinit.ram 
       (.ENA_I_5(ENA_I_5),
        .ENB_I_6(ENB_I_6),
        .POR_A(POR_A),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[23] (\goreg_bm.dout_i_reg[23] ),
        .\goreg_bm.dout_i_reg[24] (\goreg_bm.dout_i_reg[24] ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized11
   (\goreg_bm.dout_i_reg[32] ,
    \goreg_bm.dout_i_reg[33] ,
    POR_A,
    ENA_dly_D,
    ENA_I_0,
    s_aclk,
    ENA_I,
    ENB_I_0,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    ram_full_fb_i_reg,
    out,
    s_axis_tvalid);
  output [7:0]\goreg_bm.dout_i_reg[32] ;
  output [0:0]\goreg_bm.dout_i_reg[33] ;
  output POR_A;
  output ENA_dly_D;
  output ENA_I_0;
  input s_aclk;
  input ENA_I;
  input ENB_I_0;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;
  input out;
  input s_axis_tvalid;

  wire ENA_I;
  wire ENA_I_0;
  wire ENA_dly;
  wire ENA_dly_D;
  wire ENB_I_0;
  wire POR_A;
  wire [11:0]Q;
  wire \SAFETY_CKT_GEN.POR_A_i_1_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[32] ;
  wire [0:0]\goreg_bm.dout_i_reg[33] ;
  wire out;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire s_axis_tvalid;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENA_dly),
        .Q(ENA_dly_D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_A),
        .Q(ENA_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_A_i_1 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_A_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_A_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_A_i_1_n_0 ),
        .Q(POR_A),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo_generator.fifo_generator_inst /\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo_generator.fifo_generator_inst /\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized11 \prim_noinit.ram 
       (.ENA_I(ENA_I),
        .ENA_I_0(ENA_I_0),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_0(ENB_I_0),
        .Q(Q),
        .\SAFETY_CKT_GEN.POR_A_reg (POR_A),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[32] (\goreg_bm.dout_i_reg[32] ),
        .\goreg_bm.dout_i_reg[33] (\goreg_bm.dout_i_reg[33] ),
        .out(out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized12
   (\goreg_bm.dout_i_reg[32] ,
    \goreg_bm.dout_i_reg[33] ,
    s_aclk,
    ENA_I_1,
    ENB_I_2,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[32] ;
  output [0:0]\goreg_bm.dout_i_reg[33] ;
  input s_aclk;
  input ENA_I_1;
  input ENB_I_2;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]WEA;

  wire ENA_I_1;
  wire ENB_I_2;
  wire POR_A;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[32] ;
  wire [0:0]\goreg_bm.dout_i_reg[33] ;
  wire s_aclk;
  wire [8:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized12 \prim_noinit.ram 
       (.ENA_I_1(ENA_I_1),
        .ENB_I_2(ENB_I_2),
        .POR_A(POR_A),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[32] (\goreg_bm.dout_i_reg[32] ),
        .\goreg_bm.dout_i_reg[33] (\goreg_bm.dout_i_reg[33] ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized13
   (DOBDO,
    DOPBDOP,
    s_aclk,
    ENA_I_3,
    ENB_I_4,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]DOBDO;
  output [0:0]DOPBDOP;
  input s_aclk;
  input ENA_I_3;
  input ENB_I_4;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [1:0]ram_full_fb_i_reg;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire ENA_I_3;
  wire ENB_I_4;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [1:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [8:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized13 \prim_noinit.ram 
       (.DOBDO(DOBDO),
        .DOPBDOP(DOPBDOP),
        .ENA_I_3(ENA_I_3),
        .ENB_I_4(ENB_I_4),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized14
   (\goreg_bm.dout_i_reg[32] ,
    \goreg_bm.dout_i_reg[33] ,
    s_aclk,
    ENA_I_5,
    ENB_I_6,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[32] ;
  output [0:0]\goreg_bm.dout_i_reg[33] ;
  input s_aclk;
  input ENA_I_5;
  input ENB_I_6;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]WEA;

  wire ENA_I_5;
  wire ENB_I_6;
  wire POR_A;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[32] ;
  wire [0:0]\goreg_bm.dout_i_reg[33] ;
  wire s_aclk;
  wire [8:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized14 \prim_noinit.ram 
       (.ENA_I_5(ENA_I_5),
        .ENB_I_6(ENB_I_6),
        .POR_A(POR_A),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[32] (\goreg_bm.dout_i_reg[32] ),
        .\goreg_bm.dout_i_reg[33] (\goreg_bm.dout_i_reg[33] ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized2
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tkeep,
    ram_full_fb_i_reg);
  output [1:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input [1:0]s_axis_tkeep;
  input [0:0]ram_full_fb_i_reg;

  wire [1:0]D;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [13:0]Q;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [1:0]s_axis_tkeep;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized2 \prim_noinit.ram 
       (.D(D),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tkeep(s_axis_tkeep));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized3
   (\goreg_bm.dout_i_reg[14] ,
    \goreg_bm.dout_i_reg[15] ,
    s_aclk,
    ENA_I,
    ENB_I_0,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    DIADI,
    s_axis_tdata,
    ram_full_fb_i_reg,
    ram_full_fb_i_reg_0);
  output [7:0]\goreg_bm.dout_i_reg[14] ;
  output [0:0]\goreg_bm.dout_i_reg[15] ;
  input s_aclk;
  input ENA_I;
  input ENB_I_0;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [7:0]DIADI;
  input [0:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;
  input [0:0]ram_full_fb_i_reg_0;

  wire [7:0]DIADI;
  wire ENA_I;
  wire ENB_I_0;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[14] ;
  wire [0:0]\goreg_bm.dout_i_reg[15] ;
  wire [0:0]ram_full_fb_i_reg;
  wire [0:0]ram_full_fb_i_reg_0;
  wire s_aclk;
  wire [0:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized3 \prim_noinit.ram 
       (.DIADI(DIADI),
        .ENA_I(ENA_I),
        .ENB_I_0(ENB_I_0),
        .POR_A(POR_A),
        .Q(Q),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg_0}),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[14] (\goreg_bm.dout_i_reg[14] ),
        .\goreg_bm.dout_i_reg[15] (\goreg_bm.dout_i_reg[15] ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized4
   (\goreg_bm.dout_i_reg[14] ,
    \goreg_bm.dout_i_reg[15] ,
    s_aclk,
    ENA_I_1,
    ENB_I_2,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    DIADI,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]\goreg_bm.dout_i_reg[14] ;
  output [0:0]\goreg_bm.dout_i_reg[15] ;
  input s_aclk;
  input ENA_I_1;
  input ENB_I_2;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [7:0]DIADI;
  input [0:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;

  wire [7:0]DIADI;
  wire ENA_I_1;
  wire ENB_I_2;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[14] ;
  wire [0:0]\goreg_bm.dout_i_reg[15] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [0:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized4 \prim_noinit.ram 
       (.DIADI(DIADI),
        .ENA_I_1(ENA_I_1),
        .ENB_I_2(ENB_I_2),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[14] (\goreg_bm.dout_i_reg[14] ),
        .\goreg_bm.dout_i_reg[15] (\goreg_bm.dout_i_reg[15] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized5
   (\goreg_bm.dout_i_reg[14] ,
    \goreg_bm.dout_i_reg[15] ,
    s_aclk,
    ENA_I_3,
    ENB_I_4,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    DIADI,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]\goreg_bm.dout_i_reg[14] ;
  output [0:0]\goreg_bm.dout_i_reg[15] ;
  input s_aclk;
  input ENA_I_3;
  input ENB_I_4;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [7:0]DIADI;
  input [0:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;

  wire [7:0]DIADI;
  wire ENA_I_3;
  wire ENB_I_4;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[14] ;
  wire [0:0]\goreg_bm.dout_i_reg[15] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [0:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized5 \prim_noinit.ram 
       (.DIADI(DIADI),
        .ENA_I_3(ENA_I_3),
        .ENB_I_4(ENB_I_4),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[14] (\goreg_bm.dout_i_reg[14] ),
        .\goreg_bm.dout_i_reg[15] (\goreg_bm.dout_i_reg[15] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized6
   (\goreg_bm.dout_i_reg[14] ,
    \goreg_bm.dout_i_reg[15] ,
    s_aclk,
    ENA_I_5,
    ENB_I_6,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    DIADI,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[14] ;
  output [0:0]\goreg_bm.dout_i_reg[15] ;
  input s_aclk;
  input ENA_I_5;
  input ENB_I_6;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [7:0]DIADI;
  input [0:0]s_axis_tdata;
  input [0:0]WEA;

  wire [7:0]DIADI;
  wire ENA_I_5;
  wire ENB_I_6;
  wire POR_A;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[14] ;
  wire [0:0]\goreg_bm.dout_i_reg[15] ;
  wire s_aclk;
  wire [0:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized6 \prim_noinit.ram 
       (.DIADI(DIADI),
        .ENA_I_5(ENA_I_5),
        .ENB_I_6(ENB_I_6),
        .POR_A(POR_A),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[14] (\goreg_bm.dout_i_reg[14] ),
        .\goreg_bm.dout_i_reg[15] (\goreg_bm.dout_i_reg[15] ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized7
   (\goreg_bm.dout_i_reg[23] ,
    \goreg_bm.dout_i_reg[24] ,
    s_aclk,
    ENA_I,
    ENB_I_0,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]\goreg_bm.dout_i_reg[23] ;
  output [0:0]\goreg_bm.dout_i_reg[24] ;
  input s_aclk;
  input ENA_I;
  input ENB_I_0;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;

  wire ENA_I;
  wire ENB_I_0;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[23] ;
  wire [0:0]\goreg_bm.dout_i_reg[24] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [8:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized7 \prim_noinit.ram 
       (.ENA_I(ENA_I),
        .ENB_I_0(ENB_I_0),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[23] (\goreg_bm.dout_i_reg[23] ),
        .\goreg_bm.dout_i_reg[24] (\goreg_bm.dout_i_reg[24] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized8
   (\goreg_bm.dout_i_reg[23] ,
    \goreg_bm.dout_i_reg[24] ,
    s_aclk,
    ENA_I_1,
    ENB_I_2,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[23] ;
  output [0:0]\goreg_bm.dout_i_reg[24] ;
  input s_aclk;
  input ENA_I_1;
  input ENB_I_2;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]WEA;

  wire ENA_I_1;
  wire ENB_I_2;
  wire POR_A;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[23] ;
  wire [0:0]\goreg_bm.dout_i_reg[24] ;
  wire s_aclk;
  wire [8:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized8 \prim_noinit.ram 
       (.ENA_I_1(ENA_I_1),
        .ENB_I_2(ENB_I_2),
        .POR_A(POR_A),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[23] (\goreg_bm.dout_i_reg[23] ),
        .\goreg_bm.dout_i_reg[24] (\goreg_bm.dout_i_reg[24] ),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_width__parameterized9
   (\goreg_bm.dout_i_reg[23] ,
    \goreg_bm.dout_i_reg[24] ,
    s_aclk,
    ENA_I_3,
    ENB_I_4,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]\goreg_bm.dout_i_reg[23] ;
  output [0:0]\goreg_bm.dout_i_reg[24] ;
  input s_aclk;
  input ENA_I_3;
  input ENB_I_4;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;

  wire ENA_I_3;
  wire ENB_I_4;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[23] ;
  wire [0:0]\goreg_bm.dout_i_reg[24] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [8:0]s_axis_tdata;

  design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized9 \prim_noinit.ram 
       (.ENA_I_3(ENA_I_3),
        .ENB_I_4(ENB_I_4),
        .POR_A(POR_A),
        .Q(Q),
        .\gc0.count_d1_reg[11] (\gc0.count_d1_reg[11] ),
        .\goreg_bm.dout_i_reg[23] (\goreg_bm.dout_i_reg[23] ),
        .\goreg_bm.dout_i_reg[24] (\goreg_bm.dout_i_reg[24] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tlast,
    ram_full_fb_i_reg);
  output [0:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input s_axis_tlast;
  input [0:0]ram_full_fb_i_reg;

  wire [0:0]D;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [13:0]Q;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire s_axis_tlast;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(Q),
        .ADDRBWRADDR(\gc0.count_d1_reg[13] ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tlast}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:1],D}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized0
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    Q,
    \gc0.count_d1_reg[13] ,
    DIADI,
    ram_full_fb_i_reg);
  output [1:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input [1:0]DIADI;
  input [1:0]ram_full_fb_i_reg;

  wire [1:0]D;
  wire [1:0]DIADI;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [13:0]Q;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [1:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[13] ,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:2],D}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg[1],ram_full_fb_i_reg,ram_full_fb_i_reg[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized1
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    Q,
    \gc0.count_d1_reg[13] ,
    DIADI,
    ram_full_fb_i_reg);
  output [1:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input [1:0]DIADI;
  input [0:0]ram_full_fb_i_reg;

  wire [1:0]D;
  wire [1:0]DIADI;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [13:0]Q;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[13] ,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:2],D}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized10
   (\goreg_bm.dout_i_reg[23] ,
    \goreg_bm.dout_i_reg[24] ,
    s_aclk,
    ENA_I_5,
    ENB_I_6,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[23] ;
  output [0:0]\goreg_bm.dout_i_reg[24] ;
  input s_aclk;
  input ENA_I_5;
  input ENB_I_6;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [1:0]WEA;

  wire ENA_I_5;
  wire ENB_I_6;
  wire POR_A;
  wire [11:0]Q;
  wire [1:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[23] ;
  wire [0:0]\goreg_bm.dout_i_reg[24] ;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[23] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[24] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_5),
        .ENBWREN(ENB_I_6),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA[1],WEA,WEA[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized11
   (\goreg_bm.dout_i_reg[32] ,
    \goreg_bm.dout_i_reg[33] ,
    ENA_I_0,
    s_aclk,
    ENA_I,
    ENB_I_0,
    \SAFETY_CKT_GEN.POR_A_reg ,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    ram_full_fb_i_reg,
    ENA_dly_D,
    out,
    s_axis_tvalid);
  output [7:0]\goreg_bm.dout_i_reg[32] ;
  output [0:0]\goreg_bm.dout_i_reg[33] ;
  output ENA_I_0;
  input s_aclk;
  input ENA_I;
  input ENB_I_0;
  input \SAFETY_CKT_GEN.POR_A_reg ;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;
  input ENA_dly_D;
  input out;
  input s_axis_tvalid;

  wire ENA_I;
  wire ENA_I_0;
  wire ENA_dly_D;
  wire ENB_I_0;
  wire [11:0]Q;
  wire \SAFETY_CKT_GEN.POR_A_reg ;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[32] ;
  wire [0:0]\goreg_bm.dout_i_reg[33] ;
  wire out;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axis_tvalid),
        .O(ENA_I_0));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[32] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[33] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\SAFETY_CKT_GEN.POR_A_reg ),
        .RSTRAMB(\SAFETY_CKT_GEN.POR_A_reg ),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized12
   (\goreg_bm.dout_i_reg[32] ,
    \goreg_bm.dout_i_reg[33] ,
    s_aclk,
    ENA_I_1,
    ENB_I_2,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[32] ;
  output [0:0]\goreg_bm.dout_i_reg[33] ;
  input s_aclk;
  input ENA_I_1;
  input ENB_I_2;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]WEA;

  wire ENA_I_1;
  wire ENB_I_2;
  wire POR_A;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[32] ;
  wire [0:0]\goreg_bm.dout_i_reg[33] ;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[32] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[33] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_1),
        .ENBWREN(ENB_I_2),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized13
   (DOBDO,
    DOPBDOP,
    s_aclk,
    ENA_I_3,
    ENB_I_4,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]DOBDO;
  output [0:0]DOPBDOP;
  input s_aclk;
  input ENA_I_3;
  input ENB_I_4;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [1:0]ram_full_fb_i_reg;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire ENA_I_3;
  wire ENB_I_4;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [1:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOPBDOP}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_3),
        .ENBWREN(ENB_I_4),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg[1],ram_full_fb_i_reg,ram_full_fb_i_reg[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized14
   (\goreg_bm.dout_i_reg[32] ,
    \goreg_bm.dout_i_reg[33] ,
    s_aclk,
    ENA_I_5,
    ENB_I_6,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[32] ;
  output [0:0]\goreg_bm.dout_i_reg[33] ;
  input s_aclk;
  input ENA_I_5;
  input ENB_I_6;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]WEA;

  wire ENA_I_5;
  wire ENB_I_6;
  wire POR_A;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[32] ;
  wire [0:0]\goreg_bm.dout_i_reg[33] ;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[32] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[33] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_5),
        .ENBWREN(ENB_I_6),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized2
   (D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tkeep,
    ram_full_fb_i_reg);
  output [1:0]D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input [1:0]s_axis_tkeep;
  input [0:0]ram_full_fb_i_reg;

  wire [1:0]D;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire [13:0]Q;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [1:0]s_axis_tkeep;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[13] ,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tkeep}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:2],D}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized3
   (\goreg_bm.dout_i_reg[14] ,
    \goreg_bm.dout_i_reg[15] ,
    s_aclk,
    ENA_I,
    ENB_I_0,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    DIADI,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[14] ;
  output [0:0]\goreg_bm.dout_i_reg[15] ;
  input s_aclk;
  input ENA_I;
  input ENB_I_0;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [7:0]DIADI;
  input [0:0]s_axis_tdata;
  input [1:0]WEA;

  wire [7:0]DIADI;
  wire ENA_I;
  wire ENB_I_0;
  wire POR_A;
  wire [11:0]Q;
  wire [1:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[14] ;
  wire [0:0]\goreg_bm.dout_i_reg[15] ;
  wire s_aclk;
  wire [0:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[14] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[15] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA[1],WEA,WEA[0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized4
   (\goreg_bm.dout_i_reg[14] ,
    \goreg_bm.dout_i_reg[15] ,
    s_aclk,
    ENA_I_1,
    ENB_I_2,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    DIADI,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]\goreg_bm.dout_i_reg[14] ;
  output [0:0]\goreg_bm.dout_i_reg[15] ;
  input s_aclk;
  input ENA_I_1;
  input ENB_I_2;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [7:0]DIADI;
  input [0:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;

  wire [7:0]DIADI;
  wire ENA_I_1;
  wire ENB_I_2;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[14] ;
  wire [0:0]\goreg_bm.dout_i_reg[15] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [0:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[14] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[15] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_1),
        .ENBWREN(ENB_I_2),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized5
   (\goreg_bm.dout_i_reg[14] ,
    \goreg_bm.dout_i_reg[15] ,
    s_aclk,
    ENA_I_3,
    ENB_I_4,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    DIADI,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]\goreg_bm.dout_i_reg[14] ;
  output [0:0]\goreg_bm.dout_i_reg[15] ;
  input s_aclk;
  input ENA_I_3;
  input ENB_I_4;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [7:0]DIADI;
  input [0:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;

  wire [7:0]DIADI;
  wire ENA_I_3;
  wire ENB_I_4;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[14] ;
  wire [0:0]\goreg_bm.dout_i_reg[15] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [0:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[14] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[15] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_3),
        .ENBWREN(ENB_I_4),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized6
   (\goreg_bm.dout_i_reg[14] ,
    \goreg_bm.dout_i_reg[15] ,
    s_aclk,
    ENA_I_5,
    ENB_I_6,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    DIADI,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[14] ;
  output [0:0]\goreg_bm.dout_i_reg[15] ;
  input s_aclk;
  input ENA_I_5;
  input ENB_I_6;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [7:0]DIADI;
  input [0:0]s_axis_tdata;
  input [0:0]WEA;

  wire [7:0]DIADI;
  wire ENA_I_5;
  wire ENB_I_6;
  wire POR_A;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[14] ;
  wire [0:0]\goreg_bm.dout_i_reg[15] ;
  wire s_aclk;
  wire [0:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[14] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[15] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_5),
        .ENBWREN(ENB_I_6),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized7
   (\goreg_bm.dout_i_reg[23] ,
    \goreg_bm.dout_i_reg[24] ,
    s_aclk,
    ENA_I,
    ENB_I_0,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]\goreg_bm.dout_i_reg[23] ;
  output [0:0]\goreg_bm.dout_i_reg[24] ;
  input s_aclk;
  input ENA_I;
  input ENB_I_0;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;

  wire ENA_I;
  wire ENB_I_0;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[23] ;
  wire [0:0]\goreg_bm.dout_i_reg[24] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[23] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[24] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized8
   (\goreg_bm.dout_i_reg[23] ,
    \goreg_bm.dout_i_reg[24] ,
    s_aclk,
    ENA_I_1,
    ENB_I_2,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    WEA);
  output [7:0]\goreg_bm.dout_i_reg[23] ;
  output [0:0]\goreg_bm.dout_i_reg[24] ;
  input s_aclk;
  input ENA_I_1;
  input ENB_I_2;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]WEA;

  wire ENA_I_1;
  wire ENB_I_2;
  wire POR_A;
  wire [11:0]Q;
  wire [0:0]WEA;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[23] ;
  wire [0:0]\goreg_bm.dout_i_reg[24] ;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[23] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[24] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_1),
        .ENBWREN(ENB_I_2),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_prim_wrapper__parameterized9
   (\goreg_bm.dout_i_reg[23] ,
    \goreg_bm.dout_i_reg[24] ,
    s_aclk,
    ENA_I_3,
    ENB_I_4,
    POR_A,
    Q,
    \gc0.count_d1_reg[11] ,
    s_axis_tdata,
    ram_full_fb_i_reg);
  output [7:0]\goreg_bm.dout_i_reg[23] ;
  output [0:0]\goreg_bm.dout_i_reg[24] ;
  input s_aclk;
  input ENA_I_3;
  input ENB_I_4;
  input POR_A;
  input [11:0]Q;
  input [11:0]\gc0.count_d1_reg[11] ;
  input [8:0]s_axis_tdata;
  input [0:0]ram_full_fb_i_reg;

  wire ENA_I_3;
  wire ENB_I_4;
  wire POR_A;
  wire [11:0]Q;
  wire [11:0]\gc0.count_d1_reg[11] ;
  wire [7:0]\goreg_bm.dout_i_reg[23] ;
  wire [0:0]\goreg_bm.dout_i_reg[24] ;
  wire [0:0]ram_full_fb_i_reg;
  wire s_aclk;
  wire [8:0]s_axis_tdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[11] ,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis_tdata[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\goreg_bm.dout_i_reg[23] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\goreg_bm.dout_i_reg[24] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_3),
        .ENBWREN(ENB_I_4),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(POR_A),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_top
   (D,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tlast,
    ram_full_fb_i_reg,
    DIADI,
    s_axis_tkeep,
    s_axis_tid,
    ENA_I,
    ENB_I_0,
    s_axis_tdata,
    s_axis_tstrb,
    ram_full_fb_i_reg_0,
    ENA_I_1,
    ENB_I_2,
    ENA_I_3,
    ENB_I_4,
    ENA_I_5,
    ENB_I_6,
    WEA,
    ram_full_fb_i_reg_1,
    out,
    s_axis_tvalid,
    ram_empty_fb_i_reg,
    p_8_out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] );
  output [33:0]D;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input s_axis_tlast;
  input [1:0]ram_full_fb_i_reg;
  input [1:0]DIADI;
  input [2:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input ENA_I;
  input ENB_I_0;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [0:0]ram_full_fb_i_reg_0;
  input ENA_I_1;
  input ENB_I_2;
  input ENA_I_3;
  input ENB_I_4;
  input ENA_I_5;
  input ENB_I_6;
  input [1:0]WEA;
  input [1:0]ram_full_fb_i_reg_1;
  input out;
  input s_axis_tvalid;
  input ram_empty_fb_i_reg;
  input p_8_out;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;

  wire [33:0]D;
  wire [1:0]DIADI;
  wire ENA_I;
  wire ENA_I_1;
  wire ENA_I_3;
  wire ENA_I_5;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_2;
  wire ENB_I_4;
  wire ENB_I_6;
  wire [13:0]Q;
  wire [1:0]WEA;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire out;
  wire p_8_out;
  wire ram_empty_fb_i_reg;
  wire [1:0]ram_full_fb_i_reg;
  wire [0:0]ram_full_fb_i_reg_0;
  wire [1:0]ram_full_fb_i_reg_1;
  wire s_aclk;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [2:0]s_axis_tstrb;
  wire s_axis_tvalid;

  design_1_axis_data_fifo_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .DIADI(DIADI),
        .ENA_I(ENA_I),
        .ENA_I_1(ENA_I_1),
        .ENA_I_3(ENA_I_3),
        .ENA_I_5(ENA_I_5),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .ENB_I_0(ENB_I_0),
        .ENB_I_2(ENB_I_2),
        .ENB_I_4(ENB_I_4),
        .ENB_I_6(ENB_I_6),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ),
        .out(out),
        .p_8_out(p_8_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .ram_full_fb_i_reg_1(ram_full_fb_i_reg_1),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_v8_4_1
   (D,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tlast,
    ram_full_fb_i_reg,
    DIADI,
    s_axis_tkeep,
    s_axis_tid,
    ENA_I,
    ENB_I_0,
    s_axis_tdata,
    s_axis_tstrb,
    ram_full_fb_i_reg_0,
    ENA_I_1,
    ENB_I_2,
    ENA_I_3,
    ENB_I_4,
    ENA_I_5,
    ENB_I_6,
    WEA,
    ram_full_fb_i_reg_1,
    out,
    s_axis_tvalid,
    ram_empty_fb_i_reg,
    p_8_out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] );
  output [33:0]D;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input s_axis_tlast;
  input [1:0]ram_full_fb_i_reg;
  input [1:0]DIADI;
  input [2:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input ENA_I;
  input ENB_I_0;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [0:0]ram_full_fb_i_reg_0;
  input ENA_I_1;
  input ENB_I_2;
  input ENA_I_3;
  input ENB_I_4;
  input ENA_I_5;
  input ENB_I_6;
  input [1:0]WEA;
  input [1:0]ram_full_fb_i_reg_1;
  input out;
  input s_axis_tvalid;
  input ram_empty_fb_i_reg;
  input p_8_out;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;

  wire [33:0]D;
  wire [1:0]DIADI;
  wire ENA_I;
  wire ENA_I_1;
  wire ENA_I_3;
  wire ENA_I_5;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_2;
  wire ENB_I_4;
  wire ENB_I_6;
  wire [13:0]Q;
  wire [1:0]WEA;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire out;
  wire p_8_out;
  wire ram_empty_fb_i_reg;
  wire [1:0]ram_full_fb_i_reg;
  wire [0:0]ram_full_fb_i_reg_0;
  wire [1:0]ram_full_fb_i_reg_1;
  wire s_aclk;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [2:0]s_axis_tstrb;
  wire s_axis_tvalid;

  design_1_axis_data_fifo_0_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.D(D),
        .DIADI(DIADI),
        .ENA_I(ENA_I),
        .ENA_I_1(ENA_I_1),
        .ENA_I_3(ENA_I_3),
        .ENA_I_5(ENA_I_5),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .ENB_I_0(ENB_I_0),
        .ENB_I_2(ENB_I_2),
        .ENB_I_4(ENB_I_4),
        .ENB_I_6(ENB_I_6),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ),
        .out(out),
        .p_8_out(p_8_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .ram_full_fb_i_reg_1(ram_full_fb_i_reg_1),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module design_1_axis_data_fifo_0_0_blk_mem_gen_v8_4_1_synth
   (D,
    ENA_dly_D,
    s_aclk,
    ENB_I,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tlast,
    ram_full_fb_i_reg,
    DIADI,
    s_axis_tkeep,
    s_axis_tid,
    ENA_I,
    ENB_I_0,
    s_axis_tdata,
    s_axis_tstrb,
    ram_full_fb_i_reg_0,
    ENA_I_1,
    ENB_I_2,
    ENA_I_3,
    ENB_I_4,
    ENA_I_5,
    ENB_I_6,
    WEA,
    ram_full_fb_i_reg_1,
    out,
    s_axis_tvalid,
    ram_empty_fb_i_reg,
    p_8_out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] );
  output [33:0]D;
  output ENA_dly_D;
  input s_aclk;
  input ENB_I;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input s_axis_tlast;
  input [1:0]ram_full_fb_i_reg;
  input [1:0]DIADI;
  input [2:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input ENA_I;
  input ENB_I_0;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [0:0]ram_full_fb_i_reg_0;
  input ENA_I_1;
  input ENB_I_2;
  input ENA_I_3;
  input ENB_I_4;
  input ENA_I_5;
  input ENB_I_6;
  input [1:0]WEA;
  input [1:0]ram_full_fb_i_reg_1;
  input out;
  input s_axis_tvalid;
  input ram_empty_fb_i_reg;
  input p_8_out;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;

  wire [33:0]D;
  wire [1:0]DIADI;
  wire ENA_I;
  wire ENA_I_1;
  wire ENA_I_3;
  wire ENA_I_5;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_2;
  wire ENB_I_4;
  wire ENB_I_6;
  wire [13:0]Q;
  wire [1:0]WEA;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire out;
  wire p_8_out;
  wire ram_empty_fb_i_reg;
  wire [1:0]ram_full_fb_i_reg;
  wire [0:0]ram_full_fb_i_reg_0;
  wire [1:0]ram_full_fb_i_reg_1;
  wire s_aclk;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [2:0]s_axis_tstrb;
  wire s_axis_tvalid;

  design_1_axis_data_fifo_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.D(D),
        .DIADI(DIADI),
        .ENA_I(ENA_I),
        .ENA_I_1(ENA_I_1),
        .ENA_I_3(ENA_I_3),
        .ENA_I_5(ENA_I_5),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .ENB_I_0(ENB_I_0),
        .ENB_I_2(ENB_I_2),
        .ENB_I_4(ENB_I_4),
        .ENB_I_6(ENB_I_6),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ),
        .out(out),
        .p_8_out(p_8_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .ram_full_fb_i_reg_1(ram_full_fb_i_reg_1),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_axis_data_fifo_0_0_compare
   (comp0,
    v1_reg);
  output comp0;
  input [6:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire carrynet_5;
  wire comp0;
  wire [6:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3],comp0,carrynet_5,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3],v1_reg[6:4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_axis_data_fifo_0_0_compare_0
   (ram_full_comb__5,
    v1_reg_3,
    s_axis_tvalid,
    p_8_out,
    comp0,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    out);
  output ram_full_comb__5;
  input [6:0]v1_reg_3;
  input s_axis_tvalid;
  input p_8_out;
  input comp0;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire carrynet_5;
  wire comp0;
  wire comp1;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire p_8_out;
  wire ram_full_comb__5;
  wire s_axis_tvalid;
  wire [6:0]v1_reg_3;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_3[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3],comp1,carrynet_5,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3],v1_reg_3[6:4]}));
  LUT6 #(
    .INIT(64'h00000FFF08080808)) 
    ram_full_fb_i_i_1
       (.I0(s_axis_tvalid),
        .I1(comp1),
        .I2(p_8_out),
        .I3(comp0),
        .I4(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I5(out),
        .O(ram_full_comb__5));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_axis_data_fifo_0_0_compare_1
   (comp0,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[4] ,
    \gc0.count_d1_reg[6] ,
    \gc0.count_d1_reg[8] ,
    \gc0.count_d1_reg[10] ,
    \gc0.count_d1_reg[12] );
  output comp0;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[4] ;
  input \gc0.count_d1_reg[6] ;
  input \gc0.count_d1_reg[8] ;
  input \gc0.count_d1_reg[10] ;
  input \gc0.count_d1_reg[12] ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire carrynet_5;
  wire comp0;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[10] ;
  wire \gc0.count_d1_reg[12] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[4] ;
  wire \gc0.count_d1_reg[6] ;
  wire \gc0.count_d1_reg[8] ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gc0.count_d1_reg[6] ,\gc0.count_d1_reg[4] ,\gc0.count_d1_reg[2] ,\gc0.count_d1_reg[0] }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3],comp0,carrynet_5,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3],\gc0.count_d1_reg[12] ,\gc0.count_d1_reg[10] ,\gc0.count_d1_reg[8] }));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_axis_data_fifo_0_0_compare_2
   (ram_empty_i_reg,
    v1_reg,
    E,
    comp0,
    ram_full_fb_i_reg,
    s_axis_tvalid,
    out);
  output ram_empty_i_reg;
  input [6:0]v1_reg;
  input [0:0]E;
  input comp0;
  input ram_full_fb_i_reg;
  input s_axis_tvalid;
  input out;

  wire [0:0]E;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire carrynet_5;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_empty_i_reg;
  wire ram_full_fb_i_reg;
  wire s_axis_tvalid;
  wire [6:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3],comp1,carrynet_5,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3],v1_reg[6:4]}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_empty_fb_i_i_1
       (.I0(E),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_full_fb_i_reg),
        .I4(s_axis_tvalid),
        .I5(out),
        .O(ram_empty_i_reg));
endmodule

(* ORIG_REF_NAME = "dc_ss_fwft" *) 
module design_1_axis_data_fifo_0_0_dc_ss_fwft
   (axis_data_count,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    cntr_en,
    O,
    s_aclk,
    \count_reg[7] ,
    \count_reg[11] ,
    \count_reg[13] );
  output [14:0]axis_data_count;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input cntr_en;
  input [3:0]O;
  input s_aclk;
  input [3:0]\count_reg[7] ;
  input [3:0]\count_reg[11] ;
  input [2:0]\count_reg[13] ;

  wire [3:0]O;
  wire [14:0]axis_data_count;
  wire cntr_en;
  wire [3:0]\count_reg[11] ;
  wire [2:0]\count_reg[13] ;
  wire [3:0]\count_reg[7] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire s_aclk;

  design_1_axis_data_fifo_0_0_updn_cntr dc
       (.O(O),
        .axis_data_count(axis_data_count),
        .cntr_en(cntr_en),
        .\count_reg[11]_0 (\count_reg[11] ),
        .\count_reg[13]_0 (\count_reg[13] ),
        .\count_reg[7]_0 (\count_reg[7] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_axis_data_fifo_0_0_fifo_generator_ramfifo
   (Q,
    axis_data_count,
    s_axis_tready,
    m_axis_tvalid,
    s_aclk,
    s_axis_tlast,
    DIADI,
    s_axis_tkeep,
    s_axis_tid,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tvalid,
    m_axis_tready,
    s_aresetn);
  output [33:0]Q;
  output [14:0]axis_data_count;
  output s_axis_tready;
  output m_axis_tvalid;
  input s_aclk;
  input s_axis_tlast;
  input [1:0]DIADI;
  input [2:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input s_axis_tvalid;
  input m_axis_tready;
  input s_aresetn;

  wire [1:0]DIADI;
  wire [33:0]Q;
  wire [14:0]axis_data_count;
  wire dout_i;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENA_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENA_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[13].ram.r/ENA_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[13].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/ENA_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[15].ram.r/ENA_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[15].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_34 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_35 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_36 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_37 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_38 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_39 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_40 ;
  wire \gr1.gdcf.dc/cntr_en ;
  wire [6:0]\gwss.wsts/c0/v1_reg ;
  wire [6:0]\gwss.wsts/c1/v1_reg ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [13:0]p_0_out;
  wire [13:0]p_12_out;
  wire [13:0]p_13_out;
  wire p_2_out;
  wire p_3_out;
  wire p_8_out;
  wire rst_full_gen_i;
  wire rstblk_n_1;
  wire s_aclk;
  wire s_aresetn;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire s_axis_tvalid;
  wire [1:0]sckt_wr_rst_cc;

  design_1_axis_data_fifo_0_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.D(p_13_out),
        .E(dout_i),
        .ENA_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENA_dly_D ),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENB_I ),
        .ENB_I_0(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[13].ram.r/ENB_I ),
        .ENB_I_1(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/ENB_I ),
        .ENB_I_2(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[15].ram.r/ENB_I ),
        .ENB_I_4(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ),
        .Q(p_0_out),
        .axis_data_count(axis_data_count),
        .cntr_en(\gr1.gdcf.dc/cntr_en ),
        .\count_reg[14] (p_3_out),
        .\gcc0.gc0.count_d1_reg[13] (p_12_out),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (rstblk_n_1),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (sckt_wr_rst_cc),
        .out(p_2_out),
        .p_8_out(p_8_out),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_3(\gwss.wsts/c1/v1_reg ));
  design_1_axis_data_fifo_0_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.D(p_13_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\gntv_or_sync_fifo.gl0.wr_n_36 ,\gntv_or_sync_fifo.gl0.wr_n_37 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\gntv_or_sync_fifo.gl0.wr_n_38 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ({\gntv_or_sync_fifo.gl0.wr_n_39 ,\gntv_or_sync_fifo.gl0.wr_n_40 }),
        .ENA_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENA_I ),
        .ENA_I_0(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[13].ram.r/ENA_I ),
        .ENA_I_1(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/ENA_I ),
        .ENA_I_2(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[15].ram.r/ENA_I ),
        .ENA_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENA_dly_D ),
        .Q(p_12_out),
        .WEA({\gntv_or_sync_fifo.gl0.wr_n_34 ,\gntv_or_sync_fifo.gl0.wr_n_35 }),
        .cntr_en(\gr1.gdcf.dc/cntr_en ),
        .\gpregsm1.user_valid_reg (p_3_out),
        .\grstd1.grst_full.grst_f.rst_d3_reg (rst_full_gen_i),
        .m_axis_tready(m_axis_tready),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (rstblk_n_1),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .p_8_out(p_8_out),
        .s_aclk(s_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_3(\gwss.wsts/c1/v1_reg ));
  design_1_axis_data_fifo_0_0_memory \gntv_or_sync_fifo.mem 
       (.DIADI(DIADI),
        .E(dout_i),
        .ENA_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENA_I ),
        .ENA_I_1(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[13].ram.r/ENA_I ),
        .ENA_I_3(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/ENA_I ),
        .ENA_I_5(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[15].ram.r/ENA_I ),
        .ENA_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENA_dly_D ),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ),
        .ENB_I_0(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/ENB_I ),
        .ENB_I_2(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[13].ram.r/ENB_I ),
        .ENB_I_4(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[14].ram.r/ENB_I ),
        .ENB_I_6(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[15].ram.r/ENB_I ),
        .Q(p_12_out),
        .WEA({\gntv_or_sync_fifo.gl0.wr_n_34 ,\gntv_or_sync_fifo.gl0.wr_n_35 }),
        .\gc0.count_d1_reg[13] (p_0_out),
        .\m_axis_tdata[23] (Q),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (sckt_wr_rst_cc),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .p_8_out(p_8_out),
        .ram_empty_fb_i_reg(p_2_out),
        .ram_full_fb_i_reg({\gntv_or_sync_fifo.gl0.wr_n_36 ,\gntv_or_sync_fifo.gl0.wr_n_37 }),
        .ram_full_fb_i_reg_0(\gntv_or_sync_fifo.gl0.wr_n_38 ),
        .ram_full_fb_i_reg_1({\gntv_or_sync_fifo.gl0.wr_n_39 ,\gntv_or_sync_fifo.gl0.wr_n_40 }),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axis_data_fifo_0_0_reset_blk_ramfifo rstblk
       (.Q(sckt_wr_rst_cc),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rstblk_n_1),
        .out(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_axis_data_fifo_0_0_fifo_generator_top
   (Q,
    axis_data_count,
    s_axis_tready,
    m_axis_tvalid,
    s_aclk,
    s_axis_tlast,
    DIADI,
    s_axis_tkeep,
    s_axis_tid,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tvalid,
    m_axis_tready,
    s_aresetn);
  output [33:0]Q;
  output [14:0]axis_data_count;
  output s_axis_tready;
  output m_axis_tvalid;
  input s_aclk;
  input s_axis_tlast;
  input [1:0]DIADI;
  input [2:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input s_axis_tvalid;
  input m_axis_tready;
  input s_aresetn;

  wire [1:0]DIADI;
  wire [33:0]Q;
  wire [14:0]axis_data_count;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire s_axis_tvalid;

  design_1_axis_data_fifo_0_0_fifo_generator_ramfifo \grf.rf 
       (.DIADI(DIADI),
        .Q(Q),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "24" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "3" *) (* C_AXIS_TSTRB_WIDTH = "3" *) 
(* C_AXIS_TUSER_WIDTH = "1" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DIN_WIDTH_AXIS = "34" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "spartan7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "1" *) 
(* C_HAS_AXIS_TID = "1" *) (* C_HAS_AXIS_TKEEP = "1" *) (* C_HAS_AXIS_TLAST = "1" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "1" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "1" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "2" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "2" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "1" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "16382" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "16383" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "16384" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "14" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_2" *) 
module design_1_axis_data_fifo_0_0_fifo_generator_v13_2_2
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [13:0]axis_prog_full_thresh;
  input [13:0]axis_prog_empty_thresh;
  output [14:0]axis_data_count;
  output [14:0]axis_wr_data_count;
  output [14:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire [14:0]axis_data_count;
  wire [23:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
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
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axis_data_fifo_0_0_fifo_generator_v13_2_2_synth inst_fifo_gen
       (.DIADI({s_axis_tdest,s_axis_tuser}),
        .Q({m_axis_tdata,m_axis_tstrb,m_axis_tkeep,m_axis_tid,m_axis_tdest,m_axis_tuser,m_axis_tlast}),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_2_synth" *) 
module design_1_axis_data_fifo_0_0_fifo_generator_v13_2_2_synth
   (Q,
    axis_data_count,
    s_axis_tready,
    m_axis_tvalid,
    s_aclk,
    s_axis_tlast,
    DIADI,
    s_axis_tkeep,
    s_axis_tid,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tvalid,
    m_axis_tready,
    s_aresetn);
  output [33:0]Q;
  output [14:0]axis_data_count;
  output s_axis_tready;
  output m_axis_tvalid;
  input s_aclk;
  input s_axis_tlast;
  input [1:0]DIADI;
  input [2:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input s_axis_tvalid;
  input m_axis_tready;
  input s_aresetn;

  wire [1:0]DIADI;
  wire [33:0]Q;
  wire [14:0]axis_data_count;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire s_axis_tvalid;

  design_1_axis_data_fifo_0_0_fifo_generator_top \gaxis_fifo.gaxisf.axisf 
       (.DIADI(DIADI),
        .Q(Q),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_axis_data_fifo_0_0_memory
   (ENA_dly_D,
    \m_axis_tdata[23] ,
    s_aclk,
    ENB_I,
    Q,
    \gc0.count_d1_reg[13] ,
    s_axis_tlast,
    ram_full_fb_i_reg,
    DIADI,
    s_axis_tkeep,
    s_axis_tid,
    ENA_I,
    ENB_I_0,
    s_axis_tdata,
    s_axis_tstrb,
    ram_full_fb_i_reg_0,
    ENA_I_1,
    ENB_I_2,
    ENA_I_3,
    ENB_I_4,
    ENA_I_5,
    ENB_I_6,
    WEA,
    ram_full_fb_i_reg_1,
    out,
    s_axis_tvalid,
    ram_empty_fb_i_reg,
    p_8_out,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ,
    E);
  output ENA_dly_D;
  output [33:0]\m_axis_tdata[23] ;
  input s_aclk;
  input ENB_I;
  input [13:0]Q;
  input [13:0]\gc0.count_d1_reg[13] ;
  input s_axis_tlast;
  input [1:0]ram_full_fb_i_reg;
  input [1:0]DIADI;
  input [2:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input ENA_I;
  input ENB_I_0;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [0:0]ram_full_fb_i_reg_0;
  input ENA_I_1;
  input ENB_I_2;
  input ENA_I_3;
  input ENB_I_4;
  input ENA_I_5;
  input ENB_I_6;
  input [1:0]WEA;
  input [1:0]ram_full_fb_i_reg_1;
  input out;
  input s_axis_tvalid;
  input ram_empty_fb_i_reg;
  input p_8_out;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  input [0:0]E;

  wire [1:0]DIADI;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_I_1;
  wire ENA_I_3;
  wire ENA_I_5;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_2;
  wire ENB_I_4;
  wire ENB_I_6;
  wire [13:0]Q;
  wire [1:0]WEA;
  wire [33:1]dout_mem;
  wire [13:0]\gc0.count_d1_reg[13] ;
  wire \inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ram_doutb ;
  wire [33:0]\m_axis_tdata[23] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire out;
  wire p_8_out;
  wire ram_empty_fb_i_reg;
  wire [1:0]ram_full_fb_i_reg;
  wire [0:0]ram_full_fb_i_reg_0;
  wire [1:0]ram_full_fb_i_reg_1;
  wire s_aclk;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [2:0]s_axis_tstrb;
  wire s_axis_tvalid;

  design_1_axis_data_fifo_0_0_blk_mem_gen_v8_4_1 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D({dout_mem,\inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ram_doutb }),
        .DIADI(DIADI),
        .ENA_I(ENA_I),
        .ENA_I_1(ENA_I_1),
        .ENA_I_3(ENA_I_3),
        .ENA_I_5(ENA_I_5),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .ENB_I_0(ENB_I_0),
        .ENB_I_2(ENB_I_2),
        .ENB_I_4(ENB_I_4),
        .ENB_I_6(ENB_I_6),
        .Q(Q),
        .WEA(WEA),
        .\gc0.count_d1_reg[13] (\gc0.count_d1_reg[13] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ),
        .out(out),
        .p_8_out(p_8_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .ram_full_fb_i_reg_1(ram_full_fb_i_reg_1),
        .s_aclk(s_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(\inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ram_doutb ),
        .Q(\m_axis_tdata[23] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[10]),
        .Q(\m_axis_tdata[23] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[11]),
        .Q(\m_axis_tdata[23] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[12]),
        .Q(\m_axis_tdata[23] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[13]),
        .Q(\m_axis_tdata[23] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[14]),
        .Q(\m_axis_tdata[23] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[15]),
        .Q(\m_axis_tdata[23] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[16]),
        .Q(\m_axis_tdata[23] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[17]),
        .Q(\m_axis_tdata[23] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[18]),
        .Q(\m_axis_tdata[23] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[19]),
        .Q(\m_axis_tdata[23] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[1]),
        .Q(\m_axis_tdata[23] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[20]),
        .Q(\m_axis_tdata[23] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[21]),
        .Q(\m_axis_tdata[23] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[22]),
        .Q(\m_axis_tdata[23] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[23]),
        .Q(\m_axis_tdata[23] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[24]),
        .Q(\m_axis_tdata[23] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[25]),
        .Q(\m_axis_tdata[23] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[26]),
        .Q(\m_axis_tdata[23] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[27]),
        .Q(\m_axis_tdata[23] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[28]),
        .Q(\m_axis_tdata[23] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[29]),
        .Q(\m_axis_tdata[23] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[2]),
        .Q(\m_axis_tdata[23] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[30]),
        .Q(\m_axis_tdata[23] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[31]),
        .Q(\m_axis_tdata[23] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[32]),
        .Q(\m_axis_tdata[23] [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[33]),
        .Q(\m_axis_tdata[23] [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[3]),
        .Q(\m_axis_tdata[23] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[4]),
        .Q(\m_axis_tdata[23] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[5]),
        .Q(\m_axis_tdata[23] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[6]),
        .Q(\m_axis_tdata[23] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[7]),
        .Q(\m_axis_tdata[23] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[8]),
        .Q(\m_axis_tdata[23] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_mem[9]),
        .Q(\m_axis_tdata[23] [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_axis_data_fifo_0_0_rd_bin_cntr
   (ENB_I,
    Q,
    ENB_I_0,
    ENB_I_1,
    ENB_I_2,
    v1_reg,
    v1_reg_0,
    v1_reg_3,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    ram_empty_i_reg_1,
    ram_empty_i_reg_2,
    ram_empty_i_reg_3,
    ram_empty_i_reg_4,
    ram_empty_i_reg_5,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    E,
    s_aclk,
    ENA_dly_D,
    out,
    \gcc0.gc0.count_d1_reg[13] ,
    D);
  output ENB_I;
  output [13:0]Q;
  output ENB_I_0;
  output ENB_I_1;
  output ENB_I_2;
  output [6:0]v1_reg;
  output [6:0]v1_reg_0;
  output [6:0]v1_reg_3;
  output ram_empty_i_reg;
  output ram_empty_i_reg_0;
  output ram_empty_i_reg_1;
  output ram_empty_i_reg_2;
  output ram_empty_i_reg_3;
  output ram_empty_i_reg_4;
  output ram_empty_i_reg_5;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input [0:0]E;
  input s_aclk;
  input ENA_dly_D;
  input out;
  input [13:0]\gcc0.gc0.count_d1_reg[13] ;
  input [13:0]D;

  wire [13:0]D;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_1;
  wire ENB_I_2;
  wire [13:0]Q;
  wire \gc0.count[0]_i_2_n_0 ;
  wire \gc0.count_reg[0]_i_1_n_0 ;
  wire \gc0.count_reg[0]_i_1_n_1 ;
  wire \gc0.count_reg[0]_i_1_n_2 ;
  wire \gc0.count_reg[0]_i_1_n_3 ;
  wire \gc0.count_reg[0]_i_1_n_4 ;
  wire \gc0.count_reg[0]_i_1_n_5 ;
  wire \gc0.count_reg[0]_i_1_n_6 ;
  wire \gc0.count_reg[0]_i_1_n_7 ;
  wire \gc0.count_reg[12]_i_1_n_3 ;
  wire \gc0.count_reg[12]_i_1_n_6 ;
  wire \gc0.count_reg[12]_i_1_n_7 ;
  wire \gc0.count_reg[4]_i_1_n_0 ;
  wire \gc0.count_reg[4]_i_1_n_1 ;
  wire \gc0.count_reg[4]_i_1_n_2 ;
  wire \gc0.count_reg[4]_i_1_n_3 ;
  wire \gc0.count_reg[4]_i_1_n_4 ;
  wire \gc0.count_reg[4]_i_1_n_5 ;
  wire \gc0.count_reg[4]_i_1_n_6 ;
  wire \gc0.count_reg[4]_i_1_n_7 ;
  wire \gc0.count_reg[8]_i_1_n_0 ;
  wire \gc0.count_reg[8]_i_1_n_1 ;
  wire \gc0.count_reg[8]_i_1_n_2 ;
  wire \gc0.count_reg[8]_i_1_n_3 ;
  wire \gc0.count_reg[8]_i_1_n_4 ;
  wire \gc0.count_reg[8]_i_1_n_5 ;
  wire \gc0.count_reg[8]_i_1_n_6 ;
  wire \gc0.count_reg[8]_i_1_n_7 ;
  wire [13:0]\gcc0.gc0.count_d1_reg[13] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire ram_empty_i_reg_2;
  wire ram_empty_i_reg_3;
  wire ram_empty_i_reg_4;
  wire ram_empty_i_reg_5;
  wire [13:0]rd_pntr_plus1;
  wire s_aclk;
  wire [6:0]v1_reg;
  wire [6:0]v1_reg_0;
  wire [6:0]v1_reg_3;
  wire [3:1]\NLW_gc0.count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gc0.count_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(ENA_dly_D),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(out),
        .I4(E),
        .I5(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .O(ENB_I));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(ENA_dly_D),
        .I1(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .I2(E),
        .I3(out),
        .I4(Q[12]),
        .I5(Q[13]),
        .O(ENB_I_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(ENA_dly_D),
        .I1(Q[13]),
        .I2(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .I3(E),
        .I4(out),
        .I5(Q[12]),
        .O(ENB_I_1));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 
       (.I0(ENA_dly_D),
        .I1(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .I2(E),
        .I3(out),
        .I4(Q[12]),
        .I5(Q[13]),
        .O(ENB_I_2));
  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_2 
       (.I0(rd_pntr_plus1[0]),
        .O(\gc0.count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[10] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[10]),
        .Q(Q[10]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[11] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[11]),
        .Q(Q[11]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[12] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[12]),
        .Q(Q[12]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[13] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[13]),
        .Q(Q[13]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[0]_i_1_n_7 ),
        .Q(rd_pntr_plus1[0]),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  CARRY4 \gc0.count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\gc0.count_reg[0]_i_1_n_0 ,\gc0.count_reg[0]_i_1_n_1 ,\gc0.count_reg[0]_i_1_n_2 ,\gc0.count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\gc0.count_reg[0]_i_1_n_4 ,\gc0.count_reg[0]_i_1_n_5 ,\gc0.count_reg[0]_i_1_n_6 ,\gc0.count_reg[0]_i_1_n_7 }),
        .S({rd_pntr_plus1[3:1],\gc0.count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[10] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[8]_i_1_n_5 ),
        .Q(rd_pntr_plus1[10]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[11] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[8]_i_1_n_4 ),
        .Q(rd_pntr_plus1[11]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[12] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[12]_i_1_n_7 ),
        .Q(rd_pntr_plus1[12]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  CARRY4 \gc0.count_reg[12]_i_1 
       (.CI(\gc0.count_reg[8]_i_1_n_0 ),
        .CO({\NLW_gc0.count_reg[12]_i_1_CO_UNCONNECTED [3:1],\gc0.count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gc0.count_reg[12]_i_1_O_UNCONNECTED [3:2],\gc0.count_reg[12]_i_1_n_6 ,\gc0.count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,rd_pntr_plus1[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[13] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[12]_i_1_n_6 ),
        .Q(rd_pntr_plus1[13]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[0]_i_1_n_6 ),
        .Q(rd_pntr_plus1[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[0]_i_1_n_5 ),
        .Q(rd_pntr_plus1[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[0]_i_1_n_4 ),
        .Q(rd_pntr_plus1[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[4]_i_1_n_7 ),
        .Q(rd_pntr_plus1[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  CARRY4 \gc0.count_reg[4]_i_1 
       (.CI(\gc0.count_reg[0]_i_1_n_0 ),
        .CO({\gc0.count_reg[4]_i_1_n_0 ,\gc0.count_reg[4]_i_1_n_1 ,\gc0.count_reg[4]_i_1_n_2 ,\gc0.count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gc0.count_reg[4]_i_1_n_4 ,\gc0.count_reg[4]_i_1_n_5 ,\gc0.count_reg[4]_i_1_n_6 ,\gc0.count_reg[4]_i_1_n_7 }),
        .S(rd_pntr_plus1[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[4]_i_1_n_6 ),
        .Q(rd_pntr_plus1[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[4]_i_1_n_5 ),
        .Q(rd_pntr_plus1[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[4]_i_1_n_4 ),
        .Q(rd_pntr_plus1[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[8]_i_1_n_7 ),
        .Q(rd_pntr_plus1[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  CARRY4 \gc0.count_reg[8]_i_1 
       (.CI(\gc0.count_reg[4]_i_1_n_0 ),
        .CO({\gc0.count_reg[8]_i_1_n_0 ,\gc0.count_reg[8]_i_1_n_1 ,\gc0.count_reg[8]_i_1_n_2 ,\gc0.count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gc0.count_reg[8]_i_1_n_4 ,\gc0.count_reg[8]_i_1_n_5 ,\gc0.count_reg[8]_i_1_n_6 ,\gc0.count_reg[8]_i_1_n_7 }),
        .S(rd_pntr_plus1[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(\gc0.count_reg[8]_i_1_n_6 ),
        .Q(rd_pntr_plus1[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_d1_reg[13] [0]),
        .I2(Q[1]),
        .I3(\gcc0.gc0.count_d1_reg[13] [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gcc0.gc0.count_d1_reg[13] [0]),
        .I2(rd_pntr_plus1[1]),
        .I3(\gcc0.gc0.count_d1_reg[13] [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(D[0]),
        .I2(Q[1]),
        .I3(D[1]),
        .O(v1_reg_3[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(\gcc0.gc0.count_d1_reg[13] [0]),
        .I2(Q[1]),
        .I3(\gcc0.gc0.count_d1_reg[13] [1]),
        .O(ram_empty_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_d1_reg[13] [2]),
        .I2(Q[3]),
        .I3(\gcc0.gc0.count_d1_reg[13] [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gcc0.gc0.count_d1_reg[13] [2]),
        .I2(rd_pntr_plus1[3]),
        .I3(\gcc0.gc0.count_d1_reg[13] [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(D[2]),
        .I2(Q[3]),
        .I3(D[3]),
        .O(v1_reg_3[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(\gcc0.gc0.count_d1_reg[13] [2]),
        .I2(Q[3]),
        .I3(\gcc0.gc0.count_d1_reg[13] [3]),
        .O(ram_empty_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(\gcc0.gc0.count_d1_reg[13] [4]),
        .I2(Q[5]),
        .I3(\gcc0.gc0.count_d1_reg[13] [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gcc0.gc0.count_d1_reg[13] [4]),
        .I2(rd_pntr_plus1[5]),
        .I3(\gcc0.gc0.count_d1_reg[13] [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(D[4]),
        .I2(Q[5]),
        .I3(D[5]),
        .O(v1_reg_3[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[4]),
        .I1(\gcc0.gc0.count_d1_reg[13] [4]),
        .I2(Q[5]),
        .I3(\gcc0.gc0.count_d1_reg[13] [5]),
        .O(ram_empty_i_reg_1));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_d1_reg[13] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_d1_reg[13] [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gcc0.gc0.count_d1_reg[13] [6]),
        .I2(rd_pntr_plus1[7]),
        .I3(\gcc0.gc0.count_d1_reg[13] [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(D[6]),
        .I2(Q[7]),
        .I3(D[7]),
        .O(v1_reg_3[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count_d1_reg[13] [6]),
        .I2(Q[7]),
        .I3(\gcc0.gc0.count_d1_reg[13] [7]),
        .O(ram_empty_i_reg_2));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_d1_reg[13] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_d1_reg[13] [9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[8]),
        .I1(\gcc0.gc0.count_d1_reg[13] [8]),
        .I2(rd_pntr_plus1[9]),
        .I3(\gcc0.gc0.count_d1_reg[13] [9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(Q[8]),
        .I1(D[8]),
        .I2(Q[9]),
        .I3(D[9]),
        .O(v1_reg_3[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(Q[8]),
        .I1(\gcc0.gc0.count_d1_reg[13] [8]),
        .I2(Q[9]),
        .I3(\gcc0.gc0.count_d1_reg[13] [9]),
        .O(ram_empty_i_reg_3));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1 
       (.I0(Q[10]),
        .I1(\gcc0.gc0.count_d1_reg[13] [10]),
        .I2(Q[11]),
        .I3(\gcc0.gc0.count_d1_reg[13] [11]),
        .O(v1_reg[5]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[10]),
        .I1(\gcc0.gc0.count_d1_reg[13] [10]),
        .I2(rd_pntr_plus1[11]),
        .I3(\gcc0.gc0.count_d1_reg[13] [11]),
        .O(v1_reg_0[5]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1__1 
       (.I0(Q[10]),
        .I1(D[10]),
        .I2(Q[11]),
        .I3(D[11]),
        .O(v1_reg_3[5]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[5].gms.ms_i_1__2 
       (.I0(Q[10]),
        .I1(\gcc0.gc0.count_d1_reg[13] [10]),
        .I2(Q[11]),
        .I3(\gcc0.gc0.count_d1_reg[13] [11]),
        .O(ram_empty_i_reg_4));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[6].gms.ms_i_1 
       (.I0(Q[12]),
        .I1(\gcc0.gc0.count_d1_reg[13] [12]),
        .I2(Q[13]),
        .I3(\gcc0.gc0.count_d1_reg[13] [13]),
        .O(v1_reg[6]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[6].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[12]),
        .I1(\gcc0.gc0.count_d1_reg[13] [12]),
        .I2(rd_pntr_plus1[13]),
        .I3(\gcc0.gc0.count_d1_reg[13] [13]),
        .O(v1_reg_0[6]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[6].gms.ms_i_1__1 
       (.I0(Q[12]),
        .I1(D[12]),
        .I2(Q[13]),
        .I3(D[13]),
        .O(v1_reg_3[6]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[6].gms.ms_i_1__2 
       (.I0(Q[12]),
        .I1(\gcc0.gc0.count_d1_reg[13] [12]),
        .I2(Q[13]),
        .I3(\gcc0.gc0.count_d1_reg[13] [13]),
        .O(ram_empty_i_reg_5));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_axis_data_fifo_0_0_rd_fwft
   (out,
    E,
    \gc0.count_reg[0] ,
    ENB_I_4,
    O,
    \count_reg[7] ,
    \count_reg[11] ,
    \count_reg[14] ,
    m_axis_tvalid,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    m_axis_tready,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ,
    ram_empty_fb_i_reg,
    ENA_dly_D,
    axis_data_count);
  output out;
  output [0:0]E;
  output [0:0]\gc0.count_reg[0] ;
  output ENB_I_4;
  output [3:0]O;
  output [3:0]\count_reg[7] ;
  output [3:0]\count_reg[11] ;
  output [2:0]\count_reg[14] ;
  output m_axis_tvalid;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input m_axis_tready;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  input ram_empty_fb_i_reg;
  input ENA_dly_D;
  input [14:0]axis_data_count;

  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I_4;
  wire [3:0]O;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0__1;
  wire [14:0]axis_data_count;
  wire \count[11]_i_2_n_0 ;
  wire \count[11]_i_3_n_0 ;
  wire \count[11]_i_4_n_0 ;
  wire \count[11]_i_5_n_0 ;
  wire \count[14]_i_4_n_0 ;
  wire \count[14]_i_5_n_0 ;
  wire \count[14]_i_6_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count[3]_i_4_n_0 ;
  wire \count[3]_i_5_n_0 ;
  wire \count[3]_i_6_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire \count[7]_i_5_n_0 ;
  wire [3:0]\count_reg[11] ;
  wire \count_reg[11]_i_1_n_0 ;
  wire \count_reg[11]_i_1_n_1 ;
  wire \count_reg[11]_i_1_n_2 ;
  wire \count_reg[11]_i_1_n_3 ;
  wire [2:0]\count_reg[14] ;
  wire \count_reg[14]_i_3_n_2 ;
  wire \count_reg[14]_i_3_n_3 ;
  wire \count_reg[3]_i_1_n_0 ;
  wire \count_reg[3]_i_1_n_1 ;
  wire \count_reg[3]_i_1_n_2 ;
  wire \count_reg[3]_i_1_n_3 ;
  wire [3:0]\count_reg[7] ;
  wire \count_reg[7]_i_1_n_0 ;
  wire \count_reg[7]_i_1_n_1 ;
  wire \count_reg[7]_i_1_n_2 ;
  wire \count_reg[7]_i_1_n_3 ;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i_reg0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0__1;
  wire [0:0]\gc0.count_reg[0] ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [1:0]next_fwft_state;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire ram_empty_fb_i_reg;
  wire s_aclk;
  (* DONT_TOUCH *) wire user_valid;
  wire [3:2]\NLW_count_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[14]_i_3_O_UNCONNECTED ;

  assign out = user_valid;
  LUT4 #(
    .INIT(16'hAABA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(ENA_dly_D),
        .I1(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .I2(\gc0.count_reg[0] ),
        .I3(ram_empty_fb_i_reg),
        .O(ENB_I_4));
  LUT5 #(
    .INIT(32'hFFCB8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_fb_i_reg),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0__1));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0__1),
        .Q(aempty_fwft_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0__1),
        .Q(aempty_fwft_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[11]_i_2 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[11]),
        .O(\count[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[11]_i_3 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[10]),
        .O(\count[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[11]_i_4 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[9]),
        .O(\count[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[11]_i_5 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[8]),
        .O(\count[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[14]_i_4 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[14]),
        .O(\count[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[14]_i_5 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[13]),
        .O(\count[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[14]_i_6 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[12]),
        .O(\count[14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \count[3]_i_2 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .O(\count[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[3]_i_3 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[3]),
        .O(\count[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[3]_i_4 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[2]),
        .O(\count[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[3]_i_5 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[1]),
        .O(\count[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[3]_i_6 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[0]),
        .O(\count[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_2 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[7]),
        .O(\count[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_3 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[6]),
        .O(\count[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_4 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[5]),
        .O(\count[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_5 
       (.I0(user_valid),
        .I1(m_axis_tready),
        .I2(axis_data_count[4]),
        .O(\count[7]_i_5_n_0 ));
  CARRY4 \count_reg[11]_i_1 
       (.CI(\count_reg[7]_i_1_n_0 ),
        .CO({\count_reg[11]_i_1_n_0 ,\count_reg[11]_i_1_n_1 ,\count_reg[11]_i_1_n_2 ,\count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(axis_data_count[11:8]),
        .O(\count_reg[11] ),
        .S({\count[11]_i_2_n_0 ,\count[11]_i_3_n_0 ,\count[11]_i_4_n_0 ,\count[11]_i_5_n_0 }));
  CARRY4 \count_reg[14]_i_3 
       (.CI(\count_reg[11]_i_1_n_0 ),
        .CO({\NLW_count_reg[14]_i_3_CO_UNCONNECTED [3:2],\count_reg[14]_i_3_n_2 ,\count_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axis_data_count[13:12]}),
        .O({\NLW_count_reg[14]_i_3_O_UNCONNECTED [3],\count_reg[14] }),
        .S({1'b0,\count[14]_i_4_n_0 ,\count[14]_i_5_n_0 ,\count[14]_i_6_n_0 }));
  CARRY4 \count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[3]_i_1_n_0 ,\count_reg[3]_i_1_n_1 ,\count_reg[3]_i_1_n_2 ,\count_reg[3]_i_1_n_3 }),
        .CYINIT(\count[3]_i_2_n_0 ),
        .DI(axis_data_count[3:0]),
        .O(O),
        .S({\count[3]_i_3_n_0 ,\count[3]_i_4_n_0 ,\count[3]_i_5_n_0 ,\count[3]_i_6_n_0 }));
  CARRY4 \count_reg[7]_i_1 
       (.CI(\count_reg[3]_i_1_n_0 ),
        .CO({\count_reg[7]_i_1_n_0 ,\count_reg[7]_i_1_n_1 ,\count_reg[7]_i_1_n_2 ,\count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(axis_data_count[7:4]),
        .O(\count_reg[7] ),
        .S({\count[7]_i_2_n_0 ,\count[7]_i_3_n_0 ,\count[7]_i_4_n_0 ,\count[7]_i_5_n_0 }));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_i_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_i),
        .O(empty_fwft_i0__1));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0__1),
        .Q(empty_fwft_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_o_i_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_o_i),
        .O(empty_fwft_fb_o_i_reg0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i_reg0),
        .Q(empty_fwft_fb_o_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0__1),
        .Q(empty_fwft_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'h4555)) 
    \gc0.count_d1[13]_i_1 
       (.I0(ram_empty_fb_i_reg),
        .I1(m_axis_tready),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(\gc0.count_reg[0] ));
  LUT5 #(
    .INIT(32'h000000B0)) 
    \goreg_bm.dout_i[33]_i_1 
       (.I0(m_axis_tready),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] [1]),
        .I4(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] [0]),
        .O(E));
  LUT3 #(
    .INIT(8'hBA)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(m_axis_tready),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(m_axis_tready),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(user_valid),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_axis_data_fifo_0_0_rd_logic
   (out,
    \count_reg[14] ,
    p_8_out,
    axis_data_count,
    ENB_I,
    Q,
    ENB_I_0,
    ENB_I_1,
    ENB_I_2,
    E,
    v1_reg,
    v1_reg_3,
    ENB_I_4,
    m_axis_tvalid,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    cntr_en,
    ENA_dly_D,
    m_axis_tready,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ,
    ram_full_fb_i_reg,
    s_axis_tvalid,
    \gcc0.gc0.count_d1_reg[13] ,
    D);
  output out;
  output \count_reg[14] ;
  output p_8_out;
  output [14:0]axis_data_count;
  output ENB_I;
  output [13:0]Q;
  output ENB_I_0;
  output ENB_I_1;
  output ENB_I_2;
  output [0:0]E;
  output [6:0]v1_reg;
  output [6:0]v1_reg_3;
  output ENB_I_4;
  output m_axis_tvalid;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input cntr_en;
  input ENA_dly_D;
  input m_axis_tready;
  input [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  input ram_full_fb_i_reg;
  input s_axis_tvalid;
  input [13:0]\gcc0.gc0.count_d1_reg[13] ;
  input [13:0]D;

  wire [13:0]D;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_1;
  wire ENB_I_2;
  wire ENB_I_4;
  wire [13:0]Q;
  wire [14:0]axis_data_count;
  wire [6:0]\c2/v1_reg ;
  wire cntr_en;
  wire \count_reg[14] ;
  wire [13:0]\gcc0.gc0.count_d1_reg[13] ;
  wire \gr1.gr1_int.rfwft_n_10 ;
  wire \gr1.gr1_int.rfwft_n_11 ;
  wire \gr1.gr1_int.rfwft_n_12 ;
  wire \gr1.gr1_int.rfwft_n_13 ;
  wire \gr1.gr1_int.rfwft_n_14 ;
  wire \gr1.gr1_int.rfwft_n_15 ;
  wire \gr1.gr1_int.rfwft_n_16 ;
  wire \gr1.gr1_int.rfwft_n_17 ;
  wire \gr1.gr1_int.rfwft_n_18 ;
  wire \gr1.gr1_int.rfwft_n_4 ;
  wire \gr1.gr1_int.rfwft_n_5 ;
  wire \gr1.gr1_int.rfwft_n_6 ;
  wire \gr1.gr1_int.rfwft_n_7 ;
  wire \gr1.gr1_int.rfwft_n_8 ;
  wire \gr1.gr1_int.rfwft_n_9 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ;
  wire out;
  wire p_8_out;
  wire ram_full_fb_i_reg;
  wire rpntr_n_39;
  wire rpntr_n_40;
  wire rpntr_n_41;
  wire rpntr_n_42;
  wire rpntr_n_43;
  wire rpntr_n_44;
  wire rpntr_n_45;
  wire s_aclk;
  wire s_axis_tvalid;
  wire [6:0]v1_reg;
  wire [6:0]v1_reg_3;

  design_1_axis_data_fifo_0_0_dc_ss_fwft \gr1.gdcf.dc 
       (.O({\gr1.gr1_int.rfwft_n_4 ,\gr1.gr1_int.rfwft_n_5 ,\gr1.gr1_int.rfwft_n_6 ,\gr1.gr1_int.rfwft_n_7 }),
        .axis_data_count(axis_data_count),
        .cntr_en(cntr_en),
        .\count_reg[11] ({\gr1.gr1_int.rfwft_n_12 ,\gr1.gr1_int.rfwft_n_13 ,\gr1.gr1_int.rfwft_n_14 ,\gr1.gr1_int.rfwft_n_15 }),
        .\count_reg[13] ({\gr1.gr1_int.rfwft_n_16 ,\gr1.gr1_int.rfwft_n_17 ,\gr1.gr1_int.rfwft_n_18 }),
        .\count_reg[7] ({\gr1.gr1_int.rfwft_n_8 ,\gr1.gr1_int.rfwft_n_9 ,\gr1.gr1_int.rfwft_n_10 ,\gr1.gr1_int.rfwft_n_11 }),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .s_aclk(s_aclk));
  design_1_axis_data_fifo_0_0_rd_fwft \gr1.gr1_int.rfwft 
       (.E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_4(ENB_I_4),
        .O({\gr1.gr1_int.rfwft_n_4 ,\gr1.gr1_int.rfwft_n_5 ,\gr1.gr1_int.rfwft_n_6 ,\gr1.gr1_int.rfwft_n_7 }),
        .axis_data_count(axis_data_count),
        .\count_reg[11] ({\gr1.gr1_int.rfwft_n_12 ,\gr1.gr1_int.rfwft_n_13 ,\gr1.gr1_int.rfwft_n_14 ,\gr1.gr1_int.rfwft_n_15 }),
        .\count_reg[14] ({\gr1.gr1_int.rfwft_n_16 ,\gr1.gr1_int.rfwft_n_17 ,\gr1.gr1_int.rfwft_n_18 }),
        .\count_reg[7] ({\gr1.gr1_int.rfwft_n_8 ,\gr1.gr1_int.rfwft_n_9 ,\gr1.gr1_int.rfwft_n_10 ,\gr1.gr1_int.rfwft_n_11 }),
        .\gc0.count_reg[0] (p_8_out),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] ),
        .out(\count_reg[14] ),
        .ram_empty_fb_i_reg(out),
        .s_aclk(s_aclk));
  design_1_axis_data_fifo_0_0_rd_status_flags_ss \grss.rsts 
       (.E(p_8_out),
        .\gc0.count_d1_reg[0] (rpntr_n_39),
        .\gc0.count_d1_reg[10] (rpntr_n_44),
        .\gc0.count_d1_reg[12] (rpntr_n_45),
        .\gc0.count_d1_reg[2] (rpntr_n_40),
        .\gc0.count_d1_reg[4] (rpntr_n_41),
        .\gc0.count_d1_reg[6] (rpntr_n_42),
        .\gc0.count_d1_reg[8] (rpntr_n_43),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\c2/v1_reg ));
  design_1_axis_data_fifo_0_0_rd_bin_cntr rpntr
       (.D(D),
        .E(p_8_out),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .ENB_I_0(ENB_I_0),
        .ENB_I_1(ENB_I_1),
        .ENB_I_2(ENB_I_2),
        .Q(Q),
        .\gcc0.gc0.count_d1_reg[13] (\gcc0.gc0.count_d1_reg[13] ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .ram_empty_i_reg(rpntr_n_39),
        .ram_empty_i_reg_0(rpntr_n_40),
        .ram_empty_i_reg_1(rpntr_n_41),
        .ram_empty_i_reg_2(rpntr_n_42),
        .ram_empty_i_reg_3(rpntr_n_43),
        .ram_empty_i_reg_4(rpntr_n_44),
        .ram_empty_i_reg_5(rpntr_n_45),
        .s_aclk(s_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(\c2/v1_reg ),
        .v1_reg_3(v1_reg_3));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_axis_data_fifo_0_0_rd_status_flags_ss
   (out,
    \gc0.count_d1_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_d1_reg[4] ,
    \gc0.count_d1_reg[6] ,
    \gc0.count_d1_reg[8] ,
    \gc0.count_d1_reg[10] ,
    \gc0.count_d1_reg[12] ,
    v1_reg,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    E,
    ram_full_fb_i_reg,
    s_axis_tvalid);
  output out;
  input \gc0.count_d1_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input \gc0.count_d1_reg[4] ;
  input \gc0.count_d1_reg[6] ;
  input \gc0.count_d1_reg[8] ;
  input \gc0.count_d1_reg[10] ;
  input \gc0.count_d1_reg[12] ;
  input [6:0]v1_reg;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input [0:0]E;
  input ram_full_fb_i_reg;
  input s_axis_tvalid;

  wire [0:0]E;
  wire c2_n_0;
  wire comp0;
  wire \gc0.count_d1_reg[0] ;
  wire \gc0.count_d1_reg[10] ;
  wire \gc0.count_d1_reg[12] ;
  wire \gc0.count_d1_reg[2] ;
  wire \gc0.count_d1_reg[4] ;
  wire \gc0.count_d1_reg[6] ;
  wire \gc0.count_d1_reg[8] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_full_fb_i_reg;
  wire s_aclk;
  wire s_axis_tvalid;
  wire [6:0]v1_reg;

  assign out = ram_empty_fb_i;
  design_1_axis_data_fifo_0_0_compare_1 c1
       (.comp0(comp0),
        .\gc0.count_d1_reg[0] (\gc0.count_d1_reg[0] ),
        .\gc0.count_d1_reg[10] (\gc0.count_d1_reg[10] ),
        .\gc0.count_d1_reg[12] (\gc0.count_d1_reg[12] ),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gc0.count_d1_reg[6] (\gc0.count_d1_reg[6] ),
        .\gc0.count_d1_reg[8] (\gc0.count_d1_reg[8] ));
  design_1_axis_data_fifo_0_0_compare_2 c2
       (.E(E),
        .comp0(comp0),
        .out(ram_empty_fb_i),
        .ram_empty_i_reg(c2_n_0),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(v1_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_axis_data_fifo_0_0_reset_blk_ramfifo
   (out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    Q,
    s_aclk,
    s_aresetn);
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output [1:0]Q;
  input s_aclk;
  input s_aresetn;

  wire [1:0]Q;
  wire dest_rst;
  wire \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  wire inverted_reset;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  wire s_aclk;
  wire s_aresetn;
  wire [3:2]sckt_wr_rst_cc;
  wire wr_rst_busy_i;

  assign out = rst_d3;
  LUT2 #(
    .INIT(4'hE)) 
    \count[14]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\grstd1.grst_full.grst_f.rst_d3_reg_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_i),
        .Q(rst_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .Q(rst_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d2),
        .Q(rst_d3),
        .S(\grstd1.grst_full.grst_f.rst_d3_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(dest_rst),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(sckt_wr_rst_cc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[2]),
        .Q(sckt_wr_rst_cc[3]),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axis_data_fifo_0_0_xpm_cdc_sync_rst \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(s_aclk),
        .dest_rst(dest_rst),
        .src_rst(inverted_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst_i_1 
       (.I0(s_aresetn),
        .O(inverted_reset));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_rst_busy_i_inferred_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sckt_wr_rst_cc[3]),
        .I3(sckt_wr_rst_cc[2]),
        .O(wr_rst_busy_i));
endmodule

(* ORIG_REF_NAME = "updn_cntr" *) 
module design_1_axis_data_fifo_0_0_updn_cntr
   (axis_data_count,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    cntr_en,
    O,
    s_aclk,
    \count_reg[7]_0 ,
    \count_reg[11]_0 ,
    \count_reg[13]_0 );
  output [14:0]axis_data_count;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input cntr_en;
  input [3:0]O;
  input s_aclk;
  input [3:0]\count_reg[7]_0 ;
  input [3:0]\count_reg[11]_0 ;
  input [2:0]\count_reg[13]_0 ;

  wire [3:0]O;
  wire [14:0]axis_data_count;
  wire cntr_en;
  wire [3:0]\count_reg[11]_0 ;
  wire [2:0]\count_reg[13]_0 ;
  wire [3:0]\count_reg[7]_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire s_aclk;

  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(O[0]),
        .Q(axis_data_count[0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[11]_0 [2]),
        .Q(axis_data_count[10]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[11]_0 [3]),
        .Q(axis_data_count[11]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[13]_0 [0]),
        .Q(axis_data_count[12]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[13]_0 [1]),
        .Q(axis_data_count[13]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[13]_0 [2]),
        .Q(axis_data_count[14]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(O[1]),
        .Q(axis_data_count[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(O[2]),
        .Q(axis_data_count[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(O[3]),
        .Q(axis_data_count[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[7]_0 [0]),
        .Q(axis_data_count[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[7]_0 [1]),
        .Q(axis_data_count[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[7]_0 [2]),
        .Q(axis_data_count[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[7]_0 [3]),
        .Q(axis_data_count[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[11]_0 [0]),
        .Q(axis_data_count[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s_aclk),
        .CE(cntr_en),
        .D(\count_reg[11]_0 [1]),
        .Q(axis_data_count[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_axis_data_fifo_0_0_wr_bin_cntr
   (D,
    ENA_I,
    Q,
    ENA_I_0,
    ENA_I_1,
    ENA_I_2,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    p_19_out,
    s_aclk,
    ENA_dly_D,
    s_axis_tvalid,
    out);
  output [13:0]D;
  output ENA_I;
  output [13:0]Q;
  output ENA_I_0;
  output ENA_I_1;
  output ENA_I_2;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input p_19_out;
  input s_aclk;
  input ENA_dly_D;
  input s_axis_tvalid;
  input out;

  wire [13:0]D;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_I_1;
  wire ENA_I_2;
  wire ENA_dly_D;
  wire [13:0]Q;
  wire \gcc0.gc0.count[0]_i_2_n_0 ;
  wire \gcc0.gc0.count_reg[0]_i_1_n_0 ;
  wire \gcc0.gc0.count_reg[0]_i_1_n_1 ;
  wire \gcc0.gc0.count_reg[0]_i_1_n_2 ;
  wire \gcc0.gc0.count_reg[0]_i_1_n_3 ;
  wire \gcc0.gc0.count_reg[0]_i_1_n_4 ;
  wire \gcc0.gc0.count_reg[0]_i_1_n_5 ;
  wire \gcc0.gc0.count_reg[0]_i_1_n_6 ;
  wire \gcc0.gc0.count_reg[0]_i_1_n_7 ;
  wire \gcc0.gc0.count_reg[12]_i_1_n_3 ;
  wire \gcc0.gc0.count_reg[12]_i_1_n_6 ;
  wire \gcc0.gc0.count_reg[12]_i_1_n_7 ;
  wire \gcc0.gc0.count_reg[4]_i_1_n_0 ;
  wire \gcc0.gc0.count_reg[4]_i_1_n_1 ;
  wire \gcc0.gc0.count_reg[4]_i_1_n_2 ;
  wire \gcc0.gc0.count_reg[4]_i_1_n_3 ;
  wire \gcc0.gc0.count_reg[4]_i_1_n_4 ;
  wire \gcc0.gc0.count_reg[4]_i_1_n_5 ;
  wire \gcc0.gc0.count_reg[4]_i_1_n_6 ;
  wire \gcc0.gc0.count_reg[4]_i_1_n_7 ;
  wire \gcc0.gc0.count_reg[8]_i_1_n_0 ;
  wire \gcc0.gc0.count_reg[8]_i_1_n_1 ;
  wire \gcc0.gc0.count_reg[8]_i_1_n_2 ;
  wire \gcc0.gc0.count_reg[8]_i_1_n_3 ;
  wire \gcc0.gc0.count_reg[8]_i_1_n_4 ;
  wire \gcc0.gc0.count_reg[8]_i_1_n_5 ;
  wire \gcc0.gc0.count_reg[8]_i_1_n_6 ;
  wire \gcc0.gc0.count_reg[8]_i_1_n_7 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire p_19_out;
  wire s_aclk;
  wire s_axis_tvalid;
  wire [3:1]\NLW_gcc0.gc0.count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gcc0.gc0.count_reg[12]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(ENA_dly_D),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(s_axis_tvalid),
        .I4(out),
        .O(ENA_I));
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axis_tvalid),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(ENA_I_0));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(ENA_dly_D),
        .I1(Q[13]),
        .I2(out),
        .I3(s_axis_tvalid),
        .I4(Q[12]),
        .O(ENA_I_1));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axis_tvalid),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(ENA_I_2));
  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_2 
       (.I0(D[0]),
        .O(\gcc0.gc0.count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[0]),
        .Q(Q[0]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[10] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[10]),
        .Q(Q[10]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[11] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[11]),
        .Q(Q[11]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[12] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[12]),
        .Q(Q[12]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[13] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[13]),
        .Q(Q[13]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[1]),
        .Q(Q[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[2]),
        .Q(Q[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[3]),
        .Q(Q[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[4]),
        .Q(Q[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[5]),
        .Q(Q[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[6]),
        .Q(Q[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[7]),
        .Q(Q[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[8]),
        .Q(Q[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[9] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(D[9]),
        .Q(Q[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[0]_i_1_n_7 ),
        .Q(D[0]),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  CARRY4 \gcc0.gc0.count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\gcc0.gc0.count_reg[0]_i_1_n_0 ,\gcc0.gc0.count_reg[0]_i_1_n_1 ,\gcc0.gc0.count_reg[0]_i_1_n_2 ,\gcc0.gc0.count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\gcc0.gc0.count_reg[0]_i_1_n_4 ,\gcc0.gc0.count_reg[0]_i_1_n_5 ,\gcc0.gc0.count_reg[0]_i_1_n_6 ,\gcc0.gc0.count_reg[0]_i_1_n_7 }),
        .S({D[3:1],\gcc0.gc0.count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[10] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[8]_i_1_n_5 ),
        .Q(D[10]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[11] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[8]_i_1_n_4 ),
        .Q(D[11]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[12] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[12]_i_1_n_7 ),
        .Q(D[12]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  CARRY4 \gcc0.gc0.count_reg[12]_i_1 
       (.CI(\gcc0.gc0.count_reg[8]_i_1_n_0 ),
        .CO({\NLW_gcc0.gc0.count_reg[12]_i_1_CO_UNCONNECTED [3:1],\gcc0.gc0.count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gcc0.gc0.count_reg[12]_i_1_O_UNCONNECTED [3:2],\gcc0.gc0.count_reg[12]_i_1_n_6 ,\gcc0.gc0.count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,D[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[13] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[12]_i_1_n_6 ),
        .Q(D[13]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[0]_i_1_n_6 ),
        .Q(D[1]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[0]_i_1_n_5 ),
        .Q(D[2]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[0]_i_1_n_4 ),
        .Q(D[3]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[4]_i_1_n_7 ),
        .Q(D[4]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  CARRY4 \gcc0.gc0.count_reg[4]_i_1 
       (.CI(\gcc0.gc0.count_reg[0]_i_1_n_0 ),
        .CO({\gcc0.gc0.count_reg[4]_i_1_n_0 ,\gcc0.gc0.count_reg[4]_i_1_n_1 ,\gcc0.gc0.count_reg[4]_i_1_n_2 ,\gcc0.gc0.count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gcc0.gc0.count_reg[4]_i_1_n_4 ,\gcc0.gc0.count_reg[4]_i_1_n_5 ,\gcc0.gc0.count_reg[4]_i_1_n_6 ,\gcc0.gc0.count_reg[4]_i_1_n_7 }),
        .S(D[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[4]_i_1_n_6 ),
        .Q(D[5]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[4]_i_1_n_5 ),
        .Q(D[6]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[4]_i_1_n_4 ),
        .Q(D[7]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[8]_i_1_n_7 ),
        .Q(D[8]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  CARRY4 \gcc0.gc0.count_reg[8]_i_1 
       (.CI(\gcc0.gc0.count_reg[4]_i_1_n_0 ),
        .CO({\gcc0.gc0.count_reg[8]_i_1_n_0 ,\gcc0.gc0.count_reg[8]_i_1_n_1 ,\gcc0.gc0.count_reg[8]_i_1_n_2 ,\gcc0.gc0.count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gcc0.gc0.count_reg[8]_i_1_n_4 ,\gcc0.gc0.count_reg[8]_i_1_n_5 ,\gcc0.gc0.count_reg[8]_i_1_n_6 ,\gcc0.gc0.count_reg[8]_i_1_n_7 }),
        .S(D[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[9] 
       (.C(s_aclk),
        .CE(p_19_out),
        .D(\gcc0.gc0.count_reg[8]_i_1_n_6 ),
        .Q(D[9]),
        .R(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_axis_data_fifo_0_0_wr_logic
   (out,
    D,
    ENA_I,
    Q,
    ENA_I_0,
    ENA_I_1,
    ENA_I_2,
    cntr_en,
    WEA,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    s_axis_tready,
    v1_reg,
    v1_reg_3,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    ENA_dly_D,
    s_axis_tvalid,
    \gpregsm1.user_valid_reg ,
    m_axis_tready,
    p_8_out,
    \grstd1.grst_full.grst_f.rst_d3_reg );
  output out;
  output [13:0]D;
  output ENA_I;
  output [13:0]Q;
  output ENA_I_0;
  output ENA_I_1;
  output ENA_I_2;
  output cntr_en;
  output [1:0]WEA;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  output s_axis_tready;
  input [6:0]v1_reg;
  input [6:0]v1_reg_3;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input ENA_dly_D;
  input s_axis_tvalid;
  input \gpregsm1.user_valid_reg ;
  input m_axis_tready;
  input p_8_out;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;

  wire [13:0]D;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_I_1;
  wire ENA_I_2;
  wire ENA_dly_D;
  wire [13:0]Q;
  wire [1:0]WEA;
  wire cntr_en;
  wire \gpregsm1.user_valid_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire m_axis_tready;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire p_19_out;
  wire p_8_out;
  wire s_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [6:0]v1_reg;
  wire [6:0]v1_reg_3;

  design_1_axis_data_fifo_0_0_wr_status_flags_ss \gwss.wsts 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .WEA(WEA),
        .cntr_en(cntr_en),
        .\gpregsm1.user_valid_reg (\gpregsm1.user_valid_reg ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .m_axis_tready(m_axis_tready),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .p_19_out(p_19_out),
        .p_8_out(p_8_out),
        .s_aclk(s_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(v1_reg),
        .v1_reg_3(v1_reg_3));
  design_1_axis_data_fifo_0_0_wr_bin_cntr wpntr
       (.D(D),
        .ENA_I(ENA_I),
        .ENA_I_0(ENA_I_0),
        .ENA_I_1(ENA_I_1),
        .ENA_I_2(ENA_I_2),
        .ENA_dly_D(ENA_dly_D),
        .Q(Q),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ),
        .out(out),
        .p_19_out(p_19_out),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_axis_data_fifo_0_0_wr_status_flags_ss
   (out,
    cntr_en,
    p_19_out,
    WEA,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    s_axis_tready,
    v1_reg,
    v1_reg_3,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    s_aclk,
    s_axis_tvalid,
    \gpregsm1.user_valid_reg ,
    m_axis_tready,
    p_8_out,
    \grstd1.grst_full.grst_f.rst_d3_reg );
  output out;
  output cntr_en;
  output p_19_out;
  output [1:0]WEA;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  output s_axis_tready;
  input [6:0]v1_reg;
  input [6:0]v1_reg_3;
  input \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  input s_aclk;
  input s_axis_tvalid;
  input \gpregsm1.user_valid_reg ;
  input m_axis_tready;
  input p_8_out;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire [1:0]WEA;
  wire cntr_en;
  wire comp0;
  wire \gpregsm1.user_valid_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire m_axis_tready;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire p_19_out;
  wire p_8_out;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb__5;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire s_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [6:0]v1_reg;
  wire [6:0]v1_reg_3;

  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(WEA[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(WEA[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__0 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ));
  design_1_axis_data_fifo_0_0_compare c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  design_1_axis_data_fifo_0_0_compare_0 c1
       (.comp0(comp0),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(ram_full_fb_i),
        .p_8_out(p_8_out),
        .ram_full_comb__5(ram_full_comb__5),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg_3(v1_reg_3));
  LUT4 #(
    .INIT(16'hB444)) 
    \count[14]_i_2 
       (.I0(ram_full_fb_i),
        .I1(s_axis_tvalid),
        .I2(\gpregsm1.user_valid_reg ),
        .I3(m_axis_tready),
        .O(cntr_en));
  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[13]_i_1 
       (.I0(s_axis_tvalid),
        .I1(ram_full_fb_i),
        .O(p_19_out));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb__5),
        .Q(ram_full_fb_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb__5),
        .Q(ram_full_i),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_INST_0
       (.I0(ram_full_i),
        .O(s_axis_tready));
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
