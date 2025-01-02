#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <immintrin.h>
#include "kernel.h"

static __inline__ unsigned long long rdtsc(void) {
    unsigned hi, lo;
    __asm__ __volatile__ ("rdtsc" : "=a"(lo), "=d"(hi));
    return ( (unsigned long long)lo)|( ((unsigned long long)hi)<<32 );
}

unsigned long long t0, t1;
unsigned long long sum_kernel = 0;
unsigned long long kernel_invoke = 0;
void kernel_driver
(
  cv::Mat& input, 
  cv::Mat& output
){
	int m = input.rows;
	int n = input.cols;

	// printf("%d, %d\n", m, n);
	int m_extend = m-(m%KERNEL_ROW)+KERNEL_ROW;
	int n_extend = n-(n%KERNEL_COL)+KERNEL_COL;
    double *mat = new double[m_extend * n_extend];
    double *outputDouble = new double[(m_extend - 2) * (n_extend - 2)];
	for (int channel = 0; channel < 3; channel++)
	{
		// t0 = rdtsc();
        for(int i = 0; i < m; i++)
        {
            for(int j = 0; j < n; j++)
            {
                mat[i * n + j] = input.at<cv::Vec3b>(i, j)[channel];
            }
        }
        for (int i = 0; i < (m - 2) * (n - 2); i++)
        {
            outputDouble[i] = 0.0;
        }
		// t0 = rdtsc();

		t0 = rdtsc();
		for(int i=0; i<=m; i=i+KERNEL_ROW-2){
			for(int j=0; j<n; j=j+KERNEL_COL-2){
				
				// printf("%d, %d\n", m, n);
				// printf("%d, %d\n", i, j);
				// printf("%d, %d\n", i*n+j, i*(n-2)+j);
				kernel(&mat[i*n+j], &outputDouble[i*(n-2)+j], m, n);
				kernel_invoke++;
			}
		}

		t1 = rdtsc();
        for (int i = 0; i < m; i++)
        {
            for (int j = 0; j < n; j++)
            {
                if (i == 0 || j == 0 || i == m - 1 || j == n - 1)
                {
                    output.at<cv::Vec3b>(i, j)[channel] = input.at<cv::Vec3b>(i, j)[channel];
                    continue;
                }
                output.at<cv::Vec3b>(i, j)[channel] = (uchar)outputDouble[i*(n-2)+j];
            }
        }
        sum_kernel += (t1-t0);
    }
	std::cout << "kernel: " << sum_kernel << std::endl;
	double sum_kernel_turbo = sum_kernel * ((double)MAX_FREQ)/BASE_FREQ;
  	printf("kernel (TURBO Cycles): %lf\n\r",sum_kernel_turbo);
	std::cout << "throughout: " << kernel_invoke*24*3/sum_kernel_turbo << std::endl;
	// for (int i = 0; i < m; i++)
	// {
	// 	for (int j = 0; j < n; j++)
	// 	{
	// 		if(output.at<cv::Vec3b>(i, j)[0] == 0 && output.at<cv::Vec3b>(i, j)[1] == 0 && output.at<cv::Vec3b>(i, j)[2]==0){
	// 			printf("%d %d\n", i, j);
	// 		}
	// 	}
	// }
	delete[] mat;
	delete[] outputDouble;
}

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