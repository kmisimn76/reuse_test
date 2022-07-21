############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project reuse_test
set_top region
add_files reuse_test/main.cpp
add_files -tb reuse_test/test.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu200-fsgd2104-2-e}
create_clock -period 10 -name default
#source "./reuse_test/solution1/directives.tcl"
cosim_design -wave_debug -enable_dataflow_profiling -trace_level all
