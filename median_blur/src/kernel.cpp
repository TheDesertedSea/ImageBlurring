#include <stdio.h>
#include <iostream>
#include <string>
#include <stdlib.h>
#include <immintrin.h>
#include <cassert>
#include <algorithm>
#include "kernel.h"

#define KERNEL_COL (4)
#define KERNEL_ROW (4)

#define ROWS 4
#define COLS 4
#define M 3
#define N 3

#define FIRST_SMALL 15
#define SECOND_SMALL 14
#define THRID_SMALL 12
#define FORTH_SMALL 8
#define FIFTH_SMALL 0

static __inline__ unsigned long long rdtsc(void) {
  unsigned hi, lo;
  __asm__ __volatile__ ("rdtsc" : "=a"(lo), "=d"(hi));
  return ( (unsigned long long)lo)|( ((unsigned long long)hi)<<32 );
}

double findMedian(double arr[]) {
    // Make a copy of the array to avoid modifying the original
    double* sortedArr = new double[9];
    std::copy(arr, arr + 9, sortedArr);
    // Sort the array
    std::sort(sortedArr, sortedArr + 9);
    return sortedArr[4];

}

// Function to print the raw binary representation of an double
void printRawDoubleBits(double value)
{
    uint64_t *binary = (uint64_t *)&value;
    printf("Raw binary representation of the double: ");

    for (int i = 63; i >= 0; i--)
    {
        uint64_t mask = 1ULL << i;
        putchar((*binary & mask) ? '1' : '0');
    }

    printf("\n");
}

// Function to print the raw binary representation of an integer
void printRawIntBits(int value)
{
    uint32_t mask = 1U << 31; // Start with the most significant bit

    printf("Raw binary representation of the integer: ");
    for (int i = 0; i < 32; i++)
    {
        putchar((value & mask) ? '1' : '0');
        mask >>= 1;
    }
    printf("\n");
}


inline static double extract_element(__m256d simd_input, int index)
{   
    int64_t tmp;
    tmp = _mm256_extract_epi64(*(__m256i*)&simd_input, index);
    return *(double*)&tmp;
}


inline static void reassign_simd(__m256d *lower_four, __m256d *new_element, __m256d *dest, double *r4, int cmp_result)
{

    switch (cmp_result)
    {
    case FIRST_SMALL:
    // printf("i\n");
        *r4 = extract_element(*lower_four, 3);
        *new_element = _mm256_permute2f128_pd(*new_element, *lower_four, 0|(2<<4));
        *dest = _mm256_shuffle_pd(*new_element, *lower_four, 0|(0<<1)|(1<<2)|(0<<3));

        break;
    case SECOND_SMALL:
    // printf("ii\n");
        *r4 = extract_element(*lower_four, 3);
        *new_element = _mm256_permute2f128_pd(*new_element, *lower_four, 0|(2<<4));
        *new_element = _mm256_shuffle_pd(*new_element, *lower_four, 0|(0<<1)|(1<<2)|(0<<3));
        *dest = _mm256_shuffle_pd(*new_element, *new_element, 1|(0<<1)|(0<<2)|(1<<3));
        break;
    case THRID_SMALL:
    // printf("iii\n");
        *r4 = extract_element(*lower_four, 3);
        *new_element = _mm256_permute2f128_pd(*lower_four, *new_element, 0|(2<<4));
        *dest = _mm256_shuffle_pd(*new_element, *lower_four, 0|(1<<1)|(1<<2)|(0<<3));

        break;
    case FORTH_SMALL:
    // printf("iiii\n");
        *r4 = extract_element(*lower_four, 3);
        *new_element = _mm256_permute2f128_pd(*lower_four, *new_element, 0|(2<<4));
        *dest = _mm256_shuffle_pd(*lower_four, *new_element, 0|(1<<1)|(0<<2)|(0<<3));
        break;
    case FIFTH_SMALL:
    // printf("iiiii\n");
        *dest = *lower_four;
        break;
    default:
    // printf("default\n");
        break;
    }
    // _mm256_storeu_pd(data, *dest);
    // printf("lower four all Content: %lf %lf %lf %lf\n", data[3], data[2], data[1], data[0]);
}

/**
 *@brief median bluring kernel with 4 outputs
 *@param rows number of rows of image
 *@param cols number of cols of image
 *@param a pointer to input image
 *@param c pointer to output
 */
void median_navie(int rows, int cols, double *a, double *c)
{
    double arr[9];
    int c_rows = rows - 2;
    int c_cols = cols - 2;
    for (int i = 0; i<c_rows; i++){
        for (int j =0; j<c_cols; j++){
            for (int ai = 0; ai<3; ai++){
                for (int aj = 0; aj<3; aj++){
                    arr[ai*3 + aj] = a[i*cols + ai*cols + j + aj];
                }
            }
            c[i*c_cols + j] = findMedian(arr);
        }
    }
}

/**
 *@brief median bluring kernel with 4 outputs
 *@param rows number of rows of image
 *@param cols number of cols of image
 *@param a pointer to input image
 *@param c pointer to output
 */
void median_kernel(int rows, int cols, double *a, double *c)
{
    double r0, r1, r2, r3;
    double c0, c1, c2, c3;
    int cmp0, cmp1, cmp2, cmp3;
    __m256d simd_share_all;
    __m256d simd_share_up, simd_share_down;
    __m256d simd_new_c0, simd_new_c1, simd_new_c2, simd_new_c3;
    __m256d simd_cmp_c0, simd_cmp_c1, simd_cmp_c2, simd_cmp_c3;
    __m256d simd_result_c0, simd_result_c1, simd_result_c2, simd_result_c3;

    r0 = a[1 * cols + 1];
    r1 = a[1 * cols + 2];
    r2 = a[2 * cols + 1];
    r3 = a[2 * cols + 2];
    // sort r0-r3
    if (r0 > r1) {c0 = r0; r0 = r1; r1 = c0;}
    if (r2 > r3) {c0 = r2; r2 = r3; r3 = c0;}
    if (r0 > r2) {c0 = r0; r0 = r2; r2 = c0;}
    if (r1 > r3) {c0 = r1; r1 = r3; r3 = c0;}
    if (r1 > r2) {c0 = r1; r1 = r2; r2 = c0;}
    simd_share_all = _mm256_set_pd(r3, r2, r1, r0);

    // construct share_up
    c0 = a[0 * cols + 1];
    simd_new_c0 = _mm256_set1_pd(c0);
    simd_cmp_c0 = _mm256_cmp_pd(simd_share_all, simd_new_c0, _CMP_GT_OQ);
    cmp0 = _mm256_movemask_pd(simd_cmp_c0);

    reassign_simd(&simd_share_all, &simd_new_c0, &simd_share_up, &c0, cmp0);

    c1 = a[0 * cols + 2];
    if (c1 < c0) {
        simd_new_c1 = _mm256_set1_pd(c1);
        simd_cmp_c1 = _mm256_cmp_pd(simd_share_up, simd_new_c1, _CMP_GT_OQ);
        cmp1 = _mm256_movemask_pd(simd_cmp_c1);
        reassign_simd(&simd_share_up, &simd_new_c1, &simd_share_up, &c1, cmp1);
        c0 = c1;
    } 
    else{
        c1 = c0;
    }

    // construct share_down
    c2 = a[3 * cols + 1];
    simd_new_c2 = _mm256_set1_pd(c2);
    simd_cmp_c2 = _mm256_cmp_pd(simd_share_all, simd_new_c2, _CMP_GT_OQ);

    cmp2 = _mm256_movemask_pd(simd_cmp_c2);
    reassign_simd(&simd_share_all, &simd_new_c2, &simd_share_down, &c2, cmp2);

    c3 = a[3 * cols + 2];
    if (c3 < c2) {
        simd_new_c3 = _mm256_set1_pd(c3);
        simd_cmp_c3 = _mm256_cmp_pd(simd_share_down, simd_new_c3, _CMP_GT_OQ);
        cmp3 = _mm256_movemask_pd(simd_cmp_c3);
        reassign_simd(&simd_share_down, &simd_new_c3, &simd_share_down, &c3, cmp3);
        c2 = c3;
    } 
    else{
        c3 = c2;
    }

    // upper left 00 10 20
    // load(0,0)
    simd_result_c0 = simd_share_up;
    r0 = a[0 * cols + 0];
    if (r0 < c0) {
        c0 = r0;
        simd_new_c0 = _mm256_set1_pd(c0);
        simd_cmp_c0 = _mm256_cmp_pd(simd_result_c0, simd_new_c0, _CMP_GT_OQ);
        cmp0 = _mm256_movemask_pd(simd_cmp_c0);
        reassign_simd(&simd_result_c0, &simd_new_c0, &simd_result_c0, &c0, cmp0);
    } 
    // load(1,0)
    r0 = a[1 * cols + 0];
    if (r0 < c0) {
        c0 = r0;
        simd_new_c0 = _mm256_set1_pd(c0);
        simd_cmp_c0 = _mm256_cmp_pd(simd_result_c0, simd_new_c0, _CMP_GT_OQ);
        cmp0 = _mm256_movemask_pd(simd_cmp_c0);
        reassign_simd(&simd_result_c0, &simd_new_c0, &simd_result_c0, &c0, cmp0);
    } 
    // load(2,0)
    r0 = a[2 * cols + 0];
    if (r0 < c0) {
        c0 = r0;
        simd_new_c0 = _mm256_set1_pd(c0);
        simd_cmp_c0 = _mm256_cmp_pd(simd_result_c0, simd_new_c0, _CMP_GT_OQ);
        cmp0 = _mm256_movemask_pd(simd_cmp_c0);
        reassign_simd(&simd_result_c0, &simd_new_c0, &simd_result_c0, &c0, cmp0);
    } 

    // upper right 03 13 23
    // load(0,3)
    simd_result_c1 = simd_share_up;
    r1 = a[0 * cols + 3];
    if (r1 < c1) {
        c1 = r1;
        simd_new_c1 = _mm256_set1_pd(c1);
        simd_cmp_c1 = _mm256_cmp_pd(simd_result_c1, simd_new_c1, _CMP_GT_OQ);
        cmp1 = _mm256_movemask_pd(simd_cmp_c1);
        reassign_simd(&simd_result_c1, &simd_new_c1, &simd_result_c1, &c1, cmp1);
    }
    // load(1,3)
    r1 = a[1 * cols + 3];
    if (r1 < c1) {
        c1 = r1;
        simd_new_c1 = _mm256_set1_pd(c1);
        simd_cmp_c1 = _mm256_cmp_pd(simd_result_c1, simd_new_c1, _CMP_GT_OQ);
        cmp1 = _mm256_movemask_pd(simd_cmp_c1);
        reassign_simd(&simd_result_c1, &simd_new_c1, &simd_result_c1, &c1, cmp1);
    } 
    // load(2,3)
    r1 = a[2 * cols + 3];
    if (r1 < c1) {
        c1 = r1;
        simd_new_c1 = _mm256_set1_pd(c1);
        simd_cmp_c1 = _mm256_cmp_pd(simd_result_c1, simd_new_c1, _CMP_GT_OQ);
        cmp1 = _mm256_movemask_pd(simd_cmp_c1);
        reassign_simd(&simd_result_c1, &simd_new_c1, &simd_result_c1, &c1, cmp1);
    } 

    // lower left 10 20 30
    // load(1,0)
    simd_result_c2 = simd_share_down;
    r2 = a[1 * cols + 0];
    if (r2 < c2) {
        c2 = r2;
        simd_new_c2 = _mm256_set1_pd(c2);
        simd_cmp_c2 = _mm256_cmp_pd(simd_result_c2, simd_new_c2, _CMP_GT_OQ);
        cmp2 = _mm256_movemask_pd(simd_cmp_c2);
        reassign_simd(&simd_result_c2, &simd_new_c2, &simd_result_c2, &c2, cmp2);
    } 

    // load(2,0)
    r2 = a[2 * cols + 0];
    if (r2 < c2) {
        c2 = r2;
        simd_new_c2 = _mm256_set1_pd(c2);
        simd_cmp_c2 = _mm256_cmp_pd(simd_result_c2, simd_new_c2, _CMP_GT_OQ);
        cmp2 = _mm256_movemask_pd(simd_cmp_c2);
        reassign_simd(&simd_result_c2, &simd_new_c2, &simd_result_c2, &c2, cmp2);
    } 
    // load(3,0)
    r2 = a[3 * cols + 0];
    if (r2 < c2) {
        c2 = r2;
        simd_new_c2 = _mm256_set1_pd(c2);
        simd_cmp_c2 = _mm256_cmp_pd(simd_result_c2, simd_new_c2, _CMP_GT_OQ);
        cmp2 = _mm256_movemask_pd(simd_cmp_c2);
        reassign_simd(&simd_result_c2, &simd_new_c2, &simd_result_c2, &c2, cmp2);
    } 
    
    // lower left 10 20 30
    // load(1,3)
    simd_result_c3 = simd_share_down;
    r3 = a[1 * cols + 3];
    if (r3 < c3) {
        c3 = r3;
        simd_new_c3 = _mm256_set1_pd(c3);
        simd_cmp_c3 = _mm256_cmp_pd(simd_result_c3, simd_new_c3, _CMP_GT_OQ);
        cmp3 = _mm256_movemask_pd(simd_cmp_c3);
        reassign_simd(&simd_result_c3, &simd_new_c3, &simd_result_c3, &c3, cmp3);
    } 
    // load(2,3)
    r3 = a[2 * cols + 3];
    if (r3 < c3) {
        c3 = r3;
        simd_new_c3 = _mm256_set1_pd(c3);
        simd_cmp_c3 = _mm256_cmp_pd(simd_result_c3, simd_new_c3, _CMP_GT_OQ);
        cmp3 = _mm256_movemask_pd(simd_cmp_c3);
        reassign_simd(&simd_result_c3, &simd_new_c3, &simd_result_c3, &c3, cmp3);
    } 
    // load(3,3)
    r3 = a[3 * cols + 3];
    if (r3 < c3) {
        c3 = r3;
        simd_new_c3 = _mm256_set1_pd(c3);
        simd_cmp_c3 = _mm256_cmp_pd(simd_result_c3, simd_new_c3, _CMP_GT_OQ);
        cmp3 = _mm256_movemask_pd(simd_cmp_c3);
        reassign_simd(&simd_result_c3, &simd_new_c3, &simd_result_c3, &c3, cmp3);
    }
    // 00 01 10 11
    c[0*(cols-2) + 0] = c0;
    c[0*(cols-2) + 1] = c1;
    c[1*(cols-2) + 0] = c2;
    c[1*(cols-2) + 1] = c3;

}

unsigned long long kernel_driver( cv::Mat& input, cv::Mat& output ){
    unsigned long long t0, t1, sum_kernel;
    sum_kernel = 0;
	int m = input.rows;
	int n = input.cols;

	printf("%d, %d\n", m, n);
    int m_extend = m-(m%KERNEL_ROW)+KERNEL_ROW;
	int n_extend = n-(n%KERNEL_COL)+KERNEL_COL;
    double *mat = new double[m_extend * n_extend];
    double *outputDouble = new double[(m_extend - 2) * (n_extend - 2)];
    
    // double *outputDouble = new double[(m - 2) * (n - 2)];
	for (int channel = 0; channel < 3; channel++)
	{
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

		for(int i=0; i<=m; i=i+KERNEL_ROW-2){
			for(int j=0; j<n; j=j+KERNEL_COL-2){
				
				// printf("%d, %d\n", m, n);
				// printf("%d, %d\n", i, j);
				// printf("%d, %d\n", i*n+j, i*(n-2)+j);
                t0 = rdtsc();
				median_kernel(m,n, &mat[i*n+j], &outputDouble[i*(n-2)+j]);
                t1 = rdtsc();
                sum_kernel += (t0-t1);
			}
		}

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
    }

	delete[] mat;
	delete[] outputDouble;
    return sum_kernel;
}
