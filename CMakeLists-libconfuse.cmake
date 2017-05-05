include(ExternalProject)

set(LIBCONFUSE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/libconfuse")

ExternalProject_Add(
    libconfuse
    GIT_REPOSITORY "https://github.com/tibabit/libconfuse.git"
    UPDATE_COMMAND ""
    SOURCE_DIR ${LIBCONFUSE_DIR}
    CONFIGURE_COMMAND ${LIBCONFUSE_DIR}/configure --prefix=${LIBCONFUSE_DIR}
    BUILD_COMMAND ${MAKE}
    LOG_CONFIGURE 1
    LOG_BUILD 1
    )

ExternalProject_Add_Step(
    libconfuse run_autogen
    COMMAND ./autogen.sh
    COMMENT "Running autogen..."
    WORKING_DIRECTORY ${LIBCONFUSE_DIR}
    LOG 1
    ALWAYS 0
    DEPENDEES download
    DEPENDERS configure)


include_directories(${LIBCONFUSE_DIR}/include)
link_directories(${LIBCONFUSE_DIR}/lib)
