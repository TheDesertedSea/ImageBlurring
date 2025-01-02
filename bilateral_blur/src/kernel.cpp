#include "kernel.h"
#include <immintrin.h>
#include <math.h>
#include <iostream>

void init()
{
    init_gaussian_values();
    init_coordinate_diffs();
}

void init_gaussian_values()
{
    for (int i = 0; i < 511; i++)
    {
        gaussian_values[i] = 1.0 / (sqrt(2 * M_PI) * stddev1) * exp(-0.5 * pow(((i - 255) - mean1) / stddev1, 2));
    }
}

void init_coordinate_diffs()
{
    coordinate_diffs[0] = 1.0 / (sqrt(2 * M_PI) * stddev2) * exp(-0.5 * pow((0 - mean2) / stddev2, 2));
    coordinate_diffs[1] = 1.0 / (sqrt(2 * M_PI) * stddev2) * exp(-0.5 * pow((1 - mean2) / stddev2, 2));
    coordinate_diffs[2] = 1.0 / (sqrt(2 * M_PI) * stddev2) * exp(-0.5 * pow((sqrt(2) - mean2) / stddev2, 2));
}

void kernel(cv::Mat &input, cv::Mat &output, unsigned long long& cycles)
{
    int m = input.rows;
    int n = input.cols;
    int remain_m_sum = (m - 2) % 2;
    int remain_n_sum = (n - 2) % 4;
    int remain_n_div = (n - 2) % 20;

    double *fg = new double[(m - 2) * (n - 2) * 9];
    double *mat = new double[m * n];
    double *sums = new double[(m - 2) * (n - 2)];
    double *ws = new double[(m - 2) * (n - 2)];
    double *outputDouble = new double[(m - 2) * (n - 2)];

    for (int channel = 0; channel < 3; channel++)
    {
        for (int i = 0; i < m; i++)
        {
            for (int j = 0; j < n; j++)
            {
                mat[i * n + j] = input.at<cv::Vec3b>(i, j)[channel];
            }
        }
        for (int i = 0; i < (m - 2) * (n - 2) * 9; i++)
        {
            fg[i] = 0.0;
        }
        unsigned long long start = rdtsc();
        kernel_fg(mat, fg, m, n);
        unsigned long long end = rdtsc();
        cycles += end - start;

        for (int i = 0; i < (m - 2) * (n - 2); i++)
        {
            sums[i] = 0.0;
        }

        for (int i = 0; i < (m - 2) * (n - 2); i++)
        {
            ws[i] = 0.0;
        }
        start = rdtsc();
        kernel_sum(mat, fg, sums, ws, m, n);
        end = rdtsc();
        cycles += end - start;
        kernel_sum_remain(mat, fg, sums, ws, m, n, remain_m_sum, remain_n_sum);

        for (int i = 0; i < (m - 2) * (n - 2); i++)
        {
            outputDouble[i] = 0.0;
        }
        start = rdtsc();
        kernel_divide(sums, ws, outputDouble, m, n);
        end = rdtsc();
        cycles += end - start;
        kernel_divide_remain(sums, ws, outputDouble, m, n, remain_n_div);

        for (int i = 0; i < m; i++)
        {
            for (int j = 0; j < n; j++)
            {
                if (i == 0 || j == 0 || i == m - 1 || j == n - 1)
                {
                    output.at<cv::Vec3b>(i, j)[channel] = mat[i * n + j];
                    continue;
                }
                output.at<cv::Vec3b>(i, j)[channel] = (uchar)outputDouble[(i - 1) * (n - 2) + j - 1];
            }
        }
    }
    delete[] mat;
    delete[] outputDouble;
    delete[] fg;
    delete[] sums;
    delete[] ws;
}

void kernel_fg(double *mat, double *fg, int m, int n)
{
    int total = (m - 2) * (n - 2);
    for (int i = 1; i < m - 1; i++)
    {
        for (int j = 1; j < n - 1; j++)
        {
            int baseIndex0 = (i - 1) * n + j;
            int baseIndex1 = baseIndex0 + n;
            int baseIndex2 = baseIndex1 + n;

            int center = mat[baseIndex1];
            int index_a00 = mat[baseIndex0 - 1] - center + 255;
            int index_a01 = mat[baseIndex0] - center + 255;
            int index_a02 = mat[baseIndex0 + 1] - center + 255;
            int index_a10 = mat[baseIndex1 - 1] - center + 255;
            int index_a11 = 255;
            int index_a12 = mat[baseIndex1 + 1] - center + 255;
            int index_a20 = mat[baseIndex2 - 1] - center + 255;
            int index_a21 = mat[baseIndex2] - center + 255;
            int index_a22 = mat[baseIndex2 + 1] - center + 255;

            double fg00 = gaussian_values[index_a00] * coordinate_diffs[2];
            double fg01 = gaussian_values[index_a01] * coordinate_diffs[1];
            double fg02 = gaussian_values[index_a02] * coordinate_diffs[2];
            double fg10 = gaussian_values[index_a10] * coordinate_diffs[1];
            double fg11 = gaussian_values[index_a11] * coordinate_diffs[0];
            double fg12 = gaussian_values[index_a12] * coordinate_diffs[1];
            double fg20 = gaussian_values[index_a20] * coordinate_diffs[2];
            double fg21 = gaussian_values[index_a21] * coordinate_diffs[1];
            double fg22 = gaussian_values[index_a22] * coordinate_diffs[2];

            int baseIndex = ((i - 1) * (n - 2) + j - 1);
            fg[baseIndex] = fg00;
            baseIndex += total;
            fg[baseIndex] = fg01;
            baseIndex += total;
            fg[baseIndex] = fg02;
            baseIndex += total;
            fg[baseIndex] = fg10;
            baseIndex += total;
            fg[baseIndex] = fg11;
            baseIndex += total;
            fg[baseIndex] = fg12;
            baseIndex += total;
            fg[baseIndex] = fg20;
            baseIndex += total;
            fg[baseIndex] = fg21;
            baseIndex += total;
            fg[baseIndex] = fg22;
        }
    }
}

void kernel_sum(double *mat, double *fg, double *sums, double *ws, int m, int n)
{
    int total = (m - 2) * (n - 2);
    for (int i = 1; i < m - 2; i += 2)
    {
        for (int j = 1; j < n - 4; j += 4)
        {
            int baseIndex = ((i - 1) * (n - 2) + j - 1);
            int index_a0 = (i - 1) * n + j;
            int index_a1 = i * n + j;
            int index_a2 = (i + 1) * n + j;
            int index_b = baseIndex;

            __m256d sum0 = _mm256_setzero_pd();
            __m256d w0 = _mm256_setzero_pd();
            __m256d sum1 = _mm256_setzero_pd();
            __m256d w1 = _mm256_setzero_pd();

            __m256d a00 = _mm256_loadu_pd(mat + index_a0 - 1);
            __m256d b00 = _mm256_loadu_pd(fg + index_b);
            __m256d a01 = _mm256_loadu_pd(mat + index_a0);
            index_b += total;
            __m256d b01 = _mm256_loadu_pd(fg + index_b);
            __m256d a02 = _mm256_loadu_pd(mat + index_a0 + 1);
            index_b += total;
            __m256d b02 = _mm256_loadu_pd(fg + index_b);
            __m256d a10 = _mm256_loadu_pd(mat + index_a1 - 1);
            index_b += total;
            __m256d b10 = _mm256_loadu_pd(fg + index_b);
            __m256d a11 = _mm256_loadu_pd(mat + index_a1);
            index_b += total;
            __m256d b11 = _mm256_loadu_pd(fg + index_b);
            __m256d a12 = _mm256_loadu_pd(mat + index_a1 + 1);
            index_b += total;
            __m256d b12 = _mm256_loadu_pd(fg + index_b);

            sum0 = _mm256_fmadd_pd(a00, b00, sum0);
            w0 = _mm256_add_pd(w0, b00);
            sum0 = _mm256_fmadd_pd(a01, b01, sum0);
            w0 = _mm256_add_pd(w0, b01);
            sum0 = _mm256_fmadd_pd(a02, b02, sum0);
            w0 = _mm256_add_pd(w0, b02);
            sum0 = _mm256_fmadd_pd(a10, b10, sum0);
            w0 = _mm256_add_pd(w0, b10);
            sum0 = _mm256_fmadd_pd(a11, b11, sum0);
            w0 = _mm256_add_pd(w0, b11);
            sum0 = _mm256_fmadd_pd(a12, b12, sum0);
            w0 = _mm256_add_pd(w0, b12);
            
            //20, 21, 22
            a00 = _mm256_loadu_pd(mat + index_a2 - 1);
            index_b += total;
            b00 = _mm256_loadu_pd(fg + index_b);
            a01 = _mm256_loadu_pd(mat + index_a2);
            index_b += total;
            b01 = _mm256_loadu_pd(fg + index_b);
            a02 = _mm256_loadu_pd(mat + index_a2 + 1);
            index_b += total;
            b02 = _mm256_loadu_pd(fg + index_b);

            sum0 = _mm256_fmadd_pd(a00, b00, sum0);
            w0 = _mm256_add_pd(w0, b00);
            sum0 = _mm256_fmadd_pd(a01, b01, sum0);
            w0 = _mm256_add_pd(w0, b01);
            sum0 = _mm256_fmadd_pd(a02, b02, sum0);
            w0 = _mm256_add_pd(w0, b02);
            // The first end

            sum1 = _mm256_fmadd_pd(a10, b10, sum1);
            w1 = _mm256_add_pd(w1, b10);
            sum1 = _mm256_fmadd_pd(a11, b11, sum1);
            w1 = _mm256_add_pd(w1, b11);
            sum1 = _mm256_fmadd_pd(a12, b12, sum1);
            w1 = _mm256_add_pd(w1, b12);

            //30, 31, 32
            index_a2 = (i + 2) * n + j;
            index_b = baseIndex + n - 2 + 6 * total;
            a10 = _mm256_loadu_pd(mat + index_a2 - 1);
            b10 = _mm256_loadu_pd(fg + index_b);
            a11 = _mm256_loadu_pd(mat + index_a2);
            index_b += total;
            b11 = _mm256_loadu_pd(fg + index_b);
            a12 = _mm256_loadu_pd(mat + index_a2 + 1);
            index_b += total;
            b12 = _mm256_loadu_pd(fg + index_b);

            sum1 = _mm256_fmadd_pd(a00, b00, sum1);
            w1 = _mm256_add_pd(w1, b00);
            sum1 = _mm256_fmadd_pd(a01, b01, sum1);
            w1 = _mm256_add_pd(w1, b01);
            sum1 = _mm256_fmadd_pd(a02, b02, sum1);
            w1 = _mm256_add_pd(w1, b02);

            sum1 = _mm256_fmadd_pd(a10, b10, sum1);
            w1 = _mm256_add_pd(w1, b10);
            sum1 = _mm256_fmadd_pd(a11, b11, sum1);
            w1 = _mm256_add_pd(w1, b11);
            sum1 = _mm256_fmadd_pd(a12, b12, sum1);
            w1 = _mm256_add_pd(w1, b12);

            _mm256_storeu_pd(sums + baseIndex, sum0);
            _mm256_storeu_pd(ws + baseIndex, w0);
            _mm256_storeu_pd(sums + baseIndex + n - 2, sum1);
            _mm256_storeu_pd(ws + baseIndex + n - 2, w1);
        }
    }
}

void kernel_sum_remain(double *mat, double *fg, double *sums, double *ws, int m, int n, int remain_m_sum, int remain_n_sum)
{
    int total = (m - 2) * (n - 2);
    for (int i = 1; i < m - 1 - remain_m_sum; i++)
    {
        int j = n - 1 - remain_n_sum;
        while (j < n - 4)
        {
            int baseIndex = ((i - 1) * (n - 2) + j - 1);
            int index_a0 = (i - 1) * n + j;
            int index_a1 = i * n + j;
            int index_a2 = (i + 1) * n + j;
            int index_b = baseIndex;

            __m256d sum = _mm256_setzero_pd();
            __m256d w = _mm256_setzero_pd();
            __m256d a0 = _mm256_loadu_pd(mat + index_a0 - 1);
            __m256d b0 = _mm256_loadu_pd(fg + index_b);
            __m256d a1 = _mm256_loadu_pd(mat + index_a0);
            index_b += total;
            __m256d b1 = _mm256_loadu_pd(fg + index_b);
            __m256d a2 = _mm256_loadu_pd(mat + index_a0 + 1);
            index_b += total;
            __m256d b2 = _mm256_loadu_pd(fg + index_b);
            __m256d a3 = _mm256_loadu_pd(mat + index_a1 - 1);
            index_b += total;
            __m256d b3 = _mm256_loadu_pd(fg + index_b);
            __m256d a4 = _mm256_loadu_pd(mat + index_a1);
            index_b += total;
            __m256d b4 = _mm256_loadu_pd(fg + index_b);
            __m256d a5 = _mm256_loadu_pd(mat + index_a1 + 1);
            index_b += total;
            __m256d b5 = _mm256_loadu_pd(fg + index_b);
            __m256d a6 = _mm256_loadu_pd(mat + index_a2 - 1);
            index_b += total;
            __m256d b6 = _mm256_loadu_pd(fg + index_b);

            sum = _mm256_fmadd_pd(a0, b0, sum);
            w = _mm256_add_pd(w, b0);
            sum = _mm256_fmadd_pd(a1, b1, sum);
            w = _mm256_add_pd(w, b1);
            sum = _mm256_fmadd_pd(a2, b2, sum);
            w = _mm256_add_pd(w, b2);
            sum = _mm256_fmadd_pd(a3, b3, sum);
            w = _mm256_add_pd(w, b3);
            sum = _mm256_fmadd_pd(a4, b4, sum);
            w = _mm256_add_pd(w, b4);
            sum = _mm256_fmadd_pd(a5, b5, sum);
            w = _mm256_add_pd(w, b5);
            sum = _mm256_fmadd_pd(a6, b6, sum);
            w = _mm256_add_pd(w, b6);

            a0 = _mm256_loadu_pd(mat + index_a2);
            index_b += total;
            b0 = _mm256_loadu_pd(fg + index_b);
            a1 = _mm256_loadu_pd(mat + index_a2 + 1);
            index_b += total;
            b1 = _mm256_loadu_pd(fg + index_b);

            sum = _mm256_fmadd_pd(a0, b0, sum);
            w = _mm256_add_pd(w, b0);
            sum = _mm256_fmadd_pd(a1, b1, sum);
            w = _mm256_add_pd(w, b1);

            _mm256_storeu_pd(sums + baseIndex, sum);
            _mm256_storeu_pd(ws + baseIndex, w);

            j += 4;
        }
        while (j < n - 1)
        {
            int baseIndex = ((i - 1) * (n - 2) + j - 1);
            int index_a0 = (i - 1) * n + j;
            int index_a1 = i * n + j;
            int index_a2 = (i + 1) * n + j;
            int index_b = baseIndex;
            double sum = 0.0;
            double w = 0.0;
            sum += mat[index_a0 - 1] * fg[index_b];
            w += fg[index_b];
            index_b += total;
            sum += mat[index_a0] * fg[index_b];
            w += fg[index_b];
            index_b += total;
            sum += mat[index_a0 + 1] * fg[index_b];
            w += fg[index_b];
            index_b += total;
            sum += mat[index_a1 - 1] * fg[index_b];
            w += fg[index_b];
            index_b += total;
            sum += mat[index_a1] * fg[index_b];
            w += fg[index_b];
            index_b += total;
            sum += mat[index_a1 + 1] * fg[index_b];
            w += fg[index_b];
            index_b += total;
            sum += mat[index_a2 - 1] * fg[index_b];
            w += fg[index_b];
            index_b += total;
            sum += mat[index_a2] * fg[index_b];
            w += fg[index_b];
            index_b += total;
            sum += mat[index_a2 + 1] * fg[index_b];
            w += fg[index_b];

            sums[baseIndex] = sum;
            ws[baseIndex] = w;
            j++;
        }
    }
    if (remain_m_sum == 0)
    {
        return;
    }
    int i = m - 1 - remain_m_sum;
    int j = 1;
    while (j < n - 4)
    {
        int baseIndex = ((i - 1) * (n - 2) + j - 1);
        int index_a0 = (i - 1) * n + j;
        int index_a1 = i * n + j;
        int index_a2 = (i + 1) * n + j;
        int index_b = baseIndex;

        __m256d sum = _mm256_setzero_pd();
        __m256d w = _mm256_setzero_pd();
        __m256d a0 = _mm256_loadu_pd(mat + index_a0 - 1);
        __m256d b0 = _mm256_loadu_pd(fg + index_b);
        __m256d a1 = _mm256_loadu_pd(mat + index_a0);
        index_b += total;
        __m256d b1 = _mm256_loadu_pd(fg + index_b);
        __m256d a2 = _mm256_loadu_pd(mat + index_a0 + 1);
        index_b += total;
        __m256d b2 = _mm256_loadu_pd(fg + index_b);
        __m256d a3 = _mm256_loadu_pd(mat + index_a1 - 1);
        index_b += total;
        __m256d b3 = _mm256_loadu_pd(fg + index_b);
        __m256d a4 = _mm256_loadu_pd(mat + index_a1);
        index_b += total;
        __m256d b4 = _mm256_loadu_pd(fg + index_b);
        __m256d a5 = _mm256_loadu_pd(mat + index_a1 + 1);
        index_b += total;
        __m256d b5 = _mm256_loadu_pd(fg + index_b);
        __m256d a6 = _mm256_loadu_pd(mat + index_a2 - 1);
        index_b += total;
        __m256d b6 = _mm256_loadu_pd(fg + index_b);

        sum = _mm256_fmadd_pd(a0, b0, sum);
        w = _mm256_add_pd(w, b0);
        sum = _mm256_fmadd_pd(a1, b1, sum);
        w = _mm256_add_pd(w, b1);
        sum = _mm256_fmadd_pd(a2, b2, sum);
        w = _mm256_add_pd(w, b2);
        sum = _mm256_fmadd_pd(a3, b3, sum);
        w = _mm256_add_pd(w, b3);
        sum = _mm256_fmadd_pd(a4, b4, sum);
        w = _mm256_add_pd(w, b4);
        sum = _mm256_fmadd_pd(a5, b5, sum);
        w = _mm256_add_pd(w, b5);
        sum = _mm256_fmadd_pd(a6, b6, sum);
        w = _mm256_add_pd(w, b6);

        a0 = _mm256_loadu_pd(mat + index_a2);
        index_b += total;
        b0 = _mm256_loadu_pd(fg + index_b);
        a1 = _mm256_loadu_pd(mat + index_a2 + 1);
        index_b += total;
        b1 = _mm256_loadu_pd(fg + index_b);

        sum = _mm256_fmadd_pd(a0, b0, sum);
        w = _mm256_add_pd(w, b0);
        sum = _mm256_fmadd_pd(a1, b1, sum);
        w = _mm256_add_pd(w, b1);

        _mm256_storeu_pd(sums + baseIndex, sum);
        _mm256_storeu_pd(ws + baseIndex, w);

        j += 4;
    }
    while (j < n - 1)
    {
        int baseIndex = ((i - 1) * (n - 2) + j - 1);
        int index_a0 = (i - 1) * n + j;
        int index_a1 = i * n + j;
        int index_a2 = (i + 1) * n + j;
        int index_b = baseIndex;
        double sum = 0.0;
        double w = 0.0;
        sum += mat[index_a0 - 1] * fg[index_b];
        w += fg[index_b];
        index_b += total;
        sum += mat[index_a0] * fg[index_b];
        w += fg[index_b];
        index_b += total;
        sum += mat[index_a0 + 1] * fg[index_b];
        w += fg[index_b];
        index_b += total;
        sum += mat[index_a1 - 1] * fg[index_b];
        w += fg[index_b];
        index_b += total;
        sum += mat[index_a1] * fg[index_b];
        w += fg[index_b];
        index_b += total;
        sum += mat[index_a1 + 1] * fg[index_b];
        w += fg[index_b];
        index_b += total;
        sum += mat[index_a2 - 1] * fg[index_b];
        w += fg[index_b];
        index_b += total;
        sum += mat[index_a2] * fg[index_b];
        w += fg[index_b];
        index_b += total;
        sum += mat[index_a2 + 1] * fg[index_b];
        w += fg[index_b];

        sums[baseIndex] = sum;
        ws[baseIndex] = w;
        j++;
    }
}

void kernel_divide(double *sums, double *ws, double *output, int m, int n)
{
    for (int i = 1; i < m - 1; i++)
    {
        for (int j = 1; j < n - 20; j += 20)
        {
            int baseIndex = ((i - 1) * (n - 2) + j - 1);
            __m256d sum0 = _mm256_loadu_pd(sums + baseIndex);
            __m256d w0 = _mm256_loadu_pd(ws + baseIndex);
            __m256d sum1 = _mm256_loadu_pd(sums + baseIndex + 4);
            __m256d w1 = _mm256_loadu_pd(ws + baseIndex + 4);
            __m256d sum2 = _mm256_loadu_pd(sums + baseIndex + 8);
            __m256d w2 = _mm256_loadu_pd(ws + baseIndex + 8);
            __m256d sum3 = _mm256_loadu_pd(sums + baseIndex + 12);
            __m256d w3 = _mm256_loadu_pd(ws + baseIndex + 12);
            __m256d sum4 = _mm256_loadu_pd(sums + baseIndex + 16);
            __m256d w4 = _mm256_loadu_pd(ws + baseIndex + 16);

            __m256d result0 = _mm256_div_pd(sum0, w0);
            __m256d result1 = _mm256_div_pd(sum1, w1);
            __m256d result2 = _mm256_div_pd(sum2, w2);
            __m256d result3 = _mm256_div_pd(sum3, w3);
            __m256d result4 = _mm256_div_pd(sum4, w4);

            _mm256_storeu_pd(output + baseIndex, result0);
            _mm256_storeu_pd(output + baseIndex + 4, result1);
            _mm256_storeu_pd(output + baseIndex + 8, result2);
            _mm256_storeu_pd(output + baseIndex + 12, result3);
            _mm256_storeu_pd(output + baseIndex + 16, result4);
        }
    }
}

void kernel_divide_remain(double *sums, double *ws, double *output, int m, int n, int remain_n_div)
{
    for (int i = 1; i < m - 1; i++)
    {
        int j = n - 1 - remain_n_div;
        while (j < n - 4)
        {
            int baseIndex = ((i - 1) * (n - 2) + j - 1);
            __m256d sum = _mm256_loadu_pd(sums + baseIndex);
            __m256d w = _mm256_loadu_pd(ws + baseIndex);
            __m256d result = _mm256_div_pd(sum, w);
            _mm256_storeu_pd(output + baseIndex, result);
            j += 4;
        }
        while (j < n - 1)
        {
            int baseIndex = ((i - 1) * (n - 2) + j - 1);
            output[baseIndex] = sums[baseIndex] / ws[baseIndex];
            j++;
        }
    }
}