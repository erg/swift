#set(iphonesimulator-i386)
#set(xcrun_sdk_name="iphonesimulator"  # same
#set(llvm_target_arch="X86" # same
set(SWIFT_HOST_TRIPLE "i386-apple-ios${DARWIN_DEPLOYMENT_VERSION_IOS}" CACHE STRING "")
set(SWIFT_HOST_VARIANT "iphonesimulator" CACHE STRING "")
set(SWIFT_HOST_VARIANT_SDK "IOS_SIMULATOR" CACHE STRING "")
set(SWIFT_HOST_VARIANT_ARCH "i386" CACHE STRING "")


#set(iphonesimulator-x86_64)

#[==[
set(SWIFT_HOST_TRIPLE "x86_64-apple-ios${DARWIN_DEPLOYMENT_VERSION_IOS}" CACHE STRING "")
set(SWIFT_HOST_VARIANT "iphonesimulator" CACHE STRING "")
set(SWIFT_HOST_VARIANT_SDK "IOS_SIMULATOR" CACHE STRING "")
set(SWIFT_HOST_VARIANT_ARCH "x86_64" CACHE STRING "")
#[[set(cmake_osx_deployment_target=""
set(cmark_cmake_options=(
set()    -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
set()    -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
set()    -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"


set(playgroundlogger_build_cmd="xcodebuild"
set(playgroundlogger_build_target=("PlaygroundLogger_iOS")
]]
]==]

#[[                iphonesimulator-i386)
                    xcrun_sdk_name="iphonesimulator"
                    llvm_target_arch="X86"
                    SWIFT_HOST_TRIPLE="i386-apple-ios${DARWIN_DEPLOYMENT_VERSION_IOS}"
                    SWIFT_HOST_VARIANT="iphonesimulator"
                    SWIFT_HOST_VARIANT_SDK="IOS_SIMULATOR"
                    SWIFT_HOST_VARIANT_ARCH="i386"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    playgroundlogger_build_cmd="xcodebuild"
                    playgroundlogger_build_target=("PlaygroundLogger_iOS")
                    PLAYGROUNDLOGGER_INSTALL_PLATFORM="iPhoneSimulator.platform"
                    ;;

                iphonesimulator-x86_64)
                    xcrun_sdk_name="iphonesimulator"
                    llvm_target_arch="X86"
                    SWIFT_HOST_TRIPLE="x86_64-apple-ios${DARWIN_DEPLOYMENT_VERSION_IOS}"
                    SWIFT_HOST_VARIANT="iphonesimulator"
                    SWIFT_HOST_VARIANT_SDK="IOS_SIMULATOR"
                    SWIFT_HOST_VARIANT_ARCH="x86_64"

                    cmake_osx_deployment_target=""
                    cmark_cmake_options=(
                        -DCMAKE_C_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_CXX_FLAGS="$(cmark_c_flags ${host})"
                        -DCMAKE_OSX_SYSROOT:PATH="$(xcrun --sdk ${xcrun_sdk_name} --show-sdk-path)"
                    )
                    playgroundlogger_build_cmd="xcodebuild"
                    playgroundlogger_build_target=("PlaygroundLogger_iOS")
                    PLAYGROUNDLOGGER_INSTALL_PLATFORM="iPhoneSimulator.platform"
                    ;;
]]
