#ifndef _KERNEL_H_
#define _KERNEL_H_
#include <opencv2/opencv.hpp>

static __inline__ unsigned long long rdtsc(void)
{
    unsigned hi, lo;
    __asm__ __volatile__("rdtsc"
                         : "=a"(lo), "=d"(hi));
    return ((unsigned long long)lo) | (((unsigned long long)hi) << 32);
}

static const double mean1 = 0;
static const double stddev1 = 50;
static const double mean2 = (4 * sqrt(2) + 4) / 9;
static const double stddev2 = 1;
static double gaussian_values[511] = {0.0};

static double coordinate_diffs[3] = {0.0};

void init();

void init_gaussian_values();

void init_coordinate_diffs();

void kernel(cv::Mat &intput, cv::Mat &output, unsigned long long& cycles);

void kernel_fg(double *mat, double *fg, int m, int n);

void kernel_sum(double *mat, double *fg, double *sums, double *ws, int m, int n);

void kernel_sum_remain(double *mat, double *fg, double *sums, double *ws, int m, int n, int remain_m_sum, int remain_n);

void kernel_divide(double *sums, double *ws, double *output, int m, int n);

void kernel_divide_remain(double *sums, double *ws, double *output, int m, int n, int remain_n);
#endif