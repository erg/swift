
set(DARWIN_DEPLOYMENT_VERSION_IOS "7.0" CACHE STRING
  "Minimum deployment target version for iOS")

set(SWIFT_DARWIN_DEPLOYMENT_VERSION_IOS "7.0" CACHE STRING
  "Minimum deployment target version for iOS")



set(PLAYGROUNDLOGGER_INSTALL_PLATFORM "iPhoneSimulator.platform" CACHE STRING "")


#[[
                iphoneos-armv7)
                    xcrun_sdk_name="iphoneos"
                    llvm_target_arch="ARM"
                    SWIFT_HOST_TRIPLE="armv7-apple-ios${DARWIN_DEPLOYMENT_VERSION_IOS}"
                    SWIFT_HOST_VARIANT="iphoneos"
                    SWIFT_HOST_VARIANT_SDK="IOS"
                    SWIFT_HOST_VARIANT_ARCH="armv7"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    playgroundlogger_build_cmd="xcodebuild"
                    playgroundlogger_build_target=("PlaygroundLogger_iOS")
                    PLAYGROUNDLOGGER_INSTALL_PLATFORM="iPhoneOS.platform"
                    ;;

                iphoneos-armv7s)
                    xcrun_sdk_name="iphoneos"
                    llvm_target_arch="ARM"
                    SWIFT_HOST_TRIPLE="armv7s-apple-ios${DARWIN_DEPLOYMENT_VERSION_IOS}"
                    SWIFT_HOST_VARIANT="iphoneos"
                    SWIFT_HOST_VARIANT_SDK="IOS"
                    SWIFT_HOST_VARIANT_ARCH="armv7s"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    playgroundlogger_build_cmd="xcodebuild"
                    playgroundlogger_build_target=("PlaygroundLogger_iOS")
                    PLAYGROUNDLOGGER_INSTALL_PLATFORM="iPhoneOS.platform"
                    ;;
                iphoneos-arm64)
                    xcrun_sdk_name="iphoneos"
                    llvm_target_arch="AArch64"
                    SWIFT_HOST_TRIPLE="arm64-apple-ios${DARWIN_DEPLOYMENT_VERSION_IOS}"
                    SWIFT_HOST_VARIANT="iphoneos"
                    SWIFT_HOST_VARIANT_SDK="IOS"
                    SWIFT_HOST_VARIANT_ARCH="arm64"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    playgroundlogger_build_cmd="xcodebuild"
                    playgroundlogger_build_target=("PlaygroundLogger_iOS")
                    PLAYGROUNDLOGGER_INSTALL_PLATFORM="iPhoneOS.platform"
                    ;;
]]