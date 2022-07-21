set moduleName dataflow_parent_loop_proc
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
set C_modelName {dataflow_parent_loop_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ numc_iter int 32 regular  }
	{ A int 32 regular {pointer 0 volatile }  }
	{ B int 32 regular {pointer 0 volatile }  }
	{ C int 32 regular {pointer 2 volatile }  }
	{ tilenuma int 32 regular  }
	{ tilen int 32 regular  }
	{ tilenumc int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "numc_iter", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tilenuma", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilen", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenumc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ numc_iter sc_in sc_lv 32 signal 0 } 
	{ A sc_in sc_lv 32 signal 1 } 
	{ B sc_in sc_lv 32 signal 2 } 
	{ C_i sc_in sc_lv 32 signal 3 } 
	{ C_o sc_out sc_lv 32 signal 3 } 
	{ tilenuma sc_in sc_lv 32 signal 4 } 
	{ tilen sc_in sc_lv 32 signal 5 } 
	{ tilenumc sc_in sc_lv 32 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ A_ap_vld sc_in sc_logic 1 invld 1 } 
	{ tilenuma_ap_vld sc_in sc_logic 1 invld 4 } 
	{ tilen_ap_vld sc_in sc_logic 1 invld 5 } 
	{ B_ap_vld sc_in sc_logic 1 invld 2 } 
	{ tilenumc_ap_vld sc_in sc_logic 1 invld 6 } 
	{ C_i_ap_vld sc_in sc_logic 1 invld 3 } 
	{ C_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "numc_iter", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numc_iter", "role": "default" }} , 
 	{ "name": "A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "default" }} , 
 	{ "name": "B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "default" }} , 
 	{ "name": "C_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "i" }} , 
 	{ "name": "C_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "o" }} , 
 	{ "name": "tilenuma", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma", "role": "default" }} , 
 	{ "name": "tilen", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen", "role": "default" }} , 
 	{ "name": "tilenumc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "A_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "A", "role": "ap_vld" }} , 
 	{ "name": "tilenuma_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tilenuma", "role": "ap_vld" }} , 
 	{ "name": "tilen_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tilen", "role": "ap_vld" }} , 
 	{ "name": "B_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B", "role": "ap_vld" }} , 
 	{ "name": "tilenumc_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tilenumc", "role": "ap_vld" }} , 
 	{ "name": "C_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "C", "role": "i_ap_vld" }} , 
 	{ "name": "C_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C", "role": "o_ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_VITIS_LOOP_65_3_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_VITIS_LOOP_65_3_U0"}],
		"Port" : [
			{"Name" : "numc_iter", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_65_3_U0", "Port" : "A"}]},
			{"Name" : "B", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_65_3_U0", "Port" : "B"}]},
			{"Name" : "C", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_65_3_U0", "Port" : "C"}]},
			{"Name" : "tilenuma", "Type" : "None", "Direction" : "I"},
			{"Name" : "tilen", "Type" : "None", "Direction" : "I"},
			{"Name" : "tilenumc", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "9", "12", "22", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_65_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "dataflow_in_loop_VITIS_LOOP_65_3_entry83_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "store_c_U0"}],
		"Port" : [
			{"Name" : "A", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "load_a_U0", "Port" : "A"}]},
			{"Name" : "tilenuma", "Type" : "None", "Direction" : "I"},
			{"Name" : "tilen", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "load_b_U0", "Port" : "B"}]},
			{"Name" : "tilenumc", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Stable", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_c_U0", "Port" : "C"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.a_buf_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.b_buf_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.c_buf_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.dataflow_in_loop_VITIS_LOOP_65_3_entry83_U0", "Parent" : "1",
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_65_3_entry83",
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
			{"Name" : "tilen", "Type" : "None", "Direction" : "I"},
			{"Name" : "tilenumc", "Type" : "None", "Direction" : "I"},
			{"Name" : "tilenuma_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "25", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenuma_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "26", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "27", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "28", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "29", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "tilenumc_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.load_a_U0", "Parent" : "1", "Child" : ["7", "8"],
		"CDFG" : "load_a",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_load_a_U0_U",
		"Port" : [
			{"Name" : "A", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "a_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "2"},
			{"Name" : "tilenuma", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "25", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "27", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenuma_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "30", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "31", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.load_a_U0.mul_32ns_32ns_64_1_1_U9", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.load_a_U0.mac_muladd_7s_7s_7ns_7_4_1_U10", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.load_b_U0", "Parent" : "1", "Child" : ["10", "11"],
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
		"StartSource" : "5",
		"StartFifo" : "start_for_load_b_U0_U",
		"Port" : [
			{"Name" : "B", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "b_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "3"},
			{"Name" : "tilenuma", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "26", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "28", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.load_b_U0.mul_32ns_32ns_64_1_1_U19", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.load_b_U0.mac_muladd_7s_7s_7ns_7_4_1_U20", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0", "Parent" : "1", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21"],
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
			{"Name" : "a_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "2"},
			{"Name" : "b_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "3"},
			{"Name" : "c_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "4"},
			{"Name" : "tilen", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "31", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenuma", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "30", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "29", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "tilenumc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "32", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "33", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.local_c_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.mul_32ns_32ns_64_1_1_U25", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.mul_64ns_32ns_96_1_1_U26", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.mul_7s_7s_7_1_1_U27", "Parent" : "12"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.mul_7s_7s_7_1_1_U28", "Parent" : "12"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.mul_32s_32s_32_1_1_U29", "Parent" : "12"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.mac_muladd_7s_7s_7ns_7_4_1_U30", "Parent" : "12"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.mac_muladd_7s_7s_7ns_7_4_1_U31", "Parent" : "12"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.conv_U0.mac_muladd_7s_7s_7s_7_4_1_U32", "Parent" : "12"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.store_c_U0", "Parent" : "1", "Child" : ["23", "24"],
		"CDFG" : "store_c",
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
			{"Name" : "C", "Type" : "Stable", "Direction" : "IO"},
			{"Name" : "c_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "4"},
			{"Name" : "tilenumc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "33", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "32", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.store_c_U0.mul_32ns_32ns_64_1_1_U46", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.store_c_U0.mac_muladd_7s_7s_7ns_7_4_1_U47", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilenuma_c_U", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilenuma_c1_U", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilen_c_U", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilenumc_c_U", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilenumc_c2_U", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilenuma_c3_U", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilen_c4_U", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilen_c5_U", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.tilenumc_c6_U", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.start_for_load_a_U0_U", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_65_3_U0.start_for_load_b_U0_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_parent_loop_proc {
		numc_iter {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 1 FirstWrite -1}
		C {Type IO LastRead 2 FirstWrite 985}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilen {Type I LastRead 0 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_65_3 {
		A {Type I LastRead 1 FirstWrite -1}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilen {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 1 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}
		C {Type IO LastRead 2 FirstWrite 985}}
	dataflow_in_loop_VITIS_LOOP_65_3_entry83 {
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilen {Type I LastRead 0 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}
		tilenuma_out {Type O LastRead -1 FirstWrite 0}
		tilenuma_out1 {Type O LastRead -1 FirstWrite 0}
		tilen_out {Type O LastRead -1 FirstWrite 0}
		tilenumc_out {Type O LastRead -1 FirstWrite 0}
		tilenumc_out2 {Type O LastRead -1 FirstWrite 0}}
	load_a {
		A {Type I LastRead 1 FirstWrite -1}
		a_buf {Type O LastRead -1 FirstWrite 4}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilen {Type I LastRead 0 FirstWrite -1}
		tilenuma_out {Type O LastRead -1 FirstWrite 0}
		tilen_out {Type O LastRead -1 FirstWrite 0}}
	load_b {
		B {Type I LastRead 1 FirstWrite -1}
		b_buf {Type O LastRead -1 FirstWrite 4}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}}
	conv {
		a_buf {Type I LastRead 7 FirstWrite -1}
		b_buf {Type I LastRead 7 FirstWrite -1}
		c_buf {Type O LastRead -1 FirstWrite 8}
		tilen {Type I LastRead 0 FirstWrite -1}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}
		tilen_out {Type O LastRead -1 FirstWrite 0}
		tilenumc_out {Type O LastRead -1 FirstWrite 0}}
	store_c {
		C {Type IO LastRead 2 FirstWrite 985}
		c_buf {Type I LastRead 984 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}
		tilen {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	numc_iter { ap_none {  { numc_iter in_data 0 32 } } }
	A { ap_none {  { A in_data 0 32 }  { A_ap_vld in_vld 0 1 } } }
	B { ap_none {  { B in_data 0 32 }  { B_ap_vld in_vld 0 1 } } }
	C { ap_ovld {  { C_i in_data 0 32 }  { C_o out_data 1 32 }  { C_i_ap_vld in_vld 0 1 }  { C_o_ap_vld out_vld 1 1 } } }
	tilenuma { ap_none {  { tilenuma in_data 0 32 }  { tilenuma_ap_vld in_vld 0 1 } } }
	tilen { ap_none {  { tilen in_data 0 32 }  { tilen_ap_vld in_vld 0 1 } } }
	tilenumc { ap_none {  { tilenumc in_data 0 32 }  { tilenumc_ap_vld in_vld 0 1 } } }
}
