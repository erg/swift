
set(DARWIN_DEPLOYMENT_VERSION_OSX "10.9" CACHE STRING
  "Minimum deployment target version for OS X")

set(SWIFT_DARWIN_DEPLOYMENT_VERSION_OSX "10.9" CACHE STRING
  "Minimum deployment target version for OS X")


#set(xcrun_sdk_name="macosx"
#set(llvm_target_arch=""
set(SWIFT_HOST_TRIPLE "x86_64-apple-macosx${DARWIN_DEPLOYMENT_VERSION_OSX}" CACHE STRING "")
set(SWIFT_HOST_VARIANT "macosx" CACHE STRING "")
set(SWIFT_HOST_VARIANT_SDK "OSX" CACHE STRING "")
set(SWIFT_HOST_VARIANT_ARCH "x86_64" CACHE STRING "")
#[[
set(cmark_cmake_options=(
set()    -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
set()    -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
set()    -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
set()    -DCMAKE_OSX_DEPLOYMENT_TARGET="${cmake_osx_deployment_target}"
set())
set(swiftpm_bootstrap_options=(
set()    --sysroot="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
set())
set(playgroundlogger_build_cmd="xcodebuild"
set(playgroundlogger_build_target=("PlaygroundLogger_TestDriver")
set(PLAYGROUNDLOGGER_INSTALL_PLATFORM "MacOSX.platform" CACHE STRING "")
]]