set moduleName conv
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
set C_modelName {conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_buf int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ b_buf int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ c_buf int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ tilen int 32 regular {fifo 0}  }
	{ tilenuma int 32 regular {fifo 0}  }
	{ tilenumc int 32 regular {fifo 0}  }
	{ tilen_out int 32 regular {fifo 1}  }
	{ tilenumc_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilen", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenuma", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenumc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilen_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilenumc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_buf_address0 sc_out sc_lv 7 signal 0 } 
	{ a_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_buf_q0 sc_in sc_lv 32 signal 0 } 
	{ b_buf_address0 sc_out sc_lv 7 signal 1 } 
	{ b_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_buf_q0 sc_in sc_lv 32 signal 1 } 
	{ c_buf_address0 sc_out sc_lv 7 signal 2 } 
	{ c_buf_ce0 sc_out sc_logic 1 signal 2 } 
	{ c_buf_we0 sc_out sc_logic 1 signal 2 } 
	{ c_buf_d0 sc_out sc_lv 32 signal 2 } 
	{ tilen_dout sc_in sc_lv 32 signal 3 } 
	{ tilen_empty_n sc_in sc_logic 1 signal 3 } 
	{ tilen_read sc_out sc_logic 1 signal 3 } 
	{ tilenuma_dout sc_in sc_lv 32 signal 4 } 
	{ tilenuma_empty_n sc_in sc_logic 1 signal 4 } 
	{ tilenuma_read sc_out sc_logic 1 signal 4 } 
	{ tilenumc_dout sc_in sc_lv 32 signal 5 } 
	{ tilenumc_empty_n sc_in sc_logic 1 signal 5 } 
	{ tilenumc_read sc_out sc_logic 1 signal 5 } 
	{ tilen_out_din sc_out sc_lv 32 signal 6 } 
	{ tilen_out_full_n sc_in sc_logic 1 signal 6 } 
	{ tilen_out_write sc_out sc_logic 1 signal 6 } 
	{ tilenumc_out_din sc_out sc_lv 32 signal 7 } 
	{ tilenumc_out_full_n sc_in sc_logic 1 signal 7 } 
	{ tilenumc_out_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a_buf", "role": "address0" }} , 
 	{ "name": "a_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf", "role": "ce0" }} , 
 	{ "name": "a_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_buf", "role": "q0" }} , 
 	{ "name": "b_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "b_buf", "role": "address0" }} , 
 	{ "name": "b_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf", "role": "ce0" }} , 
 	{ "name": "b_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buf", "role": "q0" }} , 
 	{ "name": "c_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c_buf", "role": "address0" }} , 
 	{ "name": "c_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_buf", "role": "ce0" }} , 
 	{ "name": "c_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_buf", "role": "we0" }} , 
 	{ "name": "c_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buf", "role": "d0" }} , 
 	{ "name": "tilen_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen", "role": "dout" }} , 
 	{ "name": "tilen_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen", "role": "empty_n" }} , 
 	{ "name": "tilen_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen", "role": "read" }} , 
 	{ "name": "tilenuma_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma", "role": "dout" }} , 
 	{ "name": "tilenuma_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma", "role": "empty_n" }} , 
 	{ "name": "tilenuma_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma", "role": "read" }} , 
 	{ "name": "tilenumc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc", "role": "dout" }} , 
 	{ "name": "tilenumc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc", "role": "empty_n" }} , 
 	{ "name": "tilenumc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc", "role": "read" }} , 
 	{ "name": "tilen_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen_out", "role": "din" }} , 
 	{ "name": "tilen_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen_out", "role": "full_n" }} , 
 	{ "name": "tilen_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen_out", "role": "write" }} , 
 	{ "name": "tilenumc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "din" }} , 
 	{ "name": "tilenumc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "full_n" }} , 
 	{ "name": "tilenumc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "conv",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state8_pp1_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter3", "FromInitialOperation" : "ap_enable_operation_535", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp1_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter4", "FromFinalOperation" : "ap_enable_operation_539", "FromFinalSV" : "8", "FromAddress" : "local_c_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp1_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter5", "ToInitialOperation" : "ap_enable_operation_541", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp1_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter4", "ToFinalOperation" : "ap_enable_operation_541", "ToFinalSV" : "8", "ToAddress" : "local_c_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "7", "II" : "1", "Pragma" : "(reuse_test/before.cpp:40:46)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp1_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter4", "FromInitialOperation" : "ap_enable_operation_541", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp1_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter4", "FromFinalOperation" : "ap_enable_operation_541", "FromFinalSV" : "8", "FromAddress" : "local_c_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp1_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter4", "ToInitialOperation" : "ap_enable_operation_535", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp1_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter4", "ToFinalOperation" : "ap_enable_operation_539", "ToFinalSV" : "8", "ToAddress" : "local_c_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "7", "II" : "1", "Pragma" : "(reuse_test/before.cpp:40:46)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp1_iter3_stage0", "ap_enable_state9_pp1_iter4_stage0"]}],
		"Port" : [
			{"Name" : "a_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "b_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "c_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "tilen", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenuma", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "tilenumc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_c_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U25", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_32ns_96_1_1_U26", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_7s_7_1_1_U27", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_7s_7_1_1_U28", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U29", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7ns_7_4_1_U30", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7ns_7_4_1_U31", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7s_7_4_1_U32", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv {
		a_buf {Type I LastRead 7 FirstWrite -1}
		b_buf {Type I LastRead 7 FirstWrite -1}
		c_buf {Type O LastRead -1 FirstWrite 8}
		tilen {Type I LastRead 0 FirstWrite -1}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}
		tilen_out {Type O LastRead -1 FirstWrite 0}
		tilenumc_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	a_buf { ap_memory {  { a_buf_address0 mem_address 1 7 }  { a_buf_ce0 mem_ce 1 1 }  { a_buf_q0 mem_dout 0 32 } } }
	b_buf { ap_memory {  { b_buf_address0 mem_address 1 7 }  { b_buf_ce0 mem_ce 1 1 }  { b_buf_q0 mem_dout 0 32 } } }
	c_buf { ap_memory {  { c_buf_address0 mem_address 1 7 }  { c_buf_ce0 mem_ce 1 1 }  { c_buf_we0 mem_we 1 1 }  { c_buf_d0 mem_din 1 32 } } }
	tilen { ap_fifo {  { tilen_dout fifo_data 0 32 }  { tilen_empty_n fifo_status 0 1 }  { tilen_read fifo_update 1 1 } } }
	tilenuma { ap_fifo {  { tilenuma_dout fifo_data 0 32 }  { tilenuma_empty_n fifo_status 0 1 }  { tilenuma_read fifo_update 1 1 } } }
	tilenumc { ap_fifo {  { tilenumc_dout fifo_data 0 32 }  { tilenumc_empty_n fifo_status 0 1 }  { tilenumc_read fifo_update 1 1 } } }
	tilen_out { ap_fifo {  { tilen_out_din fifo_data 1 32 }  { tilen_out_full_n fifo_status 0 1 }  { tilen_out_write fifo_update 1 1 } } }
	tilenumc_out { ap_fifo {  { tilenumc_out_din fifo_data 1 32 }  { tilenumc_out_full_n fifo_status 0 1 }  { tilenumc_out_write fifo_update 1 1 } } }
}
