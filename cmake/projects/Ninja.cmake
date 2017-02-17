list(APPEND CMAKE_MODULE_PATH ${SWIFT_CMAKE_MODULES_DIR} ${SWIFT_CMAKE_PROJECTS_DIR})

include(ExternalProject)

ExternalProject_Add(
  ninja
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/../ninja/"
  CMAKE_ARGS
    -DCMAKE_VERBOSE_MAKEFILE=1

  INSTALL_COMMAND cmake -E echo "Skipping install step."
)
