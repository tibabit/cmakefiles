cmake_minimum_required(VERSION 2.6)

project(libconfuse++ CXX)

option(BUILDING_TEST "Build tests" ON)

add_definitions(--std=c++1y)
add_definitions(-Wall)
add_definitions(-Wextra)
add_definitions(-g)

file(GLOB_RECURSE SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include")

include(CMakeLists-libconfuse.cmake)

add_library(confuse++ ${SOURCES})
add_dependencies(confuse++ libconfuse)

if(BUILDING_TEST)
    enable_testing()
    include(CMakeLists-googletest.cmake)
    add_subdirectory(test)
endif()
