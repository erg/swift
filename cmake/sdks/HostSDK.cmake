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
set(WORKSPACE "$ENV{HOME}/workspace" CACHE STRING "")
# ergomg
set(HOST_TARGET "macosx-x86_64" CACHE STRING "")
#set(BUILD_DIR "${WORKSPACE}/build" CACHE STRING "")

# See DESTDIR env var, CMAKE_INSTALL_PREFIX
set(INSTALL_PREFIX "" CACHE STRING "")

# utils/build-toolchain
string(TIMESTAMP TOOLCHAIN_TIMESTAMP "%Y-%m-%d")
set(TOOLCHAIN_NAME "" CACHE STRING "")
set(TOOLCHAIN_VERSION "swift-LOCAL-${TOOLCHAIN_TIMESTAMP}-a" CACHE STRING "")
set(ARCHIVE "${TOOLCHAIN_VERSION}-osx.tar.gz" CACHE STRING "")
set(SYM_ARCHIVE "${TOOLCHAIN_VERSION}-osx-symbols.tar.gz" CACHE STRING "")
set(BUNDLE_PREFIX "local.swift" CACHE STRING "")
set(BUNDLE_IDENTIFIER "${BUNDLE_PREFIX}.${YEAR}${MONTH}${DAY}" CACHE STRING "")
set(DISPLAY_NAME_SHORT "Local Swift Development Snapshot" CACHE STRING "")
set(DISPLAY_NAME "${DISPLAY_NAME_SHORT} ${YEAR}-${MONTH}-${DAY}" CACHE STRING "")
set(TOOLCHAIN_NAME "${TOOLCHAIN_VERSION}" CACHE STRING "")
set(SWIFT_INSTALLABLE_PACKAGE "${SRC_DIR}/${ARCHIVE}" CACHE STRING "")
set(SWIFT_INSTALL_DIR "${SRC_DIR}/swift-nightly-install" CACHE STRING "")
set(SWIFT_INSTALL_SYMROOT "${SRC_DIR}/swift-nightly-symroot" CACHE STRING "")
set(SWIFT_TOOLCHAIN_DIR "/Library/Developer/Toolchains/${TOOLCHAIN_NAME}.xctoolchain" CACHE STRING "")
set(SYMBOLS_PACKAGE "${SRC_DIR}/${SYM_ARCHIVE}" CACHE STRING "")

message(STATUS "HostSDK.cmake: TOOLCHAIN_VERSION: ${TOOLCHAIN_VERSION}")
message(STATUS "HostSDK.cmake: WORKSPACE: ${WORKSPACE}")
#message(STATUS "HostSDK.cmake: BUILD_DIR: ${BUILD_DIR}")

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

