#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_A "../tv/cdatafile/c.region_before.autotvin_A.dat"
#define AUTOTB_TVOUT_A "../tv/cdatafile/c.region_before.autotvout_A.dat"
// wrapc file define:
#define AUTOTB_TVIN_B "../tv/cdatafile/c.region_before.autotvin_B.dat"
#define AUTOTB_TVOUT_B "../tv/cdatafile/c.region_before.autotvout_B.dat"
// wrapc file define:
#define AUTOTB_TVIN_C "../tv/cdatafile/c.region_before.autotvin_C.dat"
#define AUTOTB_TVOUT_C "../tv/cdatafile/c.region_before.autotvout_C.dat"
// wrapc file define:
#define AUTOTB_TVIN_numa "../tv/cdatafile/c.region_before.autotvin_numa.dat"
#define AUTOTB_TVOUT_numa "../tv/cdatafile/c.region_before.autotvout_numa.dat"
// wrapc file define:
#define AUTOTB_TVIN_numc "../tv/cdatafile/c.region_before.autotvin_numc.dat"
#define AUTOTB_TVOUT_numc "../tv/cdatafile/c.region_before.autotvout_numc.dat"
// wrapc file define:
#define AUTOTB_TVIN_n "../tv/cdatafile/c.region_before.autotvin_n.dat"
#define AUTOTB_TVOUT_n "../tv/cdatafile/c.region_before.autotvout_n.dat"
// wrapc file define:
#define AUTOTB_TVIN_tilenuma "../tv/cdatafile/c.region_before.autotvin_tilenuma.dat"
#define AUTOTB_TVOUT_tilenuma "../tv/cdatafile/c.region_before.autotvout_tilenuma.dat"
// wrapc file define:
#define AUTOTB_TVIN_tilenumc "../tv/cdatafile/c.region_before.autotvin_tilenumc.dat"
#define AUTOTB_TVOUT_tilenumc "../tv/cdatafile/c.region_before.autotvout_tilenumc.dat"
// wrapc file define:
#define AUTOTB_TVIN_tilen "../tv/cdatafile/c.region_before.autotvin_tilen.dat"
#define AUTOTB_TVOUT_tilen "../tv/cdatafile/c.region_before.autotvout_tilen.dat"
// wrapc file define:
#define AUTOTB_TVIN_numa_iter "../tv/cdatafile/c.region_before.autotvin_numa_iter.dat"
#define AUTOTB_TVOUT_numa_iter "../tv/cdatafile/c.region_before.autotvout_numa_iter.dat"
// wrapc file define:
#define AUTOTB_TVIN_numc_iter "../tv/cdatafile/c.region_before.autotvin_numc_iter.dat"
#define AUTOTB_TVOUT_numc_iter "../tv/cdatafile/c.region_before.autotvout_numc_iter.dat"
// wrapc file define:
#define AUTOTB_TVIN_n_iter "../tv/cdatafile/c.region_before.autotvin_n_iter.dat"
#define AUTOTB_TVOUT_n_iter "../tv/cdatafile/c.region_before.autotvout_n_iter.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_A "../tv/rtldatafile/rtl.region_before.autotvout_A.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B "../tv/rtldatafile/rtl.region_before.autotvout_B.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_C "../tv/rtldatafile/rtl.region_before.autotvout_C.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_numa "../tv/rtldatafile/rtl.region_before.autotvout_numa.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_numc "../tv/rtldatafile/rtl.region_before.autotvout_numc.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_n "../tv/rtldatafile/rtl.region_before.autotvout_n.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tilenuma "../tv/rtldatafile/rtl.region_before.autotvout_tilenuma.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tilenumc "../tv/rtldatafile/rtl.region_before.autotvout_tilenumc.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_tilen "../tv/rtldatafile/rtl.region_before.autotvout_tilen.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_numa_iter "../tv/rtldatafile/rtl.region_before.autotvout_numa_iter.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_numc_iter "../tv/rtldatafile/rtl.region_before.autotvout_numc_iter.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_n_iter "../tv/rtldatafile/rtl.region_before.autotvout_n_iter.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  A_depth = 0;
  B_depth = 0;
  C_depth = 0;
  numa_depth = 0;
  numc_depth = 0;
  n_depth = 0;
  tilenuma_depth = 0;
  tilenumc_depth = 0;
  tilen_depth = 0;
  numa_iter_depth = 0;
  numc_iter_depth = 0;
  n_iter_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{A " << A_depth << "}\n";
  total_list << "{B " << B_depth << "}\n";
  total_list << "{C " << C_depth << "}\n";
  total_list << "{numa " << numa_depth << "}\n";
  total_list << "{numc " << numc_depth << "}\n";
  total_list << "{n " << n_depth << "}\n";
  total_list << "{tilenuma " << tilenuma_depth << "}\n";
  total_list << "{tilenumc " << tilenumc_depth << "}\n";
  total_list << "{tilen " << tilen_depth << "}\n";
  total_list << "{numa_iter " << numa_iter_depth << "}\n";
  total_list << "{numc_iter " << numc_iter_depth << "}\n";
  total_list << "{n_iter " << n_iter_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int A_depth;
    int B_depth;
    int C_depth;
    int numa_depth;
    int numc_depth;
    int n_depth;
    int tilenuma_depth;
    int tilenumc_depth;
    int tilen_depth;
    int numa_iter_depth;
    int numc_iter_depth;
    int n_iter_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void region_before_hw_stub(volatile void *, volatile void *, volatile void *, int, int, int, int, int, int, int, int, int);

extern "C" void apatb_region_before_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_C, int __xlx_apatb_param_numa, int __xlx_apatb_param_numc, int __xlx_apatb_param_n, int __xlx_apatb_param_tilenuma, int __xlx_apatb_param_tilenumc, int __xlx_apatb_param_tilen, int __xlx_apatb_param_numa_iter, int __xlx_apatb_param_numc_iter, int __xlx_apatb_param_n_iter) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_C);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > C_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "C");
  
            // push token into output port buffer
            if (AESL_token != "") {
              C_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_C)[0] = C_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//A
aesl_fh.touch(AUTOTB_TVIN_A);
aesl_fh.touch(AUTOTB_TVOUT_A);
//B
aesl_fh.touch(AUTOTB_TVIN_B);
aesl_fh.touch(AUTOTB_TVOUT_B);
//C
aesl_fh.touch(AUTOTB_TVIN_C);
aesl_fh.touch(AUTOTB_TVOUT_C);
//numa
aesl_fh.touch(AUTOTB_TVIN_numa);
aesl_fh.touch(AUTOTB_TVOUT_numa);
//numc
aesl_fh.touch(AUTOTB_TVIN_numc);
aesl_fh.touch(AUTOTB_TVOUT_numc);
//n
aesl_fh.touch(AUTOTB_TVIN_n);
aesl_fh.touch(AUTOTB_TVOUT_n);
//tilenuma
aesl_fh.touch(AUTOTB_TVIN_tilenuma);
aesl_fh.touch(AUTOTB_TVOUT_tilenuma);
//tilenumc
aesl_fh.touch(AUTOTB_TVIN_tilenumc);
aesl_fh.touch(AUTOTB_TVOUT_tilenumc);
//tilen
aesl_fh.touch(AUTOTB_TVIN_tilen);
aesl_fh.touch(AUTOTB_TVOUT_tilen);
//numa_iter
aesl_fh.touch(AUTOTB_TVIN_numa_iter);
aesl_fh.touch(AUTOTB_TVOUT_numa_iter);
//numc_iter
aesl_fh.touch(AUTOTB_TVIN_numc_iter);
aesl_fh.touch(AUTOTB_TVOUT_numc_iter);
//n_iter
aesl_fh.touch(AUTOTB_TVIN_n_iter);
aesl_fh.touch(AUTOTB_TVOUT_n_iter);
CodeState = DUMP_INPUTS;
// print A Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_A);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.A_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A, __xlx_sprintf_buffer.data());
}
// print B Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_B);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.B_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B, __xlx_sprintf_buffer.data());
}
// print C Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_C, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_C);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_C, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.C_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_C, __xlx_sprintf_buffer.data());
}
// print numa Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_numa, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_numa);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_numa, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.numa_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_numa, __xlx_sprintf_buffer.data());
}
// print numc Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_numc, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_numc);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_numc, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.numc_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_numc, __xlx_sprintf_buffer.data());
}
// print n Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_n);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.n_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data());
}
// print tilenuma Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tilenuma, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_tilenuma);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tilenuma, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.tilenuma_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tilenuma, __xlx_sprintf_buffer.data());
}
// print tilenumc Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tilenumc, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_tilenumc);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tilenumc, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.tilenumc_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tilenumc, __xlx_sprintf_buffer.data());
}
// print tilen Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_tilen, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_tilen);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_tilen, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.tilen_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_tilen, __xlx_sprintf_buffer.data());
}
// print numa_iter Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_numa_iter, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_numa_iter);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_numa_iter, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.numa_iter_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_numa_iter, __xlx_sprintf_buffer.data());
}
// print numc_iter Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_numc_iter, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_numc_iter);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_numc_iter, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.numc_iter_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_numc_iter, __xlx_sprintf_buffer.data());
}
// print n_iter Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_n_iter, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_n_iter);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_n_iter, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.n_iter_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_n_iter, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
region_before_hw_stub(__xlx_apatb_param_A, __xlx_apatb_param_B, __xlx_apatb_param_C, __xlx_apatb_param_numa, __xlx_apatb_param_numc, __xlx_apatb_param_n, __xlx_apatb_param_tilenuma, __xlx_apatb_param_tilenumc, __xlx_apatb_param_tilen, __xlx_apatb_param_numa_iter, __xlx_apatb_param_numc_iter, __xlx_apatb_param_n_iter);
CodeState = DUMP_OUTPUTS;
// print C Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_C, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_C);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_C, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.C_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_C, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
