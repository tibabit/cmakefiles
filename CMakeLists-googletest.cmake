include(ExternalProject)

set(LIBGOOGLETEST_DIR "${CMAKE_CURRENT_SOURCE_DIR}/googletest")

ExternalProject_Add(
    googletest
    GIT_REPOSITORY "https://github.com/google/googletest.git"
    UPDATE_COMMAND ""
    SOURCE_DIR ${LIBGOOGLETEST_DIR}
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${LIBGOOGLETEST_DIR}
    BUILD_COMMAND ${MAKE}
    LOG_CONFIGURE 1
    LOG_BUILD 1
    )
include_directories(${LIBGOOGLETEST_DIR}/include)
link_directories(${LIBGOOGLETEST_DIR}/lib)
