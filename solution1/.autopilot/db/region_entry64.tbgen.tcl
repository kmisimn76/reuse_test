set moduleName region_entry64
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {region.entry64}
set C_modelType { void 0 }
set C_modelArgList {
	{ tilenuma int 32 regular  }
	{ tilenumc int 32 regular  }
	{ tilen int 32 regular  }
	{ numa_iter int 32 regular  }
	{ numc_iter int 32 regular  }
	{ n_iter int 32 regular  }
	{ tilenuma_out int 32 regular {fifo 1}  }
	{ tilenuma_out1 int 32 regular {fifo 1}  }
	{ tilenumc_out int 32 regular {fifo 1}  }
	{ tilenumc_out2 int 32 regular {fifo 1}  }
	{ tilen_out int 32 regular {fifo 1}  }
	{ numa_iter_out int 32 regular {fifo 1}  }
	{ numa_iter_out3 int 32 regular {fifo 1}  }
	{ numc_iter_out int 32 regular {fifo 1}  }
	{ numc_iter_out4 int 32 regular {fifo 1}  }
	{ n_iter_out int 32 regular {fifo 1}  }
	{ n_iter_out5 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tilenuma", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenumc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilen", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numa_iter", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numc_iter", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n_iter", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenuma_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilenuma_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilenumc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilenumc_out2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilen_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numa_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numa_iter_out3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numc_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numc_iter_out4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n_iter_out5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ tilenuma sc_in sc_lv 32 signal 0 } 
	{ tilenumc sc_in sc_lv 32 signal 1 } 
	{ tilen sc_in sc_lv 32 signal 2 } 
	{ numa_iter sc_in sc_lv 32 signal 3 } 
	{ numc_iter sc_in sc_lv 32 signal 4 } 
	{ n_iter sc_in sc_lv 32 signal 5 } 
	{ tilenuma_out_din sc_out sc_lv 32 signal 6 } 
	{ tilenuma_out_full_n sc_in sc_logic 1 signal 6 } 
	{ tilenuma_out_write sc_out sc_logic 1 signal 6 } 
	{ tilenuma_out1_din sc_out sc_lv 32 signal 7 } 
	{ tilenuma_out1_full_n sc_in sc_logic 1 signal 7 } 
	{ tilenuma_out1_write sc_out sc_logic 1 signal 7 } 
	{ tilenumc_out_din sc_out sc_lv 32 signal 8 } 
	{ tilenumc_out_full_n sc_in sc_logic 1 signal 8 } 
	{ tilenumc_out_write sc_out sc_logic 1 signal 8 } 
	{ tilenumc_out2_din sc_out sc_lv 32 signal 9 } 
	{ tilenumc_out2_full_n sc_in sc_logic 1 signal 9 } 
	{ tilenumc_out2_write sc_out sc_logic 1 signal 9 } 
	{ tilen_out_din sc_out sc_lv 32 signal 10 } 
	{ tilen_out_full_n sc_in sc_logic 1 signal 10 } 
	{ tilen_out_write sc_out sc_logic 1 signal 10 } 
	{ numa_iter_out_din sc_out sc_lv 32 signal 11 } 
	{ numa_iter_out_full_n sc_in sc_logic 1 signal 11 } 
	{ numa_iter_out_write sc_out sc_logic 1 signal 11 } 
	{ numa_iter_out3_din sc_out sc_lv 32 signal 12 } 
	{ numa_iter_out3_full_n sc_in sc_logic 1 signal 12 } 
	{ numa_iter_out3_write sc_out sc_logic 1 signal 12 } 
	{ numc_iter_out_din sc_out sc_lv 32 signal 13 } 
	{ numc_iter_out_full_n sc_in sc_logic 1 signal 13 } 
	{ numc_iter_out_write sc_out sc_logic 1 signal 13 } 
	{ numc_iter_out4_din sc_out sc_lv 32 signal 14 } 
	{ numc_iter_out4_full_n sc_in sc_logic 1 signal 14 } 
	{ numc_iter_out4_write sc_out sc_logic 1 signal 14 } 
	{ n_iter_out_din sc_out sc_lv 32 signal 15 } 
	{ n_iter_out_full_n sc_in sc_logic 1 signal 15 } 
	{ n_iter_out_write sc_out sc_logic 1 signal 15 } 
	{ n_iter_out5_din sc_out sc_lv 32 signal 16 } 
	{ n_iter_out5_full_n sc_in sc_logic 1 signal 16 } 
	{ n_iter_out5_write sc_out sc_logic 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "tilenuma", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma", "role": "default" }} , 
 	{ "name": "tilenumc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc", "role": "default" }} , 
 	{ "name": "tilen", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen", "role": "default" }} , 
 	{ "name": "numa_iter", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numa_iter", "role": "default" }} , 
 	{ "name": "numc_iter", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numc_iter", "role": "default" }} , 
 	{ "name": "n_iter", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_iter", "role": "default" }} , 
 	{ "name": "tilenuma_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma_out", "role": "din" }} , 
 	{ "name": "tilenuma_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma_out", "role": "full_n" }} , 
 	{ "name": "tilenuma_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma_out", "role": "write" }} , 
 	{ "name": "tilenuma_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma_out1", "role": "din" }} , 
 	{ "name": "tilenuma_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma_out1", "role": "full_n" }} , 
 	{ "name": "tilenuma_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma_out1", "role": "write" }} , 
 	{ "name": "tilenumc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "din" }} , 
 	{ "name": "tilenumc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "full_n" }} , 
 	{ "name": "tilenumc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "write" }} , 
 	{ "name": "tilenumc_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc_out2", "role": "din" }} , 
 	{ "name": "tilenumc_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc_out2", "role": "full_n" }} , 
 	{ "name": "tilenumc_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc_out2", "role": "write" }} , 
 	{ "name": "tilen_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen_out", "role": "din" }} , 
 	{ "name": "tilen_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen_out", "role": "full_n" }} , 
 	{ "name": "tilen_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen_out", "role": "write" }} , 
 	{ "name": "numa_iter_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numa_iter_out", "role": "din" }} , 
 	{ "name": "numa_iter_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter_out", "role": "full_n" }} , 
 	{ "name": "numa_iter_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter_out", "role": "write" }} , 
 	{ "name": "numa_iter_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numa_iter_out3", "role": "din" }} , 
 	{ "name": "numa_iter_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter_out3", "role": "full_n" }} , 
 	{ "name": "numa_iter_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter_out3", "role": "write" }} , 
 	{ "name": "numc_iter_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numc_iter_out", "role": "din" }} , 
 	{ "name": "numc_iter_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter_out", "role": "full_n" }} , 
 	{ "name": "numc_iter_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter_out", "role": "write" }} , 
 	{ "name": "numc_iter_out4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numc_iter_out4", "role": "din" }} , 
 	{ "name": "numc_iter_out4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter_out4", "role": "full_n" }} , 
 	{ "name": "numc_iter_out4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter_out4", "role": "write" }} , 
 	{ "name": "n_iter_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_iter_out", "role": "din" }} , 
 	{ "name": "n_iter_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter_out", "role": "full_n" }} , 
 	{ "name": "n_iter_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter_out", "role": "write" }} , 
 	{ "name": "n_iter_out5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_iter_out5", "role": "din" }} , 
 	{ "name": "n_iter_out5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter_out5", "role": "full_n" }} , 
 	{ "name": "n_iter_out5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter_out5", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "region_entry64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tilenuma", "Type" : "None", "Direction" : "I"},
			{"Name" : "tilenumc", "Type" : "None", "Direction" : "I"},
			{"Name" : "tilen", "Type" : "None", "Direction" : "I"},
			{"Name" : "numa_iter", "Type" : "None", "Direction" : "I"},
			{"Name" : "numc_iter", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_iter", "Type" : "None", "Direction" : "I"},
			{"Name" : "tilenuma_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenuma_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "tilenumc_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numa_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numa_iter_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numa_iter_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numa_iter_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numc_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numc_iter_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numc_iter_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numc_iter_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "n_iter_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_iter_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "n_iter_out5_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	region_entry64 {
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}
		tilen {Type I LastRead 0 FirstWrite -1}
		numa_iter {Type I LastRead 0 FirstWrite -1}
		numc_iter {Type I LastRead 0 FirstWrite -1}
		n_iter {Type I LastRead 0 FirstWrite -1}
		tilenuma_out {Type O LastRead -1 FirstWrite 0}
		tilenuma_out1 {Type O LastRead -1 FirstWrite 0}
		tilenumc_out {Type O LastRead -1 FirstWrite 0}
		tilenumc_out2 {Type O LastRead -1 FirstWrite 0}
		tilen_out {Type O LastRead -1 FirstWrite 0}
		numa_iter_out {Type O LastRead -1 FirstWrite 0}
		numa_iter_out3 {Type O LastRead -1 FirstWrite 0}
		numc_iter_out {Type O LastRead -1 FirstWrite 0}
		numc_iter_out4 {Type O LastRead -1 FirstWrite 0}
		n_iter_out {Type O LastRead -1 FirstWrite 0}
		n_iter_out5 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tilenuma { ap_none {  { tilenuma in_data 0 32 } } }
	tilenumc { ap_none {  { tilenumc in_data 0 32 } } }
	tilen { ap_none {  { tilen in_data 0 32 } } }
	numa_iter { ap_none {  { numa_iter in_data 0 32 } } }
	numc_iter { ap_none {  { numc_iter in_data 0 32 } } }
	n_iter { ap_none {  { n_iter in_data 0 32 } } }
	tilenuma_out { ap_fifo {  { tilenuma_out_din fifo_data 1 32 }  { tilenuma_out_full_n fifo_status 0 1 }  { tilenuma_out_write fifo_update 1 1 } } }
	tilenuma_out1 { ap_fifo {  { tilenuma_out1_din fifo_data 1 32 }  { tilenuma_out1_full_n fifo_status 0 1 }  { tilenuma_out1_write fifo_update 1 1 } } }
	tilenumc_out { ap_fifo {  { tilenumc_out_din fifo_data 1 32 }  { tilenumc_out_full_n fifo_status 0 1 }  { tilenumc_out_write fifo_update 1 1 } } }
	tilenumc_out2 { ap_fifo {  { tilenumc_out2_din fifo_data 1 32 }  { tilenumc_out2_full_n fifo_status 0 1 }  { tilenumc_out2_write fifo_update 1 1 } } }
	tilen_out { ap_fifo {  { tilen_out_din fifo_data 1 32 }  { tilen_out_full_n fifo_status 0 1 }  { tilen_out_write fifo_update 1 1 } } }
	numa_iter_out { ap_fifo {  { numa_iter_out_din fifo_data 1 32 }  { numa_iter_out_full_n fifo_status 0 1 }  { numa_iter_out_write fifo_update 1 1 } } }
	numa_iter_out3 { ap_fifo {  { numa_iter_out3_din fifo_data 1 32 }  { numa_iter_out3_full_n fifo_status 0 1 }  { numa_iter_out3_write fifo_update 1 1 } } }
	numc_iter_out { ap_fifo {  { numc_iter_out_din fifo_data 1 32 }  { numc_iter_out_full_n fifo_status 0 1 }  { numc_iter_out_write fifo_update 1 1 } } }
	numc_iter_out4 { ap_fifo {  { numc_iter_out4_din fifo_data 1 32 }  { numc_iter_out4_full_n fifo_status 0 1 }  { numc_iter_out4_write fifo_update 1 1 } } }
	n_iter_out { ap_fifo {  { n_iter_out_din fifo_data 1 32 }  { n_iter_out_full_n fifo_status 0 1 }  { n_iter_out_write fifo_update 1 1 } } }
	n_iter_out5 { ap_fifo {  { n_iter_out5_din fifo_data 1 32 }  { n_iter_out5_full_n fifo_status 0 1 }  { n_iter_out5_write fifo_update 1 1 } } }
}
