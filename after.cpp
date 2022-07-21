
#include <hls_stream.h>

typedef struct{
	int data[100];
}buf;

void load_a(volatile int* A, hls::stream<buf>& a_buf_, int tilenuma, int tilen, int n, int numa_iter, int n_iter, int numc_iter) {
#pragma HLS interface ap_ctrl_none port=return
//#pragma HLS interface ap_ctrl_none port=return

	for(int on=0;on<n_iter;on++) {
		for(int onc=0;onc<numc_iter;onc++) {
			for(int ona=0;ona<numa_iter;ona++) {
	buf a_buf;
	for(int i=0;i<tilenuma;i++) {
#pragma HLS loop_tripcount min=4 max=4
		for(int j=0;j<tilen;j++) {
#pragma HLS loop_tripcount min=4 max=4
#pragma hls latency min=484 max=484
			int a_buf_ptr = i*tilen+j;
			int A_ptr = (ona*tilenuma+i)*n+(on*tilen+j);
			a_buf.data[a_buf_ptr] = A[A_ptr];
		}
	}
	a_buf_.write(a_buf);
			}
		}
	}
}

void load_b(volatile int* B, hls::stream<buf>& b_buf_, int tilenuma, int tilenumc, int numa, int numc, int numa_iter, int n_iter, int numc_iter) {
#pragma HLS interface ap_ctrl_none port=return
//#pragma HLS interface ap_ctrl_none port=return
	for(int on=0;on<n_iter;on++) {
		for(int onc=0;onc<numc_iter;onc++) {
			for(int ona=0;ona<numa_iter;ona++) {
	//if(on==0) {
		buf b_buf;
		for(int i=0;i<tilenuma;i++) {
#pragma HLS loop_tripcount min=4 max=4
			for(int j=0;j<tilenumc;j++) {
#pragma HLS loop_tripcount min=4 max=4
	#pragma hls latency min=484 max=484
				int b_buf_ptr = i*tilenumc+j;
				int B_ptr = (ona*tilenuma+i)*numc+(onc*tilenumc+j);
				b_buf.data[b_buf_ptr] = B[B_ptr];
			}
		}
		b_buf_.write(b_buf);
	//}
			}
		}
	}
}

void store_c(volatile int* C, hls::stream<buf>& c_buf_, int tilenuma, int tilenumc, int tilen, int n, int numa_iter, int n_iter, int numc_iter) {
#pragma HLS interface ap_ctrl_none port=return
//#pragma HLS interface m_axi port=C
//#pragma HLS interface ap_ctrl_none port=return
	for(int on=0;on<n_iter;on++) {
		for(int onc=0;onc<numc_iter;onc++) {
			for(int ona=0;ona<numa_iter;ona++) {

	if(ona==numa_iter-1) {
	buf c_buf = c_buf_.read();
	for(int i=0;i<tilenumc;i++) {
#pragma HLS loop_tripcount min=4 max=4
		for(int j=0;j<tilen;j++) {
#pragma HLS loop_tripcount min=4 max=4
#pragma hls latency min=984 max=984
			int c_buf_ptr = i*tilen+j;
			int C_ptr = (onc*tilenumc+i)*n+(on*tilen+j);
			C[C_ptr] += c_buf.data[c_buf_ptr];
		}
	}
	}
			}
		}
	}
}


void conv(hls::stream<buf>& a_buf_, hls::stream<buf>& b_buf_, hls::stream<buf>& c_buf_, int tilen, int tilenuma, int tilenumc, int numa_iter, int n_iter, int numc_iter) {
//#pragma HLS interface ap_ctrl_none port=return
#pragma HLS interface ap_ctrl_none port=return
	for(int on=0;on<n_iter;on++) {
		for(int onc=0;onc<numc_iter;onc++) {
			for(int ona=0;ona<numa_iter;ona++) {
	static buf a_buf;
	a_buf = a_buf_.read();
	static buf b_buf;
	//if(on==0) b_buf = b_buf_.read();
	b_buf = b_buf_.read();
	buf c_buf;
	static int local_c[100];
	for(int c=0;c<tilenuma;c++) {
#pragma HLS loop_tripcount min=4 max=4
		for(int a=0;a<tilenuma;a++) {
#pragma HLS loop_tripcount min=4 max=4
			for(int n=0;n<tilen;n++) {
#pragma HLS loop_tripcount min=4 max=4
#pragma hls latency min=436 max=436
#pragma HLS DEPENDENCE variable=local_c
				int a_buf_ptr = a*tilen+n;
				int b_buf_ptr = a*tilenumc+c;
				int c_buf_ptr = c*tilen+n;
				local_c[c_buf_ptr] += a_buf.data[a_buf_ptr] * b_buf.data[b_buf_ptr];
				c_buf.data[c_buf_ptr] = local_c[c_buf_ptr];
			}
		}
	}
	if(ona==numa_iter-1)
		c_buf_.write(c_buf);
				}
			}
		}
}

void region_after(volatile int* A, volatile int* B, volatile int* C,
		int numa, int numc, int n,
		int tilenuma, int tilenumc, int tilen,
		int numa_iter, int numc_iter, int n_iter) {
//#pragma HLS interface m_axi port=A bundle=gem1
//#pragma HLS interface m_axi port=B bundle=gem2
//#pragma HLS interface m_axi port=C bundle=gem3
	hls::stream<buf>  a_buf;
	hls::stream<buf>  b_buf;
	hls::stream<buf>  c_buf;
#pragma HLS STREAM variable=a_buf depth=1
#pragma HLS STREAM variable=b_buf depth=1
#pragma HLS STREAM variable=c_buf depth=1
#pragma HLS stable variable=A
#pragma HLS stable variable=B
#pragma HLS stable variable=C
				#pragma HLS dataflow
				//#pragma HLS interface ap_ctrl_none port=return
				load_a(A, a_buf, tilenuma, tilen, n, numa_iter, n_iter, numc_iter);
				load_b(B, b_buf, tilenuma, tilenumc, numa, numc, numa_iter, n_iter, numc_iter);
				conv(a_buf, b_buf, c_buf, tilen, tilenuma, tilenumc, numa_iter, n_iter, numc_iter);
				store_c(C, c_buf, tilenuma, tilenumc, tilen, n, numa_iter, n_iter, numc_iter);
}





