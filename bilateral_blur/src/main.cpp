#include <iostream>
#include <string>
#include <opencv2/opencv.hpp>
#include "kernel.h"

// static __inline__ unsigned long long rdtsc(void)
// {
//     unsigned hi, lo;
//     __asm__ __volatile__("rdtsc"
//                          : "=a"(lo), "=d"(hi));
//     return ((unsigned long long)lo) | (((unsigned long long)hi) << 32);
// }

static const double max_freq = 3.4;
static const double base_freq = 2.4;
static const int run = 10;

static const std::string imagesDir = "../assets/noisy10/";

int main()
{
    unsigned long long insts = 0;
    unsigned long long sum_kernel = 0;
    unsigned long long sum_openCV = 0;
    for (int j = 0; j < run; j++)
    {
        for (int i = 0; i < 60; i++)
        {
            std::string leadingZeros = i < 10 ? "000" : "00";
            std::string imagePath = imagesDir + leadingZeros + std::to_string(i) + ".png";
            // std::cout << "Reading image: " << imagePath << std::endl;
            cv::Mat image = cv::imread(imagePath, cv::IMREAD_COLOR);
            // std::cout << "Image size: " << image.rows << "x" << image.cols << std::endl;
            // std::cout << sizeof(image.data) / (image.rows * image.cols) << std::endl;

            if (image.empty())
            {
                std::cerr << "Error: Could not open or find the image." << std::endl;
                return -1;
            }

            // Determine the number of bits per channel
            int depth = image.depth();
            int elemSize = image.elemSize();

            cv::Mat outputImage(image.rows, image.cols, CV_8UC3);
            init();
            // unsigned long long start = rdtsc();
            kernel(image, outputImage, sum_kernel);
            // unsigned long long end = rdtsc();
            // sum_kernel += (end - start) * (max_freq / base_freq);
            insts += image.rows * image.cols * 3 * (6 + 27 + 11);

            // start = rdtsc();
            // cv::bilateralFilter(image, outputImage, 3, 75, 75);
            // end = rdtsc();

            // sum_openCV += end - start;

            cv::imwrite("./output/" + leadingZeros + std::to_string(i) + ".png", outputImage);

            // std::cout << "Number of bits per channel: " << depth * 8 << std::endl;
            // std::cout << "Number of bytes per pixel: " << elemSize << std::endl;
        }
    }

    // std::cout << "Average time for kernel: " << sum_kernel / 68 << std::endl;
    // std::cout << "Average time for OpenCV: " << sum_openCV / 68 << std::endl;
    // std::cout << "instructions for kernel: " << insts << std::endl;
    std::cout << "Average instructions for kernel: " << (double)insts / sum_kernel << std::endl;
}