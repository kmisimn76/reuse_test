

void region_after(volatile int* A, volatile int* B, volatile int* C,
		int numa, int numc, int n,
		int tilenuma, int tilenumc, int tilen,
		int numa_iter, int numc_iter, int n_iter);

void region_before(volatile int* A, volatile int* B, volatile int* C,
		int numa, int numc, int n,
		int tilenuma, int tilenumc, int tilen,
		int numa_iter, int numc_iter, int n_iter);

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

// must modify synthesis setting
	//region_after(A,B,C,numa,numc,n,tilenuma,tilenumc,tilen,numa_iter,numc_iter,n_iter);
	region_before(A,B,C,numa,numc,n,tilenuma,tilenumc,tilen,numa_iter,numc_iter,n_iter);

	return 0;
}
