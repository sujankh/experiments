#BUILD with: cmake -DCMAKE_PREFIX_PATH=/home/skhadka/tools/anaconda3/lib/python3.7/site-packages/torch ..

cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(example-app)

find_package(Torch REQUIRED)

set(CMAKE_BUILD_TYPE RelWithDebInfo)

add_executable(example-app test_torch.cc)
target_link_libraries(example-app "${TORCH_LIBRARIES}")
set_property(TARGET example-app PROPERTY CXX_STANDARD 11)
