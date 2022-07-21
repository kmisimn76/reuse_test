// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "/home/sumin/workspace/FPGA/test/reuse_test/test.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/sumin/workspace/FPGA/test/reuse_test/test.cpp"


void region(volatile int* A, volatile int* B, volatile int* C,
  int numa, int numc, int n,
  int tilenuma, int tilenumc, int tilen,
  int numa_iter, int numc_iter, int n_iter);

#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_region_sw(volatile int *, volatile int *, volatile int *, int, int, int, int, int, int, int, int, int);
# 8 "/home/sumin/workspace/FPGA/test/reuse_test/test.cpp"
int main() {
 int A[1000];
 int B[1000];
 int C[1000];
 int numa = 8;
 int numc = 8;
 int n = 8;
 int tilenuma = 4;
 int tilenumc = 4;
 int tilen = 4;
 int numa_iter = numa / tilenuma;
 int numc_iter = numc / tilenumc;
 int n_iter = n / tilen;

 
#ifndef HLS_FASTSIM
#define region apatb_region_sw
#endif
# 22 "/home/sumin/workspace/FPGA/test/reuse_test/test.cpp"
region(A,B,C,numa,numc,n,tilenuma,tilenumc,tilen,numa_iter,numc_iter,n_iter);
#undef region
# 22 "/home/sumin/workspace/FPGA/test/reuse_test/test.cpp"


 return 0;
}
#endif
# 25 "/home/sumin/workspace/FPGA/test/reuse_test/test.cpp"

