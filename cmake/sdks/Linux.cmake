set(SWIFT_HOST_VARIANT "linux" CACHE STRING "")
set(SWIFT_HOST_VARIANT_SDK "LINUX" CACHE STRING "")

#[[
linux-x86_64)
    SWIFT_HOST_VARIANT_ARCH="x86_64"
    playgroundlogger_build_cmd="${PLAYGROUNDLOGGER_SOURCE_DIR}/build.py"
    playgroundlogger_build_options=(
        --swiftc "$(build_directory_bin ${host} swift)"
        --foundation "$(build_directory ${host} foundation)"
        --build-dir "$(build_directory ${host} playgroundlogger)"
        --swift-build-dir "$(build_directory ${host} swift)"
        --$(tolower "${PLAYGROUNDLOGGER_BUILD_TYPE}")
    )
linux-armv6)
    SWIFT_HOST_VARIANT_ARCH="armv6"
    SWIFT_HOST_TRIPLE="armv6-unknown-linux-gnueabihf"
    llvm_target_arch="ARM"
    ;;
linux-armv7)
    SWIFT_HOST_VARIANT_ARCH="armv7"
    SWIFT_HOST_TRIPLE="armv7-unknown-linux-gnueabihf"
    llvm_target_arch="ARM"
    ;;
linux-aarch64)
    SWIFT_HOST_VARIANT_ARCH="aarch64"
    ;;
linux-powerpc64)
    SWIFT_HOST_VARIANT_ARCH="powerpc64"
    ;;
linux-powerpc64le)
    SWIFT_HOST_VARIANT_ARCH="powerpc64le"
    ;;
linux-s390x)
    SWIFT_HOST_VARIANT_ARCH="s390x"
]]

set(SWIFT_HOST_VARIANT_ARCH "x86_64" CACHE STRING "")
set(USE_GOLD_LINKER "1" CACHE STRING "")
