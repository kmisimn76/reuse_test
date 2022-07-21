// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      region
`define AUTOTB_DUT_INST AESL_inst_region
`define AUTOTB_TOP      apatb_region_top
`define AUTOTB_LAT_RESULT_FILE "region.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "region.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_region_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_A 1
`define AESL_DEPTH_B 1
`define AESL_DEPTH_C 1
`define AESL_DEPTH_numa 1
`define AESL_DEPTH_numc 1
`define AESL_DEPTH_n 1
`define AESL_DEPTH_tilenuma 1
`define AESL_DEPTH_tilenumc 1
`define AESL_DEPTH_tilen 1
`define AESL_DEPTH_numa_iter 1
`define AESL_DEPTH_numc_iter 1
`define AESL_DEPTH_n_iter 1
`define AUTOTB_TVIN_A  "../tv/cdatafile/c.region.autotvin_A.dat"
`define AUTOTB_TVIN_B  "../tv/cdatafile/c.region.autotvin_B.dat"
`define AUTOTB_TVIN_C  "../tv/cdatafile/c.region.autotvin_C.dat"
`define AUTOTB_TVIN_tilenuma  "../tv/cdatafile/c.region.autotvin_tilenuma.dat"
`define AUTOTB_TVIN_tilenumc  "../tv/cdatafile/c.region.autotvin_tilenumc.dat"
`define AUTOTB_TVIN_tilen  "../tv/cdatafile/c.region.autotvin_tilen.dat"
`define AUTOTB_TVIN_numa_iter  "../tv/cdatafile/c.region.autotvin_numa_iter.dat"
`define AUTOTB_TVIN_numc_iter  "../tv/cdatafile/c.region.autotvin_numc_iter.dat"
`define AUTOTB_TVIN_n_iter  "../tv/cdatafile/c.region.autotvin_n_iter.dat"
`define AUTOTB_TVIN_A_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_A.dat"
`define AUTOTB_TVIN_B_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_B.dat"
`define AUTOTB_TVIN_C_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_C.dat"
`define AUTOTB_TVIN_tilenuma_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_tilenuma.dat"
`define AUTOTB_TVIN_tilenumc_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_tilenumc.dat"
`define AUTOTB_TVIN_tilen_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_tilen.dat"
`define AUTOTB_TVIN_numa_iter_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_numa_iter.dat"
`define AUTOTB_TVIN_numc_iter_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_numc_iter.dat"
`define AUTOTB_TVIN_n_iter_out_wrapc  "../tv/rtldatafile/rtl.region.autotvin_n_iter.dat"
`define AUTOTB_TVOUT_C  "../tv/cdatafile/c.region.autotvout_C.dat"
`define AUTOTB_TVOUT_C_out_wrapc  "../tv/rtldatafile/rtl.region.autotvout_C.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_A = 1;
parameter LENGTH_B = 1;
parameter LENGTH_C = 1;
parameter LENGTH_numa = 1;
parameter LENGTH_numc = 1;
parameter LENGTH_n = 1;
parameter LENGTH_tilenuma = 1;
parameter LENGTH_tilenumc = 1;
parameter LENGTH_tilen = 1;
parameter LENGTH_numa_iter = 1;
parameter LENGTH_numc_iter = 1;
parameter LENGTH_n_iter = 1;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [31 : 0] A;
wire [31 : 0] B;
wire [31 : 0] C_i;
wire [31 : 0] C_o;
wire [31 : 0] numa;
wire [31 : 0] numc;
wire [31 : 0] n;
wire [31 : 0] tilenuma;
wire [31 : 0] tilenumc;
wire [31 : 0] tilen;
wire [31 : 0] numa_iter;
wire [31 : 0] numc_iter;
wire [31 : 0] n_iter;
wire ap_start;
wire  C_o_ap_vld;
wire ap_done;
wire ap_ready;
wire ap_idle;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .A(A),
    .B(B),
    .C_i(C_i),
    .C_o(C_o),
    .numa(numa),
    .numc(numc),
    .n(n),
    .tilenuma(tilenuma),
    .tilenumc(tilenumc),
    .tilen(tilen),
    .numa_iter(numa_iter),
    .numc_iter(numc_iter),
    .n_iter(n_iter),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .C_o_ap_vld(C_o_ap_vld),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_ready = ap_ready;
assign AESL_idle = ap_idle;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// The signal of port A
reg [31: 0] AESL_REG_A = 0;
assign A = AESL_REG_A;
initial begin : read_file_process_A
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B
reg [31: 0] AESL_REG_B = 0;
assign B = AESL_REG_B;
initial begin : read_file_process_B
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C_i
reg [31: 0] AESL_REG_C_i = 0;
assign C_i = AESL_REG_C_i;
always @(posedge AESL_clock)
begin
    if(C_o_ap_vld === 1)
        AESL_REG_C_i <= C_o;
end

initial begin : read_file_process_C
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_C_o_ap_vld = 0;
// The signal of port C_o
reg [31: 0] AESL_REG_C_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_C_o = 0; 
    else if(C_o_ap_vld) begin
        AESL_REG_C_o <= C_o;
        AESL_REG_C_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_C
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer C_count;
    reg [127:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_C_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_C_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_C_o);
        AESL_REG_C_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port numa
reg [31: 0] AESL_REG_numa = 0;
assign numa = AESL_REG_numa;

// The signal of port numc
reg [31: 0] AESL_REG_numc = 0;
assign numc = AESL_REG_numc;

// The signal of port n
reg [31: 0] AESL_REG_n = 0;
assign n = AESL_REG_n;

// The signal of port tilenuma
reg [31: 0] AESL_REG_tilenuma = 0;
assign tilenuma = AESL_REG_tilenuma;
initial begin : read_file_process_tilenuma
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_tilenuma,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_tilenuma);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_tilenuma);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port tilenumc
reg [31: 0] AESL_REG_tilenumc = 0;
assign tilenumc = AESL_REG_tilenumc;
initial begin : read_file_process_tilenumc
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_tilenumc,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_tilenumc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_tilenumc);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port tilen
reg [31: 0] AESL_REG_tilen = 0;
assign tilen = AESL_REG_tilen;
initial begin : read_file_process_tilen
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_tilen,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_tilen);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_tilen);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port numa_iter
reg [31: 0] AESL_REG_numa_iter = 0;
assign numa_iter = AESL_REG_numa_iter;
initial begin : read_file_process_numa_iter
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_numa_iter,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_numa_iter);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_numa_iter);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port numc_iter
reg [31: 0] AESL_REG_numc_iter = 0;
assign numc_iter = AESL_REG_numc_iter;
initial begin : read_file_process_numc_iter
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_numc_iter,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_numc_iter);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_numc_iter);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port n_iter
reg [31: 0] AESL_REG_n_iter = 0;
assign n_iter = AESL_REG_n_iter;
initial begin : read_file_process_n_iter
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_n_iter,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_n_iter);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_n_iter);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
reg all_finish; 
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
            all_finish = 0;
        end
        else if (done_cnt == AUTOTB_TRANSACTION_NUM) begin
            all_finish = 1;
        end
    end
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_A;
reg [31:0] size_A;
reg [31:0] size_A_backup;
reg end_B;
reg [31:0] size_B;
reg [31:0] size_B_backup;
reg end_C;
reg [31:0] size_C;
reg [31:0] size_C_backup;
reg end_tilenuma;
reg [31:0] size_tilenuma;
reg [31:0] size_tilenuma_backup;
reg end_tilenumc;
reg [31:0] size_tilenumc;
reg [31:0] size_tilenumc_backup;
reg end_tilen;
reg [31:0] size_tilen;
reg [31:0] size_tilen_backup;
reg end_numa_iter;
reg [31:0] size_numa_iter;
reg [31:0] size_numa_iter_backup;
reg end_numc_iter;
reg [31:0] size_numc_iter;
reg [31:0] size_numc_iter_backup;
reg end_n_iter;
reg [31:0] size_n_iter;
reg [31:0] size_n_iter_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(100+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    start = 0;
    ce = 1;
    wait(AESL_reset === 0);
    @ (posedge AESL_clock);
    while (1) begin
        if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
        start = 1;
        end
        @ (posedge AESL_clock);
        while (AESL_ready !== 1) begin
            @ (posedge AESL_clock);
        end
        if (AESL_done !== 1) begin
            start = 0;
            while (AESL_done !== 1) begin
                @ (posedge AESL_clock);
            end
            @ (posedge AESL_clock);
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = (ready_initial | AESL_done_delay);
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready_wire = (ready_initial | AESL_done_delay);
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = ready_timestamp[i] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask

always @(posedge AESL_clock)
begin
    if (done_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

// Dependence Check (WAR) "ap_enable_operation_1173"(R:SV55-56) -> "ap_enable_operation_1175"(W:SV56-56) @ `AUTOTB_DUT_INST.conv_U0

// Dependence Check (RAW) "ap_enable_operation_1175"(W:SV56-56) -> "ap_enable_operation_1169"(R:SV55-56) @ `AUTOTB_DUT_INST.conv_U0
reg [7:0] DEP_address_1_to [1 - 1:0];
time DEP_time_1_to [1 - 1:0];
reg [7:0] DEP_address_1_from [1 - 1:0];
time DEP_time_1_from [1 - 1:0];
reg DEP_error_1 = 0;
integer DEP_i_1;

initial begin
    DEP_address_1_to[0] = 0;
    DEP_time_1_to[0] = 0;
    DEP_address_1_from[0] = 0;
    DEP_time_1_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.conv_U0.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.conv_U0.ap_enable_state56_pp0_iter3_stage0
            &&  `AUTOTB_DUT_INST.conv_U0.ap_enable_reg_pp0_iter3) begin 
            if (`AUTOTB_DUT_INST.conv_U0.ap_enable_operation_1169) begin
                DEP_address_1_to[0] = {1'b1, `AUTOTB_DUT_INST.conv_U0.local_c_address1};
                DEP_time_1_to[0] = $time;
            end else begin
                DEP_address_1_to[0] = {1'b0, 7'b0};
                DEP_time_1_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.conv_U0.ap_enable_state56_pp0_iter3_stage0||
            `AUTOTB_DUT_INST.conv_U0.ap_enable_state56_pp0_iter3_stage0||
            `AUTOTB_DUT_INST.conv_U0.ap_enable_state57_pp0_iter4_stage0)
            &&  ~`AUTOTB_DUT_INST.conv_U0.ap_enable_reg_pp0_iter3) begin
            DEP_address_1_to[0] = {1'b0, 7'b0};
            DEP_time_1_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.conv_U0.ap_enable_state57_pp0_iter4_stage0
            &&  `AUTOTB_DUT_INST.conv_U0.ap_enable_reg_pp0_iter4) begin
            if (`AUTOTB_DUT_INST.conv_U0.ap_enable_operation_1175) begin
                if (DEP_address_1_from[0][7]) begin
                    $display("// ERROR : \"DEP_address_1_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_1_from[0] = {1'b1, `AUTOTB_DUT_INST.conv_U0.local_c_address0};
                DEP_time_1_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.conv_U0.ap_enable_state57_pp0_iter4_stage0
            &&  `AUTOTB_DUT_INST.conv_U0.ap_enable_reg_pp0_iter4) begin
            if (`AUTOTB_DUT_INST.conv_U0.ap_enable_operation_1175) begin
                DEP_i_1 = 0;
                if (DEP_address_1_to[0][7]) begin
                    DEP_error_1 = (DEP_address_1_to[0][6:0] == DEP_address_1_from[DEP_i_1][6:0]);
                    if (DEP_error_1) begin
                        $display("//Critical WARNING: Due to pragma (reuse_test/main.cpp:101:45), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST.conv_U0\"");
                        $display("//                : From memory access \"local_c_address0\" = 0x%0h @ \"%0t\"", DEP_address_1_from[DEP_i_1][6:0], DEP_time_1_from[DEP_i_1]);
                        $display("//                : To memory access \"local_c_address1\" = DEP_address_1_to[0][6:0] = 0x%0h @ \"%0t\"", DEP_address_1_to[0][6:0], DEP_time_1_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1175"(W:SV56-56) -> "ap_enable_operation_1169"(R:SV55-56) @ `AUTOTB_DUT_INST.conv_U0
                    end
                end
                DEP_address_1_from[DEP_i_1] = {1'b0, 7'b0};
                DEP_time_1_from[DEP_i_1] = 0;
            end
        end // of check access
    end 
end

`endif

AESL_deadlock_detector deadlock_detector(
    .reset(~AESL_reset),
    .clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

endmodule
