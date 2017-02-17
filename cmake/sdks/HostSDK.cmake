list(APPEND CMAKE_MODULE_PATH ${SWIFT_CMAKE_MODULES_DIR} ${SWIFT_CMAKE_PROJECTS_DIR} ${SWIFT_CMAKE_SDKS_DIR})

message(STATUS "HostSDK.cmake including SDK file for ${CMAKE_SYSTEM_NAME}")

function(is_sdk_requested name result_var_name)
  if("${SWIFT_HOST_VARIANT_SDK}" STREQUAL "${name}")
    set("${result_var_name}" "TRUE" PARENT_SCOPE)
  else()
    if("${name}" IN_LIST SWIFT_SDKS)
      set("${result_var_name}" "TRUE" PARENT_SCOPE)
    else()
      set("${result_var_name}" "FALSE" PARENT_SCOPE)
    endif()
  endif()
endfunction()

set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "")

# Result in MB
cmake_host_system_information(
  RESULT HOST_TOTAL_PHYSICAL_MEMORY
  QUERY TOTAL_PHYSICAL_MEMORY
)
message(STATUS "HOST_TOTAL_PHYSICAL_MEMORY: ${HOST_TOTAL_PHYSICAL_MEMORY}MB")

math(EXPR HOST_LTO_LLVM_THREADS "((${HOST_TOTAL_PHYSICAL_MEMORY} - 3000) / 6000)")
math(EXPR HOST_LTO_SWIFT_THREADS "((${HOST_TOTAL_PHYSICAL_MEMORY} - 3000) / 8000)")
message(STATUS "HOST_LTO_LLVM_THREADS: ${HOST_LTO_LLVM_THREADS}")
message(STATUS "HOST_LTO_SWIFT_THREADS: ${HOST_LTO_SWIFT_THREADS}")

if(${CMAKE_SYSTEM_NAME} STREQUAL "Darwin")
  include(Darwin)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
  include(Linux)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "FreeBSD")
  include(FreeBSD)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "CYGWIN")
  include(Cygwin)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
  include(Windows)
else()
  message(FATAL_ERROR "Unknown HostSDK: ${CMAKE_SYSTEM_NAME}")
endif()

