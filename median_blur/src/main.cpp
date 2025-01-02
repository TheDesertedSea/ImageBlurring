#include <iostream>
#include <string>
#include <opencv2/opencv.hpp>
#include "kernel.h"

static const std::string imagesDir = "../../assets/noisy10/";

static __inline__ unsigned long long rdtsc(void) {
  unsigned hi, lo;
  __asm__ __volatile__ ("rdtsc" : "=a"(lo), "=d"(hi));
  return ( (unsigned long long)lo)|( ((unsigned long long)hi)<<32 );
}

int main()
{
    unsigned long long t0, t1, sum_kernel, sum_opencv;
    sum_kernel = 0;
    sum_opencv = 0;
    for (int i = 0; i < 1; i++)
    {
        std::string leadingZeros = i < 10 ? "000" : "00";
        std::string imagePath = imagesDir + leadingZeros + std::to_string(i) + ".png";
        std::cout << "Reading image: " << imagePath << std::endl;
        // std::string imagePath = "../../assets/noisy10/0000.png";
        cv::Mat image = cv::imread(imagePath, cv::IMREAD_COLOR);

        if (image.empty())
        {
            std::cerr << "Error: Could not open or find the image." << std::endl;
            return -1;
        }

        // Determine the number of bits per channel
        int depth = image.depth();
        int elemSize = image.elemSize();
        

        cv::Mat kernel_outputImage(image.rows, image.cols, CV_8UC3);
        sum_kernel += kernel_driver(image, kernel_outputImage);

        cv::Mat opencv_outputImage;
        t0 = rdtsc();
        cv::medianBlur(image, opencv_outputImage, 3);
        t1 = rdtsc();
        sum_opencv += (t0-t1);
        
        // cv::imwrite("./output/" + leadingZeros + std::to_string(i) + ".png", image);
        // cv::imwrite("./output/0000.png", image);
        if (!cv::imwrite("./output/" + leadingZeros + std::to_string(i) + "_kernel_median.png", kernel_outputImage)) {
            std::cerr << "Error: Could not write the image to file." << std::endl;
            return -1;
        }

        if (!cv::imwrite("./output/" + leadingZeros + std::to_string(i) + "_opencv_median.png", opencv_outputImage)) {
            std::cerr << "Error: Could not write the image to file." << std::endl;
            return -1;
        }    
    }
    printf("sum_kernel=%lu\n", sum_kernel);
    printf("sum_opencv=%lu\n", sum_opencv);
}