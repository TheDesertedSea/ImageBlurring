# 图像模糊算法加速
在Intel Broadwell微架构上对三种图像模糊算法：均值模糊、中值模糊和双边模糊进行加速。
主要工作：
-	使用 SIMD (Single Instruction Multiple Data)实现模糊算法kernel
-	根据Intel Broadwell 上SIMD指令的latency、throughput对kernel进行优化
-	根据Intel Broadwell的L1缓存大小对整体代码进行优化
-	使用OpenMP 利用多核性能进行并行化加速

## 目录结构
```
├─ assets: 用于测试的图像集
├─ averaging_blur: 均值模糊，具体算法见 
    https://docs.opencv.org/4.x/d4/d13/tutorial_py_filtering.html
├─ median_blur: 中值模糊，具体算法见 
    https://en.wikipedia.org/wiki/Median_filter
└─ bilateral_blur: 双边模糊，具体算法见
    https://en.wikipedia.org/wiki/Bilateral_filter
```

## 使用方法
在每个模糊算法根目录下:

cmake .
make

执行生成的可执行程序
