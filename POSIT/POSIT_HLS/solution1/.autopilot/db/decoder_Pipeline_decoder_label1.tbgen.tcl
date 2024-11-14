set moduleName decoder_Pipeline_decoder_label1
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
set C_modelName {decoder_Pipeline_decoder_label1}
set C_modelType { int 1 }
set C_modelArgList {
	{ num2_cast int 31 regular  }
	{ p_Result_18 int 1 regular  }
	{ cnt2_out int 5 regular {pointer 1}  }
	{ in_2_out int 6 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num2_cast", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "p_Result_18", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cnt2_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_2_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num2_cast sc_in sc_lv 31 signal 0 } 
	{ p_Result_18 sc_in sc_lv 1 signal 1 } 
	{ cnt2_out sc_out sc_lv 5 signal 2 } 
	{ cnt2_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ in_2_out sc_out sc_lv 6 signal 3 } 
	{ in_2_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num2_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "num2_cast", "role": "default" }} , 
 	{ "name": "p_Result_18", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_Result_18", "role": "default" }} , 
 	{ "name": "cnt2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "cnt2_out", "role": "default" }} , 
 	{ "name": "cnt2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "cnt2_out", "role": "ap_vld" }} , 
 	{ "name": "in_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_2_out", "role": "default" }} , 
 	{ "name": "in_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_2_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "decoder_Pipeline_decoder_label1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "501",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_Result_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cnt2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "decoder_label1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decoder_Pipeline_decoder_label1 {
		num2_cast {Type I LastRead 0 FirstWrite -1}
		p_Result_18 {Type I LastRead 0 FirstWrite -1}
		cnt2_out {Type O LastRead -1 FirstWrite 0}
		in_2_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "501"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "501"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num2_cast { ap_none {  { num2_cast in_data 0 31 } } }
	p_Result_18 { ap_none {  { p_Result_18 in_data 0 1 } } }
	cnt2_out { ap_vld {  { cnt2_out out_data 1 5 }  { cnt2_out_ap_vld out_vld 1 1 } } }
	in_2_out { ap_vld {  { in_2_out out_data 1 6 }  { in_2_out_ap_vld out_vld 1 1 } } }
}
