cmake_minimum_required (VERSION 3.1)

project(app_skeleton)

set (CMAKE_CXX_STANDARD 20)
file(GLOB SOURCE_FILES 
        ${PROJECT_SOURCE_DIR}/*.h 
        ${PROJECT_SOURCE_DIR}/*.cpp
)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} shared_library_skeleton ${CONAN_LIBS})


