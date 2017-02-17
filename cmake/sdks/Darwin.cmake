list(APPEND CMAKE_MODULE_PATH ${SWIFT_CMAKE_MODULES_DIR} ${SWIFT_CMAKE_PROJECTS_DIR} ${SWIFT_CMAKE_SDKS_DIR})

set(SWIFT_PACKAGE "buildbot_osx_package" CACHE STRING "")


# Unused
# ergomg
set(CMAKE_OSX_DEPLOYMENT_TARGET "" CACHE STRING "")
#set(CMAKE_OSX_SYSROOT "${SWIFT_SDK_${SWIFT_HOST_VARIANT_SDK}_PATH}")
set(CMAKE_OSX_ARCHITECTURES "")
set(CMAKE_OSX_DEPLOYMENT_TARGET "")

set(LLVM_ENABLE_LIBCXX TRUE CACHE BOOL "")

include(DarwinMacOS)
include(DarwinIOS)
include(DarwinTVOS)
include(DarwinWatchOS)


#[[
function(find_toolchain_tool result_var_name toolchain tool)
  execute_process(
      COMMAND "xcrun" "--toolchain" "${toolchain}" "--find" "${tool}"
      OUTPUT_VARIABLE tool_path
      OUTPUT_STRIP_TRAILING_WHITESPACE)
  set("${result_var_name}" "${tool_path}" PARENT_SCOPE)
endfunction()
]]