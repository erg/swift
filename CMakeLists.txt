message(STATUS "Welcome to the new cmake build system.")
cmake_minimum_required(VERSION 3.4.3)

message(STATUS "CMAKE_COMMAND: ${CMAKE_COMMAND}")

set(SWIFTENV "/Users/erg/swiftenv4")

# set(CMAKE_VERBOSE_MAKEFILE ON)

set(SWIFT_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(SWIFT_CMAKE_MODULES_DIR ${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules)
set(SWIFT_CMAKE_PROJECTS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/cmake/projects)
set(SWIFT_CMAKE_SDKS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/cmake/sdks)

list(APPEND CMAKE_MODULE_PATH ${SWIFT_CMAKE_MODULES_DIR} ${SWIFT_CMAKE_PROJECTS_DIR} ${SWIFT_CMAKE_SDKS_DIR})

include(CMakeUtils)
include(HostSDK) # The decider
include(SwiftProjects)


#include(CMark)
#include(Clang)
#include(LLVM)
#include(Swift)


#[=[
cmake_host_system_information(
    RESULT localhost_logical_cores QUERY NUMBER_OF_LOGICAL_CORES)
set_property(GLOBAL PROPERTY JOB_POOLS local_jobs=${localhost_logical_cores})
set_property(GLOBAL PROPERTY JOB_POOL_LINK local_jobs)



# Configurable flags
option(SWIFT_INCLUDE_TOOLS
  "Generate build targets for swift tools"
  FALSE)

option(SWIFT_BUILD_REMOTE_MIRROR
  "Build the Swift Remote Mirror Library"
  FALSE)

option(SWIFT_BUILD_DYNAMIC_STDLIB
  "Build dynamic variants of the Swift standard library"
  FALSE)

option(SWIFT_BUILD_STATIC_STDLIB
  "Build static variants of the Swift standard library"
  FALSE)

option(SWIFT_BUILD_DYNAMIC_SDK_OVERLAY
  "Build dynamic variants of the Swift SDK overlay"
  FALSE)

option(SWIFT_BUILD_STATIC_SDK_OVERLAY
  "Build static variants of the Swift SDK overlay"
  FALSE)

option(SWIFT_BUILD_PERF_TESTSUITE
  "Create targets for swift performance benchmarks."
  FALSE)

option(SWIFT_INCLUDE_TESTS "Create targets for building/running tests."
	FALSE)

option(SWIFT_INCLUDE_DOCS
  "Create targets for building docs."
  FALSE)


# Computed flags
if(SWIFT_BUILD_DYNAMIC_STDLIB OR SWIFT_BUILD_STATIC_STDLIB)
  set(SWIFT_BUILD_STDLIB TRUE)
else()
  set(SWIFT_BUILD_STDLIB FALSE)
endif()

if(SWIFT_BUILD_DYNAMIC_SDK_OVERLAY OR SWIFT_BUILD_STATIC_SDK_OVERLAY)
  set(SWIFT_BUILD_SDK_OVERLAY TRUE)
else()
  set(SWIFT_BUILD_SDK_OVERLAY FALSE)
endif()


# Hardcoded flags
set(SWIFT_VERSION "3.1" STRING
  "The user-visible version of the Swift compiler")
set(SWIFT_VENDOR "" STRING
  "The vendor name of the Swift compiler")
set(SWIFT_COMPILER_VERSION "" STRING
  "The internal version of the Swift compiler")
set(CLANG_COMPILER_VERSION "" STRING
  "The internal version of the Clang compiler")



set(SWIFT_SDKS "" CACHE STRING
  "If non-empty, limits building target binaries only to specified SDKs (despite other SDKs being available)")

set(SWIFT_PRIMARY_VARIANT_SDK "" CACHE STRING
  "Primary SDK for target binaries")
set(SWIFT_PRIMARY_VARIANT_ARCH "" CACHE STRING
  "Primary arch for target binaries")

set(SWIFT_NATIVE_LLVM_TOOLS_PATH "" CACHE STRING
  "Path to the directory that contains LLVM tools that are executable on the build machine")

set(SWIFT_NATIVE_CLANG_TOOLS_PATH "" CACHE STRING
  "Path to the directory that contains Clang tools that are executable on the build machine")

set(SWIFT_NATIVE_SWIFT_TOOLS_PATH "" CACHE STRING
  "Path to the directory that contains Swift tools that are executable on the build machine")



# Cmark, LLVM, etc? build type




function(print_config)
  message(STATUS "local_jobs=${localhost_logical_cores}")
  message(STATUS "LLVM_BUILD_TYPE=${LLVM_BUILD_TYPE}")
endfunction()


#[[
set(SWIFT_ENABLE_LLD_LINKER FALSE BOOL
  "Enable using the lld linker when available")

# Gold linker not for use on Darwin.
set(SWIFT_ENABLE_GOLD_LINKER FALSE BOOL
  "Enable using the gold linker when available")

]]
]=]


#[[
if(EXISTS ${SWIFTENV} AND NOT ${SWIFTENV} STREQUAL "")

  add_custom_command(TARGET ${LIBRARY_NAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E make_directory
    $<TARGET_FILE_DIR:${CMAKE_PROJECT_NAME}>/path/to/where/module/should/be
    COMMENT "Creating directory: " $<TARGET_FILE_DIR:${CMAKE_PROJECT_NAME}>/path/to/where/module/should/be
  )


  add_custom_target(ALWAYS_DO_PRE_BUILD
    COMMAND ${CMAKE_COMMAND} -E echo "touch ${SWIFTENV}/cmake-configuring"
    COMMAND ${CMAKE_COMMAND} -E touch "${SWIFTENV}/cmake-configuring")
  add_custom_target(ALWAYS_DO_POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E echo "rm ${SWIFTENV}/cmake-configuring"
    COMMAND ${CMAKE_COMMAND} -E rm "${SWIFTENV}/cmake-configuring"
  )

  add_dependencies(${CMAKE_PROJECT_NAME} ALWAYS_DO_PRE_BUILD)
  add_dependencies(${CMAKE_PROJECT_NAME} ALWAYS_DO_POST_BUILD)
endif()
]]