#[[
                appletvsimulator-x86_64)
                    xcrun_sdk_name="appletvsimulator"
                    llvm_target_arch="X86"
                    SWIFT_HOST_TRIPLE="x86_64-apple-tvos${DARWIN_DEPLOYMENT_VERSION_TVOS}"
                    SWIFT_HOST_VARIANT="appletvsimulator"
                    SWIFT_HOST_VARIANT_SDK="TVOS_SIMULATOR"
                    SWIFT_HOST_VARIANT_ARCH="x86_64"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    playgroundlogger_build_cmd="xcodebuild"
                    playgroundlogger_build_target=("PlaygroundLogger_tvOS")
                    PLAYGROUNDLOGGER_INSTALL_PLATFORM="AppleTVSimulator.platform"
]]