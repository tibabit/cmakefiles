# macro(add_new_test name)
#     add_executable(${name}_test ${name}.cpp)
#     add_dependencies(${name}_test googletest)
#     target_link_libraries(${name}_test confuse++ confuse gtest gtest_main pthread)
#     add_test(NAME ${name} COMMAND ${name}_test)
# endmacro(add_new_test)

file(GLOB_RECURSE test_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp")

add_executable(libconfusecpp_test ${test_SOURCES})
target_link_libraries(libconfusecpp_test confuse++ confuse gtest gtest_main pthread)

# add_new_test(ConfigFileTest)

