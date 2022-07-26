// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="region_region,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu200-fsgd2104-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.366000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=13,HLS_SYN_DSP=0,HLS_SYN_FF=27813,HLS_SYN_LUT=11378,HLS_VERSION=2020_1}" *)

module region (
        A,
        B,
        C_i,
        C_o,
        numa,
        numc,
        n,
        tilenuma,
        tilenumc,
        tilen,
        numa_iter,
        numc_iter,
        n_iter,
        ap_clk,
        ap_rst,
        ap_start,
        C_o_ap_vld,
        ap_done,
        ap_ready,
        ap_idle
);


input  [31:0] A;
input  [31:0] B;
input  [31:0] C_i;
output  [31:0] C_o;
input  [31:0] numa;
input  [31:0] numc;
input  [31:0] n;
input  [31:0] tilenuma;
input  [31:0] tilenumc;
input  [31:0] tilen;
input  [31:0] numa_iter;
input  [31:0] numc_iter;
input  [31:0] n_iter;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   C_o_ap_vld;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire    region_entry64_U0_ap_start;
wire    region_entry64_U0_start_full_n;
wire    region_entry64_U0_ap_done;
wire    region_entry64_U0_ap_continue;
wire    region_entry64_U0_ap_idle;
wire    region_entry64_U0_ap_ready;
wire    region_entry64_U0_start_out;
wire    region_entry64_U0_start_write;
wire   [31:0] region_entry64_U0_tilenuma_out_din;
wire    region_entry64_U0_tilenuma_out_write;
wire   [31:0] region_entry64_U0_tilenuma_out1_din;
wire    region_entry64_U0_tilenuma_out1_write;
wire   [31:0] region_entry64_U0_tilenumc_out_din;
wire    region_entry64_U0_tilenumc_out_write;
wire   [31:0] region_entry64_U0_tilenumc_out2_din;
wire    region_entry64_U0_tilenumc_out2_write;
wire   [31:0] region_entry64_U0_tilen_out_din;
wire    region_entry64_U0_tilen_out_write;
wire   [31:0] region_entry64_U0_numa_iter_out_din;
wire    region_entry64_U0_numa_iter_out_write;
wire   [31:0] region_entry64_U0_numa_iter_out3_din;
wire    region_entry64_U0_numa_iter_out3_write;
wire   [31:0] region_entry64_U0_numc_iter_out_din;
wire    region_entry64_U0_numc_iter_out_write;
wire   [31:0] region_entry64_U0_numc_iter_out4_din;
wire    region_entry64_U0_numc_iter_out4_write;
wire   [31:0] region_entry64_U0_n_iter_out_din;
wire    region_entry64_U0_n_iter_out_write;
wire   [31:0] region_entry64_U0_n_iter_out5_din;
wire    region_entry64_U0_n_iter_out5_write;
wire    load_a_U0_ap_start;
wire    load_a_U0_ap_done;
wire    load_a_U0_ap_continue;
wire    load_a_U0_ap_idle;
wire    load_a_U0_ap_ready;
wire   [3199:0] load_a_U0_a_buf_s_din;
wire    load_a_U0_a_buf_s_write;
wire    load_a_U0_tilenuma_read;
wire    load_a_U0_tilen_read;
wire    load_a_U0_numa_iter_read;
wire    load_a_U0_n_iter_read;
wire    load_a_U0_numc_iter_read;
wire   [31:0] load_a_U0_tilenuma_out_din;
wire    load_a_U0_tilenuma_out_write;
wire   [31:0] load_a_U0_tilen_out_din;
wire    load_a_U0_tilen_out_write;
wire   [31:0] load_a_U0_numa_iter_out_din;
wire    load_a_U0_numa_iter_out_write;
wire   [31:0] load_a_U0_n_iter_out_din;
wire    load_a_U0_n_iter_out_write;
wire   [31:0] load_a_U0_numc_iter_out_din;
wire    load_a_U0_numc_iter_out_write;
wire    load_b_U0_ap_start;
wire    load_b_U0_ap_done;
wire    load_b_U0_ap_continue;
wire    load_b_U0_ap_idle;
wire    load_b_U0_ap_ready;
wire   [3199:0] load_b_U0_b_buf_din;
wire    load_b_U0_b_buf_write;
wire    load_b_U0_tilenuma_read;
wire    load_b_U0_tilenumc_read;
wire    load_b_U0_numa_iter_read;
wire    load_b_U0_n_iter_read;
wire    load_b_U0_numc_iter_read;
wire    conv_U0_ap_start;
wire    conv_U0_ap_done;
wire    conv_U0_ap_continue;
wire    conv_U0_ap_idle;
wire    conv_U0_ap_ready;
wire    conv_U0_start_out;
wire    conv_U0_start_write;
wire    conv_U0_a_buf_s_read;
wire    conv_U0_b_buf_s_read;
wire   [3199:0] conv_U0_c_buf_s_din;
wire    conv_U0_c_buf_s_write;
wire    conv_U0_tilen_read;
wire    conv_U0_tilenuma_read;
wire    conv_U0_tilenumc_read;
wire    conv_U0_numa_iter_read;
wire    conv_U0_n_iter_read;
wire    conv_U0_numc_iter_read;
wire   [31:0] conv_U0_tilen_out_din;
wire    conv_U0_tilen_out_write;
wire   [31:0] conv_U0_tilenumc_out_din;
wire    conv_U0_tilenumc_out_write;
wire   [31:0] conv_U0_numa_iter_out_din;
wire    conv_U0_numa_iter_out_write;
wire   [31:0] conv_U0_n_iter_out_din;
wire    conv_U0_n_iter_out_write;
wire   [31:0] conv_U0_numc_iter_out_din;
wire    conv_U0_numc_iter_out_write;
wire    store_c_U0_ap_start;
wire    store_c_U0_ap_done;
wire    store_c_U0_ap_continue;
wire    store_c_U0_ap_idle;
wire    store_c_U0_ap_ready;
wire   [31:0] store_c_U0_C_o;
wire    store_c_U0_C_o_ap_vld;
wire    store_c_U0_c_buf_read;
wire    store_c_U0_tilenumc_read;
wire    store_c_U0_tilen_read;
wire    store_c_U0_numa_iter_read;
wire    store_c_U0_n_iter_read;
wire    store_c_U0_numc_iter_read;
wire    ap_sync_continue;
wire    tilenuma_c_full_n;
wire   [31:0] tilenuma_c_dout;
wire    tilenuma_c_empty_n;
wire    tilenuma_c11_full_n;
wire   [31:0] tilenuma_c11_dout;
wire    tilenuma_c11_empty_n;
wire    tilenumc_c_full_n;
wire   [31:0] tilenumc_c_dout;
wire    tilenumc_c_empty_n;
wire    tilenumc_c12_full_n;
wire   [31:0] tilenumc_c12_dout;
wire    tilenumc_c12_empty_n;
wire    tilen_c_full_n;
wire   [31:0] tilen_c_dout;
wire    tilen_c_empty_n;
wire    numa_iter_c_full_n;
wire   [31:0] numa_iter_c_dout;
wire    numa_iter_c_empty_n;
wire    numa_iter_c13_full_n;
wire   [31:0] numa_iter_c13_dout;
wire    numa_iter_c13_empty_n;
wire    numc_iter_c_full_n;
wire   [31:0] numc_iter_c_dout;
wire    numc_iter_c_empty_n;
wire    numc_iter_c14_full_n;
wire   [31:0] numc_iter_c14_dout;
wire    numc_iter_c14_empty_n;
wire    n_iter_c_full_n;
wire   [31:0] n_iter_c_dout;
wire    n_iter_c_empty_n;
wire    n_iter_c15_full_n;
wire   [31:0] n_iter_c15_dout;
wire    n_iter_c15_empty_n;
wire    a_buf_full_n;
wire   [3199:0] a_buf_dout;
wire    a_buf_empty_n;
wire    tilenuma_c16_full_n;
wire   [31:0] tilenuma_c16_dout;
wire    tilenuma_c16_empty_n;
wire    tilen_c17_full_n;
wire   [31:0] tilen_c17_dout;
wire    tilen_c17_empty_n;
wire    numa_iter_c18_full_n;
wire   [31:0] numa_iter_c18_dout;
wire    numa_iter_c18_empty_n;
wire    n_iter_c19_full_n;
wire   [31:0] n_iter_c19_dout;
wire    n_iter_c19_empty_n;
wire    numc_iter_c20_full_n;
wire   [31:0] numc_iter_c20_dout;
wire    numc_iter_c20_empty_n;
wire    b_buf_full_n;
wire   [3199:0] b_buf_dout;
wire    b_buf_empty_n;
wire    c_buf_full_n;
wire   [3199:0] c_buf_dout;
wire    c_buf_empty_n;
wire    tilen_c21_full_n;
wire   [31:0] tilen_c21_dout;
wire    tilen_c21_empty_n;
wire    tilenumc_c22_full_n;
wire   [31:0] tilenumc_c22_dout;
wire    tilenumc_c22_empty_n;
wire    numa_iter_c23_full_n;
wire   [31:0] numa_iter_c23_dout;
wire    numa_iter_c23_empty_n;
wire    n_iter_c24_full_n;
wire   [31:0] n_iter_c24_dout;
wire    n_iter_c24_empty_n;
wire    numc_iter_c25_full_n;
wire   [31:0] numc_iter_c25_dout;
wire    numc_iter_c25_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_load_a_U0_din;
wire    start_for_load_a_U0_full_n;
wire   [0:0] start_for_load_a_U0_dout;
wire    start_for_load_a_U0_empty_n;
wire   [0:0] start_for_load_b_U0_din;
wire    start_for_load_b_U0_full_n;
wire   [0:0] start_for_load_b_U0_dout;
wire    start_for_load_b_U0_empty_n;
wire   [0:0] start_for_conv_U0_din;
wire    start_for_conv_U0_full_n;
wire   [0:0] start_for_conv_U0_dout;
wire    start_for_conv_U0_empty_n;
wire    load_a_U0_start_full_n;
wire    load_a_U0_start_write;
wire    load_b_U0_start_full_n;
wire    load_b_U0_start_write;
wire   [0:0] start_for_store_c_U0_din;
wire    start_for_store_c_U0_full_n;
wire   [0:0] start_for_store_c_U0_dout;
wire    start_for_store_c_U0_empty_n;
wire    store_c_U0_start_full_n;
wire    store_c_U0_start_write;

region_region_entry64 region_entry64_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(region_entry64_U0_ap_start),
    .start_full_n(region_entry64_U0_start_full_n),
    .ap_done(region_entry64_U0_ap_done),
    .ap_continue(region_entry64_U0_ap_continue),
    .ap_idle(region_entry64_U0_ap_idle),
    .ap_ready(region_entry64_U0_ap_ready),
    .start_out(region_entry64_U0_start_out),
    .start_write(region_entry64_U0_start_write),
    .tilenuma(tilenuma),
    .tilenumc(tilenumc),
    .tilen(tilen),
    .numa_iter(numa_iter),
    .numc_iter(numc_iter),
    .n_iter(n_iter),
    .tilenuma_out_din(region_entry64_U0_tilenuma_out_din),
    .tilenuma_out_full_n(tilenuma_c_full_n),
    .tilenuma_out_write(region_entry64_U0_tilenuma_out_write),
    .tilenuma_out1_din(region_entry64_U0_tilenuma_out1_din),
    .tilenuma_out1_full_n(tilenuma_c11_full_n),
    .tilenuma_out1_write(region_entry64_U0_tilenuma_out1_write),
    .tilenumc_out_din(region_entry64_U0_tilenumc_out_din),
    .tilenumc_out_full_n(tilenumc_c_full_n),
    .tilenumc_out_write(region_entry64_U0_tilenumc_out_write),
    .tilenumc_out2_din(region_entry64_U0_tilenumc_out2_din),
    .tilenumc_out2_full_n(tilenumc_c12_full_n),
    .tilenumc_out2_write(region_entry64_U0_tilenumc_out2_write),
    .tilen_out_din(region_entry64_U0_tilen_out_din),
    .tilen_out_full_n(tilen_c_full_n),
    .tilen_out_write(region_entry64_U0_tilen_out_write),
    .numa_iter_out_din(region_entry64_U0_numa_iter_out_din),
    .numa_iter_out_full_n(numa_iter_c_full_n),
    .numa_iter_out_write(region_entry64_U0_numa_iter_out_write),
    .numa_iter_out3_din(region_entry64_U0_numa_iter_out3_din),
    .numa_iter_out3_full_n(numa_iter_c13_full_n),
    .numa_iter_out3_write(region_entry64_U0_numa_iter_out3_write),
    .numc_iter_out_din(region_entry64_U0_numc_iter_out_din),
    .numc_iter_out_full_n(numc_iter_c_full_n),
    .numc_iter_out_write(region_entry64_U0_numc_iter_out_write),
    .numc_iter_out4_din(region_entry64_U0_numc_iter_out4_din),
    .numc_iter_out4_full_n(numc_iter_c14_full_n),
    .numc_iter_out4_write(region_entry64_U0_numc_iter_out4_write),
    .n_iter_out_din(region_entry64_U0_n_iter_out_din),
    .n_iter_out_full_n(n_iter_c_full_n),
    .n_iter_out_write(region_entry64_U0_n_iter_out_write),
    .n_iter_out5_din(region_entry64_U0_n_iter_out5_din),
    .n_iter_out5_full_n(n_iter_c15_full_n),
    .n_iter_out5_write(region_entry64_U0_n_iter_out5_write)
);

region_load_a load_a_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(load_a_U0_ap_start),
    .ap_done(load_a_U0_ap_done),
    .ap_continue(load_a_U0_ap_continue),
    .ap_idle(load_a_U0_ap_idle),
    .ap_ready(load_a_U0_ap_ready),
    .A(A),
    .a_buf_s_din(load_a_U0_a_buf_s_din),
    .a_buf_s_full_n(a_buf_full_n),
    .a_buf_s_write(load_a_U0_a_buf_s_write),
    .tilenuma_dout(tilenuma_c_dout),
    .tilenuma_empty_n(tilenuma_c_empty_n),
    .tilenuma_read(load_a_U0_tilenuma_read),
    .tilen_dout(tilen_c_dout),
    .tilen_empty_n(tilen_c_empty_n),
    .tilen_read(load_a_U0_tilen_read),
    .numa_iter_dout(numa_iter_c_dout),
    .numa_iter_empty_n(numa_iter_c_empty_n),
    .numa_iter_read(load_a_U0_numa_iter_read),
    .n_iter_dout(n_iter_c_dout),
    .n_iter_empty_n(n_iter_c_empty_n),
    .n_iter_read(load_a_U0_n_iter_read),
    .numc_iter_dout(numc_iter_c_dout),
    .numc_iter_empty_n(numc_iter_c_empty_n),
    .numc_iter_read(load_a_U0_numc_iter_read),
    .tilenuma_out_din(load_a_U0_tilenuma_out_din),
    .tilenuma_out_full_n(tilenuma_c16_full_n),
    .tilenuma_out_write(load_a_U0_tilenuma_out_write),
    .tilen_out_din(load_a_U0_tilen_out_din),
    .tilen_out_full_n(tilen_c17_full_n),
    .tilen_out_write(load_a_U0_tilen_out_write),
    .numa_iter_out_din(load_a_U0_numa_iter_out_din),
    .numa_iter_out_full_n(numa_iter_c18_full_n),
    .numa_iter_out_write(load_a_U0_numa_iter_out_write),
    .n_iter_out_din(load_a_U0_n_iter_out_din),
    .n_iter_out_full_n(n_iter_c19_full_n),
    .n_iter_out_write(load_a_U0_n_iter_out_write),
    .numc_iter_out_din(load_a_U0_numc_iter_out_din),
    .numc_iter_out_full_n(numc_iter_c20_full_n),
    .numc_iter_out_write(load_a_U0_numc_iter_out_write)
);

region_load_b load_b_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(load_b_U0_ap_start),
    .ap_done(load_b_U0_ap_done),
    .ap_continue(load_b_U0_ap_continue),
    .ap_idle(load_b_U0_ap_idle),
    .ap_ready(load_b_U0_ap_ready),
    .B(B),
    .b_buf_din(load_b_U0_b_buf_din),
    .b_buf_full_n(b_buf_full_n),
    .b_buf_write(load_b_U0_b_buf_write),
    .tilenuma_dout(tilenuma_c11_dout),
    .tilenuma_empty_n(tilenuma_c11_empty_n),
    .tilenuma_read(load_b_U0_tilenuma_read),
    .tilenumc_dout(tilenumc_c_dout),
    .tilenumc_empty_n(tilenumc_c_empty_n),
    .tilenumc_read(load_b_U0_tilenumc_read),
    .numa_iter_dout(numa_iter_c13_dout),
    .numa_iter_empty_n(numa_iter_c13_empty_n),
    .numa_iter_read(load_b_U0_numa_iter_read),
    .n_iter_dout(n_iter_c15_dout),
    .n_iter_empty_n(n_iter_c15_empty_n),
    .n_iter_read(load_b_U0_n_iter_read),
    .numc_iter_dout(numc_iter_c14_dout),
    .numc_iter_empty_n(numc_iter_c14_empty_n),
    .numc_iter_read(load_b_U0_numc_iter_read)
);

region_conv conv_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(conv_U0_ap_start),
    .start_full_n(start_for_store_c_U0_full_n),
    .ap_done(conv_U0_ap_done),
    .ap_continue(conv_U0_ap_continue),
    .ap_idle(conv_U0_ap_idle),
    .ap_ready(conv_U0_ap_ready),
    .start_out(conv_U0_start_out),
    .start_write(conv_U0_start_write),
    .a_buf_s_dout(a_buf_dout),
    .a_buf_s_empty_n(a_buf_empty_n),
    .a_buf_s_read(conv_U0_a_buf_s_read),
    .b_buf_s_dout(b_buf_dout),
    .b_buf_s_empty_n(b_buf_empty_n),
    .b_buf_s_read(conv_U0_b_buf_s_read),
    .c_buf_s_din(conv_U0_c_buf_s_din),
    .c_buf_s_full_n(c_buf_full_n),
    .c_buf_s_write(conv_U0_c_buf_s_write),
    .tilen_dout(tilen_c17_dout),
    .tilen_empty_n(tilen_c17_empty_n),
    .tilen_read(conv_U0_tilen_read),
    .tilenuma_dout(tilenuma_c16_dout),
    .tilenuma_empty_n(tilenuma_c16_empty_n),
    .tilenuma_read(conv_U0_tilenuma_read),
    .tilenumc_dout(tilenumc_c12_dout),
    .tilenumc_empty_n(tilenumc_c12_empty_n),
    .tilenumc_read(conv_U0_tilenumc_read),
    .numa_iter_dout(numa_iter_c18_dout),
    .numa_iter_empty_n(numa_iter_c18_empty_n),
    .numa_iter_read(conv_U0_numa_iter_read),
    .n_iter_dout(n_iter_c19_dout),
    .n_iter_empty_n(n_iter_c19_empty_n),
    .n_iter_read(conv_U0_n_iter_read),
    .numc_iter_dout(numc_iter_c20_dout),
    .numc_iter_empty_n(numc_iter_c20_empty_n),
    .numc_iter_read(conv_U0_numc_iter_read),
    .tilen_out_din(conv_U0_tilen_out_din),
    .tilen_out_full_n(tilen_c21_full_n),
    .tilen_out_write(conv_U0_tilen_out_write),
    .tilenumc_out_din(conv_U0_tilenumc_out_din),
    .tilenumc_out_full_n(tilenumc_c22_full_n),
    .tilenumc_out_write(conv_U0_tilenumc_out_write),
    .numa_iter_out_din(conv_U0_numa_iter_out_din),
    .numa_iter_out_full_n(numa_iter_c23_full_n),
    .numa_iter_out_write(conv_U0_numa_iter_out_write),
    .n_iter_out_din(conv_U0_n_iter_out_din),
    .n_iter_out_full_n(n_iter_c24_full_n),
    .n_iter_out_write(conv_U0_n_iter_out_write),
    .numc_iter_out_din(conv_U0_numc_iter_out_din),
    .numc_iter_out_full_n(numc_iter_c25_full_n),
    .numc_iter_out_write(conv_U0_numc_iter_out_write)
);

region_store_c store_c_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(store_c_U0_ap_start),
    .ap_done(store_c_U0_ap_done),
    .ap_continue(store_c_U0_ap_continue),
    .ap_idle(store_c_U0_ap_idle),
    .ap_ready(store_c_U0_ap_ready),
    .C_i(C_i),
    .C_o(store_c_U0_C_o),
    .C_o_ap_vld(store_c_U0_C_o_ap_vld),
    .c_buf_dout(c_buf_dout),
    .c_buf_empty_n(c_buf_empty_n),
    .c_buf_read(store_c_U0_c_buf_read),
    .tilenumc_dout(tilenumc_c22_dout),
    .tilenumc_empty_n(tilenumc_c22_empty_n),
    .tilenumc_read(store_c_U0_tilenumc_read),
    .tilen_dout(tilen_c21_dout),
    .tilen_empty_n(tilen_c21_empty_n),
    .tilen_read(store_c_U0_tilen_read),
    .numa_iter_dout(numa_iter_c23_dout),
    .numa_iter_empty_n(numa_iter_c23_empty_n),
    .numa_iter_read(store_c_U0_numa_iter_read),
    .n_iter_dout(n_iter_c24_dout),
    .n_iter_empty_n(n_iter_c24_empty_n),
    .n_iter_read(store_c_U0_n_iter_read),
    .numc_iter_dout(numc_iter_c25_dout),
    .numc_iter_empty_n(numc_iter_c25_empty_n),
    .numc_iter_read(store_c_U0_numc_iter_read)
);

region_fifo_w32_d2_S tilenuma_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_tilenuma_out_din),
    .if_full_n(tilenuma_c_full_n),
    .if_write(region_entry64_U0_tilenuma_out_write),
    .if_dout(tilenuma_c_dout),
    .if_empty_n(tilenuma_c_empty_n),
    .if_read(load_a_U0_tilenuma_read)
);

region_fifo_w32_d2_S tilenuma_c11_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_tilenuma_out1_din),
    .if_full_n(tilenuma_c11_full_n),
    .if_write(region_entry64_U0_tilenuma_out1_write),
    .if_dout(tilenuma_c11_dout),
    .if_empty_n(tilenuma_c11_empty_n),
    .if_read(load_b_U0_tilenuma_read)
);

region_fifo_w32_d2_S tilenumc_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_tilenumc_out_din),
    .if_full_n(tilenumc_c_full_n),
    .if_write(region_entry64_U0_tilenumc_out_write),
    .if_dout(tilenumc_c_dout),
    .if_empty_n(tilenumc_c_empty_n),
    .if_read(load_b_U0_tilenumc_read)
);

region_fifo_w32_d3_S tilenumc_c12_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_tilenumc_out2_din),
    .if_full_n(tilenumc_c12_full_n),
    .if_write(region_entry64_U0_tilenumc_out2_write),
    .if_dout(tilenumc_c12_dout),
    .if_empty_n(tilenumc_c12_empty_n),
    .if_read(conv_U0_tilenumc_read)
);

region_fifo_w32_d2_S tilen_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_tilen_out_din),
    .if_full_n(tilen_c_full_n),
    .if_write(region_entry64_U0_tilen_out_write),
    .if_dout(tilen_c_dout),
    .if_empty_n(tilen_c_empty_n),
    .if_read(load_a_U0_tilen_read)
);

region_fifo_w32_d2_S numa_iter_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_numa_iter_out_din),
    .if_full_n(numa_iter_c_full_n),
    .if_write(region_entry64_U0_numa_iter_out_write),
    .if_dout(numa_iter_c_dout),
    .if_empty_n(numa_iter_c_empty_n),
    .if_read(load_a_U0_numa_iter_read)
);

region_fifo_w32_d2_S numa_iter_c13_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_numa_iter_out3_din),
    .if_full_n(numa_iter_c13_full_n),
    .if_write(region_entry64_U0_numa_iter_out3_write),
    .if_dout(numa_iter_c13_dout),
    .if_empty_n(numa_iter_c13_empty_n),
    .if_read(load_b_U0_numa_iter_read)
);

region_fifo_w32_d2_S numc_iter_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_numc_iter_out_din),
    .if_full_n(numc_iter_c_full_n),
    .if_write(region_entry64_U0_numc_iter_out_write),
    .if_dout(numc_iter_c_dout),
    .if_empty_n(numc_iter_c_empty_n),
    .if_read(load_a_U0_numc_iter_read)
);

region_fifo_w32_d2_S numc_iter_c14_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_numc_iter_out4_din),
    .if_full_n(numc_iter_c14_full_n),
    .if_write(region_entry64_U0_numc_iter_out4_write),
    .if_dout(numc_iter_c14_dout),
    .if_empty_n(numc_iter_c14_empty_n),
    .if_read(load_b_U0_numc_iter_read)
);

region_fifo_w32_d2_S n_iter_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_n_iter_out_din),
    .if_full_n(n_iter_c_full_n),
    .if_write(region_entry64_U0_n_iter_out_write),
    .if_dout(n_iter_c_dout),
    .if_empty_n(n_iter_c_empty_n),
    .if_read(load_a_U0_n_iter_read)
);

region_fifo_w32_d2_S n_iter_c15_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(region_entry64_U0_n_iter_out5_din),
    .if_full_n(n_iter_c15_full_n),
    .if_write(region_entry64_U0_n_iter_out5_write),
    .if_dout(n_iter_c15_dout),
    .if_empty_n(n_iter_c15_empty_n),
    .if_read(load_b_U0_n_iter_read)
);

region_fifo_w3200_d1_S a_buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load_a_U0_a_buf_s_din),
    .if_full_n(a_buf_full_n),
    .if_write(load_a_U0_a_buf_s_write),
    .if_dout(a_buf_dout),
    .if_empty_n(a_buf_empty_n),
    .if_read(conv_U0_a_buf_s_read)
);

region_fifo_w32_d2_S tilenuma_c16_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load_a_U0_tilenuma_out_din),
    .if_full_n(tilenuma_c16_full_n),
    .if_write(load_a_U0_tilenuma_out_write),
    .if_dout(tilenuma_c16_dout),
    .if_empty_n(tilenuma_c16_empty_n),
    .if_read(conv_U0_tilenuma_read)
);

region_fifo_w32_d2_S tilen_c17_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load_a_U0_tilen_out_din),
    .if_full_n(tilen_c17_full_n),
    .if_write(load_a_U0_tilen_out_write),
    .if_dout(tilen_c17_dout),
    .if_empty_n(tilen_c17_empty_n),
    .if_read(conv_U0_tilen_read)
);

region_fifo_w32_d2_S numa_iter_c18_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load_a_U0_numa_iter_out_din),
    .if_full_n(numa_iter_c18_full_n),
    .if_write(load_a_U0_numa_iter_out_write),
    .if_dout(numa_iter_c18_dout),
    .if_empty_n(numa_iter_c18_empty_n),
    .if_read(conv_U0_numa_iter_read)
);

region_fifo_w32_d2_S n_iter_c19_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load_a_U0_n_iter_out_din),
    .if_full_n(n_iter_c19_full_n),
    .if_write(load_a_U0_n_iter_out_write),
    .if_dout(n_iter_c19_dout),
    .if_empty_n(n_iter_c19_empty_n),
    .if_read(conv_U0_n_iter_read)
);

region_fifo_w32_d2_S numc_iter_c20_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load_a_U0_numc_iter_out_din),
    .if_full_n(numc_iter_c20_full_n),
    .if_write(load_a_U0_numc_iter_out_write),
    .if_dout(numc_iter_c20_dout),
    .if_empty_n(numc_iter_c20_empty_n),
    .if_read(conv_U0_numc_iter_read)
);

region_fifo_w3200_d1_S b_buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(load_b_U0_b_buf_din),
    .if_full_n(b_buf_full_n),
    .if_write(load_b_U0_b_buf_write),
    .if_dout(b_buf_dout),
    .if_empty_n(b_buf_empty_n),
    .if_read(conv_U0_b_buf_s_read)
);

region_fifo_w3200_d1_S c_buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv_U0_c_buf_s_din),
    .if_full_n(c_buf_full_n),
    .if_write(conv_U0_c_buf_s_write),
    .if_dout(c_buf_dout),
    .if_empty_n(c_buf_empty_n),
    .if_read(store_c_U0_c_buf_read)
);

region_fifo_w32_d2_S tilen_c21_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv_U0_tilen_out_din),
    .if_full_n(tilen_c21_full_n),
    .if_write(conv_U0_tilen_out_write),
    .if_dout(tilen_c21_dout),
    .if_empty_n(tilen_c21_empty_n),
    .if_read(store_c_U0_tilen_read)
);

region_fifo_w32_d2_S tilenumc_c22_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv_U0_tilenumc_out_din),
    .if_full_n(tilenumc_c22_full_n),
    .if_write(conv_U0_tilenumc_out_write),
    .if_dout(tilenumc_c22_dout),
    .if_empty_n(tilenumc_c22_empty_n),
    .if_read(store_c_U0_tilenumc_read)
);

region_fifo_w32_d2_S numa_iter_c23_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv_U0_numa_iter_out_din),
    .if_full_n(numa_iter_c23_full_n),
    .if_write(conv_U0_numa_iter_out_write),
    .if_dout(numa_iter_c23_dout),
    .if_empty_n(numa_iter_c23_empty_n),
    .if_read(store_c_U0_numa_iter_read)
);

region_fifo_w32_d2_S n_iter_c24_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv_U0_n_iter_out_din),
    .if_full_n(n_iter_c24_full_n),
    .if_write(conv_U0_n_iter_out_write),
    .if_dout(n_iter_c24_dout),
    .if_empty_n(n_iter_c24_empty_n),
    .if_read(store_c_U0_n_iter_read)
);

region_fifo_w32_d2_S numc_iter_c25_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(conv_U0_numc_iter_out_din),
    .if_full_n(numc_iter_c25_full_n),
    .if_write(conv_U0_numc_iter_out_write),
    .if_dout(numc_iter_c25_dout),
    .if_empty_n(numc_iter_c25_empty_n),
    .if_read(store_c_U0_numc_iter_read)
);

region_start_for_load_a_U0 start_for_load_a_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_load_a_U0_din),
    .if_full_n(start_for_load_a_U0_full_n),
    .if_write(region_entry64_U0_start_write),
    .if_dout(start_for_load_a_U0_dout),
    .if_empty_n(start_for_load_a_U0_empty_n),
    .if_read(load_a_U0_ap_ready)
);

region_start_for_load_b_U0 start_for_load_b_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_load_b_U0_din),
    .if_full_n(start_for_load_b_U0_full_n),
    .if_write(region_entry64_U0_start_write),
    .if_dout(start_for_load_b_U0_dout),
    .if_empty_n(start_for_load_b_U0_empty_n),
    .if_read(load_b_U0_ap_ready)
);

region_start_for_conv_U0 start_for_conv_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_conv_U0_din),
    .if_full_n(start_for_conv_U0_full_n),
    .if_write(region_entry64_U0_start_write),
    .if_dout(start_for_conv_U0_dout),
    .if_empty_n(start_for_conv_U0_empty_n),
    .if_read(conv_U0_ap_ready)
);

region_start_for_store_c_U0 start_for_store_c_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_store_c_U0_din),
    .if_full_n(start_for_store_c_U0_full_n),
    .if_write(conv_U0_start_write),
    .if_dout(start_for_store_c_U0_dout),
    .if_empty_n(start_for_store_c_U0_empty_n),
    .if_read(store_c_U0_ap_ready)
);

assign C_o = store_c_U0_C_o;

assign C_o_ap_vld = store_c_U0_C_o_ap_vld;

assign ap_done = store_c_U0_ap_done;

assign ap_idle = (store_c_U0_ap_idle & region_entry64_U0_ap_idle & load_b_U0_ap_idle & load_a_U0_ap_idle & conv_U0_ap_idle);

assign ap_ready = region_entry64_U0_ap_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = store_c_U0_ap_done;

assign ap_sync_ready = region_entry64_U0_ap_ready;

assign conv_U0_ap_continue = 1'b1;

assign conv_U0_ap_start = start_for_conv_U0_empty_n;

assign load_a_U0_ap_continue = 1'b1;

assign load_a_U0_ap_start = start_for_load_a_U0_empty_n;

assign load_a_U0_start_full_n = 1'b1;

assign load_a_U0_start_write = 1'b0;

assign load_b_U0_ap_continue = 1'b1;

assign load_b_U0_ap_start = start_for_load_b_U0_empty_n;

assign load_b_U0_start_full_n = 1'b1;

assign load_b_U0_start_write = 1'b0;

assign region_entry64_U0_ap_continue = 1'b1;

assign region_entry64_U0_ap_start = ap_start;

assign region_entry64_U0_start_full_n = (start_for_load_b_U0_full_n & start_for_load_a_U0_full_n & start_for_conv_U0_full_n);

assign start_for_conv_U0_din = 1'b1;

assign start_for_load_a_U0_din = 1'b1;

assign start_for_load_b_U0_din = 1'b1;

assign start_for_store_c_U0_din = 1'b1;

assign store_c_U0_ap_continue = 1'b1;

assign store_c_U0_ap_start = start_for_store_c_U0_empty_n;

assign store_c_U0_start_full_n = 1'b1;

assign store_c_U0_start_write = 1'b0;

endmodule //region
