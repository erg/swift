set(DARWIN_DEPLOYMENT_VERSION_WATCHOS "2.0" CACHE STRING
  "Minimum deployment target version for watchOS")

set(SWIFT_DARWIN_DEPLOYMENT_VERSION_WATCHOS "2.0" CACHE STRING
  "Minimum deployment target version for watchOS")

#[[
                watchos-armv7k)
                    xcrun_sdk_name="watchos"
                    llvm_target_arch="ARM"
                    SWIFT_HOST_TRIPLE="armv7k-apple-watchos${DARWIN_DEPLOYMENT_VERSION_WATCHOS}"
                    SWIFT_HOST_VARIANT="watchos"
                    SWIFT_HOST_VARIANT_SDK="WATCHOS"
                    SWIFT_HOST_VARIANT_ARCH="armv7k"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    ;;
]]