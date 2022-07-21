set moduleName store_c
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {store_c}
set C_modelType { void 0 }
set C_modelArgList {
	{ C int 32 regular {pointer 2 volatile }  }
	{ c_buf int 3200 regular {fifo 0 volatile }  }
	{ tilenumc int 32 regular {fifo 0}  }
	{ tilen int 32 regular {fifo 0}  }
	{ numa_iter int 32 regular {fifo 0}  }
	{ n_iter int 32 regular {fifo 0}  }
	{ numc_iter int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "C", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "c_buf", "interface" : "fifo", "bitwidth" : 3200, "direction" : "READONLY"} , 
 	{ "Name" : "tilenumc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilen", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numa_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numc_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ C_i sc_in sc_lv 32 signal 0 } 
	{ C_o sc_out sc_lv 32 signal 0 } 
	{ C_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ c_buf_dout sc_in sc_lv 3200 signal 1 } 
	{ c_buf_empty_n sc_in sc_logic 1 signal 1 } 
	{ c_buf_read sc_out sc_logic 1 signal 1 } 
	{ tilenumc_dout sc_in sc_lv 32 signal 2 } 
	{ tilenumc_empty_n sc_in sc_logic 1 signal 2 } 
	{ tilenumc_read sc_out sc_logic 1 signal 2 } 
	{ tilen_dout sc_in sc_lv 32 signal 3 } 
	{ tilen_empty_n sc_in sc_logic 1 signal 3 } 
	{ tilen_read sc_out sc_logic 1 signal 3 } 
	{ numa_iter_dout sc_in sc_lv 32 signal 4 } 
	{ numa_iter_empty_n sc_in sc_logic 1 signal 4 } 
	{ numa_iter_read sc_out sc_logic 1 signal 4 } 
	{ n_iter_dout sc_in sc_lv 32 signal 5 } 
	{ n_iter_empty_n sc_in sc_logic 1 signal 5 } 
	{ n_iter_read sc_out sc_logic 1 signal 5 } 
	{ numc_iter_dout sc_in sc_lv 32 signal 6 } 
	{ numc_iter_empty_n sc_in sc_logic 1 signal 6 } 
	{ numc_iter_read sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "C_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "i" }} , 
 	{ "name": "C_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "o" }} , 
 	{ "name": "C_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C", "role": "o_ap_vld" }} , 
 	{ "name": "c_buf_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "c_buf", "role": "dout" }} , 
 	{ "name": "c_buf_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_buf", "role": "empty_n" }} , 
 	{ "name": "c_buf_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_buf", "role": "read" }} , 
 	{ "name": "tilenumc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc", "role": "dout" }} , 
 	{ "name": "tilenumc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc", "role": "empty_n" }} , 
 	{ "name": "tilenumc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc", "role": "read" }} , 
 	{ "name": "tilen_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen", "role": "dout" }} , 
 	{ "name": "tilen_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen", "role": "empty_n" }} , 
 	{ "name": "tilen_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen", "role": "read" }} , 
 	{ "name": "numa_iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numa_iter", "role": "dout" }} , 
 	{ "name": "numa_iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter", "role": "empty_n" }} , 
 	{ "name": "numa_iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter", "role": "read" }} , 
 	{ "name": "n_iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_iter", "role": "dout" }} , 
 	{ "name": "n_iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter", "role": "empty_n" }} , 
 	{ "name": "n_iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter", "role": "read" }} , 
 	{ "name": "numc_iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numc_iter", "role": "dout" }} , 
 	{ "name": "numc_iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter", "role": "empty_n" }} , 
 	{ "name": "numc_iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "store_c",
		"Protocol" : "ap_ctrl_none",
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
			{"Name" : "C", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "c_buf", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1",
				"BlockSignal" : [
					{"Name" : "c_buf_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numa_iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numa_iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "n_iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numc_iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numc_iter_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U78", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U79", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_32ns_96_1_1_U80", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7ns_7_4_1_U81", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	store_c {
		C {Type IO LastRead 53 FirstWrite 1036}
		c_buf {Type I LastRead 2 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}
		tilen {Type I LastRead 0 FirstWrite -1}
		numa_iter {Type I LastRead 0 FirstWrite -1}
		n_iter {Type I LastRead 0 FirstWrite -1}
		numc_iter {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	C { ap_stable {  { C_i in_data 0 32 }  { C_o out_data 1 32 }  { C_o_ap_vld out_vld 1 1 } } }
	c_buf { ap_fifo {  { c_buf_dout fifo_data 0 3200 }  { c_buf_empty_n fifo_status 0 1 }  { c_buf_read fifo_update 1 1 } } }
	tilenumc { ap_fifo {  { tilenumc_dout fifo_data 0 32 }  { tilenumc_empty_n fifo_status 0 1 }  { tilenumc_read fifo_update 1 1 } } }
	tilen { ap_fifo {  { tilen_dout fifo_data 0 32 }  { tilen_empty_n fifo_status 0 1 }  { tilen_read fifo_update 1 1 } } }
	numa_iter { ap_fifo {  { numa_iter_dout fifo_data 0 32 }  { numa_iter_empty_n fifo_status 0 1 }  { numa_iter_read fifo_update 1 1 } } }
	n_iter { ap_fifo {  { n_iter_dout fifo_data 0 32 }  { n_iter_empty_n fifo_status 0 1 }  { n_iter_read fifo_update 1 1 } } }
	numc_iter { ap_fifo {  { numc_iter_dout fifo_data 0 32 }  { numc_iter_empty_n fifo_status 0 1 }  { numc_iter_read fifo_update 1 1 } } }
}
