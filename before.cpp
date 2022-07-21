
void load_a(volatile int* A, int* a_buf, int ona, int on, int tilenuma, int tilen, int n) {
	for(int i=0;i<tilenuma;i++) {
		for(int j=0;j<tilen;j++) {
#pragma hls latency min=484 max=484
			int a_buf_ptr = i*tilen+j;
			int A_ptr = (ona*tilenuma+i)*n+(on*tilen+j);
			a_buf[a_buf_ptr] = A[A_ptr];
		}
	}
}

void load_b(volatile int* B, int* b_buf, int ona, int tilenuma, int onc, int tilenumc, int numa, int numc) {
	for(int i=0;i<tilenuma;i++) {
		for(int j=0;j<tilenumc;j++) {
#pragma hls latency min=484 max=484
			int b_buf_ptr = i*tilenumc+j;
			int B_ptr = (ona*tilenuma+i)*numc+(onc*tilenumc+j);
			b_buf[b_buf_ptr] = B[B_ptr];
		}
	}
}

void store_c(volatile int* C, int* c_buf, int onc, int on, int tilenumc, int tilen, int n) {
	for(int i=0;i<tilenumc;i++) {
		for(int j=0;j<tilen;j++) {
#pragma hls latency min=984 max=984
			int c_buf_ptr = i*tilen+j;
			int C_ptr = (onc*tilenumc+i)*n+(on*tilen+j);
			C[C_ptr] += c_buf[c_buf_ptr];
		}
	}
}


void conv(int* a_buf, int* b_buf, int* c_buf, int tilen, int tilenuma, int tilenumc) {
	int local_c[100] = {0};
	for(int c=0;c<tilenuma;c++) {
		for(int a=0;a<tilenuma;a++) {
			for(int n=0;n<tilen;n++) {
#pragma hls latency min=436 max=436
#pragma HLS DEPENDENCE variable=local_c
				int a_buf_ptr = a*tilen+n;
				int b_buf_ptr = a*tilenumc+c;
				int c_buf_ptr = c*tilen+n;
				local_c[c_buf_ptr] += a_buf[a_buf_ptr] * b_buf[b_buf_ptr];
				c_buf[c_buf_ptr] = local_c[c_buf_ptr];
			}
		}
	}
}

void region(volatile int* A, volatile int* B, volatile int* C,
		int numa, int numc, int n,
		int tilenuma, int tilenumc, int tilen,
		int numa_iter, int numc_iter, int n_iter) {
//#pragma HLS interface m_axi port=A bundle=gem1
//#pragma HLS interface m_axi port=B bundle=gem2
//#pragma HLS interface m_axi port=C bundle=gem3
	int a_buf[100];
	int b_buf[100];
	int c_buf[100];
	for(int ona=0;ona<numa_iter;ona++) {
		for(int on=0;on<n_iter;on++) {
			for(int onc=0;onc<numc_iter;onc++) {
#pragma HLS stable variable=A
#pragma HLS stable variable=B
#pragma HLS stable variable=C
				#pragma HLS dataflow
				//#pragma HLS interface ap_ctrl_none port=return
				load_a(A, a_buf, tilenuma, tilen, n, numa_iter, n_iter, numc_iter);
				load_b(B, b_buf, tilenuma, tilenumc, numa, numc, numa_iter, n_iter, numc_iter);
				conv(a_buf, b_buf, c_buf, tilen, tilenuma, tilenumc, numa_iter, n_iter, numc_iter);
				store_c(C, c_buf, tilenuma, tilenumc, tilen, n, numa_iter, n_iter, numc_iter);
			//}
		//}
	//}
}





