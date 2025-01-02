#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <immintrin.h>
#include <time.h>

#define SIMD_FMA(dest, src1, src2)                \
__asm__ __volatile__(                             \
  "vfmadd231pd %[rsrc2], %[rsrc1], %[rdest]\n"    \
  : [rdest] "+x" (dest)                           \
  : [rsrc1] "x" (src1),  [rsrc2] "x" (src2)       \
);

void kernel
(
  double* a,
  double* c,
  int m,
  int n
){
	__m256d cx0, cx1, cx2, cx3, cx4, cx5;
	__m256d ax0, ax1, ax2, ax3, ax4, ax5, ax6, ax7;
	__m256d divisor_reciprocal;
	double divisor_reciprocal_GPR = 1.0/9;
	divisor_reciprocal = _mm256_broadcast_sd(&divisor_reciprocal_GPR);

  	// initialize all output registers to zero
	cx0 = _mm256_setzero_pd();
	cx1 = _mm256_setzero_pd();
	cx2 = _mm256_setzero_pd();
	cx3 = _mm256_setzero_pd();
	cx4 = _mm256_setzero_pd();
	cx5 = _mm256_setzero_pd();

	for(int i=0; i<3; i++){
		ax0 = _mm256_loadu_pd(&a[n*0 + i]);
		ax1 = _mm256_loadu_pd(&a[n*1 + i]);
		ax2 = _mm256_loadu_pd(&a[n*2 + i]);
		ax3 = _mm256_loadu_pd(&a[n*3 + i]);
		ax4 = _mm256_loadu_pd(&a[n*4 + i]);
		ax5 = _mm256_loadu_pd(&a[n*5 + i]);
		ax6 = _mm256_loadu_pd(&a[n*6 + i]);
		ax7 = _mm256_loadu_pd(&a[n*7 + i]);
// interleaving required
		SIMD_FMA(cx0, ax0, divisor_reciprocal);
		SIMD_FMA(cx1, ax1, divisor_reciprocal);
		SIMD_FMA(cx2, ax2, divisor_reciprocal);
		SIMD_FMA(cx3, ax3, divisor_reciprocal);
		SIMD_FMA(cx4, ax4, divisor_reciprocal);
		SIMD_FMA(cx5, ax5, divisor_reciprocal);

		SIMD_FMA(cx0, ax1, divisor_reciprocal);
		SIMD_FMA(cx1, ax2, divisor_reciprocal);
		SIMD_FMA(cx2, ax3, divisor_reciprocal);
		SIMD_FMA(cx3, ax4, divisor_reciprocal);
		SIMD_FMA(cx4, ax5, divisor_reciprocal);
		SIMD_FMA(cx5, ax6, divisor_reciprocal);

		SIMD_FMA(cx0, ax2, divisor_reciprocal);
		SIMD_FMA(cx1, ax3, divisor_reciprocal);
		SIMD_FMA(cx2, ax4, divisor_reciprocal);
		SIMD_FMA(cx3, ax5, divisor_reciprocal);
		SIMD_FMA(cx4, ax6, divisor_reciprocal);
		SIMD_FMA(cx5, ax7, divisor_reciprocal);
	}

	_mm256_storeu_pd(&c[(n-2)*0], cx0);
	_mm256_storeu_pd(&c[(n-2)*1], cx1);
	_mm256_storeu_pd(&c[(n-2)*2], cx2);
	_mm256_storeu_pd(&c[(n-2)*3], cx3);
	_mm256_storeu_pd(&c[(n-2)*4], cx4);
	_mm256_storeu_pd(&c[(n-2)*5], cx5);
	return;
}

int main(void){
    double in[48] = {0};
    double out1[24] = {0};
    double out2[24] = {0};
    int i;
    double d = 1.0/9;
    srand(time(NULL));
    for(i=0;i<48;i++){
        in[i] = (double)i;
    }

    for(int i=0;i<8;i++){
      for(int j=0;j<6;j++){
        printf("%lf ", in[i*6+j]);
      }
        printf("\n");
    }

	printf("\n");

    kernel(in, out1, 8, 6);
    for(int i=0;i<6;i++){
      for(int j=0;j<4;j++){
        printf("%lf ", out1[i*4+j]);
      }
        printf("\n");
    }

    return 0;
}