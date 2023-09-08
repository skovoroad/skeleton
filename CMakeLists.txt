cmake_minimum_required (VERSION 3.1)

project(solution)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

enable_testing()

add_subdirectory(shared_library)
add_subdirectory(app)


