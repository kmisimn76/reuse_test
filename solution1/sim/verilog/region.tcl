
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set C_group [add_wave_group C(wire) -into $cinoutgroup]
add_wave /apatb_region_top/AESL_inst_region/C_o_ap_vld -into $C_group -color #ffff00 -radix hex
add_wave /apatb_region_top/AESL_inst_region/C_o -into $C_group -radix hex
add_wave /apatb_region_top/AESL_inst_region/C_i -into $C_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set n_iter_group [add_wave_group n_iter(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/n_iter -into $n_iter_group -radix hex
set numc_iter_group [add_wave_group numc_iter(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/numc_iter -into $numc_iter_group -radix hex
set numa_iter_group [add_wave_group numa_iter(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/numa_iter -into $numa_iter_group -radix hex
set tilen_group [add_wave_group tilen(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/tilen -into $tilen_group -radix hex
set tilenumc_group [add_wave_group tilenumc(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/tilenumc -into $tilenumc_group -radix hex
set tilenuma_group [add_wave_group tilenuma(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/tilenuma -into $tilenuma_group -radix hex
set n_group [add_wave_group n(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/n -into $n_group -radix hex
set numc_group [add_wave_group numc(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/numc -into $numc_group -radix hex
set numa_group [add_wave_group numa(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/numa -into $numa_group -radix hex
set B_group [add_wave_group B(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/B -into $B_group -radix hex
set A_group [add_wave_group A(wire) -into $cinputgroup]
add_wave /apatb_region_top/AESL_inst_region/A -into $A_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_region_top/AESL_inst_region/ap_start -into $blocksiggroup
add_wave /apatb_region_top/AESL_inst_region/ap_done -into $blocksiggroup
add_wave /apatb_region_top/AESL_inst_region/ap_ready -into $blocksiggroup
add_wave /apatb_region_top/AESL_inst_region/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_region_top/AESL_inst_region/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_region_top/AESL_inst_region/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_region_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_region_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_region_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_region_top/LENGTH_A -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_B -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_C -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_numa -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_numc -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_n -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_tilenuma -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_tilenumc -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_tilen -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_numa_iter -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_numc_iter -into $tb_portdepth_group -radix hex
add_wave /apatb_region_top/LENGTH_n_iter -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_C_group [add_wave_group C(wire) -into $tbcinoutgroup]
add_wave /apatb_region_top/C_o_ap_vld -into $tb_C_group -color #ffff00 -radix hex
add_wave /apatb_region_top/C_o -into $tb_C_group -radix hex
add_wave /apatb_region_top/C_i -into $tb_C_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_n_iter_group [add_wave_group n_iter(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/n_iter -into $tb_n_iter_group -radix hex
set tb_numc_iter_group [add_wave_group numc_iter(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/numc_iter -into $tb_numc_iter_group -radix hex
set tb_numa_iter_group [add_wave_group numa_iter(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/numa_iter -into $tb_numa_iter_group -radix hex
set tb_tilen_group [add_wave_group tilen(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/tilen -into $tb_tilen_group -radix hex
set tb_tilenumc_group [add_wave_group tilenumc(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/tilenumc -into $tb_tilenumc_group -radix hex
set tb_tilenuma_group [add_wave_group tilenuma(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/tilenuma -into $tb_tilenuma_group -radix hex
set tb_n_group [add_wave_group n(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/n -into $tb_n_group -radix hex
set tb_numc_group [add_wave_group numc(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/numc -into $tb_numc_group -radix hex
set tb_numa_group [add_wave_group numa(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/numa -into $tb_numa_group -radix hex
set tb_B_group [add_wave_group B(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/B -into $tb_B_group -radix hex
set tb_A_group [add_wave_group A(wire) -into $tbcinputgroup]
add_wave /apatb_region_top/A -into $tb_A_group -radix hex
save_wave_config region.wcfg
run all

