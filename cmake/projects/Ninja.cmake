list(APPEND CMAKE_MODULE_PATH ${SWIFT_CMAKE_MODULES_DIR} ${SWIFT_CMAKE_PROJECTS_DIR})

include(ExternalProject)

message(STATUS "CMAKE_BINARY_DIR: ${CMAKE_BINARY_DIR}")
message(STATUS "CMAKE_BINARY_DIR/ninja: ${CMAKE_BINARY_DIR}/ninja")

file(COPY "${CMAKE_SOURCE_DIR}/../ninja" DESTINATION "${CMAKE_BINARY_DIR}")

ExternalProject_Add(
  ninja
  PREFIX "ninja"
  SOURCE_DIR "${CMAKE_BINARY_DIR}/ninja"
  BINARY_DIR "${CMAKE_BINARY_DIR}/ninja"

  CMAKE_ARGS
    -DCMAKE_VERBOSE_MAKEFILE=1
    #-isysroot {sysroot}
    #-mmacosx-version-min=${DARWIN_DEPLOYMENT_VERSION_OSX}
    #LDFLAGS #-mmacosx-version-min=${DARWIN_DEPLOYMENT_VERSION_OSX}
  CONFIGURE_COMMAND ./configure.py --bootstrap #--prefix=${CMAKE_PREFIX}
  BUILD_COMMAND ninja

  INSTALL_COMMAND cmake -E echo "Skipping install step."
)

set(HOST_NINJA "${CMAKE_BINARY_DIR}/ninja/ninja" CACHE STRING "")
