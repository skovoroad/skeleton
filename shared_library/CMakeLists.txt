cmake_minimum_required (VERSION 3.1)

project(shared_library_skeleton)

set(SRC_DIR "src")
set(PUBLIC_DIR "include")
set(TESTS_DIR "tests")

set (CMAKE_CXX_STANDARD 20)
file(GLOB SOURCE_FILES 
        ${PROJECT_SOURCE_DIR}/${PUBLIC_DIR}/*.h 
        ${PROJECT_SOURCE_DIR}/${SRC_DIR}/*.h 
        ${PROJECT_SOURCE_DIR}/${SRC_DIR}/*.cpp
)

add_library(${PROJECT_NAME} SHARED ${SOURCE_FILES})

target_include_directories(${PROJECT_NAME} 
  PUBLIC ${PROJECT_SOURCE_DIR}/${PUBLIC_DIR}
  PRIVATE ${PROJECT_SOURCE_DIR}/${PUBLIC_DIR}
)

#########################################################################
# tests
enable_testing()

file(GLOB TEST_SOURCE_FILES ${PROJECT_SOURCE_DIR}/${TESTS_DIR}/*.cpp)
add_executable(${PROJECT_NAME}_test ${TEST_SOURCE_FILES})
target_link_libraries(${PROJECT_NAME}_test ${PROJECT_NAME} ${CONAN_LIBS})

add_test(NAME ${PROJECT_NAME}_test COMMAND ${PROJECT_NAME}_test)


