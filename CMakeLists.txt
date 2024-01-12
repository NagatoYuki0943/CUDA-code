cmake_minimum_required(VERSION 3.19)
project(cpp)

set(CMAKE_CXX_STANDARD 14)


# cuda https://blog.csdn.net/qq_52859223/article/details/124182319
option(CUDA_USE_STATIC_CUDA_RUNTIME OFF)
find_package(CUDA REQUIRED)
if(CUDA_FOUND)
    message("CUDA include path: ${CUDA_INCLUDE_DIRS}")
    message("CUDA libraries: ${CUDA_LIBRARIES}")
endif()
include_directories(${CUDA_INCLUDE_DIRS})

enable_language(CUDA)  # add this line, then no need to setup cuda path in vs

# 链接所有库，不指定cpp文件
link_libraries(${CUDA_LIBRARIES}
               # cuda.lib cublas.lib cudart.lib cudnn.lib cudnn64_8.lib
)

cuda_add_executable(1.2 "1.2lesson/test.cu")
add_executable(2.1.1 "2.1lesson/hello.cpp")
cuda_add_executable(2.1.2 "2.1lesson/hello.cu")
cuda_add_executable(2.2 "2.2lesson/helloworld.cu")
cuda_add_executable(2.3.1 "2.3lesson/ex1.cu")
cuda_add_executable(2.3.2 "2.3lesson/ex2.cu")
cuda_add_executable(2.6 "2.6lesson/ex1.cu")
