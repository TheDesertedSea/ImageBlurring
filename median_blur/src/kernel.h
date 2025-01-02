#include <opencv2/opencv.hpp>

void median_navie(int rows, int cols, double *a, double *c);

void median_kernel(int rows, int cols, double* a, double* c);

unsigned long long kernel_driver( cv::Mat& input, cv::Mat& output);