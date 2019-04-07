# Automatically created by Blue Pearl Visual Verification Suite Version 2018.4.51162 02/12/2019 15:40. Windows (64-bit). on Tue Mar 19 11:17:59 2019
# SDC formatting set by user options
#   Split Vectors: yes
#   Add _reg To Register Names: yes
#   Generate Exceptions containing get_nets: no
#   Expand Vector based Q ports: yes
#   Generate Exceptions containing through constraints: yes
#   Comment out set_hierarchy_separator: yes
#   Generate set_clock_groups: yes
#   Use Source Clock in create_generated_clock command: yes
#   Generate TCL Variable for buses: no
#   Insert newlines for readability into TCL: no
#   Combine Constraints when possible: no

#set_hierarchy_separator "."

# Templates for create_clock commands.
# Please enter the correct clock period in the create_clock commands.
create_clock -period 10.0 -name pclk_0 [get_ports pclk_0]
create_clock -period 10.0 -name sys_clock [get_ports sys_clock]
create_generated_clock -source pclk_0 -name design_1_i.zed_ali3_controller_0.U0.zed_ali3_controller_core_l.clock_generator_serdes.mmcmout_x1 [get_pins design_1_i.zed_ali3_controller_0.U0.zed_ali3_controller_core_l.clock_generator_serdes.\loop8.tx_mmcm_adv_inst\.CLKOUT2]
create_generated_clock -source sys_clock -name design_1_i.clk_wiz_0.inst.clk_out1_design_1_clk_wiz_0_0 -divide_by 3.0 -multiply_by 25.0 [get_pins design_1_i.clk_wiz_0.inst.mmcm_adv_inst.CLKOUT0]
create_generated_clock -source sys_clock -name design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.pll_clk3_out -divide_by 48.0 -multiply_by 325.0 [get_pins design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.plle2_i.CLKOUT3]
create_generated_clock -source sys_clock -name design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.clk_pll_i -divide_by 48.0 -multiply_by 325.0 [get_pins design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.\gen_ui_extra_clocks.mmcm_i\.CLKFBOUT]
create_generated_clock -source sys_clock -name design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.mmcm_ps_clk_bufg_in -divide_by 96.0 -multiply_by 325.0 [get_pins design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.\gen_ui_extra_clocks.mmcm_i\.CLKOUT5]
create_generated_clock -source sys_clock -name design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.clk_div2_bufg_in -divide_by 48.0 -multiply_by 325.0 [get_pins design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.\gen_ui_extra_clocks.mmcm_i\.CLKOUT6]
create_generated_clock -source sys_clock -name design_1_i.clk_wiz_0.inst.clk_out2_design_1_clk_wiz_0_0 -divide_by 3.0 -multiply_by 50.0 [get_pins design_1_i.clk_wiz_0.inst.mmcm_adv_inst.CLKOUT1]

set_clock_groups -asynchronous -name {pclk_0_group} -group {pclk_0 design_1_i.zed_ali3_controller_0.U0.zed_ali3_controller_core_l.clock_generator_serdes.mmcmout_x1}
set_clock_groups -asynchronous -name {sys_clock_group} -group {sys_clock design_1_i.clk_wiz_0.inst.clk_out1_design_1_clk_wiz_0_0 design_1_i.clk_wiz_0.inst.clk_out2_design_1_clk_wiz_0_0 design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.pll_clk3_out design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.clk_pll_i design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.mmcm_ps_clk_bufg_in design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.clk_div2_bufg_in}


# Templates for set_input_delay/set_output_delay commands.
# Port: ALI3_0_ali_clk_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ALI3_0_ali_clk_n]
# Port: ALI3_0_ali_clk_p's related clock could not be determined.
# set_max_delay 0.0 [get_ports ALI3_0_ali_clk_p]
# Port: ALI3_0_ali_data_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ALI3_0_ali_data_n]
# Port: ALI3_0_ali_data_p's related clock could not be determined.
# set_max_delay 0.0 [get_ports ALI3_0_ali_data_p]
# Port: ALI3_0_ali_rst_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ALI3_0_ali_rst_n]
set_input_delay 0.0 -max -clock design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.clk_pll_i [get_ports IIC_0_scl_io]
# Port: IIC_0_scl_io's related clock could not be determined when treated as an output.
# set_max_delay 0.0 [get_ports IIC_0_scl_io]
set_input_delay 0.0 -max -clock design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.clk_pll_i [get_ports IIC_0_sda_io]
# Port: IIC_0_sda_io's related clock could not be determined when treated as an output.
# set_max_delay 0.0 [get_ports IIC_0_sda_io]
# Port: clk_out3_0's related clock could not be determined.
# set_max_delay 0.0 [get_ports clk_out3_0]
# Port: ddr3_sdram_addr's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_addr]
# Port: ddr3_sdram_ba's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_ba]
# Port: ddr3_sdram_cas_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_cas_n]
# Port: ddr3_sdram_ck_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_ck_n]
# Port: ddr3_sdram_ck_p's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_ck_p]
# Port: ddr3_sdram_cke's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_cke]
# Port: ddr3_sdram_cs_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_cs_n]
# Port: ddr3_sdram_dm's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_dm]
# Port: ddr3_sdram_dq's related clock could not be determined when treated as an input.
# set_max_delay 0.0 [get_ports ddr3_sdram_dq]
# Port: ddr3_sdram_dq's related clock could not be determined when treated as an output.
# set_max_delay 0.0 [get_ports ddr3_sdram_dq]
# Port: ddr3_sdram_dqs_n's related clock could not be determined when treated as an input.
# set_max_delay 0.0 [get_ports ddr3_sdram_dqs_n]
# Port: ddr3_sdram_dqs_n's related clock could not be determined when treated as an output.
# set_max_delay 0.0 [get_ports ddr3_sdram_dqs_n]
# Port: ddr3_sdram_dqs_p's related clock could not be determined when treated as an input.
# set_max_delay 0.0 [get_ports ddr3_sdram_dqs_p]
# Port: ddr3_sdram_dqs_p's related clock could not be determined when treated as an output.
# set_max_delay 0.0 [get_ports ddr3_sdram_dqs_p]
# Port: ddr3_sdram_odt's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_odt]
# Port: ddr3_sdram_ras_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_ras_n]
# Port: ddr3_sdram_reset_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_reset_n]
# Port: ddr3_sdram_we_n's related clock could not be determined.
# set_max_delay 0.0 [get_ports ddr3_sdram_we_n]
# Port: frame_valid_in_0's related clock could not be determined.
# set_max_delay 0.0 [get_ports frame_valid_in_0]
# Port: line_valid_in_0's related clock could not be determined.
# set_max_delay 0.0 [get_ports line_valid_in_0]
# Port: pixel_in_0's related clock could not be determined.
# set_max_delay 0.0 [get_ports pixel_in_0]
set_input_delay 0.0 -max -clock design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.clk_pll_i [get_ports usb_uart_rxd]
set_output_delay 0.0 -max -clock design_1_i.mig_7series_0.u_design_1_mig_7series_0_0_mig.u_ddr3_infrastructure.clk_pll_i [get_ports usb_uart_txd]
