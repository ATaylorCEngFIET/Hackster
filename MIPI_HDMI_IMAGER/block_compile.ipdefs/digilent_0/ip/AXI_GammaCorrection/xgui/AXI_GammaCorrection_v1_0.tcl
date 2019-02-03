# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "kAXI_InputDataWidth" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "kInputColorWidth" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "kAXI_OutputDataWidth" -parent ${Page_0} -widget comboBox

  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -widget comboBox
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -widget comboBox

}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.kAXI_InputDataWidth { PARAM_VALUE.kAXI_InputDataWidth } {
	# Procedure called to update kAXI_InputDataWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kAXI_InputDataWidth { PARAM_VALUE.kAXI_InputDataWidth } {
	# Procedure called to validate kAXI_InputDataWidth
	return true
}

proc update_PARAM_VALUE.kAXI_OutputDataWidth { PARAM_VALUE.kAXI_OutputDataWidth } {
	# Procedure called to update kAXI_OutputDataWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kAXI_OutputDataWidth { PARAM_VALUE.kAXI_OutputDataWidth } {
	# Procedure called to validate kAXI_OutputDataWidth
	return true
}

proc update_PARAM_VALUE.kInputColorWidth { PARAM_VALUE.kInputColorWidth } {
	# Procedure called to update kInputColorWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kInputColorWidth { PARAM_VALUE.kInputColorWidth } {
	# Procedure called to validate kInputColorWidth
	return true
}


proc update_MODELPARAM_VALUE.kAXI_InputDataWidth { MODELPARAM_VALUE.kAXI_InputDataWidth PARAM_VALUE.kAXI_InputDataWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kAXI_InputDataWidth}] ${MODELPARAM_VALUE.kAXI_InputDataWidth}
}

proc update_MODELPARAM_VALUE.kAXI_OutputDataWidth { MODELPARAM_VALUE.kAXI_OutputDataWidth PARAM_VALUE.kAXI_OutputDataWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kAXI_OutputDataWidth}] ${MODELPARAM_VALUE.kAXI_OutputDataWidth}
}

proc update_MODELPARAM_VALUE.kInputColorWidth { MODELPARAM_VALUE.kInputColorWidth PARAM_VALUE.kInputColorWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kInputColorWidth}] ${MODELPARAM_VALUE.kInputColorWidth}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

