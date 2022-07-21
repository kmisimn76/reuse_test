set moduleName load_b
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {load_b}
set C_modelType { void 0 }
set C_modelArgList {
	{ B int 32 regular {pointer 0 volatile }  }
	{ b_buf int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ tilenuma int 32 regular {fifo 0}  }
	{ tilenumc int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "B", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilenuma", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenumc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ B sc_in sc_lv 32 signal 0 } 
	{ b_buf_address0 sc_out sc_lv 7 signal 1 } 
	{ b_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_buf_we0 sc_out sc_logic 1 signal 1 } 
	{ b_buf_d0 sc_out sc_lv 32 signal 1 } 
	{ tilenuma_dout sc_in sc_lv 32 signal 2 } 
	{ tilenuma_empty_n sc_in sc_logic 1 signal 2 } 
	{ tilenuma_read sc_out sc_logic 1 signal 2 } 
	{ tilenumc_dout sc_in sc_lv 32 signal 3 } 
	{ tilenumc_empty_n sc_in sc_logic 1 signal 3 } 
	{ tilenumc_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "default" }} , 
 	{ "name": "b_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "b_buf", "role": "address0" }} , 
 	{ "name": "b_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf", "role": "ce0" }} , 
 	{ "name": "b_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf", "role": "we0" }} , 
 	{ "name": "b_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buf", "role": "d0" }} , 
 	{ "name": "tilenuma_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma", "role": "dout" }} , 
 	{ "name": "tilenuma_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma", "role": "empty_n" }} , 
 	{ "name": "tilenuma_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma", "role": "read" }} , 
 	{ "name": "tilenumc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc", "role": "dout" }} , 
 	{ "name": "tilenumc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc", "role": "empty_n" }} , 
 	{ "name": "tilenumc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "load_b",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "B", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "b_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "tilenuma", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U19", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7ns_7_4_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_b {
		B {Type I LastRead 1 FirstWrite -1}
		b_buf {Type O LastRead -1 FirstWrite 4}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	B { ap_stable {  { B in_data 0 32 } } }
	b_buf { ap_memory {  { b_buf_address0 mem_address 1 7 }  { b_buf_ce0 mem_ce 1 1 }  { b_buf_we0 mem_we 1 1 }  { b_buf_d0 mem_din 1 32 } } }
	tilenuma { ap_fifo {  { tilenuma_dout fifo_data 0 32 }  { tilenuma_empty_n fifo_status 0 1 }  { tilenuma_read fifo_update 1 1 } } }
	tilenumc { ap_fifo {  { tilenumc_dout fifo_data 0 32 }  { tilenumc_empty_n fifo_status 0 1 }  { tilenumc_read fifo_update 1 1 } } }
}
