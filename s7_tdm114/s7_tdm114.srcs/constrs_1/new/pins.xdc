
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets design_1_i/clk_wiz_1/inst/clk_in1_design_1_clk_wiz_1_0];



set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[2] }]; #IO_L4P_T0_D04_14 Sch=ja_p[1]
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[4] }]; #IO_L4N_T0_D05_14 Sch=ja_n[1]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[6] }]; #IO_L5P_T0_D06_14 Sch=ja_p[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[8] }]; #IO_L5N_T0_D07_14 Sch=ja_n[2]
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[3] }]; #IO_L7P_T1_D09_14 Sch=ja_p[3]
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[5] }]; #IO_L7N_T1_D10_14 Sch=ja_n[3]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[7] }]; #IO_L8P_T1_D11_14 Sch=ja_p[4]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[9] }]; #IO_L8N_T1_D12_14 Sch=ja_n[4]

# PMOD Header JB
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[0] }]; #IO_L9P_T1_DQS_14 Sch=jb_p[1]
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { line_valid_in_0}]; #IO_L9N_T1_DQS_D13_14 Sch=jb_n[1]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { IIC_0_sda_io }]; #IO_L10P_T1_D14_14 Sch=jb_p[2]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { pclk_0 }]; #IO_L10N_T1_D15_14 Sch=jb_n[2]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { pixel_in_0[1]  }]; #IO_L11P_T1_SRCC_14 Sch=jb_p[3]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { frame_valid_in_0 }]; #IO_L11N_T1_SRCC_14 Sch=jb_n[3]
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { IIC_0_scl_io }]; #IO_L12P_T1_MRCC_14 Sch=jb_p[4]
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { clk_out3_0 }]; #IO_L12N_T1_MRCC_14 Sch=jb_n[4]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk_0_IBUF];

 
set_property -dict {PACKAGE_PIN U15  } [get_ports {ALI3_0_ali_data_p[0]}];  # "M15.PMOD1_D0_N"
set_property -dict {PACKAGE_PIN V16  } [get_ports {ALI3_0_ali_data_n[0]}];  # "L15.PMOD1_D0_P"
set_property -dict {PACKAGE_PIN U17  } [get_ports {ALI3_0_ali_data_p[1]}];  # "M14.PMOD1_D1_N"
set_property -dict {PACKAGE_PIN U18  } [get_ports {ALI3_0_ali_data_n[1]}];  # "L14.PMOD1_D1_P"
set_property -dict {PACKAGE_PIN U16  } [get_ports {ALI3_0_ali_data_p[2]}];  # "L13.PMOD1_D2_N"
set_property -dict {PACKAGE_PIN P13  } [get_ports {ALI3_0_ali_data_n[2]}];  # "K13.PMOD1_D2_P"
set_property -dict {PACKAGE_PIN R13  } [get_ports {ALI3_0_ali_data_p[3]}];  # "N14.PMOD1_D3_N"
set_property -dict {PACKAGE_PIN V14  } [get_ports {ALI3_0_ali_data_p[3]}];  # "N13.PMOD1_D3_P"


set_property -dict {PACKAGE_PIN V15  } [get_ports {ALI3_0_ali_clk_n     }];  # "M15.PMOD1_D0_N"
set_property -dict {PACKAGE_PIN U12  } [get_ports {ALI3_0_ali_clk_p     }];  # "L15.PMOD1_D0_P"
#set_property PACKAGE_PIN M14 [get_ports {PMOD1_D1_N     }];  # "M14.PMOD1_D1_N"
#set_property PACKAGE_PIN L14 [get_ports {PMOD1_D1_P     }];  # "L14.PMOD1_D1_P"
#set_property PACKAGE_PIN L13 [get_ports {PMOD1_D2_N     }];  # "L13.PMOD1_D2_N"
set_property -dict {PACKAGE_PIN R11 } [get_ports {ALI3_0_ali_rst_n     }];  # "K13.PMOD1_D2_P"
#set_property PACKAGE_PIN N14 [get_ports {PMOD1_D3_N     }];  # "N14.PMOD1_D3_N"
#set_property PACKAGE_PIN N13 [get_ports {PMOD1_D3_P     }];  # "N13.PMOD1_D3_P"

set_property IOSTANDARD TMDS_33   [get_ports {ALI3_0_ali_data_n[0]}];  # "M15.PMOD1_D0_N"
set_property IOSTANDARD TMDS_33   [get_ports {ALI3_0_ali_data_p[0]}];  # "L15.PMOD1_D0_P"
set_property IOSTANDARD TMDS_33   [get_ports {ALI3_0_ali_data_n[1]}];  # "M14.PMOD1_D1_N"
set_property IOSTANDARD TMDS_33   [get_ports {ALI3_0_ali_data_p[1]}];  # "L14.PMOD1_D1_P"
set_property IOSTANDARD TMDS_33   [get_ports {ALI3_0_ali_data_n[2]}];  # "L13.PMOD1_D2_N"
set_property IOSTANDARD TMDS_33   [get_ports {ALI3_0_ali_data_p[2]}];  # "K13.PMOD1_D2_P"
set_property IOSTANDARD TMDS_33   [get_ports {ALI3_0_ali_data_n[3]}];  # "N14.PMOD1_D3_N"
set_property IOSTANDARD TMDS_33   [get_ports {ALI3_0_ali_data_p[3]}];  # "N13.PMOD1_D3_P"
set_property IOSTANDARD TMDS_33  [get_ports {ALI3_0_ali_clk_n}];  # "P14.PMOD2_D0_N"
set_property IOSTANDARD TMDS_33  [get_ports {ALI3_0_ali_clk_p}];  # "P13.PMOD2_D0_P"
set_property IOSTANDARD LVCMOS33 [get_ports {ALI3_0_ali_rst_n}];  # "P15.PMOD2_D2_P"

## PMOD Header JC
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { jc[0] }]; #IO_L18P_T2_A12_D28_14 Sch=jc1/ck_io[41]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { jc[1] }]; #IO_L18N_T2_A11_D27_14 Sch=jc2/ck_io[40]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { jc[2] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=jc3/ck_io[39]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { jc[3] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=jc4/ck_io[38]
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { jc[4] }]; #IO_L16P_T2_CSI_B_14 Sch=jc7/ck_io[37]
#set_property -dict { PACKAGE_PIN P13   IOSTANDARD LVCMOS33 } [get_ports { jc[5] }]; #IO_L19P_T3_A10_D26_14 Sch=jc8/ck_io[36]
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { jc[6] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=jc9/ck_io[35]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L20P_T3_A08_D24_14 Sch=jc10/ck_io[34]

## PMOD Header JD
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { jd[0] }]; #IO_L20N_T3_A07_D23_14 Sch=jd1/ck_io[33]
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { jd[1] }]; #IO_L21P_T3_DQS_14 Sch=jd2/ck_io[32]
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { jd[2] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=jd3/ck_io[31]
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { jd[3] }]; #IO_L22P_T3_A05_D21_14 Sch=jd4/ck_io[30]
#set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { jd[4] }]; #IO_L22N_T3_A04_D20_14 Sch=jd7/ck_io[29]
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { jd[5] }]; #IO_L23P_T3_A03_D19_14 Sch=jd8/ck_io[28]
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { jd[6] }]; #IO_L23N_T3_A02_D18_14 Sch=jd9/ck_io[27]
#set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { jd[7] }]; #IO_L24P_T3_A01_D17_14 Sch=jd10/ck_io[26]