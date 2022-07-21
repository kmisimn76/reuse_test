#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void region(volatile void *, volatile void *, volatile void *, int, int, int, int, int, int, int, int, int);
extern "C" void apatb_region_hw(volatile void * __xlx_apatb_param_A, volatile void * __xlx_apatb_param_B, volatile void * __xlx_apatb_param_C, int __xlx_apatb_param_numa, int __xlx_apatb_param_numc, int __xlx_apatb_param_n, int __xlx_apatb_param_tilenuma, int __xlx_apatb_param_tilenumc, int __xlx_apatb_param_tilen, int __xlx_apatb_param_numa_iter, int __xlx_apatb_param_numc_iter, int __xlx_apatb_param_n_iter) {
  // DUT call
  region(__xlx_apatb_param_A, __xlx_apatb_param_B, __xlx_apatb_param_C, __xlx_apatb_param_numa, __xlx_apatb_param_numc, __xlx_apatb_param_n, __xlx_apatb_param_tilenuma, __xlx_apatb_param_tilenumc, __xlx_apatb_param_tilen, __xlx_apatb_param_numa_iter, __xlx_apatb_param_numc_iter, __xlx_apatb_param_n_iter);
}
