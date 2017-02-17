#[[
                watchsimulator-i386)
                    xcrun_sdk_name="watchsimulator"
                    llvm_target_arch="X86"
                    SWIFT_HOST_TRIPLE="i386-apple-watchos${DARWIN_DEPLOYMENT_VERSION_WATCHOS}"
                    SWIFT_HOST_VARIANT="watchsimulator"
                    SWIFT_HOST_VARIANT_SDK="WATCHOS_SIMULATOR"
                    SWIFT_HOST_VARIANT_ARCH="i386"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    ;;
]]