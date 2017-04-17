# Print out path and version of any installed commands.
# We migth be using the wrong version of a command, so record them all.
function(print_versions)
  find_version("cmake" "--version" TRUE)

  message(STATUS "Finding version for: ${CMAKE_COMMAND}")
  message(STATUS "Found version: ${CMAKE_VERSION}")
  message(STATUS "")

  get_filename_component(CMAKE_MAKE_PROGRAM_BN "${CMAKE_MAKE_PROGRAM}" NAME_WE)
  if(${CMAKE_MAKE_PROGRAM_BN} STREQUAL "ninja" OR
     ${CMAKE_MAKE_PROGRAM_BN} STREQUAL "make")
    find_version(${CMAKE_MAKE_PROGRAM_BN} "--version" TRUE)
    find_version(${CMAKE_MAKE_PROGRAM} "--version" FALSE)
  endif()

  if(${SWIFT_PATH_TO_CMARK_BUILD})
    find_version("cmark" "--version" TRUE)
    find_version("${SWIFT_PATH_TO_CMARK_BUILD}/src/cmark" "--version" FALSE)
  endif()

  message(STATUS "Finding version for: ${CMAKE_C_COMPILER}")
  message(STATUS "Found version: ${CMAKE_C_COMPILER_VERSION}")
  message(STATUS "")

  message(STATUS "Finding version for: ${CMAKE_CXX_COMPILER}")
  message(STATUS "Found version: ${CMAKE_CXX_COMPILER_VERSION}")
  message(STATUS "")
endfunction()
