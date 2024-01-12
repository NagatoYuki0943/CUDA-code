#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>


/**
* __global__：表示该函数被CPU调用启动，在GPU上执行
* __device__：表示GPU端调用且在GPU端执行的函数
* __host__：表示CPU端调用且在CPU端执行的函数，无任何修饰符时默认是CPU端函数
*/
__global__ void hello_from_gpu()
{
    printf("Hello World from the the GPU\n");
}


int main(void)
{
    hello_from_gpu<<<4, 4>>>();
    cudaDeviceSynchronize();

    return 0;
}
