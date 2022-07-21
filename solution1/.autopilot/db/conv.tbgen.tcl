set moduleName conv
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
set C_modelName {conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_buf_s int 3200 regular {fifo 0 volatile }  }
	{ b_buf_s int 3200 regular {fifo 0 volatile }  }
	{ c_buf_s int 3200 regular {fifo 1 volatile }  }
	{ tilen int 32 regular {fifo 0}  }
	{ tilenuma int 32 regular {fifo 0}  }
	{ tilenumc int 32 regular {fifo 0}  }
	{ numa_iter int 32 regular {fifo 0}  }
	{ n_iter int 32 regular {fifo 0}  }
	{ numc_iter int 32 regular {fifo 0}  }
	{ tilen_out int 32 regular {fifo 1}  }
	{ tilenumc_out int 32 regular {fifo 1}  }
	{ numa_iter_out int 32 regular {fifo 1}  }
	{ n_iter_out int 32 regular {fifo 1}  }
	{ numc_iter_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_buf_s", "interface" : "fifo", "bitwidth" : 3200, "direction" : "READONLY"} , 
 	{ "Name" : "b_buf_s", "interface" : "fifo", "bitwidth" : 3200, "direction" : "READONLY"} , 
 	{ "Name" : "c_buf_s", "interface" : "fifo", "bitwidth" : 3200, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilen", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenuma", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilenumc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numa_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numc_iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tilen_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tilenumc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numa_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numc_iter_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 52
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
	{ a_buf_s_dout sc_in sc_lv 3200 signal 0 } 
	{ a_buf_s_empty_n sc_in sc_logic 1 signal 0 } 
	{ a_buf_s_read sc_out sc_logic 1 signal 0 } 
	{ b_buf_s_dout sc_in sc_lv 3200 signal 1 } 
	{ b_buf_s_empty_n sc_in sc_logic 1 signal 1 } 
	{ b_buf_s_read sc_out sc_logic 1 signal 1 } 
	{ c_buf_s_din sc_out sc_lv 3200 signal 2 } 
	{ c_buf_s_full_n sc_in sc_logic 1 signal 2 } 
	{ c_buf_s_write sc_out sc_logic 1 signal 2 } 
	{ tilen_dout sc_in sc_lv 32 signal 3 } 
	{ tilen_empty_n sc_in sc_logic 1 signal 3 } 
	{ tilen_read sc_out sc_logic 1 signal 3 } 
	{ tilenuma_dout sc_in sc_lv 32 signal 4 } 
	{ tilenuma_empty_n sc_in sc_logic 1 signal 4 } 
	{ tilenuma_read sc_out sc_logic 1 signal 4 } 
	{ tilenumc_dout sc_in sc_lv 32 signal 5 } 
	{ tilenumc_empty_n sc_in sc_logic 1 signal 5 } 
	{ tilenumc_read sc_out sc_logic 1 signal 5 } 
	{ numa_iter_dout sc_in sc_lv 32 signal 6 } 
	{ numa_iter_empty_n sc_in sc_logic 1 signal 6 } 
	{ numa_iter_read sc_out sc_logic 1 signal 6 } 
	{ n_iter_dout sc_in sc_lv 32 signal 7 } 
	{ n_iter_empty_n sc_in sc_logic 1 signal 7 } 
	{ n_iter_read sc_out sc_logic 1 signal 7 } 
	{ numc_iter_dout sc_in sc_lv 32 signal 8 } 
	{ numc_iter_empty_n sc_in sc_logic 1 signal 8 } 
	{ numc_iter_read sc_out sc_logic 1 signal 8 } 
	{ tilen_out_din sc_out sc_lv 32 signal 9 } 
	{ tilen_out_full_n sc_in sc_logic 1 signal 9 } 
	{ tilen_out_write sc_out sc_logic 1 signal 9 } 
	{ tilenumc_out_din sc_out sc_lv 32 signal 10 } 
	{ tilenumc_out_full_n sc_in sc_logic 1 signal 10 } 
	{ tilenumc_out_write sc_out sc_logic 1 signal 10 } 
	{ numa_iter_out_din sc_out sc_lv 32 signal 11 } 
	{ numa_iter_out_full_n sc_in sc_logic 1 signal 11 } 
	{ numa_iter_out_write sc_out sc_logic 1 signal 11 } 
	{ n_iter_out_din sc_out sc_lv 32 signal 12 } 
	{ n_iter_out_full_n sc_in sc_logic 1 signal 12 } 
	{ n_iter_out_write sc_out sc_logic 1 signal 12 } 
	{ numc_iter_out_din sc_out sc_lv 32 signal 13 } 
	{ numc_iter_out_full_n sc_in sc_logic 1 signal 13 } 
	{ numc_iter_out_write sc_out sc_logic 1 signal 13 } 
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
 	{ "name": "a_buf_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "a_buf_s", "role": "dout" }} , 
 	{ "name": "a_buf_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_s", "role": "empty_n" }} , 
 	{ "name": "a_buf_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buf_s", "role": "read" }} , 
 	{ "name": "b_buf_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "b_buf_s", "role": "dout" }} , 
 	{ "name": "b_buf_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_s", "role": "empty_n" }} , 
 	{ "name": "b_buf_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buf_s", "role": "read" }} , 
 	{ "name": "c_buf_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "c_buf_s", "role": "din" }} , 
 	{ "name": "c_buf_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_buf_s", "role": "full_n" }} , 
 	{ "name": "c_buf_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_buf_s", "role": "write" }} , 
 	{ "name": "tilen_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen", "role": "dout" }} , 
 	{ "name": "tilen_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen", "role": "empty_n" }} , 
 	{ "name": "tilen_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen", "role": "read" }} , 
 	{ "name": "tilenuma_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenuma", "role": "dout" }} , 
 	{ "name": "tilenuma_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma", "role": "empty_n" }} , 
 	{ "name": "tilenuma_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenuma", "role": "read" }} , 
 	{ "name": "tilenumc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc", "role": "dout" }} , 
 	{ "name": "tilenumc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc", "role": "empty_n" }} , 
 	{ "name": "tilenumc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc", "role": "read" }} , 
 	{ "name": "numa_iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numa_iter", "role": "dout" }} , 
 	{ "name": "numa_iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter", "role": "empty_n" }} , 
 	{ "name": "numa_iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numa_iter", "role": "read" }} , 
 	{ "name": "n_iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_iter", "role": "dout" }} , 
 	{ "name": "n_iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter", "role": "empty_n" }} , 
 	{ "name": "n_iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_iter", "role": "read" }} , 
 	{ "name": "numc_iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numc_iter", "role": "dout" }} , 
 	{ "name": "numc_iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter", "role": "empty_n" }} , 
 	{ "name": "numc_iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numc_iter", "role": "read" }} , 
 	{ "name": "tilen_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilen_out", "role": "din" }} , 
 	{ "name": "tilen_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen_out", "role": "full_n" }} , 
 	{ "name": "tilen_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilen_out", "role": "write" }} , 
 	{ "name": "tilenumc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "din" }} , 
 	{ "name": "tilenumc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "full_n" }} , 
 	{ "name": "tilenumc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tilenumc_out", "role": "write" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
		"CDFG" : "conv",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state56_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_1169", "FromInitialSV" : "55", "FromFinalState" : "ap_enable_state57_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_1173", "FromFinalSV" : "56", "FromAddress" : "local_c_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state57_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_1175", "ToInitialSV" : "56", "ToFinalState" : "ap_enable_state57_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_1175", "ToFinalSV" : "56", "ToAddress" : "local_c_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(reuse_test/main.cpp:101:45)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state57_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_1175", "FromInitialSV" : "56", "FromFinalState" : "ap_enable_state57_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_1175", "FromFinalSV" : "56", "FromAddress" : "local_c_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state56_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_1169", "ToInitialSV" : "55", "ToFinalState" : "ap_enable_state57_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_1173", "ToFinalSV" : "56", "ToAddress" : "local_c_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(reuse_test/main.cpp:101:45)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state56_pp0_iter3_stage0", "ap_enable_state57_pp0_iter4_stage0"]}],
		"Port" : [
			{"Name" : "a_buf_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1",
				"BlockSignal" : [
					{"Name" : "a_buf_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_buf_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1",
				"BlockSignal" : [
					{"Name" : "b_buf_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c_buf_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "1",
				"BlockSignal" : [
					{"Name" : "c_buf_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenuma", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenuma_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "tilenumc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numa_iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numa_iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "n_iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numc_iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numc_iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilen_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilen_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tilenumc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "tilenumc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numa_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numa_iter_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "n_iter_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numc_iter_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "numc_iter_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_buf_data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_buf_data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "local_c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buf_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buf_data_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_c_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_buf_data_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U49", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U50", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_32ns_96_1_1_U51", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_32ns_96_1_1_U52", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_7s_7_1_1_U53", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_7s_7_1_1_U54", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U55", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7ns_7_4_1_U56", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7ns_7_4_1_U57", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7s_7s_7s_7_4_1_U58", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv {
		a_buf_s {Type I LastRead 2 FirstWrite -1}
		b_buf_s {Type I LastRead 2 FirstWrite -1}
		c_buf_s {Type O LastRead -1 FirstWrite 106}
		tilen {Type I LastRead 0 FirstWrite -1}
		tilenuma {Type I LastRead 0 FirstWrite -1}
		tilenumc {Type I LastRead 0 FirstWrite -1}
		numa_iter {Type I LastRead 0 FirstWrite -1}
		n_iter {Type I LastRead 0 FirstWrite -1}
		numc_iter {Type I LastRead 0 FirstWrite -1}
		tilen_out {Type O LastRead -1 FirstWrite 0}
		tilenumc_out {Type O LastRead -1 FirstWrite 0}
		numa_iter_out {Type O LastRead -1 FirstWrite 0}
		n_iter_out {Type O LastRead -1 FirstWrite 0}
		numc_iter_out {Type O LastRead -1 FirstWrite 0}
		b_buf_data {Type IO LastRead -1 FirstWrite -1}
		a_buf_data {Type IO LastRead -1 FirstWrite -1}
		local_c {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_buf_s { ap_fifo {  { a_buf_s_dout fifo_data 0 3200 }  { a_buf_s_empty_n fifo_status 0 1 }  { a_buf_s_read fifo_update 1 1 } } }
	b_buf_s { ap_fifo {  { b_buf_s_dout fifo_data 0 3200 }  { b_buf_s_empty_n fifo_status 0 1 }  { b_buf_s_read fifo_update 1 1 } } }
	c_buf_s { ap_fifo {  { c_buf_s_din fifo_data 1 3200 }  { c_buf_s_full_n fifo_status 0 1 }  { c_buf_s_write fifo_update 1 1 } } }
	tilen { ap_fifo {  { tilen_dout fifo_data 0 32 }  { tilen_empty_n fifo_status 0 1 }  { tilen_read fifo_update 1 1 } } }
	tilenuma { ap_fifo {  { tilenuma_dout fifo_data 0 32 }  { tilenuma_empty_n fifo_status 0 1 }  { tilenuma_read fifo_update 1 1 } } }
	tilenumc { ap_fifo {  { tilenumc_dout fifo_data 0 32 }  { tilenumc_empty_n fifo_status 0 1 }  { tilenumc_read fifo_update 1 1 } } }
	numa_iter { ap_fifo {  { numa_iter_dout fifo_data 0 32 }  { numa_iter_empty_n fifo_status 0 1 }  { numa_iter_read fifo_update 1 1 } } }
	n_iter { ap_fifo {  { n_iter_dout fifo_data 0 32 }  { n_iter_empty_n fifo_status 0 1 }  { n_iter_read fifo_update 1 1 } } }
	numc_iter { ap_fifo {  { numc_iter_dout fifo_data 0 32 }  { numc_iter_empty_n fifo_status 0 1 }  { numc_iter_read fifo_update 1 1 } } }
	tilen_out { ap_fifo {  { tilen_out_din fifo_data 1 32 }  { tilen_out_full_n fifo_status 0 1 }  { tilen_out_write fifo_update 1 1 } } }
	tilenumc_out { ap_fifo {  { tilenumc_out_din fifo_data 1 32 }  { tilenumc_out_full_n fifo_status 0 1 }  { tilenumc_out_write fifo_update 1 1 } } }
	numa_iter_out { ap_fifo {  { numa_iter_out_din fifo_data 1 32 }  { numa_iter_out_full_n fifo_status 0 1 }  { numa_iter_out_write fifo_update 1 1 } } }
	n_iter_out { ap_fifo {  { n_iter_out_din fifo_data 1 32 }  { n_iter_out_full_n fifo_status 0 1 }  { n_iter_out_write fifo_update 1 1 } } }
	numc_iter_out { ap_fifo {  { numc_iter_out_din fifo_data 1 32 }  { numc_iter_out_full_n fifo_status 0 1 }  { numc_iter_out_write fifo_update 1 1 } } }
}
