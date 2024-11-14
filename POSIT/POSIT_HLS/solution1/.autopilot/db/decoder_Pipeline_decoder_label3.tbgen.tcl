set moduleName decoder_Pipeline_decoder_label3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {decoder_Pipeline_decoder_label3}
set C_modelType { void 0 }
set C_modelArgList {
	{ expo2_V int 2 regular  }
	{ exponent2_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "expo2_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "exponent2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ expo2_V sc_in sc_lv 2 signal 0 } 
	{ exponent2_out sc_out sc_lv 32 signal 1 } 
	{ exponent2_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ grp_fu_417_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_417_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_417_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_417_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_417_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_425_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_425_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_425_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_425_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1675_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1675_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1675_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_1678_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_pow_generic_double_s_fu_1678_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_pow_generic_double_s_fu_1678_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_1678_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_1678_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_pow_generic_double_s_fu_1678_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "expo2_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "expo2_V", "role": "default" }} , 
 	{ "name": "exponent2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "exponent2_out", "role": "default" }} , 
 	{ "name": "exponent2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "exponent2_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_417_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_417_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_417_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_417_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_417_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_417_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_417_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_417_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_417_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_417_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_425_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_425_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_425_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_425_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_425_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_425_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_425_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_425_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1675_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1675_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1675_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1675_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1675_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1675_p_ce", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_1678_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_1678_p_din1", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_1678_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_1678_p_dout0", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_1678_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_1678_p_start", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_1678_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_1678_p_ready", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_1678_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_1678_p_done", "role": "default" }} , 
 	{ "name": "grp_pow_generic_double_s_fu_1678_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_pow_generic_double_s_fu_1678_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "decoder_Pipeline_decoder_label3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "75",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "expo2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "exponent2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "decoder_label3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decoder_Pipeline_decoder_label3 {
		expo2_V {Type I LastRead 0 FirstWrite -1}
		exponent2_out {Type O LastRead -1 FirstWrite 41}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75", "Max" : "75"}
	, {"Name" : "Interval", "Min" : "75", "Max" : "75"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	expo2_V { ap_none {  { expo2_V in_data 0 2 } } }
	exponent2_out { ap_vld {  { exponent2_out out_data 1 32 }  { exponent2_out_ap_vld out_vld 1 1 } } }
}
