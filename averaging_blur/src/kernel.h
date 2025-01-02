#include <opencv2/opencv.hpp>

#define MAX_FREQ 3.4
#define BASE_FREQ 2.4
#define KERNEL_COL (6)
#define KERNEL_ROW (8)
#define SIMD_FMA(dest, src1, src2)                \
__asm__ __volatile__(                             \
  "vfmadd231pd %[rsrc1], %[rsrc2], %[rdest]\n"    \
  : [rdest] "+x" (dest)                           \
  : [rsrc1] "x" (src1),  [rsrc2] "x" (src2)       \
);
void kernel_driver(cv::Mat& input, cv::Mat& output);
void kernel(double* a, double* c, int m, int n);