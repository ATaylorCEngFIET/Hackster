set_property PACKAGE_PIN V20 [get_ports sdata_0_out_0]

set_property IOSTANDARD LVCMOS18 [get_ports sdata_0_out_0]

set_property IOSTANDARD LVCMOS18 [get_ports lrclk_out_0]
set_property IOSTANDARD LVCMOS18 [get_ports sclk_out_0]
set_property PACKAGE_PIN P20 [get_ports sclk_out_0]
set_property PACKAGE_PIN G14 [get_ports lrclk_out_0]

set_property IOSTANDARD LVCMOS18 [get_ports sdata_0_in_0]

connect_debug_port dbg_hub/clk [get_nets clk]

set_property IOSTANDARD LVCMOS18 [get_ports FCLK_CLK1_0]
set_property PACKAGE_PIN N20 [get_ports FCLK_CLK1_0]

set_property PACKAGE_PIN W20 [get_ports sdata_0_in_0]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets FCLK_CLK1_0_OBUF]
