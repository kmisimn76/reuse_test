set moduleName load_a
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
set C_modelName {load_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {pointer 0 volatile }  }
	{ a_buf_s int 3200 regular {fifo 1 volatile }  }
	{ tilenuma int 32 regular {fifo 0}  }
	{ tilen int 32 regular {fifo 0}  }
	{ numa_iter int 32 regular {fifo 0}  }
	{ n_iter int 32 regular {fifo 0}  }
	{ numc_iter int 32 regular {fifo 0}  }
	{ tilenuma_out int 32 regular {fifo 1}  }
	{ tilen_out int 32 regular {fifo 1}  }
	{ numa_iter_out int 32 regular {fifo 1}  }
	{ n_iter_out int 32 regular {fifo 1}  }
	{ numc_iter_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_buf_s", "interface" : "fifo", "bitwidth" : 3200, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilenuma", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilen", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numa_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numc_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenuma_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilen_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numa_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numc_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A sc_in sc_lv 32 signal 0 } 
	{ a_buf_s_din sc_out sc_lv 3200 signal 1 } 
	{ a_buf_s_full_n sc_in sc_logic 1 signal 1 } 
	{ a_buf_s_write sc_out sc_logic 1 signal 1 } 
	{ tilenuma_dout sc_in sc_lv 32 signal 2 } 
	{ tilenuma_empty_n sc_in sc_logic 1 signal 2 } 
	{ tilenuma_read sc_out sc_logic 1 signal 2 } 
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
	{ tilenuma_out_din sc_out sc_lv 32 signal 7 } 
	{ tilenuma_out_full_n sc_in sc_logic 1 signal 7 } 
	{ tilenuma_out_write sc_out sc_logic 1 signal 7 } 
	{ tilen_out_din sc_out sc_lv 32 signal 8 } 
	{ tilen_out_full_n sc_in sc_logic 1 signal 8 } 
	{ tilen_out_write sc_out sc_logic 1 signal 8 } 
	{ numa_iter_out_din sc_out sc_lv 32 signal 9 } 
	{ numa_iter_out_full_n sc_in sc_logic 1 signal 9 } 
	{ numa_iter_out_write sc_out sc_logic 1 signal 9 } 
	{ n_iter_out_din sc_out sc_lv 32 signal 10 } 
	{ n_iter_out_full_n sc_in sc_logic 1 signal 10 } 
	{ n_iter_out_write sc_out sc_logic 1 signal 10 } 
	{ numc_iter_out_din sc_out sc_lv 32 signal 11 } 
	{ numc_iter_out_full_n sc_in sc_logic 1 signal 11 } 
	{ numc_iter_out_write sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
 	{ "name": "a_buf_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "a_buf_s", "role": "din" }} , 
 	{ "name": "a_buf_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_s", "role": "full_n" }} , 
 	{ "name": "a_buf_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_s", "role": "write" }} , 
 	{ "name": "tilenuma_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma", "role": "dout" }} , 
 	{ "name": "tilenuma_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma", "role": "empty_n" }} , 
 	{ "name": "tilenuma_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma", "role": "read" }} , 
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
 	{ "name": "numc_iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter", "role": "read" }} , 
 	{ "name": "tilenuma_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma_out", "role": "din" }} , 
 	{ "name": "tilenuma_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma_out", "role": "full_n" }} , 
 	{ "name": "tilenuma_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma_out", "role": "write" }} , 
 	{ "name": "tilen_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen_out", "role": "din" }} , 
 	{ "name": "tilen_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen_out", "role": "full_n" }} , 
 	{ "name": "tilen_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen_out", "role": "write" }} , 
 	{ "name": "numa_iter_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numa_iter_out", "role": "din" }} , 
 	{ "name": "numa_iter_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter_out", "role": "full_n" }} , 
 	{ "name": "numa_iter_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter_out", "role": "write" }} , 
 	{ "name": "n_iter_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_iter_out", "role": "din" }} , 
 	{ "name": "n_iter_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter_out", "role": "full_n" }} , 
 	{ "name": "n_iter_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter_out", "role": "write" }} , 
 	{ "name": "numc_iter_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numc_iter_out", "role": "din" }} , 
 	{ "name": "numc_iter_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter_out", "role": "full_n" }} , 
 	{ "name": "numc_iter_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "load_a",
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
			{"Name" : "A", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "a_buf_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1",
				"BlockSignal" : [
					{"Name" : "a_buf_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenuma", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_blk_n", "Type" : "RtlSignal"}]},
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
					{"Name" : "numc_iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenuma_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numa_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numa_iter_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "n_iter_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numc_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numc_iter_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buf_data_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U18", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U19", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_32ns_96_1_1_U20", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7ns_7_4_1_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_a {
		A {Type I LastRead 3 FirstWrite -1}
		a_buf_s {Type O LastRead -1 FirstWrite 54}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilen {Type I LastRead 0 FirstWrite -1}
		numa_iter {Type I LastRead 0 FirstWrite -1}
		n_iter {Type I LastRead 0 FirstWrite -1}
		numc_iter {Type I LastRead 0 FirstWrite -1}
		tilenuma_out {Type O LastRead -1 FirstWrite 0}
		tilen_out {Type O LastRead -1 FirstWrite 0}
		numa_iter_out {Type O LastRead -1 FirstWrite 0}
		n_iter_out {Type O LastRead -1 FirstWrite 0}
		numc_iter_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { ap_stable {  { A in_data 0 32 } } }
	a_buf_s { ap_fifo {  { a_buf_s_din fifo_data 1 3200 }  { a_buf_s_full_n fifo_status 0 1 }  { a_buf_s_write fifo_update 1 1 } } }
	tilenuma { ap_fifo {  { tilenuma_dout fifo_data 0 32 }  { tilenuma_empty_n fifo_status 0 1 }  { tilenuma_read fifo_update 1 1 } } }
	tilen { ap_fifo {  { tilen_dout fifo_data 0 32 }  { tilen_empty_n fifo_status 0 1 }  { tilen_read fifo_update 1 1 } } }
	numa_iter { ap_fifo {  { numa_iter_dout fifo_data 0 32 }  { numa_iter_empty_n fifo_status 0 1 }  { numa_iter_read fifo_update 1 1 } } }
	n_iter { ap_fifo {  { n_iter_dout fifo_data 0 32 }  { n_iter_empty_n fifo_status 0 1 }  { n_iter_read fifo_update 1 1 } } }
	numc_iter { ap_fifo {  { numc_iter_dout fifo_data 0 32 }  { numc_iter_empty_n fifo_status 0 1 }  { numc_iter_read fifo_update 1 1 } } }
	tilenuma_out { ap_fifo {  { tilenuma_out_din fifo_data 1 32 }  { tilenuma_out_full_n fifo_status 0 1 }  { tilenuma_out_write fifo_update 1 1 } } }
	tilen_out { ap_fifo {  { tilen_out_din fifo_data 1 32 }  { tilen_out_full_n fifo_status 0 1 }  { tilen_out_write fifo_update 1 1 } } }
	numa_iter_out { ap_fifo {  { numa_iter_out_din fifo_data 1 32 }  { numa_iter_out_full_n fifo_status 0 1 }  { numa_iter_out_write fifo_update 1 1 } } }
	n_iter_out { ap_fifo {  { n_iter_out_din fifo_data 1 32 }  { n_iter_out_full_n fifo_status 0 1 }  { n_iter_out_write fifo_update 1 1 } } }
	numc_iter_out { ap_fifo {  { numc_iter_out_din fifo_data 1 32 }  { numc_iter_out_full_n fifo_status 0 1 }  { numc_iter_out_write fifo_update 1 1 } } }
}
