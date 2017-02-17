set(DARWIN_DEPLOYMENT_VERSION_TVOS "9.0" CACHE STRING
  "Minimum deployment target version for tvOS")

set(SWIFT_DARWIN_DEPLOYMENT_VERSION_TVOS "9.0" CACHE STRING
  "Minimum deployment target version for tvOS")

#[[
                appletvos-arm64)
                    xcrun_sdk_name="appletvos"
                    llvm_target_arch="AArch64"
                    SWIFT_HOST_TRIPLE="arm64-apple-tvos${DARWIN_DEPLOYMENT_VERSION_TVOS}"
                    SWIFT_HOST_VARIANT="appletvos"
                    SWIFT_HOST_VARIANT_SDK="TVOS"
                    SWIFT_HOST_VARIANT_ARCH="arm64"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    playgroundlogger_build_cmd="xcodebuild"
                    playgroundlogger_build_target=("PlaygroundLogger_tvOS")
                    PLAYGROUNDLOGGER_INSTALL_PLATFORM="AppleTVOS.platform"
                    ;;
]]