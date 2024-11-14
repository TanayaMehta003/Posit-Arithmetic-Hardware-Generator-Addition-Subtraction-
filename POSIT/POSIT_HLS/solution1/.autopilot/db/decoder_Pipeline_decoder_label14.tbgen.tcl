set moduleName decoder_Pipeline_decoder_label14
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
set C_modelName {decoder_Pipeline_decoder_label14}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_Result_95 int 32 regular  }
	{ sext_ln303 int 7 regular  }
	{ r_V_28 int 29 regular  }
	{ result_V_29_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_Result_95", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln303", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "r_V_28", "interface" : "wire", "bitwidth" : 29, "direction" : "READONLY"} , 
 	{ "Name" : "result_V_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_Result_95 sc_in sc_lv 32 signal 0 } 
	{ sext_ln303 sc_in sc_lv 7 signal 1 } 
	{ r_V_28 sc_in sc_lv 29 signal 2 } 
	{ result_V_29_out sc_out sc_lv 32 signal 3 } 
	{ result_V_29_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_Result_95", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_Result_95", "role": "default" }} , 
 	{ "name": "sext_ln303", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sext_ln303", "role": "default" }} , 
 	{ "name": "r_V_28", "direction": "in", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "r_V_28", "role": "default" }} , 
 	{ "name": "result_V_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_V_29_out", "role": "default" }} , 
 	{ "name": "result_V_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_V_29_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "decoder_Pipeline_decoder_label14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_Result_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln303", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_V_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_V_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "decoder_label14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decoder_Pipeline_decoder_label14 {
		p_Result_95 {Type I LastRead 0 FirstWrite -1}
		sext_ln303 {Type I LastRead 0 FirstWrite -1}
		r_V_28 {Type I LastRead 0 FirstWrite -1}
		result_V_29_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_Result_95 { ap_none {  { p_Result_95 in_data 0 32 } } }
	sext_ln303 { ap_none {  { sext_ln303 in_data 0 7 } } }
	r_V_28 { ap_none {  { r_V_28 in_data 0 29 } } }
	result_V_29_out { ap_vld {  { result_V_29_out out_data 1 32 }  { result_V_29_out_ap_vld out_vld 1 1 } } }
}