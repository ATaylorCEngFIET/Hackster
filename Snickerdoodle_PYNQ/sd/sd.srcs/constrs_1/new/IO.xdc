#------------------------------------------------------------------------------
# HDMI In
#------------------------------------------------------------------------------
# Data
set_property PACKAGE_PIN L14 [get_ports {HDMI_RX_DATA[0]}];     # JA2.5
set_property PACKAGE_PIN L15 [get_ports {HDMI_RX_DATA[1]}];     # JA2.7
set_property PACKAGE_PIN K16 [get_ports {HDMI_RX_DATA[2]}];     # JA2.8
set_property PACKAGE_PIN E18 [get_ports {HDMI_RX_DATA[3]}];     # JA1.5
set_property PACKAGE_PIN D19 [get_ports {HDMI_RX_DATA[4]}];     # JA1.8
set_property PACKAGE_PIN E19 [get_ports {HDMI_RX_DATA[5]}];     # JA1.7
set_property PACKAGE_PIN F16 [get_ports {HDMI_RX_DATA[6]}];     # JA1.11
set_property PACKAGE_PIN D20 [get_ports {HDMI_RX_DATA[7]}];     # JA1.6
set_property PACKAGE_PIN M14 [get_ports {HDMI_RX_DATA[8]}];     # JA2.11
set_property PACKAGE_PIN J16 [get_ports {HDMI_RX_DATA[9]}];     # JA2.6
set_property PACKAGE_PIN F17 [get_ports {HDMI_RX_DATA[10]}];    # JA1.13
set_property PACKAGE_PIN C20 [get_ports {HDMI_RX_DATA[11]}];    # JA1.14
set_property PACKAGE_PIN E17 [get_ports {HDMI_RX_DATA[12]}];    # JA1.17
set_property PACKAGE_PIN B20 [get_ports {HDMI_RX_DATA[13]}];    # JA1.12
set_property PACKAGE_PIN B19 [get_ports {HDMI_RX_DATA[14]}];    # JA1.20
set_property PACKAGE_PIN D18 [get_ports {HDMI_RX_DATA[15]}];    # JA1.19
set_property PACKAGE_PIN H15 [get_ports {HDMI_RX_DATA[16]}];    # JA2.14
set_property PACKAGE_PIN M15 [get_ports {HDMI_RX_DATA[17]}];    # JA2.13
set_property PACKAGE_PIN A20 [get_ports {HDMI_RX_DATA[18]}];    # JA1.18
set_property PACKAGE_PIN G15 [get_ports {HDMI_RX_DATA[19]}];    # JA2.12
set_property PACKAGE_PIN F20 [get_ports {HDMI_RX_DATA[20]}];    # JA1.25
set_property PACKAGE_PIN F19 [get_ports {HDMI_RX_DATA[21]}];    # JA1.23
set_property PACKAGE_PIN G19 [get_ports {HDMI_RX_DATA[22]}];    # JA1.26
set_property PACKAGE_PIN G20 [get_ports {HDMI_RX_DATA[23]}];    # JA1.24

set_property PACKAGE_PIN H17 [get_ports HDMI_RX_DE];            # JA1.36
set_property PACKAGE_PIN G17 [get_ports HDMI_RX_HS];            # JA1.32
set_property PACKAGE_PIN G18 [get_ports HDMI_RX_VS];            # JA1.30
set_property PACKAGE_PIN H16 [get_ports HDMI_RX_PCLK];          # JA1.38

create_clock -add -period 6.060 -name hdmi_rxclk [get_ports HDMI_RX_PCLK]

set_property IOSTANDARD LVCMOS18 [get_ports [list {HDMI_RX_DATA[*]} HDMI_RX_DE HDMI_RX_HS HDMI_RX_VS HDMI_RX_PCLK]]