// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_region (
volatile void* A,
volatile void* B,
volatile void* C,
int numa,
int numc,
int n,
int tilenuma,
int tilenumc,
int tilen,
int numa_iter,
int numc_iter,
int n_iter);
