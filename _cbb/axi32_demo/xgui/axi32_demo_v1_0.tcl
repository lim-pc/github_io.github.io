# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "addrwidth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "datawidth" -parent ${Page_0}


}

proc update_PARAM_VALUE.addrwidth { PARAM_VALUE.addrwidth } {
	# Procedure called to update addrwidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.addrwidth { PARAM_VALUE.addrwidth } {
	# Procedure called to validate addrwidth
	return true
}

proc update_PARAM_VALUE.datawidth { PARAM_VALUE.datawidth } {
	# Procedure called to update datawidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.datawidth { PARAM_VALUE.datawidth } {
	# Procedure called to validate datawidth
	return true
}


proc update_MODELPARAM_VALUE.datawidth { MODELPARAM_VALUE.datawidth PARAM_VALUE.datawidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.datawidth}] ${MODELPARAM_VALUE.datawidth}
}

proc update_MODELPARAM_VALUE.addrwidth { MODELPARAM_VALUE.addrwidth PARAM_VALUE.addrwidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.addrwidth}] ${MODELPARAM_VALUE.addrwidth}
}

