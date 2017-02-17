list(APPEND CMAKE_MODULE_PATH ${SWIFT_CMAKE_MODULES_DIR} ${SWIFT_CMAKE_PROJECTS_DIR} ${SWIFT_CMAKE_SDKS_DIR})

include(CMarkConfig)

function(print_cmark_config)
  message(STATUS "CMARK_C_FLAGS: ${CMARK_C_FLAGS}")
endfunction()

include(ExternalProject)

ExternalProject_Add(
  cmark
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/../cmark/"
  CMAKE_ARGS
    -DCMAKE_C_FLAGS=${CMARK_C_FLAGS}
    -DCMAKE_BUILD_TYPE:STRING=Release
    -DCMAKE_VERBOSE_MAKEFILE=1
  INSTALL_COMMAND cmake -E echo "Skipping install step."
)
