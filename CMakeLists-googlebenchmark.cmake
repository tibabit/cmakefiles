include(ExternalProject)

set(LIBGOOGLEBENCHMARK "${CMAKE_CURRENT_SOURCE_DIR}/googlebenchmark")

ExternalProject_Add(
    googlebenchmark
    GIT_REPOSITORY "https://github.com/google/benchmark.git"
    UPDATE_COMMAND ""
    SOURCE_DIR ${LIBGOOGLEBENCHMARK}
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${LIBGOOGLEBENCHMARK}
    BUILD_COMMAND ${MAKE}
    LOG_CONFIGURE 1
    LOG_BUILD 1
    )
include_directories(${LIBGOOGLEBENCHMARK}/include)
link_directories(${LIBGOOGLEBENCHMARK}/lib)
