

function(add_cxx_library name)
  set(CXXLIB_option SHARED STATIC)
  set(CXXLIB_single )
  set(CXXLIB_multi "LINK_LIBRARIES;INTERFACE_LINK_LIBRARIES;LLVM_COMPONENT_DEPENDS")
  cmake_parse_arguments(CXXLIB
    "${CXXLIB_option}"
    "${CXXLIB_single}"
    "${CXXLIB_multi}"
    ${ARGN}
  )

  set(CXXLIB_SOURCES ${CXXLIB_UNPARSED_ARGUMENTS})

  message("add_cxx_library: " ${name})
  message("  add_cxx_library: " ${CXXLIB_SOURCES})
  message("  CXXLIB_STATIC: " ${CXXLIB_STATIC})
  message("  CXXLIB_SHARED: " ${CXXLIB_SHARED})

  if(CXXLIB_STATIC)
    add_library(${name} STATIC ${CXXLIB_SOURCES})
  endif()
endfunction()

