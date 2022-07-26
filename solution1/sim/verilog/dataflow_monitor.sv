
`include "sample_manager.sv"
`include "csv_file_dump.sv"
`include "df_fifo_monitor.sv"
`include "df_process_monitor.sv"
`include "nodf_module_monitor.sv"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);

    df_fifo_intf fifo_intf_1(clock,reset);
    assign fifo_intf_1.rd_en = AESL_inst_region.tilenuma_c_U.if_read;
    assign fifo_intf_1.wr_en = AESL_inst_region.tilenuma_c_U.if_write;
    assign fifo_intf_1.fifo_rd_block = ~(AESL_inst_region.load_a_U0.tilenuma_blk_n);
    assign fifo_intf_1.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.tilenuma_out_blk_n);
    assign fifo_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_1;
    csv_file_dump cstatus_csv_dumper_1;
    df_fifo_monitor fifo_monitor_1;
    df_fifo_intf fifo_intf_2(clock,reset);
    assign fifo_intf_2.rd_en = AESL_inst_region.tilenuma_c11_U.if_read;
    assign fifo_intf_2.wr_en = AESL_inst_region.tilenuma_c11_U.if_write;
    assign fifo_intf_2.fifo_rd_block = ~(AESL_inst_region.load_b_U0.tilenuma_blk_n);
    assign fifo_intf_2.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.tilenuma_out1_blk_n);
    assign fifo_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_2;
    csv_file_dump cstatus_csv_dumper_2;
    df_fifo_monitor fifo_monitor_2;
    df_fifo_intf fifo_intf_3(clock,reset);
    assign fifo_intf_3.rd_en = AESL_inst_region.tilenumc_c_U.if_read;
    assign fifo_intf_3.wr_en = AESL_inst_region.tilenumc_c_U.if_write;
    assign fifo_intf_3.fifo_rd_block = ~(AESL_inst_region.load_b_U0.tilenumc_blk_n);
    assign fifo_intf_3.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.tilenumc_out_blk_n);
    assign fifo_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_3;
    csv_file_dump cstatus_csv_dumper_3;
    df_fifo_monitor fifo_monitor_3;
    df_fifo_intf fifo_intf_4(clock,reset);
    assign fifo_intf_4.rd_en = AESL_inst_region.tilenumc_c12_U.if_read;
    assign fifo_intf_4.wr_en = AESL_inst_region.tilenumc_c12_U.if_write;
    assign fifo_intf_4.fifo_rd_block = ~(AESL_inst_region.conv_U0.tilenumc_blk_n);
    assign fifo_intf_4.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.tilenumc_out2_blk_n);
    assign fifo_intf_4.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_4;
    csv_file_dump cstatus_csv_dumper_4;
    df_fifo_monitor fifo_monitor_4;
    df_fifo_intf fifo_intf_5(clock,reset);
    assign fifo_intf_5.rd_en = AESL_inst_region.tilen_c_U.if_read;
    assign fifo_intf_5.wr_en = AESL_inst_region.tilen_c_U.if_write;
    assign fifo_intf_5.fifo_rd_block = ~(AESL_inst_region.load_a_U0.tilen_blk_n);
    assign fifo_intf_5.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.tilen_out_blk_n);
    assign fifo_intf_5.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_5;
    csv_file_dump cstatus_csv_dumper_5;
    df_fifo_monitor fifo_monitor_5;
    df_fifo_intf fifo_intf_6(clock,reset);
    assign fifo_intf_6.rd_en = AESL_inst_region.numa_iter_c_U.if_read;
    assign fifo_intf_6.wr_en = AESL_inst_region.numa_iter_c_U.if_write;
    assign fifo_intf_6.fifo_rd_block = ~(AESL_inst_region.load_a_U0.numa_iter_blk_n);
    assign fifo_intf_6.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.numa_iter_out_blk_n);
    assign fifo_intf_6.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_6;
    csv_file_dump cstatus_csv_dumper_6;
    df_fifo_monitor fifo_monitor_6;
    df_fifo_intf fifo_intf_7(clock,reset);
    assign fifo_intf_7.rd_en = AESL_inst_region.numa_iter_c13_U.if_read;
    assign fifo_intf_7.wr_en = AESL_inst_region.numa_iter_c13_U.if_write;
    assign fifo_intf_7.fifo_rd_block = ~(AESL_inst_region.load_b_U0.numa_iter_blk_n);
    assign fifo_intf_7.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.numa_iter_out3_blk_n);
    assign fifo_intf_7.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_7;
    csv_file_dump cstatus_csv_dumper_7;
    df_fifo_monitor fifo_monitor_7;
    df_fifo_intf fifo_intf_8(clock,reset);
    assign fifo_intf_8.rd_en = AESL_inst_region.numc_iter_c_U.if_read;
    assign fifo_intf_8.wr_en = AESL_inst_region.numc_iter_c_U.if_write;
    assign fifo_intf_8.fifo_rd_block = ~(AESL_inst_region.load_a_U0.numc_iter_blk_n);
    assign fifo_intf_8.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.numc_iter_out_blk_n);
    assign fifo_intf_8.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_8;
    csv_file_dump cstatus_csv_dumper_8;
    df_fifo_monitor fifo_monitor_8;
    df_fifo_intf fifo_intf_9(clock,reset);
    assign fifo_intf_9.rd_en = AESL_inst_region.numc_iter_c14_U.if_read;
    assign fifo_intf_9.wr_en = AESL_inst_region.numc_iter_c14_U.if_write;
    assign fifo_intf_9.fifo_rd_block = ~(AESL_inst_region.load_b_U0.numc_iter_blk_n);
    assign fifo_intf_9.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.numc_iter_out4_blk_n);
    assign fifo_intf_9.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_9;
    csv_file_dump cstatus_csv_dumper_9;
    df_fifo_monitor fifo_monitor_9;
    df_fifo_intf fifo_intf_10(clock,reset);
    assign fifo_intf_10.rd_en = AESL_inst_region.n_iter_c_U.if_read;
    assign fifo_intf_10.wr_en = AESL_inst_region.n_iter_c_U.if_write;
    assign fifo_intf_10.fifo_rd_block = ~(AESL_inst_region.load_a_U0.n_iter_blk_n);
    assign fifo_intf_10.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.n_iter_out_blk_n);
    assign fifo_intf_10.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_10;
    csv_file_dump cstatus_csv_dumper_10;
    df_fifo_monitor fifo_monitor_10;
    df_fifo_intf fifo_intf_11(clock,reset);
    assign fifo_intf_11.rd_en = AESL_inst_region.n_iter_c15_U.if_read;
    assign fifo_intf_11.wr_en = AESL_inst_region.n_iter_c15_U.if_write;
    assign fifo_intf_11.fifo_rd_block = ~(AESL_inst_region.load_b_U0.n_iter_blk_n);
    assign fifo_intf_11.fifo_wr_block = ~(AESL_inst_region.region_entry64_U0.n_iter_out5_blk_n);
    assign fifo_intf_11.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_11;
    csv_file_dump cstatus_csv_dumper_11;
    df_fifo_monitor fifo_monitor_11;
    df_fifo_intf fifo_intf_12(clock,reset);
    assign fifo_intf_12.rd_en = AESL_inst_region.a_buf_U.if_read;
    assign fifo_intf_12.wr_en = AESL_inst_region.a_buf_U.if_write;
    assign fifo_intf_12.fifo_rd_block = ~(AESL_inst_region.conv_U0.a_buf_s_blk_n);
    assign fifo_intf_12.fifo_wr_block = ~(AESL_inst_region.load_a_U0.a_buf_s_blk_n);
    assign fifo_intf_12.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_12;
    csv_file_dump cstatus_csv_dumper_12;
    df_fifo_monitor fifo_monitor_12;
    df_fifo_intf fifo_intf_13(clock,reset);
    assign fifo_intf_13.rd_en = AESL_inst_region.tilenuma_c16_U.if_read;
    assign fifo_intf_13.wr_en = AESL_inst_region.tilenuma_c16_U.if_write;
    assign fifo_intf_13.fifo_rd_block = ~(AESL_inst_region.conv_U0.tilenuma_blk_n);
    assign fifo_intf_13.fifo_wr_block = ~(AESL_inst_region.load_a_U0.tilenuma_out_blk_n);
    assign fifo_intf_13.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_13;
    csv_file_dump cstatus_csv_dumper_13;
    df_fifo_monitor fifo_monitor_13;
    df_fifo_intf fifo_intf_14(clock,reset);
    assign fifo_intf_14.rd_en = AESL_inst_region.tilen_c17_U.if_read;
    assign fifo_intf_14.wr_en = AESL_inst_region.tilen_c17_U.if_write;
    assign fifo_intf_14.fifo_rd_block = ~(AESL_inst_region.conv_U0.tilen_blk_n);
    assign fifo_intf_14.fifo_wr_block = ~(AESL_inst_region.load_a_U0.tilen_out_blk_n);
    assign fifo_intf_14.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_14;
    csv_file_dump cstatus_csv_dumper_14;
    df_fifo_monitor fifo_monitor_14;
    df_fifo_intf fifo_intf_15(clock,reset);
    assign fifo_intf_15.rd_en = AESL_inst_region.numa_iter_c18_U.if_read;
    assign fifo_intf_15.wr_en = AESL_inst_region.numa_iter_c18_U.if_write;
    assign fifo_intf_15.fifo_rd_block = ~(AESL_inst_region.conv_U0.numa_iter_blk_n);
    assign fifo_intf_15.fifo_wr_block = ~(AESL_inst_region.load_a_U0.numa_iter_out_blk_n);
    assign fifo_intf_15.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_15;
    csv_file_dump cstatus_csv_dumper_15;
    df_fifo_monitor fifo_monitor_15;
    df_fifo_intf fifo_intf_16(clock,reset);
    assign fifo_intf_16.rd_en = AESL_inst_region.n_iter_c19_U.if_read;
    assign fifo_intf_16.wr_en = AESL_inst_region.n_iter_c19_U.if_write;
    assign fifo_intf_16.fifo_rd_block = ~(AESL_inst_region.conv_U0.n_iter_blk_n);
    assign fifo_intf_16.fifo_wr_block = ~(AESL_inst_region.load_a_U0.n_iter_out_blk_n);
    assign fifo_intf_16.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_16;
    csv_file_dump cstatus_csv_dumper_16;
    df_fifo_monitor fifo_monitor_16;
    df_fifo_intf fifo_intf_17(clock,reset);
    assign fifo_intf_17.rd_en = AESL_inst_region.numc_iter_c20_U.if_read;
    assign fifo_intf_17.wr_en = AESL_inst_region.numc_iter_c20_U.if_write;
    assign fifo_intf_17.fifo_rd_block = ~(AESL_inst_region.conv_U0.numc_iter_blk_n);
    assign fifo_intf_17.fifo_wr_block = ~(AESL_inst_region.load_a_U0.numc_iter_out_blk_n);
    assign fifo_intf_17.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_17;
    csv_file_dump cstatus_csv_dumper_17;
    df_fifo_monitor fifo_monitor_17;
    df_fifo_intf fifo_intf_18(clock,reset);
    assign fifo_intf_18.rd_en = AESL_inst_region.b_buf_U.if_read;
    assign fifo_intf_18.wr_en = AESL_inst_region.b_buf_U.if_write;
    assign fifo_intf_18.fifo_rd_block = ~(AESL_inst_region.conv_U0.b_buf_s_blk_n);
    assign fifo_intf_18.fifo_wr_block = ~(AESL_inst_region.load_b_U0.b_buf_blk_n);
    assign fifo_intf_18.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_18;
    csv_file_dump cstatus_csv_dumper_18;
    df_fifo_monitor fifo_monitor_18;
    df_fifo_intf fifo_intf_19(clock,reset);
    assign fifo_intf_19.rd_en = AESL_inst_region.c_buf_U.if_read;
    assign fifo_intf_19.wr_en = AESL_inst_region.c_buf_U.if_write;
    assign fifo_intf_19.fifo_rd_block = ~(AESL_inst_region.store_c_U0.c_buf_blk_n);
    assign fifo_intf_19.fifo_wr_block = ~(AESL_inst_region.conv_U0.c_buf_s_blk_n);
    assign fifo_intf_19.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_19;
    csv_file_dump cstatus_csv_dumper_19;
    df_fifo_monitor fifo_monitor_19;
    df_fifo_intf fifo_intf_20(clock,reset);
    assign fifo_intf_20.rd_en = AESL_inst_region.tilen_c21_U.if_read;
    assign fifo_intf_20.wr_en = AESL_inst_region.tilen_c21_U.if_write;
    assign fifo_intf_20.fifo_rd_block = ~(AESL_inst_region.store_c_U0.tilen_blk_n);
    assign fifo_intf_20.fifo_wr_block = ~(AESL_inst_region.conv_U0.tilen_out_blk_n);
    assign fifo_intf_20.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_20;
    csv_file_dump cstatus_csv_dumper_20;
    df_fifo_monitor fifo_monitor_20;
    df_fifo_intf fifo_intf_21(clock,reset);
    assign fifo_intf_21.rd_en = AESL_inst_region.tilenumc_c22_U.if_read;
    assign fifo_intf_21.wr_en = AESL_inst_region.tilenumc_c22_U.if_write;
    assign fifo_intf_21.fifo_rd_block = ~(AESL_inst_region.store_c_U0.tilenumc_blk_n);
    assign fifo_intf_21.fifo_wr_block = ~(AESL_inst_region.conv_U0.tilenumc_out_blk_n);
    assign fifo_intf_21.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_21;
    csv_file_dump cstatus_csv_dumper_21;
    df_fifo_monitor fifo_monitor_21;
    df_fifo_intf fifo_intf_22(clock,reset);
    assign fifo_intf_22.rd_en = AESL_inst_region.numa_iter_c23_U.if_read;
    assign fifo_intf_22.wr_en = AESL_inst_region.numa_iter_c23_U.if_write;
    assign fifo_intf_22.fifo_rd_block = ~(AESL_inst_region.store_c_U0.numa_iter_blk_n);
    assign fifo_intf_22.fifo_wr_block = ~(AESL_inst_region.conv_U0.numa_iter_out_blk_n);
    assign fifo_intf_22.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_22;
    csv_file_dump cstatus_csv_dumper_22;
    df_fifo_monitor fifo_monitor_22;
    df_fifo_intf fifo_intf_23(clock,reset);
    assign fifo_intf_23.rd_en = AESL_inst_region.n_iter_c24_U.if_read;
    assign fifo_intf_23.wr_en = AESL_inst_region.n_iter_c24_U.if_write;
    assign fifo_intf_23.fifo_rd_block = ~(AESL_inst_region.store_c_U0.n_iter_blk_n);
    assign fifo_intf_23.fifo_wr_block = ~(AESL_inst_region.conv_U0.n_iter_out_blk_n);
    assign fifo_intf_23.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_23;
    csv_file_dump cstatus_csv_dumper_23;
    df_fifo_monitor fifo_monitor_23;
    df_fifo_intf fifo_intf_24(clock,reset);
    assign fifo_intf_24.rd_en = AESL_inst_region.numc_iter_c25_U.if_read;
    assign fifo_intf_24.wr_en = AESL_inst_region.numc_iter_c25_U.if_write;
    assign fifo_intf_24.fifo_rd_block = ~(AESL_inst_region.store_c_U0.numc_iter_blk_n);
    assign fifo_intf_24.fifo_wr_block = ~(AESL_inst_region.conv_U0.numc_iter_out_blk_n);
    assign fifo_intf_24.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_24;
    csv_file_dump cstatus_csv_dumper_24;
    df_fifo_monitor fifo_monitor_24;

    df_process_intf process_intf_1(clock,reset);
    assign process_intf_1.ap_start = AESL_inst_region.region_entry64_U0.ap_start;
    assign process_intf_1.ap_ready = AESL_inst_region.region_entry64_U0.ap_ready;
    assign process_intf_1.ap_done = AESL_inst_region.region_entry64_U0.ap_done;
    assign process_intf_1.ap_continue = AESL_inst_region.region_entry64_U0.ap_continue;
    assign process_intf_1.real_start = AESL_inst_region.region_entry64_U0.ap_start;
    assign process_intf_1.pin_stall = 1'b0;
    assign process_intf_1.pout_stall = 1'b0 | ~AESL_inst_region.region_entry64_U0.tilenuma_out_blk_n | ~AESL_inst_region.region_entry64_U0.tilenuma_out1_blk_n | ~AESL_inst_region.region_entry64_U0.tilenumc_out_blk_n | ~AESL_inst_region.region_entry64_U0.tilenumc_out2_blk_n | ~AESL_inst_region.region_entry64_U0.tilen_out_blk_n | ~AESL_inst_region.region_entry64_U0.numa_iter_out_blk_n | ~AESL_inst_region.region_entry64_U0.numa_iter_out3_blk_n | ~AESL_inst_region.region_entry64_U0.numc_iter_out_blk_n | ~AESL_inst_region.region_entry64_U0.numc_iter_out4_blk_n | ~AESL_inst_region.region_entry64_U0.n_iter_out_blk_n | ~AESL_inst_region.region_entry64_U0.n_iter_out5_blk_n;
    assign process_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_1;
    csv_file_dump pstatus_csv_dumper_1;
    df_process_monitor process_monitor_1;
    df_process_intf process_intf_2(clock,reset);
    assign process_intf_2.ap_start = AESL_inst_region.load_a_U0.ap_start;
    assign process_intf_2.ap_ready = AESL_inst_region.load_a_U0.ap_ready;
    assign process_intf_2.ap_done = AESL_inst_region.load_a_U0.ap_done;
    assign process_intf_2.ap_continue = AESL_inst_region.load_a_U0.ap_continue;
    assign process_intf_2.real_start = AESL_inst_region.load_a_U0.ap_start;
    assign process_intf_2.pin_stall = 1'b0 | ~AESL_inst_region.load_a_U0.tilenuma_blk_n | ~AESL_inst_region.load_a_U0.tilen_blk_n | ~AESL_inst_region.load_a_U0.numa_iter_blk_n | ~AESL_inst_region.load_a_U0.n_iter_blk_n | ~AESL_inst_region.load_a_U0.numc_iter_blk_n;
    assign process_intf_2.pout_stall = 1'b0 | ~AESL_inst_region.load_a_U0.a_buf_s_blk_n | ~AESL_inst_region.load_a_U0.tilenuma_out_blk_n | ~AESL_inst_region.load_a_U0.tilen_out_blk_n | ~AESL_inst_region.load_a_U0.numa_iter_out_blk_n | ~AESL_inst_region.load_a_U0.n_iter_out_blk_n | ~AESL_inst_region.load_a_U0.numc_iter_out_blk_n;
    assign process_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_2;
    csv_file_dump pstatus_csv_dumper_2;
    df_process_monitor process_monitor_2;
    df_process_intf process_intf_3(clock,reset);
    assign process_intf_3.ap_start = AESL_inst_region.load_b_U0.ap_start;
    assign process_intf_3.ap_ready = AESL_inst_region.load_b_U0.ap_ready;
    assign process_intf_3.ap_done = AESL_inst_region.load_b_U0.ap_done;
    assign process_intf_3.ap_continue = AESL_inst_region.load_b_U0.ap_continue;
    assign process_intf_3.real_start = AESL_inst_region.load_b_U0.ap_start;
    assign process_intf_3.pin_stall = 1'b0 | ~AESL_inst_region.load_b_U0.tilenuma_blk_n | ~AESL_inst_region.load_b_U0.tilenumc_blk_n | ~AESL_inst_region.load_b_U0.numa_iter_blk_n | ~AESL_inst_region.load_b_U0.n_iter_blk_n | ~AESL_inst_region.load_b_U0.numc_iter_blk_n;
    assign process_intf_3.pout_stall = 1'b0 | ~AESL_inst_region.load_b_U0.b_buf_blk_n;
    assign process_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_3;
    csv_file_dump pstatus_csv_dumper_3;
    df_process_monitor process_monitor_3;
    df_process_intf process_intf_4(clock,reset);
    assign process_intf_4.ap_start = AESL_inst_region.conv_U0.ap_start;
    assign process_intf_4.ap_ready = AESL_inst_region.conv_U0.ap_ready;
    assign process_intf_4.ap_done = AESL_inst_region.conv_U0.ap_done;
    assign process_intf_4.ap_continue = AESL_inst_region.conv_U0.ap_continue;
    assign process_intf_4.real_start = AESL_inst_region.conv_U0.ap_start;
    assign process_intf_4.pin_stall = 1'b0 | ~AESL_inst_region.conv_U0.a_buf_s_blk_n | ~AESL_inst_region.conv_U0.b_buf_s_blk_n | ~AESL_inst_region.conv_U0.tilen_blk_n | ~AESL_inst_region.conv_U0.tilenuma_blk_n | ~AESL_inst_region.conv_U0.tilenumc_blk_n | ~AESL_inst_region.conv_U0.numa_iter_blk_n | ~AESL_inst_region.conv_U0.n_iter_blk_n | ~AESL_inst_region.conv_U0.numc_iter_blk_n;
    assign process_intf_4.pout_stall = 1'b0 | ~AESL_inst_region.conv_U0.c_buf_s_blk_n | ~AESL_inst_region.conv_U0.tilen_out_blk_n | ~AESL_inst_region.conv_U0.tilenumc_out_blk_n | ~AESL_inst_region.conv_U0.numa_iter_out_blk_n | ~AESL_inst_region.conv_U0.n_iter_out_blk_n | ~AESL_inst_region.conv_U0.numc_iter_out_blk_n;
    assign process_intf_4.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_4;
    csv_file_dump pstatus_csv_dumper_4;
    df_process_monitor process_monitor_4;
    df_process_intf process_intf_5(clock,reset);
    assign process_intf_5.ap_start = AESL_inst_region.store_c_U0.ap_start;
    assign process_intf_5.ap_ready = AESL_inst_region.store_c_U0.ap_ready;
    assign process_intf_5.ap_done = AESL_inst_region.store_c_U0.ap_done;
    assign process_intf_5.ap_continue = AESL_inst_region.store_c_U0.ap_continue;
    assign process_intf_5.real_start = AESL_inst_region.store_c_U0.ap_start;
    assign process_intf_5.pin_stall = 1'b0 | ~AESL_inst_region.store_c_U0.c_buf_blk_n | ~AESL_inst_region.store_c_U0.tilenumc_blk_n | ~AESL_inst_region.store_c_U0.tilen_blk_n | ~AESL_inst_region.store_c_U0.numa_iter_blk_n | ~AESL_inst_region.store_c_U0.n_iter_blk_n | ~AESL_inst_region.store_c_U0.numc_iter_blk_n;
    assign process_intf_5.pout_stall = 1'b0;
    assign process_intf_5.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_5;
    csv_file_dump pstatus_csv_dumper_5;
    df_process_monitor process_monitor_5;

    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_region.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_region.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_region.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;

    fifo_csv_dumper_1 = new("./depth1.csv");
    cstatus_csv_dumper_1 = new("./chan_status1.csv");
    fifo_monitor_1 = new(fifo_csv_dumper_1,fifo_intf_1,cstatus_csv_dumper_1);
    fifo_csv_dumper_2 = new("./depth2.csv");
    cstatus_csv_dumper_2 = new("./chan_status2.csv");
    fifo_monitor_2 = new(fifo_csv_dumper_2,fifo_intf_2,cstatus_csv_dumper_2);
    fifo_csv_dumper_3 = new("./depth3.csv");
    cstatus_csv_dumper_3 = new("./chan_status3.csv");
    fifo_monitor_3 = new(fifo_csv_dumper_3,fifo_intf_3,cstatus_csv_dumper_3);
    fifo_csv_dumper_4 = new("./depth4.csv");
    cstatus_csv_dumper_4 = new("./chan_status4.csv");
    fifo_monitor_4 = new(fifo_csv_dumper_4,fifo_intf_4,cstatus_csv_dumper_4);
    fifo_csv_dumper_5 = new("./depth5.csv");
    cstatus_csv_dumper_5 = new("./chan_status5.csv");
    fifo_monitor_5 = new(fifo_csv_dumper_5,fifo_intf_5,cstatus_csv_dumper_5);
    fifo_csv_dumper_6 = new("./depth6.csv");
    cstatus_csv_dumper_6 = new("./chan_status6.csv");
    fifo_monitor_6 = new(fifo_csv_dumper_6,fifo_intf_6,cstatus_csv_dumper_6);
    fifo_csv_dumper_7 = new("./depth7.csv");
    cstatus_csv_dumper_7 = new("./chan_status7.csv");
    fifo_monitor_7 = new(fifo_csv_dumper_7,fifo_intf_7,cstatus_csv_dumper_7);
    fifo_csv_dumper_8 = new("./depth8.csv");
    cstatus_csv_dumper_8 = new("./chan_status8.csv");
    fifo_monitor_8 = new(fifo_csv_dumper_8,fifo_intf_8,cstatus_csv_dumper_8);
    fifo_csv_dumper_9 = new("./depth9.csv");
    cstatus_csv_dumper_9 = new("./chan_status9.csv");
    fifo_monitor_9 = new(fifo_csv_dumper_9,fifo_intf_9,cstatus_csv_dumper_9);
    fifo_csv_dumper_10 = new("./depth10.csv");
    cstatus_csv_dumper_10 = new("./chan_status10.csv");
    fifo_monitor_10 = new(fifo_csv_dumper_10,fifo_intf_10,cstatus_csv_dumper_10);
    fifo_csv_dumper_11 = new("./depth11.csv");
    cstatus_csv_dumper_11 = new("./chan_status11.csv");
    fifo_monitor_11 = new(fifo_csv_dumper_11,fifo_intf_11,cstatus_csv_dumper_11);
    fifo_csv_dumper_12 = new("./depth12.csv");
    cstatus_csv_dumper_12 = new("./chan_status12.csv");
    fifo_monitor_12 = new(fifo_csv_dumper_12,fifo_intf_12,cstatus_csv_dumper_12);
    fifo_csv_dumper_13 = new("./depth13.csv");
    cstatus_csv_dumper_13 = new("./chan_status13.csv");
    fifo_monitor_13 = new(fifo_csv_dumper_13,fifo_intf_13,cstatus_csv_dumper_13);
    fifo_csv_dumper_14 = new("./depth14.csv");
    cstatus_csv_dumper_14 = new("./chan_status14.csv");
    fifo_monitor_14 = new(fifo_csv_dumper_14,fifo_intf_14,cstatus_csv_dumper_14);
    fifo_csv_dumper_15 = new("./depth15.csv");
    cstatus_csv_dumper_15 = new("./chan_status15.csv");
    fifo_monitor_15 = new(fifo_csv_dumper_15,fifo_intf_15,cstatus_csv_dumper_15);
    fifo_csv_dumper_16 = new("./depth16.csv");
    cstatus_csv_dumper_16 = new("./chan_status16.csv");
    fifo_monitor_16 = new(fifo_csv_dumper_16,fifo_intf_16,cstatus_csv_dumper_16);
    fifo_csv_dumper_17 = new("./depth17.csv");
    cstatus_csv_dumper_17 = new("./chan_status17.csv");
    fifo_monitor_17 = new(fifo_csv_dumper_17,fifo_intf_17,cstatus_csv_dumper_17);
    fifo_csv_dumper_18 = new("./depth18.csv");
    cstatus_csv_dumper_18 = new("./chan_status18.csv");
    fifo_monitor_18 = new(fifo_csv_dumper_18,fifo_intf_18,cstatus_csv_dumper_18);
    fifo_csv_dumper_19 = new("./depth19.csv");
    cstatus_csv_dumper_19 = new("./chan_status19.csv");
    fifo_monitor_19 = new(fifo_csv_dumper_19,fifo_intf_19,cstatus_csv_dumper_19);
    fifo_csv_dumper_20 = new("./depth20.csv");
    cstatus_csv_dumper_20 = new("./chan_status20.csv");
    fifo_monitor_20 = new(fifo_csv_dumper_20,fifo_intf_20,cstatus_csv_dumper_20);
    fifo_csv_dumper_21 = new("./depth21.csv");
    cstatus_csv_dumper_21 = new("./chan_status21.csv");
    fifo_monitor_21 = new(fifo_csv_dumper_21,fifo_intf_21,cstatus_csv_dumper_21);
    fifo_csv_dumper_22 = new("./depth22.csv");
    cstatus_csv_dumper_22 = new("./chan_status22.csv");
    fifo_monitor_22 = new(fifo_csv_dumper_22,fifo_intf_22,cstatus_csv_dumper_22);
    fifo_csv_dumper_23 = new("./depth23.csv");
    cstatus_csv_dumper_23 = new("./chan_status23.csv");
    fifo_monitor_23 = new(fifo_csv_dumper_23,fifo_intf_23,cstatus_csv_dumper_23);
    fifo_csv_dumper_24 = new("./depth24.csv");
    cstatus_csv_dumper_24 = new("./chan_status24.csv");
    fifo_monitor_24 = new(fifo_csv_dumper_24,fifo_intf_24,cstatus_csv_dumper_24);

    pstall_csv_dumper_1 = new("./stalling1.csv");
    pstatus_csv_dumper_1 = new("./status1.csv");
    process_monitor_1 = new(pstall_csv_dumper_1,process_intf_1,pstatus_csv_dumper_1);
    pstall_csv_dumper_2 = new("./stalling2.csv");
    pstatus_csv_dumper_2 = new("./status2.csv");
    process_monitor_2 = new(pstall_csv_dumper_2,process_intf_2,pstatus_csv_dumper_2);
    pstall_csv_dumper_3 = new("./stalling3.csv");
    pstatus_csv_dumper_3 = new("./status3.csv");
    process_monitor_3 = new(pstall_csv_dumper_3,process_intf_3,pstatus_csv_dumper_3);
    pstall_csv_dumper_4 = new("./stalling4.csv");
    pstatus_csv_dumper_4 = new("./status4.csv");
    process_monitor_4 = new(pstall_csv_dumper_4,process_intf_4,pstatus_csv_dumper_4);
    pstall_csv_dumper_5 = new("./stalling5.csv");
    pstatus_csv_dumper_5 = new("./status5.csv");
    process_monitor_5 = new(pstall_csv_dumper_5,process_intf_5,pstatus_csv_dumper_5);

    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);

    sample_manager_inst.add_one_monitor(fifo_monitor_1);
    sample_manager_inst.add_one_monitor(fifo_monitor_2);
    sample_manager_inst.add_one_monitor(fifo_monitor_3);
    sample_manager_inst.add_one_monitor(fifo_monitor_4);
    sample_manager_inst.add_one_monitor(fifo_monitor_5);
    sample_manager_inst.add_one_monitor(fifo_monitor_6);
    sample_manager_inst.add_one_monitor(fifo_monitor_7);
    sample_manager_inst.add_one_monitor(fifo_monitor_8);
    sample_manager_inst.add_one_monitor(fifo_monitor_9);
    sample_manager_inst.add_one_monitor(fifo_monitor_10);
    sample_manager_inst.add_one_monitor(fifo_monitor_11);
    sample_manager_inst.add_one_monitor(fifo_monitor_12);
    sample_manager_inst.add_one_monitor(fifo_monitor_13);
    sample_manager_inst.add_one_monitor(fifo_monitor_14);
    sample_manager_inst.add_one_monitor(fifo_monitor_15);
    sample_manager_inst.add_one_monitor(fifo_monitor_16);
    sample_manager_inst.add_one_monitor(fifo_monitor_17);
    sample_manager_inst.add_one_monitor(fifo_monitor_18);
    sample_manager_inst.add_one_monitor(fifo_monitor_19);
    sample_manager_inst.add_one_monitor(fifo_monitor_20);
    sample_manager_inst.add_one_monitor(fifo_monitor_21);
    sample_manager_inst.add_one_monitor(fifo_monitor_22);
    sample_manager_inst.add_one_monitor(fifo_monitor_23);
    sample_manager_inst.add_one_monitor(fifo_monitor_24);
    sample_manager_inst.add_one_monitor(process_monitor_1);
    sample_manager_inst.add_one_monitor(process_monitor_2);
    sample_manager_inst.add_one_monitor(process_monitor_3);
    sample_manager_inst.add_one_monitor(process_monitor_4);
    sample_manager_inst.add_one_monitor(process_monitor_5);
    sample_manager_inst.add_one_monitor(module_monitor_1);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1 || deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock == 1'b1)
                break;
            else
                @(posedge clock);
        end
    endtask


endmodule
